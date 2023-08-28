; ModuleID = '../bcout/drivers/gpu/drm/drm_writeback.llvm.bc'
source_filename = "drivers/gpu/drm/drm_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.drm_encoder_funcs = type { void (%struct.drm_encoder*)*, void (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)*, void (%struct.drm_encoder*)* }
%struct.drm_encoder = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, i8*, i32, i32, i32, i32, %struct.drm_crtc*, %struct.list_head, %struct.drm_encoder_funcs*, %struct.drm_encoder_helper_funcs* }
%struct.drm_device = type { %struct.list_head, i32, %struct.kref, %struct.device*, %struct.anon.65, %struct.drm_driver*, i8*, %struct.drm_minor*, %struct.drm_minor*, i8, %struct.drm_master*, i32, i8, %struct.inode*, i8*, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, i32, i8, %struct.drm_vblank_crtc*, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.drm_agp_head*, %struct.pci_dev*, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, %struct.drm_vma_offset_manager*, %struct.drm_vram_mm*, i32, %struct.drm_fb_helper* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
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
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
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
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
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
%struct.anon.65 = type { %struct.list_head, i8*, %struct.spinlock }
%struct.drm_driver = type { i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*)*, void (%struct.drm_device*)*, void (%struct.drm_device*)*, i32 (i32, i8*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*)*, void (%struct.drm_device*)*, void (%struct.drm_device*, %struct.drm_file*, i1)*, void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_minor*)*, void (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)*, void (%struct.drm_gem_object*, %struct.drm_file*)*, %struct.drm_gem_object* (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32*)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf*)*, i32 (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*)*, i8* (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)*, i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)*, i32 (%struct.drm_file*, %struct.drm_device*, i32, i64*)*, i32 (%struct.drm_file*, %struct.drm_device*, i32)*, %struct.vm_operations_struct*, i32, i32, i32, i8*, i8*, i8*, i32, %struct.drm_ioctl_desc*, i32, %struct.file_operations*, %struct.list_head, i32 (%struct.drm_device*)*, void (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, i8*, %struct.drm_file*)*, i32 (%struct.drm_device*)*, i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)*, void (%struct.drm_device*, i32)*, i32 }
%struct.drm_file = type opaque
%struct.drm_gem_object = type opaque
%struct.dma_buf = type opaque
%struct.sg_table = type opaque
%struct.dma_buf_attachment = type opaque
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_ioctl_desc = type opaque
%struct.drm_minor = type opaque
%struct.drm_master = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.atomic_t = type { i32 }
%struct.drm_vblank_crtc = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, [16 x i8], %struct.drm_format_info*, %struct.drm_framebuffer_funcs*, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x %struct.drm_gem_object*] }
%struct.drm_format_info = type opaque
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, i64*, %struct.drm_device*, %struct.list_head }
%struct.drm_atomic_state = type opaque
%struct.drm_mode_config_helper_funcs = type { void (%struct.drm_atomic_state*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_vma_offset_manager = type opaque
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.drm_mode_object = type { i32, i32, %struct.drm_object_properties*, %struct.kref, void (%struct.kref*)* }
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_crtc = type { %struct.drm_device*, %struct.device_node*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, %struct.drm_plane*, %struct.drm_plane*, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, %struct.drm_crtc_funcs*, i32, i16*, %struct.drm_crtc_helper_funcs*, %struct.drm_object_properties, %struct.drm_crtc_state*, %struct.list_head, %struct.spinlock, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], %struct.drm_self_refresh_data* }
%struct.drm_plane = type { %struct.drm_device*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, i32*, i32, i8, i64*, i32, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_framebuffer*, %struct.drm_plane_funcs*, %struct.drm_object_properties, i32, i32, %struct.drm_plane_helper_funcs*, %struct.drm_plane_state*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_plane_funcs = type { i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_plane*)*, void (%struct.drm_plane*)*, i32 (%struct.drm_plane*, %struct.drm_property*, i64)*, %struct.drm_plane_state* (%struct.drm_plane*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_plane*)*, void (%struct.drm_plane*)*, void (%struct.drm_printer*, %struct.drm_plane_state*)*, i1 (%struct.drm_plane*, i32, i64)* }
%struct.drm_printer = type opaque
%struct.drm_plane_helper_funcs = type { i32 (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)* }
%struct.drm_plane_state = type { %struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.dma_fence*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.drm_property_blob*, %struct.drm_rect, %struct.drm_rect, i8, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.66, i64, i64, i64, %struct.kref, i32 }
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.66 = type { %struct.list_head }
%struct.drm_property_blob = type { %struct.drm_mode_object, %struct.drm_device*, %struct.list_head, %struct.list_head, i64, i8* }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_commit = type opaque
%struct.drm_crtc_funcs = type { void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)*, i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32, i32)*, i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_property*, i64)*, %struct.drm_crtc_state* (%struct.drm_crtc*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, i8*)*, i32 (%struct.drm_crtc*, i8*, i64*)*, i8** (%struct.drm_crtc*, i64*)*, void (%struct.drm_printer*, %struct.drm_crtc_state*)*, i32 (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i1 (%struct.drm_crtc*, i32*, i64*, i1)* }
%struct.drm_mode_set = type { %struct.drm_framebuffer*, %struct.drm_crtc*, %struct.drm_display_mode*, i32, i32, %struct.drm_connector**, i64 }
%struct.drm_connector = type { %struct.drm_device*, %struct.device*, %struct.device_attribute*, %struct.list_head, %struct.drm_mode_object, i8*, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, %struct.drm_connector_funcs*, %struct.drm_property_blob*, %struct.drm_object_properties, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property_blob*, %struct.drm_property*, i8, i32, %struct.drm_connector_helper_funcs*, %struct.drm_cmdline_mode, i32, i8, i64, i32, %struct.drm_encoder*, [128 x i8], [2 x i8], [2 x i32], [2 x i32], %struct.i2c_adapter*, i32, i32, i8, i8, %struct.dentry*, %struct.drm_connector_state*, %struct.drm_property_blob*, i8, %struct.drm_tile_group*, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [4 x i64], [4 x i64], i64, i8 }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_connector_funcs = type { i32 (%struct.drm_connector*, i32)*, void (%struct.drm_connector*)*, i32 (%struct.drm_connector*, i1)*, void (%struct.drm_connector*)*, i32 (%struct.drm_connector*, i32, i32)*, i32 (%struct.drm_connector*, %struct.drm_property*, i64)*, i32 (%struct.drm_connector*)*, void (%struct.drm_connector*)*, void (%struct.drm_connector*)*, %struct.drm_connector_state* (%struct.drm_connector*)*, void (%struct.drm_connector*, %struct.drm_connector_state*)*, i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i64*)*, void (%struct.drm_printer*, %struct.drm_connector_state*)* }
%struct.drm_connector_helper_funcs = type { i32 (%struct.drm_connector*)*, i32 (%struct.drm_connector*, %struct.drm_modeset_acquire_ctx*, i1)*, i32 (%struct.drm_connector*, %struct.drm_display_mode*)*, i32 (%struct.drm_connector*, %struct.drm_display_mode*, %struct.drm_modeset_acquire_ctx*, i32*)*, %struct.drm_encoder* (%struct.drm_connector*)*, %struct.drm_encoder* (%struct.drm_connector*, %struct.drm_connector_state*)*, i32 (%struct.drm_connector*, %struct.drm_atomic_state*)*, void (%struct.drm_connector*, %struct.drm_connector_state*)*, i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, %struct.drm_property_blob*, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i64, [32 x i8] }
%struct.drm_writeback_job = type { %struct.drm_writeback_connector*, i8, %struct.work_struct, %struct.list_head, %struct.drm_framebuffer*, %struct.dma_fence*, i8* }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.drm_connector_state = type { %struct.drm_connector*, %struct.drm_crtc*, %struct.drm_encoder*, i32, %struct.drm_atomic_state*, %struct.drm_crtc_commit*, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, %struct.drm_writeback_job*, i8, i8, %struct.drm_property_blob* }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_tile_group = type { %struct.kref, %struct.drm_device*, i32, [8 x i8] }
%struct.hdr_sink_metadata = type { i32, %union.anon.67 }
%union.anon.67 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_pending_vblank_event = type opaque
%struct.drm_crtc_helper_funcs = type { void (%struct.drm_crtc*, i32)*, void (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_display_mode*)*, i1 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*)*, {}*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, i1 (%struct.drm_crtc*, i1, i32*, i32*, i64*, i64*, %struct.drm_display_mode*)* }
%struct.drm_crtc_state = type { %struct.drm_crtc*, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, i32, i8, i8, i8, %struct.drm_pending_vblank_event*, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.drm_crtc_crc = type { %struct.spinlock, i8*, i8, i8, %struct.drm_crtc_crc_entry*, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.drm_self_refresh_data = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.drm_encoder_helper_funcs = type { void (%struct.drm_encoder*, i32)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*)*, i1 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, void (%struct.drm_encoder*)*, void (%struct.drm_encoder*)*, void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, void (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)*, i32 (%struct.drm_encoder*, %struct.drm_connector*)*, void (%struct.drm_encoder*, %struct.drm_atomic_state*)*, void (%struct.drm_encoder*, %struct.drm_atomic_state*)*, void (%struct.drm_encoder*)*, void (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* }
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

@drm_writeback_encoder_funcs = internal constant %struct.drm_encoder_funcs { void (%struct.drm_encoder*)* null, void (%struct.drm_encoder*)* @drm_encoder_cleanup, i32 (%struct.drm_encoder*)* null, void (%struct.drm_encoder*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"CONNECTOR:%d-%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_writeback.c\00", align 1
@system_long_wq = external dso_local global %struct.workqueue_struct*, align 8
@drm_writeback_fence_ops = internal constant %struct.dma_fence_ops { i8 0, i8* (%struct.dma_fence*)* @drm_writeback_fence_get_driver_name, i8* (%struct.dma_fence*)* @drm_writeback_fence_get_timeline_name, i1 (%struct.dma_fence*)* @drm_writeback_fence_enable_signaling, i1 (%struct.dma_fence*)* null, i64 (%struct.dma_fence*, i1, i64)* null, void (%struct.dma_fence*)* null, void (%struct.dma_fence*, i8*, i32)* null, void (%struct.dma_fence*, i8*, i32)* null }, align 8, !dbg !5573
@.str.2 = private unnamed_addr constant [16 x i8] c"WRITEBACK_FB_ID\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"WRITEBACK_PIXEL_FORMATS\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"WRITEBACK_OUT_FENCE_PTR\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_writeback_connector_init(%struct.drm_device* %dev, %struct.drm_writeback_connector* %wb_connector, %struct.drm_connector_funcs* %con_funcs, %struct.drm_encoder_helper_funcs* %enc_helper_funcs, i32* %formats, i32 %n_formats) #0 !dbg !5581 {
entry:
  %lock.addr.i39 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i39, metadata !5584, metadata !DIExpression()), !dbg !5590
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5584, metadata !DIExpression()), !dbg !5593
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %wb_connector.addr = alloca %struct.drm_writeback_connector*, align 8
  %con_funcs.addr = alloca %struct.drm_connector_funcs*, align 8
  %enc_helper_funcs.addr = alloca %struct.drm_encoder_helper_funcs*, align 8
  %formats.addr = alloca i32*, align 8
  %n_formats.addr = alloca i32, align 4
  %blob = alloca %struct.drm_property_blob*, align 8
  %connector = alloca %struct.drm_connector*, align 8
  %config = alloca %struct.drm_mode_config*, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  %.compoundliteral27 = alloca %struct.spinlock, align 1
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  store %struct.drm_writeback_connector* %wb_connector, %struct.drm_writeback_connector** %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %wb_connector.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  store %struct.drm_connector_funcs* %con_funcs, %struct.drm_connector_funcs** %con_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_connector_funcs** %con_funcs.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  store %struct.drm_encoder_helper_funcs* %enc_helper_funcs, %struct.drm_encoder_helper_funcs** %enc_helper_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_encoder_helper_funcs** %enc_helper_funcs.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  store i32* %formats, i32** %formats.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %formats.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  store i32 %n_formats, i32* %n_formats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_formats.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.declare(metadata %struct.drm_property_blob** %blob, metadata !5608, metadata !DIExpression()), !dbg !5609
  call void @llvm.dbg.declare(metadata %struct.drm_connector** %connector, metadata !5610, metadata !DIExpression()), !dbg !5611
  %0 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5612
  %base = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %0, i32 0, i32 0, !dbg !5613
  store %struct.drm_connector* %base, %struct.drm_connector** %connector, align 8, !dbg !5611
  call void @llvm.dbg.declare(metadata %struct.drm_mode_config** %config, metadata !5614, metadata !DIExpression()), !dbg !5616
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5617
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 35, !dbg !5618
  store %struct.drm_mode_config* %mode_config, %struct.drm_mode_config** %config, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5619, metadata !DIExpression()), !dbg !5620
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5621
  %call = call i32 @create_writeback_properties(%struct.drm_device* %2) #9, !dbg !5622
  store i32 %call, i32* %ret, align 4, !dbg !5620
  %3 = load i32, i32* %ret, align 4, !dbg !5623
  %cmp = icmp ne i32 %3, 0, !dbg !5625
  br i1 %cmp, label %if.then, label %if.end, !dbg !5626

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5627
  store i32 %4, i32* %retval, align 4, !dbg !5628
  br label %return, !dbg !5628

if.end:                                           ; preds = %entry
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5629
  %6 = load i32, i32* %n_formats.addr, align 4, !dbg !5630
  %conv = sext i32 %6 to i64, !dbg !5630
  %mul = mul i64 %conv, 4, !dbg !5631
  %7 = load i32*, i32** %formats.addr, align 8, !dbg !5632
  %8 = bitcast i32* %7 to i8*, !dbg !5632
  %call1 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %5, i64 %mul, i8* %8) #9, !dbg !5633
  store %struct.drm_property_blob* %call1, %struct.drm_property_blob** %blob, align 8, !dbg !5634
  %9 = load %struct.drm_property_blob*, %struct.drm_property_blob** %blob, align 8, !dbg !5635
  %10 = bitcast %struct.drm_property_blob* %9 to i8*, !dbg !5635
  %call2 = call zeroext i1 @IS_ERR(i8* %10) #9, !dbg !5637
  br i1 %call2, label %if.then3, label %if.end6, !dbg !5638

if.then3:                                         ; preds = %if.end
  %11 = load %struct.drm_property_blob*, %struct.drm_property_blob** %blob, align 8, !dbg !5639
  %12 = bitcast %struct.drm_property_blob* %11 to i8*, !dbg !5639
  %call4 = call i64 @PTR_ERR(i8* %12) #9, !dbg !5640
  %conv5 = trunc i64 %call4 to i32, !dbg !5640
  store i32 %conv5, i32* %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

if.end6:                                          ; preds = %if.end
  %13 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5642
  %encoder = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %13, i32 0, i32 1, !dbg !5643
  %14 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %enc_helper_funcs.addr, align 8, !dbg !5644
  call void @drm_encoder_helper_add(%struct.drm_encoder* %encoder, %struct.drm_encoder_helper_funcs* %14) #9, !dbg !5645
  %15 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5646
  %16 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5647
  %encoder7 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %16, i32 0, i32 1, !dbg !5648
  %call8 = call i32 (%struct.drm_device*, %struct.drm_encoder*, %struct.drm_encoder_funcs*, i32, i8*, ...) @drm_encoder_init(%struct.drm_device* %15, %struct.drm_encoder* %encoder7, %struct.drm_encoder_funcs* @drm_writeback_encoder_funcs, i32 5, i8* null) #9, !dbg !5649
  store i32 %call8, i32* %ret, align 4, !dbg !5650
  %17 = load i32, i32* %ret, align 4, !dbg !5651
  %tobool = icmp ne i32 %17, 0, !dbg !5651
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5653

if.then9:                                         ; preds = %if.end6
  br label %fail, !dbg !5654

if.end10:                                         ; preds = %if.end6
  %18 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5655
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 10, !dbg !5656
  store i8 0, i8* %interlace_allowed, align 4, !dbg !5657
  %19 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5658
  %20 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5659
  %21 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %con_funcs.addr, align 8, !dbg !5660
  %call11 = call i32 @drm_connector_init(%struct.drm_device* %19, %struct.drm_connector* %20, %struct.drm_connector_funcs* %21, i32 18) #9, !dbg !5661
  store i32 %call11, i32* %ret, align 4, !dbg !5662
  %22 = load i32, i32* %ret, align 4, !dbg !5663
  %tobool12 = icmp ne i32 %22, 0, !dbg !5663
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5665

if.then13:                                        ; preds = %if.end10
  br label %connector_fail, !dbg !5666

if.end14:                                         ; preds = %if.end10
  %23 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5667
  %24 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5668
  %encoder15 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %24, i32 0, i32 1, !dbg !5669
  %call16 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %23, %struct.drm_encoder* %encoder15) #9, !dbg !5670
  store i32 %call16, i32* %ret, align 4, !dbg !5671
  %25 = load i32, i32* %ret, align 4, !dbg !5672
  %tobool17 = icmp ne i32 %25, 0, !dbg !5672
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5674

if.then18:                                        ; preds = %if.end14
  br label %attach_fail, !dbg !5675

if.end19:                                         ; preds = %if.end14
  %26 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5676
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %26, i32 0, i32 4, !dbg !5677
  call void @INIT_LIST_HEAD(%struct.list_head* %job_queue) #9, !dbg !5678
  br label %do.body, !dbg !5679

do.body:                                          ; preds = %if.end19
  %27 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5680
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %27, i32 0, i32 3, !dbg !5680
  store %struct.spinlock* %job_lock, %struct.spinlock** %lock.addr.i, align 8
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5681
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !5682
  %rlock.i = bitcast %union.anon.3* %29 to %struct.raw_spinlock*, !dbg !5682
  %30 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5680
  %job_lock21 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %30, i32 0, i32 3, !dbg !5680
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !5680
  %rlock = bitcast %union.anon.3* %31 to %struct.raw_spinlock*, !dbg !5680
  %32 = bitcast %struct.spinlock* %job_lock21 to i8*, !dbg !5680
  %33 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !5680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 1 %33, i64 0, i1 false), !dbg !5680
  br label %do.end, !dbg !5680

do.end:                                           ; preds = %do.body
  %call22 = call i64 @dma_fence_context_alloc(i32 1) #9, !dbg !5683
  %conv23 = trunc i64 %call22 to i32, !dbg !5683
  %34 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5684
  %fence_context = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %34, i32 0, i32 5, !dbg !5685
  store i32 %conv23, i32* %fence_context, align 8, !dbg !5686
  br label %do.body24, !dbg !5687

do.body24:                                        ; preds = %do.end
  %35 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5688
  %fence_lock = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %35, i32 0, i32 6, !dbg !5688
  store %struct.spinlock* %fence_lock, %struct.spinlock** %lock.addr.i39, align 8
  %36 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i39, align 8, !dbg !5689
  %37 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %36, i32 0, i32 0, !dbg !5690
  %rlock.i40 = bitcast %union.anon.3* %37 to %struct.raw_spinlock*, !dbg !5690
  %38 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5688
  %fence_lock26 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %38, i32 0, i32 6, !dbg !5688
  %39 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral27, i32 0, i32 0, !dbg !5688
  %rlock28 = bitcast %union.anon.3* %39 to %struct.raw_spinlock*, !dbg !5688
  %40 = bitcast %struct.spinlock* %fence_lock26 to i8*, !dbg !5688
  %41 = bitcast %struct.spinlock* %.compoundliteral27 to i8*, !dbg !5688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 1 %41, i64 0, i1 false), !dbg !5688
  br label %do.end29, !dbg !5688

do.end29:                                         ; preds = %do.body24
  %42 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5691
  %timeline_name = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %42, i32 0, i32 8, !dbg !5692
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %timeline_name, i64 0, i64 0, !dbg !5691
  %43 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5693
  %base30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 4, !dbg !5694
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base30, i32 0, i32 0, !dbg !5695
  %44 = load i32, i32* %id, align 8, !dbg !5695
  %45 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5696
  %name = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 5, !dbg !5697
  %46 = load i8*, i8** %name, align 8, !dbg !5697
  %call31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %46) #9, !dbg !5698
  %47 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5699
  %base32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 4, !dbg !5700
  %48 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5701
  %writeback_out_fence_ptr_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %48, i32 0, i32 87, !dbg !5702
  %49 = load %struct.drm_property*, %struct.drm_property** %writeback_out_fence_ptr_property, align 8, !dbg !5702
  call void @drm_object_attach_property(%struct.drm_mode_object* %base32, %struct.drm_property* %49, i64 0) #9, !dbg !5703
  %50 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5704
  %base33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 4, !dbg !5705
  %51 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5706
  %writeback_fb_id_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %51, i32 0, i32 85, !dbg !5707
  %52 = load %struct.drm_property*, %struct.drm_property** %writeback_fb_id_property, align 8, !dbg !5707
  call void @drm_object_attach_property(%struct.drm_mode_object* %base33, %struct.drm_property* %52, i64 0) #9, !dbg !5708
  %53 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5709
  %base34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 4, !dbg !5710
  %54 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5711
  %writeback_pixel_formats_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %54, i32 0, i32 86, !dbg !5712
  %55 = load %struct.drm_property*, %struct.drm_property** %writeback_pixel_formats_property, align 8, !dbg !5712
  %56 = load %struct.drm_property_blob*, %struct.drm_property_blob** %blob, align 8, !dbg !5713
  %base35 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %56, i32 0, i32 0, !dbg !5714
  %id36 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base35, i32 0, i32 0, !dbg !5715
  %57 = load i32, i32* %id36, align 8, !dbg !5715
  %conv37 = zext i32 %57 to i64, !dbg !5713
  call void @drm_object_attach_property(%struct.drm_mode_object* %base34, %struct.drm_property* %55, i64 %conv37) #9, !dbg !5716
  %58 = load %struct.drm_property_blob*, %struct.drm_property_blob** %blob, align 8, !dbg !5717
  %59 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5718
  %pixel_formats_blob_ptr = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %59, i32 0, i32 2, !dbg !5719
  store %struct.drm_property_blob* %58, %struct.drm_property_blob** %pixel_formats_blob_ptr, align 8, !dbg !5720
  store i32 0, i32* %retval, align 4, !dbg !5721
  br label %return, !dbg !5721

attach_fail:                                      ; preds = %if.then18
  call void @llvm.dbg.label(metadata !5722), !dbg !5723
  %60 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5724
  call void @drm_connector_cleanup(%struct.drm_connector* %60) #9, !dbg !5725
  br label %connector_fail, !dbg !5725

connector_fail:                                   ; preds = %attach_fail, %if.then13
  call void @llvm.dbg.label(metadata !5726), !dbg !5727
  %61 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !5728
  %encoder38 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %61, i32 0, i32 1, !dbg !5729
  call void @drm_encoder_cleanup(%struct.drm_encoder* %encoder38) #9, !dbg !5730
  br label %fail, !dbg !5730

fail:                                             ; preds = %connector_fail, %if.then9
  call void @llvm.dbg.label(metadata !5731), !dbg !5732
  %62 = load %struct.drm_property_blob*, %struct.drm_property_blob** %blob, align 8, !dbg !5733
  call void @drm_property_blob_put(%struct.drm_property_blob* %62) #9, !dbg !5734
  %63 = load i32, i32* %ret, align 4, !dbg !5735
  store i32 %63, i32* %retval, align 4, !dbg !5736
  br label %return, !dbg !5736

return:                                           ; preds = %fail, %do.end29, %if.then3, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !5737
  ret i32 %64, !dbg !5737
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @create_writeback_properties(%struct.drm_device* %dev) #0 !dbg !5738 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %prop = alloca %struct.drm_property*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !5741, metadata !DIExpression()), !dbg !5742
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5743
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 35, !dbg !5745
  %writeback_fb_id_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 85, !dbg !5746
  %1 = load %struct.drm_property*, %struct.drm_property** %writeback_fb_id_property, align 8, !dbg !5746
  %tobool = icmp ne %struct.drm_property* %1, null, !dbg !5743
  br i1 %tobool, label %if.end5, label %if.then, !dbg !5747

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5748
  %call = call %struct.drm_property* @drm_property_create_object(%struct.drm_device* %2, i32 -2147483648, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 -67372037) #9, !dbg !5750
  store %struct.drm_property* %call, %struct.drm_property** %prop, align 8, !dbg !5751
  %3 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5752
  %tobool1 = icmp ne %struct.drm_property* %3, null, !dbg !5752
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5754

if.then2:                                         ; preds = %if.then
  store i32 -12, i32* %retval, align 4, !dbg !5755
  br label %return, !dbg !5755

if.end:                                           ; preds = %if.then
  %4 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5756
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5757
  %mode_config3 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 35, !dbg !5758
  %writeback_fb_id_property4 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config3, i32 0, i32 85, !dbg !5759
  store %struct.drm_property* %4, %struct.drm_property** %writeback_fb_id_property4, align 8, !dbg !5760
  br label %if.end5, !dbg !5761

if.end5:                                          ; preds = %if.end, %entry
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5762
  %mode_config6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 35, !dbg !5764
  %writeback_pixel_formats_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config6, i32 0, i32 86, !dbg !5765
  %7 = load %struct.drm_property*, %struct.drm_property** %writeback_pixel_formats_property, align 8, !dbg !5765
  %tobool7 = icmp ne %struct.drm_property* %7, null, !dbg !5762
  br i1 %tobool7, label %if.end15, label %if.then8, !dbg !5766

if.then8:                                         ; preds = %if.end5
  %8 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5767
  %call9 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %8, i32 -2147483628, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 0) #9, !dbg !5769
  store %struct.drm_property* %call9, %struct.drm_property** %prop, align 8, !dbg !5770
  %9 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5771
  %tobool10 = icmp ne %struct.drm_property* %9, null, !dbg !5771
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5773

if.then11:                                        ; preds = %if.then8
  store i32 -12, i32* %retval, align 4, !dbg !5774
  br label %return, !dbg !5774

if.end12:                                         ; preds = %if.then8
  %10 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5775
  %11 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5776
  %mode_config13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 35, !dbg !5777
  %writeback_pixel_formats_property14 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config13, i32 0, i32 86, !dbg !5778
  store %struct.drm_property* %10, %struct.drm_property** %writeback_pixel_formats_property14, align 8, !dbg !5779
  br label %if.end15, !dbg !5780

if.end15:                                         ; preds = %if.end12, %if.end5
  %12 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5781
  %mode_config16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 35, !dbg !5783
  %writeback_out_fence_ptr_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config16, i32 0, i32 87, !dbg !5784
  %13 = load %struct.drm_property*, %struct.drm_property** %writeback_out_fence_ptr_property, align 8, !dbg !5784
  %tobool17 = icmp ne %struct.drm_property* %13, null, !dbg !5781
  br i1 %tobool17, label %if.end25, label %if.then18, !dbg !5785

if.then18:                                        ; preds = %if.end15
  %14 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5786
  %call19 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %14, i32 -2147483648, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 0, i64 -1) #9, !dbg !5788
  store %struct.drm_property* %call19, %struct.drm_property** %prop, align 8, !dbg !5789
  %15 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5790
  %tobool20 = icmp ne %struct.drm_property* %15, null, !dbg !5790
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !5792

if.then21:                                        ; preds = %if.then18
  store i32 -12, i32* %retval, align 4, !dbg !5793
  br label %return, !dbg !5793

if.end22:                                         ; preds = %if.then18
  %16 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5794
  %17 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5795
  %mode_config23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 35, !dbg !5796
  %writeback_out_fence_ptr_property24 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config23, i32 0, i32 87, !dbg !5797
  store %struct.drm_property* %16, %struct.drm_property** %writeback_out_fence_ptr_property24, align 8, !dbg !5798
  br label %if.end25, !dbg !5799

if.end25:                                         ; preds = %if.end22, %if.end15
  store i32 0, i32* %retval, align 4, !dbg !5800
  br label %return, !dbg !5800

return:                                           ; preds = %if.end25, %if.then21, %if.then11, %if.then2
  %18 = load i32, i32* %retval, align 4, !dbg !5801
  ret i32 %18, !dbg !5801
}

; Function Attrs: noredzone
declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i64, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5802 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5808
  %1 = ptrtoint i8* %0 to i64, !dbg !5808
  %2 = inttoptr i64 %1 to i8*, !dbg !5808
  %3 = ptrtoint i8* %2 to i64, !dbg !5808
  %cmp = icmp uge i64 %3, -4095, !dbg !5808
  %lnot = xor i1 %cmp, true, !dbg !5808
  %lnot1 = xor i1 %lnot, true, !dbg !5808
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5808
  %conv = sext i32 %lnot.ext to i64, !dbg !5808
  %tobool = icmp ne i64 %conv, 0, !dbg !5808
  ret i1 %tobool, !dbg !5809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5810 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5813, metadata !DIExpression()), !dbg !5814
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5815
  %1 = ptrtoint i8* %0 to i64, !dbg !5816
  ret i64 %1, !dbg !5817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_encoder_helper_add(%struct.drm_encoder* %encoder, %struct.drm_encoder_helper_funcs* %funcs) #0 !dbg !5818 {
entry:
  %encoder.addr = alloca %struct.drm_encoder*, align 8
  %funcs.addr = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_encoder* %encoder, %struct.drm_encoder** %encoder.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_encoder** %encoder.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  store %struct.drm_encoder_helper_funcs* %funcs, %struct.drm_encoder_helper_funcs** %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_encoder_helper_funcs** %funcs.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  %0 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %funcs.addr, align 8, !dbg !5825
  %1 = load %struct.drm_encoder*, %struct.drm_encoder** %encoder.addr, align 8, !dbg !5826
  %helper_private = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %1, i32 0, i32 11, !dbg !5827
  store %struct.drm_encoder_helper_funcs* %0, %struct.drm_encoder_helper_funcs** %helper_private, align 8, !dbg !5828
  ret void, !dbg !5829
}

; Function Attrs: noredzone
declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, %struct.drm_encoder_funcs*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, %struct.drm_connector_funcs*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5830 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  br label %do.body, !dbg !5836

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5837

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5839

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5837

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5841
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5841
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5841
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5841
  br label %do.end3, !dbg !5841

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5837

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5843
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5844
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5845
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5846
  ret void, !dbg !5847
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i64 @dma_fence_context_alloc(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @drm_object_attach_property(%struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @drm_connector_cleanup(%struct.drm_connector*) #2

; Function Attrs: noredzone
declare dso_local void @drm_encoder_cleanup(%struct.drm_encoder*) #2

; Function Attrs: noredzone
declare dso_local void @drm_property_blob_put(%struct.drm_property_blob*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_writeback_set_fb(%struct.drm_connector_state* %conn_state, %struct.drm_framebuffer* %fb) #0 !dbg !5848 {
entry:
  %retval = alloca i32, align 4
  %conn_state.addr = alloca %struct.drm_connector_state*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_connector_state* %conn_state, %struct.drm_connector_state** %conn_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_connector_state** %conn_state.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5855, metadata !DIExpression()), !dbg !5857
  %0 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5857
  %connector = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %0, i32 0, i32 0, !dbg !5857
  %1 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5857
  %connector_type = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %1, i32 0, i32 8, !dbg !5857
  %2 = load i32, i32* %connector_type, align 4, !dbg !5857
  %cmp = icmp ne i32 %2, 18, !dbg !5857
  %lnot = xor i1 %cmp, true, !dbg !5857
  %lnot1 = xor i1 %lnot, true, !dbg !5857
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5857
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5857
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5858
  %tobool = icmp ne i32 %3, 0, !dbg !5858
  %lnot2 = xor i1 %tobool, true, !dbg !5858
  %lnot4 = xor i1 %lnot2, true, !dbg !5858
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5858
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5858
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5858
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5857

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5858

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5860

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5862

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5860

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 246, i32 2305, i64 12) #8, !dbg !5864, !srcloc !5866
  br label %do.end9, !dbg !5864

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 259) #8, !dbg !5867, !srcloc !5869
  br label %do.body10, !dbg !5860

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5870

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5860

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5860

if.end:                                           ; preds = %do.end12, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5857
  %tobool13 = icmp ne i32 %4, 0, !dbg !5857
  %lnot14 = xor i1 %tobool13, true, !dbg !5857
  %lnot16 = xor i1 %lnot14, true, !dbg !5857
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5857
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5857
  store i64 %conv18, i64* %tmp, align 8, !dbg !5858
  %5 = load i64, i64* %tmp, align 8, !dbg !5857
  %6 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5872
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %6, i32 0, i32 14, !dbg !5874
  %7 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %writeback_job, align 8, !dbg !5874
  %tobool19 = icmp ne %struct.drm_writeback_job* %7, null, !dbg !5872
  br i1 %tobool19, label %if.end30, label %if.then20, !dbg !5875

if.then20:                                        ; preds = %if.end
  %call = call i8* @kzalloc(i64 88, i32 3264) #9, !dbg !5876
  %8 = bitcast i8* %call to %struct.drm_writeback_job*, !dbg !5876
  %9 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5878
  %writeback_job21 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %9, i32 0, i32 14, !dbg !5879
  store %struct.drm_writeback_job* %8, %struct.drm_writeback_job** %writeback_job21, align 8, !dbg !5880
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5881
  %writeback_job22 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 14, !dbg !5883
  %11 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %writeback_job22, align 8, !dbg !5883
  %tobool23 = icmp ne %struct.drm_writeback_job* %11, null, !dbg !5881
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5884

if.then24:                                        ; preds = %if.then20
  store i32 -12, i32* %retval, align 4, !dbg !5885
  br label %return, !dbg !5885

if.end25:                                         ; preds = %if.then20
  %12 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5886
  %connector26 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %12, i32 0, i32 0, !dbg !5887
  %13 = load %struct.drm_connector*, %struct.drm_connector** %connector26, align 8, !dbg !5887
  %call27 = call %struct.drm_writeback_connector* @drm_connector_to_writeback(%struct.drm_connector* %13) #9, !dbg !5888
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5889
  %writeback_job28 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %14, i32 0, i32 14, !dbg !5890
  %15 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %writeback_job28, align 8, !dbg !5890
  %connector29 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %15, i32 0, i32 0, !dbg !5891
  store %struct.drm_writeback_connector* %call27, %struct.drm_writeback_connector** %connector29, align 8, !dbg !5892
  br label %if.end30, !dbg !5893

if.end30:                                         ; preds = %if.end25, %if.end
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !5894
  %writeback_job31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 14, !dbg !5895
  %17 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %writeback_job31, align 8, !dbg !5895
  %fb32 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %17, i32 0, i32 4, !dbg !5896
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !5897
  call void @drm_framebuffer_assign(%struct.drm_framebuffer** %fb32, %struct.drm_framebuffer* %18) #9, !dbg !5898
  store i32 0, i32* %retval, align 4, !dbg !5899
  br label %return, !dbg !5899

return:                                           ; preds = %if.end30, %if.then24
  %19 = load i32, i32* %retval, align 4, !dbg !5900
  ret i32 %19, !dbg !5900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5901 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5904, metadata !DIExpression()), !dbg !5908
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5914, metadata !DIExpression()), !dbg !5915
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5916, metadata !DIExpression()), !dbg !5917
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5918, metadata !DIExpression()), !dbg !5919
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5920, metadata !DIExpression()), !dbg !5924
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5926, metadata !DIExpression()), !dbg !5930
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5932, metadata !DIExpression()), !dbg !5936
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5941, metadata !DIExpression()), !dbg !5942
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5943, metadata !DIExpression()), !dbg !5944
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5945, metadata !DIExpression()), !dbg !5946
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5947, metadata !DIExpression()), !dbg !5948
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5949, metadata !DIExpression()), !dbg !5950
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5951, metadata !DIExpression()), !dbg !5952
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5953, metadata !DIExpression()), !dbg !5954
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5955, metadata !DIExpression()), !dbg !5956
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  %0 = load i64, i64* %size.addr, align 8, !dbg !5961
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5962
  %or = or i32 %1, 256, !dbg !5963
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5964
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !5965
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5966

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5967
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5968
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5969

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5970
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5971
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5972
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !5973
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5950
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5974
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5975
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5976
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5977
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5978
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5979
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !5980
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5980
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5980
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5980
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !5980
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5981
  br label %kmalloc.exit, !dbg !5981

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5982
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5983
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5983
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5985

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5986
  br label %kmalloc_index.exit.i, !dbg !5986

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5987
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5989
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5990

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5991
  br label %kmalloc_index.exit.i, !dbg !5991

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5992
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5994
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5995

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5996
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5997
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5998

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5999
  br label %kmalloc_index.exit.i, !dbg !5999

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6000
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6002
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6003

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6004
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6005
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6006

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6007
  br label %kmalloc_index.exit.i, !dbg !6007

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6008
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6010
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6011

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6012
  br label %kmalloc_index.exit.i, !dbg !6012

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6013
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6015
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6016

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6017
  br label %kmalloc_index.exit.i, !dbg !6017

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6018
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6020
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6021

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6022
  br label %kmalloc_index.exit.i, !dbg !6022

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6023
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6025
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6026

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6027
  br label %kmalloc_index.exit.i, !dbg !6027

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6028
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6030
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6031

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6032
  br label %kmalloc_index.exit.i, !dbg !6032

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6033
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6035
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6036

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6037
  br label %kmalloc_index.exit.i, !dbg !6037

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6038
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6040
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6041

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6042
  br label %kmalloc_index.exit.i, !dbg !6042

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6043
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6045
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6046

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6047
  br label %kmalloc_index.exit.i, !dbg !6047

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6048
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6050
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6051

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6052
  br label %kmalloc_index.exit.i, !dbg !6052

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6053
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6055
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6056

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6057
  br label %kmalloc_index.exit.i, !dbg !6057

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6058
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6060
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6061

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6062
  br label %kmalloc_index.exit.i, !dbg !6062

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6063
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6065
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6066

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6067
  br label %kmalloc_index.exit.i, !dbg !6067

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6068
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6070
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6071

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6072
  br label %kmalloc_index.exit.i, !dbg !6072

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6073
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6075
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6076

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6077
  br label %kmalloc_index.exit.i, !dbg !6077

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6078
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6080
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6081

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6082
  br label %kmalloc_index.exit.i, !dbg !6082

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6083
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6085
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6086

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6087
  br label %kmalloc_index.exit.i, !dbg !6087

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6088
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6090
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6091

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6092
  br label %kmalloc_index.exit.i, !dbg !6092

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6093
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6095
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6096

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6097
  br label %kmalloc_index.exit.i, !dbg !6097

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6098
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6100
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6101

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6102
  br label %kmalloc_index.exit.i, !dbg !6102

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6103
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6105
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6106

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6107
  br label %kmalloc_index.exit.i, !dbg !6107

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6108
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6110
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6111

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6112
  br label %kmalloc_index.exit.i, !dbg !6112

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6113
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6115
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6116

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6117
  br label %kmalloc_index.exit.i, !dbg !6117

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6118
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6120
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6121

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6122
  br label %kmalloc_index.exit.i, !dbg !6122

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6123
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6125
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6126

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6127
  br label %kmalloc_index.exit.i, !dbg !6127

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !6128, !srcloc !6131
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 162) #8, !dbg !6132, !srcloc !6135
  unreachable, !dbg !6136

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6137
  store i32 %45, i32* %index.i, align 4, !dbg !6138
  %46 = load i32, i32* %index.i, align 4, !dbg !6139
  %tobool.i = icmp ne i32 %46, 0, !dbg !6139
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6141

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6142
  br label %kmalloc.exit, !dbg !6142

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6143
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6144
  %and.i.i = and i32 %48, 17, !dbg !6144
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6144
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6144
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6144
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6144
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6146

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6147
  br label %kmalloc_type.exit.i, !dbg !6147

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6148
  %and2.i.i = and i32 %49, 1, !dbg !6149
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6148
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6148
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6148
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6150
  br label %kmalloc_type.exit.i, !dbg !6150

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6151
  %idxprom.i = zext i32 %51 to i64, !dbg !6152
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6152
  %52 = load i32, i32* %index.i, align 4, !dbg !6153
  %idxprom6.i = zext i32 %52 to i64, !dbg !6152
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6152
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6152
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6154
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6155
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6156
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6157
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !6158
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6158
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6158
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6158
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !6158
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5919
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6159
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6160
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6161
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6162
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !6163
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6164
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6165
  store i8* %62, i8** %retval.i, align 8, !dbg !6166
  br label %kmalloc.exit, !dbg !6166

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6167
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6168
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !6169
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6169
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6169
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6169
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !6169
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6170
  br label %kmalloc.exit, !dbg !6170

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6171
  ret i8* %65, !dbg !6172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_writeback_connector* @drm_connector_to_writeback(%struct.drm_connector* %connector) #0 !dbg !6173 {
entry:
  %connector.addr = alloca %struct.drm_connector*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_writeback_connector*, align 8
  store %struct.drm_connector* %connector, %struct.drm_connector** %connector.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_connector** %connector.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6178, metadata !DIExpression()), !dbg !6180
  %0 = load %struct.drm_connector*, %struct.drm_connector** %connector.addr, align 8, !dbg !6180
  %1 = bitcast %struct.drm_connector* %0 to i8*, !dbg !6180
  store i8* %1, i8** %__mptr, align 8, !dbg !6180
  br label %do.body, !dbg !6180

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6181

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6180
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6180
  %3 = bitcast i8* %add.ptr to %struct.drm_writeback_connector*, !dbg !6180
  store %struct.drm_writeback_connector* %3, %struct.drm_writeback_connector** %tmp, align 8, !dbg !6181
  %4 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %tmp, align 8, !dbg !6180
  ret %struct.drm_writeback_connector* %4, !dbg !6183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_framebuffer_assign(%struct.drm_framebuffer** %p, %struct.drm_framebuffer* %fb) #0 !dbg !6184 {
entry:
  %p.addr = alloca %struct.drm_framebuffer**, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_framebuffer** %p, %struct.drm_framebuffer*** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer*** %p.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !6192
  %tobool = icmp ne %struct.drm_framebuffer* %0, null, !dbg !6192
  br i1 %tobool, label %if.then, label %if.end, !dbg !6194

if.then:                                          ; preds = %entry
  %1 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !6195
  call void @drm_framebuffer_get(%struct.drm_framebuffer* %1) #9, !dbg !6196
  br label %if.end, !dbg !6196

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.drm_framebuffer**, %struct.drm_framebuffer*** %p.addr, align 8, !dbg !6197
  %3 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8, !dbg !6199
  %tobool1 = icmp ne %struct.drm_framebuffer* %3, null, !dbg !6199
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6200

if.then2:                                         ; preds = %if.end
  %4 = load %struct.drm_framebuffer**, %struct.drm_framebuffer*** %p.addr, align 8, !dbg !6201
  %5 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8, !dbg !6202
  call void @drm_framebuffer_put(%struct.drm_framebuffer* %5) #9, !dbg !6203
  br label %if.end3, !dbg !6203

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !6204
  %7 = load %struct.drm_framebuffer**, %struct.drm_framebuffer*** %p.addr, align 8, !dbg !6205
  store %struct.drm_framebuffer* %6, %struct.drm_framebuffer** %7, align 8, !dbg !6206
  ret void, !dbg !6207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_writeback_prepare_job(%struct.drm_writeback_job* %job) #0 !dbg !6208 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.drm_writeback_job*, align 8
  %connector = alloca %struct.drm_writeback_connector*, align 8
  %funcs = alloca %struct.drm_connector_helper_funcs*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_writeback_job* %job, %struct.drm_writeback_job** %job.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_job** %job.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %connector, metadata !6213, metadata !DIExpression()), !dbg !6214
  %0 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6215
  %connector1 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %0, i32 0, i32 0, !dbg !6216
  %1 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %connector1, align 8, !dbg !6216
  store %struct.drm_writeback_connector* %1, %struct.drm_writeback_connector** %connector, align 8, !dbg !6214
  call void @llvm.dbg.declare(metadata %struct.drm_connector_helper_funcs** %funcs, metadata !6217, metadata !DIExpression()), !dbg !6218
  %2 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %connector, align 8, !dbg !6219
  %base = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %2, i32 0, i32 0, !dbg !6220
  %helper_private = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %base, i32 0, i32 29, !dbg !6221
  %3 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %helper_private, align 8, !dbg !6221
  store %struct.drm_connector_helper_funcs* %3, %struct.drm_connector_helper_funcs** %funcs, align 8, !dbg !6218
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6222, metadata !DIExpression()), !dbg !6223
  %4 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %funcs, align 8, !dbg !6224
  %prepare_writeback_job = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %4, i32 0, i32 8, !dbg !6226
  %5 = load i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)** %prepare_writeback_job, align 8, !dbg !6226
  %tobool = icmp ne i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* %5, null, !dbg !6224
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6227

if.then:                                          ; preds = %entry
  %6 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %funcs, align 8, !dbg !6228
  %prepare_writeback_job2 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %6, i32 0, i32 8, !dbg !6230
  %7 = load i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)** %prepare_writeback_job2, align 8, !dbg !6230
  %8 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %connector, align 8, !dbg !6231
  %9 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6232
  %call = call i32 %7(%struct.drm_writeback_connector* %8, %struct.drm_writeback_job* %9) #9, !dbg !6228
  store i32 %call, i32* %ret, align 4, !dbg !6233
  %10 = load i32, i32* %ret, align 4, !dbg !6234
  %cmp = icmp slt i32 %10, 0, !dbg !6236
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6237

if.then3:                                         ; preds = %if.then
  %11 = load i32, i32* %ret, align 4, !dbg !6238
  store i32 %11, i32* %retval, align 4, !dbg !6239
  br label %return, !dbg !6239

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6240

if.end4:                                          ; preds = %if.end, %entry
  %12 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6241
  %prepared = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %12, i32 0, i32 1, !dbg !6242
  store i8 1, i8* %prepared, align 8, !dbg !6243
  store i32 0, i32* %retval, align 4, !dbg !6244
  br label %return, !dbg !6244

return:                                           ; preds = %if.end4, %if.then3
  %13 = load i32, i32* %retval, align 4, !dbg !6245
  ret i32 %13, !dbg !6245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_writeback_queue_job(%struct.drm_writeback_connector* %wb_connector, %struct.drm_connector_state* %conn_state) #0 !dbg !6246 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !6249, metadata !DIExpression()), !dbg !6253
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6255, metadata !DIExpression()), !dbg !6256
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5584, metadata !DIExpression()), !dbg !6257
  %wb_connector.addr = alloca %struct.drm_writeback_connector*, align 8
  %conn_state.addr = alloca %struct.drm_connector_state*, align 8
  %job = alloca %struct.drm_writeback_job*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.drm_writeback_connector* %wb_connector, %struct.drm_writeback_connector** %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %wb_connector.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  store %struct.drm_connector_state* %conn_state, %struct.drm_connector_state** %conn_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_connector_state** %conn_state.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_job** %job, metadata !6268, metadata !DIExpression()), !dbg !6269
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6270, metadata !DIExpression()), !dbg !6271
  %0 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !6272
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %0, i32 0, i32 14, !dbg !6273
  %1 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %writeback_job, align 8, !dbg !6273
  store %struct.drm_writeback_job* %1, %struct.drm_writeback_job** %job, align 8, !dbg !6274
  %2 = load %struct.drm_connector_state*, %struct.drm_connector_state** %conn_state.addr, align 8, !dbg !6275
  %writeback_job1 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %2, i32 0, i32 14, !dbg !6276
  store %struct.drm_writeback_job* null, %struct.drm_writeback_job** %writeback_job1, align 8, !dbg !6277
  br label %do.body, !dbg !6278

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6279

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6280, metadata !DIExpression()), !dbg !6282
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6283, metadata !DIExpression()), !dbg !6282
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6282
  %conv = zext i1 %cmp to i32, !dbg !6282
  store i32 1, i32* %tmp, align 4, !dbg !6282
  %3 = load i32, i32* %tmp, align 4, !dbg !6282
  br label %do.body3, !dbg !6284

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6285

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6286

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !6288, metadata !DIExpression()), !dbg !6291
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6292, metadata !DIExpression()), !dbg !6291
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !6291
  %conv9 = zext i1 %cmp8 to i32, !dbg !6291
  store i32 1, i32* %tmp10, align 4, !dbg !6291
  %4 = load i32, i32* %tmp10, align 4, !dbg !6291
  %call = call i64 @arch_local_irq_save() #9, !dbg !6293
  store i64 %call, i64* %flags, align 8, !dbg !6293
  br label %do.end, !dbg !6293

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !6286

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !6285

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6294, !srcloc !6295
  br label %do.body13, !dbg !6294

do.body13:                                        ; preds = %do.body12
  %5 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6296
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %5, i32 0, i32 3, !dbg !6296
  store %struct.spinlock* %job_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6297
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !6298
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !6298
  br label %do.end15, !dbg !6296

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !6294

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6285

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6284

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6279

do.end19:                                         ; preds = %do.end18
  %8 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6299
  %list_entry = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %8, i32 0, i32 3, !dbg !6300
  %9 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6301
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %9, i32 0, i32 4, !dbg !6302
  call void @list_add_tail(%struct.list_head* %list_entry, %struct.list_head* %job_queue) #9, !dbg !6303
  %10 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6304
  %job_lock20 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %10, i32 0, i32 3, !dbg !6305
  %11 = load i64, i64* %flags, align 8, !dbg !6306
  store %struct.spinlock* %job_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !380, metadata !6307, metadata !DIExpression()) #8, !dbg !6310
  call void @llvm.dbg.declare(metadata !380, metadata !6311, metadata !DIExpression()) #8, !dbg !6310
  store i32 1, i32* %tmp.i, align 4, !dbg !6310
  %12 = load i32, i32* %tmp.i, align 4, !dbg !6310
  call void @llvm.dbg.declare(metadata !380, metadata !6312, metadata !DIExpression()) #8, !dbg !6317
  call void @llvm.dbg.declare(metadata !380, metadata !6318, metadata !DIExpression()) #8, !dbg !6317
  store i32 1, i32* %tmp8.i, align 4, !dbg !6317
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !6317
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !6319
  call void @arch_local_irq_restore(i64 %14) #11, !dbg !6319
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6320, !srcloc !6322
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !6323
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !6323
  %rlock.i22 = bitcast %union.anon.3* %16 to %struct.raw_spinlock*, !dbg !6323
  ret void, !dbg !6325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6326 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6330, metadata !DIExpression()), !dbg !6331
  %call = call i64 @arch_local_save_flags() #9, !dbg !6332
  store i64 %call, i64* %f, align 8, !dbg !6333
  call void @arch_local_irq_disable() #9, !dbg !6334
  %0 = load i64, i64* %f, align 8, !dbg !6335
  ret i64 %0, !dbg !6336
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6337 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6344
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6345
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6346
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6346
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6347
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !6348
  ret void, !dbg !6349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_writeback_cleanup_job(%struct.drm_writeback_job* %job) #0 !dbg !6350 {
entry:
  %job.addr = alloca %struct.drm_writeback_job*, align 8
  %connector = alloca %struct.drm_writeback_connector*, align 8
  %funcs = alloca %struct.drm_connector_helper_funcs*, align 8
  store %struct.drm_writeback_job* %job, %struct.drm_writeback_job** %job.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_job** %job.addr, metadata !6353, metadata !DIExpression()), !dbg !6354
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %connector, metadata !6355, metadata !DIExpression()), !dbg !6356
  %0 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6357
  %connector1 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %0, i32 0, i32 0, !dbg !6358
  %1 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %connector1, align 8, !dbg !6358
  store %struct.drm_writeback_connector* %1, %struct.drm_writeback_connector** %connector, align 8, !dbg !6356
  call void @llvm.dbg.declare(metadata %struct.drm_connector_helper_funcs** %funcs, metadata !6359, metadata !DIExpression()), !dbg !6360
  %2 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %connector, align 8, !dbg !6361
  %base = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %2, i32 0, i32 0, !dbg !6362
  %helper_private = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %base, i32 0, i32 29, !dbg !6363
  %3 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %helper_private, align 8, !dbg !6363
  store %struct.drm_connector_helper_funcs* %3, %struct.drm_connector_helper_funcs** %funcs, align 8, !dbg !6360
  %4 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6364
  %prepared = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %4, i32 0, i32 1, !dbg !6366
  %5 = load i8, i8* %prepared, align 8, !dbg !6366
  %tobool = trunc i8 %5 to i1, !dbg !6366
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6367

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %funcs, align 8, !dbg !6368
  %cleanup_writeback_job = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %6, i32 0, i32 9, !dbg !6369
  %7 = load void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)** %cleanup_writeback_job, align 8, !dbg !6369
  %tobool2 = icmp ne void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* %7, null, !dbg !6368
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6370

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %funcs, align 8, !dbg !6371
  %cleanup_writeback_job3 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %8, i32 0, i32 9, !dbg !6372
  %9 = load void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)** %cleanup_writeback_job3, align 8, !dbg !6372
  %10 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %connector, align 8, !dbg !6373
  %11 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6374
  call void %9(%struct.drm_writeback_connector* %10, %struct.drm_writeback_job* %11) #9, !dbg !6371
  br label %if.end, !dbg !6371

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6375
  %fb = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %12, i32 0, i32 4, !dbg !6377
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb, align 8, !dbg !6377
  %tobool4 = icmp ne %struct.drm_framebuffer* %13, null, !dbg !6375
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6378

if.then5:                                         ; preds = %if.end
  %14 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6379
  %fb6 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %14, i32 0, i32 4, !dbg !6380
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb6, align 8, !dbg !6380
  call void @drm_framebuffer_put(%struct.drm_framebuffer* %15) #9, !dbg !6381
  br label %if.end7, !dbg !6381

if.end7:                                          ; preds = %if.then5, %if.end
  %16 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6382
  %out_fence = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %16, i32 0, i32 5, !dbg !6384
  %17 = load %struct.dma_fence*, %struct.dma_fence** %out_fence, align 8, !dbg !6384
  %tobool8 = icmp ne %struct.dma_fence* %17, null, !dbg !6382
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6385

if.then9:                                         ; preds = %if.end7
  %18 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6386
  %out_fence10 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %18, i32 0, i32 5, !dbg !6387
  %19 = load %struct.dma_fence*, %struct.dma_fence** %out_fence10, align 8, !dbg !6387
  call void @dma_fence_put(%struct.dma_fence* %19) #9, !dbg !6388
  br label %if.end11, !dbg !6388

if.end11:                                         ; preds = %if.then9, %if.end7
  %20 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job.addr, align 8, !dbg !6389
  %21 = bitcast %struct.drm_writeback_job* %20 to i8*, !dbg !6389
  call void @kfree(i8* %21) #9, !dbg !6390
  ret void, !dbg !6391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_framebuffer_put(%struct.drm_framebuffer* %fb) #0 !dbg !6392 {
entry:
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !6393, metadata !DIExpression()), !dbg !6394
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !6395
  %base = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %0, i32 0, i32 2, !dbg !6396
  call void @drm_mode_object_put(%struct.drm_mode_object* %base) #9, !dbg !6397
  ret void, !dbg !6398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_put(%struct.dma_fence* %fence) #0 !dbg !6399 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !6400, metadata !DIExpression()), !dbg !6401
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !6402
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !6402
  br i1 %tobool, label %if.then, label %if.end, !dbg !6404

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !6405
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !6406
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @dma_fence_release) #9, !dbg !6407
  br label %if.end, !dbg !6407

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6408
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_writeback_signal_completion(%struct.drm_writeback_connector* %wb_connector, i32 %status) #0 !dbg !6409 {
entry:
  %lock.addr.i76 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i76, metadata !6249, metadata !DIExpression()), !dbg !6412
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6255, metadata !DIExpression()), !dbg !6414
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5584, metadata !DIExpression()), !dbg !6415
  %wb_connector.addr = alloca %struct.drm_writeback_connector*, align 8
  %status.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %job = alloca %struct.drm_writeback_job*, align 8
  %out_fence = alloca %struct.dma_fence*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %head__ = alloca %struct.list_head*, align 8
  %pos__ = alloca %struct.list_head*, align 8
  %tmp21 = alloca %struct.list_head*, align 8
  %tmp22 = alloca %struct.drm_writeback_job*, align 8
  %__mptr = alloca i8*, align 8
  %tmp27 = alloca %struct.drm_writeback_job*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.drm_writeback_connector* %wb_connector, %struct.drm_writeback_connector** %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %wb_connector.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6426, metadata !DIExpression()), !dbg !6427
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_job** %job, metadata !6428, metadata !DIExpression()), !dbg !6429
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %out_fence, metadata !6430, metadata !DIExpression()), !dbg !6431
  br label %do.body, !dbg !6432

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6433

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6434, metadata !DIExpression()), !dbg !6436
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6437, metadata !DIExpression()), !dbg !6436
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6436
  %conv = zext i1 %cmp to i32, !dbg !6436
  store i32 1, i32* %tmp, align 4, !dbg !6436
  %0 = load i32, i32* %tmp, align 4, !dbg !6436
  br label %do.body2, !dbg !6438

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6439

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6440

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6442, metadata !DIExpression()), !dbg !6445
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6446, metadata !DIExpression()), !dbg !6445
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6445
  %conv8 = zext i1 %cmp7 to i32, !dbg !6445
  store i32 1, i32* %tmp9, align 4, !dbg !6445
  %1 = load i32, i32* %tmp9, align 4, !dbg !6445
  %call = call i64 @arch_local_irq_save() #9, !dbg !6447
  store i64 %call, i64* %flags, align 8, !dbg !6447
  br label %do.end, !dbg !6447

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6440

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6439

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6448, !srcloc !6449
  br label %do.body12, !dbg !6448

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6450
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %2, i32 0, i32 3, !dbg !6450
  store %struct.spinlock* %job_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6451
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !6452
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !6452
  br label %do.end14, !dbg !6450

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6448

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6439

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6438

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6433

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata %struct.list_head** %head__, metadata !6453, metadata !DIExpression()), !dbg !6455
  %5 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6455
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %5, i32 0, i32 4, !dbg !6455
  store %struct.list_head* %job_queue, %struct.list_head** %head__, align 8, !dbg !6455
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos__, metadata !6456, metadata !DIExpression()), !dbg !6455
  br label %do.body19, !dbg !6457

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6459

do.end20:                                         ; preds = %do.body19
  %6 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !6457
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6457
  %7 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6457
  store %struct.list_head* %7, %struct.list_head** %tmp21, align 8, !dbg !6459
  %8 = load %struct.list_head*, %struct.list_head** %tmp21, align 8, !dbg !6457
  store %struct.list_head* %8, %struct.list_head** %pos__, align 8, !dbg !6455
  %9 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !6455
  %10 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !6455
  %cmp23 = icmp ne %struct.list_head* %9, %10, !dbg !6455
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !6455

cond.true:                                        ; preds = %do.end20
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6461, metadata !DIExpression()), !dbg !6463
  %11 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !6463
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !6463
  store i8* %12, i8** %__mptr, align 8, !dbg !6463
  br label %do.body25, !dbg !6463

do.body25:                                        ; preds = %cond.true
  br label %do.end26, !dbg !6464

do.end26:                                         ; preds = %do.body25
  %13 = load i8*, i8** %__mptr, align 8, !dbg !6463
  %add.ptr = getelementptr i8, i8* %13, i64 -48, !dbg !6463
  %14 = bitcast i8* %add.ptr to %struct.drm_writeback_job*, !dbg !6463
  store %struct.drm_writeback_job* %14, %struct.drm_writeback_job** %tmp27, align 8, !dbg !6464
  %15 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %tmp27, align 8, !dbg !6463
  br label %cond.end, !dbg !6455

cond.false:                                       ; preds = %do.end20
  br label %cond.end, !dbg !6455

cond.end:                                         ; preds = %cond.false, %do.end26
  %cond = phi %struct.drm_writeback_job* [ %15, %do.end26 ], [ null, %cond.false ], !dbg !6455
  store %struct.drm_writeback_job* %cond, %struct.drm_writeback_job** %tmp22, align 8, !dbg !6455
  %16 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %tmp22, align 8, !dbg !6455
  store %struct.drm_writeback_job* %16, %struct.drm_writeback_job** %job, align 8, !dbg !6466
  %17 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6467
  %tobool = icmp ne %struct.drm_writeback_job* %17, null, !dbg !6467
  br i1 %tobool, label %if.then, label %if.end, !dbg !6469

if.then:                                          ; preds = %cond.end
  %18 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6470
  %list_entry = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %18, i32 0, i32 3, !dbg !6471
  call void @list_del(%struct.list_head* %list_entry) #9, !dbg !6472
  br label %if.end, !dbg !6472

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6473
  %job_lock28 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %19, i32 0, i32 3, !dbg !6474
  %20 = load i64, i64* %flags, align 8, !dbg !6475
  store %struct.spinlock* %job_lock28, %struct.spinlock** %lock.addr.i76, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !380, metadata !6307, metadata !DIExpression()) #8, !dbg !6476
  call void @llvm.dbg.declare(metadata !380, metadata !6311, metadata !DIExpression()) #8, !dbg !6476
  store i32 1, i32* %tmp.i, align 4, !dbg !6476
  %21 = load i32, i32* %tmp.i, align 4, !dbg !6476
  call void @llvm.dbg.declare(metadata !380, metadata !6312, metadata !DIExpression()) #8, !dbg !6477
  call void @llvm.dbg.declare(metadata !380, metadata !6318, metadata !DIExpression()) #8, !dbg !6477
  store i32 1, i32* %tmp8.i, align 4, !dbg !6477
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !6477
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !6478
  call void @arch_local_irq_restore(i64 %23) #11, !dbg !6478
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6479, !srcloc !6322
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i76, align 8, !dbg !6480
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !6480
  %rlock.i77 = bitcast %union.anon.3* %25 to %struct.raw_spinlock*, !dbg !6480
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6481, metadata !DIExpression()), !dbg !6484
  %26 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6484
  %tobool29 = icmp ne %struct.drm_writeback_job* %26, null, !dbg !6484
  %lnot = xor i1 %tobool29, true, !dbg !6484
  %lnot30 = xor i1 %lnot, true, !dbg !6484
  %lnot31 = xor i1 %lnot30, true, !dbg !6484
  %lnot.ext = zext i1 %lnot31 to i32, !dbg !6484
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6484
  %27 = load i32, i32* %__ret_warn_on, align 4, !dbg !6485
  %tobool32 = icmp ne i32 %27, 0, !dbg !6485
  %lnot33 = xor i1 %tobool32, true, !dbg !6485
  %lnot35 = xor i1 %lnot33, true, !dbg !6485
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !6485
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !6485
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !6485
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !6484

if.then39:                                        ; preds = %if.end
  br label %do.body40, !dbg !6485

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !6487

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !6489

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !6487

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 2305, i64 12) #8, !dbg !6491, !srcloc !6493
  br label %do.end44, !dbg !6491

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 263) #8, !dbg !6494, !srcloc !6496
  br label %do.body45, !dbg !6487

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !6497

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !6487

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !6487

if.end48:                                         ; preds = %do.end47, %if.end
  %28 = load i32, i32* %__ret_warn_on, align 4, !dbg !6484
  %tobool50 = icmp ne i32 %28, 0, !dbg !6484
  %lnot51 = xor i1 %tobool50, true, !dbg !6484
  %lnot53 = xor i1 %lnot51, true, !dbg !6484
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !6484
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !6484
  store i64 %conv55, i64* %tmp49, align 8, !dbg !6485
  %29 = load i64, i64* %tmp49, align 8, !dbg !6484
  %tobool56 = icmp ne i64 %29, 0, !dbg !6499
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !6500

if.then57:                                        ; preds = %if.end48
  br label %return, !dbg !6501

if.end58:                                         ; preds = %if.end48
  %30 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6502
  %out_fence59 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %30, i32 0, i32 5, !dbg !6503
  %31 = load %struct.dma_fence*, %struct.dma_fence** %out_fence59, align 8, !dbg !6503
  store %struct.dma_fence* %31, %struct.dma_fence** %out_fence, align 8, !dbg !6504
  %32 = load %struct.dma_fence*, %struct.dma_fence** %out_fence, align 8, !dbg !6505
  %tobool60 = icmp ne %struct.dma_fence* %32, null, !dbg !6505
  br i1 %tobool60, label %if.then61, label %if.end67, !dbg !6507

if.then61:                                        ; preds = %if.end58
  %33 = load i32, i32* %status.addr, align 4, !dbg !6508
  %tobool62 = icmp ne i32 %33, 0, !dbg !6508
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !6511

if.then63:                                        ; preds = %if.then61
  %34 = load %struct.dma_fence*, %struct.dma_fence** %out_fence, align 8, !dbg !6512
  %35 = load i32, i32* %status.addr, align 4, !dbg !6513
  call void @dma_fence_set_error(%struct.dma_fence* %34, i32 %35) #9, !dbg !6514
  br label %if.end64, !dbg !6514

if.end64:                                         ; preds = %if.then63, %if.then61
  %36 = load %struct.dma_fence*, %struct.dma_fence** %out_fence, align 8, !dbg !6515
  %call65 = call i32 @dma_fence_signal(%struct.dma_fence* %36) #9, !dbg !6516
  %37 = load %struct.dma_fence*, %struct.dma_fence** %out_fence, align 8, !dbg !6517
  call void @dma_fence_put(%struct.dma_fence* %37) #9, !dbg !6518
  %38 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6519
  %out_fence66 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %38, i32 0, i32 5, !dbg !6520
  store %struct.dma_fence* null, %struct.dma_fence** %out_fence66, align 8, !dbg !6521
  br label %if.end67, !dbg !6522

if.end67:                                         ; preds = %if.end64, %if.end58
  br label %do.body68, !dbg !6523

do.body68:                                        ; preds = %if.end67
  %39 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6524
  %cleanup_work = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %39, i32 0, i32 2, !dbg !6524
  call void @__init_work(%struct.work_struct* %cleanup_work, i32 0) #9, !dbg !6524
  %40 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6524
  %cleanup_work69 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %40, i32 0, i32 2, !dbg !6524
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %cleanup_work69, i32 0, i32 0, !dbg !6524
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !6524
  store i64 68719476704, i64* %counter, align 8, !dbg !6524
  %41 = bitcast %struct.atomic64_t* %data to i8*, !dbg !6524
  %42 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !6524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false), !dbg !6524
  %43 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6524
  %cleanup_work70 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %43, i32 0, i32 2, !dbg !6524
  %entry71 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %cleanup_work70, i32 0, i32 1, !dbg !6524
  call void @INIT_LIST_HEAD(%struct.list_head* %entry71) #9, !dbg !6524
  %44 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6524
  %cleanup_work72 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %44, i32 0, i32 2, !dbg !6524
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %cleanup_work72, i32 0, i32 2, !dbg !6524
  store void (%struct.work_struct*)* @cleanup_work, void (%struct.work_struct*)** %func, align 8, !dbg !6524
  br label %do.end73, !dbg !6524

do.end73:                                         ; preds = %do.body68
  %45 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_long_wq, align 8, !dbg !6526
  %46 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6527
  %cleanup_work74 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %46, i32 0, i32 2, !dbg !6528
  %call75 = call zeroext i1 @queue_work(%struct.workqueue_struct* %45, %struct.work_struct* %cleanup_work74) #9, !dbg !6529
  br label %return, !dbg !6530

return:                                           ; preds = %do.end73, %if.then57
  ret void, !dbg !6530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !6531 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6532, metadata !DIExpression()), !dbg !6533
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6534
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !6535
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6536
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6537
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6538
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6539
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6540
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6541
  ret void, !dbg !6542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_set_error(%struct.dma_fence* %fence, i32 %error) #0 !dbg !6543 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %error.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on19 = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !6546, metadata !DIExpression()), !dbg !6547
  store i32 %error, i32* %error.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %error.addr, metadata !6548, metadata !DIExpression()), !dbg !6549
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6550, metadata !DIExpression()), !dbg !6552
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !6552
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !6552
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #9, !dbg !6552
  %lnot = xor i1 %call, true, !dbg !6552
  %lnot1 = xor i1 %lnot, true, !dbg !6552
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6552
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6552
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !6553
  %tobool = icmp ne i32 %1, 0, !dbg !6553
  %lnot2 = xor i1 %tobool, true, !dbg !6553
  %lnot4 = xor i1 %lnot2, true, !dbg !6553
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6553
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6553
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6553
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6552

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6553

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !6555

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6557

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6555

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 545, i32 2305, i64 12) #8, !dbg !6559, !srcloc !6561
  br label %do.end9, !dbg !6559

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 130) #8, !dbg !6562, !srcloc !6564
  br label %do.body10, !dbg !6555

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6565

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6555

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6555

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6552
  %tobool13 = icmp ne i32 %2, 0, !dbg !6552
  %lnot14 = xor i1 %tobool13, true, !dbg !6552
  %lnot16 = xor i1 %lnot14, true, !dbg !6552
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6552
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6552
  store i64 %conv18, i64* %tmp, align 8, !dbg !6553
  %3 = load i64, i64* %tmp, align 8, !dbg !6552
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on19, metadata !6567, metadata !DIExpression()), !dbg !6569
  %4 = load i32, i32* %error.addr, align 4, !dbg !6569
  %cmp = icmp sge i32 %4, 0, !dbg !6569
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6569

lor.rhs:                                          ; preds = %if.end
  %5 = load i32, i32* %error.addr, align 4, !dbg !6569
  %cmp21 = icmp slt i32 %5, -4095, !dbg !6569
  br label %lor.end, !dbg !6569

lor.end:                                          ; preds = %lor.rhs, %if.end
  %6 = phi i1 [ true, %if.end ], [ %cmp21, %lor.rhs ]
  %lnot23 = xor i1 %6, true, !dbg !6569
  %lnot25 = xor i1 %lnot23, true, !dbg !6569
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !6569
  store i32 %lnot.ext26, i32* %__ret_warn_on19, align 4, !dbg !6569
  %7 = load i32, i32* %__ret_warn_on19, align 4, !dbg !6570
  %tobool27 = icmp ne i32 %7, 0, !dbg !6570
  %lnot28 = xor i1 %tobool27, true, !dbg !6570
  %lnot30 = xor i1 %lnot28, true, !dbg !6570
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6570
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !6570
  %tobool33 = icmp ne i64 %conv32, 0, !dbg !6570
  br i1 %tobool33, label %if.then34, label %if.end43, !dbg !6569

if.then34:                                        ; preds = %lor.end
  br label %do.body35, !dbg !6570

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !6572

do.body36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !6574

do.end37:                                         ; preds = %do.body36
  br label %do.body38, !dbg !6572

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 546, i32 2305, i64 12) #8, !dbg !6576, !srcloc !6578
  br label %do.end39, !dbg !6576

do.end39:                                         ; preds = %do.body38
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 131) #8, !dbg !6579, !srcloc !6581
  br label %do.body40, !dbg !6572

do.body40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !6582

do.end41:                                         ; preds = %do.body40
  br label %do.end42, !dbg !6572

do.end42:                                         ; preds = %do.end41
  br label %if.end43, !dbg !6572

if.end43:                                         ; preds = %do.end42, %lor.end
  %8 = load i32, i32* %__ret_warn_on19, align 4, !dbg !6569
  %tobool45 = icmp ne i32 %8, 0, !dbg !6569
  %lnot46 = xor i1 %tobool45, true, !dbg !6569
  %lnot48 = xor i1 %lnot46, true, !dbg !6569
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !6569
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !6569
  store i64 %conv50, i64* %tmp44, align 8, !dbg !6570
  %9 = load i64, i64* %tmp44, align 8, !dbg !6569
  %10 = load i32, i32* %error.addr, align 4, !dbg !6584
  %11 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !6585
  %error51 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %11, i32 0, i32 7, !dbg !6586
  store i32 %10, i32* %error51, align 4, !dbg !6587
  ret void, !dbg !6588
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !6589 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6592, metadata !DIExpression()), !dbg !6593
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !6594, metadata !DIExpression()), !dbg !6595
  ret void, !dbg !6596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cleanup_work(%struct.work_struct* %work) #0 !dbg !6597 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %job = alloca %struct.drm_writeback_job*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_writeback_job*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6598, metadata !DIExpression()), !dbg !6599
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_job** %job, metadata !6600, metadata !DIExpression()), !dbg !6601
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6602, metadata !DIExpression()), !dbg !6604
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6604
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !6604
  store i8* %1, i8** %__mptr, align 8, !dbg !6604
  br label %do.body, !dbg !6604

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6605

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6604
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !6604
  %3 = bitcast i8* %add.ptr to %struct.drm_writeback_job*, !dbg !6604
  store %struct.drm_writeback_job* %3, %struct.drm_writeback_job** %tmp, align 8, !dbg !6605
  %4 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %tmp, align 8, !dbg !6604
  store %struct.drm_writeback_job* %4, %struct.drm_writeback_job** %job, align 8, !dbg !6601
  %5 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %job, align 8, !dbg !6607
  call void @drm_writeback_cleanup_job(%struct.drm_writeback_job* %5) #9, !dbg !6608
  ret void, !dbg !6609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !6610 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !6613, metadata !DIExpression()), !dbg !6614
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6615, metadata !DIExpression()), !dbg !6616
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !6617
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6618
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !6619
  ret i1 %call, !dbg !6620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_fence* @drm_writeback_get_out_fence(%struct.drm_writeback_connector* %wb_connector) #0 !dbg !6621 {
entry:
  %retval = alloca %struct.dma_fence*, align 8
  %wb_connector.addr = alloca %struct.drm_writeback_connector*, align 8
  %fence = alloca %struct.dma_fence*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_writeback_connector* %wb_connector, %struct.drm_writeback_connector** %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %wb_connector.addr, metadata !6624, metadata !DIExpression()), !dbg !6625
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !6626, metadata !DIExpression()), !dbg !6627
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6628, metadata !DIExpression()), !dbg !6631
  %0 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6631
  %base = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %0, i32 0, i32 0, !dbg !6631
  %connector_type = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %base, i32 0, i32 8, !dbg !6631
  %1 = load i32, i32* %connector_type, align 4, !dbg !6631
  %cmp = icmp ne i32 %1, 18, !dbg !6631
  %lnot = xor i1 %cmp, true, !dbg !6631
  %lnot1 = xor i1 %lnot, true, !dbg !6631
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6631
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6631
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6632
  %tobool = icmp ne i32 %2, 0, !dbg !6632
  %lnot2 = xor i1 %tobool, true, !dbg !6632
  %lnot4 = xor i1 %lnot2, true, !dbg !6632
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6632
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6632
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6632
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6631

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6632

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !6634

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6636

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6634

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 405, i32 2305, i64 12) #8, !dbg !6638, !srcloc !6640
  br label %do.end9, !dbg !6638

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 264) #8, !dbg !6641, !srcloc !6643
  br label %do.body10, !dbg !6634

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6644

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6634

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6634

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6631
  %tobool13 = icmp ne i32 %3, 0, !dbg !6631
  %lnot14 = xor i1 %tobool13, true, !dbg !6631
  %lnot16 = xor i1 %lnot14, true, !dbg !6631
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6631
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6631
  store i64 %conv18, i64* %tmp, align 8, !dbg !6632
  %4 = load i64, i64* %tmp, align 8, !dbg !6631
  %tobool19 = icmp ne i64 %4, 0, !dbg !6646
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6647

if.then20:                                        ; preds = %if.end
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !6648
  br label %return, !dbg !6648

if.end21:                                         ; preds = %if.end
  %call = call i8* @kzalloc(i64 64, i32 3264) #9, !dbg !6649
  %5 = bitcast i8* %call to %struct.dma_fence*, !dbg !6649
  store %struct.dma_fence* %5, %struct.dma_fence** %fence, align 8, !dbg !6650
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !6651
  %tobool22 = icmp ne %struct.dma_fence* %6, null, !dbg !6651
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !6653

if.then23:                                        ; preds = %if.end21
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !6654
  br label %return, !dbg !6654

if.end24:                                         ; preds = %if.end21
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !6655
  %8 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6656
  %fence_lock = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %8, i32 0, i32 6, !dbg !6657
  %9 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6658
  %fence_context = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %9, i32 0, i32 5, !dbg !6659
  %10 = load i32, i32* %fence_context, align 8, !dbg !6659
  %conv25 = zext i32 %10 to i64, !dbg !6658
  %11 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector.addr, align 8, !dbg !6660
  %fence_seqno = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %11, i32 0, i32 7, !dbg !6661
  %12 = load i64, i64* %fence_seqno, align 8, !dbg !6662
  %inc = add i64 %12, 1, !dbg !6662
  store i64 %inc, i64* %fence_seqno, align 8, !dbg !6662
  call void @dma_fence_init(%struct.dma_fence* %7, %struct.dma_fence_ops* @drm_writeback_fence_ops, %struct.spinlock* %fence_lock, i64 %conv25, i64 %inc) #9, !dbg !6663
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !6664
  store %struct.dma_fence* %13, %struct.dma_fence** %retval, align 8, !dbg !6665
  br label %return, !dbg !6665

return:                                           ; preds = %if.end24, %if.then23, %if.then20
  %14 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !6666
  ret %struct.dma_fence* %14, !dbg !6666
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_init(%struct.dma_fence*, %struct.dma_fence_ops*, %struct.spinlock*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create_object(%struct.drm_device*, i32, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create_range(%struct.drm_device*, i32, i8*, i64, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !6667 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6671, metadata !DIExpression()), !dbg !6676
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6678, metadata !DIExpression()), !dbg !6679
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6680, metadata !DIExpression()), !dbg !6681
  %0 = load i64, i64* %size.addr, align 8, !dbg !6682
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6684
  br i1 %1, label %if.then, label %if.end447, !dbg !6685

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6686
  %tobool = icmp ne i64 %2, 0, !dbg !6686
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6689

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6690
  br label %return, !dbg !6690

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6691
  %cmp = icmp ult i64 %3, 4096, !dbg !6693
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6694

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6695
  br label %return, !dbg !6695

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub = sub i64 %4, 1, !dbg !6696
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6696
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6696

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub4 = sub i64 %6, 1, !dbg !6696
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6696
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6696

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub6 = sub i64 %8, 1, !dbg !6696
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6696
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6696

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6696

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub9 = sub i64 %9, 1, !dbg !6696
  %and = and i64 %sub9, -9223372036854775808, !dbg !6696
  %tobool10 = icmp ne i64 %and, 0, !dbg !6696
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6696

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6696

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub13 = sub i64 %10, 1, !dbg !6696
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6696
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6696
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6696

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6696

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub18 = sub i64 %11, 1, !dbg !6696
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6696
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6696
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6696

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6696

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub23 = sub i64 %12, 1, !dbg !6696
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6696
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6696
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6696

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6696

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub28 = sub i64 %13, 1, !dbg !6696
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6696
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6696
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6696

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6696

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub33 = sub i64 %14, 1, !dbg !6696
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6696
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6696
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6696

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6696

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub38 = sub i64 %15, 1, !dbg !6696
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6696
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6696
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6696

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6696

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub43 = sub i64 %16, 1, !dbg !6696
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6696
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6696
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6696

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6696

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub48 = sub i64 %17, 1, !dbg !6696
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6696
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6696
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6696

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6696

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub53 = sub i64 %18, 1, !dbg !6696
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6696
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6696
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6696

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6696

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub58 = sub i64 %19, 1, !dbg !6696
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6696
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6696
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6696

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6696

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub63 = sub i64 %20, 1, !dbg !6696
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6696
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6696
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6696

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6696

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub68 = sub i64 %21, 1, !dbg !6696
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6696
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6696
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6696

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6696

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub73 = sub i64 %22, 1, !dbg !6696
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6696
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6696
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6696

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6696

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub78 = sub i64 %23, 1, !dbg !6696
  %and79 = and i64 %sub78, 562949953421312, !dbg !6696
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6696
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6696

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6696

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub83 = sub i64 %24, 1, !dbg !6696
  %and84 = and i64 %sub83, 281474976710656, !dbg !6696
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6696
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6696

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6696

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub88 = sub i64 %25, 1, !dbg !6696
  %and89 = and i64 %sub88, 140737488355328, !dbg !6696
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6696
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6696

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6696

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub93 = sub i64 %26, 1, !dbg !6696
  %and94 = and i64 %sub93, 70368744177664, !dbg !6696
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6696
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6696

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6696

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub98 = sub i64 %27, 1, !dbg !6696
  %and99 = and i64 %sub98, 35184372088832, !dbg !6696
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6696
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6696

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6696

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub103 = sub i64 %28, 1, !dbg !6696
  %and104 = and i64 %sub103, 17592186044416, !dbg !6696
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6696
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6696

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6696

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub108 = sub i64 %29, 1, !dbg !6696
  %and109 = and i64 %sub108, 8796093022208, !dbg !6696
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6696
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6696

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6696

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub113 = sub i64 %30, 1, !dbg !6696
  %and114 = and i64 %sub113, 4398046511104, !dbg !6696
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6696
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6696

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6696

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub118 = sub i64 %31, 1, !dbg !6696
  %and119 = and i64 %sub118, 2199023255552, !dbg !6696
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6696
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6696

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6696

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub123 = sub i64 %32, 1, !dbg !6696
  %and124 = and i64 %sub123, 1099511627776, !dbg !6696
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6696
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6696

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6696

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub128 = sub i64 %33, 1, !dbg !6696
  %and129 = and i64 %sub128, 549755813888, !dbg !6696
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6696
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6696

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6696

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub133 = sub i64 %34, 1, !dbg !6696
  %and134 = and i64 %sub133, 274877906944, !dbg !6696
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6696
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6696

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6696

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub138 = sub i64 %35, 1, !dbg !6696
  %and139 = and i64 %sub138, 137438953472, !dbg !6696
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6696
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6696

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6696

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub143 = sub i64 %36, 1, !dbg !6696
  %and144 = and i64 %sub143, 68719476736, !dbg !6696
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6696
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6696

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6696

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub148 = sub i64 %37, 1, !dbg !6696
  %and149 = and i64 %sub148, 34359738368, !dbg !6696
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6696
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6696

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6696

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub153 = sub i64 %38, 1, !dbg !6696
  %and154 = and i64 %sub153, 17179869184, !dbg !6696
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6696
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6696

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6696

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub158 = sub i64 %39, 1, !dbg !6696
  %and159 = and i64 %sub158, 8589934592, !dbg !6696
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6696
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6696

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6696

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub163 = sub i64 %40, 1, !dbg !6696
  %and164 = and i64 %sub163, 4294967296, !dbg !6696
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6696
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6696

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6696

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub168 = sub i64 %41, 1, !dbg !6696
  %and169 = and i64 %sub168, 2147483648, !dbg !6696
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6696
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6696

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6696

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub173 = sub i64 %42, 1, !dbg !6696
  %and174 = and i64 %sub173, 1073741824, !dbg !6696
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6696
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6696

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6696

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub178 = sub i64 %43, 1, !dbg !6696
  %and179 = and i64 %sub178, 536870912, !dbg !6696
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6696
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6696

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6696

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub183 = sub i64 %44, 1, !dbg !6696
  %and184 = and i64 %sub183, 268435456, !dbg !6696
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6696
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6696

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6696

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub188 = sub i64 %45, 1, !dbg !6696
  %and189 = and i64 %sub188, 134217728, !dbg !6696
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6696
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6696

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6696

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub193 = sub i64 %46, 1, !dbg !6696
  %and194 = and i64 %sub193, 67108864, !dbg !6696
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6696
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6696

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6696

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub198 = sub i64 %47, 1, !dbg !6696
  %and199 = and i64 %sub198, 33554432, !dbg !6696
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6696
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6696

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6696

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub203 = sub i64 %48, 1, !dbg !6696
  %and204 = and i64 %sub203, 16777216, !dbg !6696
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6696
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6696

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6696

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub208 = sub i64 %49, 1, !dbg !6696
  %and209 = and i64 %sub208, 8388608, !dbg !6696
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6696
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6696

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6696

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub213 = sub i64 %50, 1, !dbg !6696
  %and214 = and i64 %sub213, 4194304, !dbg !6696
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6696
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6696

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6696

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub218 = sub i64 %51, 1, !dbg !6696
  %and219 = and i64 %sub218, 2097152, !dbg !6696
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6696
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6696

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6696

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub223 = sub i64 %52, 1, !dbg !6696
  %and224 = and i64 %sub223, 1048576, !dbg !6696
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6696
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6696

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6696

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub228 = sub i64 %53, 1, !dbg !6696
  %and229 = and i64 %sub228, 524288, !dbg !6696
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6696
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6696

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6696

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub233 = sub i64 %54, 1, !dbg !6696
  %and234 = and i64 %sub233, 262144, !dbg !6696
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6696
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6696

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6696

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub238 = sub i64 %55, 1, !dbg !6696
  %and239 = and i64 %sub238, 131072, !dbg !6696
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6696
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6696

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6696

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub243 = sub i64 %56, 1, !dbg !6696
  %and244 = and i64 %sub243, 65536, !dbg !6696
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6696
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6696

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6696

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub248 = sub i64 %57, 1, !dbg !6696
  %and249 = and i64 %sub248, 32768, !dbg !6696
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6696
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6696

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6696

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub253 = sub i64 %58, 1, !dbg !6696
  %and254 = and i64 %sub253, 16384, !dbg !6696
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6696
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6696

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6696

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub258 = sub i64 %59, 1, !dbg !6696
  %and259 = and i64 %sub258, 8192, !dbg !6696
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6696
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6696

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6696

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub263 = sub i64 %60, 1, !dbg !6696
  %and264 = and i64 %sub263, 4096, !dbg !6696
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6696
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6696

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6696

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub268 = sub i64 %61, 1, !dbg !6696
  %and269 = and i64 %sub268, 2048, !dbg !6696
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6696
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6696

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6696

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub273 = sub i64 %62, 1, !dbg !6696
  %and274 = and i64 %sub273, 1024, !dbg !6696
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6696
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6696

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6696

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub278 = sub i64 %63, 1, !dbg !6696
  %and279 = and i64 %sub278, 512, !dbg !6696
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6696
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6696

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6696

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub283 = sub i64 %64, 1, !dbg !6696
  %and284 = and i64 %sub283, 256, !dbg !6696
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6696
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6696

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6696

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub288 = sub i64 %65, 1, !dbg !6696
  %and289 = and i64 %sub288, 128, !dbg !6696
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6696
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6696

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6696

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub293 = sub i64 %66, 1, !dbg !6696
  %and294 = and i64 %sub293, 64, !dbg !6696
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6696
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6696

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6696

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub298 = sub i64 %67, 1, !dbg !6696
  %and299 = and i64 %sub298, 32, !dbg !6696
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6696
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6696

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6696

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub303 = sub i64 %68, 1, !dbg !6696
  %and304 = and i64 %sub303, 16, !dbg !6696
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6696
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6696

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6696

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub308 = sub i64 %69, 1, !dbg !6696
  %and309 = and i64 %sub308, 8, !dbg !6696
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6696
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6696

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6696

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub313 = sub i64 %70, 1, !dbg !6696
  %and314 = and i64 %sub313, 4, !dbg !6696
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6696
  %71 = zext i1 %tobool315 to i64, !dbg !6696
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6696
  br label %cond.end, !dbg !6696

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6696
  br label %cond.end317, !dbg !6696

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6696
  br label %cond.end319, !dbg !6696

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6696
  br label %cond.end321, !dbg !6696

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6696
  br label %cond.end323, !dbg !6696

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6696
  br label %cond.end325, !dbg !6696

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6696
  br label %cond.end327, !dbg !6696

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6696
  br label %cond.end329, !dbg !6696

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6696
  br label %cond.end331, !dbg !6696

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6696
  br label %cond.end333, !dbg !6696

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6696
  br label %cond.end335, !dbg !6696

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6696
  br label %cond.end337, !dbg !6696

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6696
  br label %cond.end339, !dbg !6696

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6696
  br label %cond.end341, !dbg !6696

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6696
  br label %cond.end343, !dbg !6696

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6696
  br label %cond.end345, !dbg !6696

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6696
  br label %cond.end347, !dbg !6696

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6696
  br label %cond.end349, !dbg !6696

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6696
  br label %cond.end351, !dbg !6696

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6696
  br label %cond.end353, !dbg !6696

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6696
  br label %cond.end355, !dbg !6696

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6696
  br label %cond.end357, !dbg !6696

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6696
  br label %cond.end359, !dbg !6696

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6696
  br label %cond.end361, !dbg !6696

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6696
  br label %cond.end363, !dbg !6696

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6696
  br label %cond.end365, !dbg !6696

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6696
  br label %cond.end367, !dbg !6696

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6696
  br label %cond.end369, !dbg !6696

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6696
  br label %cond.end371, !dbg !6696

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6696
  br label %cond.end373, !dbg !6696

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6696
  br label %cond.end375, !dbg !6696

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6696
  br label %cond.end377, !dbg !6696

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6696
  br label %cond.end379, !dbg !6696

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6696
  br label %cond.end381, !dbg !6696

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6696
  br label %cond.end383, !dbg !6696

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6696
  br label %cond.end385, !dbg !6696

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6696
  br label %cond.end387, !dbg !6696

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6696
  br label %cond.end389, !dbg !6696

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6696
  br label %cond.end391, !dbg !6696

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6696
  br label %cond.end393, !dbg !6696

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6696
  br label %cond.end395, !dbg !6696

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6696
  br label %cond.end397, !dbg !6696

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6696
  br label %cond.end399, !dbg !6696

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6696
  br label %cond.end401, !dbg !6696

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6696
  br label %cond.end403, !dbg !6696

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6696
  br label %cond.end405, !dbg !6696

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6696
  br label %cond.end407, !dbg !6696

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6696
  br label %cond.end409, !dbg !6696

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6696
  br label %cond.end411, !dbg !6696

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6696
  br label %cond.end413, !dbg !6696

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6696
  br label %cond.end415, !dbg !6696

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6696
  br label %cond.end417, !dbg !6696

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6696
  br label %cond.end419, !dbg !6696

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6696
  br label %cond.end421, !dbg !6696

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6696
  br label %cond.end423, !dbg !6696

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6696
  br label %cond.end425, !dbg !6696

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6696
  br label %cond.end427, !dbg !6696

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6696
  br label %cond.end429, !dbg !6696

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6696
  br label %cond.end431, !dbg !6696

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6696
  br label %cond.end433, !dbg !6696

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6696
  br label %cond.end435, !dbg !6696

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6696
  br label %cond.end437, !dbg !6696

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6696
  br label %cond.end440, !dbg !6696

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6696

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6696
  br label %cond.end444, !dbg !6696

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6696
  %sub443 = sub i64 %72, 1, !dbg !6696
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !6696
  br label %cond.end444, !dbg !6696

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6696
  %sub446 = sub i32 %cond445, 12, !dbg !6697
  %add = add i32 %sub446, 1, !dbg !6698
  store i32 %add, i32* %retval, align 4, !dbg !6699
  br label %return, !dbg !6699

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6700
  %dec = add i64 %73, -1, !dbg !6700
  store i64 %dec, i64* %size.addr, align 8, !dbg !6700
  %74 = load i64, i64* %size.addr, align 8, !dbg !6701
  %shr = lshr i64 %74, 12, !dbg !6701
  store i64 %shr, i64* %size.addr, align 8, !dbg !6701
  %75 = load i64, i64* %size.addr, align 8, !dbg !6702
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6679
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6703
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6704
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !6703, !srcloc !6705
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6703
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6706
  %add.i = add i32 %79, 1, !dbg !6707
  store i32 %add.i, i32* %retval, align 4, !dbg !6708
  br label %return, !dbg !6708

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6709
  ret i32 %80, !dbg !6709
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !6710 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6671, metadata !DIExpression()), !dbg !6714
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6678, metadata !DIExpression()), !dbg !6716
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6717, metadata !DIExpression()), !dbg !6718
  %0 = load i64, i64* %n.addr, align 8, !dbg !6719
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6716
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6720
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6721
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !6720, !srcloc !6705
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6720
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6722
  %add.i = add i32 %4, 1, !dbg !6723
  %sub = sub i32 %add.i, 1, !dbg !6724
  ret i32 %sub, !dbg !6725
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6726 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6732, metadata !DIExpression()), !dbg !6733
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6734, metadata !DIExpression()), !dbg !6735
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6736, metadata !DIExpression()), !dbg !6737
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6738
  ret i8* %0, !dbg !6739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_framebuffer_get(%struct.drm_framebuffer* %fb) #0 !dbg !6740 {
entry:
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !6741, metadata !DIExpression()), !dbg !6742
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !6743
  %base = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %0, i32 0, i32 2, !dbg !6744
  call void @drm_mode_object_get(%struct.drm_mode_object* %base) #9, !dbg !6745
  ret void, !dbg !6746
}

; Function Attrs: noredzone
declare dso_local void @drm_mode_object_get(%struct.drm_mode_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6747 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6748, metadata !DIExpression()), !dbg !6750
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6751, metadata !DIExpression()), !dbg !6750
  %0 = load i64, i64* %__edi, align 8, !dbg !6750
  store i64 %0, i64* %__edi, align 8, !dbg !6750
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6752, metadata !DIExpression()), !dbg !6750
  %1 = load i64, i64* %__esi, align 8, !dbg !6750
  store i64 %1, i64* %__esi, align 8, !dbg !6750
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6753, metadata !DIExpression()), !dbg !6750
  %2 = load i64, i64* %__edx, align 8, !dbg !6750
  store i64 %2, i64* %__edx, align 8, !dbg !6750
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6754, metadata !DIExpression()), !dbg !6750
  %3 = load i64, i64* %__ecx, align 8, !dbg !6750
  store i64 %3, i64* %__ecx, align 8, !dbg !6750
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6755, metadata !DIExpression()), !dbg !6750
  %4 = load i64, i64* %__eax, align 8, !dbg !6750
  store i64 %4, i64* %__eax, align 8, !dbg !6750
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6750
  %6 = call i64 @llvm.read_register.i64(metadata !5575), !dbg !6756
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !6756, !srcloc !6759
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6756
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6756
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6756
  call void @llvm.write_register.i64(metadata !5575, i64 %asmresult1), !dbg !6756
  %8 = load i64, i64* %__eax, align 8, !dbg !6756
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6760, metadata !DIExpression()), !dbg !6762
  store i64 -1, i64* %__mask, align 8, !dbg !6762
  %9 = load i64, i64* %__mask, align 8, !dbg !6762
  store i64 %9, i64* %tmp, align 8, !dbg !6762
  %10 = load i64, i64* %tmp, align 8, !dbg !6762
  %and = and i64 %8, %10, !dbg !6756
  store i64 %and, i64* %__ret, align 8, !dbg !6756
  %11 = load i64, i64* %__ret, align 8, !dbg !6750
  store i64 %11, i64* %tmp2, align 8, !dbg !6763
  %12 = load i64, i64* %tmp2, align 8, !dbg !6750
  ret i64 %12, !dbg !6764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6765 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6766, metadata !DIExpression()), !dbg !6768
  %0 = load i64, i64* %__edi, align 8, !dbg !6768
  store i64 %0, i64* %__edi, align 8, !dbg !6768
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6769, metadata !DIExpression()), !dbg !6768
  %1 = load i64, i64* %__esi, align 8, !dbg !6768
  store i64 %1, i64* %__esi, align 8, !dbg !6768
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6770, metadata !DIExpression()), !dbg !6768
  %2 = load i64, i64* %__edx, align 8, !dbg !6768
  store i64 %2, i64* %__edx, align 8, !dbg !6768
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6771, metadata !DIExpression()), !dbg !6768
  %3 = load i64, i64* %__ecx, align 8, !dbg !6768
  store i64 %3, i64* %__ecx, align 8, !dbg !6768
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6772, metadata !DIExpression()), !dbg !6768
  %4 = load i64, i64* %__eax, align 8, !dbg !6768
  store i64 %4, i64* %__eax, align 8, !dbg !6768
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6768
  %6 = call i64 @llvm.read_register.i64(metadata !5575), !dbg !6768
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !6768, !srcloc !6773
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6768
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6768
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6768
  call void @llvm.write_register.i64(metadata !5575, i64 %asmresult1), !dbg !6768
  ret void, !dbg !6774
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6775 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6778, metadata !DIExpression()), !dbg !6779
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6780, metadata !DIExpression()), !dbg !6781
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6782, metadata !DIExpression()), !dbg !6783
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6784
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6786
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6787
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !6788
  br i1 %call, label %if.end, label %if.then, !dbg !6789

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6790

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6791
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6792
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6793
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6794
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6795
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6796
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6797
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6798
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6799
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6800
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6801
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6802
  br label %do.body, !dbg !6803

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6804

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6806

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6804

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6808
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6808
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6808
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6808
  br label %do.end7, !dbg !6808

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6804

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6811 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6814, metadata !DIExpression()), !dbg !6815
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6816, metadata !DIExpression()), !dbg !6817
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6818, metadata !DIExpression()), !dbg !6819
  ret i1 true, !dbg !6820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6821 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6824, metadata !DIExpression()), !dbg !6825
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6826, metadata !DIExpression()), !dbg !6828
  %0 = load i64, i64* %__edi, align 8, !dbg !6828
  store i64 %0, i64* %__edi, align 8, !dbg !6828
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6829, metadata !DIExpression()), !dbg !6828
  %1 = load i64, i64* %__esi, align 8, !dbg !6828
  store i64 %1, i64* %__esi, align 8, !dbg !6828
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6830, metadata !DIExpression()), !dbg !6828
  %2 = load i64, i64* %__edx, align 8, !dbg !6828
  store i64 %2, i64* %__edx, align 8, !dbg !6828
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6831, metadata !DIExpression()), !dbg !6828
  %3 = load i64, i64* %__ecx, align 8, !dbg !6828
  store i64 %3, i64* %__ecx, align 8, !dbg !6828
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6832, metadata !DIExpression()), !dbg !6828
  %4 = load i64, i64* %__eax, align 8, !dbg !6828
  store i64 %4, i64* %__eax, align 8, !dbg !6828
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6828
  %6 = call i64 @llvm.read_register.i64(metadata !5575), !dbg !6828
  %7 = load i64, i64* %f.addr, align 8, !dbg !6828
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #8, !dbg !6828, !srcloc !6833
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6828
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6828
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6828
  call void @llvm.write_register.i64(metadata !5575, i64 %asmresult1), !dbg !6828
  ret void, !dbg !6834
}

; Function Attrs: noredzone
declare dso_local void @drm_mode_object_put(%struct.drm_mode_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !6835 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !6838, metadata !DIExpression()), !dbg !6839
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !6840, metadata !DIExpression()), !dbg !6841
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6842
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !6844
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !6845
  br i1 %call, label %if.then, label %if.end, !dbg !6846

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !6847
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6849
  call void %1(%struct.kref* %2) #9, !dbg !6847
  store i32 1, i32* %retval, align 4, !dbg !6850
  br label %return, !dbg !6850

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6851
  br label %return, !dbg !6851

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6852
  ret i32 %3, !dbg !6852
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_release(%struct.kref*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !6853 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6857, metadata !DIExpression()), !dbg !6858
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6859
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !6860
  ret i1 %call, !dbg !6861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6862 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6865, metadata !DIExpression()), !dbg !6866
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6867, metadata !DIExpression()), !dbg !6868
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6869
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6870
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !6871
  ret i1 %call, !dbg !6872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6873 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6876, metadata !DIExpression()), !dbg !6882
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6887, metadata !DIExpression()), !dbg !6888
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6889, metadata !DIExpression()), !dbg !6891
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6892, metadata !DIExpression()), !dbg !6900
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6902, metadata !DIExpression()), !dbg !6903
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6904, metadata !DIExpression()), !dbg !6905
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6906, metadata !DIExpression()), !dbg !6907
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6908, metadata !DIExpression()), !dbg !6909
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6910, metadata !DIExpression()), !dbg !6911
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6912, metadata !DIExpression()), !dbg !6913
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6914, metadata !DIExpression()), !dbg !6915
  %0 = load i32, i32* %i.addr, align 4, !dbg !6916
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6917
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !6918
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6919
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6919
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6920
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6921
  %conv.i.i = trunc i64 %5 to i32, !dbg !6921
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !6922
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6923
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6923
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #11, !dbg !6923
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !6924
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6925
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6891
  %sub.i.i = sub i32 0, %10, !dbg !6891
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !6891
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6891
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6891
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6891
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !6891, !srcloc !6926
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6891
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6891
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6891
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6891
  store i32 %15, i32* %old, align 4, !dbg !6915
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !6927
  %tobool = icmp ne i32* %16, null, !dbg !6927
  br i1 %tobool, label %if.then, label %if.end, !dbg !6929

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6930
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6931
  store i32 %17, i32* %18, align 4, !dbg !6932
  br label %if.end, !dbg !6933

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6934
  %20 = load i32, i32* %i.addr, align 4, !dbg !6936
  %cmp = icmp eq i32 %19, %20, !dbg !6937
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6938

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6939, !srcloc !6941
  store i1 true, i1* %retval, align 1, !dbg !6942
  br label %return, !dbg !6942

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6943
  %cmp3 = icmp slt i32 %21, 0, !dbg !6943
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !6943

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !6943
  %23 = load i32, i32* %i.addr, align 4, !dbg !6943
  %sub = sub i32 %22, %23, !dbg !6943
  %cmp4 = icmp slt i32 %sub, 0, !dbg !6943
  br label %lor.end, !dbg !6943

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !6943
  %lnot5 = xor i1 %lnot, true, !dbg !6943
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6943
  %conv = sext i32 %lnot.ext to i64, !dbg !6943
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6943
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6945

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6946
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !6947
  br label %if.end8, !dbg !6947

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !6948
  br label %return, !dbg !6948

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !6949
  ret i1 %26, !dbg !6949
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6950 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6954, metadata !DIExpression()), !dbg !6955
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6956, metadata !DIExpression()), !dbg !6957
  ret i1 true, !dbg !6958
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6959 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6963, metadata !DIExpression()), !dbg !6964
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6965, metadata !DIExpression()), !dbg !6966
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6967, metadata !DIExpression()), !dbg !6968
  ret void, !dbg !6969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6970 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6971, metadata !DIExpression()), !dbg !6972
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6973
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !6975
  br i1 %call, label %if.end, label %if.then, !dbg !6976

if.then:                                          ; preds = %entry
  br label %return, !dbg !6977

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6978
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6979
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6979
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6980
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6981
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6981
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !6982
  br label %return, !dbg !6983

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6984 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6987, metadata !DIExpression()), !dbg !6988
  ret i1 true, !dbg !6989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6990 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6991, metadata !DIExpression()), !dbg !6992
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6993, metadata !DIExpression()), !dbg !6994
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6995
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6996
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6997
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6998
  br label %do.body, !dbg !6999

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7000

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7002

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7000

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !7004
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !7004
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !7004
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !7004
  br label %do.end5, !dbg !7004

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7000

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !7007 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !7014, metadata !DIExpression()), !dbg !7016
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !7018, metadata !DIExpression()), !dbg !7019
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !7020, metadata !DIExpression()), !dbg !7021
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !7022, metadata !DIExpression()), !dbg !7024
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !7026, metadata !DIExpression()), !dbg !7027
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !7028, metadata !DIExpression()), !dbg !7030
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !7032, metadata !DIExpression()), !dbg !7033
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !7034, metadata !DIExpression()), !dbg !7035
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !7036, metadata !DIExpression()), !dbg !7037
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !7038
  %1 = load i64, i64* %nr.addr, align 8, !dbg !7039
  %div = sdiv i64 %1, 64, !dbg !7039
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !7040
  %2 = bitcast i64* %add.ptr to i8*, !dbg !7038
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !7041
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !7042
  %conv.i = trunc i64 %4 to i32, !dbg !7042
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !7043
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !7044
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !7044
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !7044
  %7 = load i64, i64* %nr.addr, align 8, !dbg !7045
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !7045
  br i1 %8, label %cond.true, label %cond.false, !dbg !7045

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !7045
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !7045
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !7046
  %and.i = and i64 %11, 63, !dbg !7047
  %shl.i = shl i64 1, %and.i, !dbg !7048
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !7049
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !7050
  %shr.i = ashr i64 %13, 6, !dbg !7051
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !7049
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !7049
  %and1.i = and i64 %shl.i, %14, !dbg !7052
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !7053
  %conv = zext i1 %cmp.i to i32, !dbg !7045
  br label %cond.end, !dbg !7045

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !7045
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !7045
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !7054
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !7055
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !7056, !srcloc !7057
  store i8 %19, i8* %oldbit.i, align 1, !dbg !7056
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !7058
  %tobool.i = trunc i8 %20 to i1, !dbg !7058
  %conv2 = zext i1 %tobool.i to i32, !dbg !7045
  br label %cond.end, !dbg !7045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7045
  %tobool = icmp ne i32 %cond, 0, !dbg !7045
  ret i1 %tobool, !dbg !7059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !7060 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !7061, metadata !DIExpression()), !dbg !7062
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7063, metadata !DIExpression()), !dbg !7064
  ret i1 true, !dbg !7065
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @drm_writeback_fence_get_driver_name(%struct.dma_fence* %fence) #0 !dbg !7066 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %wb_connector = alloca %struct.drm_writeback_connector*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_writeback_connector*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !7067, metadata !DIExpression()), !dbg !7068
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %wb_connector, metadata !7069, metadata !DIExpression()), !dbg !7070
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7071, metadata !DIExpression()), !dbg !7073
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !7073
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 0, !dbg !7073
  %1 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !7073
  %2 = bitcast %struct.spinlock* %1 to i8*, !dbg !7073
  store i8* %2, i8** %__mptr, align 8, !dbg !7073
  br label %do.body, !dbg !7073

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7074

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !7073
  %add.ptr = getelementptr i8, i8* %3, i64 -1308, !dbg !7073
  %4 = bitcast i8* %add.ptr to %struct.drm_writeback_connector*, !dbg !7073
  store %struct.drm_writeback_connector* %4, %struct.drm_writeback_connector** %tmp, align 8, !dbg !7074
  %5 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %tmp, align 8, !dbg !7073
  store %struct.drm_writeback_connector* %5, %struct.drm_writeback_connector** %wb_connector, align 8, !dbg !7070
  %6 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector, align 8, !dbg !7076
  %base = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %6, i32 0, i32 0, !dbg !7077
  %dev = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %base, i32 0, i32 0, !dbg !7078
  %7 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !7078
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 5, !dbg !7079
  %8 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !7079
  %name = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %8, i32 0, i32 35, !dbg !7080
  %9 = load i8*, i8** %name, align 8, !dbg !7080
  ret i8* %9, !dbg !7081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @drm_writeback_fence_get_timeline_name(%struct.dma_fence* %fence) #0 !dbg !7082 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %wb_connector = alloca %struct.drm_writeback_connector*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_writeback_connector*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !7083, metadata !DIExpression()), !dbg !7084
  call void @llvm.dbg.declare(metadata %struct.drm_writeback_connector** %wb_connector, metadata !7085, metadata !DIExpression()), !dbg !7086
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7087, metadata !DIExpression()), !dbg !7089
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !7089
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 0, !dbg !7089
  %1 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !7089
  %2 = bitcast %struct.spinlock* %1 to i8*, !dbg !7089
  store i8* %2, i8** %__mptr, align 8, !dbg !7089
  br label %do.body, !dbg !7089

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7090

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !7089
  %add.ptr = getelementptr i8, i8* %3, i64 -1308, !dbg !7089
  %4 = bitcast i8* %add.ptr to %struct.drm_writeback_connector*, !dbg !7089
  store %struct.drm_writeback_connector* %4, %struct.drm_writeback_connector** %tmp, align 8, !dbg !7090
  %5 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %tmp, align 8, !dbg !7089
  store %struct.drm_writeback_connector* %5, %struct.drm_writeback_connector** %wb_connector, align 8, !dbg !7086
  %6 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %wb_connector, align 8, !dbg !7092
  %timeline_name = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %6, i32 0, i32 8, !dbg !7093
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %timeline_name, i64 0, i64 0, !dbg !7092
  ret i8* %arraydecay, !dbg !7094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_writeback_fence_enable_signaling(%struct.dma_fence* %fence) #0 !dbg !7095 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !7096, metadata !DIExpression()), !dbg !7097
  ret i1 true, !dbg !7098
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5575}
!llvm.module.flags = !{!5576, !5577, !5578, !5579}
!llvm.ident = !{!5580}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "drm_writeback_encoder_funcs", scope: !2, file: !3, line: 148, type: !5208, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !303, globals: !5572, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_writeback.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !113, !157, !166, !173, !179, !184, !192, !199, !204, !210, !214, !230, !236, !243, !248, !281, !288, !296}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !108, line: 11, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !114, line: 91, baseType: !115, size: 32, elements: !116)
!114 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!117 = !DIEnumerator(name: "MODE_OK", value: 0)
!118 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!119 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!120 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!121 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!122 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!123 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!124 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!125 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!126 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!127 = !DIEnumerator(name: "MODE_MEM", value: 10)
!128 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!129 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!130 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!131 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!132 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!133 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!134 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!135 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!136 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!137 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!138 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!139 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!140 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!141 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!142 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!143 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!144 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!145 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!146 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!147 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!148 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!149 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!150 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!151 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!152 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!153 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!154 = !DIEnumerator(name: "MODE_STALE", value: -3)
!155 = !DIEnumerator(name: "MODE_BAD", value: -2)
!156 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !158, line: 96, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !167, line: 33, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !174, line: 94, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2, isUnsigned: true)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !174, line: 59, baseType: !7, size: 32, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "connector_status_connected", value: 1, isUnsigned: true)
!182 = !DIEnumerator(name: "connector_status_disconnected", value: 2, isUnsigned: true)
!183 = !DIEnumerator(name: "connector_status_unknown", value: 3, isUnsigned: true)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !174, line: 133, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DIEnumerator(name: "SubPixelUnknown", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2, isUnsigned: true)
!189 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3, isUnsigned: true)
!190 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4, isUnsigned: true)
!191 = !DIEnumerator(name: "SubPixelNone", value: 5, isUnsigned: true)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !193, line: 77, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0, isUnsigned: true)
!196 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1, isUnsigned: true)
!197 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2, isUnsigned: true)
!198 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !193, line: 84, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0, isUnsigned: true)
!202 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1, isUnsigned: true)
!203 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2, isUnsigned: true)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !205, line: 536, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0, isUnsigned: true)
!208 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1, isUnsigned: true)
!209 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !174, line: 223, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0, isUnsigned: true)
!213 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1, isUnsigned: true)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !215, line: 334, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!217 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0, isUnsigned: true)
!219 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1, isUnsigned: true)
!220 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3, isUnsigned: true)
!221 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4, isUnsigned: true)
!222 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5, isUnsigned: true)
!223 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6, isUnsigned: true)
!224 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8, isUnsigned: true)
!225 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9, isUnsigned: true)
!226 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10, isUnsigned: true)
!227 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11, isUnsigned: true)
!228 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15, isUnsigned: true)
!229 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18, isUnsigned: true)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !174, line: 46, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0, isUnsigned: true)
!233 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1, isUnsigned: true)
!234 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2, isUnsigned: true)
!235 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3, isUnsigned: true)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !174, line: 249, baseType: !115, size: 32, elements: !237)
!237 = !{!238, !239, !240, !241, !242}
!238 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!239 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!240 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!241 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!242 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 10, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!247 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 30, baseType: !250, size: 64, elements: !251)
!249 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!252 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!253 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!254 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!255 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!256 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!257 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!258 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!259 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!260 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!261 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!262 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!263 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!264 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!265 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!266 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!267 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!268 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!269 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!270 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!271 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!272 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!273 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!274 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!275 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!276 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!277 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!278 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!279 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!280 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !282, line: 305, baseType: !7, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !285, !286, !287}
!284 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!285 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!286 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!287 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !289, line: 119, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!292 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!293 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!294 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!295 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !297, line: 98, baseType: !7, size: 32, elements: !298)
!297 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300, !301, !302}
!299 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0, isUnsigned: true)
!300 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1, isUnsigned: true)
!301 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2, isUnsigned: true)
!302 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3, isUnsigned: true)
!303 = !{!304, !306, !314, !315, !456, !553, !250, !5571, !320, !3975}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !305, line: 148, baseType: !7)
!305 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !305, line: 178, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !305, line: 179, baseType: !309, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !310, file: !305, line: 179, baseType: !309, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !317, line: 90, size: 704, elements: !318)
!317 = !DIFile(filename: "./include/drm/drm_writeback.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !5565, !5566, !5567, !5568, !5569, !5570}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !316, file: !317, line: 96, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_connector", file: !317, line: 21, size: 10816, elements: !322)
!322 = !{!323, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !321, file: !317, line: 25, baseType: !324, size: 9280)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !174, line: 1170, size: 9280, elements: !325)
!325 = !{!326, !4648, !4649, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4720, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5322, !5323, !5363, !5382, !5383, !5384, !5385, !5386, !5387, !5389, !5391, !5393, !5394, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !324, file: !174, line: 1172, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !167, line: 53, size: 11840, elements: !329)
!329 = !{!330, !331, !332, !345, !4088, !4094, !4272, !4273, !4274, !4275, !4276, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4297, !4298, !4299, !4300, !4301, !4302, !4305, !4309, !4310, !4636, !4637, !4638, !4641, !4644, !4645}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !328, file: !167, line: 59, baseType: !310, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !328, file: !167, line: 62, baseType: !115, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !328, file: !167, line: 65, baseType: !333, size: 32, offset: 160)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !334, line: 19, size: 32, elements: !335)
!334 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !333, file: !334, line: 20, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !289, line: 113, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !289, line: 111, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !338, file: !289, line: 112, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !305, line: 168, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 166, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !342, file: !305, line: 167, baseType: !115, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !328, file: !167, line: 68, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !348)
!348 = !{!349, !3542, !3543, !3546, !3547, !3598, !3689, !3690, !3691, !3692, !3693, !3702, !3807, !3820, !4015, !4016, !4020, !4022, !4023, !4024, !4028, !4034, !4035, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4076, !4077, !4078, !4081, !4084, !4085, !4086, !4087}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !347, file: !73, line: 462, baseType: !350, size: 512)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !351, line: 64, size: 512, elements: !352)
!351 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!352 = !{!353, !357, !358, !360, !420, !3403, !3536, !3537, !3538, !3539, !3540, !3541}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !351, line: 65, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !350, file: !351, line: 66, baseType: !310, size: 128, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !350, file: !351, line: 67, baseType: !359, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !350, file: !351, line: 68, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !351, line: 192, size: 704, elements: !363)
!363 = !{!364, !365, !381, !382}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !362, file: !351, line: 193, baseType: !310, size: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !362, file: !351, line: 194, baseType: !366, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !367, line: 83, baseType: !368)
!367 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !367, line: 71, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !367, line: 72, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !367, line: 72, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !371, file: !367, line: 73, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !367, line: 20, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !374, file: !367, line: 21, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !378, line: 25, baseType: !379)
!378 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 25, elements: !380)
!380 = !{}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !362, file: !351, line: 195, baseType: !350, size: 512, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !362, file: !351, line: 196, baseType: !383, size: 64, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !351, line: 156, size: 192, elements: !386)
!386 = !{!387, !392, !397}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !385, file: !351, line: 157, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!115, !361, !359}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !351, line: 158, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!354, !361, !359}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !385, file: !351, line: 159, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!115, !361, !359, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !351, line: 148, size: 20736, elements: !404)
!404 = !{!405, !410, !414, !415, !419}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !403, file: !351, line: 149, baseType: !406, size: 192)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !408)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!408 = !{!409}
!409 = !DISubrange(count: 3)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !403, file: !351, line: 150, baseType: !411, size: 4096, offset: 192)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 4096, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !403, file: !351, line: 151, baseType: !115, size: 32, offset: 4288)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !403, file: !351, line: 152, baseType: !416, size: 16384, offset: 4320)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 16384, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 2048)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !403, file: !351, line: 153, baseType: !115, size: 32, offset: 20704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !350, file: !351, line: 69, baseType: !421, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !351, line: 138, size: 448, elements: !423)
!423 = !{!424, !428, !457, !459, !3365, !3393, !3397}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !422, file: !351, line: 139, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !359}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !422, file: !351, line: 140, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !432, line: 230, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !449}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !431, file: !432, line: 231, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !359, !442, !407}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !305, line: 60, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !440, line: 73, baseType: !441)
!440 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !440, line: 15, baseType: !250)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !432, line: 30, size: 128, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !432, line: 31, baseType: !354, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !443, file: !432, line: 32, baseType: !447, size: 16, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !305, line: 19, baseType: !448)
!448 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !431, file: !432, line: 232, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!438, !359, !442, !354, !453}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !305, line: 55, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !440, line: 72, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !440, line: 16, baseType: !456)
!456 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !422, file: !351, line: 141, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !422, file: !351, line: 142, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !432, line: 84, size: 320, elements: !464)
!464 = !{!465, !466, !470, !3362, !3363}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !432, line: 85, baseType: !354, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !463, file: !432, line: 86, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!447, !359, !442, !115}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !463, file: !432, line: 88, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!447, !359, !474, !115}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !432, line: 168, size: 448, elements: !476)
!476 = !{!477, !478, !479, !480, !3357, !3358}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !475, file: !432, line: 169, baseType: !443, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !475, file: !432, line: 170, baseType: !453, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !475, file: !432, line: 171, baseType: !314, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !475, file: !432, line: 172, baseType: !481, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!438, !484, !359, !474, !407, !663, !453}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !486)
!486 = !{!487, !505, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3340, !3341, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !485, file: !44, line: 920, baseType: !488, size: 128)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !44, line: 917, size: 128, elements: !489)
!489 = !{!490, !496}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !488, file: !44, line: 918, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !492, line: 58, size: 64, elements: !493)
!492 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !492, line: 59, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !488, file: !44, line: 919, baseType: !497, size: 128, align: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !305, line: 216, size: 128, align: 64, elements: !498)
!498 = !{!499, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !305, line: 217, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !497, file: !305, line: 218, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !500}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !485, file: !44, line: 921, baseType: !506, size: 128, offset: 128)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !507, line: 8, size: 128, elements: !508)
!507 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !506, file: !507, line: 9, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !512, line: 18, flags: DIFlagFwdDecl)
!512 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !506, file: !507, line: 10, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !512, line: 89, size: 1536, elements: !516)
!516 = !{!517, !518, !528, !536, !537, !560, !3290, !3292, !3304, !3305, !3306, !3307, !3308, !3314, !3315, !3316}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !515, file: !512, line: 91, baseType: !7, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !515, file: !512, line: 92, baseType: !519, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !520, line: 277, baseType: !521)
!520 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !520, line: 277, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !521, file: !520, line: 277, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !520, line: 70, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !520, line: 65, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !525, file: !520, line: 66, baseType: !7, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !515, file: !512, line: 93, baseType: !529, size: 128, offset: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !530, line: 38, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!531 = !{!532, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !530, line: 39, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !529, file: !530, line: 39, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !515, file: !512, line: 94, baseType: !514, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !515, file: !512, line: 95, baseType: !538, size: 128, offset: 256)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !512, line: 47, size: 128, elements: !539)
!539 = !{!540, !556}
!540 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !512, line: 48, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !512, line: 48, size: 64, elements: !542)
!542 = !{!543, !552}
!543 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !512, line: 49, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !512, line: 49, size: 64, elements: !545)
!545 = !{!546, !551}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !544, file: !512, line: 50, baseType: !547, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !548, line: 21, baseType: !549)
!548 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !550, line: 27, baseType: !7)
!550 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !544, file: !512, line: 50, baseType: !547, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !541, file: !512, line: 52, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !548, line: 23, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !550, line: 31, baseType: !555)
!555 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !538, file: !512, line: 54, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !515, file: !512, line: 96, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !563)
!563 = !{!564, !565, !566, !574, !581, !582, !730, !3001, !3002, !3003, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3266, !3274, !3275, !3276, !3286, !3287, !3288, !3289}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !562, file: !44, line: 611, baseType: !447, size: 16)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !562, file: !44, line: 612, baseType: !448, size: 16, offset: 16)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !562, file: !44, line: 613, baseType: !567, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !568, line: 23, baseType: !569)
!568 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 21, size: 32, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !569, file: !568, line: 22, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !305, line: 32, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !440, line: 49, baseType: !7)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !562, file: !44, line: 614, baseType: !575, size: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !568, line: 28, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 26, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !576, file: !568, line: 27, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !305, line: 33, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !440, line: 50, baseType: !7)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !562, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !562, file: !44, line: 622, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !586)
!586 = !{!587, !591, !604, !608, !614, !618, !624, !628, !632, !636, !640, !641, !647, !651, !677, !706, !710, !716, !721, !725, !726}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !585, file: !44, line: 1865, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!514, !561, !514, !7}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !585, file: !44, line: 1866, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!354, !514, !561, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !597, line: 10, size: 128, elements: !598)
!597 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !603}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !596, file: !597, line: 11, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !314}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !596, file: !597, line: 12, baseType: !314, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !585, file: !44, line: 1867, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!115, !561, !115}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !585, file: !44, line: 1868, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !561, !115}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !585, file: !44, line: 1870, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!115, !514, !407, !115}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !585, file: !44, line: 1872, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!115, !561, !514, !447, !622}
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !305, line: 30, baseType: !623)
!623 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !585, file: !44, line: 1873, baseType: !625, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!115, !514, !561, !514}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !585, file: !44, line: 1874, baseType: !629, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!115, !561, !514}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !585, file: !44, line: 1875, baseType: !633, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!115, !561, !514, !354}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !585, file: !44, line: 1876, baseType: !637, size: 64, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!115, !561, !514, !447}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !585, file: !44, line: 1877, baseType: !629, size: 64, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !585, file: !44, line: 1878, baseType: !642, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!115, !561, !514, !447, !645}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !305, line: 16, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !305, line: 13, baseType: !547)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !585, file: !44, line: 1879, baseType: !648, size: 64, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!115, !561, !514, !561, !514, !7}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !585, file: !44, line: 1881, baseType: !652, size: 64, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!115, !514, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !666, !674, !675, !676}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !656, file: !44, line: 220, baseType: !7, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !656, file: !44, line: 221, baseType: !447, size: 16, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !656, file: !44, line: 222, baseType: !567, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !656, file: !44, line: 223, baseType: !575, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !656, file: !44, line: 224, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !305, line: 46, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !440, line: 88, baseType: !665)
!665 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !656, file: !44, line: 225, baseType: !667, size: 128, offset: 192)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !668, line: 13, size: 128, elements: !669)
!668 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !673}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !667, file: !668, line: 14, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !668, line: 8, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !550, line: 30, baseType: !665)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !667, file: !668, line: 15, baseType: !250, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !656, file: !44, line: 226, baseType: !667, size: 128, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !656, file: !44, line: 227, baseType: !667, size: 128, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !656, file: !44, line: 234, baseType: !484, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !585, file: !44, line: 1882, baseType: !678, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!115, !681, !683, !547, !7}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !685, line: 22, size: 1152, elements: !686)
!685 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!686 = !{!687, !688, !689, !690, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !684, file: !685, line: 23, baseType: !547, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !684, file: !685, line: 24, baseType: !447, size: 16, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !684, file: !685, line: 25, baseType: !7, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !684, file: !685, line: 26, baseType: !691, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !305, line: 104, baseType: !547)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !684, file: !685, line: 27, baseType: !553, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !684, file: !685, line: 28, baseType: !553, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !684, file: !685, line: 37, baseType: !553, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !684, file: !685, line: 38, baseType: !645, size: 32, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !684, file: !685, line: 39, baseType: !645, size: 32, offset: 352)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !684, file: !685, line: 40, baseType: !567, size: 32, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !684, file: !685, line: 41, baseType: !575, size: 32, offset: 416)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !684, file: !685, line: 42, baseType: !663, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !684, file: !685, line: 43, baseType: !667, size: 128, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !684, file: !685, line: 44, baseType: !667, size: 128, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !684, file: !685, line: 45, baseType: !667, size: 128, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !684, file: !685, line: 46, baseType: !667, size: 128, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !684, file: !685, line: 47, baseType: !553, size: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !684, file: !685, line: 48, baseType: !553, size: 64, offset: 1088)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !585, file: !44, line: 1883, baseType: !707, size: 64, offset: 960)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!438, !514, !407, !453}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !585, file: !44, line: 1884, baseType: !711, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!115, !561, !714, !553, !553}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !585, file: !44, line: 1886, baseType: !717, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!115, !561, !720, !115}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !585, file: !44, line: 1887, baseType: !722, size: 64, offset: 1152)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!115, !561, !514, !484, !7, !447}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !585, file: !44, line: 1890, baseType: !637, size: 64, offset: 1216)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !585, file: !44, line: 1891, baseType: !727, size: 64, offset: 1280)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!115, !561, !612, !115}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !562, file: !44, line: 623, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !789, !2608, !2690, !2773, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2789, !2793, !2794, !2797, !2798, !2801, !2802, !2803, !2844, !2871, !2872, !2873, !2874, !2875, !2876, !2879, !2881, !2888, !2889, !2891, !2892, !2893, !2952, !2953, !2968, !2969, !2970, !2971, !2972, !2975, !2976, !2977, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !732, file: !44, line: 1417, baseType: !310, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !732, file: !44, line: 1418, baseType: !645, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !732, file: !44, line: 1419, baseType: !559, size: 8, offset: 160)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !732, file: !44, line: 1420, baseType: !456, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !732, file: !44, line: 1421, baseType: !663, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !732, file: !44, line: 1422, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !742)
!742 = !{!743, !744, !745, !752, !756, !760, !764, !768, !769, !779, !782, !783, !784, !786, !787, !788}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !741, file: !44, line: 2229, baseType: !354, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !741, file: !44, line: 2230, baseType: !115, size: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !741, file: !44, line: 2238, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!115, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !751, line: 28, flags: DIFlagFwdDecl)
!751 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !741, file: !44, line: 2239, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !741, file: !44, line: 2240, baseType: !757, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!514, !740, !115, !354, !314}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !741, file: !44, line: 2242, baseType: !761, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !731}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !741, file: !44, line: 2243, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !767, line: 76, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !44, line: 2244, baseType: !740, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !741, file: !44, line: 2245, baseType: !770, size: 64, offset: 512)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !305, line: 182, size: 64, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !770, file: !305, line: 183, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !305, line: 186, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !774, file: !305, line: 187, baseType: !773, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !774, file: !305, line: 187, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !741, file: !44, line: 2247, baseType: !780, offset: 576)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !781, line: 187, elements: !380)
!781 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !741, file: !44, line: 2248, baseType: !780, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !741, file: !44, line: 2249, baseType: !780, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !741, file: !44, line: 2250, baseType: !785, offset: 576)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, elements: !408)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !741, file: !44, line: 2252, baseType: !780, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !741, file: !44, line: 2253, baseType: !780, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !741, file: !44, line: 2254, baseType: !780, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !732, file: !44, line: 1423, baseType: !790, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !793)
!793 = !{!794, !798, !802, !803, !807, !813, !817, !818, !819, !823, !827, !828, !829, !830, !836, !841, !842, !849, !850, !851, !852, !2592, !2607}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !792, file: !44, line: 1936, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!561, !731}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !792, file: !44, line: 1937, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !561}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !792, file: !44, line: 1938, baseType: !799, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !792, file: !44, line: 1940, baseType: !804, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !561, !115}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !792, file: !44, line: 1941, baseType: !808, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!115, !561, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !792, file: !44, line: 1942, baseType: !814, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!115, !561}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !792, file: !44, line: 1943, baseType: !799, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !792, file: !44, line: 1944, baseType: !761, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !792, file: !44, line: 1945, baseType: !820, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!115, !731, !115}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !792, file: !44, line: 1946, baseType: !824, size: 64, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!115, !731}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !792, file: !44, line: 1947, baseType: !824, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !792, file: !44, line: 1948, baseType: !824, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !792, file: !44, line: 1949, baseType: !824, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !792, file: !44, line: 1950, baseType: !831, size: 64, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!115, !514, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !792, file: !44, line: 1951, baseType: !837, size: 64, offset: 896)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!115, !731, !840, !407}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !792, file: !44, line: 1952, baseType: !761, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !792, file: !44, line: 1954, baseType: !843, size: 64, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!115, !846, !514}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !848, line: 539, flags: DIFlagFwdDecl)
!848 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!849 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !792, file: !44, line: 1955, baseType: !843, size: 64, offset: 1088)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !792, file: !44, line: 1956, baseType: !843, size: 64, offset: 1152)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !792, file: !44, line: 1957, baseType: !843, size: 64, offset: 1216)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !792, file: !44, line: 1963, baseType: !853, size: 64, offset: 1280)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!115, !731, !856, !304}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !858, line: 68, size: 512, align: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!859 = !{!860, !861, !2584, !2591}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 69, baseType: !456, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 77, baseType: !862, size: 320, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 77, size: 320, elements: !863)
!863 = !{!864, !1047, !1052, !1080, !1088, !1094, !2515, !2583}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 78, baseType: !865, size: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 78, size: 320, elements: !866)
!866 = !{!867, !868, !1045, !1046}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !865, file: !858, line: 84, baseType: !310, size: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !865, file: !858, line: 86, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !871)
!871 = !{!872, !873, !880, !881, !882, !897, !913, !914, !915, !916, !1038, !1039, !1042, !1043, !1044}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !870, file: !44, line: 452, baseType: !561, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !870, file: !44, line: 453, baseType: !874, size: 128, offset: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !875, line: 292, size: 128, elements: !876)
!875 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !874, file: !875, line: 293, baseType: !366)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !874, file: !875, line: 295, baseType: !304, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !874, file: !875, line: 296, baseType: !314, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !870, file: !44, line: 454, baseType: !304, size: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !870, file: !44, line: 455, baseType: !341, size: 32, offset: 224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !870, file: !44, line: 460, baseType: !883, size: 128, offset: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !884, line: 125, size: 128, elements: !885)
!884 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886, !896}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !883, file: !884, line: 126, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !884, line: 31, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !887, file: !884, line: 32, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !884, line: 24, size: 192, align: 64, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !891, file: !884, line: 25, baseType: !456, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !891, file: !884, line: 26, baseType: !890, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !891, file: !884, line: 27, baseType: !890, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !883, file: !884, line: 127, baseType: !890, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !870, file: !44, line: 461, baseType: !898, size: 256, offset: 384)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !899, line: 35, size: 256, elements: !900)
!899 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!900 = !{!901, !909, !910, !912}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !898, file: !899, line: 36, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !903, line: 13, baseType: !904)
!903 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !305, line: 175, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 173, size: 64, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !905, file: !305, line: 174, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !548, line: 22, baseType: !672)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !898, file: !899, line: 42, baseType: !902, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !898, file: !899, line: 46, baseType: !911, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !367, line: 29, baseType: !374)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !898, file: !899, line: 47, baseType: !310, size: 128, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !870, file: !44, line: 462, baseType: !456, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !870, file: !44, line: 463, baseType: !456, size: 64, offset: 704)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !870, file: !44, line: 464, baseType: !456, size: 64, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !870, file: !44, line: 465, baseType: !917, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !920)
!920 = !{!921, !925, !929, !933, !937, !941, !947, !953, !957, !962, !966, !970, !974, !1002, !1006, !1012, !1013, !1014, !1018, !1023, !1027, !1034}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !919, file: !44, line: 368, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!115, !856, !811}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !919, file: !44, line: 369, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!115, !484, !856}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !919, file: !44, line: 372, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!115, !869, !811}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !919, file: !44, line: 375, baseType: !934, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!115, !856}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !919, file: !44, line: 381, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!115, !484, !869, !309, !7}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !919, file: !44, line: 383, baseType: !942, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !919, file: !44, line: 385, baseType: !948, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!115, !484, !869, !663, !7, !7, !951, !952}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !919, file: !44, line: 388, baseType: !954, size: 64, offset: 448)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!115, !484, !869, !663, !7, !7, !856, !314}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !919, file: !44, line: 393, baseType: !958, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!961, !869, !961}
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !305, line: 125, baseType: !553)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !919, file: !44, line: 394, baseType: !963, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !856, !7, !7}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !919, file: !44, line: 395, baseType: !967, size: 64, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!115, !856, !304}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !919, file: !44, line: 396, baseType: !971, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !856}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !919, file: !44, line: 397, baseType: !975, size: 64, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!438, !978, !1000}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !980)
!980 = !{!981, !982, !983, !987, !988, !989, !992, !993}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !979, file: !44, line: 321, baseType: !484, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !979, file: !44, line: 326, baseType: !663, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !979, file: !44, line: 327, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !978, !250, !250}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !979, file: !44, line: 328, baseType: !314, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !979, file: !44, line: 329, baseType: !115, size: 32, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !979, file: !44, line: 330, baseType: !990, size: 16, offset: 288)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !548, line: 19, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !550, line: 24, baseType: !448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !979, file: !44, line: 331, baseType: !990, size: 16, offset: 304)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !44, line: 332, baseType: !994, size: 64, offset: 320)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !44, line: 332, size: 64, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !994, file: !44, line: 333, baseType: !7, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !994, file: !44, line: 334, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !919, file: !44, line: 402, baseType: !1003, size: 64, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!115, !869, !856, !856, !5}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !919, file: !44, line: 404, baseType: !1007, size: 64, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!622, !856, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1011, line: 305, baseType: !7)
!1011 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !919, file: !44, line: 405, baseType: !971, size: 64, offset: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !919, file: !44, line: 406, baseType: !934, size: 64, offset: 1024)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !919, file: !44, line: 407, baseType: !1015, size: 64, offset: 1088)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!115, !856, !456, !456}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !919, file: !44, line: 409, baseType: !1019, size: 64, offset: 1152)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !856, !1022, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !919, file: !44, line: 410, baseType: !1024, size: 64, offset: 1216)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!115, !869, !856}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !919, file: !44, line: 413, baseType: !1028, size: 64, offset: 1280)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!115, !1031, !484, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !919, file: !44, line: 415, baseType: !1035, size: 64, offset: 1344)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !484}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !870, file: !44, line: 466, baseType: !456, size: 64, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !870, file: !44, line: 467, baseType: !1040, size: 32, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1041, line: 8, baseType: !547)
!1041 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !870, file: !44, line: 468, baseType: !366, offset: 992)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !870, file: !44, line: 469, baseType: !310, size: 128, offset: 1024)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !870, file: !44, line: 470, baseType: !314, size: 64, offset: 1152)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !865, file: !858, line: 87, baseType: !456, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !865, file: !858, line: 94, baseType: !456, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 96, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 96, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1048, file: !858, line: 101, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !305, line: 143, baseType: !553)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 103, baseType: !1053, size: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 103, size: 320, elements: !1054)
!1054 = !{!1055, !1065, !1068, !1069}
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !858, line: 104, baseType: !1056, size: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !858, line: 104, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1056, file: !858, line: 105, baseType: !310, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !858, line: 106, baseType: !1060, size: 128)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1056, file: !858, line: 106, size: 128, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !858, line: 107, baseType: !856, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1060, file: !858, line: 109, baseType: !115, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1060, file: !858, line: 110, baseType: !115, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1053, file: !858, line: 117, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !858, line: 117, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1053, file: !858, line: 119, baseType: !314, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !858, line: 120, baseType: !1070, size: 64, offset: 256)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !858, line: 120, size: 64, elements: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1070, file: !858, line: 121, baseType: !314, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1070, file: !858, line: 122, baseType: !456, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !858, line: 123, baseType: !1075, size: 32)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !858, line: 123, size: 32, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1075, file: !858, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1075, file: !858, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1075, file: !858, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 130, baseType: !1081, size: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 130, size: 192, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1081, file: !858, line: 131, baseType: !456, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1081, file: !858, line: 134, baseType: !559, size: 8, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1081, file: !858, line: 135, baseType: !559, size: 8, offset: 72)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1081, file: !858, line: 136, baseType: !341, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1081, file: !858, line: 137, baseType: !7, size: 32, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 139, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 139, size: 256, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1089, file: !858, line: 140, baseType: !456, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1089, file: !858, line: 141, baseType: !341, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1089, file: !858, line: 143, baseType: !310, size: 128, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 145, baseType: !1095, size: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 145, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1100, !1101, !2514}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1095, file: !858, line: 146, baseType: !456, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1095, file: !858, line: 147, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !848, line: 509, baseType: !856)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1095, file: !858, line: 148, baseType: !456, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !858, line: 149, baseType: !1102, size: 64, offset: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !858, line: 149, size: 64, elements: !1103)
!1103 = !{!1104, !2513}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1102, file: !858, line: 150, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !858, line: 388, size: 7296, elements: !1107)
!1107 = !{!1108, !2509}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !858, line: 389, baseType: !1109, size: 7296)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !858, line: 389, size: 7296, elements: !1110)
!1110 = !{!1111, !1229, !1230, !1231, !1235, !1236, !1237, !1238, !1239, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1280, !1288, !1291, !1337, !1338, !2493, !2494, !2497, !2498, !2499, !2502, !2503, !2504, !2507, !2508}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1109, file: !858, line: 390, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !858, line: 305, size: 1472, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1129, !1130, !1135, !1136, !1139, !1223, !1224, !1225, !1226, !1227}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1113, file: !858, line: 308, baseType: !456, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1113, file: !858, line: 309, baseType: !456, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1113, file: !858, line: 313, baseType: !1112, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1113, file: !858, line: 313, baseType: !1112, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1113, file: !858, line: 315, baseType: !891, size: 192, align: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1113, file: !858, line: 323, baseType: !456, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1113, file: !858, line: 327, baseType: !1105, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1113, file: !858, line: 333, baseType: !1123, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !848, line: 284, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !848, line: 284, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1124, file: !848, line: 284, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1128, line: 19, baseType: !456)
!1128 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1113, file: !858, line: 334, baseType: !456, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1113, file: !858, line: 343, baseType: !1131, size: 256, offset: 704)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !858, line: 340, size: 256, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1131, file: !858, line: 341, baseType: !891, size: 192, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1131, file: !858, line: 342, baseType: !456, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1113, file: !858, line: 351, baseType: !310, size: 128, offset: 960)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1113, file: !858, line: 353, baseType: !1137, size: 64, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !858, line: 353, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1113, file: !858, line: 356, baseType: !1140, size: 64, offset: 1152)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1143)
!1143 = !{!1144, !1148, !1149, !1153, !1157, !1197, !1201, !1205, !1209, !1210, !1211, !1215, !1219}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1142, file: !14, line: 558, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1112}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1142, file: !14, line: 559, baseType: !1145, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1142, file: !14, line: 560, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!115, !1112, !456}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1142, file: !14, line: 561, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!115, !1112}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1142, file: !14, line: 562, baseType: !1158, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !858, line: 682, baseType: !7)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1177, !1184, !1190, !1191, !1192, !1194, !1196}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1163, file: !14, line: 509, baseType: !1112, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1163, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1163, file: !14, line: 511, baseType: !304, size: 32, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1163, file: !14, line: 512, baseType: !456, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1163, file: !14, line: 513, baseType: !456, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1163, file: !14, line: 514, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !848, line: 385, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 385, size: 64, elements: !1174)
!1174 = !{!1175}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1173, file: !848, line: 385, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1128, line: 15, baseType: !456)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1163, file: !14, line: 516, baseType: !1178, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !848, line: 359, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 359, size: 64, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1180, file: !848, line: 359, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1128, line: 16, baseType: !456)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1163, file: !14, line: 519, baseType: !1185, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1128, line: 21, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 21, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1186, file: !1128, line: 21, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1128, line: 14, baseType: !456)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1163, file: !14, line: 521, baseType: !856, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1163, file: !14, line: 522, baseType: !856, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1163, file: !14, line: 528, baseType: !1193, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1163, file: !14, line: 532, baseType: !1195, size: 64, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1163, file: !14, line: 536, baseType: !1099, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1142, file: !14, line: 563, baseType: !1198, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1161, !1162, !13}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1142, file: !14, line: 565, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1162, !456, !456}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1142, file: !14, line: 567, baseType: !1206, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!456, !1112}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1142, file: !14, line: 571, baseType: !1158, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1142, file: !14, line: 574, baseType: !1158, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1142, file: !14, line: 579, baseType: !1212, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!115, !1112, !456, !314, !115, !115}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1142, file: !14, line: 585, baseType: !1216, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!354, !1112}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1142, file: !14, line: 615, baseType: !1220, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!856, !1112, !456}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1113, file: !858, line: 359, baseType: !456, size: 64, offset: 1216)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1113, file: !858, line: 361, baseType: !484, size: 64, offset: 1280)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1113, file: !858, line: 362, baseType: !314, size: 64, offset: 1344)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1113, file: !858, line: 365, baseType: !902, size: 64, offset: 1408)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1113, file: !858, line: 373, baseType: !1228, offset: 1472)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !858, line: 296, elements: !380)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1109, file: !858, line: 391, baseType: !887, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1109, file: !858, line: 392, baseType: !553, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1109, file: !858, line: 394, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!456, !484, !456, !456, !456, !456}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1109, file: !858, line: 398, baseType: !456, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1109, file: !858, line: 399, baseType: !456, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1109, file: !858, line: 405, baseType: !456, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1109, file: !858, line: 406, baseType: !456, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1109, file: !858, line: 407, baseType: !1240, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !848, line: 286, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 286, size: 64, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1242, file: !848, line: 286, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1128, line: 18, baseType: !456)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1109, file: !858, line: 416, baseType: !341, size: 32, offset: 576)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1109, file: !858, line: 428, baseType: !341, size: 32, offset: 608)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1109, file: !858, line: 437, baseType: !341, size: 32, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1109, file: !858, line: 447, baseType: !341, size: 32, offset: 672)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1109, file: !858, line: 450, baseType: !902, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1109, file: !858, line: 452, baseType: !115, size: 32, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1109, file: !858, line: 454, baseType: !366, offset: 800)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1109, file: !858, line: 457, baseType: !898, size: 256, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1109, file: !858, line: 459, baseType: !310, size: 128, offset: 1088)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1109, file: !858, line: 466, baseType: !456, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1109, file: !858, line: 467, baseType: !456, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1109, file: !858, line: 469, baseType: !456, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1109, file: !858, line: 470, baseType: !456, size: 64, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1109, file: !858, line: 471, baseType: !904, size: 64, offset: 1472)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1109, file: !858, line: 472, baseType: !456, size: 64, offset: 1536)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1109, file: !858, line: 473, baseType: !456, size: 64, offset: 1600)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1109, file: !858, line: 474, baseType: !456, size: 64, offset: 1664)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1109, file: !858, line: 475, baseType: !456, size: 64, offset: 1728)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1109, file: !858, line: 477, baseType: !366, offset: 1792)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1109, file: !858, line: 478, baseType: !456, size: 64, offset: 1792)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1109, file: !858, line: 478, baseType: !456, size: 64, offset: 1856)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1109, file: !858, line: 478, baseType: !456, size: 64, offset: 1920)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1109, file: !858, line: 478, baseType: !456, size: 64, offset: 1984)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1109, file: !858, line: 479, baseType: !456, size: 64, offset: 2048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1109, file: !858, line: 479, baseType: !456, size: 64, offset: 2112)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1109, file: !858, line: 479, baseType: !456, size: 64, offset: 2176)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1109, file: !858, line: 480, baseType: !456, size: 64, offset: 2240)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1109, file: !858, line: 480, baseType: !456, size: 64, offset: 2304)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1109, file: !858, line: 480, baseType: !456, size: 64, offset: 2368)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1109, file: !858, line: 480, baseType: !456, size: 64, offset: 2432)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1109, file: !858, line: 482, baseType: !1277, size: 2816, offset: 2496)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 2816, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 44)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1109, file: !858, line: 488, baseType: !1281, size: 256, offset: 5312)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1282, line: 60, size: 256, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1281, file: !1282, line: 61, baseType: !1285, size: 256)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 256, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 4)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1109, file: !858, line: 490, baseType: !1289, size: 64, offset: 5568)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !858, line: 490, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1109, file: !858, line: 493, baseType: !1292, size: 896, offset: 5632)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1293, line: 53, baseType: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1293, line: 13, size: 896, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1302, !1303, !1310, !1311, !1331, !1332, !1333}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1294, file: !1293, line: 18, baseType: !553, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1294, file: !1293, line: 28, baseType: !904, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1294, file: !1293, line: 31, baseType: !898, size: 256, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1294, file: !1293, line: 32, baseType: !1300, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1293, line: 32, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1294, file: !1293, line: 37, baseType: !448, size: 16, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1294, file: !1293, line: 40, baseType: !1304, size: 192, offset: 512)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1305, line: 53, size: 192, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1304, file: !1305, line: 54, baseType: !902, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1304, file: !1305, line: 55, baseType: !366, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1304, file: !1305, line: 59, baseType: !310, size: 128, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1294, file: !1293, line: 41, baseType: !314, size: 64, offset: 704)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1294, file: !1293, line: 42, baseType: !1312, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1315, line: 13, size: 896, elements: !1316)
!1315 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1314, file: !1315, line: 14, baseType: !314, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1314, file: !1315, line: 15, baseType: !456, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1314, file: !1315, line: 17, baseType: !456, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1314, file: !1315, line: 17, baseType: !456, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1314, file: !1315, line: 19, baseType: !250, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1314, file: !1315, line: 21, baseType: !250, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1314, file: !1315, line: 22, baseType: !250, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1314, file: !1315, line: 23, baseType: !250, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1314, file: !1315, line: 24, baseType: !250, size: 64, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1314, file: !1315, line: 25, baseType: !250, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1314, file: !1315, line: 26, baseType: !250, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1314, file: !1315, line: 27, baseType: !250, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1314, file: !1315, line: 28, baseType: !250, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1314, file: !1315, line: 29, baseType: !250, size: 64, offset: 832)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1294, file: !1293, line: 44, baseType: !341, size: 32, offset: 832)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1294, file: !1293, line: 50, baseType: !990, size: 16, offset: 864)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1294, file: !1293, line: 51, baseType: !1334, size: 16, offset: 880)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !548, line: 18, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !550, line: 23, baseType: !1336)
!1336 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1109, file: !858, line: 495, baseType: !456, size: 64, offset: 6528)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1109, file: !858, line: 497, baseType: !1339, size: 64, offset: 6592)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !858, line: 381, size: 384, elements: !1341)
!1341 = !{!1342, !1343, !2492}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1340, file: !858, line: 382, baseType: !341, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1340, file: !858, line: 383, baseType: !1344, size: 128, offset: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !858, line: 376, size: 128, elements: !1345)
!1345 = !{!1346, !2490}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1344, file: !858, line: 377, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1349, line: 640, size: 48640, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !{!1351, !1357, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1372, !1390, !1401, !1486, !1487, !1488, !1499, !1500, !1502, !1503, !1504, !1505, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1584, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1655, !1657, !1658, !1659, !1671, !1672, !1673, !1674, !1675, !1676, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1700, !1705, !1887, !1888, !1889, !1890, !1894, !1897, !1900, !1903, !1906, !1932, !2033, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2079, !2080, !2081, !2082, !2083, !2088, !2089, !2090, !2093, !2094, !2097, !2100, !2103, !2106, !2148, !2151, !2152, !2231, !2232, !2235, !2236, !2239, !2240, !2241, !2245, !2246, !2247, !2260, !2261, !2262, !2272, !2277, !2280, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1348, file: !1349, line: 646, baseType: !1352, size: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1353, line: 56, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !1353, line: 57, baseType: !456, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1352, file: !1353, line: 58, baseType: !547, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1348, file: !1349, line: 649, baseType: !1358, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !250)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1348, file: !1349, line: 657, baseType: !314, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1348, file: !1349, line: 658, baseType: !337, size: 32, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !1349, line: 660, baseType: !7, size: 32, offset: 288)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1348, file: !1349, line: 661, baseType: !7, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1348, file: !1349, line: 684, baseType: !115, size: 32, offset: 352)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1348, file: !1349, line: 686, baseType: !115, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1348, file: !1349, line: 687, baseType: !115, size: 32, offset: 416)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1348, file: !1349, line: 688, baseType: !115, size: 32, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1348, file: !1349, line: 689, baseType: !7, size: 32, offset: 480)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1348, file: !1349, line: 691, baseType: !1369, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1349, line: 691, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1348, file: !1349, line: 692, baseType: !1373, size: 832, offset: 576)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1349, line: 451, size: 832, elements: !1374)
!1374 = !{!1375, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1373, file: !1349, line: 453, baseType: !1376, size: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1349, line: 325, size: 128, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1376, file: !1349, line: 326, baseType: !456, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1376, file: !1349, line: 327, baseType: !547, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1373, file: !1349, line: 454, baseType: !891, size: 192, align: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1373, file: !1349, line: 455, baseType: !310, size: 128, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1373, file: !1349, line: 456, baseType: !7, size: 32, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1373, file: !1349, line: 458, baseType: !553, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1373, file: !1349, line: 459, baseType: !553, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1373, file: !1349, line: 460, baseType: !553, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1373, file: !1349, line: 461, baseType: !553, size: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1373, file: !1349, line: 463, baseType: !553, size: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1373, file: !1349, line: 465, baseType: !1389, offset: 832)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1349, line: 415, elements: !380)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1348, file: !1349, line: 693, baseType: !1391, size: 384, offset: 1408)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1349, line: 489, size: 384, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1391, file: !1349, line: 490, baseType: !310, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1391, file: !1349, line: 491, baseType: !456, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1391, file: !1349, line: 492, baseType: !456, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1391, file: !1349, line: 493, baseType: !7, size: 32, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1391, file: !1349, line: 494, baseType: !448, size: 16, offset: 288)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1391, file: !1349, line: 495, baseType: !448, size: 16, offset: 304)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1391, file: !1349, line: 497, baseType: !1400, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1348, file: !1349, line: 697, baseType: !1402, size: 1792, offset: 1792)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1349, line: 507, size: 1792, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1483, !1484}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1402, file: !1349, line: 508, baseType: !891, size: 192, align: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1402, file: !1349, line: 515, baseType: !553, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1402, file: !1349, line: 516, baseType: !553, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1402, file: !1349, line: 517, baseType: !553, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1402, file: !1349, line: 518, baseType: !553, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1402, file: !1349, line: 519, baseType: !553, size: 64, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1402, file: !1349, line: 526, baseType: !908, size: 64, offset: 512)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1402, file: !1349, line: 527, baseType: !553, size: 64, offset: 576)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1402, file: !1349, line: 528, baseType: !7, size: 32, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1402, file: !1349, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1402, file: !1349, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1402, file: !1349, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1402, file: !1349, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1402, file: !1349, line: 563, baseType: !1418, size: 512, offset: 704)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1419)
!1419 = !{!1420, !1428, !1429, !1434, !1477, !1480, !1481, !1482}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1418, file: !20, line: 119, baseType: !1421, size: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1422, line: 9, size: 256, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1421, file: !1422, line: 10, baseType: !891, size: 192, align: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1421, file: !1422, line: 11, baseType: !1426, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1427, line: 29, baseType: !908)
!1427 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1418, file: !20, line: 120, baseType: !1426, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1418, file: !20, line: 121, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!19, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1418, file: !20, line: 122, baseType: !1435, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1437)
!1437 = !{!1438, !1458, !1459, !1462, !1467, !1468, !1472, !1476}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1436, file: !20, line: 160, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !20, line: 215, baseType: !911)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1440, file: !20, line: 216, baseType: !7, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1440, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1440, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1440, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1440, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1440, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1440, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1440, file: !20, line: 233, baseType: !1426, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1440, file: !20, line: 234, baseType: !1433, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1440, file: !20, line: 235, baseType: !1426, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1440, file: !20, line: 236, baseType: !1433, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1440, file: !20, line: 237, baseType: !1455, size: 4096, offset: 512)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1436, size: 4096, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 8)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1436, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1436, file: !20, line: 162, baseType: !1460, size: 32, offset: 96)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !305, line: 27, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !440, line: 96, baseType: !115)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1436, file: !20, line: 163, baseType: !1463, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !520, line: 276, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !520, line: 276, size: 32, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1464, file: !520, line: 276, baseType: !524, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1436, file: !20, line: 164, baseType: !1433, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1436, file: !20, line: 165, baseType: !1469, size: 128, offset: 256)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1422, line: 14, size: 128, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1469, file: !1422, line: 15, baseType: !883, size: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1436, file: !20, line: 166, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1426}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1436, file: !20, line: 167, baseType: !1426, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1418, file: !20, line: 123, baseType: !1478, size: 8, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !548, line: 17, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !550, line: 21, baseType: !559)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1418, file: !20, line: 124, baseType: !1478, size: 8, offset: 456)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1418, file: !20, line: 125, baseType: !1478, size: 8, offset: 464)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1418, file: !20, line: 126, baseType: !1478, size: 8, offset: 472)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1402, file: !1349, line: 572, baseType: !1418, size: 512, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1402, file: !1349, line: 580, baseType: !1485, size: 64, offset: 1728)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1348, file: !1349, line: 721, baseType: !7, size: 32, offset: 3584)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1348, file: !1349, line: 722, baseType: !115, size: 32, offset: 3616)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1348, file: !1349, line: 723, baseType: !1489, size: 64, offset: 3648)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1492, line: 17, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1492, line: 17, size: 64, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1493, file: !1492, line: 17, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 1)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1348, file: !1349, line: 724, baseType: !1491, size: 64, offset: 3712)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1348, file: !1349, line: 749, baseType: !1501, offset: 3776)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1349, line: 290, elements: !380)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1348, file: !1349, line: 751, baseType: !310, size: 128, offset: 3776)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1348, file: !1349, line: 757, baseType: !1105, size: 64, offset: 3904)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1348, file: !1349, line: 758, baseType: !1105, size: 64, offset: 3968)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1348, file: !1349, line: 761, baseType: !1506, size: 320, offset: 4032)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1282, line: 34, size: 320, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1506, file: !1282, line: 35, baseType: !553, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1506, file: !1282, line: 36, baseType: !1510, size: 256, offset: 64)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 256, elements: !1286)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1348, file: !1349, line: 766, baseType: !115, size: 32, offset: 4352)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1348, file: !1349, line: 767, baseType: !115, size: 32, offset: 4384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1348, file: !1349, line: 768, baseType: !115, size: 32, offset: 4416)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1348, file: !1349, line: 770, baseType: !115, size: 32, offset: 4448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1348, file: !1349, line: 772, baseType: !456, size: 64, offset: 4480)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1348, file: !1349, line: 775, baseType: !7, size: 32, offset: 4544)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1348, file: !1349, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1348, file: !1349, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1348, file: !1349, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1348, file: !1349, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1348, file: !1349, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1348, file: !1349, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1348, file: !1349, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1348, file: !1349, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1348, file: !1349, line: 831, baseType: !456, size: 64, offset: 4672)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1348, file: !1349, line: 833, baseType: !1527, size: 384, offset: 4736)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1528)
!1528 = !{!1529, !1534}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1527, file: !25, line: 26, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!250, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !25, line: 27, baseType: !1535, size: 320, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1527, file: !25, line: 27, size: 320, elements: !1536)
!1536 = !{!1537, !1547, !1574}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1535, file: !25, line: 36, baseType: !1538, size: 320)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !25, line: 29, size: 320, elements: !1539)
!1539 = !{!1540, !1542, !1543, !1544, !1545, !1546}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1538, file: !25, line: 30, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1538, file: !25, line: 31, baseType: !547, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !25, line: 32, baseType: !547, size: 32, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1538, file: !25, line: 33, baseType: !547, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1538, file: !25, line: 34, baseType: !553, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1538, file: !25, line: 35, baseType: !1541, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1535, file: !25, line: 46, baseType: !1548, size: 192)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !25, line: 38, size: 192, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1573}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1548, file: !25, line: 39, baseType: !1460, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1548, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !25, line: 41, baseType: !1553, size: 64, offset: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !25, line: 41, size: 64, elements: !1554)
!1554 = !{!1555, !1563}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1553, file: !25, line: 42, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1558, line: 7, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1557, file: !1558, line: 8, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !440, line: 93, baseType: !665)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1557, file: !1558, line: 9, baseType: !665, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1553, file: !25, line: 43, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1566, line: 7, size: 64, elements: !1567)
!1566 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1567 = !{!1568, !1572}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1565, file: !1566, line: 8, baseType: !1569, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1566, line: 5, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !548, line: 20, baseType: !1571)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !550, line: 26, baseType: !115)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1565, file: !1566, line: 9, baseType: !1570, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1548, file: !25, line: 45, baseType: !553, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1535, file: !25, line: 54, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !25, line: 48, size: 256, elements: !1576)
!1576 = !{!1577, !1580, !1581, !1582, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1575, file: !25, line: 49, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1575, file: !25, line: 50, baseType: !115, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1575, file: !25, line: 51, baseType: !115, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1575, file: !25, line: 52, baseType: !456, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1575, file: !25, line: 53, baseType: !456, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1348, file: !1349, line: 835, baseType: !1585, size: 32, offset: 5120)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !305, line: 22, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !440, line: 28, baseType: !115)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1348, file: !1349, line: 836, baseType: !1585, size: 32, offset: 5152)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1348, file: !1349, line: 840, baseType: !456, size: 64, offset: 5184)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1348, file: !1349, line: 849, baseType: !1347, size: 64, offset: 5248)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1348, file: !1349, line: 852, baseType: !1347, size: 64, offset: 5312)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1348, file: !1349, line: 857, baseType: !310, size: 128, offset: 5376)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1348, file: !1349, line: 858, baseType: !310, size: 128, offset: 5504)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1348, file: !1349, line: 859, baseType: !1347, size: 64, offset: 5632)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1348, file: !1349, line: 867, baseType: !310, size: 128, offset: 5696)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1348, file: !1349, line: 868, baseType: !310, size: 128, offset: 5824)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1348, file: !1349, line: 871, baseType: !1597, size: 64, offset: 5952)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1605, !1606, !1613, !1614}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1598, file: !53, line: 61, baseType: !337, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1598, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !53, line: 63, baseType: !366, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1598, file: !53, line: 65, baseType: !1604, size: 256, offset: 64)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 256, elements: !1286)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1598, file: !53, line: 66, baseType: !770, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1598, file: !53, line: 68, baseType: !1607, size: 128, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1608, line: 40, baseType: !1609)
!1608 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1608, line: 36, size: 128, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1609, file: !1608, line: 37, baseType: !366)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1609, file: !1608, line: 38, baseType: !310, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !53, line: 69, baseType: !497, size: 128, align: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1598, file: !53, line: 70, baseType: !1615, size: 128, offset: 640)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 128, elements: !1497)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1616, file: !53, line: 55, baseType: !115, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1616, file: !53, line: 56, baseType: !1620, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1622, line: 20, size: 1088, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1641, !1644, !1645}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1621, file: !1622, line: 21, baseType: !333, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1621, file: !1622, line: 22, baseType: !1626, size: 192, offset: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1627, line: 19, size: 192, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1626, file: !1627, line: 20, baseType: !874, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1626, file: !1627, line: 21, baseType: !7, size: 32, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1626, file: !1627, line: 22, baseType: !7, size: 32, offset: 160)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1621, file: !1622, line: 23, baseType: !497, size: 128, align: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1621, file: !1622, line: 24, baseType: !7, size: 32, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1621, file: !1622, line: 25, baseType: !1347, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1621, file: !1622, line: 26, baseType: !1066, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1621, file: !1622, line: 27, baseType: !7, size: 32, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1621, file: !1622, line: 28, baseType: !1620, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1621, file: !1622, line: 32, baseType: !1639, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !568, line: 18, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1621, file: !1622, line: 33, baseType: !1642, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1622, line: 33, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1621, file: !1622, line: 34, baseType: !115, size: 32, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1621, file: !1622, line: 35, baseType: !1646, size: 192, offset: 896)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1647, line: 7, size: 192, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !{!1649, !1650, !1654}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1646, file: !1647, line: 8, baseType: !902, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1646, file: !1647, line: 9, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1647, line: 5, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1646, file: !1647, line: 10, baseType: !7, size: 32, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1348, file: !1349, line: 872, baseType: !1656, size: 512, offset: 6016)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 512, elements: !1286)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1348, file: !1349, line: 873, baseType: !310, size: 128, offset: 6528)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1348, file: !1349, line: 874, baseType: !310, size: 128, offset: 6656)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1348, file: !1349, line: 876, baseType: !1660, size: 64, offset: 6784)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1662, line: 26, size: 192, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1661, file: !1662, line: 27, baseType: !7, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1661, file: !1662, line: 28, baseType: !1666, size: 128, offset: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1667, line: 43, size: 128, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1666, file: !1667, line: 44, baseType: !911)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1666, file: !1667, line: 45, baseType: !310, size: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1348, file: !1349, line: 879, baseType: !840, size: 64, offset: 6848)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1348, file: !1349, line: 882, baseType: !840, size: 64, offset: 6912)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1348, file: !1349, line: 884, baseType: !553, size: 64, offset: 6976)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1348, file: !1349, line: 885, baseType: !553, size: 64, offset: 7040)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1348, file: !1349, line: 890, baseType: !553, size: 64, offset: 7104)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1348, file: !1349, line: 891, baseType: !1677, size: 128, offset: 7168)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1349, line: 242, size: 128, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1677, file: !1349, line: 244, baseType: !553, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1677, file: !1349, line: 245, baseType: !553, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1677, file: !1349, line: 246, baseType: !911, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1348, file: !1349, line: 900, baseType: !456, size: 64, offset: 7296)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1348, file: !1349, line: 901, baseType: !456, size: 64, offset: 7360)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1348, file: !1349, line: 904, baseType: !553, size: 64, offset: 7424)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1348, file: !1349, line: 907, baseType: !553, size: 64, offset: 7488)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1348, file: !1349, line: 910, baseType: !456, size: 64, offset: 7552)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1348, file: !1349, line: 911, baseType: !456, size: 64, offset: 7616)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1348, file: !1349, line: 914, baseType: !1689, size: 640, offset: 7680)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1690, line: 123, size: 640, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1698, !1699}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1689, file: !1690, line: 124, baseType: !1693, size: 576)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 576, elements: !408)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1690, line: 108, size: 192, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1694, file: !1690, line: 109, baseType: !553, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1694, file: !1690, line: 110, baseType: !1469, size: 128, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1689, file: !1690, line: 125, baseType: !7, size: 32, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1689, file: !1690, line: 126, baseType: !7, size: 32, offset: 608)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1348, file: !1349, line: 917, baseType: !1701, size: 192, offset: 8320)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1690, line: 134, size: 192, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1701, file: !1690, line: 135, baseType: !497, size: 128, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1701, file: !1690, line: 136, baseType: !7, size: 32, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1348, file: !1349, line: 923, baseType: !1706, size: 64, offset: 8512)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1709, line: 111, size: 1280, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1730, !1731, !1732, !1733, !1734, !1735, !1842, !1843, !1844, !1845, !1871, !1872, !1882}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1708, file: !1709, line: 112, baseType: !341, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1708, file: !1709, line: 120, baseType: !567, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1708, file: !1709, line: 121, baseType: !575, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1708, file: !1709, line: 122, baseType: !567, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1708, file: !1709, line: 123, baseType: !575, size: 32, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1708, file: !1709, line: 124, baseType: !567, size: 32, offset: 160)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1708, file: !1709, line: 125, baseType: !575, size: 32, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1708, file: !1709, line: 126, baseType: !567, size: 32, offset: 224)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1708, file: !1709, line: 127, baseType: !575, size: 32, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1708, file: !1709, line: 128, baseType: !7, size: 32, offset: 288)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1708, file: !1709, line: 129, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1723, line: 26, baseType: !1724)
!1723 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1723, line: 24, size: 64, elements: !1725)
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1724, file: !1723, line: 25, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DISubrange(count: 2)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1708, file: !1709, line: 130, baseType: !1722, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1708, file: !1709, line: 131, baseType: !1722, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1708, file: !1709, line: 132, baseType: !1722, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1708, file: !1709, line: 133, baseType: !1722, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1708, file: !1709, line: 135, baseType: !559, size: 8, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1708, file: !1709, line: 137, baseType: !1736, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1738, line: 189, size: 1664, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !{!1740, !1741, !1744, !1749, !1750, !1753, !1754, !1759, !1760, !1761, !1762, !1764, !1765, !1766, !1767, !1768, !1806, !1827}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1737, file: !1738, line: 190, baseType: !337, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1737, file: !1738, line: 191, baseType: !1742, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1738, line: 28, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !305, line: 98, baseType: !1570)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 192, baseType: !1745, size: 192, offset: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 192, size: 192, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1745, file: !1738, line: 193, baseType: !310, size: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1745, file: !1738, line: 194, baseType: !891, size: 192, align: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1737, file: !1738, line: 199, baseType: !898, size: 256, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1737, file: !1738, line: 200, baseType: !1751, size: 64, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1738, line: 200, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1737, file: !1738, line: 201, baseType: !314, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 202, baseType: !1755, size: 64, offset: 640)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 202, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1755, file: !1738, line: 203, baseType: !671, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1755, file: !1738, line: 204, baseType: !671, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1737, file: !1738, line: 206, baseType: !671, size: 64, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1737, file: !1738, line: 207, baseType: !567, size: 32, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1737, file: !1738, line: 208, baseType: !575, size: 32, offset: 800)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1737, file: !1738, line: 209, baseType: !1763, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1738, line: 31, baseType: !691)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1737, file: !1738, line: 210, baseType: !448, size: 16, offset: 864)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1737, file: !1738, line: 211, baseType: !448, size: 16, offset: 880)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1737, file: !1738, line: 215, baseType: !1336, size: 16, offset: 896)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !1738, line: 222, baseType: !456, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 239, baseType: !1769, size: 320, offset: 1024)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 239, size: 320, elements: !1770)
!1770 = !{!1771, !1798}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1769, file: !1738, line: 240, baseType: !1772, size: 320)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1738, line: 108, size: 320, elements: !1773)
!1773 = !{!1774, !1775, !1787, !1790, !1797}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1772, file: !1738, line: 110, baseType: !456, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1738, line: 111, baseType: !1776, size: 64, offset: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1738, line: 111, size: 64, elements: !1777)
!1777 = !{!1778, !1786}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1738, line: 112, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1738, line: 112, size: 64, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1779, file: !1738, line: 114, baseType: !990, size: 16)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1779, file: !1738, line: 115, baseType: !1783, size: 48, offset: 16)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 48, elements: !1784)
!1784 = !{!1785}
!1785 = !DISubrange(count: 6)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1776, file: !1738, line: 121, baseType: !456, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1772, file: !1738, line: 123, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1738, line: 96, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1772, file: !1738, line: 124, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1738, line: 102, size: 192, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1792, file: !1738, line: 103, baseType: !497, size: 128, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1792, file: !1738, line: 104, baseType: !337, size: 32, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1792, file: !1738, line: 105, baseType: !622, size: 8, offset: 160)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1772, file: !1738, line: 125, baseType: !354, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !1738, line: 241, baseType: !1799, size: 320)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !1738, line: 241, size: 320, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1805}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1799, file: !1738, line: 242, baseType: !456, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1799, file: !1738, line: 243, baseType: !456, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1799, file: !1738, line: 244, baseType: !1788, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1799, file: !1738, line: 245, baseType: !1791, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1799, file: !1738, line: 246, baseType: !407, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 254, baseType: !1807, size: 256, offset: 1344)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 254, size: 256, elements: !1808)
!1808 = !{!1809, !1815}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1807, file: !1738, line: 255, baseType: !1810, size: 256)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1738, line: 128, size: 256, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1810, file: !1738, line: 129, baseType: !314, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1810, file: !1738, line: 130, baseType: !1814, size: 256)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !1286)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1738, line: 256, baseType: !1816, size: 256)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !1738, line: 256, size: 256, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1816, file: !1738, line: 258, baseType: !310, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1816, file: !1738, line: 259, baseType: !1820, size: 128, offset: 128)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1821, line: 22, size: 128, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !{!1823, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1820, file: !1821, line: 23, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1821, line: 23, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1820, file: !1821, line: 24, baseType: !456, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1737, file: !1738, line: 274, baseType: !1828, size: 64, offset: 1600)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1738, line: 170, size: 192, elements: !1830)
!1830 = !{!1831, !1840, !1841}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1829, file: !1738, line: 171, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1738, line: 165, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!115, !1736, !1836, !1838, !1736}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1829, file: !1738, line: 172, baseType: !1736, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1829, file: !1738, line: 173, baseType: !1788, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1708, file: !1709, line: 138, baseType: !1736, size: 64, offset: 768)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1708, file: !1709, line: 139, baseType: !1736, size: 64, offset: 832)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1708, file: !1709, line: 140, baseType: !1736, size: 64, offset: 896)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1708, file: !1709, line: 145, baseType: !1846, size: 64, offset: 960)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1848, line: 13, size: 896, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1847, file: !1848, line: 14, baseType: !337, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1847, file: !1848, line: 15, baseType: !341, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1847, file: !1848, line: 16, baseType: !341, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1847, file: !1848, line: 21, baseType: !902, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1847, file: !1848, line: 27, baseType: !456, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1847, file: !1848, line: 28, baseType: !456, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1847, file: !1848, line: 29, baseType: !902, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1847, file: !1848, line: 32, baseType: !774, size: 128, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1847, file: !1848, line: 33, baseType: !567, size: 32, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1847, file: !1848, line: 37, baseType: !902, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1847, file: !1848, line: 44, baseType: !1861, size: 256, offset: 640)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1862, line: 15, size: 256, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !1862, line: 16, baseType: !911)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1861, file: !1862, line: 18, baseType: !115, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1861, file: !1862, line: 19, baseType: !115, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1861, file: !1862, line: 20, baseType: !115, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1861, file: !1862, line: 21, baseType: !115, size: 32, offset: 96)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1861, file: !1862, line: 22, baseType: !456, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1862, line: 23, baseType: !456, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1708, file: !1709, line: 146, baseType: !1639, size: 64, offset: 1024)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1708, file: !1709, line: 147, baseType: !1873, size: 64, offset: 1088)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1709, line: 25, size: 64, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1874, file: !1709, line: 26, baseType: !341, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1874, file: !1709, line: 27, baseType: !115, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1874, file: !1709, line: 28, baseType: !1879, offset: 64)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 0)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !1709, line: 149, baseType: !1883, size: 128, offset: 1152)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !1709, line: 149, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1883, file: !1709, line: 150, baseType: !115, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1883, file: !1709, line: 151, baseType: !497, size: 128, align: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1348, file: !1349, line: 926, baseType: !1706, size: 64, offset: 8576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1348, file: !1349, line: 929, baseType: !1706, size: 64, offset: 8640)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1348, file: !1349, line: 933, baseType: !1736, size: 64, offset: 8704)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1348, file: !1349, line: 943, baseType: !1891, size: 128, offset: 8768)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 128, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1348, file: !1349, line: 945, baseType: !1895, size: 64, offset: 8896)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1349, line: 49, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1348, file: !1349, line: 956, baseType: !1898, size: 64, offset: 8960)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1349, line: 45, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1348, file: !1349, line: 959, baseType: !1901, size: 64, offset: 9024)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1349, line: 959, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1348, file: !1349, line: 962, baseType: !1904, size: 64, offset: 9088)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1349, line: 66, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1348, file: !1349, line: 966, baseType: !1907, size: 64, offset: 9152)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1909, line: 31, size: 576, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912, !1915, !1918, !1921, !1922, !1925, !1928, !1929}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1908, file: !1909, line: 32, baseType: !341, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1908, file: !1909, line: 33, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1909, line: 9, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1908, file: !1909, line: 34, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1909, line: 10, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1908, file: !1909, line: 35, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1909, line: 8, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1908, file: !1909, line: 36, baseType: !1620, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1908, file: !1909, line: 37, baseType: !1923, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1738, line: 34, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1908, file: !1909, line: 38, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1909, line: 38, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1908, file: !1909, line: 39, baseType: !1926, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1908, file: !1909, line: 40, baseType: !1930, size: 64, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1909, line: 12, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1348, file: !1349, line: 969, baseType: !1933, size: 64, offset: 9216)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1935, line: 82, size: 7296, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942, !1943, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1972, !1981, !1982, !1984, !1985, !1986, !1989, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2019, !2020, !2027, !2028, !2029, !2030, !2031, !2032}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1934, file: !1935, line: 83, baseType: !337, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1934, file: !1935, line: 84, baseType: !341, size: 32, offset: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1934, file: !1935, line: 85, baseType: !115, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1934, file: !1935, line: 86, baseType: !310, size: 128, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1934, file: !1935, line: 88, baseType: !1607, size: 128, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1934, file: !1935, line: 91, baseType: !1347, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1934, file: !1935, line: 94, baseType: !1944, size: 192, offset: 448)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1945, line: 30, size: 192, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1944, file: !1945, line: 31, baseType: !310, size: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1944, file: !1945, line: 32, baseType: !1949, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1950, line: 25, baseType: !1951)
!1950 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1950, line: 23, size: 64, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1951, file: !1950, line: 24, baseType: !1496, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1934, file: !1935, line: 97, baseType: !770, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1934, file: !1935, line: 100, baseType: !115, size: 32, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1934, file: !1935, line: 106, baseType: !115, size: 32, offset: 736)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1934, file: !1935, line: 107, baseType: !1347, size: 64, offset: 768)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1934, file: !1935, line: 110, baseType: !115, size: 32, offset: 832)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1935, line: 111, baseType: !7, size: 32, offset: 864)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1934, file: !1935, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1934, file: !1935, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1934, file: !1935, line: 128, baseType: !115, size: 32, offset: 928)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1934, file: !1935, line: 129, baseType: !310, size: 128, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1934, file: !1935, line: 132, baseType: !1418, size: 512, offset: 1088)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1934, file: !1935, line: 133, baseType: !1426, size: 64, offset: 1600)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1934, file: !1935, line: 140, baseType: !1967, size: 256, offset: 1664)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1968, size: 256, elements: !1728)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1935, line: 38, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1968, file: !1935, line: 39, baseType: !553, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1968, file: !1935, line: 40, baseType: !553, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1934, file: !1935, line: 146, baseType: !1973, size: 192, offset: 1920)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1935, line: 66, size: 192, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1973, file: !1935, line: 67, baseType: !1976, size: 192)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1935, line: 47, size: 192, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1976, file: !1935, line: 48, baseType: !904, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1976, file: !1935, line: 49, baseType: !904, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1976, file: !1935, line: 50, baseType: !904, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1934, file: !1935, line: 150, baseType: !1689, size: 640, offset: 2112)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1934, file: !1935, line: 153, baseType: !1983, size: 256, offset: 2752)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 256, elements: !1286)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1934, file: !1935, line: 159, baseType: !1597, size: 64, offset: 3008)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1934, file: !1935, line: 162, baseType: !115, size: 32, offset: 3072)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1934, file: !1935, line: 164, baseType: !1987, size: 64, offset: 3136)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1935, line: 164, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1934, file: !1935, line: 175, baseType: !1990, size: 32, offset: 3200)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !520, line: 805, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !520, line: 798, size: 32, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1991, file: !520, line: 803, baseType: !519, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1991, file: !520, line: 804, baseType: !366, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1934, file: !1935, line: 176, baseType: !553, size: 64, offset: 3264)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1934, file: !1935, line: 176, baseType: !553, size: 64, offset: 3328)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1934, file: !1935, line: 176, baseType: !553, size: 64, offset: 3392)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1934, file: !1935, line: 176, baseType: !553, size: 64, offset: 3456)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1934, file: !1935, line: 177, baseType: !553, size: 64, offset: 3520)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1934, file: !1935, line: 178, baseType: !553, size: 64, offset: 3584)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1934, file: !1935, line: 179, baseType: !1677, size: 128, offset: 3648)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1934, file: !1935, line: 180, baseType: !456, size: 64, offset: 3776)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1934, file: !1935, line: 180, baseType: !456, size: 64, offset: 3840)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1934, file: !1935, line: 180, baseType: !456, size: 64, offset: 3904)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1934, file: !1935, line: 180, baseType: !456, size: 64, offset: 3968)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1934, file: !1935, line: 181, baseType: !456, size: 64, offset: 4032)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1934, file: !1935, line: 181, baseType: !456, size: 64, offset: 4096)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1934, file: !1935, line: 181, baseType: !456, size: 64, offset: 4160)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1934, file: !1935, line: 181, baseType: !456, size: 64, offset: 4224)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1934, file: !1935, line: 182, baseType: !456, size: 64, offset: 4288)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1934, file: !1935, line: 182, baseType: !456, size: 64, offset: 4352)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1934, file: !1935, line: 182, baseType: !456, size: 64, offset: 4416)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1934, file: !1935, line: 182, baseType: !456, size: 64, offset: 4480)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1934, file: !1935, line: 183, baseType: !456, size: 64, offset: 4544)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1934, file: !1935, line: 183, baseType: !456, size: 64, offset: 4608)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1934, file: !1935, line: 184, baseType: !2017, offset: 4672)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2018, line: 12, elements: !380)
!2018 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1934, file: !1935, line: 192, baseType: !555, size: 64, offset: 4672)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1934, file: !1935, line: 203, baseType: !2021, size: 2048, offset: 4736)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 2048, elements: !1892)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2023, line: 43, size: 128, elements: !2024)
!2023 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2022, file: !2023, line: 44, baseType: !455, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2022, file: !2023, line: 45, baseType: !455, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1934, file: !1935, line: 220, baseType: !622, size: 8, offset: 6784)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1934, file: !1935, line: 221, baseType: !1336, size: 16, offset: 6800)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1934, file: !1935, line: 222, baseType: !1336, size: 16, offset: 6816)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1934, file: !1935, line: 224, baseType: !1105, size: 64, offset: 6848)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1934, file: !1935, line: 227, baseType: !1304, size: 192, offset: 6912)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1934, file: !1935, line: 233, baseType: !1304, size: 192, offset: 7104)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1348, file: !1349, line: 970, baseType: !2034, size: 64, offset: 9280)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1935, line: 20, size: 16576, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2035, file: !1935, line: 21, baseType: !366)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2035, file: !1935, line: 22, baseType: !337, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2035, file: !1935, line: 23, baseType: !1607, size: 128, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2035, file: !1935, line: 24, baseType: !2041, size: 16384, offset: 192)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 16384, elements: !412)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1945, line: 49, size: 256, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2042, file: !1945, line: 50, baseType: !2045, size: 256)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1945, line: 35, size: 256, elements: !2046)
!2046 = !{!2047, !2054, !2055, !2061}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2045, file: !1945, line: 37, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2049, line: 19, baseType: !2050)
!2049 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2049, line: 18, baseType: !2052)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !115}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2045, file: !1945, line: 38, baseType: !456, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2045, file: !1945, line: 44, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2049, line: 22, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2049, line: 21, baseType: !2059)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2045, file: !1945, line: 46, baseType: !1949, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1348, file: !1349, line: 971, baseType: !1949, size: 64, offset: 9344)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1348, file: !1349, line: 972, baseType: !1949, size: 64, offset: 9408)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1348, file: !1349, line: 974, baseType: !1949, size: 64, offset: 9472)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1348, file: !1349, line: 975, baseType: !1944, size: 192, offset: 9536)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1348, file: !1349, line: 976, baseType: !456, size: 64, offset: 9728)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1348, file: !1349, line: 977, baseType: !453, size: 64, offset: 9792)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1348, file: !1349, line: 978, baseType: !7, size: 32, offset: 9856)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1348, file: !1349, line: 980, baseType: !500, size: 64, offset: 9920)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1348, file: !1349, line: 989, baseType: !2071, size: 128, offset: 9984)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2072, line: 35, size: 128, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2071, file: !2072, line: 36, baseType: !115, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2071, file: !2072, line: 37, baseType: !341, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2071, file: !2072, line: 38, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2072, line: 23, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1348, file: !1349, line: 992, baseType: !553, size: 64, offset: 10112)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1348, file: !1349, line: 993, baseType: !553, size: 64, offset: 10176)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1348, file: !1349, line: 996, baseType: !366, offset: 10240)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1348, file: !1349, line: 999, baseType: !911, offset: 10240)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1348, file: !1349, line: 1001, baseType: !2084, size: 64, offset: 10240)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1349, line: 636, size: 64, elements: !2085)
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2084, file: !1349, line: 637, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1348, file: !1349, line: 1005, baseType: !883, size: 128, offset: 10304)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1348, file: !1349, line: 1007, baseType: !1347, size: 64, offset: 10432)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1348, file: !1349, line: 1009, baseType: !2091, size: 64, offset: 10496)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1349, line: 1009, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1348, file: !1349, line: 1043, baseType: !314, size: 64, offset: 10560)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1348, file: !1349, line: 1046, baseType: !2095, size: 64, offset: 10624)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1349, line: 41, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1348, file: !1349, line: 1050, baseType: !2098, size: 64, offset: 10688)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1349, line: 42, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1348, file: !1349, line: 1054, baseType: !2101, size: 64, offset: 10752)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1349, line: 55, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1348, file: !1349, line: 1056, baseType: !2104, size: 64, offset: 10816)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1349, line: 40, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1348, file: !1349, line: 1058, baseType: !2107, size: 64, offset: 10880)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2109, line: 99, size: 704, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2136, !2137}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2108, file: !2109, line: 100, baseType: !902, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2108, file: !2109, line: 101, baseType: !341, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2108, file: !2109, line: 102, baseType: !341, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2108, file: !2109, line: 105, baseType: !366, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2108, file: !2109, line: 107, baseType: !448, size: 16, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2108, file: !2109, line: 109, baseType: !874, size: 128, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2108, file: !2109, line: 110, baseType: !2118, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2109, line: 73, size: 448, elements: !2120)
!2120 = !{!2121, !2124, !2125, !2130, !2135}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2119, file: !2109, line: 74, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2109, line: 74, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2119, file: !2109, line: 75, baseType: !2107, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !2109, line: 83, baseType: !2126, size: 128, offset: 128)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !2109, line: 83, size: 128, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2126, file: !2109, line: 84, baseType: !310, size: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2126, file: !2109, line: 85, baseType: !1066, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !2109, line: 87, baseType: !2131, size: 128, offset: 256)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !2109, line: 87, size: 128, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2131, file: !2109, line: 88, baseType: !774, size: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2131, file: !2109, line: 89, baseType: !497, size: 128, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2119, file: !2109, line: 92, baseType: !7, size: 32, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2108, file: !2109, line: 111, baseType: !770, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2108, file: !2109, line: 113, baseType: !2138, size: 256, offset: 448)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !249, line: 102, size: 256, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2138, file: !249, line: 103, baseType: !902, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2138, file: !249, line: 104, baseType: !310, size: 128, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2138, file: !249, line: 105, baseType: !2143, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !249, line: 21, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1348, file: !1349, line: 1061, baseType: !2149, size: 64, offset: 10944)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1349, line: 43, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1348, file: !1349, line: 1064, baseType: !456, size: 64, offset: 11008)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1348, file: !1349, line: 1065, baseType: !2153, size: 64, offset: 11072)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1945, line: 14, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1945, line: 12, size: 384, elements: !2156)
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !1945, line: 13, baseType: !2158, size: 384)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !1945, line: 13, size: 384, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2158, file: !1945, line: 13, baseType: !115, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2158, file: !1945, line: 13, baseType: !115, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2158, file: !1945, line: 13, baseType: !115, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2158, file: !1945, line: 13, baseType: !2164, size: 256, offset: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2165, line: 32, size: 256, elements: !2166)
!2165 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2172, !2185, !2191, !2200, !2220, !2225}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2164, file: !2165, line: 37, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 34, size: 64, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2168, file: !2165, line: 35, baseType: !1586, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2168, file: !2165, line: 36, baseType: !573, size: 32, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2164, file: !2165, line: 45, baseType: !2173, size: 192)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 40, size: 192, elements: !2174)
!2174 = !{!2175, !2177, !2178, !2184}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2173, file: !2165, line: 41, baseType: !2176, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !440, line: 95, baseType: !115)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2173, file: !2165, line: 42, baseType: !115, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2173, file: !2165, line: 43, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2165, line: 11, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2165, line: 8, size: 64, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2180, file: !2165, line: 9, baseType: !115, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2180, file: !2165, line: 10, baseType: !314, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2173, file: !2165, line: 44, baseType: !115, size: 32, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2164, file: !2165, line: 52, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 48, size: 128, elements: !2187)
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2186, file: !2165, line: 49, baseType: !1586, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2186, file: !2165, line: 50, baseType: !573, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2186, file: !2165, line: 51, baseType: !2179, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2164, file: !2165, line: 61, baseType: !2192, size: 256)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 55, size: 256, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2199}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2192, file: !2165, line: 56, baseType: !1586, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2192, file: !2165, line: 57, baseType: !573, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2192, file: !2165, line: 58, baseType: !115, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2192, file: !2165, line: 59, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !440, line: 94, baseType: !441)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2192, file: !2165, line: 60, baseType: !2198, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2164, file: !2165, line: 95, baseType: !2201, size: 256)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 64, size: 256, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2201, file: !2165, line: 65, baseType: !314, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2165, line: 77, baseType: !2205, size: 192, offset: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2165, line: 77, size: 192, elements: !2206)
!2206 = !{!2207, !2208, !2215}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2205, file: !2165, line: 82, baseType: !1336, size: 16)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2205, file: !2165, line: 88, baseType: !2209, size: 192)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !2165, line: 84, size: 192, elements: !2210)
!2210 = !{!2211, !2213, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2209, file: !2165, line: 85, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 64, elements: !1456)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2209, file: !2165, line: 86, baseType: !314, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2209, file: !2165, line: 87, baseType: !314, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2205, file: !2165, line: 93, baseType: !2216, size: 96)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !2165, line: 90, size: 96, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2216, file: !2165, line: 91, baseType: !2212, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2216, file: !2165, line: 92, baseType: !549, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2164, file: !2165, line: 101, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 98, size: 128, elements: !2222)
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2221, file: !2165, line: 99, baseType: !250, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2221, file: !2165, line: 100, baseType: !115, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2164, file: !2165, line: 108, baseType: !2226, size: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 104, size: 128, elements: !2227)
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2226, file: !2165, line: 105, baseType: !314, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2226, file: !2165, line: 106, baseType: !115, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2226, file: !2165, line: 107, baseType: !7, size: 32, offset: 96)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1348, file: !1349, line: 1067, baseType: !2017, offset: 11136)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1348, file: !1349, line: 1099, baseType: !2233, size: 64, offset: 11136)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1349, line: 56, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1348, file: !1349, line: 1103, baseType: !310, size: 128, offset: 11200)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1348, file: !1349, line: 1104, baseType: !2237, size: 64, offset: 11328)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1349, line: 46, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1348, file: !1349, line: 1105, baseType: !1304, size: 192, offset: 11392)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1348, file: !1349, line: 1106, baseType: !7, size: 32, offset: 11584)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1348, file: !1349, line: 1109, baseType: !2242, size: 128, offset: 11648)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2243, size: 128, elements: !1728)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1349, line: 51, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1348, file: !1349, line: 1110, baseType: !1304, size: 192, offset: 11776)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1348, file: !1349, line: 1111, baseType: !310, size: 128, offset: 11968)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1348, file: !1349, line: 1173, baseType: !2248, size: 64, offset: 12096)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2250, line: 62, size: 256, align: 256, elements: !2251)
!2250 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2251 = !{!2252, !2253, !2254, !2259}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2249, file: !2250, line: 75, baseType: !549, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2249, file: !2250, line: 90, baseType: !549, size: 32, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2249, file: !2250, line: 124, baseType: !2255, size: 64, offset: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2250, line: 109, size: 64, elements: !2256)
!2256 = !{!2257, !2258}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2255, file: !2250, line: 110, baseType: !554, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2255, file: !2250, line: 112, baseType: !554, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2249, file: !2250, line: 144, baseType: !549, size: 32, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1348, file: !1349, line: 1174, baseType: !547, size: 32, offset: 12160)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1348, file: !1349, line: 1179, baseType: !456, size: 64, offset: 12224)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1348, file: !1349, line: 1182, baseType: !2263, size: 128, offset: 12288)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1282, line: 76, size: 128, elements: !2264)
!2264 = !{!2265, !2270, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2263, file: !1282, line: 85, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2267, line: 7, size: 64, elements: !2268)
!2267 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2266, file: !2267, line: 12, baseType: !1493, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2263, file: !1282, line: 88, baseType: !622, size: 8, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2263, file: !1282, line: 95, baseType: !622, size: 8, offset: 72)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !1349, line: 1184, baseType: !2273, size: 128, offset: 12416)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1348, file: !1349, line: 1184, size: 128, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2273, file: !1349, line: 1185, baseType: !337, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2273, file: !1349, line: 1186, baseType: !497, size: 128, align: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1348, file: !1349, line: 1190, baseType: !2278, size: 64, offset: 12544)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1349, line: 53, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1348, file: !1349, line: 1192, baseType: !2281, size: 128, offset: 12608)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1282, line: 64, size: 128, elements: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2281, file: !1282, line: 65, baseType: !856, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2281, file: !1282, line: 67, baseType: !549, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2281, file: !1282, line: 68, baseType: !549, size: 32, offset: 96)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1348, file: !1349, line: 1206, baseType: !115, size: 32, offset: 12736)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1348, file: !1349, line: 1207, baseType: !115, size: 32, offset: 12768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1348, file: !1349, line: 1209, baseType: !456, size: 64, offset: 12800)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1348, file: !1349, line: 1219, baseType: !553, size: 64, offset: 12864)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1348, file: !1349, line: 1220, baseType: !553, size: 64, offset: 12928)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1348, file: !1349, line: 1317, baseType: !115, size: 32, offset: 12992)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1348, file: !1349, line: 1319, baseType: !1347, size: 64, offset: 13056)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1348, file: !1349, line: 1322, baseType: !2294, size: 64, offset: 13120)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2296, line: 56, size: 512, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2306}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2295, file: !2296, line: 57, baseType: !2294, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2295, file: !2296, line: 58, baseType: !314, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2295, file: !2296, line: 59, baseType: !456, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2295, file: !2296, line: 60, baseType: !456, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2295, file: !2296, line: 61, baseType: !951, size: 64, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2295, file: !2296, line: 62, baseType: !7, size: 32, offset: 320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2295, file: !2296, line: 63, baseType: !2305, size: 64, offset: 384)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !305, line: 153, baseType: !553)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2295, file: !2296, line: 64, baseType: !2307, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1348, file: !1349, line: 1326, baseType: !337, size: 32, offset: 13184)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1348, file: !1349, line: 1342, baseType: !314, size: 64, offset: 13248)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1348, file: !1349, line: 1343, baseType: !554, size: 64, offset: 13312)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1348, file: !1349, line: 1344, baseType: !553, size: 64, offset: 13376)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1348, file: !1349, line: 1345, baseType: !554, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1348, file: !1349, line: 1346, baseType: !554, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1348, file: !1349, line: 1347, baseType: !554, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1348, file: !1349, line: 1348, baseType: !497, size: 128, align: 64, offset: 13504)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1348, file: !1349, line: 1358, baseType: !2318, size: 34816, offset: 13824)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2319, line: 485, size: 34816, elements: !2320)
!2319 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2350, !2351, !2352, !2353, !2354, !2355, !2358, !2359, !2360}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2318, file: !2319, line: 487, baseType: !2322, size: 192)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, size: 192, elements: !408)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2324, line: 16, size: 64, elements: !2325)
!2324 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2323, file: !2324, line: 17, baseType: !990, size: 16)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2323, file: !2324, line: 18, baseType: !990, size: 16, offset: 16)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2323, file: !2324, line: 19, baseType: !990, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2323, file: !2324, line: 19, baseType: !990, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2323, file: !2324, line: 19, baseType: !990, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2323, file: !2324, line: 19, baseType: !990, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2323, file: !2324, line: 19, baseType: !990, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2323, file: !2324, line: 20, baseType: !990, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2323, file: !2324, line: 20, baseType: !990, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2323, file: !2324, line: 20, baseType: !990, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2323, file: !2324, line: 20, baseType: !990, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2323, file: !2324, line: 20, baseType: !990, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2323, file: !2324, line: 20, baseType: !990, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2318, file: !2319, line: 491, baseType: !456, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2318, file: !2319, line: 495, baseType: !448, size: 16, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2318, file: !2319, line: 496, baseType: !448, size: 16, offset: 272)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2318, file: !2319, line: 497, baseType: !448, size: 16, offset: 288)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2318, file: !2319, line: 498, baseType: !448, size: 16, offset: 304)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2318, file: !2319, line: 502, baseType: !456, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2318, file: !2319, line: 503, baseType: !456, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2318, file: !2319, line: 514, baseType: !2347, size: 256, offset: 448)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2348, size: 256, elements: !1286)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2319, line: 483, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2318, file: !2319, line: 516, baseType: !456, size: 64, offset: 704)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2318, file: !2319, line: 518, baseType: !456, size: 64, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2318, file: !2319, line: 520, baseType: !456, size: 64, offset: 832)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2318, file: !2319, line: 521, baseType: !456, size: 64, offset: 896)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2318, file: !2319, line: 522, baseType: !456, size: 64, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2318, file: !2319, line: 528, baseType: !2356, size: 64, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2319, line: 10, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2318, file: !2319, line: 535, baseType: !456, size: 64, offset: 1088)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2318, file: !2319, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2318, file: !2319, line: 540, baseType: !2361, size: 33280, offset: 1536)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2362, line: 317, size: 33280, elements: !2363)
!2362 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2361, file: !2362, line: 330, baseType: !7, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2361, file: !2362, line: 337, baseType: !456, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2361, file: !2362, line: 348, baseType: !2367, size: 32768, offset: 512)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2362, line: 304, size: 32768, elements: !2368)
!2368 = !{!2369, !2384, !2423, !2473, !2486}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2367, file: !2362, line: 305, baseType: !2370, size: 896)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2362, line: 12, size: 896, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2383}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2370, file: !2362, line: 13, baseType: !547, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2370, file: !2362, line: 14, baseType: !547, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2370, file: !2362, line: 15, baseType: !547, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2370, file: !2362, line: 16, baseType: !547, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2370, file: !2362, line: 17, baseType: !547, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2370, file: !2362, line: 18, baseType: !547, size: 32, offset: 160)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2370, file: !2362, line: 19, baseType: !547, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2370, file: !2362, line: 22, baseType: !2380, size: 640, offset: 224)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 640, elements: !2381)
!2381 = !{!2382}
!2382 = !DISubrange(count: 20)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2370, file: !2362, line: 25, baseType: !547, size: 32, offset: 864)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2367, file: !2362, line: 306, baseType: !2385, size: 4096, align: 128)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2362, line: 34, size: 4096, align: 128, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2406, !2407, !2408, !2412, !2414, !2418}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2385, file: !2362, line: 35, baseType: !990, size: 16)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2385, file: !2362, line: 36, baseType: !990, size: 16, offset: 16)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2385, file: !2362, line: 37, baseType: !990, size: 16, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2385, file: !2362, line: 38, baseType: !990, size: 16, offset: 48)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !2362, line: 39, baseType: !2392, size: 128, offset: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2385, file: !2362, line: 39, size: 128, elements: !2393)
!2393 = !{!2394, !2399}
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !2362, line: 40, baseType: !2395, size: 128)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2392, file: !2362, line: 40, size: 128, elements: !2396)
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2395, file: !2362, line: 41, baseType: !553, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2395, file: !2362, line: 42, baseType: !553, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !2362, line: 44, baseType: !2400, size: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2392, file: !2362, line: 44, size: 128, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2400, file: !2362, line: 45, baseType: !547, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2400, file: !2362, line: 46, baseType: !547, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2400, file: !2362, line: 47, baseType: !547, size: 32, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2400, file: !2362, line: 48, baseType: !547, size: 32, offset: 96)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2385, file: !2362, line: 51, baseType: !547, size: 32, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2385, file: !2362, line: 52, baseType: !547, size: 32, offset: 224)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2385, file: !2362, line: 55, baseType: !2409, size: 1024, offset: 256)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 1024, elements: !2410)
!2410 = !{!2411}
!2411 = !DISubrange(count: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2385, file: !2362, line: 58, baseType: !2413, size: 2048, offset: 1280)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 2048, elements: !412)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2385, file: !2362, line: 60, baseType: !2415, size: 384, offset: 3328)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 384, elements: !2416)
!2416 = !{!2417}
!2417 = !DISubrange(count: 12)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !2362, line: 62, baseType: !2419, size: 384, offset: 3712)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2385, file: !2362, line: 62, size: 384, elements: !2420)
!2420 = !{!2421, !2422}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2419, file: !2362, line: 63, baseType: !2415, size: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2419, file: !2362, line: 64, baseType: !2415, size: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2367, file: !2362, line: 307, baseType: !2424, size: 1088)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2362, line: 79, size: 1088, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2472}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2424, file: !2362, line: 80, baseType: !547, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2424, file: !2362, line: 81, baseType: !547, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2424, file: !2362, line: 82, baseType: !547, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2424, file: !2362, line: 83, baseType: !547, size: 32, offset: 96)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2424, file: !2362, line: 84, baseType: !547, size: 32, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2424, file: !2362, line: 85, baseType: !547, size: 32, offset: 160)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2424, file: !2362, line: 86, baseType: !547, size: 32, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2424, file: !2362, line: 88, baseType: !2380, size: 640, offset: 224)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2424, file: !2362, line: 89, baseType: !1478, size: 8, offset: 864)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2424, file: !2362, line: 90, baseType: !1478, size: 8, offset: 872)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2424, file: !2362, line: 91, baseType: !1478, size: 8, offset: 880)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2424, file: !2362, line: 92, baseType: !1478, size: 8, offset: 888)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2424, file: !2362, line: 93, baseType: !1478, size: 8, offset: 896)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2424, file: !2362, line: 94, baseType: !1478, size: 8, offset: 904)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2424, file: !2362, line: 95, baseType: !2441, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2443, line: 11, size: 128, elements: !2444)
!2443 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2442, file: !2443, line: 12, baseType: !250, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2442, file: !2443, line: 13, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2449, line: 56, size: 1344, elements: !2450)
!2449 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2448, file: !2449, line: 61, baseType: !456, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2448, file: !2449, line: 62, baseType: !456, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2448, file: !2449, line: 63, baseType: !456, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2448, file: !2449, line: 64, baseType: !456, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2448, file: !2449, line: 65, baseType: !456, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2448, file: !2449, line: 66, baseType: !456, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2448, file: !2449, line: 68, baseType: !456, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2448, file: !2449, line: 69, baseType: !456, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2448, file: !2449, line: 70, baseType: !456, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2448, file: !2449, line: 71, baseType: !456, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2448, file: !2449, line: 72, baseType: !456, size: 64, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2448, file: !2449, line: 73, baseType: !456, size: 64, offset: 704)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2448, file: !2449, line: 74, baseType: !456, size: 64, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2448, file: !2449, line: 75, baseType: !456, size: 64, offset: 832)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2448, file: !2449, line: 76, baseType: !456, size: 64, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2448, file: !2449, line: 81, baseType: !456, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2448, file: !2449, line: 83, baseType: !456, size: 64, offset: 1024)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2448, file: !2449, line: 84, baseType: !456, size: 64, offset: 1088)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2448, file: !2449, line: 85, baseType: !456, size: 64, offset: 1152)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2448, file: !2449, line: 86, baseType: !456, size: 64, offset: 1216)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2448, file: !2449, line: 87, baseType: !456, size: 64, offset: 1280)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2424, file: !2362, line: 96, baseType: !547, size: 32, offset: 1024)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2367, file: !2362, line: 308, baseType: !2474, size: 4608, align: 512)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2362, line: 289, size: 4608, align: 512, elements: !2475)
!2475 = !{!2476, !2477, !2484}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2474, file: !2362, line: 290, baseType: !2385, size: 4096, align: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2474, file: !2362, line: 291, baseType: !2478, size: 512, offset: 4096)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2362, line: 268, size: 512, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2478, file: !2362, line: 269, baseType: !553, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2478, file: !2362, line: 270, baseType: !553, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2478, file: !2362, line: 271, baseType: !2483, size: 384, offset: 128)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 384, elements: !1784)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2474, file: !2362, line: 292, baseType: !2485, offset: 4608)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, elements: !1880)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2367, file: !2362, line: 309, baseType: !2487, size: 32768)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, size: 32768, elements: !2488)
!2488 = !{!2489}
!2489 = !DISubrange(count: 4096)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1344, file: !858, line: 378, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1340, file: !858, line: 384, baseType: !1661, size: 192, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1109, file: !858, line: 500, baseType: !366, offset: 6656)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1109, file: !858, line: 501, baseType: !2495, size: 64, offset: 6656)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !858, line: 387, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1109, file: !858, line: 516, baseType: !1639, size: 64, offset: 6720)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1109, file: !858, line: 519, baseType: !484, size: 64, offset: 6784)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1109, file: !858, line: 521, baseType: !2500, size: 64, offset: 6848)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !858, line: 521, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1109, file: !858, line: 545, baseType: !341, size: 32, offset: 6912)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1109, file: !858, line: 548, baseType: !622, size: 8, offset: 6944)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1109, file: !858, line: 550, baseType: !2505, offset: 6952)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2506, line: 142, elements: !380)
!2506 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1109, file: !858, line: 554, baseType: !2138, size: 256, offset: 6976)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1109, file: !858, line: 557, baseType: !547, size: 32, offset: 7232)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1106, file: !858, line: 565, baseType: !2510, offset: 7296)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, elements: !2511)
!2511 = !{!2512}
!2512 = !DISubrange(count: -1)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1102, file: !858, line: 151, baseType: !341, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1095, file: !858, line: 156, baseType: !366, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 159, baseType: !2516, size: 128)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 159, size: 128, elements: !2517)
!2517 = !{!2518, !2582}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2516, file: !858, line: 161, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2521)
!2521 = !{!2522, !2532, !2553, !2554, !2555, !2556, !2557, !2569, !2570, !2571}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2520, file: !31, line: 111, baseType: !2523, size: 384)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2524)
!2524 = !{!2525, !2527, !2528, !2529, !2530, !2531}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2523, file: !31, line: 20, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2523, file: !31, line: 21, baseType: !2526, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2523, file: !31, line: 22, baseType: !2526, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2523, file: !31, line: 23, baseType: !456, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2523, file: !31, line: 24, baseType: !456, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2523, file: !31, line: 25, baseType: !456, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2520, file: !31, line: 112, baseType: !2533, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2535, line: 105, size: 128, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2534, file: !2535, line: 110, baseType: !456, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2534, file: !2535, line: 118, baseType: !2539, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2535, line: 95, size: 448, elements: !2541)
!2541 = !{!2542, !2543, !2548, !2549, !2550, !2551, !2552}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2540, file: !2535, line: 96, baseType: !902, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2540, file: !2535, line: 97, baseType: !2544, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2535, line: 60, baseType: !2546)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2533}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2540, file: !2535, line: 98, baseType: !2544, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2540, file: !2535, line: 99, baseType: !622, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2540, file: !2535, line: 100, baseType: !622, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2540, file: !2535, line: 101, baseType: !497, size: 128, align: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2540, file: !2535, line: 102, baseType: !2533, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2520, file: !31, line: 113, baseType: !2534, size: 128, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2520, file: !31, line: 114, baseType: !1661, size: 192, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2520, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2520, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2520, file: !31, line: 117, baseType: !2558, size: 64, offset: 832)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2561)
!2561 = !{!2562, !2563, !2567, !2568}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2560, file: !31, line: 73, baseType: !971, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2560, file: !31, line: 78, baseType: !2564, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2519}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2560, file: !31, line: 83, baseType: !2564, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2560, file: !31, line: 89, baseType: !1158, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2520, file: !31, line: 118, baseType: !314, size: 64, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2520, file: !31, line: 119, baseType: !115, size: 32, offset: 960)
!2571 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !31, line: 120, baseType: !2572, size: 128, offset: 1024)
!2572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2520, file: !31, line: 120, size: 128, elements: !2573)
!2573 = !{!2574, !2580}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2572, file: !31, line: 121, baseType: !2575, size: 128)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2576, line: 6, size: 128, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2575, file: !2576, line: 7, baseType: !553, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2575, file: !2576, line: 8, baseType: !553, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2572, file: !31, line: 122, baseType: !2581)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, elements: !1880)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2516, file: !858, line: 162, baseType: !314, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !862, file: !858, line: 176, baseType: !497, size: 128, align: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 179, baseType: !2585, size: 32, offset: 384)
!2585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 179, size: 32, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2585, file: !858, line: 184, baseType: !341, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2585, file: !858, line: 192, baseType: !7, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2585, file: !858, line: 194, baseType: !7, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2585, file: !858, line: 195, baseType: !115, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !857, file: !858, line: 199, baseType: !341, size: 32, offset: 416)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !792, file: !44, line: 1964, baseType: !2593, size: 64, offset: 1344)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!250, !731, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2598, line: 12, size: 256, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2599 = !{!2600, !2601, !2602, !2603, !2604}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2597, file: !2598, line: 13, baseType: !304, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2597, file: !2598, line: 16, baseType: !115, size: 32, offset: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2597, file: !2598, line: 23, baseType: !456, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2597, file: !2598, line: 30, baseType: !456, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2597, file: !2598, line: 33, baseType: !2605, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !858, line: 27, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !792, file: !44, line: 1966, baseType: !2593, size: 64, offset: 1408)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !732, file: !44, line: 1424, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2611)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2612)
!2612 = !{!2613, !2659, !2663, !2667, !2668, !2669, !2670, !2671, !2676, !2681, !2685}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2611, file: !38, line: 323, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!115, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2644, !2645, !2646}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2618, file: !38, line: 295, baseType: !774, size: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2618, file: !38, line: 296, baseType: !310, size: 128, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2618, file: !38, line: 297, baseType: !310, size: 128, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2618, file: !38, line: 298, baseType: !310, size: 128, offset: 384)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2618, file: !38, line: 299, baseType: !1304, size: 192, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2618, file: !38, line: 300, baseType: !366, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2618, file: !38, line: 301, baseType: !341, size: 32, offset: 704)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2618, file: !38, line: 302, baseType: !731, size: 64, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2618, file: !38, line: 303, baseType: !2629, size: 64, offset: 832)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2630)
!2630 = !{!2631, !2643}
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !38, line: 69, baseType: !2632, size: 32)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2629, file: !38, line: 69, size: 32, elements: !2633)
!2633 = !{!2634, !2635, !2636}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2632, file: !38, line: 70, baseType: !567, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2632, file: !38, line: 71, baseType: !575, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2632, file: !38, line: 72, baseType: !2637, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2638, line: 24, baseType: !2639)
!2638 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2638, line: 22, size: 32, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2639, file: !2638, line: 23, baseType: !2642, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2638, line: 20, baseType: !573)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2629, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2618, file: !38, line: 304, baseType: !663, size: 64, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2618, file: !38, line: 305, baseType: !456, size: 64, offset: 960)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2618, file: !38, line: 306, baseType: !2647, size: 576, offset: 1024)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2648)
!2648 = !{!2649, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2647, file: !38, line: 206, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !665)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2647, file: !38, line: 207, baseType: !2650, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2647, file: !38, line: 208, baseType: !2650, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2647, file: !38, line: 209, baseType: !2650, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2647, file: !38, line: 210, baseType: !2650, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2647, file: !38, line: 211, baseType: !2650, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2647, file: !38, line: 212, baseType: !2650, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2647, file: !38, line: 213, baseType: !671, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2647, file: !38, line: 214, baseType: !671, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2611, file: !38, line: 324, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!2617, !731, !115}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2611, file: !38, line: 325, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2617}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2611, file: !38, line: 326, baseType: !2614, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2611, file: !38, line: 327, baseType: !2614, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2611, file: !38, line: 328, baseType: !2614, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2611, file: !38, line: 329, baseType: !820, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2611, file: !38, line: 332, baseType: !2672, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!2675, !561}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2611, file: !38, line: 333, baseType: !2677, size: 64, offset: 512)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!115, !561, !2680}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2611, file: !38, line: 335, baseType: !2682, size: 64, offset: 576)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!115, !561, !2675}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2611, file: !38, line: 337, baseType: !2686, size: 64, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!115, !731, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !732, file: !44, line: 1425, baseType: !2691, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2694)
!2694 = !{!2695, !2699, !2700, !2704, !2705, !2706, !2721, !2744, !2748, !2749, !2772}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2693, file: !38, line: 429, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!115, !731, !115, !115, !681}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2693, file: !38, line: 430, baseType: !820, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2693, file: !38, line: 431, baseType: !2701, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!115, !731, !7}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2693, file: !38, line: 432, baseType: !2701, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2693, file: !38, line: 433, baseType: !820, size: 64, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2693, file: !38, line: 434, baseType: !2707, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!115, !731, !115, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2711, file: !38, line: 416, baseType: !115, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2711, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2711, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2711, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2711, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2711, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2711, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2711, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2693, file: !38, line: 435, baseType: !2722, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!115, !731, !2629, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2726, file: !38, line: 344, baseType: !115, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2726, file: !38, line: 345, baseType: !553, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2726, file: !38, line: 346, baseType: !553, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2726, file: !38, line: 347, baseType: !553, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2726, file: !38, line: 348, baseType: !553, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2726, file: !38, line: 349, baseType: !553, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2726, file: !38, line: 350, baseType: !553, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2726, file: !38, line: 351, baseType: !908, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2726, file: !38, line: 353, baseType: !908, size: 64, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2726, file: !38, line: 354, baseType: !115, size: 32, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2726, file: !38, line: 355, baseType: !115, size: 32, offset: 608)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2726, file: !38, line: 356, baseType: !553, size: 64, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2726, file: !38, line: 357, baseType: !553, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2726, file: !38, line: 358, baseType: !553, size: 64, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2726, file: !38, line: 359, baseType: !908, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2726, file: !38, line: 360, baseType: !115, size: 32, offset: 896)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2693, file: !38, line: 436, baseType: !2745, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!115, !731, !2689, !2725}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2693, file: !38, line: 438, baseType: !2722, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2693, file: !38, line: 439, baseType: !2750, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!115, !731, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2755)
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2754, file: !38, line: 410, baseType: !7, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2754, file: !38, line: 411, baseType: !2758, size: 1344, offset: 64)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2759, size: 1344, elements: !408)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2771}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2759, file: !38, line: 396, baseType: !7, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2759, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2759, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2759, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2759, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2759, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2759, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2759, file: !38, line: 404, baseType: !555, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2759, file: !38, line: 405, baseType: !2770, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !305, line: 126, baseType: !553)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2759, file: !38, line: 406, baseType: !2770, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2693, file: !38, line: 440, baseType: !2701, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !732, file: !44, line: 1426, baseType: !2774, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !732, file: !44, line: 1427, baseType: !456, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !732, file: !44, line: 1428, baseType: !456, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !732, file: !44, line: 1429, baseType: !456, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !732, file: !44, line: 1430, baseType: !514, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !732, file: !44, line: 1431, baseType: !898, size: 256, offset: 896)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !732, file: !44, line: 1432, baseType: !115, size: 32, offset: 1152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !732, file: !44, line: 1433, baseType: !341, size: 32, offset: 1184)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !732, file: !44, line: 1437, baseType: !2785, size: 64, offset: 1216)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !732, file: !44, line: 1449, baseType: !2790, size: 64, offset: 1280)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !530, line: 34, size: 64, elements: !2791)
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2790, file: !530, line: 35, baseType: !533, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !732, file: !44, line: 1450, baseType: !310, size: 128, offset: 1344)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !732, file: !44, line: 1451, baseType: !2795, size: 64, offset: 1472)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !732, file: !44, line: 1452, baseType: !2104, size: 64, offset: 1536)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !732, file: !44, line: 1453, baseType: !2799, size: 64, offset: 1600)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !732, file: !44, line: 1454, baseType: !774, size: 128, offset: 1664)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !732, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !732, file: !44, line: 1456, baseType: !2804, size: 2432, offset: 1856)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2810, !2842}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2804, file: !38, line: 519, baseType: !7, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2804, file: !38, line: 520, baseType: !898, size: 256, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2804, file: !38, line: 521, baseType: !2809, size: 192, offset: 320)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 192, elements: !408)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2804, file: !38, line: 522, baseType: !2811, size: 1728, offset: 512)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2812, size: 1728, elements: !408)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2813)
!2813 = !{!2814, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2812, file: !38, line: 223, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2817)
!2817 = !{!2818, !2819, !2832, !2833}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2816, file: !38, line: 444, baseType: !115, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2816, file: !38, line: 445, baseType: !2820, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2822, file: !38, line: 311, baseType: !820, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2822, file: !38, line: 312, baseType: !820, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2822, file: !38, line: 313, baseType: !820, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2822, file: !38, line: 314, baseType: !820, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2822, file: !38, line: 315, baseType: !2614, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2822, file: !38, line: 316, baseType: !2614, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2822, file: !38, line: 317, baseType: !2614, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2822, file: !38, line: 318, baseType: !2686, size: 64, offset: 448)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2816, file: !38, line: 446, baseType: !765, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2816, file: !38, line: 447, baseType: !2815, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2812, file: !38, line: 224, baseType: !115, size: 32, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2812, file: !38, line: 226, baseType: !310, size: 128, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2812, file: !38, line: 227, baseType: !456, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2812, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2812, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2812, file: !38, line: 230, baseType: !2650, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2812, file: !38, line: 231, baseType: !2650, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2812, file: !38, line: 232, baseType: !314, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2804, file: !38, line: 523, baseType: !2843, size: 192, offset: 2240)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, size: 192, elements: !408)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !732, file: !44, line: 1458, baseType: !2845, size: 2112, offset: 4288)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2846)
!2846 = !{!2847, !2848, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2845, file: !44, line: 1411, baseType: !115, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2845, file: !44, line: 1412, baseType: !1607, size: 128, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2845, file: !44, line: 1413, baseType: !2850, size: 1920, offset: 192)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2851, size: 1920, elements: !408)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2852, line: 12, size: 640, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2853 = !{!2854, !2862, !2864, !2869, !2870}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2851, file: !2852, line: 13, baseType: !2855, size: 320)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2856, line: 17, size: 320, elements: !2857)
!2856 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2855, file: !2856, line: 18, baseType: !115, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2855, file: !2856, line: 19, baseType: !115, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2855, file: !2856, line: 20, baseType: !1607, size: 128, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2855, file: !2856, line: 22, baseType: !497, size: 128, align: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2851, file: !2852, line: 14, baseType: !2863, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2851, file: !2852, line: 15, baseType: !2865, size: 64, offset: 384)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2866, line: 16, size: 64, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !{!2868}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2865, file: !2866, line: 17, baseType: !1347, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2851, file: !2852, line: 16, baseType: !1607, size: 128, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2851, file: !2852, line: 17, baseType: !341, size: 32, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !732, file: !44, line: 1465, baseType: !314, size: 64, offset: 6400)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !732, file: !44, line: 1468, baseType: !547, size: 32, offset: 6464)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !732, file: !44, line: 1470, baseType: !671, size: 64, offset: 6528)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !732, file: !44, line: 1471, baseType: !671, size: 64, offset: 6592)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !732, file: !44, line: 1473, baseType: !549, size: 32, offset: 6656)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !732, file: !44, line: 1474, baseType: !2877, size: 64, offset: 6720)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !732, file: !44, line: 1477, baseType: !2880, size: 256, offset: 6784)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !2410)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !732, file: !44, line: 1478, baseType: !2882, size: 128, offset: 7040)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2883, line: 18, baseType: !2884)
!2883 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2883, line: 16, size: 128, elements: !2885)
!2885 = !{!2886}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2884, file: !2883, line: 17, baseType: !2887, size: 128)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 128, elements: !1892)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !732, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !732, file: !44, line: 1481, baseType: !2890, size: 32, offset: 7200)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !305, line: 150, baseType: !7)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !732, file: !44, line: 1487, baseType: !1304, size: 192, offset: 7232)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !732, file: !44, line: 1493, baseType: !354, size: 64, offset: 7424)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !732, file: !44, line: 1495, baseType: !2894, size: 64, offset: 7488)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !512, line: 135, size: 1024, align: 512, elements: !2897)
!2897 = !{!2898, !2902, !2903, !2910, !2916, !2920, !2924, !2928, !2929, !2933, !2937, !2942, !2946}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2896, file: !512, line: 136, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!115, !514, !7}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2896, file: !512, line: 137, baseType: !2899, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2896, file: !512, line: 138, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!115, !2907, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2896, file: !512, line: 139, baseType: !2911, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!115, !2907, !7, !354, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2896, file: !512, line: 141, baseType: !2917, size: 64, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!115, !2907}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2896, file: !512, line: 142, baseType: !2921, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!115, !514}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2896, file: !512, line: 143, baseType: !2925, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !514}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2896, file: !512, line: 144, baseType: !2925, size: 64, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2896, file: !512, line: 145, baseType: !2930, size: 64, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !514, !561}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2896, file: !512, line: 146, baseType: !2934, size: 64, offset: 576)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!407, !514, !407, !115}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2896, file: !512, line: 147, baseType: !2938, size: 64, offset: 640)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!510, !2941}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2896, file: !512, line: 148, baseType: !2943, size: 64, offset: 704)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!115, !681, !622}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2896, file: !512, line: 149, baseType: !2947, size: 64, offset: 768)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!514, !514, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !732, file: !44, line: 1500, baseType: !115, size: 32, offset: 7552)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !732, file: !44, line: 1502, baseType: !2954, size: 448, offset: 7616)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2598, line: 60, size: 448, elements: !2955)
!2955 = !{!2956, !2961, !2962, !2963, !2964, !2965, !2966}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2954, file: !2598, line: 61, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!456, !2960, !2596}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2954, file: !2598, line: 63, baseType: !2957, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2954, file: !2598, line: 66, baseType: !250, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2954, file: !2598, line: 67, baseType: !115, size: 32, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !2598, line: 68, baseType: !7, size: 32, offset: 224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2954, file: !2598, line: 71, baseType: !310, size: 128, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2954, file: !2598, line: 77, baseType: !2967, size: 64, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !732, file: !44, line: 1505, baseType: !902, size: 64, offset: 8064)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !732, file: !44, line: 1508, baseType: !902, size: 64, offset: 8128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !732, file: !44, line: 1511, baseType: !115, size: 32, offset: 8192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !732, file: !44, line: 1514, baseType: !1040, size: 32, offset: 8224)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !732, file: !44, line: 1517, baseType: !2973, size: 64, offset: 8256)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !249, line: 18, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !732, file: !44, line: 1518, baseType: !770, size: 64, offset: 8320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !732, file: !44, line: 1525, baseType: !1639, size: 64, offset: 8384)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !732, file: !44, line: 1532, baseType: !2978, size: 64, offset: 8448)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2979, line: 52, size: 64, elements: !2980)
!2979 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2978, file: !2979, line: 53, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2979, line: 40, size: 256, elements: !2984)
!2984 = !{!2985, !2986, !2991}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2983, file: !2979, line: 42, baseType: !366)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2983, file: !2979, line: 44, baseType: !2987, size: 192)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2979, line: 28, size: 192, elements: !2988)
!2988 = !{!2989, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2987, file: !2979, line: 29, baseType: !310, size: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2987, file: !2979, line: 31, baseType: !250, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2983, file: !2979, line: 49, baseType: !250, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !732, file: !44, line: 1533, baseType: !2978, size: 64, offset: 8512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !732, file: !44, line: 1534, baseType: !497, size: 128, align: 64, offset: 8576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !732, file: !44, line: 1535, baseType: !2138, size: 256, offset: 8704)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !732, file: !44, line: 1537, baseType: !1304, size: 192, offset: 8960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !732, file: !44, line: 1542, baseType: !115, size: 32, offset: 9152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !732, file: !44, line: 1545, baseType: !366, offset: 9184)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !732, file: !44, line: 1546, baseType: !310, size: 128, offset: 9216)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !732, file: !44, line: 1548, baseType: !366, offset: 9344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !732, file: !44, line: 1549, baseType: !310, size: 128, offset: 9344)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !562, file: !44, line: 624, baseType: !869, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !562, file: !44, line: 631, baseType: !456, size: 64, offset: 320)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !44, line: 639, baseType: !3004, size: 32, offset: 384)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !44, line: 639, size: 32, elements: !3005)
!3005 = !{!3006, !3008}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3004, file: !44, line: 640, baseType: !3007, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3004, file: !44, line: 641, baseType: !7, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !562, file: !44, line: 643, baseType: !645, size: 32, offset: 416)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !562, file: !44, line: 644, baseType: !663, size: 64, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !562, file: !44, line: 645, baseType: !667, size: 128, offset: 512)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !562, file: !44, line: 646, baseType: !667, size: 128, offset: 640)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !562, file: !44, line: 647, baseType: !667, size: 128, offset: 768)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !562, file: !44, line: 648, baseType: !366, offset: 896)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !562, file: !44, line: 649, baseType: !448, size: 16, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !562, file: !44, line: 650, baseType: !1478, size: 8, offset: 912)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !562, file: !44, line: 651, baseType: !1478, size: 8, offset: 920)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !562, file: !44, line: 652, baseType: !2770, size: 64, offset: 960)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !562, file: !44, line: 659, baseType: !456, size: 64, offset: 1024)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !562, file: !44, line: 660, baseType: !898, size: 256, offset: 1088)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !562, file: !44, line: 662, baseType: !456, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !562, file: !44, line: 663, baseType: !456, size: 64, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !562, file: !44, line: 665, baseType: !774, size: 128, offset: 1472)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !562, file: !44, line: 666, baseType: !310, size: 128, offset: 1600)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !562, file: !44, line: 675, baseType: !310, size: 128, offset: 1728)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !562, file: !44, line: 676, baseType: !310, size: 128, offset: 1856)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !562, file: !44, line: 677, baseType: !310, size: 128, offset: 1984)
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !44, line: 678, baseType: !3029, size: 128, offset: 2112)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !44, line: 678, size: 128, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3029, file: !44, line: 679, baseType: !770, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3029, file: !44, line: 680, baseType: !497, size: 128, align: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !562, file: !44, line: 682, baseType: !904, size: 64, offset: 2240)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !562, file: !44, line: 683, baseType: !904, size: 64, offset: 2304)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !562, file: !44, line: 684, baseType: !341, size: 32, offset: 2368)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !562, file: !44, line: 685, baseType: !341, size: 32, offset: 2400)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !562, file: !44, line: 686, baseType: !341, size: 32, offset: 2432)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !562, file: !44, line: 688, baseType: !341, size: 32, offset: 2464)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !44, line: 690, baseType: !3040, size: 64, offset: 2496)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !44, line: 690, size: 64, elements: !3041)
!3041 = !{!3042, !3265}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3040, file: !44, line: 691, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3045)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3046)
!3046 = !{!3047, !3048, !3052, !3057, !3061, !3062, !3063, !3067, !3080, !3081, !3089, !3093, !3094, !3098, !3099, !3103, !3108, !3109, !3113, !3117, !3225, !3229, !3230, !3234, !3235, !3239, !3243, !3248, !3252, !3256, !3260, !3264}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3045, file: !44, line: 1823, baseType: !765, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3045, file: !44, line: 1824, baseType: !3049, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!663, !484, !663, !115}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3045, file: !44, line: 1825, baseType: !3053, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!438, !484, !407, !453, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3045, file: !44, line: 1826, baseType: !3058, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!438, !484, !354, !453, !3056}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3045, file: !44, line: 1827, baseType: !975, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3045, file: !44, line: 1828, baseType: !975, size: 64, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3045, file: !44, line: 1829, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!115, !978, !622}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3045, file: !44, line: 1830, baseType: !3068, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!115, !484, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3073)
!3073 = !{!3074, !3079}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3072, file: !44, line: 1777, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3076)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!115, !3071, !354, !115, !663, !553, !7}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3072, file: !44, line: 1778, baseType: !663, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3045, file: !44, line: 1831, baseType: !3068, size: 64, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3045, file: !44, line: 1832, baseType: !3082, size: 64, offset: 576)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!3085, !484, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3086, line: 52, baseType: !7)
!3086 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !751, line: 27, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3045, file: !44, line: 1833, baseType: !3090, size: 64, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!250, !484, !7, !456}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3045, file: !44, line: 1834, baseType: !3090, size: 64, offset: 704)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3045, file: !44, line: 1835, baseType: !3095, size: 64, offset: 768)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!115, !484, !1112}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3045, file: !44, line: 1836, baseType: !456, size: 64, offset: 832)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3045, file: !44, line: 1837, baseType: !3100, size: 64, offset: 896)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!115, !561, !484}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3045, file: !44, line: 1838, baseType: !3104, size: 64, offset: 960)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!115, !484, !3107}
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !314)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3045, file: !44, line: 1839, baseType: !3100, size: 64, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3045, file: !44, line: 1840, baseType: !3110, size: 64, offset: 1088)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!115, !484, !663, !663, !115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3045, file: !44, line: 1841, baseType: !3114, size: 64, offset: 1152)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!115, !115, !484, !115}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3045, file: !44, line: 1842, baseType: !3118, size: 64, offset: 1216)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!115, !484, !115, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3155, !3156, !3157, !3170, !3201}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3122, file: !44, line: 1063, baseType: !3121, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3122, file: !44, line: 1064, baseType: !310, size: 128, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3122, file: !44, line: 1065, baseType: !774, size: 128, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3122, file: !44, line: 1066, baseType: !310, size: 128, offset: 320)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3122, file: !44, line: 1069, baseType: !310, size: 128, offset: 448)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3122, file: !44, line: 1072, baseType: !3107, size: 64, offset: 576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3122, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3122, file: !44, line: 1074, baseType: !559, size: 8, offset: 672)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3122, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3122, file: !44, line: 1076, baseType: !115, size: 32, offset: 736)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3122, file: !44, line: 1077, baseType: !1607, size: 128, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3122, file: !44, line: 1078, baseType: !484, size: 64, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3122, file: !44, line: 1079, baseType: !663, size: 64, offset: 960)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3122, file: !44, line: 1080, baseType: !663, size: 64, offset: 1024)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3122, file: !44, line: 1082, baseType: !3139, size: 64, offset: 1088)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3141)
!3141 = !{!3142, !3150, !3151, !3152, !3153, !3154}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3140, file: !44, line: 1315, baseType: !3143)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3144, line: 20, baseType: !3145)
!3144 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3144, line: 11, elements: !3146)
!3146 = !{!3147}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3145, file: !3144, line: 12, baseType: !3148)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !378, line: 33, baseType: !3149)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 31, elements: !380)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3140, file: !44, line: 1316, baseType: !115, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3140, file: !44, line: 1317, baseType: !115, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3140, file: !44, line: 1318, baseType: !3139, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3140, file: !44, line: 1319, baseType: !484, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3140, file: !44, line: 1320, baseType: !497, size: 128, align: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3122, file: !44, line: 1084, baseType: !456, size: 64, offset: 1152)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3122, file: !44, line: 1085, baseType: !456, size: 64, offset: 1216)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3122, file: !44, line: 1087, baseType: !3158, size: 64, offset: 1280)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3160)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3161)
!3161 = !{!3162, !3166}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3160, file: !44, line: 1012, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !3121, !3121}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3160, file: !44, line: 1013, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !3121}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3122, file: !44, line: 1088, baseType: !3171, size: 64, offset: 1344)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3174)
!3174 = !{!3175, !3179, !3183, !3184, !3188, !3192, !3196, !3200}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3173, file: !44, line: 1017, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!3107, !3107}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3173, file: !44, line: 1018, baseType: !3180, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !3107}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3173, file: !44, line: 1019, baseType: !3167, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3173, file: !44, line: 1020, baseType: !3185, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!115, !3121, !115}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3173, file: !44, line: 1021, baseType: !3189, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!622, !3121}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3173, file: !44, line: 1022, baseType: !3193, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!115, !3121, !115, !309}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3173, file: !44, line: 1023, baseType: !3197, size: 64, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3121, !952}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3173, file: !44, line: 1024, baseType: !3189, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3122, file: !44, line: 1097, baseType: !3202, size: 256, offset: 1408)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3122, file: !44, line: 1089, size: 256, elements: !3203)
!3203 = !{!3204, !3213, !3219}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3202, file: !44, line: 1090, baseType: !3205, size: 256)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3206, line: 10, size: 256, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3207 = !{!3208, !3209, !3212}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3205, file: !3206, line: 11, baseType: !547, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3205, file: !3206, line: 12, baseType: !3210, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3206, line: 5, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3205, file: !3206, line: 13, baseType: !310, size: 128, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3202, file: !44, line: 1091, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3206, line: 17, size: 64, elements: !3215)
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3214, file: !3206, line: 18, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3206, line: 16, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3202, file: !44, line: 1096, baseType: !3220, size: 192)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !44, line: 1092, size: 192, elements: !3221)
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3220, file: !44, line: 1093, baseType: !310, size: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3220, file: !44, line: 1094, baseType: !115, size: 32, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3220, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3045, file: !44, line: 1843, baseType: !3226, size: 64, offset: 1280)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!438, !484, !856, !115, !453, !3056, !115}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3045, file: !44, line: 1844, baseType: !1232, size: 64, offset: 1344)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3045, file: !44, line: 1845, baseType: !3231, size: 64, offset: 1408)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!115, !115}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3045, file: !44, line: 1846, baseType: !3118, size: 64, offset: 1472)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3045, file: !44, line: 1847, baseType: !3236, size: 64, offset: 1536)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!438, !2278, !484, !3056, !453, !7}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3045, file: !44, line: 1848, baseType: !3240, size: 64, offset: 1600)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!438, !484, !3056, !2278, !453, !7}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3045, file: !44, line: 1849, baseType: !3244, size: 64, offset: 1664)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!115, !484, !250, !3247, !952}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3045, file: !44, line: 1850, baseType: !3249, size: 64, offset: 1728)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!250, !484, !115, !663, !663}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3045, file: !44, line: 1852, baseType: !3253, size: 64, offset: 1792)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !846, !484}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3045, file: !44, line: 1856, baseType: !3257, size: 64, offset: 1856)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!438, !484, !663, !484, !663, !453, !7}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3045, file: !44, line: 1858, baseType: !3261, size: 64, offset: 1920)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!663, !484, !663, !484, !663, !663, !7}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3045, file: !44, line: 1861, baseType: !3110, size: 64, offset: 1984)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3040, file: !44, line: 692, baseType: !799, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !562, file: !44, line: 694, baseType: !3267, size: 64, offset: 2560)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3268, file: !44, line: 1101, baseType: !366)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3268, file: !44, line: 1102, baseType: !310, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3268, file: !44, line: 1103, baseType: !310, size: 128, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3268, file: !44, line: 1104, baseType: !310, size: 128, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !562, file: !44, line: 695, baseType: !870, size: 1216, align: 64, offset: 2624)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !562, file: !44, line: 696, baseType: !310, size: 128, offset: 3840)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !44, line: 697, baseType: !3277, size: 64, offset: 3968)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !44, line: 697, size: 64, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3284, !3285}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3277, file: !44, line: 698, baseType: !2278, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3277, file: !44, line: 699, baseType: !2795, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3277, file: !44, line: 700, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3277, file: !44, line: 701, baseType: !407, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3277, file: !44, line: 702, baseType: !7, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !562, file: !44, line: 705, baseType: !549, size: 32, offset: 4032)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !562, file: !44, line: 708, baseType: !549, size: 32, offset: 4064)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !562, file: !44, line: 709, baseType: !2877, size: 64, offset: 4096)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !562, file: !44, line: 720, baseType: !314, size: 64, offset: 4160)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !515, file: !512, line: 98, baseType: !3291, size: 256, offset: 448)
!3291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 256, elements: !2410)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !515, file: !512, line: 101, baseType: !3293, size: 32, offset: 704)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3294, line: 25, size: 32, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !3293, file: !3294, line: 26, baseType: !3297, size: 32)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3293, file: !3294, line: 26, size: 32, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !3294, line: 30, baseType: !3300, size: 32)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3294, line: 30, size: 32, elements: !3301)
!3301 = !{!3302, !3303}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3300, file: !3294, line: 31, baseType: !366)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3300, file: !3294, line: 32, baseType: !115, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !515, file: !512, line: 102, baseType: !2894, size: 64, offset: 768)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !515, file: !512, line: 103, baseType: !731, size: 64, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !515, file: !512, line: 104, baseType: !456, size: 64, offset: 896)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !515, file: !512, line: 105, baseType: !314, size: 64, offset: 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !512, line: 107, baseType: !3309, size: 128, offset: 1024)
!3309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !512, line: 107, size: 128, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3309, file: !512, line: 108, baseType: !310, size: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3309, file: !512, line: 109, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !515, file: !512, line: 111, baseType: !310, size: 128, offset: 1152)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !515, file: !512, line: 112, baseType: !310, size: 128, offset: 1280)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !515, file: !512, line: 120, baseType: !3317, size: 128, offset: 1408)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !512, line: 116, size: 128, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3317, file: !512, line: 117, baseType: !774, size: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3317, file: !512, line: 118, baseType: !529, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3317, file: !512, line: 119, baseType: !497, size: 128, align: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !485, file: !44, line: 922, baseType: !561, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !485, file: !44, line: 923, baseType: !3043, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !485, file: !44, line: 929, baseType: !366, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !485, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !485, file: !44, line: 931, baseType: !902, size: 64, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !485, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !485, file: !44, line: 933, baseType: !2890, size: 32, offset: 544)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !485, file: !44, line: 934, baseType: !1304, size: 192, offset: 576)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !485, file: !44, line: 935, baseType: !663, size: 64, offset: 768)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !485, file: !44, line: 936, baseType: !3332, size: 192, offset: 832)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3332, file: !44, line: 886, baseType: !3143)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3332, file: !44, line: 887, baseType: !1597, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3332, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3332, file: !44, line: 889, baseType: !567, size: 32, offset: 96)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3332, file: !44, line: 889, baseType: !567, size: 32, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3332, file: !44, line: 890, baseType: !115, size: 32, offset: 160)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !485, file: !44, line: 937, baseType: !1706, size: 64, offset: 1024)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !485, file: !44, line: 938, baseType: !3342, size: 256, offset: 1088)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3342, file: !44, line: 897, baseType: !456, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3342, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3342, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3342, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3342, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3342, file: !44, line: 904, baseType: !663, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !485, file: !44, line: 940, baseType: !553, size: 64, offset: 1344)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !485, file: !44, line: 945, baseType: !314, size: 64, offset: 1408)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !485, file: !44, line: 949, baseType: !310, size: 128, offset: 1472)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !485, file: !44, line: 950, baseType: !310, size: 128, offset: 1600)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !485, file: !44, line: 952, baseType: !869, size: 64, offset: 1728)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !485, file: !44, line: 953, baseType: !1040, size: 32, offset: 1792)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !485, file: !44, line: 954, baseType: !1040, size: 32, offset: 1824)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !475, file: !432, line: 174, baseType: !481, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !475, file: !432, line: 176, baseType: !3359, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!115, !484, !359, !474, !1112}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !463, file: !432, line: 90, baseType: !458, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !463, file: !432, line: 91, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !422, file: !351, line: 143, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!3369, !359}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3372)
!3372 = !{!3373, !3374, !3378, !3382, !3388, !3392}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3371, file: !61, line: 40, baseType: !60, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3371, file: !61, line: 41, baseType: !3375, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!622}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3371, file: !61, line: 42, baseType: !3379, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!314}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3371, file: !61, line: 43, baseType: !3383, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!2307, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3371, file: !61, line: 44, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!2307}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3371, file: !61, line: 45, baseType: !600, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !422, file: !351, line: 144, baseType: !3394, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!2307, !359}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !422, file: !351, line: 145, baseType: !3398, size: 64, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !359, !3401, !3402}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !350, file: !351, line: 70, baseType: !3404, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !751, line: 123, size: 1024, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3529, !3530, !3531, !3532, !3533}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3405, file: !751, line: 124, baseType: !341, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3405, file: !751, line: 125, baseType: !341, size: 32, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3405, file: !751, line: 135, baseType: !3404, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3405, file: !751, line: 136, baseType: !354, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3405, file: !751, line: 138, baseType: !891, size: 192, align: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3405, file: !751, line: 140, baseType: !2307, size: 64, offset: 384)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3405, file: !751, line: 141, baseType: !7, size: 32, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !751, line: 142, baseType: !3415, size: 256, offset: 512)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !751, line: 142, size: 256, elements: !3416)
!3416 = !{!3417, !3457, !3461}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3415, file: !751, line: 143, baseType: !3418, size: 192)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !751, line: 91, size: 192, elements: !3419)
!3419 = !{!3420, !3421, !3422}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3418, file: !751, line: 92, baseType: !456, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3418, file: !751, line: 94, baseType: !887, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3418, file: !751, line: 100, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !751, line: 180, size: 704, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3455, !3456}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3424, file: !751, line: 182, baseType: !3404, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3424, file: !751, line: 183, baseType: !7, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3424, file: !751, line: 186, baseType: !1626, size: 192, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3424, file: !751, line: 187, baseType: !547, size: 32, offset: 320)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3424, file: !751, line: 188, baseType: !547, size: 32, offset: 352)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3424, file: !751, line: 189, baseType: !3432, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !751, line: 168, size: 320, elements: !3434)
!3434 = !{!3435, !3439, !3443, !3447, !3451}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3433, file: !751, line: 169, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!115, !846, !3423}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3433, file: !751, line: 171, baseType: !3440, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!115, !3404, !354, !447}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3433, file: !751, line: 173, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!115, !3404}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3433, file: !751, line: 174, baseType: !3448, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!115, !3404, !3404, !354}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3433, file: !751, line: 176, baseType: !3452, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!115, !846, !3404, !3423}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3424, file: !751, line: 192, baseType: !310, size: 128, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3424, file: !751, line: 194, baseType: !1607, size: 128, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3415, file: !751, line: 144, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !751, line: 103, size: 64, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3458, file: !751, line: 104, baseType: !3404, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3415, file: !751, line: 145, baseType: !3462, size: 256)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !751, line: 107, size: 256, elements: !3463)
!3463 = !{!3464, !3524, !3527, !3528}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3462, file: !751, line: 108, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !751, line: 217, size: 768, elements: !3468)
!3468 = !{!3469, !3489, !3493, !3497, !3501, !3505, !3509, !3513, !3514, !3515, !3516, !3520}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3467, file: !751, line: 222, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!115, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !751, line: 197, size: 1088, elements: !3475)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3474, file: !751, line: 199, baseType: !3404, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3474, file: !751, line: 200, baseType: !484, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3474, file: !751, line: 201, baseType: !846, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3474, file: !751, line: 202, baseType: !314, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3474, file: !751, line: 205, baseType: !1304, size: 192, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3474, file: !751, line: 206, baseType: !1304, size: 192, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3474, file: !751, line: 207, baseType: !115, size: 32, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3474, file: !751, line: 208, baseType: !310, size: 128, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3474, file: !751, line: 209, baseType: !407, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3474, file: !751, line: 211, baseType: !453, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3474, file: !751, line: 212, baseType: !622, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3474, file: !751, line: 213, baseType: !622, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3474, file: !751, line: 214, baseType: !1140, size: 64, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3467, file: !751, line: 223, baseType: !3490, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3473}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3467, file: !751, line: 236, baseType: !3494, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!115, !846, !314}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3467, file: !751, line: 238, baseType: !3498, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!314, !846, !3056}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3467, file: !751, line: 239, baseType: !3502, size: 64, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!314, !846, !314, !3056}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3467, file: !751, line: 240, baseType: !3506, size: 64, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !846, !314}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3467, file: !751, line: 242, baseType: !3510, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!438, !3473, !407, !453, !663}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3467, file: !751, line: 252, baseType: !453, size: 64, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3467, file: !751, line: 259, baseType: !622, size: 8, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3467, file: !751, line: 260, baseType: !3510, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3467, file: !751, line: 263, baseType: !3517, size: 64, offset: 640)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!3085, !3473, !3087}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3467, file: !751, line: 266, baseType: !3521, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!115, !3473, !1112}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3462, file: !751, line: 109, baseType: !3525, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !751, line: 31, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3462, file: !751, line: 110, baseType: !663, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3462, file: !751, line: 111, baseType: !3404, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3405, file: !751, line: 148, baseType: !314, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3405, file: !751, line: 154, baseType: !553, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3405, file: !751, line: 156, baseType: !448, size: 16, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3405, file: !751, line: 157, baseType: !447, size: 16, offset: 912)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3405, file: !751, line: 158, baseType: !3534, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !751, line: 32, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !350, file: !351, line: 71, baseType: !333, size: 32, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !350, file: !351, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !350, file: !351, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !350, file: !351, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !350, file: !351, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !350, file: !351, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !347, file: !73, line: 463, baseType: !346, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !347, file: !73, line: 465, baseType: !3544, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !347, file: !73, line: 467, baseType: !354, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !347, file: !73, line: 468, baseType: !3548, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3558, !3563, !3567}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3550, file: !73, line: 88, baseType: !354, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3550, file: !73, line: 89, baseType: !460, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3550, file: !73, line: 90, baseType: !3555, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!115, !346, !402}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3550, file: !73, line: 91, baseType: !3559, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!407, !346, !3562, !3401, !3402}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3550, file: !73, line: 93, baseType: !3564, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !346}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3550, file: !73, line: 95, baseType: !3568, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3571)
!3571 = !{!3572, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3570, file: !80, line: 279, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!115, !346}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3570, file: !80, line: 280, baseType: !3564, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3570, file: !80, line: 281, baseType: !3573, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3570, file: !80, line: 282, baseType: !3573, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3570, file: !80, line: 283, baseType: !3573, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3570, file: !80, line: 284, baseType: !3573, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3570, file: !80, line: 285, baseType: !3573, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3570, file: !80, line: 286, baseType: !3573, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3570, file: !80, line: 287, baseType: !3573, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3570, file: !80, line: 288, baseType: !3573, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3570, file: !80, line: 289, baseType: !3573, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3570, file: !80, line: 290, baseType: !3573, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3570, file: !80, line: 291, baseType: !3573, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3570, file: !80, line: 292, baseType: !3573, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3570, file: !80, line: 293, baseType: !3573, size: 64, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3570, file: !80, line: 294, baseType: !3573, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3570, file: !80, line: 295, baseType: !3573, size: 64, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3570, file: !80, line: 296, baseType: !3573, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3570, file: !80, line: 297, baseType: !3573, size: 64, offset: 1152)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3570, file: !80, line: 298, baseType: !3573, size: 64, offset: 1216)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3570, file: !80, line: 299, baseType: !3573, size: 64, offset: 1280)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3570, file: !80, line: 300, baseType: !3573, size: 64, offset: 1344)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3570, file: !80, line: 301, baseType: !3573, size: 64, offset: 1408)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !347, file: !73, line: 470, baseType: !3599, size: 64, offset: 768)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3601, line: 82, size: 1408, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3684, !3687, !3688}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !3601, line: 83, baseType: !354, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3600, file: !3601, line: 84, baseType: !354, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3600, file: !3601, line: 85, baseType: !346, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3600, file: !3601, line: 86, baseType: !460, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3600, file: !3601, line: 87, baseType: !460, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3600, file: !3601, line: 88, baseType: !460, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3600, file: !3601, line: 90, baseType: !3610, size: 64, offset: 384)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!115, !346, !3613}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3635, !3648, !3649, !3650, !3651, !3652, !3660, !3661, !3662, !3663, !3664, !3665}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3614, file: !67, line: 96, baseType: !354, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3614, file: !67, line: 97, baseType: !3599, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3614, file: !67, line: 99, baseType: !765, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3614, file: !67, line: 100, baseType: !354, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3614, file: !67, line: 102, baseType: !622, size: 8, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3614, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3614, file: !67, line: 105, baseType: !3623, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3626, line: 262, size: 1600, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3627 = !{!3628, !3629, !3630, !3634}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3625, file: !3626, line: 263, baseType: !2880, size: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3625, file: !3626, line: 264, baseType: !2880, size: 256, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3625, file: !3626, line: 265, baseType: !3631, size: 1024, offset: 512)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 1024, elements: !3632)
!3632 = !{!3633}
!3633 = !DISubrange(count: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3625, file: !3626, line: 266, baseType: !2307, size: 64, offset: 1536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3614, file: !67, line: 106, baseType: !3636, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3626, line: 210, size: 256, elements: !3639)
!3639 = !{!3640, !3644, !3646, !3647}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3638, file: !3626, line: 211, baseType: !3641, size: 72)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 72, elements: !3642)
!3642 = !{!3643}
!3643 = !DISubrange(count: 9)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3638, file: !3626, line: 212, baseType: !3645, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3626, line: 14, baseType: !456)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3638, file: !3626, line: 213, baseType: !549, size: 32, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3638, file: !3626, line: 214, baseType: !549, size: 32, offset: 224)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3614, file: !67, line: 108, baseType: !3573, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3614, file: !67, line: 109, baseType: !3564, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3614, file: !67, line: 110, baseType: !3573, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3614, file: !67, line: 111, baseType: !3564, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3614, file: !67, line: 112, baseType: !3653, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!115, !346, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3658)
!3658 = !{!3659}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3657, file: !80, line: 51, baseType: !115, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3614, file: !67, line: 113, baseType: !3573, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3614, file: !67, line: 114, baseType: !460, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3614, file: !67, line: 115, baseType: !460, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3614, file: !67, line: 117, baseType: !3568, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3614, file: !67, line: 118, baseType: !3564, size: 64, offset: 1024)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3614, file: !67, line: 120, baseType: !3666, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3600, file: !3601, line: 91, baseType: !3555, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3600, file: !3601, line: 92, baseType: !3573, size: 64, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3600, file: !3601, line: 93, baseType: !3564, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3600, file: !3601, line: 94, baseType: !3573, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3600, file: !3601, line: 95, baseType: !3564, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3600, file: !3601, line: 97, baseType: !3573, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3600, file: !3601, line: 98, baseType: !3573, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3600, file: !3601, line: 100, baseType: !3653, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3600, file: !3601, line: 101, baseType: !3573, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3600, file: !3601, line: 103, baseType: !3573, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3600, file: !3601, line: 105, baseType: !3573, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3600, file: !3601, line: 107, baseType: !3568, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3600, file: !3601, line: 109, baseType: !3681, size: 64, offset: 1216)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3683)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3601, line: 109, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3600, file: !3601, line: 111, baseType: !3685, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3601, line: 111, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3600, file: !3601, line: 112, baseType: !780, offset: 1344)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3600, file: !3601, line: 114, baseType: !622, size: 8, offset: 1344)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !347, file: !73, line: 471, baseType: !3613, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !347, file: !73, line: 473, baseType: !314, size: 64, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !347, file: !73, line: 475, baseType: !314, size: 64, offset: 960)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !347, file: !73, line: 480, baseType: !1304, size: 192, offset: 1024)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !347, file: !73, line: 484, baseType: !3694, size: 576, offset: 1216)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3694, file: !73, line: 362, baseType: !310, size: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3694, file: !73, line: 363, baseType: !310, size: 128, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3694, file: !73, line: 364, baseType: !310, size: 128, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3694, file: !73, line: 365, baseType: !310, size: 128, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3694, file: !73, line: 366, baseType: !622, size: 8, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3694, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !347, file: !73, line: 485, baseType: !3703, size: 2304, offset: 1792)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3800, !3804}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3703, file: !80, line: 566, baseType: !3656, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3703, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3703, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3703, file: !80, line: 569, baseType: !622, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3703, file: !80, line: 570, baseType: !622, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3703, file: !80, line: 571, baseType: !622, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3703, file: !80, line: 572, baseType: !622, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3703, file: !80, line: 573, baseType: !622, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3703, file: !80, line: 574, baseType: !622, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3703, file: !80, line: 575, baseType: !622, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3703, file: !80, line: 576, baseType: !622, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3703, file: !80, line: 577, baseType: !547, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3703, file: !80, line: 578, baseType: !366, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3703, file: !80, line: 580, baseType: !310, size: 128, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3703, file: !80, line: 581, baseType: !1661, size: 192, offset: 256)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3703, file: !80, line: 582, baseType: !3721, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3723, line: 43, size: 1472, elements: !3724)
!3723 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3732, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3722, file: !3723, line: 44, baseType: !354, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3722, file: !3723, line: 45, baseType: !115, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3722, file: !3723, line: 46, baseType: !310, size: 128, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !3723, line: 47, baseType: !366, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3722, file: !3723, line: 48, baseType: !3730, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3722, file: !3723, line: 49, baseType: !3733, size: 320, offset: 320)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3734, line: 11, size: 320, elements: !3735)
!3734 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3735 = !{!3736, !3737, !3738, !3743}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3733, file: !3734, line: 16, baseType: !774, size: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3733, file: !3734, line: 17, baseType: !456, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3733, file: !3734, line: 18, baseType: !3739, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3733, file: !3734, line: 19, baseType: !547, size: 32, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3722, file: !3723, line: 50, baseType: !456, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3722, file: !3723, line: 51, baseType: !1426, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3722, file: !3723, line: 52, baseType: !1426, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3722, file: !3723, line: 53, baseType: !1426, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3722, file: !3723, line: 54, baseType: !1426, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3722, file: !3723, line: 55, baseType: !1426, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3722, file: !3723, line: 56, baseType: !456, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3722, file: !3723, line: 57, baseType: !456, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3722, file: !3723, line: 58, baseType: !456, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3722, file: !3723, line: 59, baseType: !456, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3722, file: !3723, line: 60, baseType: !456, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3722, file: !3723, line: 61, baseType: !346, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3722, file: !3723, line: 62, baseType: !622, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3722, file: !3723, line: 63, baseType: !622, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3703, file: !80, line: 583, baseType: !622, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3703, file: !80, line: 584, baseType: !622, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3703, file: !80, line: 585, baseType: !622, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3703, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3703, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3703, file: !80, line: 592, baseType: !1418, size: 512, offset: 576)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3703, file: !80, line: 593, baseType: !553, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3703, file: !80, line: 594, baseType: !2138, size: 256, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3703, file: !80, line: 595, baseType: !1607, size: 128, offset: 1408)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3703, file: !80, line: 596, baseType: !3730, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3703, file: !80, line: 597, baseType: !341, size: 32, offset: 1600)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3703, file: !80, line: 598, baseType: !341, size: 32, offset: 1632)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3703, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3703, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3703, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3703, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3703, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3703, file: !80, line: 604, baseType: !622, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3703, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3703, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3703, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3703, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3703, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3703, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3703, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3703, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3703, file: !80, line: 613, baseType: !115, size: 32, offset: 1792)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3703, file: !80, line: 614, baseType: !115, size: 32, offset: 1824)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3703, file: !80, line: 615, baseType: !553, size: 64, offset: 1856)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3703, file: !80, line: 616, baseType: !553, size: 64, offset: 1920)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3703, file: !80, line: 617, baseType: !553, size: 64, offset: 1984)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3703, file: !80, line: 618, baseType: !553, size: 64, offset: 2048)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3703, file: !80, line: 620, baseType: !3791, size: 64, offset: 2112)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3792, file: !80, line: 537, baseType: !366)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3792, file: !80, line: 538, baseType: !7, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3792, file: !80, line: 540, baseType: !310, size: 128, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3792, file: !80, line: 543, baseType: !3798, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3703, file: !80, line: 621, baseType: !3801, size: 64, offset: 2176)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !346, !1570}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3703, file: !80, line: 622, baseType: !3805, size: 64, offset: 2240)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !347, file: !73, line: 486, baseType: !3808, size: 64, offset: 4096)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3817, !3818, !3819}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3809, file: !80, line: 643, baseType: !3570, size: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3809, file: !80, line: 644, baseType: !3573, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3809, file: !80, line: 645, baseType: !3814, size: 64, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !346, !622}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3809, file: !80, line: 646, baseType: !3573, size: 64, offset: 1600)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3809, file: !80, line: 647, baseType: !3564, size: 64, offset: 1664)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3809, file: !80, line: 648, baseType: !3564, size: 64, offset: 1728)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !347, file: !73, line: 493, baseType: !3821, size: 64, offset: 4160)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3999, !4000, !4001, !4002, !4003, !4004, !4007, !4008, !4009, !4010, !4011, !4012, !4013}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3822, file: !94, line: 163, baseType: !310, size: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !94, line: 164, baseType: !354, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3822, file: !94, line: 165, baseType: !3827, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3830)
!3830 = !{!3831, !3949, !3960, !3965, !3969, !3976, !3980, !3984, !3991, !3995}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3829, file: !94, line: 106, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!115, !3821, !3835, !93}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3837, line: 51, size: 1344, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3838 = !{!3839, !3840, !3842, !3843, !3933, !3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3836, file: !3837, line: 52, baseType: !354, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3836, file: !3837, line: 53, baseType: !3841, size: 32, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3837, line: 28, baseType: !547)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3836, file: !3837, line: 54, baseType: !354, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3836, file: !3837, line: 55, baseType: !3844, size: 192, offset: 192)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3845, line: 17, size: 192, elements: !3846)
!3845 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3846 = !{!3847, !3849, !3932}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3844, file: !3845, line: 18, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3844, file: !3845, line: 19, baseType: !3850, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3845, line: 110, size: 1152, elements: !3853)
!3853 = !{!3854, !3858, !3862, !3868, !3874, !3878, !3882, !3887, !3891, !3892, !3896, !3900, !3904, !3915, !3916, !3917, !3918, !3928}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3852, file: !3845, line: 111, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!3848, !3848}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3852, file: !3845, line: 112, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3848}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3852, file: !3845, line: 113, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!622, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3844)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3852, file: !3845, line: 114, baseType: !3869, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!2307, !3866, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3852, file: !3845, line: 116, baseType: !3875, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!622, !3866, !354}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3852, file: !3845, line: 118, baseType: !3879, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!115, !3866, !354, !7, !314, !453}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3852, file: !3845, line: 123, baseType: !3883, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!115, !3866, !354, !3886, !453}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3852, file: !3845, line: 126, baseType: !3888, size: 64, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!354, !3866}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3852, file: !3845, line: 127, baseType: !3888, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3852, file: !3845, line: 128, baseType: !3893, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!3848, !3866}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3852, file: !3845, line: 130, baseType: !3897, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!3848, !3866, !3848}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3852, file: !3845, line: 133, baseType: !3901, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!3848, !3866, !354}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3852, file: !3845, line: 135, baseType: !3905, size: 64, offset: 768)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!115, !3866, !354, !354, !7, !7, !3908}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3845, line: 43, size: 640, elements: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3909, file: !3845, line: 44, baseType: !3848, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3909, file: !3845, line: 45, baseType: !7, size: 32, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3909, file: !3845, line: 46, baseType: !3914, size: 512, offset: 128)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 512, elements: !1456)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3852, file: !3845, line: 140, baseType: !3897, size: 64, offset: 832)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3852, file: !3845, line: 143, baseType: !3893, size: 64, offset: 896)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3852, file: !3845, line: 145, baseType: !3855, size: 64, offset: 960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3852, file: !3845, line: 146, baseType: !3919, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!115, !3866, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3845, line: 29, size: 128, elements: !3924)
!3924 = !{!3925, !3926, !3927}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3923, file: !3845, line: 30, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3923, file: !3845, line: 31, baseType: !7, size: 32, offset: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3923, file: !3845, line: 32, baseType: !3866, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3852, file: !3845, line: 148, baseType: !3929, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!115, !3866, !346}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3844, file: !3845, line: 20, baseType: !346, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3836, file: !3837, line: 57, baseType: !3934, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3837, line: 31, size: 704, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3935, file: !3837, line: 32, baseType: !407, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3935, file: !3837, line: 33, baseType: !115, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3935, file: !3837, line: 34, baseType: !314, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3935, file: !3837, line: 35, baseType: !3934, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3935, file: !3837, line: 43, baseType: !475, size: 448, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3836, file: !3837, line: 58, baseType: !3934, size: 64, offset: 448)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3836, file: !3837, line: 59, baseType: !3835, size: 64, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3836, file: !3837, line: 60, baseType: !3835, size: 64, offset: 576)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3836, file: !3837, line: 61, baseType: !3835, size: 64, offset: 640)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3836, file: !3837, line: 63, baseType: !350, size: 512, offset: 704)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3836, file: !3837, line: 65, baseType: !456, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3836, file: !3837, line: 66, baseType: !314, size: 64, offset: 1280)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3829, file: !94, line: 108, baseType: !3950, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!115, !3821, !3953, !93}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3955)
!3955 = !{!3956, !3957, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3954, file: !94, line: 64, baseType: !3848, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3954, file: !94, line: 65, baseType: !115, size: 32, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3954, file: !94, line: 66, baseType: !3959, size: 512, offset: 96)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 512, elements: !1892)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3829, file: !94, line: 110, baseType: !3961, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!115, !3821, !7, !3964}
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !305, line: 164, baseType: !456)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3829, file: !94, line: 111, baseType: !3966, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3821, !7}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3829, file: !94, line: 112, baseType: !3970, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!115, !3821, !3835, !3973, !7, !3975, !2863}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3829, file: !94, line: 117, baseType: !3977, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!115, !3821, !7, !7, !314}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3829, file: !94, line: 119, baseType: !3981, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3821, !7, !7}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3829, file: !94, line: 121, baseType: !3985, size: 64, offset: 448)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!115, !3821, !3988, !622}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3990, line: 11, flags: DIFlagFwdDecl)
!3990 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3829, file: !94, line: 122, baseType: !3992, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3821, !3988}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3829, file: !94, line: 123, baseType: !3996, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!115, !3821, !3953, !3975, !2863}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3822, file: !94, line: 166, baseType: !314, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3822, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3822, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3822, file: !94, line: 171, baseType: !3848, size: 64, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3822, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3822, file: !94, line: 173, baseType: !4005, size: 64, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3822, file: !94, line: 175, baseType: !3821, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3822, file: !94, line: 182, baseType: !3964, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3822, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3822, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3822, file: !94, line: 185, baseType: !874, size: 128, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3822, file: !94, line: 186, baseType: !1304, size: 192, offset: 896)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3822, file: !94, line: 187, baseType: !4014, offset: 1088)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2511)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !347, file: !73, line: 499, baseType: !310, size: 128, offset: 4224)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !347, file: !73, line: 502, baseType: !4017, size: 64, offset: 4352)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !347, file: !73, line: 504, baseType: !4021, size: 64, offset: 4416)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !347, file: !73, line: 505, baseType: !553, size: 64, offset: 4480)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !347, file: !73, line: 510, baseType: !553, size: 64, offset: 4544)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !347, file: !73, line: 511, baseType: !4025, size: 64, offset: 4608)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4027)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !347, file: !73, line: 513, baseType: !4029, size: 64, offset: 4672)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4030, file: !73, line: 293, baseType: !7, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4030, file: !73, line: 294, baseType: !456, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !347, file: !73, line: 515, baseType: !310, size: 128, offset: 4736)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !347, file: !73, line: 526, baseType: !4036, offset: 4864)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4037, line: 5, elements: !380)
!4037 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !347, file: !73, line: 528, baseType: !3835, size: 64, offset: 4864)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !347, file: !73, line: 529, baseType: !3848, size: 64, offset: 4928)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !347, file: !73, line: 534, baseType: !645, size: 32, offset: 4992)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !347, file: !73, line: 535, baseType: !547, size: 32, offset: 5024)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !347, file: !73, line: 537, baseType: !366, offset: 5056)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !347, file: !73, line: 538, baseType: !310, size: 128, offset: 5056)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !347, file: !73, line: 540, baseType: !4045, size: 64, offset: 5184)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4047, line: 54, size: 960, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4059, !4063, !4064, !4065, !4066, !4070, !4074, !4075}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4046, file: !4047, line: 55, baseType: !354, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4046, file: !4047, line: 56, baseType: !765, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4046, file: !4047, line: 58, baseType: !460, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4046, file: !4047, line: 59, baseType: !460, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4046, file: !4047, line: 60, baseType: !359, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4046, file: !4047, line: 62, baseType: !3555, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4046, file: !4047, line: 63, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!407, !346, !3562}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4046, file: !4047, line: 65, baseType: !4060, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !4045}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4046, file: !4047, line: 66, baseType: !3564, size: 64, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4046, file: !4047, line: 68, baseType: !3573, size: 64, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4046, file: !4047, line: 70, baseType: !3369, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4046, file: !4047, line: 71, baseType: !4067, size: 64, offset: 704)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!2307, !346}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4046, file: !4047, line: 73, baseType: !4071, size: 64, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !346, !3401, !3402}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4046, file: !4047, line: 75, baseType: !3568, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4046, file: !4047, line: 77, baseType: !3685, size: 64, offset: 896)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !347, file: !73, line: 541, baseType: !460, size: 64, offset: 5248)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !347, file: !73, line: 543, baseType: !3564, size: 64, offset: 5312)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !347, file: !73, line: 544, baseType: !4079, size: 64, offset: 5376)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !347, file: !73, line: 545, baseType: !4082, size: 64, offset: 5440)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !347, file: !73, line: 547, baseType: !622, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !347, file: !73, line: 548, baseType: !622, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !347, file: !73, line: 549, baseType: !622, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !347, file: !73, line: 550, baseType: !622, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !328, file: !167, line: 83, baseType: !4089, size: 192, offset: 256)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !167, line: 76, size: 192, elements: !4090)
!4090 = !{!4091, !4092, !4093}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4089, file: !167, line: 78, baseType: !310, size: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4089, file: !167, line: 80, baseType: !314, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4089, file: !167, line: 82, baseType: !366, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !328, file: !167, line: 86, baseType: !4095, size: 64, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4097, line: 162, size: 3328, elements: !4098)
!4097 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/lizy2001/genbc/linux")
!4098 = !{!4099, !4103, !4110, !4114, !4118, !4119, !4120, !4125, !4126, !4130, !4131, !4135, !4136, !4142, !4149, !4153, !4157, !4161, !4165, !4170, !4176, !4180, !4184, !4185, !4191, !4197, !4201, !4205, !4209, !4223, !4229, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4245, !4246, !4247, !4248, !4249, !4250, !4254, !4255, !4259, !4263, !4267, !4271}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4096, file: !4097, line: 179, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!115, !327, !456}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4096, file: !4097, line: 199, baseType: !4104, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!115, !327, !4107}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4109, line: 9, flags: DIFlagFwdDecl)
!4109 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4096, file: !4097, line: 213, baseType: !4111, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !327, !4107}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4096, file: !4097, line: 241, baseType: !4115, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !327}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4096, file: !4097, line: 258, baseType: !4115, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4096, file: !4097, line: 270, baseType: !4115, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !4096, file: !4097, line: 278, baseType: !4121, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!4124, !115, !314}
!4124 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !108, line: 17, baseType: !107)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_preinstall", scope: !4096, file: !4097, line: 288, baseType: !4115, size: 64, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "irq_postinstall", scope: !4096, file: !4097, line: 297, baseType: !4127, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!115, !327}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "irq_uninstall", scope: !4096, file: !4097, line: 306, baseType: !4115, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4096, file: !4097, line: 313, baseType: !4132, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !327, !4107, !622}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4096, file: !4097, line: 320, baseType: !4111, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4096, file: !4097, line: 327, baseType: !4137, size: 64, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !4140}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !167, line: 13, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "gem_free_object_unlocked", scope: !4096, file: !4097, line: 335, baseType: !4143, size: 64, offset: 832)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !4146}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4148, line: 37, flags: DIFlagFwdDecl)
!4148 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "gem_open_object", scope: !4096, file: !4097, line: 344, baseType: !4150, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!115, !4146, !4107}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "gem_close_object", scope: !4096, file: !4097, line: 353, baseType: !4154, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4146, !4107}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4096, file: !4097, line: 361, baseType: !4158, size: 64, offset: 1024)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!4146, !327, !453}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4096, file: !4097, line: 372, baseType: !4162, size: 64, offset: 1088)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!115, !327, !4107, !691, !691, !840}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4096, file: !4097, line: 383, baseType: !4166, size: 64, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!115, !327, !4107, !115, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_export", scope: !4096, file: !4097, line: 391, baseType: !4171, size: 64, offset: 1216)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!4174, !4146, !115}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !4097, line: 391, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4096, file: !4097, line: 400, baseType: !4177, size: 64, offset: 1280)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!4146, !327, !4174}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_pin", scope: !4096, file: !4097, line: 408, baseType: !4181, size: 64, offset: 1344)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!115, !4146}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_unpin", scope: !4096, file: !4097, line: 415, baseType: !4143, size: 64, offset: 1408)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_get_sg_table", scope: !4096, file: !4097, line: 423, baseType: !4186, size: 64, offset: 1472)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!4189, !4146}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4097, line: 423, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4096, file: !4097, line: 431, baseType: !4192, size: 64, offset: 1536)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!4146, !327, !4195, !4189}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !4097, line: 39, flags: DIFlagFwdDecl)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vmap", scope: !4096, file: !4097, line: 441, baseType: !4198, size: 64, offset: 1600)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!314, !4146}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vunmap", scope: !4096, file: !4097, line: 449, baseType: !4202, size: 64, offset: 1664)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4146, !314}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_mmap", scope: !4096, file: !4097, line: 460, baseType: !4206, size: 64, offset: 1728)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!115, !4146, !1112}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4096, file: !4097, line: 484, baseType: !4210, size: 64, offset: 1792)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!115, !4107, !327, !4213}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !215, line: 805, size: 256, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4214, file: !215, line: 806, baseType: !549, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4214, file: !215, line: 807, baseType: !549, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4214, file: !215, line: 808, baseType: !549, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4214, file: !215, line: 809, baseType: !549, size: 32, offset: 96)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4214, file: !215, line: 811, baseType: !549, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4214, file: !215, line: 812, baseType: !549, size: 32, offset: 160)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4214, file: !215, line: 813, baseType: !554, size: 64, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4096, file: !4097, line: 502, baseType: !4224, size: 64, offset: 1856)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!115, !4107, !327, !691, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !305, line: 107, baseType: !553)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_destroy", scope: !4096, file: !4097, line: 521, baseType: !4230, size: 64, offset: 1920)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!115, !4107, !327, !691}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "gem_vm_ops", scope: !4096, file: !4097, line: 531, baseType: !1140, size: 64, offset: 1984)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4096, file: !4097, line: 534, baseType: !115, size: 32, offset: 2048)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4096, file: !4097, line: 536, baseType: !115, size: 32, offset: 2080)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4096, file: !4097, line: 538, baseType: !115, size: 32, offset: 2112)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4096, file: !4097, line: 540, baseType: !407, size: 64, offset: 2176)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4096, file: !4097, line: 542, baseType: !407, size: 64, offset: 2240)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4096, file: !4097, line: 544, baseType: !407, size: 64, offset: 2304)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4096, file: !4097, line: 552, baseType: !547, size: 32, offset: 2368)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4096, file: !4097, line: 562, baseType: !4242, size: 64, offset: 2432)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4244)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !4097, line: 562, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4096, file: !4097, line: 564, baseType: !115, size: 32, offset: 2496)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4096, file: !4097, line: 573, baseType: !3043, size: 64, offset: 2560)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !4096, file: !4097, line: 579, baseType: !310, size: 128, offset: 2624)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "firstopen", scope: !4096, file: !4097, line: 580, baseType: !4127, size: 64, offset: 2752)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "preclose", scope: !4096, file: !4097, line: 581, baseType: !4111, size: 64, offset: 2816)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ioctl", scope: !4096, file: !4097, line: 582, baseType: !4251, size: 64, offset: 2880)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!115, !327, !314, !4107}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_quiescent", scope: !4096, file: !4097, line: 583, baseType: !4127, size: 64, offset: 2944)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "context_dtor", scope: !4096, file: !4097, line: 584, baseType: !4256, size: 64, offset: 3008)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!115, !327, !115}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4096, file: !4097, line: 585, baseType: !4260, size: 64, offset: 3072)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!547, !327, !7}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4096, file: !4097, line: 586, baseType: !4264, size: 64, offset: 3136)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!115, !327, !7}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4096, file: !4097, line: 587, baseType: !4268, size: 64, offset: 3200)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !327, !7}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv_size", scope: !4096, file: !4097, line: 588, baseType: !115, size: 32, offset: 3264)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !328, file: !167, line: 98, baseType: !314, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !328, file: !167, line: 101, baseType: !4140, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !328, file: !167, line: 104, baseType: !4140, size: 64, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !328, file: !167, line: 111, baseType: !622, size: 8, offset: 704)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !328, file: !167, line: 119, baseType: !4277, size: 64, offset: 768)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4109, line: 11, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !328, file: !167, line: 129, baseType: !547, size: 32, offset: 832)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !328, file: !167, line: 137, baseType: !622, size: 8, offset: 864)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !328, file: !167, line: 140, baseType: !561, size: 64, offset: 896)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !328, file: !167, line: 143, baseType: !407, size: 64, offset: 960)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !328, file: !167, line: 153, baseType: !1304, size: 192, offset: 1024)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !328, file: !167, line: 160, baseType: !1304, size: 192, offset: 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !328, file: !167, line: 168, baseType: !341, size: 32, offset: 1408)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !328, file: !167, line: 171, baseType: !1304, size: 192, offset: 1472)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !328, file: !167, line: 177, baseType: !310, size: 128, offset: 1664)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !328, file: !167, line: 185, baseType: !310, size: 128, offset: 1792)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !328, file: !167, line: 192, baseType: !1304, size: 192, offset: 1920)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !328, file: !167, line: 199, baseType: !310, size: 128, offset: 2112)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !328, file: !167, line: 208, baseType: !622, size: 8, offset: 2240)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !328, file: !167, line: 213, baseType: !115, size: 32, offset: 2272)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !328, file: !167, line: 228, baseType: !622, size: 8, offset: 2304)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !328, file: !167, line: 238, baseType: !4295, size: 64, offset: 2368)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !167, line: 16, flags: DIFlagFwdDecl)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !328, file: !167, line: 245, baseType: !366, offset: 2432)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !328, file: !167, line: 250, baseType: !366, offset: 2432)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !328, file: !167, line: 273, baseType: !547, size: 32, offset: 2432)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !328, file: !167, line: 276, baseType: !310, size: 128, offset: 2496)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !328, file: !167, line: 284, baseType: !366, offset: 2624)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !328, file: !167, line: 287, baseType: !4303, size: 64, offset: 2624)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !167, line: 287, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !328, file: !167, line: 290, baseType: !4306, size: 64, offset: 2688)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4308, line: 79, flags: DIFlagFwdDecl)
!4308 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/lizy2001/genbc/linux")
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !328, file: !167, line: 297, baseType: !7, size: 32, offset: 2752)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !328, file: !167, line: 300, baseType: !4311, size: 8384, offset: 2816)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4312, line: 358, size: 8384, elements: !4313)
!4312 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4313 = !{!4314, !4315, !4334, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4356, !4357, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4546, !4548, !4549, !4550, !4551, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4311, file: !4312, line: 369, baseType: !1304, size: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4311, file: !4312, line: 379, baseType: !4316, size: 384, offset: 192)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4317, line: 76, size: 384, elements: !4318)
!4317 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4318 = !{!4319, !4333}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4316, file: !4317, line: 80, baseType: !4320, size: 256)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !1305, line: 71, size: 256, elements: !4321)
!4321 = !{!4322, !4323}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4320, file: !1305, line: 72, baseType: !1304, size: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4320, file: !1305, line: 73, baseType: !4324, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4326, line: 31, size: 192, elements: !4327)
!4326 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4327 = !{!4328, !4329, !4330, !4331, !4332}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4325, file: !4326, line: 32, baseType: !1347, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4325, file: !4326, line: 33, baseType: !456, size: 64, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4325, file: !4326, line: 34, baseType: !7, size: 32, offset: 128)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4325, file: !4326, line: 35, baseType: !448, size: 16, offset: 160)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4325, file: !4326, line: 36, baseType: !448, size: 16, offset: 176)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4316, file: !4317, line: 86, baseType: !310, size: 128, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4311, file: !4312, line: 389, baseType: !4335, size: 64, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4317, line: 43, size: 448, elements: !4337)
!4337 = !{!4338, !4339, !4341, !4342, !4343}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4336, file: !4317, line: 45, baseType: !4325, size: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4336, file: !4317, line: 52, baseType: !4340, size: 64, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4336, file: !4317, line: 57, baseType: !310, size: 128, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4336, file: !4317, line: 62, baseType: !622, size: 8, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4336, file: !4317, line: 65, baseType: !622, size: 8, offset: 392)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4311, file: !4312, line: 397, baseType: !1304, size: 192, offset: 640)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4311, file: !4312, line: 405, baseType: !1626, size: 192, offset: 832)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4311, file: !4312, line: 413, baseType: !1626, size: 192, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4311, file: !4312, line: 416, baseType: !1304, size: 192, offset: 1216)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4311, file: !4312, line: 418, baseType: !115, size: 32, offset: 1408)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4311, file: !4312, line: 420, baseType: !310, size: 128, offset: 1472)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4311, file: !4312, line: 426, baseType: !366, offset: 1600)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4311, file: !4312, line: 431, baseType: !115, size: 32, offset: 1600)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4311, file: !4312, line: 435, baseType: !4353, size: 128, offset: 1664)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1627, line: 244, size: 128, elements: !4354)
!4354 = !{!4355}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4353, file: !1627, line: 245, baseType: !874, size: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4311, file: !4312, line: 443, baseType: !310, size: 128, offset: 1792)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4311, file: !4312, line: 453, baseType: !4358, size: 64, offset: 1920)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !492, line: 54, size: 64, elements: !4359)
!4359 = !{!4360}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4358, file: !492, line: 55, baseType: !495, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4311, file: !4312, line: 457, baseType: !2138, size: 256, offset: 1984)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4311, file: !4312, line: 465, baseType: !115, size: 32, offset: 2240)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4311, file: !4312, line: 473, baseType: !310, size: 128, offset: 2304)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4311, file: !4312, line: 482, baseType: !115, size: 32, offset: 2432)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4311, file: !4312, line: 489, baseType: !310, size: 128, offset: 2496)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4311, file: !4312, line: 497, baseType: !115, size: 32, offset: 2624)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4311, file: !4312, line: 504, baseType: !310, size: 128, offset: 2688)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4311, file: !4312, line: 513, baseType: !310, size: 128, offset: 2816)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4311, file: !4312, line: 522, baseType: !310, size: 128, offset: 2944)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4311, file: !4312, line: 524, baseType: !115, size: 32, offset: 3072)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4311, file: !4312, line: 524, baseType: !115, size: 32, offset: 3104)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4311, file: !4312, line: 525, baseType: !115, size: 32, offset: 3136)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4311, file: !4312, line: 525, baseType: !115, size: 32, offset: 3168)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4311, file: !4312, line: 526, baseType: !4375, size: 64, offset: 3200)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4312, line: 47, size: 576, elements: !4378)
!4378 = !{!4379, !4480, !4484, !4485, !4527, !4533, !4537, !4541, !4545}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4377, file: !4312, line: 77, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!4383, !327, !4107, !4465}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4148, line: 117, size: 1600, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4423, !4424, !4428, !4453, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4384, file: !4148, line: 121, baseType: !327, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4384, file: !4148, line: 126, baseType: !310, size: 128, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4384, file: !4148, line: 131, baseType: !4389, size: 256, offset: 192)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4390, line: 55, size: 256, elements: !4391)
!4390 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!4391 = !{!4392, !4393, !4394, !4417, !4418}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4389, file: !4390, line: 56, baseType: !691, size: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4389, file: !4390, line: 57, baseType: !691, size: 32, offset: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4389, file: !4390, line: 58, baseType: !4395, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4390, line: 67, size: 3136, elements: !4397)
!4397 = !{!4398, !4399, !4415}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4396, file: !4390, line: 73, baseType: !115, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4396, file: !4390, line: 82, baseType: !4400, size: 1536, offset: 64)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4401, size: 1536, elements: !4413)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4403, line: 73, size: 960, elements: !4404)
!4403 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/lizy2001/genbc/linux")
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4402, file: !4403, line: 77, baseType: !310, size: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4402, file: !4403, line: 82, baseType: !4389, size: 256, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4402, file: !4403, line: 159, baseType: !691, size: 32, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4402, file: !4403, line: 164, baseType: !2880, size: 256, offset: 416)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4402, file: !4403, line: 169, baseType: !691, size: 32, offset: 672)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4402, file: !4403, line: 177, baseType: !4227, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4402, file: !4403, line: 182, baseType: !327, size: 64, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4402, file: !4403, line: 190, baseType: !310, size: 128, offset: 832)
!4413 = !{!4414}
!4414 = !DISubrange(count: 24)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4396, file: !4390, line: 102, baseType: !4416, size: 1536, offset: 1600)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4228, size: 1536, elements: !4413)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4389, file: !4390, line: 59, baseType: !333, size: 32, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4389, file: !4390, line: 60, baseType: !4419, size: 64, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{null, !4422}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4384, file: !4148, line: 136, baseType: !1891, size: 128, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4384, file: !4148, line: 141, baseType: !4425, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4148, line: 35, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4384, file: !4148, line: 145, baseType: !4429, size: 64, offset: 640)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4431)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4148, line: 42, size: 192, elements: !4432)
!4432 = !{!4433, !4437, !4441}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4431, file: !4148, line: 53, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !4383}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4431, file: !4148, line: 73, baseType: !4438, size: 64, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!115, !4383, !4107, !2863}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4431, file: !4148, line: 97, baseType: !4442, size: 64, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!115, !4383, !4107, !7, !7, !4445, !7}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4447, line: 97, size: 64, elements: !4448)
!4447 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4448 = !{!4449, !4450, !4451, !4452}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4446, file: !4447, line: 98, baseType: !448, size: 16)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4446, file: !4447, line: 99, baseType: !448, size: 16, offset: 16)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4446, file: !4447, line: 100, baseType: !448, size: 16, offset: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4446, file: !4447, line: 101, baseType: !448, size: 16, offset: 48)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4384, file: !4148, line: 150, baseType: !4454, size: 128, offset: 704)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1286)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4384, file: !4148, line: 168, baseType: !4454, size: 128, offset: 832)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4384, file: !4148, line: 175, baseType: !4228, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4384, file: !4148, line: 180, baseType: !7, size: 32, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4384, file: !4148, line: 185, baseType: !7, size: 32, offset: 1056)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4384, file: !4148, line: 190, baseType: !115, size: 32, offset: 1088)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4384, file: !4148, line: 196, baseType: !115, size: 32, offset: 1120)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4384, file: !4148, line: 202, baseType: !115, size: 32, offset: 1152)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4384, file: !4148, line: 206, baseType: !310, size: 128, offset: 1216)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4384, file: !4148, line: 213, baseType: !4464, size: 256, offset: 1344)
!4464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4146, size: 256, elements: !1286)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4467)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !215, line: 494, size: 832, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474, !4476, !4477, !4478}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4467, file: !215, line: 495, baseType: !549, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4467, file: !215, line: 496, baseType: !549, size: 32, offset: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4467, file: !215, line: 497, baseType: !549, size: 32, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4467, file: !215, line: 498, baseType: !549, size: 32, offset: 96)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4467, file: !215, line: 499, baseType: !549, size: 32, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4467, file: !215, line: 525, baseType: !4475, size: 128, offset: 160)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 128, elements: !1286)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4467, file: !215, line: 526, baseType: !4475, size: 128, offset: 288)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4467, file: !215, line: 527, baseType: !4475, size: 128, offset: 416)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4467, file: !215, line: 528, baseType: !4479, size: 256, offset: 576)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 256, elements: !1286)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4377, file: !4312, line: 92, baseType: !4481, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!4425, !4465}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4377, file: !4312, line: 109, baseType: !4115, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4377, file: !4312, line: 119, baseType: !4486, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!113, !327, !4489}
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !114, line: 224, size: 960, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4491, file: !114, line: 230, baseType: !115, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4491, file: !114, line: 231, baseType: !990, size: 16, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4491, file: !114, line: 232, baseType: !990, size: 16, offset: 48)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4491, file: !114, line: 233, baseType: !990, size: 16, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4491, file: !114, line: 234, baseType: !990, size: 16, offset: 80)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4491, file: !114, line: 235, baseType: !990, size: 16, offset: 96)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4491, file: !114, line: 236, baseType: !990, size: 16, offset: 112)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4491, file: !114, line: 237, baseType: !990, size: 16, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4491, file: !114, line: 238, baseType: !990, size: 16, offset: 144)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4491, file: !114, line: 239, baseType: !990, size: 16, offset: 160)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4491, file: !114, line: 240, baseType: !990, size: 16, offset: 176)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4491, file: !114, line: 275, baseType: !547, size: 32, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4491, file: !114, line: 292, baseType: !115, size: 32, offset: 224)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4491, file: !114, line: 293, baseType: !990, size: 16, offset: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4491, file: !114, line: 294, baseType: !990, size: 16, offset: 272)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4491, file: !114, line: 295, baseType: !990, size: 16, offset: 288)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4491, file: !114, line: 296, baseType: !990, size: 16, offset: 304)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4491, file: !114, line: 297, baseType: !990, size: 16, offset: 320)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4491, file: !114, line: 298, baseType: !990, size: 16, offset: 336)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4491, file: !114, line: 299, baseType: !990, size: 16, offset: 352)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4491, file: !114, line: 300, baseType: !990, size: 16, offset: 368)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4491, file: !114, line: 301, baseType: !990, size: 16, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4491, file: !114, line: 302, baseType: !990, size: 16, offset: 400)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4491, file: !114, line: 303, baseType: !990, size: 16, offset: 416)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4491, file: !114, line: 304, baseType: !990, size: 16, offset: 432)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4491, file: !114, line: 305, baseType: !990, size: 16, offset: 448)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4491, file: !114, line: 313, baseType: !990, size: 16, offset: 464)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4491, file: !114, line: 321, baseType: !990, size: 16, offset: 480)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4491, file: !114, line: 350, baseType: !1478, size: 8, offset: 496)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4491, file: !114, line: 361, baseType: !622, size: 8, offset: 504)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4491, file: !114, line: 368, baseType: !310, size: 128, offset: 512)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4491, file: !114, line: 375, baseType: !2880, size: 256, offset: 640)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4491, file: !114, line: 383, baseType: !113, size: 32, offset: 896)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4491, file: !114, line: 390, baseType: !157, size: 32, offset: 928)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4377, file: !4312, line: 196, baseType: !4528, size: 64, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!115, !327, !4531}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !174, line: 642, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4377, file: !4312, line: 278, baseType: !4534, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!115, !327, !4531, !622}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4377, file: !4312, line: 297, baseType: !4538, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!4531, !327}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4377, file: !4312, line: 318, baseType: !4542, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !4531}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4377, file: !4312, line: 333, baseType: !4542, size: 64, offset: 512)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4311, file: !4312, line: 527, baseType: !4547, size: 64, offset: 3264)
!4547 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !305, line: 158, baseType: !2305)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4311, file: !4312, line: 530, baseType: !622, size: 8, offset: 3328)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4311, file: !4312, line: 531, baseType: !622, size: 8, offset: 3336)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4311, file: !4312, line: 532, baseType: !622, size: 8, offset: 3344)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4311, file: !4312, line: 533, baseType: !4552, size: 704, offset: 3392)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !249, line: 115, size: 704, elements: !4553)
!4553 = !{!4554, !4555, !4556, !4557}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4552, file: !249, line: 116, baseType: !2138, size: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4552, file: !249, line: 117, baseType: !3733, size: 320, offset: 256)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4552, file: !249, line: 120, baseType: !2973, size: 64, offset: 576)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4552, file: !249, line: 121, baseType: !115, size: 32, offset: 640)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4311, file: !4312, line: 541, baseType: !1304, size: 192, offset: 4096)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4311, file: !4312, line: 549, baseType: !310, size: 128, offset: 4288)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4311, file: !4312, line: 557, baseType: !4401, size: 64, offset: 4416)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4311, file: !4312, line: 562, baseType: !4401, size: 64, offset: 4480)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4311, file: !4312, line: 567, baseType: !4401, size: 64, offset: 4544)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4311, file: !4312, line: 573, baseType: !4401, size: 64, offset: 4608)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4311, file: !4312, line: 578, baseType: !4401, size: 64, offset: 4672)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4311, file: !4312, line: 583, baseType: !4401, size: 64, offset: 4736)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4311, file: !4312, line: 588, baseType: !4401, size: 64, offset: 4800)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4311, file: !4312, line: 593, baseType: !4401, size: 64, offset: 4864)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4311, file: !4312, line: 598, baseType: !4401, size: 64, offset: 4928)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4311, file: !4312, line: 603, baseType: !4401, size: 64, offset: 4992)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4311, file: !4312, line: 608, baseType: !4401, size: 64, offset: 5056)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4311, file: !4312, line: 613, baseType: !4401, size: 64, offset: 5120)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4311, file: !4312, line: 618, baseType: !4401, size: 64, offset: 5184)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4311, file: !4312, line: 623, baseType: !4401, size: 64, offset: 5248)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4311, file: !4312, line: 628, baseType: !4401, size: 64, offset: 5312)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4311, file: !4312, line: 633, baseType: !4401, size: 64, offset: 5376)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4311, file: !4312, line: 639, baseType: !4401, size: 64, offset: 5440)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4311, file: !4312, line: 644, baseType: !4401, size: 64, offset: 5504)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4311, file: !4312, line: 653, baseType: !4401, size: 64, offset: 5568)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4311, file: !4312, line: 659, baseType: !4401, size: 64, offset: 5632)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4311, file: !4312, line: 665, baseType: !4401, size: 64, offset: 5696)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4311, file: !4312, line: 670, baseType: !4401, size: 64, offset: 5760)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4311, file: !4312, line: 676, baseType: !4401, size: 64, offset: 5824)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4311, file: !4312, line: 681, baseType: !4401, size: 64, offset: 5888)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4311, file: !4312, line: 687, baseType: !4401, size: 64, offset: 5952)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4311, file: !4312, line: 693, baseType: !4401, size: 64, offset: 6016)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4311, file: !4312, line: 698, baseType: !4401, size: 64, offset: 6080)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4311, file: !4312, line: 703, baseType: !4401, size: 64, offset: 6144)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4311, file: !4312, line: 708, baseType: !4401, size: 64, offset: 6208)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4311, file: !4312, line: 713, baseType: !4401, size: 64, offset: 6272)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4311, file: !4312, line: 718, baseType: !4401, size: 64, offset: 6336)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4311, file: !4312, line: 723, baseType: !4401, size: 64, offset: 6400)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4311, file: !4312, line: 728, baseType: !4401, size: 64, offset: 6464)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4311, file: !4312, line: 733, baseType: !4401, size: 64, offset: 6528)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4311, file: !4312, line: 738, baseType: !4401, size: 64, offset: 6592)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4311, file: !4312, line: 743, baseType: !4401, size: 64, offset: 6656)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4311, file: !4312, line: 748, baseType: !4401, size: 64, offset: 6720)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4311, file: !4312, line: 752, baseType: !4401, size: 64, offset: 6784)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4311, file: !4312, line: 758, baseType: !4401, size: 64, offset: 6848)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4311, file: !4312, line: 763, baseType: !4401, size: 64, offset: 6912)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4311, file: !4312, line: 768, baseType: !4401, size: 64, offset: 6976)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4311, file: !4312, line: 773, baseType: !4401, size: 64, offset: 7040)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4311, file: !4312, line: 778, baseType: !4401, size: 64, offset: 7104)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4311, file: !4312, line: 784, baseType: !4401, size: 64, offset: 7168)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4311, file: !4312, line: 790, baseType: !4401, size: 64, offset: 7232)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4311, file: !4312, line: 795, baseType: !4401, size: 64, offset: 7296)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4311, file: !4312, line: 801, baseType: !4401, size: 64, offset: 7360)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4311, file: !4312, line: 806, baseType: !4401, size: 64, offset: 7424)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4311, file: !4312, line: 813, baseType: !4401, size: 64, offset: 7488)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4311, file: !4312, line: 820, baseType: !4401, size: 64, offset: 7552)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4311, file: !4312, line: 827, baseType: !4401, size: 64, offset: 7616)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4311, file: !4312, line: 835, baseType: !4401, size: 64, offset: 7680)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4311, file: !4312, line: 843, baseType: !4401, size: 64, offset: 7744)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4311, file: !4312, line: 850, baseType: !4401, size: 64, offset: 7808)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4311, file: !4312, line: 856, baseType: !4401, size: 64, offset: 7872)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4311, file: !4312, line: 862, baseType: !4401, size: 64, offset: 7936)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4311, file: !4312, line: 865, baseType: !691, size: 32, offset: 8000)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4311, file: !4312, line: 865, baseType: !691, size: 32, offset: 8032)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4311, file: !4312, line: 872, baseType: !622, size: 8, offset: 8064)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4311, file: !4312, line: 884, baseType: !622, size: 8, offset: 8072)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4311, file: !4312, line: 892, baseType: !622, size: 8, offset: 8080)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4311, file: !4312, line: 906, baseType: !622, size: 8, offset: 8088)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4311, file: !4312, line: 912, baseType: !622, size: 8, offset: 8096)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4311, file: !4312, line: 919, baseType: !622, size: 8, offset: 8104)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4311, file: !4312, line: 927, baseType: !622, size: 8, offset: 8112)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4311, file: !4312, line: 933, baseType: !4401, size: 64, offset: 8128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4311, file: !4312, line: 936, baseType: !691, size: 32, offset: 8192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4311, file: !4312, line: 936, baseType: !691, size: 32, offset: 8224)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4311, file: !4312, line: 945, baseType: !4531, size: 64, offset: 8256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4311, file: !4312, line: 947, baseType: !4630, size: 64, offset: 8320)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4632)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4633, line: 1372, size: 64, elements: !4634)
!4633 = !DIFile(filename: "./include/drm/drm_modeset_helper_vtables.h", directory: "/home/lizy2001/genbc/linux")
!4634 = !{!4635}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !4632, file: !4633, line: 1408, baseType: !4542, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !328, file: !167, line: 303, baseType: !1304, size: 192, offset: 11200)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !328, file: !167, line: 306, baseType: !1626, size: 192, offset: 11392)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !328, file: !167, line: 309, baseType: !4639, size: 64, offset: 11584)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !167, line: 19, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !328, file: !167, line: 312, baseType: !4642, size: 64, offset: 11648)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !167, line: 20, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !328, file: !167, line: 322, baseType: !166, size: 32, offset: 11712)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !328, file: !167, line: 330, baseType: !4646, size: 64, offset: 11776)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !167, line: 21, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !324, file: !174, line: 1174, baseType: !346, size: 64, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !324, file: !174, line: 1176, baseType: !4650, size: 64, offset: 128)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4652)
!4652 = !{!4653, !4654, !4658}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4651, file: !73, line: 100, baseType: !443, size: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4651, file: !73, line: 101, baseType: !4655, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!438, !346, !4650, !407}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4651, file: !73, line: 103, baseType: !4659, size: 64, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!438, !346, !4650, !354, !453}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !324, file: !174, line: 1186, baseType: !310, size: 128, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !324, file: !174, line: 1189, baseType: !4389, size: 256, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !174, line: 1192, baseType: !407, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !324, file: !174, line: 1199, baseType: !1304, size: 192, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !324, file: !174, line: 1207, baseType: !7, size: 32, offset: 832)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !324, file: !174, line: 1213, baseType: !115, size: 32, offset: 864)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !324, file: !174, line: 1215, baseType: !115, size: 32, offset: 896)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !324, file: !174, line: 1221, baseType: !622, size: 8, offset: 928)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !324, file: !174, line: 1227, baseType: !622, size: 8, offset: 936)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !324, file: !174, line: 1233, baseType: !622, size: 8, offset: 944)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !324, file: !174, line: 1241, baseType: !622, size: 8, offset: 952)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !324, file: !174, line: 1249, baseType: !173, size: 32, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !324, file: !174, line: 1256, baseType: !310, size: 128, offset: 1024)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !324, file: !174, line: 1263, baseType: !179, size: 32, offset: 1152)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !324, file: !174, line: 1271, baseType: !310, size: 128, offset: 1216)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !324, file: !174, line: 1282, baseType: !4678, size: 1216, offset: 1344)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !174, line: 428, size: 1216, elements: !4679)
!4679 = !{!4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4714, !4715}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4678, file: !174, line: 432, baseType: !7, size: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4678, file: !174, line: 437, baseType: !7, size: 32, offset: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !4678, file: !174, line: 442, baseType: !7, size: 32, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !4678, file: !174, line: 447, baseType: !184, size: 32, offset: 96)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !4678, file: !174, line: 461, baseType: !115, size: 32, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !4678, file: !174, line: 469, baseType: !547, size: 32, offset: 160)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !4678, file: !174, line: 476, baseType: !3973, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !4678, file: !174, line: 480, baseType: !7, size: 32, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4678, file: !174, line: 487, baseType: !547, size: 32, offset: 288)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !4678, file: !174, line: 493, baseType: !115, size: 32, offset: 320)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !4678, file: !174, line: 498, baseType: !622, size: 8, offset: 352)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !4678, file: !174, line: 506, baseType: !622, size: 8, offset: 360)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !4678, file: !174, line: 511, baseType: !622, size: 8, offset: 368)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !4678, file: !174, line: 517, baseType: !622, size: 8, offset: 376)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_dc_modes", scope: !4678, file: !174, line: 523, baseType: !1478, size: 8, offset: 384)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !4678, file: !174, line: 528, baseType: !1478, size: 8, offset: 392)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !4678, file: !174, line: 533, baseType: !4697, size: 704, offset: 448)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !174, line: 185, size: 704, elements: !4698)
!4698 = !{!4699, !4709, !4711, !4712, !4713}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !4697, file: !174, line: 187, baseType: !4700, size: 32)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !174, line: 163, size: 32, elements: !4701)
!4701 = !{!4702, !4703, !4704}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4700, file: !174, line: 167, baseType: !622, size: 8)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !4700, file: !174, line: 171, baseType: !622, size: 8, offset: 8)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !4700, file: !174, line: 175, baseType: !4705, size: 16, offset: 16)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !174, line: 146, size: 16, elements: !4706)
!4706 = !{!4707, !4708}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4705, file: !174, line: 150, baseType: !622, size: 8)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !4705, file: !174, line: 154, baseType: !622, size: 8, offset: 8)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !4697, file: !174, line: 195, baseType: !4710, size: 256, offset: 64)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 256, elements: !1286)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !4697, file: !174, line: 203, baseType: !4710, size: 256, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_map", scope: !4697, file: !174, line: 206, baseType: !553, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !4697, file: !174, line: 209, baseType: !1478, size: 8, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !4678, file: !174, line: 538, baseType: !622, size: 8, offset: 1152)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !4678, file: !174, line: 543, baseType: !4716, size: 16, offset: 1160)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !174, line: 269, size: 16, elements: !4717)
!4717 = !{!4718, !4719}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !4716, file: !174, line: 270, baseType: !1478, size: 8)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !4716, file: !174, line: 271, baseType: !1478, size: 8, offset: 8)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !324, file: !174, line: 1285, baseType: !4721, size: 64, offset: 2560)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !174, line: 749, size: 896, elements: !4724)
!4724 = !{!4725, !4730, !4734, !4738, !4739, !4743, !4747, !4751, !4752, !4753, !5295, !5299, !5303, !5309}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4723, file: !174, line: 766, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!115, !4729, !115}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4723, file: !174, line: 778, baseType: !4731, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !4729}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4723, file: !174, line: 806, baseType: !4735, size: 64, offset: 128)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!179, !4729, !622}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4723, file: !174, line: 823, baseType: !4731, size: 64, offset: 192)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !4723, file: !174, line: 848, baseType: !4740, size: 64, offset: 256)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!115, !4729, !691, !691}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4723, file: !174, line: 864, baseType: !4744, size: 64, offset: 320)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!115, !4729, !4401, !4228}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4723, file: !174, line: 883, baseType: !4748, size: 64, offset: 384)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!115, !4729}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4723, file: !174, line: 896, baseType: !4731, size: 64, offset: 448)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4723, file: !174, line: 906, baseType: !4731, size: 64, offset: 512)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4723, file: !174, line: 939, baseType: !4754, size: 64, offset: 576)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!4757, !4729}
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !174, line: 605, size: 1216, elements: !4759)
!4759 = !{!4760, !4761, !5191, !5263, !5264, !5265, !5266, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4758, file: !174, line: 607, baseType: !4729, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4758, file: !174, line: 615, baseType: !4762, size: 64, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4764, line: 939, size: 7680, elements: !4765)
!4764 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/lizy2001/genbc/linux")
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4771, !4772, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !5109, !5110, !5112, !5158, !5159, !5160, !5161, !5162, !5184, !5185, !5186, !5187, !5188}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4763, file: !4764, line: 941, baseType: !327, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4763, file: !4764, line: 943, baseType: !3835, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4763, file: !4764, line: 951, baseType: !310, size: 128, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4763, file: !4764, line: 954, baseType: !407, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4763, file: !4764, line: 966, baseType: !4316, size: 384, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4763, file: !4764, line: 969, baseType: !4389, size: 256, offset: 704)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4763, file: !4764, line: 978, baseType: !4773, size: 64, offset: 960)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !205, line: 575, size: 5184, elements: !4775)
!4775 = !{!4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4936, !4937, !4938, !4939, !4954, !4955, !4956, !4957, !4958, !4959, !4960}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4774, file: !205, line: 577, baseType: !327, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4774, file: !205, line: 586, baseType: !310, size: 128, offset: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4774, file: !205, line: 589, baseType: !407, size: 64, offset: 192)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4774, file: !205, line: 600, baseType: !4316, size: 384, offset: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4774, file: !205, line: 603, baseType: !4389, size: 256, offset: 640)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !4774, file: !205, line: 609, baseType: !691, size: 32, offset: 896)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !4774, file: !205, line: 611, baseType: !4169, size: 64, offset: 960)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !4774, file: !205, line: 613, baseType: !7, size: 32, offset: 1024)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !4774, file: !205, line: 618, baseType: !622, size: 8, offset: 1056)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !4774, file: !205, line: 621, baseType: !4227, size: 64, offset: 1088)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !4774, file: !205, line: 623, baseType: !7, size: 32, offset: 1152)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4774, file: !205, line: 632, baseType: !4762, size: 64, offset: 1216)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4774, file: !205, line: 641, baseType: !4383, size: 64, offset: 1280)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !4774, file: !205, line: 649, baseType: !4383, size: 64, offset: 1344)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4774, file: !205, line: 652, baseType: !4791, size: 64, offset: 1408)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4793)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !205, line: 256, size: 832, elements: !4794)
!4794 = !{!4795, !4799, !4803, !4807, !4808, !4812, !4907, !4911, !4915, !4921, !4925, !4926, !4932}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !4793, file: !205, line: 283, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!115, !4773, !4762, !4383, !115, !115, !7, !7, !691, !691, !691, !691, !4335}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !4793, file: !205, line: 306, baseType: !4800, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!115, !4773, !4335}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4793, file: !205, line: 316, baseType: !4804, size: 64, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4773}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4793, file: !205, line: 328, baseType: !4804, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4793, file: !205, line: 344, baseType: !4809, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!115, !4773, !4401, !4228}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4793, file: !205, line: 378, baseType: !4813, size: 64, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!4816, !4773}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !205, line: 47, size: 1216, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4878, !4879, !4880, !4881, !4882, !4883, !4893, !4901, !4902, !4903, !4906}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4817, file: !205, line: 49, baseType: !4773, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4817, file: !205, line: 57, baseType: !4762, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4817, file: !205, line: 65, baseType: !4383, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4817, file: !205, line: 80, baseType: !4823, size: 64, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !297, line: 65, size: 512, elements: !4825)
!4825 = !{!4826, !4827, !4856, !4862, !4863, !4864, !4865, !4866}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4824, file: !297, line: 66, baseType: !1195, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4824, file: !297, line: 67, baseType: !4828, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !297, line: 125, size: 576, elements: !4831)
!4831 = !{!4832, !4833, !4837, !4838, !4842, !4843, !4847, !4851, !4855}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !4830, file: !297, line: 132, baseType: !622, size: 8)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !4830, file: !297, line: 143, baseType: !4834, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!354, !4823}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !4830, file: !297, line: 155, baseType: !4834, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !4830, file: !297, line: 192, baseType: !4839, size: 64, offset: 192)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!622, !4823}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !4830, file: !297, line: 209, baseType: !4839, size: 64, offset: 256)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4830, file: !297, line: 231, baseType: !4844, size: 64, offset: 320)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!250, !4823, !622, !250}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4830, file: !297, line: 242, baseType: !4848, size: 64, offset: 384)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{null, !4823}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !4830, file: !297, line: 252, baseType: !4852, size: 64, offset: 448)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !4823, !407, !115}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !4830, file: !297, line: 262, baseType: !4852, size: 64, offset: 512)
!4856 = !DIDerivedType(tag: DW_TAG_member, scope: !4824, file: !297, line: 84, baseType: !4857, size: 128, offset: 128)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4824, file: !297, line: 84, size: 128, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4857, file: !297, line: 85, baseType: !310, size: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4857, file: !297, line: 87, baseType: !1426, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4857, file: !297, line: 89, baseType: !497, size: 128, align: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4824, file: !297, line: 91, baseType: !553, size: 64, offset: 256)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !4824, file: !297, line: 92, baseType: !553, size: 64, offset: 320)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4824, file: !297, line: 93, baseType: !456, size: 64, offset: 384)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4824, file: !297, line: 94, baseType: !333, size: 32, offset: 448)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4824, file: !297, line: 95, baseType: !115, size: 32, offset: 480)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !4817, file: !205, line: 89, baseType: !1743, size: 32, offset: 256)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !4817, file: !205, line: 96, baseType: !1743, size: 32, offset: 288)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !4817, file: !205, line: 100, baseType: !691, size: 32, offset: 320)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !4817, file: !205, line: 100, baseType: !691, size: 32, offset: 352)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !4817, file: !205, line: 106, baseType: !691, size: 32, offset: 384)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !4817, file: !205, line: 111, baseType: !691, size: 32, offset: 416)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !4817, file: !205, line: 114, baseType: !691, size: 32, offset: 448)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !4817, file: !205, line: 114, baseType: !691, size: 32, offset: 480)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4817, file: !205, line: 122, baseType: !990, size: 16, offset: 512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !4817, file: !205, line: 130, baseType: !4877, size: 16, offset: 528)
!4877 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !305, line: 103, baseType: !990)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !4817, file: !205, line: 137, baseType: !7, size: 32, offset: 544)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !4817, file: !205, line: 152, baseType: !7, size: 32, offset: 576)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !4817, file: !205, line: 161, baseType: !7, size: 32, offset: 608)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !4817, file: !205, line: 168, baseType: !192, size: 32, offset: 640)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !4817, file: !205, line: 175, baseType: !199, size: 32, offset: 672)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !4817, file: !205, line: 185, baseType: !4884, size: 64, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4403, line: 209, size: 704, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4885, file: !4403, line: 210, baseType: !4389, size: 256)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4885, file: !4403, line: 211, baseType: !327, size: 64, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !4885, file: !4403, line: 212, baseType: !310, size: 128, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !4885, file: !4403, line: 213, baseType: !310, size: 128, offset: 448)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4885, file: !4403, line: 214, baseType: !453, size: 64, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4885, file: !4403, line: 215, baseType: !314, size: 64, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4817, file: !205, line: 207, baseType: !4894, size: 128, offset: 768)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !4895, line: 43, size: 128, elements: !4896)
!4895 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!4896 = !{!4897, !4898, !4899, !4900}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4894, file: !4895, line: 44, baseType: !115, size: 32)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4894, file: !4895, line: 44, baseType: !115, size: 32, offset: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4894, file: !4895, line: 44, baseType: !115, size: 32, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4894, file: !4895, line: 44, baseType: !115, size: 32, offset: 96)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4817, file: !205, line: 207, baseType: !4894, size: 128, offset: 896)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !4817, file: !205, line: 215, baseType: !622, size: 8, offset: 1024)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4817, file: !205, line: 223, baseType: !4904, size: 64, offset: 1088)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !174, line: 649, flags: DIFlagFwdDecl)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4817, file: !205, line: 226, baseType: !4531, size: 64, offset: 1152)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4793, file: !205, line: 388, baseType: !4908, size: 64, offset: 384)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{null, !4773, !4816}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4793, file: !205, line: 433, baseType: !4912, size: 64, offset: 448)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!115, !4773, !4816, !4401, !4228}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4793, file: !205, line: 456, baseType: !4916, size: 64, offset: 512)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!115, !4773, !4919, !4401, !4227}
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4817)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4793, file: !205, line: 473, baseType: !4922, size: 64, offset: 576)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!115, !4773}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4793, file: !205, line: 484, baseType: !4804, size: 64, offset: 640)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4793, file: !205, line: 495, baseType: !4927, size: 64, offset: 704)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{null, !4930, !4919}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !174, line: 42, flags: DIFlagFwdDecl)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !4793, file: !205, line: 514, baseType: !4933, size: 64, offset: 768)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!622, !4773, !691, !4228}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4774, file: !205, line: 655, baseType: !4396, size: 3136, offset: 1472)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4774, file: !205, line: 658, baseType: !204, size: 32, offset: 4608)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4774, file: !205, line: 664, baseType: !7, size: 32, offset: 4640)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4774, file: !205, line: 667, baseType: !4940, size: 64, offset: 4672)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !4633, line: 1170, size: 448, elements: !4943)
!4943 = !{!4944, !4948, !4949, !4950, !4951, !4952, !4953}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !4942, file: !4633, line: 1202, baseType: !4945, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!115, !4773, !4816}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !4942, file: !4633, line: 1213, baseType: !4908, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4942, file: !4633, line: 1252, baseType: !4945, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_update", scope: !4942, file: !4633, line: 1270, baseType: !4908, size: 64, offset: 192)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !4942, file: !4633, line: 1294, baseType: !4908, size: 64, offset: 256)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_check", scope: !4942, file: !4633, line: 1313, baseType: !4945, size: 64, offset: 320)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_update", scope: !4942, file: !4633, line: 1352, baseType: !4908, size: 64, offset: 384)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4774, file: !205, line: 682, baseType: !4816, size: 64, offset: 4736)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !4774, file: !205, line: 689, baseType: !4401, size: 64, offset: 4800)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !4774, file: !205, line: 695, baseType: !4401, size: 64, offset: 4864)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !4774, file: !205, line: 701, baseType: !4401, size: 64, offset: 4928)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !4774, file: !205, line: 709, baseType: !4401, size: 64, offset: 4992)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !4774, file: !205, line: 718, baseType: !4401, size: 64, offset: 5056)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !4774, file: !205, line: 726, baseType: !4401, size: 64, offset: 5120)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4763, file: !4764, line: 987, baseType: !4773, size: 64, offset: 1024)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4763, file: !4764, line: 993, baseType: !7, size: 32, offset: 1088)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4763, file: !4764, line: 1002, baseType: !115, size: 32, offset: 1120)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4763, file: !4764, line: 1010, baseType: !115, size: 32, offset: 1152)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4763, file: !4764, line: 1020, baseType: !622, size: 8, offset: 1184)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4763, file: !4764, line: 1030, baseType: !4491, size: 960, offset: 1216)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4763, file: !4764, line: 1046, baseType: !4491, size: 960, offset: 2176)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4763, file: !4764, line: 1055, baseType: !115, size: 32, offset: 3136)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4763, file: !4764, line: 1063, baseType: !115, size: 32, offset: 3168)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4763, file: !4764, line: 1066, baseType: !4971, size: 64, offset: 3200)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4973)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4764, line: 409, size: 1536, elements: !4974)
!4974 = !{!4975, !4979, !4983, !4987, !4991, !4996, !4997, !5013, !5019, !5023, !5027, !5060, !5064, !5068, !5074, !5078, !5079, !5083, !5088, !5094, !5098, !5102, !5103, !5104}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4973, file: !4764, line: 420, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{null, !4762}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !4973, file: !4764, line: 443, baseType: !4980, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!115, !4762, !4107, !691, !691, !691}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !4973, file: !4764, line: 465, baseType: !4984, size: 64, offset: 128)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!115, !4762, !4107, !691, !691, !691, !1743, !1743}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !4973, file: !4764, line: 485, baseType: !4988, size: 64, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!115, !4762, !115, !115}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !4973, file: !4764, line: 500, baseType: !4992, size: 64, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!115, !4762, !4995, !4995, !4995, !691, !4335}
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4973, file: !4764, line: 511, baseType: !4976, size: 64, offset: 320)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4973, file: !4764, line: 527, baseType: !4998, size: 64, offset: 384)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!115, !5001, !4335}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4764, line: 1190, size: 384, elements: !5003)
!5003 = !{!5004, !5005, !5006, !5008, !5009, !5010, !5012}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5002, file: !4764, line: 1191, baseType: !4383, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5002, file: !4764, line: 1192, baseType: !4762, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5002, file: !4764, line: 1193, baseType: !5007, size: 64, offset: 128)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5002, file: !4764, line: 1195, baseType: !691, size: 32, offset: 192)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5002, file: !4764, line: 1196, baseType: !691, size: 32, offset: 224)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5002, file: !4764, line: 1198, baseType: !5011, size: 64, offset: 256)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5002, file: !4764, line: 1199, baseType: !453, size: 64, offset: 320)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !4973, file: !4764, line: 583, baseType: !5014, size: 64, offset: 448)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!115, !4762, !4383, !5017, !691, !4335}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4764, line: 71, flags: DIFlagFwdDecl)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !4973, file: !4764, line: 602, baseType: !5020, size: 64, offset: 512)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!115, !4762, !4383, !5017, !691, !691, !4335}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4973, file: !4764, line: 622, baseType: !5024, size: 64, offset: 576)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!115, !4762, !4401, !4228}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4973, file: !4764, line: 656, baseType: !5028, size: 64, offset: 640)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!5031, !4762}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4764, line: 99, size: 2624, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5032, file: !4764, line: 101, baseType: !4762, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5032, file: !4764, line: 108, baseType: !622, size: 8, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5032, file: !4764, line: 123, baseType: !622, size: 8, offset: 72)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5032, file: !4764, line: 129, baseType: !622, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5032, file: !4764, line: 141, baseType: !622, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5032, file: !4764, line: 148, baseType: !622, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5032, file: !4764, line: 159, baseType: !622, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5032, file: !4764, line: 165, baseType: !622, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5032, file: !4764, line: 171, baseType: !622, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5032, file: !4764, line: 207, baseType: !622, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5032, file: !4764, line: 213, baseType: !547, size: 32, offset: 96)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5032, file: !4764, line: 219, baseType: !547, size: 32, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5032, file: !4764, line: 225, baseType: !547, size: 32, offset: 160)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5032, file: !4764, line: 240, baseType: !4491, size: 960, offset: 192)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5032, file: !4764, line: 257, baseType: !4491, size: 960, offset: 1152)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5032, file: !4764, line: 263, baseType: !4884, size: 64, offset: 2112)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5032, file: !4764, line: 272, baseType: !4884, size: 64, offset: 2176)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5032, file: !4764, line: 280, baseType: !4884, size: 64, offset: 2240)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5032, file: !4764, line: 289, baseType: !4884, size: 64, offset: 2304)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5032, file: !4764, line: 297, baseType: !547, size: 32, offset: 2368)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5032, file: !4764, line: 305, baseType: !622, size: 8, offset: 2400)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5032, file: !4764, line: 314, baseType: !622, size: 8, offset: 2408)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5032, file: !4764, line: 325, baseType: !622, size: 8, offset: 2416)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5032, file: !4764, line: 382, baseType: !5017, size: 64, offset: 2432)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5032, file: !4764, line: 391, baseType: !4904, size: 64, offset: 2496)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5032, file: !4764, line: 394, baseType: !4531, size: 64, offset: 2560)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4973, file: !4764, line: 666, baseType: !5061, size: 64, offset: 704)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !4762, !5031}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4973, file: !4764, line: 711, baseType: !5065, size: 64, offset: 768)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!115, !4762, !5031, !4401, !4228}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4973, file: !4764, line: 733, baseType: !5069, size: 64, offset: 832)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!115, !4762, !5072, !4401, !4227}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5032)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4973, file: !4764, line: 751, baseType: !5075, size: 64, offset: 896)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!115, !4762}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4973, file: !4764, line: 762, baseType: !4976, size: 64, offset: 960)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !4973, file: !4764, line: 791, baseType: !5080, size: 64, offset: 1024)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!115, !4762, !354}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !4973, file: !4764, line: 807, baseType: !5084, size: 64, offset: 1088)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!115, !4762, !354, !5087}
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !4973, file: !4764, line: 829, baseType: !5089, size: 64, offset: 1152)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!5092, !4762, !5087}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4973, file: !4764, line: 841, baseType: !5095, size: 64, offset: 1216)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !4930, !5072}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4973, file: !4764, line: 868, baseType: !5099, size: 64, offset: 1280)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!547, !4762}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4973, file: !4764, line: 881, baseType: !5075, size: 64, offset: 1344)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4973, file: !4764, line: 889, baseType: !4976, size: 64, offset: 1408)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !4973, file: !4764, line: 927, baseType: !5105, size: 64, offset: 1472)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!622, !4762, !840, !5108, !622}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4763, file: !4764, line: 1072, baseType: !691, size: 32, offset: 3264)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4763, file: !4764, line: 1078, baseType: !5111, size: 64, offset: 3328)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4763, file: !4764, line: 1081, baseType: !5113, size: 64, offset: 3392)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5115)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4633, line: 61, size: 1024, elements: !5116)
!5116 = !{!5117, !5121, !5122, !5123, !5127, !5131, !5135, !5136, !5140, !5145, !5146, !5150, !5151, !5152, !5153, !5154}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5115, file: !4633, line: 78, baseType: !5118, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{null, !4762, !115}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5115, file: !4633, line: 93, baseType: !4976, size: 64, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5115, file: !4633, line: 108, baseType: !4976, size: 64, offset: 128)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5115, file: !4633, line: 141, baseType: !5124, size: 64, offset: 192)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!113, !4762, !4489}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5115, file: !4633, line: 187, baseType: !5128, size: 64, offset: 256)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!622, !4762, !4489, !5007}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5115, file: !4633, line: 206, baseType: !5132, size: 64, offset: 320)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!115, !4762, !5007, !5007, !115, !115, !4383}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_nofb", scope: !5115, file: !4633, line: 231, baseType: !4976, size: 64, offset: 384)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base", scope: !5115, file: !4633, line: 250, baseType: !5137, size: 64, offset: 448)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!115, !4762, !115, !115, !4383}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base_atomic", scope: !5115, file: !4633, line: 267, baseType: !5141, size: 64, offset: 512)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!115, !4762, !4383, !115, !115, !5144}
!5144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_set_atomic", file: !4633, line: 51, flags: DIFlagFwdDecl)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5115, file: !4633, line: 302, baseType: !4976, size: 64, offset: 576)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5115, file: !4633, line: 355, baseType: !5147, size: 64, offset: 640)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!115, !4762, !5031}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_begin", scope: !5115, file: !4633, line: 376, baseType: !5061, size: 64, offset: 704)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flush", scope: !5115, file: !4633, line: 400, baseType: !5061, size: 64, offset: 768)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5115, file: !4633, line: 426, baseType: !5061, size: 64, offset: 832)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5115, file: !4633, line: 451, baseType: !5061, size: 64, offset: 896)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "get_scanout_position", scope: !5115, file: !4633, line: 496, baseType: !5155, size: 64, offset: 960)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!622, !4762, !622, !840, !840, !5108, !5108, !4489}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4763, file: !4764, line: 1084, baseType: !4396, size: 3136, offset: 3456)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4763, file: !4764, line: 1099, baseType: !5031, size: 64, offset: 6592)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4763, file: !4764, line: 1116, baseType: !310, size: 128, offset: 6656)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4763, file: !4764, line: 1123, baseType: !366, offset: 6784)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4763, file: !4764, line: 1139, baseType: !5163, size: 448, offset: 6784)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5164, line: 53, size: 448, elements: !5165)
!5164 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/lizy2001/genbc/linux")
!5165 = !{!5166, !5167, !5168, !5169, !5170, !5180, !5181, !5182, !5183}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5163, file: !5164, line: 54, baseType: !366)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5163, file: !5164, line: 55, baseType: !354, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5163, file: !5164, line: 56, baseType: !622, size: 8, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5163, file: !5164, line: 56, baseType: !622, size: 8, offset: 72)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5163, file: !5164, line: 57, baseType: !5171, size: 64, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5164, line: 33, size: 384, elements: !5173)
!5173 = !{!5174, !5175, !5176}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5172, file: !5164, line: 34, baseType: !622, size: 8)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5172, file: !5164, line: 35, baseType: !691, size: 32, offset: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5172, file: !5164, line: 36, baseType: !5177, size: 320, offset: 64)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 320, elements: !5178)
!5178 = !{!5179}
!5179 = !DISubrange(count: 10)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5163, file: !5164, line: 58, baseType: !115, size: 32, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5163, file: !5164, line: 58, baseType: !115, size: 32, offset: 224)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5163, file: !5164, line: 59, baseType: !453, size: 64, offset: 256)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5163, file: !5164, line: 60, baseType: !1607, size: 128, offset: 320)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4763, file: !4764, line: 1146, baseType: !7, size: 32, offset: 7232)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4763, file: !4764, line: 1153, baseType: !366, offset: 7264)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4763, file: !4764, line: 1160, baseType: !456, size: 64, offset: 7296)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4763, file: !4764, line: 1167, baseType: !2880, size: 256, offset: 7360)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4763, file: !4764, line: 1174, baseType: !5189, size: 64, offset: 7616)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4764, line: 56, flags: DIFlagFwdDecl)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !4758, file: !174, line: 633, baseType: !5192, size: 64, offset: 128)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5194, line: 99, size: 960, elements: !5195)
!5194 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/lizy2001/genbc/linux")
!5195 = !{!5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5221}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5193, file: !5194, line: 100, baseType: !327, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5193, file: !5194, line: 101, baseType: !310, size: 128, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5193, file: !5194, line: 103, baseType: !4389, size: 256, offset: 192)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5193, file: !5194, line: 104, baseType: !407, size: 64, offset: 448)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5193, file: !5194, line: 131, baseType: !115, size: 32, offset: 512)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5193, file: !5194, line: 137, baseType: !7, size: 32, offset: 544)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5193, file: !5194, line: 150, baseType: !691, size: 32, offset: 576)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5193, file: !5194, line: 171, baseType: !691, size: 32, offset: 608)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5193, file: !5194, line: 178, baseType: !4762, size: 64, offset: 640)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5193, file: !5194, line: 184, baseType: !310, size: 128, offset: 704)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5193, file: !5194, line: 186, baseType: !5207, size: 64, offset: 832)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5209)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5194, line: 40, size: 256, elements: !5210)
!5210 = !{!5211, !5215, !5216, !5220}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5209, file: !5194, line: 48, baseType: !5212, size: 64)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{null, !5192}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5209, file: !5194, line: 57, baseType: !5212, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5209, file: !5194, line: 72, baseType: !5217, size: 64, offset: 128)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!115, !5192}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5209, file: !5194, line: 83, baseType: !5212, size: 64, offset: 192)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5193, file: !5194, line: 187, baseType: !5222, size: 64, offset: 896)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5224)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !4633, line: 519, size: 832, elements: !5225)
!5225 = !{!5226, !5230, !5234, !5238, !5239, !5240, !5244, !5248, !5252, !5256, !5257, !5258, !5259}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5224, file: !4633, line: 536, baseType: !5227, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{null, !5192, !115}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5224, file: !4633, line: 569, baseType: !5231, size: 64, offset: 64)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!113, !5192, !4489}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5224, file: !4633, line: 612, baseType: !5235, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!622, !5192, !4489, !5007}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5224, file: !4633, line: 629, baseType: !5212, size: 64, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5224, file: !4633, line: 644, baseType: !5212, size: 64, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5224, file: !4633, line: 668, baseType: !5241, size: 64, offset: 320)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !5192, !5007, !5007}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode_set", scope: !5224, file: !4633, line: 691, baseType: !5245, size: 64, offset: 384)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !5192, !5031, !4757}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5224, file: !4633, line: 710, baseType: !5249, size: 64, offset: 448)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!179, !5192, !4729}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5224, file: !4633, line: 733, baseType: !5253, size: 64, offset: 512)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{null, !5192, !4531}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5224, file: !4633, line: 756, baseType: !5253, size: 64, offset: 576)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5224, file: !4633, line: 790, baseType: !5212, size: 64, offset: 640)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5224, file: !4633, line: 808, baseType: !5212, size: 64, offset: 704)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5224, file: !4633, line: 846, baseType: !5260, size: 64, offset: 768)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!115, !5192, !5031, !4757}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !4758, file: !174, line: 639, baseType: !210, size: 32, offset: 192)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4758, file: !174, line: 642, baseType: !4531, size: 64, offset: 256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4758, file: !174, line: 649, baseType: !4904, size: 64, offset: 320)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !4758, file: !174, line: 652, baseType: !5267, size: 384, offset: 384)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !174, line: 590, size: 384, elements: !5268)
!5268 = !{!5269, !5270, !5277, !5278, !5279, !5280, !5281, !5282, !5283}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5267, file: !174, line: 591, baseType: !214, size: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5267, file: !174, line: 592, baseType: !5271, size: 128, offset: 32)
!5271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !174, line: 556, size: 128, elements: !5272)
!5272 = !{!5273, !5274, !5275, !5276}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5271, file: !174, line: 560, baseType: !7, size: 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5271, file: !174, line: 565, baseType: !7, size: 32, offset: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5271, file: !174, line: 570, baseType: !7, size: 32, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5271, file: !174, line: 575, baseType: !7, size: 32, offset: 96)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5267, file: !174, line: 593, baseType: !7, size: 32, offset: 160)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5267, file: !174, line: 594, baseType: !7, size: 32, offset: 192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5267, file: !174, line: 595, baseType: !7, size: 32, offset: 224)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5267, file: !174, line: 596, baseType: !7, size: 32, offset: 256)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5267, file: !174, line: 597, baseType: !7, size: 32, offset: 288)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5267, file: !174, line: 598, baseType: !7, size: 32, offset: 320)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5267, file: !174, line: 599, baseType: !7, size: 32, offset: 352)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !4758, file: !174, line: 666, baseType: !622, size: 8, offset: 768)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4758, file: !174, line: 675, baseType: !157, size: 32, offset: 800)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !4758, file: !174, line: 683, baseType: !7, size: 32, offset: 832)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !4758, file: !174, line: 689, baseType: !7, size: 32, offset: 864)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !4758, file: !174, line: 695, baseType: !7, size: 32, offset: 896)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !4758, file: !174, line: 701, baseType: !7, size: 32, offset: 928)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4758, file: !174, line: 708, baseType: !547, size: 32, offset: 960)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !4758, file: !174, line: 721, baseType: !315, size: 64, offset: 1024)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !4758, file: !174, line: 727, baseType: !1478, size: 8, offset: 1088)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !4758, file: !174, line: 733, baseType: !1478, size: 8, offset: 1096)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !4758, file: !174, line: 739, baseType: !4884, size: 64, offset: 1152)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4723, file: !174, line: 949, baseType: !5296, size: 64, offset: 640)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !4729, !4757}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4723, file: !174, line: 994, baseType: !5300, size: 64, offset: 704)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!115, !4729, !4757, !4401, !4228}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4723, file: !174, line: 1017, baseType: !5304, size: 64, offset: 768)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!115, !4729, !5307, !4401, !4227}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4758)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4723, file: !174, line: 1031, baseType: !5310, size: 64, offset: 832)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !4930, !5307}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !324, file: !174, line: 1292, baseType: !4884, size: 64, offset: 2624)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !324, file: !174, line: 1295, baseType: !4396, size: 3136, offset: 2688)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !324, file: !174, line: 1301, baseType: !4401, size: 64, offset: 5824)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !324, file: !174, line: 1312, baseType: !4401, size: 64, offset: 5888)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !324, file: !174, line: 1318, baseType: !4401, size: 64, offset: 5952)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !324, file: !174, line: 1326, baseType: !4884, size: 64, offset: 6016)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !324, file: !174, line: 1332, baseType: !4401, size: 64, offset: 6080)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !324, file: !174, line: 1359, baseType: !5321, size: 8, offset: 6144)
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !305, line: 102, baseType: !1478)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !324, file: !174, line: 1367, baseType: !115, size: 32, offset: 6176)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !324, file: !174, line: 1370, baseType: !5324, size: 64, offset: 6208)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5326)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !4633, line: 868, size: 640, elements: !5327)
!5327 = !{!5328, !5329, !5333, !5337, !5342, !5346, !5350, !5354, !5355, !5359}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !5326, file: !4633, line: 905, baseType: !4748, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "detect_ctx", scope: !5326, file: !4633, line: 931, baseType: !5330, size: 64, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!115, !4729, !4335, !622}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5326, file: !4633, line: 969, baseType: !5334, size: 64, offset: 128)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!113, !4729, !5007}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid_ctx", scope: !5326, file: !4633, line: 1008, baseType: !5338, size: 64, offset: 192)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!115, !4729, !5007, !4335, !5341}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5326, file: !4633, line: 1041, baseType: !5343, size: 64, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!5192, !4729}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_best_encoder", scope: !5326, file: !4633, line: 1068, baseType: !5347, size: 64, offset: 320)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!5192, !4729, !4757}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5326, file: !4633, line: 1102, baseType: !5351, size: 64, offset: 384)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!115, !4729, !4531}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5326, file: !4633, line: 1117, baseType: !5296, size: 64, offset: 448)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_writeback_job", scope: !5326, file: !4633, line: 1134, baseType: !5356, size: 64, offset: 512)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!115, !320, !315}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_writeback_job", scope: !5326, file: !4633, line: 1149, baseType: !5360, size: 64, offset: 576)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{null, !320, !315}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !324, file: !174, line: 1373, baseType: !5364, size: 672, offset: 6272)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !174, line: 1043, size: 672, elements: !5365)
!5365 = !{!5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5364, file: !174, line: 1049, baseType: !2880, size: 256)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5364, file: !174, line: 1056, baseType: !622, size: 8, offset: 256)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5364, file: !174, line: 1063, baseType: !622, size: 8, offset: 264)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5364, file: !174, line: 1070, baseType: !622, size: 8, offset: 272)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5364, file: !174, line: 1077, baseType: !115, size: 32, offset: 288)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5364, file: !174, line: 1084, baseType: !115, size: 32, offset: 320)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5364, file: !174, line: 1091, baseType: !115, size: 32, offset: 352)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5364, file: !174, line: 1098, baseType: !115, size: 32, offset: 384)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5364, file: !174, line: 1105, baseType: !622, size: 8, offset: 416)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5364, file: !174, line: 1112, baseType: !622, size: 8, offset: 424)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5364, file: !174, line: 1120, baseType: !622, size: 8, offset: 432)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5364, file: !174, line: 1128, baseType: !622, size: 8, offset: 440)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5364, file: !174, line: 1136, baseType: !230, size: 32, offset: 448)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5364, file: !174, line: 1146, baseType: !7, size: 32, offset: 480)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5364, file: !174, line: 1154, baseType: !236, size: 32, offset: 512)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5364, file: !174, line: 1159, baseType: !5271, size: 128, offset: 544)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !324, file: !174, line: 1375, baseType: !230, size: 32, offset: 6944)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "override_edid", scope: !324, file: !174, line: 1377, baseType: !622, size: 8, offset: 6976)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !324, file: !174, line: 1379, baseType: !553, size: 64, offset: 7040)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !324, file: !174, line: 1386, baseType: !547, size: 32, offset: 7104)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !324, file: !174, line: 1394, baseType: !5192, size: 64, offset: 7168)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !324, file: !174, line: 1398, baseType: !5388, size: 1024, offset: 7232)
!5388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5321, size: 1024, elements: !3632)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !324, file: !174, line: 1400, baseType: !5390, size: 16, offset: 8256)
!5390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 16, elements: !1728)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !324, file: !174, line: 1405, baseType: !5392, size: 64, offset: 8288)
!5392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !1728)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !324, file: !174, line: 1410, baseType: !5392, size: 64, offset: 8352)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !324, file: !174, line: 1421, baseType: !5395, size: 64, offset: 8448)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !5397, line: 695, size: 7552, elements: !5398)
!5397 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5398 = !{!5399, !5400, !5401, !5438, !5439, !5453, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5470, !5471, !5472, !5473, !5505, !5516}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5396, file: !5397, line: 696, baseType: !765, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5396, file: !5397, line: 697, baseType: !7, size: 32, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5396, file: !5397, line: 698, baseType: !5402, size: 64, offset: 128)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5404)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !5397, line: 519, size: 320, elements: !5405)
!5405 = !{!5406, !5419, !5420, !5433, !5434}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5404, file: !5397, line: 529, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!115, !5395, !5410, !115}
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5412, line: 69, size: 128, elements: !5413)
!5412 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5413 = !{!5414, !5415, !5416, !5417}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5411, file: !5412, line: 70, baseType: !991, size: 16)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5411, file: !5412, line: 71, baseType: !991, size: 16, offset: 16)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5411, file: !5412, line: 84, baseType: !991, size: 16, offset: 32)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5411, file: !5412, line: 85, baseType: !5418, size: 64, offset: 64)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5404, file: !5397, line: 531, baseType: !5407, size: 64, offset: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5404, file: !5397, line: 533, baseType: !5421, size: 64, offset: 128)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!115, !5395, !990, !448, !356, !1478, !115, !5424}
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5412, line: 135, size: 272, elements: !5426)
!5426 = !{!5427, !5428, !5429}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5425, file: !5412, line: 136, baseType: !1479, size: 8)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5425, file: !5412, line: 137, baseType: !991, size: 16)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5425, file: !5412, line: 138, baseType: !5430, size: 272)
!5430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 272, elements: !5431)
!5431 = !{!5432}
!5432 = !DISubrange(count: 34)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5404, file: !5397, line: 536, baseType: !5421, size: 64, offset: 192)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5404, file: !5397, line: 541, baseType: !5435, size: 64, offset: 256)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!547, !5395}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5396, file: !5397, line: 699, baseType: !314, size: 64, offset: 192)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5396, file: !5397, line: 702, baseType: !5440, size: 64, offset: 256)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5442)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !5397, line: 557, size: 192, elements: !5443)
!5443 = !{!5444, !5448, !5452}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5442, file: !5397, line: 558, baseType: !5445, size: 64)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{null, !5395, !7}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5442, file: !5397, line: 559, baseType: !5449, size: 64, offset: 64)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!115, !5395, !7}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5442, file: !5397, line: 560, baseType: !5445, size: 64, offset: 128)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5396, file: !5397, line: 703, baseType: !5454, size: 192, offset: 320)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5455, line: 30, size: 192, elements: !5456)
!5455 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!5456 = !{!5457, !5458, !5459}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5454, file: !5455, line: 31, baseType: !911)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5454, file: !5455, line: 32, baseType: !883, size: 128)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5454, file: !5455, line: 33, baseType: !1347, size: 64, offset: 128)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5396, file: !5397, line: 704, baseType: !5454, size: 192, offset: 512)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5396, file: !5397, line: 706, baseType: !115, size: 32, offset: 704)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5396, file: !5397, line: 707, baseType: !115, size: 32, offset: 736)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5396, file: !5397, line: 708, baseType: !347, size: 5568, offset: 768)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5396, file: !5397, line: 709, baseType: !456, size: 64, offset: 6336)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5396, file: !5397, line: 713, baseType: !115, size: 32, offset: 6400)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5396, file: !5397, line: 714, baseType: !5467, size: 384, offset: 6432)
!5467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 384, elements: !5468)
!5468 = !{!5469}
!5469 = !DISubrange(count: 48)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5396, file: !5397, line: 715, baseType: !1661, size: 192, offset: 6848)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5396, file: !5397, line: 717, baseType: !1304, size: 192, offset: 7040)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5396, file: !5397, line: 718, baseType: !310, size: 128, offset: 7232)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5396, file: !5397, line: 720, baseType: !5474, size: 64, offset: 7360)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !5397, line: 618, size: 832, elements: !5476)
!5476 = !{!5477, !5481, !5482, !5486, !5487, !5488, !5489, !5493, !5494, !5497, !5498, !5501, !5504}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5475, file: !5397, line: 619, baseType: !5478, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!115, !5395}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5475, file: !5397, line: 621, baseType: !5478, size: 64, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5475, file: !5397, line: 622, baseType: !5483, size: 64, offset: 128)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{null, !5395, !115}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5475, file: !5397, line: 623, baseType: !5478, size: 64, offset: 192)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5475, file: !5397, line: 624, baseType: !5483, size: 64, offset: 256)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5475, file: !5397, line: 625, baseType: !5478, size: 64, offset: 320)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5475, file: !5397, line: 627, baseType: !5490, size: 64, offset: 384)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{null, !5395}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5475, file: !5397, line: 628, baseType: !5490, size: 64, offset: 448)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5475, file: !5397, line: 631, baseType: !5495, size: 64, offset: 512)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !5397, line: 631, flags: DIFlagFwdDecl)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5475, file: !5397, line: 632, baseType: !5495, size: 64, offset: 576)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5475, file: !5397, line: 633, baseType: !5499, size: 64, offset: 640)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5397, line: 633, flags: DIFlagFwdDecl)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5475, file: !5397, line: 634, baseType: !5502, size: 64, offset: 704)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5397, line: 634, flags: DIFlagFwdDecl)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5475, file: !5397, line: 635, baseType: !5502, size: 64, offset: 768)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5396, file: !5397, line: 721, baseType: !5506, size: 64, offset: 7424)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5508)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !5397, line: 664, size: 192, elements: !5509)
!5509 = !{!5510, !5511, !5512, !5513, !5514, !5515}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5508, file: !5397, line: 665, baseType: !553, size: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5508, file: !5397, line: 666, baseType: !115, size: 32, offset: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5508, file: !5397, line: 667, baseType: !990, size: 16, offset: 96)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5508, file: !5397, line: 668, baseType: !990, size: 16, offset: 112)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5508, file: !5397, line: 669, baseType: !990, size: 16, offset: 128)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5508, file: !5397, line: 670, baseType: !990, size: 16, offset: 144)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5396, file: !5397, line: 723, baseType: !3821, size: 64, offset: 7488)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !324, file: !174, line: 1427, baseType: !115, size: 32, offset: 8512)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !324, file: !174, line: 1430, baseType: !7, size: 32, offset: 8544)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !324, file: !174, line: 1437, baseType: !622, size: 8, offset: 8576)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !324, file: !174, line: 1443, baseType: !1478, size: 8, offset: 8584)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !324, file: !174, line: 1446, baseType: !514, size: 64, offset: 8640)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !174, line: 1462, baseType: !4757, size: 64, offset: 8704)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !324, file: !174, line: 1479, baseType: !4884, size: 64, offset: 8768)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !324, file: !174, line: 1482, baseType: !622, size: 8, offset: 8832)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !324, file: !174, line: 1484, baseType: !5526, size: 64, offset: 8896)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !174, line: 1663, size: 256, elements: !5528)
!5528 = !{!5529, !5530, !5531, !5532}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5527, file: !174, line: 1664, baseType: !333, size: 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5527, file: !174, line: 1665, baseType: !327, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5527, file: !174, line: 1666, baseType: !115, size: 32, offset: 128)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5527, file: !174, line: 1667, baseType: !5533, size: 64, offset: 160)
!5533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, size: 64, elements: !1456)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !324, file: !174, line: 1486, baseType: !622, size: 8, offset: 8960)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !324, file: !174, line: 1490, baseType: !5321, size: 8, offset: 8968)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !324, file: !174, line: 1490, baseType: !5321, size: 8, offset: 8976)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !324, file: !174, line: 1493, baseType: !5321, size: 8, offset: 8984)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !324, file: !174, line: 1493, baseType: !5321, size: 8, offset: 8992)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !324, file: !174, line: 1496, baseType: !4877, size: 16, offset: 9008)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !324, file: !174, line: 1496, baseType: !4877, size: 16, offset: 9024)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !324, file: !174, line: 1505, baseType: !491, size: 64, offset: 9088)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !324, file: !174, line: 1508, baseType: !5543, size: 96, offset: 9152)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !158, line: 378, size: 96, elements: !5544)
!5544 = !{!5545, !5546}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5543, file: !158, line: 382, baseType: !549, size: 32)
!5546 = !DIDerivedType(tag: DW_TAG_member, scope: !5543, file: !158, line: 386, baseType: !5547, size: 64, offset: 32)
!5547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5543, file: !158, line: 386, size: 64, elements: !5548)
!5548 = !{!5549}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5547, file: !158, line: 387, baseType: !5550, size: 64)
!5550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !158, line: 365, size: 64, elements: !5551)
!5551 = !{!5552, !5553, !5554, !5555, !5556}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5550, file: !158, line: 366, baseType: !1479, size: 8)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5550, file: !158, line: 367, baseType: !1479, size: 8, offset: 8)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5550, file: !158, line: 368, baseType: !991, size: 16, offset: 16)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5550, file: !158, line: 369, baseType: !991, size: 16, offset: 32)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5550, file: !158, line: 370, baseType: !991, size: 16, offset: 48)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !321, file: !317, line: 34, baseType: !5193, size: 960, offset: 9280)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_formats_blob_ptr", scope: !321, file: !317, line: 43, baseType: !4884, size: 64, offset: 10240)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "job_lock", scope: !321, file: !317, line: 46, baseType: !366, offset: 10304)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "job_queue", scope: !321, file: !317, line: 58, baseType: !310, size: 128, offset: 10304)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !321, file: !317, line: 65, baseType: !7, size: 32, offset: 10432)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !321, file: !317, line: 71, baseType: !366, offset: 10464)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !321, file: !317, line: 78, baseType: !456, size: 64, offset: 10496)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !321, file: !317, line: 84, baseType: !2880, size: 256, offset: 10560)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "prepared", scope: !316, file: !317, line: 103, baseType: !622, size: 8, offset: 64)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_work", scope: !316, file: !317, line: 111, baseType: !2138, size: 256, offset: 128)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "list_entry", scope: !316, file: !317, line: 118, baseType: !310, size: 128, offset: 384)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !316, file: !317, line: 126, baseType: !4383, size: 64, offset: 512)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence", scope: !316, file: !317, line: 133, baseType: !4823, size: 64, offset: 576)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !316, file: !317, line: 140, baseType: !314, size: 64, offset: 640)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!5572 = !{!0, !5573}
!5573 = !DIGlobalVariableExpression(var: !5574, expr: !DIExpression())
!5574 = distinct !DIGlobalVariable(name: "drm_writeback_fence_ops", scope: !2, file: !3, line: 107, type: !4829, isLocal: true, isDefinition: true)
!5575 = !{!"rsp"}
!5576 = !{i32 7, !"Dwarf Version", i32 4}
!5577 = !{i32 2, !"Debug Info Version", i32 3}
!5578 = !{i32 1, !"wchar_size", i32 2}
!5579 = !{i32 1, !"Code Model", i32 2}
!5580 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5581 = distinct !DISubprogram(name: "drm_writeback_connector_init", scope: !3, file: !3, line: 173, type: !5582, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!115, !327, !320, !4721, !5222, !3973, !115}
!5584 = !DILocalVariable(name: "lock", arg: 1, scope: !5585, file: !5586, line: 327, type: !1195)
!5585 = distinct !DISubprogram(name: "spinlock_check", scope: !5586, file: !5586, line: 327, type: !5587, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5586 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!5589, !1195}
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!5590 = !DILocation(line: 327, column: 67, scope: !5585, inlinedAt: !5591)
!5591 = distinct !DILocation(line: 215, column: 2, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 215, column: 2)
!5593 = !DILocation(line: 327, column: 67, scope: !5585, inlinedAt: !5594)
!5594 = distinct !DILocation(line: 212, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 212, column: 2)
!5596 = !DILocalVariable(name: "dev", arg: 1, scope: !5581, file: !3, line: 173, type: !327)
!5597 = !DILocation(line: 173, column: 53, scope: !5581)
!5598 = !DILocalVariable(name: "wb_connector", arg: 2, scope: !5581, file: !3, line: 174, type: !320)
!5599 = !DILocation(line: 174, column: 38, scope: !5581)
!5600 = !DILocalVariable(name: "con_funcs", arg: 3, scope: !5581, file: !3, line: 175, type: !4721)
!5601 = !DILocation(line: 175, column: 40, scope: !5581)
!5602 = !DILocalVariable(name: "enc_helper_funcs", arg: 4, scope: !5581, file: !3, line: 176, type: !5222)
!5603 = !DILocation(line: 176, column: 45, scope: !5581)
!5604 = !DILocalVariable(name: "formats", arg: 5, scope: !5581, file: !3, line: 177, type: !3973)
!5605 = !DILocation(line: 177, column: 17, scope: !5581)
!5606 = !DILocalVariable(name: "n_formats", arg: 6, scope: !5581, file: !3, line: 177, type: !115)
!5607 = !DILocation(line: 177, column: 30, scope: !5581)
!5608 = !DILocalVariable(name: "blob", scope: !5581, file: !3, line: 179, type: !4884)
!5609 = !DILocation(line: 179, column: 28, scope: !5581)
!5610 = !DILocalVariable(name: "connector", scope: !5581, file: !3, line: 180, type: !4729)
!5611 = !DILocation(line: 180, column: 24, scope: !5581)
!5612 = !DILocation(line: 180, column: 37, scope: !5581)
!5613 = !DILocation(line: 180, column: 51, scope: !5581)
!5614 = !DILocalVariable(name: "config", scope: !5581, file: !3, line: 181, type: !5615)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!5616 = !DILocation(line: 181, column: 26, scope: !5581)
!5617 = !DILocation(line: 181, column: 36, scope: !5581)
!5618 = !DILocation(line: 181, column: 41, scope: !5581)
!5619 = !DILocalVariable(name: "ret", scope: !5581, file: !3, line: 182, type: !115)
!5620 = !DILocation(line: 182, column: 6, scope: !5581)
!5621 = !DILocation(line: 182, column: 40, scope: !5581)
!5622 = !DILocation(line: 182, column: 12, scope: !5581)
!5623 = !DILocation(line: 184, column: 6, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 184, column: 6)
!5625 = !DILocation(line: 184, column: 10, scope: !5624)
!5626 = !DILocation(line: 184, column: 6, scope: !5581)
!5627 = !DILocation(line: 185, column: 10, scope: !5624)
!5628 = !DILocation(line: 185, column: 3, scope: !5624)
!5629 = !DILocation(line: 187, column: 34, scope: !5581)
!5630 = !DILocation(line: 187, column: 39, scope: !5581)
!5631 = !DILocation(line: 187, column: 49, scope: !5581)
!5632 = !DILocation(line: 188, column: 6, scope: !5581)
!5633 = !DILocation(line: 187, column: 9, scope: !5581)
!5634 = !DILocation(line: 187, column: 7, scope: !5581)
!5635 = !DILocation(line: 189, column: 13, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 189, column: 6)
!5637 = !DILocation(line: 189, column: 6, scope: !5636)
!5638 = !DILocation(line: 189, column: 6, scope: !5581)
!5639 = !DILocation(line: 190, column: 18, scope: !5636)
!5640 = !DILocation(line: 190, column: 10, scope: !5636)
!5641 = !DILocation(line: 190, column: 3, scope: !5636)
!5642 = !DILocation(line: 192, column: 26, scope: !5581)
!5643 = !DILocation(line: 192, column: 40, scope: !5581)
!5644 = !DILocation(line: 192, column: 49, scope: !5581)
!5645 = !DILocation(line: 192, column: 2, scope: !5581)
!5646 = !DILocation(line: 193, column: 25, scope: !5581)
!5647 = !DILocation(line: 193, column: 31, scope: !5581)
!5648 = !DILocation(line: 193, column: 45, scope: !5581)
!5649 = !DILocation(line: 193, column: 8, scope: !5581)
!5650 = !DILocation(line: 193, column: 6, scope: !5581)
!5651 = !DILocation(line: 196, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 196, column: 6)
!5653 = !DILocation(line: 196, column: 6, scope: !5581)
!5654 = !DILocation(line: 197, column: 3, scope: !5652)
!5655 = !DILocation(line: 199, column: 2, scope: !5581)
!5656 = !DILocation(line: 199, column: 13, scope: !5581)
!5657 = !DILocation(line: 199, column: 31, scope: !5581)
!5658 = !DILocation(line: 201, column: 27, scope: !5581)
!5659 = !DILocation(line: 201, column: 32, scope: !5581)
!5660 = !DILocation(line: 201, column: 43, scope: !5581)
!5661 = !DILocation(line: 201, column: 8, scope: !5581)
!5662 = !DILocation(line: 201, column: 6, scope: !5581)
!5663 = !DILocation(line: 203, column: 6, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 203, column: 6)
!5665 = !DILocation(line: 203, column: 6, scope: !5581)
!5666 = !DILocation(line: 204, column: 3, scope: !5664)
!5667 = !DILocation(line: 206, column: 37, scope: !5581)
!5668 = !DILocation(line: 207, column: 8, scope: !5581)
!5669 = !DILocation(line: 207, column: 22, scope: !5581)
!5670 = !DILocation(line: 206, column: 8, scope: !5581)
!5671 = !DILocation(line: 206, column: 6, scope: !5581)
!5672 = !DILocation(line: 208, column: 6, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 208, column: 6)
!5674 = !DILocation(line: 208, column: 6, scope: !5581)
!5675 = !DILocation(line: 209, column: 3, scope: !5673)
!5676 = !DILocation(line: 211, column: 18, scope: !5581)
!5677 = !DILocation(line: 211, column: 32, scope: !5581)
!5678 = !DILocation(line: 211, column: 2, scope: !5581)
!5679 = !DILocation(line: 212, column: 2, scope: !5581)
!5680 = !DILocation(line: 212, column: 2, scope: !5595)
!5681 = !DILocation(line: 329, column: 10, scope: !5585, inlinedAt: !5594)
!5682 = !DILocation(line: 329, column: 16, scope: !5585, inlinedAt: !5594)
!5683 = !DILocation(line: 214, column: 32, scope: !5581)
!5684 = !DILocation(line: 214, column: 2, scope: !5581)
!5685 = !DILocation(line: 214, column: 16, scope: !5581)
!5686 = !DILocation(line: 214, column: 30, scope: !5581)
!5687 = !DILocation(line: 215, column: 2, scope: !5581)
!5688 = !DILocation(line: 215, column: 2, scope: !5592)
!5689 = !DILocation(line: 329, column: 10, scope: !5585, inlinedAt: !5591)
!5690 = !DILocation(line: 329, column: 16, scope: !5585, inlinedAt: !5591)
!5691 = !DILocation(line: 216, column: 11, scope: !5581)
!5692 = !DILocation(line: 216, column: 25, scope: !5581)
!5693 = !DILocation(line: 218, column: 23, scope: !5581)
!5694 = !DILocation(line: 218, column: 34, scope: !5581)
!5695 = !DILocation(line: 218, column: 39, scope: !5581)
!5696 = !DILocation(line: 218, column: 43, scope: !5581)
!5697 = !DILocation(line: 218, column: 54, scope: !5581)
!5698 = !DILocation(line: 216, column: 2, scope: !5581)
!5699 = !DILocation(line: 220, column: 30, scope: !5581)
!5700 = !DILocation(line: 220, column: 41, scope: !5581)
!5701 = !DILocation(line: 221, column: 8, scope: !5581)
!5702 = !DILocation(line: 221, column: 16, scope: !5581)
!5703 = !DILocation(line: 220, column: 2, scope: !5581)
!5704 = !DILocation(line: 223, column: 30, scope: !5581)
!5705 = !DILocation(line: 223, column: 41, scope: !5581)
!5706 = !DILocation(line: 224, column: 8, scope: !5581)
!5707 = !DILocation(line: 224, column: 16, scope: !5581)
!5708 = !DILocation(line: 223, column: 2, scope: !5581)
!5709 = !DILocation(line: 226, column: 30, scope: !5581)
!5710 = !DILocation(line: 226, column: 41, scope: !5581)
!5711 = !DILocation(line: 227, column: 8, scope: !5581)
!5712 = !DILocation(line: 227, column: 16, scope: !5581)
!5713 = !DILocation(line: 228, column: 8, scope: !5581)
!5714 = !DILocation(line: 228, column: 14, scope: !5581)
!5715 = !DILocation(line: 228, column: 19, scope: !5581)
!5716 = !DILocation(line: 226, column: 2, scope: !5581)
!5717 = !DILocation(line: 229, column: 41, scope: !5581)
!5718 = !DILocation(line: 229, column: 2, scope: !5581)
!5719 = !DILocation(line: 229, column: 16, scope: !5581)
!5720 = !DILocation(line: 229, column: 39, scope: !5581)
!5721 = !DILocation(line: 231, column: 2, scope: !5581)
!5722 = !DILabel(scope: !5581, name: "attach_fail", file: !3, line: 233)
!5723 = !DILocation(line: 233, column: 1, scope: !5581)
!5724 = !DILocation(line: 234, column: 24, scope: !5581)
!5725 = !DILocation(line: 234, column: 2, scope: !5581)
!5726 = !DILabel(scope: !5581, name: "connector_fail", file: !3, line: 235)
!5727 = !DILocation(line: 235, column: 1, scope: !5581)
!5728 = !DILocation(line: 236, column: 23, scope: !5581)
!5729 = !DILocation(line: 236, column: 37, scope: !5581)
!5730 = !DILocation(line: 236, column: 2, scope: !5581)
!5731 = !DILabel(scope: !5581, name: "fail", file: !3, line: 237)
!5732 = !DILocation(line: 237, column: 1, scope: !5581)
!5733 = !DILocation(line: 238, column: 24, scope: !5581)
!5734 = !DILocation(line: 238, column: 2, scope: !5581)
!5735 = !DILocation(line: 239, column: 9, scope: !5581)
!5736 = !DILocation(line: 239, column: 2, scope: !5581)
!5737 = !DILocation(line: 240, column: 1, scope: !5581)
!5738 = distinct !DISubprogram(name: "create_writeback_properties", scope: !3, file: !3, line: 113, type: !4128, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5739 = !DILocalVariable(name: "dev", arg: 1, scope: !5738, file: !3, line: 113, type: !327)
!5740 = !DILocation(line: 113, column: 59, scope: !5738)
!5741 = !DILocalVariable(name: "prop", scope: !5738, file: !3, line: 115, type: !4401)
!5742 = !DILocation(line: 115, column: 23, scope: !5738)
!5743 = !DILocation(line: 117, column: 7, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 117, column: 6)
!5745 = !DILocation(line: 117, column: 12, scope: !5744)
!5746 = !DILocation(line: 117, column: 24, scope: !5744)
!5747 = !DILocation(line: 117, column: 6, scope: !5738)
!5748 = !DILocation(line: 118, column: 37, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 117, column: 50)
!5750 = !DILocation(line: 118, column: 10, scope: !5749)
!5751 = !DILocation(line: 118, column: 8, scope: !5749)
!5752 = !DILocation(line: 121, column: 8, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 121, column: 7)
!5754 = !DILocation(line: 121, column: 7, scope: !5749)
!5755 = !DILocation(line: 122, column: 4, scope: !5753)
!5756 = !DILocation(line: 123, column: 47, scope: !5749)
!5757 = !DILocation(line: 123, column: 3, scope: !5749)
!5758 = !DILocation(line: 123, column: 8, scope: !5749)
!5759 = !DILocation(line: 123, column: 20, scope: !5749)
!5760 = !DILocation(line: 123, column: 45, scope: !5749)
!5761 = !DILocation(line: 124, column: 2, scope: !5749)
!5762 = !DILocation(line: 126, column: 7, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 126, column: 6)
!5764 = !DILocation(line: 126, column: 12, scope: !5763)
!5765 = !DILocation(line: 126, column: 24, scope: !5763)
!5766 = !DILocation(line: 126, column: 6, scope: !5738)
!5767 = !DILocation(line: 127, column: 30, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 126, column: 58)
!5769 = !DILocation(line: 127, column: 10, scope: !5768)
!5770 = !DILocation(line: 127, column: 8, scope: !5768)
!5771 = !DILocation(line: 131, column: 8, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 131, column: 7)
!5773 = !DILocation(line: 131, column: 7, scope: !5768)
!5774 = !DILocation(line: 132, column: 4, scope: !5772)
!5775 = !DILocation(line: 133, column: 55, scope: !5768)
!5776 = !DILocation(line: 133, column: 3, scope: !5768)
!5777 = !DILocation(line: 133, column: 8, scope: !5768)
!5778 = !DILocation(line: 133, column: 20, scope: !5768)
!5779 = !DILocation(line: 133, column: 53, scope: !5768)
!5780 = !DILocation(line: 134, column: 2, scope: !5768)
!5781 = !DILocation(line: 136, column: 7, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 136, column: 6)
!5783 = !DILocation(line: 136, column: 12, scope: !5782)
!5784 = !DILocation(line: 136, column: 24, scope: !5782)
!5785 = !DILocation(line: 136, column: 6, scope: !5738)
!5786 = !DILocation(line: 137, column: 36, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 136, column: 58)
!5788 = !DILocation(line: 137, column: 10, scope: !5787)
!5789 = !DILocation(line: 137, column: 8, scope: !5787)
!5790 = !DILocation(line: 140, column: 8, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 140, column: 7)
!5792 = !DILocation(line: 140, column: 7, scope: !5787)
!5793 = !DILocation(line: 141, column: 4, scope: !5791)
!5794 = !DILocation(line: 142, column: 55, scope: !5787)
!5795 = !DILocation(line: 142, column: 3, scope: !5787)
!5796 = !DILocation(line: 142, column: 8, scope: !5787)
!5797 = !DILocation(line: 142, column: 20, scope: !5787)
!5798 = !DILocation(line: 142, column: 53, scope: !5787)
!5799 = !DILocation(line: 143, column: 2, scope: !5787)
!5800 = !DILocation(line: 145, column: 2, scope: !5738)
!5801 = !DILocation(line: 146, column: 1, scope: !5738)
!5802 = distinct !DISubprogram(name: "IS_ERR", scope: !5803, file: !5803, line: 34, type: !5804, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5803 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!622, !2307}
!5806 = !DILocalVariable(name: "ptr", arg: 1, scope: !5802, file: !5803, line: 34, type: !2307)
!5807 = !DILocation(line: 34, column: 60, scope: !5802)
!5808 = !DILocation(line: 36, column: 9, scope: !5802)
!5809 = !DILocation(line: 36, column: 2, scope: !5802)
!5810 = distinct !DISubprogram(name: "PTR_ERR", scope: !5803, file: !5803, line: 29, type: !5811, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!250, !2307}
!5813 = !DILocalVariable(name: "ptr", arg: 1, scope: !5810, file: !5803, line: 29, type: !2307)
!5814 = !DILocation(line: 29, column: 61, scope: !5810)
!5815 = !DILocation(line: 31, column: 16, scope: !5810)
!5816 = !DILocation(line: 31, column: 9, scope: !5810)
!5817 = !DILocation(line: 31, column: 2, scope: !5810)
!5818 = distinct !DISubprogram(name: "drm_encoder_helper_add", scope: !4633, file: !4633, line: 856, type: !5819, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{null, !5192, !5222}
!5821 = !DILocalVariable(name: "encoder", arg: 1, scope: !5818, file: !4633, line: 856, type: !5192)
!5822 = !DILocation(line: 856, column: 63, scope: !5818)
!5823 = !DILocalVariable(name: "funcs", arg: 2, scope: !5818, file: !4633, line: 857, type: !5222)
!5824 = !DILocation(line: 857, column: 47, scope: !5818)
!5825 = !DILocation(line: 859, column: 28, scope: !5818)
!5826 = !DILocation(line: 859, column: 2, scope: !5818)
!5827 = !DILocation(line: 859, column: 11, scope: !5818)
!5828 = !DILocation(line: 859, column: 26, scope: !5818)
!5829 = !DILocation(line: 860, column: 1, scope: !5818)
!5830 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5831, file: !5831, line: 33, type: !5832, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5831 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5832 = !DISubroutineType(types: !5833)
!5833 = !{null, !309}
!5834 = !DILocalVariable(name: "list", arg: 1, scope: !5830, file: !5831, line: 33, type: !309)
!5835 = !DILocation(line: 33, column: 53, scope: !5830)
!5836 = !DILocation(line: 35, column: 2, scope: !5830)
!5837 = !DILocation(line: 35, column: 2, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5830, file: !5831, line: 35, column: 2)
!5839 = !DILocation(line: 35, column: 2, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5838, file: !5831, line: 35, column: 2)
!5841 = !DILocation(line: 35, column: 2, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !5831, line: 35, column: 2)
!5843 = !DILocation(line: 36, column: 15, scope: !5830)
!5844 = !DILocation(line: 36, column: 2, scope: !5830)
!5845 = !DILocation(line: 36, column: 8, scope: !5830)
!5846 = !DILocation(line: 36, column: 13, scope: !5830)
!5847 = !DILocation(line: 37, column: 1, scope: !5830)
!5848 = distinct !DISubprogram(name: "drm_writeback_set_fb", scope: !3, file: !3, line: 243, type: !5849, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!115, !4757, !4383}
!5851 = !DILocalVariable(name: "conn_state", arg: 1, scope: !5848, file: !3, line: 243, type: !4757)
!5852 = !DILocation(line: 243, column: 54, scope: !5848)
!5853 = !DILocalVariable(name: "fb", arg: 2, scope: !5848, file: !3, line: 244, type: !4383)
!5854 = !DILocation(line: 244, column: 29, scope: !5848)
!5855 = !DILocalVariable(name: "__ret_warn_on", scope: !5856, file: !3, line: 246, type: !115)
!5856 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 246, column: 2)
!5857 = !DILocation(line: 246, column: 2, scope: !5856)
!5858 = !DILocation(line: 246, column: 2, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 246, column: 2)
!5860 = !DILocation(line: 246, column: 2, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 246, column: 2)
!5862 = !DILocation(line: 246, column: 2, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 246, column: 2)
!5864 = !DILocation(line: 246, column: 2, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 246, column: 2)
!5866 = !{i32 -2140646058, i32 -2140646029, i32 -2140645983, i32 -2140645925, i32 -2140645871, i32 -2140645817, i32 -2140645762, i32 -2140645731}
!5867 = !DILocation(line: 246, column: 2, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 246, column: 2)
!5869 = !{i32 -2140645318, i32 -2140645311, i32 -2140645259, i32 -2140645228, i32 -2140645198}
!5870 = !DILocation(line: 246, column: 2, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 246, column: 2)
!5872 = !DILocation(line: 248, column: 7, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 248, column: 6)
!5874 = !DILocation(line: 248, column: 19, scope: !5873)
!5875 = !DILocation(line: 248, column: 6, scope: !5848)
!5876 = !DILocation(line: 250, column: 4, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 248, column: 34)
!5878 = !DILocation(line: 249, column: 3, scope: !5877)
!5879 = !DILocation(line: 249, column: 15, scope: !5877)
!5880 = !DILocation(line: 249, column: 29, scope: !5877)
!5881 = !DILocation(line: 251, column: 8, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 251, column: 7)
!5883 = !DILocation(line: 251, column: 20, scope: !5882)
!5884 = !DILocation(line: 251, column: 7, scope: !5877)
!5885 = !DILocation(line: 252, column: 4, scope: !5882)
!5886 = !DILocation(line: 255, column: 31, scope: !5877)
!5887 = !DILocation(line: 255, column: 43, scope: !5877)
!5888 = !DILocation(line: 255, column: 4, scope: !5877)
!5889 = !DILocation(line: 254, column: 3, scope: !5877)
!5890 = !DILocation(line: 254, column: 15, scope: !5877)
!5891 = !DILocation(line: 254, column: 30, scope: !5877)
!5892 = !DILocation(line: 254, column: 40, scope: !5877)
!5893 = !DILocation(line: 256, column: 2, scope: !5877)
!5894 = !DILocation(line: 258, column: 26, scope: !5848)
!5895 = !DILocation(line: 258, column: 38, scope: !5848)
!5896 = !DILocation(line: 258, column: 53, scope: !5848)
!5897 = !DILocation(line: 258, column: 57, scope: !5848)
!5898 = !DILocation(line: 258, column: 2, scope: !5848)
!5899 = !DILocation(line: 259, column: 2, scope: !5848)
!5900 = !DILocation(line: 260, column: 1, scope: !5848)
!5901 = distinct !DISubprogram(name: "kzalloc", scope: !282, file: !282, line: 662, type: !5902, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!314, !453, !304}
!5904 = !DILocalVariable(name: "s", arg: 1, scope: !5905, file: !282, line: 445, type: !1066)
!5905 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !282, file: !282, line: 445, type: !5906, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!314, !1066, !304, !453}
!5908 = !DILocation(line: 445, column: 72, scope: !5905, inlinedAt: !5909)
!5909 = distinct !DILocation(line: 552, column: 10, scope: !5910, inlinedAt: !5913)
!5910 = distinct !DILexicalBlock(scope: !5911, file: !282, line: 540, column: 34)
!5911 = distinct !DILexicalBlock(scope: !5912, file: !282, line: 540, column: 6)
!5912 = distinct !DISubprogram(name: "kmalloc", scope: !282, file: !282, line: 538, type: !5902, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5913 = distinct !DILocation(line: 664, column: 9, scope: !5901)
!5914 = !DILocalVariable(name: "flags", arg: 2, scope: !5905, file: !282, line: 446, type: !304)
!5915 = !DILocation(line: 446, column: 9, scope: !5905, inlinedAt: !5909)
!5916 = !DILocalVariable(name: "size", arg: 3, scope: !5905, file: !282, line: 446, type: !453)
!5917 = !DILocation(line: 446, column: 23, scope: !5905, inlinedAt: !5909)
!5918 = !DILocalVariable(name: "ret", scope: !5905, file: !282, line: 448, type: !314)
!5919 = !DILocation(line: 448, column: 8, scope: !5905, inlinedAt: !5909)
!5920 = !DILocalVariable(name: "flags", arg: 1, scope: !5921, file: !282, line: 318, type: !304)
!5921 = distinct !DISubprogram(name: "kmalloc_type", scope: !282, file: !282, line: 318, type: !5922, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!281, !304}
!5924 = !DILocation(line: 318, column: 67, scope: !5921, inlinedAt: !5925)
!5925 = distinct !DILocation(line: 553, column: 20, scope: !5910, inlinedAt: !5913)
!5926 = !DILocalVariable(name: "size", arg: 1, scope: !5927, file: !282, line: 346, type: !453)
!5927 = distinct !DISubprogram(name: "kmalloc_index", scope: !282, file: !282, line: 346, type: !5928, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!7, !453}
!5930 = !DILocation(line: 346, column: 58, scope: !5927, inlinedAt: !5931)
!5931 = distinct !DILocation(line: 547, column: 11, scope: !5910, inlinedAt: !5913)
!5932 = !DILocalVariable(name: "size", arg: 1, scope: !5933, file: !282, line: 472, type: !453)
!5933 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !282, file: !282, line: 472, type: !5934, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{!314, !453, !304, !7}
!5936 = !DILocation(line: 472, column: 28, scope: !5933, inlinedAt: !5937)
!5937 = distinct !DILocation(line: 481, column: 9, scope: !5938, inlinedAt: !5939)
!5938 = distinct !DISubprogram(name: "kmalloc_large", scope: !282, file: !282, line: 478, type: !5902, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!5939 = distinct !DILocation(line: 545, column: 11, scope: !5940, inlinedAt: !5913)
!5940 = distinct !DILexicalBlock(scope: !5910, file: !282, line: 544, column: 7)
!5941 = !DILocalVariable(name: "flags", arg: 2, scope: !5933, file: !282, line: 472, type: !304)
!5942 = !DILocation(line: 472, column: 40, scope: !5933, inlinedAt: !5937)
!5943 = !DILocalVariable(name: "order", arg: 3, scope: !5933, file: !282, line: 472, type: !7)
!5944 = !DILocation(line: 472, column: 60, scope: !5933, inlinedAt: !5937)
!5945 = !DILocalVariable(name: "size", arg: 1, scope: !5938, file: !282, line: 478, type: !453)
!5946 = !DILocation(line: 478, column: 51, scope: !5938, inlinedAt: !5939)
!5947 = !DILocalVariable(name: "flags", arg: 2, scope: !5938, file: !282, line: 478, type: !304)
!5948 = !DILocation(line: 478, column: 63, scope: !5938, inlinedAt: !5939)
!5949 = !DILocalVariable(name: "order", scope: !5938, file: !282, line: 480, type: !7)
!5950 = !DILocation(line: 480, column: 15, scope: !5938, inlinedAt: !5939)
!5951 = !DILocalVariable(name: "size", arg: 1, scope: !5912, file: !282, line: 538, type: !453)
!5952 = !DILocation(line: 538, column: 45, scope: !5912, inlinedAt: !5913)
!5953 = !DILocalVariable(name: "flags", arg: 2, scope: !5912, file: !282, line: 538, type: !304)
!5954 = !DILocation(line: 538, column: 57, scope: !5912, inlinedAt: !5913)
!5955 = !DILocalVariable(name: "index", scope: !5910, file: !282, line: 542, type: !7)
!5956 = !DILocation(line: 542, column: 16, scope: !5910, inlinedAt: !5913)
!5957 = !DILocalVariable(name: "size", arg: 1, scope: !5901, file: !282, line: 662, type: !453)
!5958 = !DILocation(line: 662, column: 36, scope: !5901)
!5959 = !DILocalVariable(name: "flags", arg: 2, scope: !5901, file: !282, line: 662, type: !304)
!5960 = !DILocation(line: 662, column: 48, scope: !5901)
!5961 = !DILocation(line: 664, column: 17, scope: !5901)
!5962 = !DILocation(line: 664, column: 23, scope: !5901)
!5963 = !DILocation(line: 664, column: 29, scope: !5901)
!5964 = !DILocation(line: 540, column: 27, scope: !5911, inlinedAt: !5913)
!5965 = !DILocation(line: 540, column: 6, scope: !5911, inlinedAt: !5913)
!5966 = !DILocation(line: 540, column: 6, scope: !5912, inlinedAt: !5913)
!5967 = !DILocation(line: 544, column: 7, scope: !5940, inlinedAt: !5913)
!5968 = !DILocation(line: 544, column: 12, scope: !5940, inlinedAt: !5913)
!5969 = !DILocation(line: 544, column: 7, scope: !5910, inlinedAt: !5913)
!5970 = !DILocation(line: 545, column: 25, scope: !5940, inlinedAt: !5913)
!5971 = !DILocation(line: 545, column: 31, scope: !5940, inlinedAt: !5913)
!5972 = !DILocation(line: 480, column: 33, scope: !5938, inlinedAt: !5939)
!5973 = !DILocation(line: 480, column: 23, scope: !5938, inlinedAt: !5939)
!5974 = !DILocation(line: 481, column: 29, scope: !5938, inlinedAt: !5939)
!5975 = !DILocation(line: 481, column: 35, scope: !5938, inlinedAt: !5939)
!5976 = !DILocation(line: 481, column: 42, scope: !5938, inlinedAt: !5939)
!5977 = !DILocation(line: 474, column: 23, scope: !5933, inlinedAt: !5937)
!5978 = !DILocation(line: 474, column: 29, scope: !5933, inlinedAt: !5937)
!5979 = !DILocation(line: 474, column: 36, scope: !5933, inlinedAt: !5937)
!5980 = !DILocation(line: 474, column: 9, scope: !5933, inlinedAt: !5937)
!5981 = !DILocation(line: 545, column: 4, scope: !5940, inlinedAt: !5913)
!5982 = !DILocation(line: 547, column: 25, scope: !5910, inlinedAt: !5913)
!5983 = !DILocation(line: 348, column: 7, scope: !5984, inlinedAt: !5931)
!5984 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 348, column: 6)
!5985 = !DILocation(line: 348, column: 6, scope: !5927, inlinedAt: !5931)
!5986 = !DILocation(line: 349, column: 3, scope: !5984, inlinedAt: !5931)
!5987 = !DILocation(line: 351, column: 6, scope: !5988, inlinedAt: !5931)
!5988 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 351, column: 6)
!5989 = !DILocation(line: 351, column: 11, scope: !5988, inlinedAt: !5931)
!5990 = !DILocation(line: 351, column: 6, scope: !5927, inlinedAt: !5931)
!5991 = !DILocation(line: 352, column: 3, scope: !5988, inlinedAt: !5931)
!5992 = !DILocation(line: 354, column: 32, scope: !5993, inlinedAt: !5931)
!5993 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 354, column: 6)
!5994 = !DILocation(line: 354, column: 37, scope: !5993, inlinedAt: !5931)
!5995 = !DILocation(line: 354, column: 42, scope: !5993, inlinedAt: !5931)
!5996 = !DILocation(line: 354, column: 45, scope: !5993, inlinedAt: !5931)
!5997 = !DILocation(line: 354, column: 50, scope: !5993, inlinedAt: !5931)
!5998 = !DILocation(line: 354, column: 6, scope: !5927, inlinedAt: !5931)
!5999 = !DILocation(line: 355, column: 3, scope: !5993, inlinedAt: !5931)
!6000 = !DILocation(line: 356, column: 32, scope: !6001, inlinedAt: !5931)
!6001 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 356, column: 6)
!6002 = !DILocation(line: 356, column: 37, scope: !6001, inlinedAt: !5931)
!6003 = !DILocation(line: 356, column: 43, scope: !6001, inlinedAt: !5931)
!6004 = !DILocation(line: 356, column: 46, scope: !6001, inlinedAt: !5931)
!6005 = !DILocation(line: 356, column: 51, scope: !6001, inlinedAt: !5931)
!6006 = !DILocation(line: 356, column: 6, scope: !5927, inlinedAt: !5931)
!6007 = !DILocation(line: 357, column: 3, scope: !6001, inlinedAt: !5931)
!6008 = !DILocation(line: 358, column: 6, scope: !6009, inlinedAt: !5931)
!6009 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 358, column: 6)
!6010 = !DILocation(line: 358, column: 11, scope: !6009, inlinedAt: !5931)
!6011 = !DILocation(line: 358, column: 6, scope: !5927, inlinedAt: !5931)
!6012 = !DILocation(line: 358, column: 26, scope: !6009, inlinedAt: !5931)
!6013 = !DILocation(line: 359, column: 6, scope: !6014, inlinedAt: !5931)
!6014 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 359, column: 6)
!6015 = !DILocation(line: 359, column: 11, scope: !6014, inlinedAt: !5931)
!6016 = !DILocation(line: 359, column: 6, scope: !5927, inlinedAt: !5931)
!6017 = !DILocation(line: 359, column: 26, scope: !6014, inlinedAt: !5931)
!6018 = !DILocation(line: 360, column: 6, scope: !6019, inlinedAt: !5931)
!6019 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 360, column: 6)
!6020 = !DILocation(line: 360, column: 11, scope: !6019, inlinedAt: !5931)
!6021 = !DILocation(line: 360, column: 6, scope: !5927, inlinedAt: !5931)
!6022 = !DILocation(line: 360, column: 26, scope: !6019, inlinedAt: !5931)
!6023 = !DILocation(line: 361, column: 6, scope: !6024, inlinedAt: !5931)
!6024 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 361, column: 6)
!6025 = !DILocation(line: 361, column: 11, scope: !6024, inlinedAt: !5931)
!6026 = !DILocation(line: 361, column: 6, scope: !5927, inlinedAt: !5931)
!6027 = !DILocation(line: 361, column: 26, scope: !6024, inlinedAt: !5931)
!6028 = !DILocation(line: 362, column: 6, scope: !6029, inlinedAt: !5931)
!6029 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 362, column: 6)
!6030 = !DILocation(line: 362, column: 11, scope: !6029, inlinedAt: !5931)
!6031 = !DILocation(line: 362, column: 6, scope: !5927, inlinedAt: !5931)
!6032 = !DILocation(line: 362, column: 26, scope: !6029, inlinedAt: !5931)
!6033 = !DILocation(line: 363, column: 6, scope: !6034, inlinedAt: !5931)
!6034 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 363, column: 6)
!6035 = !DILocation(line: 363, column: 11, scope: !6034, inlinedAt: !5931)
!6036 = !DILocation(line: 363, column: 6, scope: !5927, inlinedAt: !5931)
!6037 = !DILocation(line: 363, column: 26, scope: !6034, inlinedAt: !5931)
!6038 = !DILocation(line: 364, column: 6, scope: !6039, inlinedAt: !5931)
!6039 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 364, column: 6)
!6040 = !DILocation(line: 364, column: 11, scope: !6039, inlinedAt: !5931)
!6041 = !DILocation(line: 364, column: 6, scope: !5927, inlinedAt: !5931)
!6042 = !DILocation(line: 364, column: 26, scope: !6039, inlinedAt: !5931)
!6043 = !DILocation(line: 365, column: 6, scope: !6044, inlinedAt: !5931)
!6044 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 365, column: 6)
!6045 = !DILocation(line: 365, column: 11, scope: !6044, inlinedAt: !5931)
!6046 = !DILocation(line: 365, column: 6, scope: !5927, inlinedAt: !5931)
!6047 = !DILocation(line: 365, column: 26, scope: !6044, inlinedAt: !5931)
!6048 = !DILocation(line: 366, column: 6, scope: !6049, inlinedAt: !5931)
!6049 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 366, column: 6)
!6050 = !DILocation(line: 366, column: 11, scope: !6049, inlinedAt: !5931)
!6051 = !DILocation(line: 366, column: 6, scope: !5927, inlinedAt: !5931)
!6052 = !DILocation(line: 366, column: 26, scope: !6049, inlinedAt: !5931)
!6053 = !DILocation(line: 367, column: 6, scope: !6054, inlinedAt: !5931)
!6054 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 367, column: 6)
!6055 = !DILocation(line: 367, column: 11, scope: !6054, inlinedAt: !5931)
!6056 = !DILocation(line: 367, column: 6, scope: !5927, inlinedAt: !5931)
!6057 = !DILocation(line: 367, column: 26, scope: !6054, inlinedAt: !5931)
!6058 = !DILocation(line: 368, column: 6, scope: !6059, inlinedAt: !5931)
!6059 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 368, column: 6)
!6060 = !DILocation(line: 368, column: 11, scope: !6059, inlinedAt: !5931)
!6061 = !DILocation(line: 368, column: 6, scope: !5927, inlinedAt: !5931)
!6062 = !DILocation(line: 368, column: 26, scope: !6059, inlinedAt: !5931)
!6063 = !DILocation(line: 369, column: 6, scope: !6064, inlinedAt: !5931)
!6064 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 369, column: 6)
!6065 = !DILocation(line: 369, column: 11, scope: !6064, inlinedAt: !5931)
!6066 = !DILocation(line: 369, column: 6, scope: !5927, inlinedAt: !5931)
!6067 = !DILocation(line: 369, column: 26, scope: !6064, inlinedAt: !5931)
!6068 = !DILocation(line: 370, column: 6, scope: !6069, inlinedAt: !5931)
!6069 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 370, column: 6)
!6070 = !DILocation(line: 370, column: 11, scope: !6069, inlinedAt: !5931)
!6071 = !DILocation(line: 370, column: 6, scope: !5927, inlinedAt: !5931)
!6072 = !DILocation(line: 370, column: 26, scope: !6069, inlinedAt: !5931)
!6073 = !DILocation(line: 371, column: 6, scope: !6074, inlinedAt: !5931)
!6074 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 371, column: 6)
!6075 = !DILocation(line: 371, column: 11, scope: !6074, inlinedAt: !5931)
!6076 = !DILocation(line: 371, column: 6, scope: !5927, inlinedAt: !5931)
!6077 = !DILocation(line: 371, column: 26, scope: !6074, inlinedAt: !5931)
!6078 = !DILocation(line: 372, column: 6, scope: !6079, inlinedAt: !5931)
!6079 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 372, column: 6)
!6080 = !DILocation(line: 372, column: 11, scope: !6079, inlinedAt: !5931)
!6081 = !DILocation(line: 372, column: 6, scope: !5927, inlinedAt: !5931)
!6082 = !DILocation(line: 372, column: 26, scope: !6079, inlinedAt: !5931)
!6083 = !DILocation(line: 373, column: 6, scope: !6084, inlinedAt: !5931)
!6084 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 373, column: 6)
!6085 = !DILocation(line: 373, column: 11, scope: !6084, inlinedAt: !5931)
!6086 = !DILocation(line: 373, column: 6, scope: !5927, inlinedAt: !5931)
!6087 = !DILocation(line: 373, column: 26, scope: !6084, inlinedAt: !5931)
!6088 = !DILocation(line: 374, column: 6, scope: !6089, inlinedAt: !5931)
!6089 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 374, column: 6)
!6090 = !DILocation(line: 374, column: 11, scope: !6089, inlinedAt: !5931)
!6091 = !DILocation(line: 374, column: 6, scope: !5927, inlinedAt: !5931)
!6092 = !DILocation(line: 374, column: 26, scope: !6089, inlinedAt: !5931)
!6093 = !DILocation(line: 375, column: 6, scope: !6094, inlinedAt: !5931)
!6094 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 375, column: 6)
!6095 = !DILocation(line: 375, column: 11, scope: !6094, inlinedAt: !5931)
!6096 = !DILocation(line: 375, column: 6, scope: !5927, inlinedAt: !5931)
!6097 = !DILocation(line: 375, column: 27, scope: !6094, inlinedAt: !5931)
!6098 = !DILocation(line: 376, column: 6, scope: !6099, inlinedAt: !5931)
!6099 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 376, column: 6)
!6100 = !DILocation(line: 376, column: 11, scope: !6099, inlinedAt: !5931)
!6101 = !DILocation(line: 376, column: 6, scope: !5927, inlinedAt: !5931)
!6102 = !DILocation(line: 376, column: 32, scope: !6099, inlinedAt: !5931)
!6103 = !DILocation(line: 377, column: 6, scope: !6104, inlinedAt: !5931)
!6104 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 377, column: 6)
!6105 = !DILocation(line: 377, column: 11, scope: !6104, inlinedAt: !5931)
!6106 = !DILocation(line: 377, column: 6, scope: !5927, inlinedAt: !5931)
!6107 = !DILocation(line: 377, column: 32, scope: !6104, inlinedAt: !5931)
!6108 = !DILocation(line: 378, column: 6, scope: !6109, inlinedAt: !5931)
!6109 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 378, column: 6)
!6110 = !DILocation(line: 378, column: 11, scope: !6109, inlinedAt: !5931)
!6111 = !DILocation(line: 378, column: 6, scope: !5927, inlinedAt: !5931)
!6112 = !DILocation(line: 378, column: 32, scope: !6109, inlinedAt: !5931)
!6113 = !DILocation(line: 379, column: 6, scope: !6114, inlinedAt: !5931)
!6114 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 379, column: 6)
!6115 = !DILocation(line: 379, column: 11, scope: !6114, inlinedAt: !5931)
!6116 = !DILocation(line: 379, column: 6, scope: !5927, inlinedAt: !5931)
!6117 = !DILocation(line: 379, column: 33, scope: !6114, inlinedAt: !5931)
!6118 = !DILocation(line: 380, column: 6, scope: !6119, inlinedAt: !5931)
!6119 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 380, column: 6)
!6120 = !DILocation(line: 380, column: 11, scope: !6119, inlinedAt: !5931)
!6121 = !DILocation(line: 380, column: 6, scope: !5927, inlinedAt: !5931)
!6122 = !DILocation(line: 380, column: 33, scope: !6119, inlinedAt: !5931)
!6123 = !DILocation(line: 381, column: 6, scope: !6124, inlinedAt: !5931)
!6124 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 381, column: 6)
!6125 = !DILocation(line: 381, column: 11, scope: !6124, inlinedAt: !5931)
!6126 = !DILocation(line: 381, column: 6, scope: !5927, inlinedAt: !5931)
!6127 = !DILocation(line: 381, column: 33, scope: !6124, inlinedAt: !5931)
!6128 = !DILocation(line: 382, column: 2, scope: !6129, inlinedAt: !5931)
!6129 = distinct !DILexicalBlock(scope: !6130, file: !282, line: 382, column: 2)
!6130 = distinct !DILexicalBlock(scope: !5927, file: !282, line: 382, column: 2)
!6131 = !{i32 -2143614521, i32 -2143614492, i32 -2143614446, i32 -2143614388, i32 -2143614334, i32 -2143614280, i32 -2143614225, i32 -2143614194}
!6132 = !DILocation(line: 382, column: 2, scope: !6133, inlinedAt: !5931)
!6133 = distinct !DILexicalBlock(scope: !6134, file: !282, line: 382, column: 2)
!6134 = distinct !DILexicalBlock(scope: !6130, file: !282, line: 382, column: 2)
!6135 = !{i32 -2143613751, i32 -2143613744, i32 -2143613690, i32 -2143613659, i32 -2143613629}
!6136 = !DILocation(line: 382, column: 2, scope: !6134, inlinedAt: !5931)
!6137 = !DILocation(line: 386, column: 1, scope: !5927, inlinedAt: !5931)
!6138 = !DILocation(line: 547, column: 9, scope: !5910, inlinedAt: !5913)
!6139 = !DILocation(line: 549, column: 8, scope: !6140, inlinedAt: !5913)
!6140 = distinct !DILexicalBlock(scope: !5910, file: !282, line: 549, column: 7)
!6141 = !DILocation(line: 549, column: 7, scope: !5910, inlinedAt: !5913)
!6142 = !DILocation(line: 550, column: 4, scope: !6140, inlinedAt: !5913)
!6143 = !DILocation(line: 553, column: 33, scope: !5910, inlinedAt: !5913)
!6144 = !DILocation(line: 325, column: 6, scope: !6145, inlinedAt: !5925)
!6145 = distinct !DILexicalBlock(scope: !5921, file: !282, line: 325, column: 6)
!6146 = !DILocation(line: 325, column: 6, scope: !5921, inlinedAt: !5925)
!6147 = !DILocation(line: 326, column: 3, scope: !6145, inlinedAt: !5925)
!6148 = !DILocation(line: 332, column: 9, scope: !5921, inlinedAt: !5925)
!6149 = !DILocation(line: 332, column: 15, scope: !5921, inlinedAt: !5925)
!6150 = !DILocation(line: 332, column: 2, scope: !5921, inlinedAt: !5925)
!6151 = !DILocation(line: 336, column: 1, scope: !5921, inlinedAt: !5925)
!6152 = !DILocation(line: 553, column: 5, scope: !5910, inlinedAt: !5913)
!6153 = !DILocation(line: 553, column: 41, scope: !5910, inlinedAt: !5913)
!6154 = !DILocation(line: 554, column: 5, scope: !5910, inlinedAt: !5913)
!6155 = !DILocation(line: 554, column: 12, scope: !5910, inlinedAt: !5913)
!6156 = !DILocation(line: 448, column: 31, scope: !5905, inlinedAt: !5909)
!6157 = !DILocation(line: 448, column: 34, scope: !5905, inlinedAt: !5909)
!6158 = !DILocation(line: 448, column: 14, scope: !5905, inlinedAt: !5909)
!6159 = !DILocation(line: 450, column: 22, scope: !5905, inlinedAt: !5909)
!6160 = !DILocation(line: 450, column: 25, scope: !5905, inlinedAt: !5909)
!6161 = !DILocation(line: 450, column: 30, scope: !5905, inlinedAt: !5909)
!6162 = !DILocation(line: 450, column: 36, scope: !5905, inlinedAt: !5909)
!6163 = !DILocation(line: 450, column: 8, scope: !5905, inlinedAt: !5909)
!6164 = !DILocation(line: 450, column: 6, scope: !5905, inlinedAt: !5909)
!6165 = !DILocation(line: 451, column: 9, scope: !5905, inlinedAt: !5909)
!6166 = !DILocation(line: 552, column: 3, scope: !5910, inlinedAt: !5913)
!6167 = !DILocation(line: 557, column: 19, scope: !5912, inlinedAt: !5913)
!6168 = !DILocation(line: 557, column: 25, scope: !5912, inlinedAt: !5913)
!6169 = !DILocation(line: 557, column: 9, scope: !5912, inlinedAt: !5913)
!6170 = !DILocation(line: 557, column: 2, scope: !5912, inlinedAt: !5913)
!6171 = !DILocation(line: 558, column: 1, scope: !5912, inlinedAt: !5913)
!6172 = !DILocation(line: 664, column: 2, scope: !5901)
!6173 = distinct !DISubprogram(name: "drm_connector_to_writeback", scope: !317, file: !317, line: 144, type: !6174, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!320, !4729}
!6176 = !DILocalVariable(name: "connector", arg: 1, scope: !6173, file: !317, line: 144, type: !4729)
!6177 = !DILocation(line: 144, column: 50, scope: !6173)
!6178 = !DILocalVariable(name: "__mptr", scope: !6179, file: !317, line: 146, type: !314)
!6179 = distinct !DILexicalBlock(scope: !6173, file: !317, line: 146, column: 9)
!6180 = !DILocation(line: 146, column: 9, scope: !6179)
!6181 = !DILocation(line: 146, column: 9, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6179, file: !317, line: 146, column: 9)
!6183 = !DILocation(line: 146, column: 2, scope: !6173)
!6184 = distinct !DISubprogram(name: "drm_framebuffer_assign", scope: !4148, file: !4148, line: 270, type: !6185, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6185 = !DISubroutineType(types: !6186)
!6186 = !{null, !6187, !4383}
!6187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!6188 = !DILocalVariable(name: "p", arg: 1, scope: !6184, file: !4148, line: 270, type: !6187)
!6189 = !DILocation(line: 270, column: 68, scope: !6184)
!6190 = !DILocalVariable(name: "fb", arg: 2, scope: !6184, file: !4148, line: 271, type: !4383)
!6191 = !DILocation(line: 271, column: 32, scope: !6184)
!6192 = !DILocation(line: 273, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6184, file: !4148, line: 273, column: 6)
!6194 = !DILocation(line: 273, column: 6, scope: !6184)
!6195 = !DILocation(line: 274, column: 23, scope: !6193)
!6196 = !DILocation(line: 274, column: 3, scope: !6193)
!6197 = !DILocation(line: 275, column: 7, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6184, file: !4148, line: 275, column: 6)
!6199 = !DILocation(line: 275, column: 6, scope: !6198)
!6200 = !DILocation(line: 275, column: 6, scope: !6184)
!6201 = !DILocation(line: 276, column: 24, scope: !6198)
!6202 = !DILocation(line: 276, column: 23, scope: !6198)
!6203 = !DILocation(line: 276, column: 3, scope: !6198)
!6204 = !DILocation(line: 277, column: 7, scope: !6184)
!6205 = !DILocation(line: 277, column: 3, scope: !6184)
!6206 = !DILocation(line: 277, column: 5, scope: !6184)
!6207 = !DILocation(line: 278, column: 1, scope: !6184)
!6208 = distinct !DISubprogram(name: "drm_writeback_prepare_job", scope: !3, file: !3, line: 262, type: !6209, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!115, !315}
!6211 = !DILocalVariable(name: "job", arg: 1, scope: !6208, file: !3, line: 262, type: !315)
!6212 = !DILocation(line: 262, column: 57, scope: !6208)
!6213 = !DILocalVariable(name: "connector", scope: !6208, file: !3, line: 264, type: !320)
!6214 = !DILocation(line: 264, column: 34, scope: !6208)
!6215 = !DILocation(line: 264, column: 46, scope: !6208)
!6216 = !DILocation(line: 264, column: 51, scope: !6208)
!6217 = !DILocalVariable(name: "funcs", scope: !6208, file: !3, line: 265, type: !5324)
!6218 = !DILocation(line: 265, column: 43, scope: !6208)
!6219 = !DILocation(line: 266, column: 3, scope: !6208)
!6220 = !DILocation(line: 266, column: 14, scope: !6208)
!6221 = !DILocation(line: 266, column: 19, scope: !6208)
!6222 = !DILocalVariable(name: "ret", scope: !6208, file: !3, line: 267, type: !115)
!6223 = !DILocation(line: 267, column: 6, scope: !6208)
!6224 = !DILocation(line: 269, column: 6, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 269, column: 6)
!6226 = !DILocation(line: 269, column: 13, scope: !6225)
!6227 = !DILocation(line: 269, column: 6, scope: !6208)
!6228 = !DILocation(line: 270, column: 9, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 269, column: 36)
!6230 = !DILocation(line: 270, column: 16, scope: !6229)
!6231 = !DILocation(line: 270, column: 38, scope: !6229)
!6232 = !DILocation(line: 270, column: 49, scope: !6229)
!6233 = !DILocation(line: 270, column: 7, scope: !6229)
!6234 = !DILocation(line: 271, column: 7, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 271, column: 7)
!6236 = !DILocation(line: 271, column: 11, scope: !6235)
!6237 = !DILocation(line: 271, column: 7, scope: !6229)
!6238 = !DILocation(line: 272, column: 11, scope: !6235)
!6239 = !DILocation(line: 272, column: 4, scope: !6235)
!6240 = !DILocation(line: 273, column: 2, scope: !6229)
!6241 = !DILocation(line: 275, column: 2, scope: !6208)
!6242 = !DILocation(line: 275, column: 7, scope: !6208)
!6243 = !DILocation(line: 275, column: 16, scope: !6208)
!6244 = !DILocation(line: 276, column: 2, scope: !6208)
!6245 = !DILocation(line: 277, column: 1, scope: !6208)
!6246 = distinct !DISubprogram(name: "drm_writeback_queue_job", scope: !3, file: !3, line: 299, type: !6247, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6247 = !DISubroutineType(types: !6248)
!6248 = !{null, !320, !4757}
!6249 = !DILocalVariable(name: "lock", arg: 1, scope: !6250, file: !5586, line: 407, type: !1195)
!6250 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5586, file: !5586, line: 407, type: !6251, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{null, !1195, !456}
!6253 = !DILocation(line: 407, column: 64, scope: !6250, inlinedAt: !6254)
!6254 = distinct !DILocation(line: 310, column: 2, scope: !6246)
!6255 = !DILocalVariable(name: "flags", arg: 2, scope: !6250, file: !5586, line: 407, type: !456)
!6256 = !DILocation(line: 407, column: 84, scope: !6250, inlinedAt: !6254)
!6257 = !DILocation(line: 327, column: 67, scope: !5585, inlinedAt: !6258)
!6258 = distinct !DILocation(line: 308, column: 2, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 308, column: 2)
!6260 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 308, column: 2)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 308, column: 2)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 308, column: 2)
!6263 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 308, column: 2)
!6264 = !DILocalVariable(name: "wb_connector", arg: 1, scope: !6246, file: !3, line: 299, type: !320)
!6265 = !DILocation(line: 299, column: 62, scope: !6246)
!6266 = !DILocalVariable(name: "conn_state", arg: 2, scope: !6246, file: !3, line: 300, type: !4757)
!6267 = !DILocation(line: 300, column: 37, scope: !6246)
!6268 = !DILocalVariable(name: "job", scope: !6246, file: !3, line: 302, type: !315)
!6269 = !DILocation(line: 302, column: 28, scope: !6246)
!6270 = !DILocalVariable(name: "flags", scope: !6246, file: !3, line: 303, type: !456)
!6271 = !DILocation(line: 303, column: 16, scope: !6246)
!6272 = !DILocation(line: 305, column: 8, scope: !6246)
!6273 = !DILocation(line: 305, column: 20, scope: !6246)
!6274 = !DILocation(line: 305, column: 6, scope: !6246)
!6275 = !DILocation(line: 306, column: 2, scope: !6246)
!6276 = !DILocation(line: 306, column: 14, scope: !6246)
!6277 = !DILocation(line: 306, column: 28, scope: !6246)
!6278 = !DILocation(line: 308, column: 2, scope: !6246)
!6279 = !DILocation(line: 308, column: 2, scope: !6263)
!6280 = !DILocalVariable(name: "__dummy", scope: !6281, file: !3, line: 308, type: !456)
!6281 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 308, column: 2)
!6282 = !DILocation(line: 308, column: 2, scope: !6281)
!6283 = !DILocalVariable(name: "__dummy2", scope: !6281, file: !3, line: 308, type: !456)
!6284 = !DILocation(line: 308, column: 2, scope: !6262)
!6285 = !DILocation(line: 308, column: 2, scope: !6261)
!6286 = !DILocation(line: 308, column: 2, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 308, column: 2)
!6288 = !DILocalVariable(name: "__dummy", scope: !6289, file: !3, line: 308, type: !456)
!6289 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 308, column: 2)
!6290 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 308, column: 2)
!6291 = !DILocation(line: 308, column: 2, scope: !6289)
!6292 = !DILocalVariable(name: "__dummy2", scope: !6289, file: !3, line: 308, type: !456)
!6293 = !DILocation(line: 308, column: 2, scope: !6290)
!6294 = !DILocation(line: 308, column: 2, scope: !6260)
!6295 = !{i32 -2140643852}
!6296 = !DILocation(line: 308, column: 2, scope: !6259)
!6297 = !DILocation(line: 329, column: 10, scope: !5585, inlinedAt: !6258)
!6298 = !DILocation(line: 329, column: 16, scope: !5585, inlinedAt: !6258)
!6299 = !DILocation(line: 309, column: 17, scope: !6246)
!6300 = !DILocation(line: 309, column: 22, scope: !6246)
!6301 = !DILocation(line: 309, column: 35, scope: !6246)
!6302 = !DILocation(line: 309, column: 49, scope: !6246)
!6303 = !DILocation(line: 309, column: 2, scope: !6246)
!6304 = !DILocation(line: 310, column: 26, scope: !6246)
!6305 = !DILocation(line: 310, column: 40, scope: !6246)
!6306 = !DILocation(line: 310, column: 50, scope: !6246)
!6307 = !DILocalVariable(name: "__dummy", scope: !6308, file: !5586, line: 409, type: !456)
!6308 = distinct !DILexicalBlock(scope: !6309, file: !5586, line: 409, column: 2)
!6309 = distinct !DILexicalBlock(scope: !6250, file: !5586, line: 409, column: 2)
!6310 = !DILocation(line: 409, column: 2, scope: !6308, inlinedAt: !6254)
!6311 = !DILocalVariable(name: "__dummy2", scope: !6308, file: !5586, line: 409, type: !456)
!6312 = !DILocalVariable(name: "__dummy", scope: !6313, file: !5586, line: 409, type: !456)
!6313 = distinct !DILexicalBlock(scope: !6314, file: !5586, line: 409, column: 2)
!6314 = distinct !DILexicalBlock(scope: !6315, file: !5586, line: 409, column: 2)
!6315 = distinct !DILexicalBlock(scope: !6316, file: !5586, line: 409, column: 2)
!6316 = distinct !DILexicalBlock(scope: !6309, file: !5586, line: 409, column: 2)
!6317 = !DILocation(line: 409, column: 2, scope: !6313, inlinedAt: !6254)
!6318 = !DILocalVariable(name: "__dummy2", scope: !6313, file: !5586, line: 409, type: !456)
!6319 = !DILocation(line: 409, column: 2, scope: !6314, inlinedAt: !6254)
!6320 = !DILocation(line: 409, column: 2, scope: !6321, inlinedAt: !6254)
!6321 = distinct !DILexicalBlock(scope: !6316, file: !5586, line: 409, column: 2)
!6322 = !{i32 -2145551887}
!6323 = !DILocation(line: 409, column: 2, scope: !6324, inlinedAt: !6254)
!6324 = distinct !DILexicalBlock(scope: !6321, file: !5586, line: 409, column: 2)
!6325 = !DILocation(line: 311, column: 1, scope: !6246)
!6326 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6327, file: !6327, line: 666, type: !6328, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6327 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!456}
!6330 = !DILocalVariable(name: "f", scope: !6326, file: !6327, line: 668, type: !456)
!6331 = !DILocation(line: 668, column: 16, scope: !6326)
!6332 = !DILocation(line: 670, column: 6, scope: !6326)
!6333 = !DILocation(line: 670, column: 4, scope: !6326)
!6334 = !DILocation(line: 671, column: 2, scope: !6326)
!6335 = !DILocation(line: 672, column: 9, scope: !6326)
!6336 = !DILocation(line: 672, column: 2, scope: !6326)
!6337 = distinct !DISubprogram(name: "list_add_tail", scope: !5831, file: !5831, line: 98, type: !6338, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !309, !309}
!6340 = !DILocalVariable(name: "new", arg: 1, scope: !6337, file: !5831, line: 98, type: !309)
!6341 = !DILocation(line: 98, column: 52, scope: !6337)
!6342 = !DILocalVariable(name: "head", arg: 2, scope: !6337, file: !5831, line: 98, type: !309)
!6343 = !DILocation(line: 98, column: 75, scope: !6337)
!6344 = !DILocation(line: 100, column: 13, scope: !6337)
!6345 = !DILocation(line: 100, column: 18, scope: !6337)
!6346 = !DILocation(line: 100, column: 24, scope: !6337)
!6347 = !DILocation(line: 100, column: 30, scope: !6337)
!6348 = !DILocation(line: 100, column: 2, scope: !6337)
!6349 = !DILocation(line: 101, column: 1, scope: !6337)
!6350 = distinct !DISubprogram(name: "drm_writeback_cleanup_job", scope: !3, file: !3, line: 314, type: !6351, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{null, !315}
!6353 = !DILocalVariable(name: "job", arg: 1, scope: !6350, file: !3, line: 314, type: !315)
!6354 = !DILocation(line: 314, column: 58, scope: !6350)
!6355 = !DILocalVariable(name: "connector", scope: !6350, file: !3, line: 316, type: !320)
!6356 = !DILocation(line: 316, column: 34, scope: !6350)
!6357 = !DILocation(line: 316, column: 46, scope: !6350)
!6358 = !DILocation(line: 316, column: 51, scope: !6350)
!6359 = !DILocalVariable(name: "funcs", scope: !6350, file: !3, line: 317, type: !5324)
!6360 = !DILocation(line: 317, column: 43, scope: !6350)
!6361 = !DILocation(line: 318, column: 3, scope: !6350)
!6362 = !DILocation(line: 318, column: 14, scope: !6350)
!6363 = !DILocation(line: 318, column: 19, scope: !6350)
!6364 = !DILocation(line: 320, column: 6, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 320, column: 6)
!6366 = !DILocation(line: 320, column: 11, scope: !6365)
!6367 = !DILocation(line: 320, column: 20, scope: !6365)
!6368 = !DILocation(line: 320, column: 23, scope: !6365)
!6369 = !DILocation(line: 320, column: 30, scope: !6365)
!6370 = !DILocation(line: 320, column: 6, scope: !6350)
!6371 = !DILocation(line: 321, column: 3, scope: !6365)
!6372 = !DILocation(line: 321, column: 10, scope: !6365)
!6373 = !DILocation(line: 321, column: 32, scope: !6365)
!6374 = !DILocation(line: 321, column: 43, scope: !6365)
!6375 = !DILocation(line: 323, column: 6, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 323, column: 6)
!6377 = !DILocation(line: 323, column: 11, scope: !6376)
!6378 = !DILocation(line: 323, column: 6, scope: !6350)
!6379 = !DILocation(line: 324, column: 23, scope: !6376)
!6380 = !DILocation(line: 324, column: 28, scope: !6376)
!6381 = !DILocation(line: 324, column: 3, scope: !6376)
!6382 = !DILocation(line: 326, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 326, column: 6)
!6384 = !DILocation(line: 326, column: 11, scope: !6383)
!6385 = !DILocation(line: 326, column: 6, scope: !6350)
!6386 = !DILocation(line: 327, column: 17, scope: !6383)
!6387 = !DILocation(line: 327, column: 22, scope: !6383)
!6388 = !DILocation(line: 327, column: 3, scope: !6383)
!6389 = !DILocation(line: 329, column: 8, scope: !6350)
!6390 = !DILocation(line: 329, column: 2, scope: !6350)
!6391 = !DILocation(line: 330, column: 1, scope: !6350)
!6392 = distinct !DISubprogram(name: "drm_framebuffer_put", scope: !4148, file: !4148, line: 246, type: !4435, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6393 = !DILocalVariable(name: "fb", arg: 1, scope: !6392, file: !4148, line: 246, type: !4383)
!6394 = !DILocation(line: 246, column: 64, scope: !6392)
!6395 = !DILocation(line: 248, column: 23, scope: !6392)
!6396 = !DILocation(line: 248, column: 27, scope: !6392)
!6397 = !DILocation(line: 248, column: 2, scope: !6392)
!6398 = !DILocation(line: 249, column: 1, scope: !6392)
!6399 = distinct !DISubprogram(name: "dma_fence_put", scope: !297, file: !297, line: 276, type: !4849, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6400 = !DILocalVariable(name: "fence", arg: 1, scope: !6399, file: !297, line: 276, type: !4823)
!6401 = !DILocation(line: 276, column: 52, scope: !6399)
!6402 = !DILocation(line: 278, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6399, file: !297, line: 278, column: 6)
!6404 = !DILocation(line: 278, column: 6, scope: !6399)
!6405 = !DILocation(line: 279, column: 13, scope: !6403)
!6406 = !DILocation(line: 279, column: 20, scope: !6403)
!6407 = !DILocation(line: 279, column: 3, scope: !6403)
!6408 = !DILocation(line: 280, column: 1, scope: !6399)
!6409 = distinct !DISubprogram(name: "drm_writeback_signal_completion", scope: !3, file: !3, line: 366, type: !6410, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6410 = !DISubroutineType(types: !6411)
!6411 = !{null, !320, !115}
!6412 = !DILocation(line: 407, column: 64, scope: !6250, inlinedAt: !6413)
!6413 = distinct !DILocation(line: 380, column: 2, scope: !6409)
!6414 = !DILocation(line: 407, column: 84, scope: !6250, inlinedAt: !6413)
!6415 = !DILocation(line: 327, column: 67, scope: !5585, inlinedAt: !6416)
!6416 = distinct !DILocation(line: 373, column: 2, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 373, column: 2)
!6418 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 373, column: 2)
!6419 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 373, column: 2)
!6420 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 373, column: 2)
!6421 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 373, column: 2)
!6422 = !DILocalVariable(name: "wb_connector", arg: 1, scope: !6409, file: !3, line: 366, type: !320)
!6423 = !DILocation(line: 366, column: 65, scope: !6409)
!6424 = !DILocalVariable(name: "status", arg: 2, scope: !6409, file: !3, line: 367, type: !115)
!6425 = !DILocation(line: 367, column: 9, scope: !6409)
!6426 = !DILocalVariable(name: "flags", scope: !6409, file: !3, line: 369, type: !456)
!6427 = !DILocation(line: 369, column: 16, scope: !6409)
!6428 = !DILocalVariable(name: "job", scope: !6409, file: !3, line: 370, type: !315)
!6429 = !DILocation(line: 370, column: 28, scope: !6409)
!6430 = !DILocalVariable(name: "out_fence", scope: !6409, file: !3, line: 371, type: !4823)
!6431 = !DILocation(line: 371, column: 20, scope: !6409)
!6432 = !DILocation(line: 373, column: 2, scope: !6409)
!6433 = !DILocation(line: 373, column: 2, scope: !6421)
!6434 = !DILocalVariable(name: "__dummy", scope: !6435, file: !3, line: 373, type: !456)
!6435 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 373, column: 2)
!6436 = !DILocation(line: 373, column: 2, scope: !6435)
!6437 = !DILocalVariable(name: "__dummy2", scope: !6435, file: !3, line: 373, type: !456)
!6438 = !DILocation(line: 373, column: 2, scope: !6420)
!6439 = !DILocation(line: 373, column: 2, scope: !6419)
!6440 = !DILocation(line: 373, column: 2, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 373, column: 2)
!6442 = !DILocalVariable(name: "__dummy", scope: !6443, file: !3, line: 373, type: !456)
!6443 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 373, column: 2)
!6444 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 373, column: 2)
!6445 = !DILocation(line: 373, column: 2, scope: !6443)
!6446 = !DILocalVariable(name: "__dummy2", scope: !6443, file: !3, line: 373, type: !456)
!6447 = !DILocation(line: 373, column: 2, scope: !6444)
!6448 = !DILocation(line: 373, column: 2, scope: !6418)
!6449 = !{i32 -2140640959}
!6450 = !DILocation(line: 373, column: 2, scope: !6417)
!6451 = !DILocation(line: 329, column: 10, scope: !5585, inlinedAt: !6416)
!6452 = !DILocation(line: 329, column: 16, scope: !5585, inlinedAt: !6416)
!6453 = !DILocalVariable(name: "head__", scope: !6454, file: !3, line: 374, type: !309)
!6454 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 374, column: 8)
!6455 = !DILocation(line: 374, column: 8, scope: !6454)
!6456 = !DILocalVariable(name: "pos__", scope: !6454, file: !3, line: 374, type: !309)
!6457 = !DILocation(line: 374, column: 8, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 374, column: 8)
!6459 = !DILocation(line: 374, column: 8, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 374, column: 8)
!6461 = !DILocalVariable(name: "__mptr", scope: !6462, file: !3, line: 374, type: !314)
!6462 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 374, column: 8)
!6463 = !DILocation(line: 374, column: 8, scope: !6462)
!6464 = !DILocation(line: 374, column: 8, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 374, column: 8)
!6466 = !DILocation(line: 374, column: 6, scope: !6409)
!6467 = !DILocation(line: 377, column: 6, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 377, column: 6)
!6469 = !DILocation(line: 377, column: 6, scope: !6409)
!6470 = !DILocation(line: 378, column: 13, scope: !6468)
!6471 = !DILocation(line: 378, column: 18, scope: !6468)
!6472 = !DILocation(line: 378, column: 3, scope: !6468)
!6473 = !DILocation(line: 380, column: 26, scope: !6409)
!6474 = !DILocation(line: 380, column: 40, scope: !6409)
!6475 = !DILocation(line: 380, column: 50, scope: !6409)
!6476 = !DILocation(line: 409, column: 2, scope: !6308, inlinedAt: !6413)
!6477 = !DILocation(line: 409, column: 2, scope: !6313, inlinedAt: !6413)
!6478 = !DILocation(line: 409, column: 2, scope: !6314, inlinedAt: !6413)
!6479 = !DILocation(line: 409, column: 2, scope: !6321, inlinedAt: !6413)
!6480 = !DILocation(line: 409, column: 2, scope: !6324, inlinedAt: !6413)
!6481 = !DILocalVariable(name: "__ret_warn_on", scope: !6482, file: !3, line: 382, type: !115)
!6482 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 382, column: 6)
!6483 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 382, column: 6)
!6484 = !DILocation(line: 382, column: 6, scope: !6482)
!6485 = !DILocation(line: 382, column: 6, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 382, column: 6)
!6487 = !DILocation(line: 382, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 382, column: 6)
!6489 = !DILocation(line: 382, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 382, column: 6)
!6491 = !DILocation(line: 382, column: 6, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 382, column: 6)
!6493 = !{i32 -2140636447, i32 -2140636418, i32 -2140636372, i32 -2140636314, i32 -2140636260, i32 -2140636206, i32 -2140636151, i32 -2140636120}
!6494 = !DILocation(line: 382, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 382, column: 6)
!6496 = !{i32 -2140635707, i32 -2140635700, i32 -2140635648, i32 -2140635617, i32 -2140635587}
!6497 = !DILocation(line: 382, column: 6, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 382, column: 6)
!6499 = !DILocation(line: 382, column: 6, scope: !6483)
!6500 = !DILocation(line: 382, column: 6, scope: !6409)
!6501 = !DILocation(line: 383, column: 3, scope: !6483)
!6502 = !DILocation(line: 385, column: 14, scope: !6409)
!6503 = !DILocation(line: 385, column: 19, scope: !6409)
!6504 = !DILocation(line: 385, column: 12, scope: !6409)
!6505 = !DILocation(line: 386, column: 6, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 386, column: 6)
!6507 = !DILocation(line: 386, column: 6, scope: !6409)
!6508 = !DILocation(line: 387, column: 7, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6510, file: !3, line: 387, column: 7)
!6510 = distinct !DILexicalBlock(scope: !6506, file: !3, line: 386, column: 17)
!6511 = !DILocation(line: 387, column: 7, scope: !6510)
!6512 = !DILocation(line: 388, column: 24, scope: !6509)
!6513 = !DILocation(line: 388, column: 35, scope: !6509)
!6514 = !DILocation(line: 388, column: 4, scope: !6509)
!6515 = !DILocation(line: 389, column: 20, scope: !6510)
!6516 = !DILocation(line: 389, column: 3, scope: !6510)
!6517 = !DILocation(line: 390, column: 17, scope: !6510)
!6518 = !DILocation(line: 390, column: 3, scope: !6510)
!6519 = !DILocation(line: 391, column: 3, scope: !6510)
!6520 = !DILocation(line: 391, column: 8, scope: !6510)
!6521 = !DILocation(line: 391, column: 18, scope: !6510)
!6522 = !DILocation(line: 392, column: 2, scope: !6510)
!6523 = !DILocation(line: 394, column: 2, scope: !6409)
!6524 = !DILocation(line: 394, column: 2, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 394, column: 2)
!6526 = !DILocation(line: 395, column: 13, scope: !6409)
!6527 = !DILocation(line: 395, column: 30, scope: !6409)
!6528 = !DILocation(line: 395, column: 35, scope: !6409)
!6529 = !DILocation(line: 395, column: 2, scope: !6409)
!6530 = !DILocation(line: 396, column: 1, scope: !6409)
!6531 = distinct !DISubprogram(name: "list_del", scope: !5831, file: !5831, line: 144, type: !5832, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6532 = !DILocalVariable(name: "entry", arg: 1, scope: !6531, file: !5831, line: 144, type: !309)
!6533 = !DILocation(line: 144, column: 47, scope: !6531)
!6534 = !DILocation(line: 146, column: 19, scope: !6531)
!6535 = !DILocation(line: 146, column: 2, scope: !6531)
!6536 = !DILocation(line: 147, column: 2, scope: !6531)
!6537 = !DILocation(line: 147, column: 9, scope: !6531)
!6538 = !DILocation(line: 147, column: 14, scope: !6531)
!6539 = !DILocation(line: 148, column: 2, scope: !6531)
!6540 = !DILocation(line: 148, column: 9, scope: !6531)
!6541 = !DILocation(line: 148, column: 14, scope: !6531)
!6542 = !DILocation(line: 149, column: 1, scope: !6531)
!6543 = distinct !DISubprogram(name: "dma_fence_set_error", scope: !297, file: !297, line: 542, type: !6544, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6544 = !DISubroutineType(types: !6545)
!6545 = !{null, !4823, !115}
!6546 = !DILocalVariable(name: "fence", arg: 1, scope: !6543, file: !297, line: 542, type: !4823)
!6547 = !DILocation(line: 542, column: 58, scope: !6543)
!6548 = !DILocalVariable(name: "error", arg: 2, scope: !6543, file: !297, line: 543, type: !115)
!6549 = !DILocation(line: 543, column: 16, scope: !6543)
!6550 = !DILocalVariable(name: "__ret_warn_on", scope: !6551, file: !297, line: 545, type: !115)
!6551 = distinct !DILexicalBlock(scope: !6543, file: !297, line: 545, column: 2)
!6552 = !DILocation(line: 545, column: 2, scope: !6551)
!6553 = !DILocation(line: 545, column: 2, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6551, file: !297, line: 545, column: 2)
!6555 = !DILocation(line: 545, column: 2, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6554, file: !297, line: 545, column: 2)
!6557 = !DILocation(line: 545, column: 2, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6556, file: !297, line: 545, column: 2)
!6559 = !DILocation(line: 545, column: 2, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6556, file: !297, line: 545, column: 2)
!6561 = !{i32 -2144664499, i32 -2144664470, i32 -2144664424, i32 -2144664366, i32 -2144664312, i32 -2144664258, i32 -2144664203, i32 -2144664172}
!6562 = !DILocation(line: 545, column: 2, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6556, file: !297, line: 545, column: 2)
!6564 = !{i32 -2144663765, i32 -2144663758, i32 -2144663706, i32 -2144663675, i32 -2144663645}
!6565 = !DILocation(line: 545, column: 2, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6556, file: !297, line: 545, column: 2)
!6567 = !DILocalVariable(name: "__ret_warn_on", scope: !6568, file: !297, line: 546, type: !115)
!6568 = distinct !DILexicalBlock(scope: !6543, file: !297, line: 546, column: 2)
!6569 = !DILocation(line: 546, column: 2, scope: !6568)
!6570 = !DILocation(line: 546, column: 2, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6568, file: !297, line: 546, column: 2)
!6572 = !DILocation(line: 546, column: 2, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6571, file: !297, line: 546, column: 2)
!6574 = !DILocation(line: 546, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6573, file: !297, line: 546, column: 2)
!6576 = !DILocation(line: 546, column: 2, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6573, file: !297, line: 546, column: 2)
!6578 = !{i32 -2144663040, i32 -2144663011, i32 -2144662965, i32 -2144662907, i32 -2144662853, i32 -2144662799, i32 -2144662744, i32 -2144662713}
!6579 = !DILocation(line: 546, column: 2, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6573, file: !297, line: 546, column: 2)
!6581 = !{i32 -2144662306, i32 -2144662299, i32 -2144662247, i32 -2144662216, i32 -2144662186}
!6582 = !DILocation(line: 546, column: 2, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6573, file: !297, line: 546, column: 2)
!6584 = !DILocation(line: 548, column: 17, scope: !6543)
!6585 = !DILocation(line: 548, column: 2, scope: !6543)
!6586 = !DILocation(line: 548, column: 9, scope: !6543)
!6587 = !DILocation(line: 548, column: 15, scope: !6543)
!6588 = !DILocation(line: 549, column: 1, scope: !6543)
!6589 = distinct !DISubprogram(name: "__init_work", scope: !249, file: !249, line: 215, type: !6590, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{null, !2147, !115}
!6592 = !DILocalVariable(name: "work", arg: 1, scope: !6589, file: !249, line: 215, type: !2147)
!6593 = !DILocation(line: 215, column: 52, scope: !6589)
!6594 = !DILocalVariable(name: "onstack", arg: 2, scope: !6589, file: !249, line: 215, type: !115)
!6595 = !DILocation(line: 215, column: 62, scope: !6589)
!6596 = !DILocation(line: 215, column: 73, scope: !6589)
!6597 = distinct !DISubprogram(name: "cleanup_work", scope: !3, file: !3, line: 340, type: !2145, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6598 = !DILocalVariable(name: "work", arg: 1, scope: !6597, file: !3, line: 340, type: !2147)
!6599 = !DILocation(line: 340, column: 46, scope: !6597)
!6600 = !DILocalVariable(name: "job", scope: !6597, file: !3, line: 342, type: !315)
!6601 = !DILocation(line: 342, column: 28, scope: !6597)
!6602 = !DILocalVariable(name: "__mptr", scope: !6603, file: !3, line: 342, type: !314)
!6603 = distinct !DILexicalBlock(scope: !6597, file: !3, line: 342, column: 34)
!6604 = !DILocation(line: 342, column: 34, scope: !6603)
!6605 = !DILocation(line: 342, column: 34, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6603, file: !3, line: 342, column: 34)
!6607 = !DILocation(line: 346, column: 28, scope: !6597)
!6608 = !DILocation(line: 346, column: 2, scope: !6597)
!6609 = !DILocation(line: 347, column: 1, scope: !6597)
!6610 = distinct !DISubprogram(name: "queue_work", scope: !249, file: !249, line: 504, type: !6611, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{!622, !2973, !2147}
!6613 = !DILocalVariable(name: "wq", arg: 1, scope: !6610, file: !249, line: 504, type: !2973)
!6614 = !DILocation(line: 504, column: 56, scope: !6610)
!6615 = !DILocalVariable(name: "work", arg: 2, scope: !6610, file: !249, line: 505, type: !2147)
!6616 = !DILocation(line: 505, column: 30, scope: !6610)
!6617 = !DILocation(line: 507, column: 41, scope: !6610)
!6618 = !DILocation(line: 507, column: 45, scope: !6610)
!6619 = !DILocation(line: 507, column: 9, scope: !6610)
!6620 = !DILocation(line: 507, column: 2, scope: !6610)
!6621 = distinct !DISubprogram(name: "drm_writeback_get_out_fence", scope: !3, file: !3, line: 400, type: !6622, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6622 = !DISubroutineType(types: !6623)
!6623 = !{!4823, !320}
!6624 = !DILocalVariable(name: "wb_connector", arg: 1, scope: !6621, file: !3, line: 400, type: !320)
!6625 = !DILocation(line: 400, column: 61, scope: !6621)
!6626 = !DILocalVariable(name: "fence", scope: !6621, file: !3, line: 402, type: !4823)
!6627 = !DILocation(line: 402, column: 20, scope: !6621)
!6628 = !DILocalVariable(name: "__ret_warn_on", scope: !6629, file: !3, line: 404, type: !115)
!6629 = distinct !DILexicalBlock(scope: !6630, file: !3, line: 404, column: 6)
!6630 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 404, column: 6)
!6631 = !DILocation(line: 404, column: 6, scope: !6629)
!6632 = !DILocation(line: 404, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 404, column: 6)
!6634 = !DILocation(line: 404, column: 6, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 404, column: 6)
!6636 = !DILocation(line: 404, column: 6, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 404, column: 6)
!6638 = !DILocation(line: 404, column: 6, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 404, column: 6)
!6640 = !{i32 -2140634325, i32 -2140634296, i32 -2140634250, i32 -2140634192, i32 -2140634138, i32 -2140634084, i32 -2140634029, i32 -2140633998}
!6641 = !DILocation(line: 404, column: 6, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 404, column: 6)
!6643 = !{i32 -2140633585, i32 -2140633578, i32 -2140633526, i32 -2140633495, i32 -2140633465}
!6644 = !DILocation(line: 404, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 404, column: 6)
!6646 = !DILocation(line: 404, column: 6, scope: !6630)
!6647 = !DILocation(line: 404, column: 6, scope: !6621)
!6648 = !DILocation(line: 406, column: 3, scope: !6630)
!6649 = !DILocation(line: 408, column: 10, scope: !6621)
!6650 = !DILocation(line: 408, column: 8, scope: !6621)
!6651 = !DILocation(line: 409, column: 7, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 409, column: 6)
!6653 = !DILocation(line: 409, column: 6, scope: !6621)
!6654 = !DILocation(line: 410, column: 3, scope: !6652)
!6655 = !DILocation(line: 412, column: 17, scope: !6621)
!6656 = !DILocation(line: 413, column: 11, scope: !6621)
!6657 = !DILocation(line: 413, column: 25, scope: !6621)
!6658 = !DILocation(line: 413, column: 37, scope: !6621)
!6659 = !DILocation(line: 413, column: 51, scope: !6621)
!6660 = !DILocation(line: 414, column: 12, scope: !6621)
!6661 = !DILocation(line: 414, column: 26, scope: !6621)
!6662 = !DILocation(line: 414, column: 10, scope: !6621)
!6663 = !DILocation(line: 412, column: 2, scope: !6621)
!6664 = !DILocation(line: 416, column: 9, scope: !6621)
!6665 = !DILocation(line: 416, column: 2, scope: !6621)
!6666 = !DILocation(line: 417, column: 1, scope: !6621)
!6667 = distinct !DISubprogram(name: "get_order", scope: !6668, file: !6668, line: 29, type: !6669, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6668 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6669 = !DISubroutineType(types: !6670)
!6670 = !{!115, !456}
!6671 = !DILocalVariable(name: "x", arg: 1, scope: !6672, file: !6673, line: 366, type: !554)
!6672 = distinct !DISubprogram(name: "fls64", scope: !6673, file: !6673, line: 366, type: !6674, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6673 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6674 = !DISubroutineType(types: !6675)
!6675 = !{!115, !554}
!6676 = !DILocation(line: 366, column: 40, scope: !6672, inlinedAt: !6677)
!6677 = distinct !DILocation(line: 46, column: 9, scope: !6667)
!6678 = !DILocalVariable(name: "bitpos", scope: !6672, file: !6673, line: 368, type: !115)
!6679 = !DILocation(line: 368, column: 6, scope: !6672, inlinedAt: !6677)
!6680 = !DILocalVariable(name: "size", arg: 1, scope: !6667, file: !6668, line: 29, type: !456)
!6681 = !DILocation(line: 29, column: 63, scope: !6667)
!6682 = !DILocation(line: 31, column: 27, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6667, file: !6668, line: 31, column: 6)
!6684 = !DILocation(line: 31, column: 6, scope: !6683)
!6685 = !DILocation(line: 31, column: 6, scope: !6667)
!6686 = !DILocation(line: 32, column: 8, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6688, file: !6668, line: 32, column: 7)
!6688 = distinct !DILexicalBlock(scope: !6683, file: !6668, line: 31, column: 34)
!6689 = !DILocation(line: 32, column: 7, scope: !6688)
!6690 = !DILocation(line: 33, column: 4, scope: !6687)
!6691 = !DILocation(line: 35, column: 7, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6688, file: !6668, line: 35, column: 7)
!6693 = !DILocation(line: 35, column: 12, scope: !6692)
!6694 = !DILocation(line: 35, column: 7, scope: !6688)
!6695 = !DILocation(line: 36, column: 4, scope: !6692)
!6696 = !DILocation(line: 38, column: 10, scope: !6688)
!6697 = !DILocation(line: 38, column: 28, scope: !6688)
!6698 = !DILocation(line: 38, column: 41, scope: !6688)
!6699 = !DILocation(line: 38, column: 3, scope: !6688)
!6700 = !DILocation(line: 41, column: 6, scope: !6667)
!6701 = !DILocation(line: 42, column: 7, scope: !6667)
!6702 = !DILocation(line: 46, column: 15, scope: !6667)
!6703 = !DILocation(line: 374, column: 2, scope: !6672, inlinedAt: !6677)
!6704 = !DILocation(line: 376, column: 14, scope: !6672, inlinedAt: !6677)
!6705 = !{i32 358328}
!6706 = !DILocation(line: 377, column: 9, scope: !6672, inlinedAt: !6677)
!6707 = !DILocation(line: 377, column: 16, scope: !6672, inlinedAt: !6677)
!6708 = !DILocation(line: 46, column: 2, scope: !6667)
!6709 = !DILocation(line: 48, column: 1, scope: !6667)
!6710 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6711, file: !6711, line: 30, type: !6712, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6711 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6712 = !DISubroutineType(types: !6713)
!6713 = !{!115, !553}
!6714 = !DILocation(line: 366, column: 40, scope: !6672, inlinedAt: !6715)
!6715 = distinct !DILocation(line: 32, column: 9, scope: !6710)
!6716 = !DILocation(line: 368, column: 6, scope: !6672, inlinedAt: !6715)
!6717 = !DILocalVariable(name: "n", arg: 1, scope: !6710, file: !6711, line: 30, type: !553)
!6718 = !DILocation(line: 30, column: 21, scope: !6710)
!6719 = !DILocation(line: 32, column: 15, scope: !6710)
!6720 = !DILocation(line: 374, column: 2, scope: !6672, inlinedAt: !6715)
!6721 = !DILocation(line: 376, column: 14, scope: !6672, inlinedAt: !6715)
!6722 = !DILocation(line: 377, column: 9, scope: !6672, inlinedAt: !6715)
!6723 = !DILocation(line: 377, column: 16, scope: !6672, inlinedAt: !6715)
!6724 = !DILocation(line: 32, column: 18, scope: !6710)
!6725 = !DILocation(line: 32, column: 2, scope: !6710)
!6726 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6727, file: !6727, line: 137, type: !6728, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6727 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!314, !1066, !2307, !453, !304}
!6730 = !DILocalVariable(name: "s", arg: 1, scope: !6726, file: !6727, line: 137, type: !1066)
!6731 = !DILocation(line: 137, column: 54, scope: !6726)
!6732 = !DILocalVariable(name: "object", arg: 2, scope: !6726, file: !6727, line: 137, type: !2307)
!6733 = !DILocation(line: 137, column: 69, scope: !6726)
!6734 = !DILocalVariable(name: "size", arg: 3, scope: !6726, file: !6727, line: 138, type: !453)
!6735 = !DILocation(line: 138, column: 12, scope: !6726)
!6736 = !DILocalVariable(name: "flags", arg: 4, scope: !6726, file: !6727, line: 138, type: !304)
!6737 = !DILocation(line: 138, column: 24, scope: !6726)
!6738 = !DILocation(line: 140, column: 17, scope: !6726)
!6739 = !DILocation(line: 140, column: 2, scope: !6726)
!6740 = distinct !DISubprogram(name: "drm_framebuffer_get", scope: !4148, file: !4148, line: 234, type: !4435, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6741 = !DILocalVariable(name: "fb", arg: 1, scope: !6740, file: !4148, line: 234, type: !4383)
!6742 = !DILocation(line: 234, column: 64, scope: !6740)
!6743 = !DILocation(line: 236, column: 23, scope: !6740)
!6744 = !DILocation(line: 236, column: 27, scope: !6740)
!6745 = !DILocation(line: 236, column: 2, scope: !6740)
!6746 = !DILocation(line: 237, column: 1, scope: !6740)
!6747 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6327, file: !6327, line: 646, type: !6328, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6748 = !DILocalVariable(name: "__ret", scope: !6749, file: !6327, line: 648, type: !456)
!6749 = distinct !DILexicalBlock(scope: !6747, file: !6327, line: 648, column: 9)
!6750 = !DILocation(line: 648, column: 9, scope: !6749)
!6751 = !DILocalVariable(name: "__edi", scope: !6749, file: !6327, line: 648, type: !456)
!6752 = !DILocalVariable(name: "__esi", scope: !6749, file: !6327, line: 648, type: !456)
!6753 = !DILocalVariable(name: "__edx", scope: !6749, file: !6327, line: 648, type: !456)
!6754 = !DILocalVariable(name: "__ecx", scope: !6749, file: !6327, line: 648, type: !456)
!6755 = !DILocalVariable(name: "__eax", scope: !6749, file: !6327, line: 648, type: !456)
!6756 = !DILocation(line: 648, column: 9, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6758, file: !6327, line: 648, column: 9)
!6758 = distinct !DILexicalBlock(scope: !6749, file: !6327, line: 648, column: 9)
!6759 = !{i32 -2145722547, i32 -2145720232, i32 -2145719998, i32 -2145719947, i32 -2145719919, i32 -2145719894, i32 -2145720210, i32 -2145720197, i32 -2145719759, i32 -2145719640, i32 -2145720105, i32 -2145720078, i32 -2145720050, i32 -2145720020}
!6760 = !DILocalVariable(name: "__mask", scope: !6761, file: !6327, line: 648, type: !456)
!6761 = distinct !DILexicalBlock(scope: !6757, file: !6327, line: 648, column: 9)
!6762 = !DILocation(line: 648, column: 9, scope: !6761)
!6763 = !DILocation(line: 648, column: 9, scope: !6758)
!6764 = !DILocation(line: 648, column: 2, scope: !6747)
!6765 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6327, file: !6327, line: 656, type: !2059, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6766 = !DILocalVariable(name: "__edi", scope: !6767, file: !6327, line: 658, type: !456)
!6767 = distinct !DILexicalBlock(scope: !6765, file: !6327, line: 658, column: 2)
!6768 = !DILocation(line: 658, column: 2, scope: !6767)
!6769 = !DILocalVariable(name: "__esi", scope: !6767, file: !6327, line: 658, type: !456)
!6770 = !DILocalVariable(name: "__edx", scope: !6767, file: !6327, line: 658, type: !456)
!6771 = !DILocalVariable(name: "__ecx", scope: !6767, file: !6327, line: 658, type: !456)
!6772 = !DILocalVariable(name: "__eax", scope: !6767, file: !6327, line: 658, type: !456)
!6773 = !{i32 -2145715453, i32 -2145714721, i32 -2145714487, i32 -2145714436, i32 -2145714408, i32 -2145714383, i32 -2145714699, i32 -2145714686, i32 -2145714248, i32 -2145714129, i32 -2145714594, i32 -2145714567, i32 -2145714539, i32 -2145714509}
!6774 = !DILocation(line: 659, column: 1, scope: !6765)
!6775 = distinct !DISubprogram(name: "__list_add", scope: !5831, file: !5831, line: 63, type: !6776, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{null, !309, !309, !309}
!6778 = !DILocalVariable(name: "new", arg: 1, scope: !6775, file: !5831, line: 63, type: !309)
!6779 = !DILocation(line: 63, column: 49, scope: !6775)
!6780 = !DILocalVariable(name: "prev", arg: 2, scope: !6775, file: !5831, line: 64, type: !309)
!6781 = !DILocation(line: 64, column: 28, scope: !6775)
!6782 = !DILocalVariable(name: "next", arg: 3, scope: !6775, file: !5831, line: 65, type: !309)
!6783 = !DILocation(line: 65, column: 28, scope: !6775)
!6784 = !DILocation(line: 67, column: 24, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6775, file: !5831, line: 67, column: 6)
!6786 = !DILocation(line: 67, column: 29, scope: !6785)
!6787 = !DILocation(line: 67, column: 35, scope: !6785)
!6788 = !DILocation(line: 67, column: 7, scope: !6785)
!6789 = !DILocation(line: 67, column: 6, scope: !6775)
!6790 = !DILocation(line: 68, column: 3, scope: !6785)
!6791 = !DILocation(line: 70, column: 15, scope: !6775)
!6792 = !DILocation(line: 70, column: 2, scope: !6775)
!6793 = !DILocation(line: 70, column: 8, scope: !6775)
!6794 = !DILocation(line: 70, column: 13, scope: !6775)
!6795 = !DILocation(line: 71, column: 14, scope: !6775)
!6796 = !DILocation(line: 71, column: 2, scope: !6775)
!6797 = !DILocation(line: 71, column: 7, scope: !6775)
!6798 = !DILocation(line: 71, column: 12, scope: !6775)
!6799 = !DILocation(line: 72, column: 14, scope: !6775)
!6800 = !DILocation(line: 72, column: 2, scope: !6775)
!6801 = !DILocation(line: 72, column: 7, scope: !6775)
!6802 = !DILocation(line: 72, column: 12, scope: !6775)
!6803 = !DILocation(line: 73, column: 2, scope: !6775)
!6804 = !DILocation(line: 73, column: 2, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6775, file: !5831, line: 73, column: 2)
!6806 = !DILocation(line: 73, column: 2, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6805, file: !5831, line: 73, column: 2)
!6808 = !DILocation(line: 73, column: 2, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6805, file: !5831, line: 73, column: 2)
!6810 = !DILocation(line: 74, column: 1, scope: !6775)
!6811 = distinct !DISubprogram(name: "__list_add_valid", scope: !5831, file: !5831, line: 45, type: !6812, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!622, !309, !309, !309}
!6814 = !DILocalVariable(name: "new", arg: 1, scope: !6811, file: !5831, line: 45, type: !309)
!6815 = !DILocation(line: 45, column: 55, scope: !6811)
!6816 = !DILocalVariable(name: "prev", arg: 2, scope: !6811, file: !5831, line: 46, type: !309)
!6817 = !DILocation(line: 46, column: 23, scope: !6811)
!6818 = !DILocalVariable(name: "next", arg: 3, scope: !6811, file: !5831, line: 47, type: !309)
!6819 = !DILocation(line: 47, column: 23, scope: !6811)
!6820 = !DILocation(line: 49, column: 2, scope: !6811)
!6821 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6327, file: !6327, line: 651, type: !6822, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6822 = !DISubroutineType(types: !6823)
!6823 = !{null, !456}
!6824 = !DILocalVariable(name: "f", arg: 1, scope: !6821, file: !6327, line: 651, type: !456)
!6825 = !DILocation(line: 651, column: 65, scope: !6821)
!6826 = !DILocalVariable(name: "__edi", scope: !6827, file: !6327, line: 653, type: !456)
!6827 = distinct !DILexicalBlock(scope: !6821, file: !6327, line: 653, column: 2)
!6828 = !DILocation(line: 653, column: 2, scope: !6827)
!6829 = !DILocalVariable(name: "__esi", scope: !6827, file: !6327, line: 653, type: !456)
!6830 = !DILocalVariable(name: "__edx", scope: !6827, file: !6327, line: 653, type: !456)
!6831 = !DILocalVariable(name: "__ecx", scope: !6827, file: !6327, line: 653, type: !456)
!6832 = !DILocalVariable(name: "__eax", scope: !6827, file: !6327, line: 653, type: !456)
!6833 = !{i32 -2145718080, i32 -2145717330, i32 -2145717096, i32 -2145717045, i32 -2145717017, i32 -2145716992, i32 -2145717308, i32 -2145717295, i32 -2145716857, i32 -2145716738, i32 -2145717203, i32 -2145717176, i32 -2145717148, i32 -2145717118}
!6834 = !DILocation(line: 654, column: 1, scope: !6821)
!6835 = distinct !DISubprogram(name: "kref_put", scope: !334, file: !334, line: 62, type: !6836, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{!115, !4422, !4419}
!6838 = !DILocalVariable(name: "kref", arg: 1, scope: !6835, file: !334, line: 62, type: !4422)
!6839 = !DILocation(line: 62, column: 41, scope: !6835)
!6840 = !DILocalVariable(name: "release", arg: 2, scope: !6835, file: !334, line: 62, type: !4419)
!6841 = !DILocation(line: 62, column: 54, scope: !6835)
!6842 = !DILocation(line: 64, column: 29, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6835, file: !334, line: 64, column: 6)
!6844 = !DILocation(line: 64, column: 35, scope: !6843)
!6845 = !DILocation(line: 64, column: 6, scope: !6843)
!6846 = !DILocation(line: 64, column: 6, scope: !6835)
!6847 = !DILocation(line: 65, column: 3, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6843, file: !334, line: 64, column: 46)
!6849 = !DILocation(line: 65, column: 11, scope: !6848)
!6850 = !DILocation(line: 66, column: 3, scope: !6848)
!6851 = !DILocation(line: 68, column: 2, scope: !6835)
!6852 = !DILocation(line: 69, column: 1, scope: !6835)
!6853 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !289, file: !289, line: 331, type: !6854, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6854 = !DISubroutineType(types: !6855)
!6855 = !{!622, !6856}
!6856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!6857 = !DILocalVariable(name: "r", arg: 1, scope: !6853, file: !289, line: 331, type: !6856)
!6858 = !DILocation(line: 331, column: 67, scope: !6853)
!6859 = !DILocation(line: 333, column: 33, scope: !6853)
!6860 = !DILocation(line: 333, column: 9, scope: !6853)
!6861 = !DILocation(line: 333, column: 2, scope: !6853)
!6862 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !289, file: !289, line: 313, type: !6863, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6863 = !DISubroutineType(types: !6864)
!6864 = !{!622, !6856, !840}
!6865 = !DILocalVariable(name: "r", arg: 1, scope: !6862, file: !289, line: 313, type: !6856)
!6866 = !DILocation(line: 313, column: 69, scope: !6862)
!6867 = !DILocalVariable(name: "oldp", arg: 2, scope: !6862, file: !289, line: 313, type: !840)
!6868 = !DILocation(line: 313, column: 77, scope: !6862)
!6869 = !DILocation(line: 315, column: 36, scope: !6862)
!6870 = !DILocation(line: 315, column: 39, scope: !6862)
!6871 = !DILocation(line: 315, column: 9, scope: !6862)
!6872 = !DILocation(line: 315, column: 2, scope: !6862)
!6873 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !289, file: !289, line: 270, type: !6874, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6874 = !DISubroutineType(types: !6875)
!6875 = !{!622, !115, !6856, !840}
!6876 = !DILocalVariable(name: "i", arg: 1, scope: !6877, file: !6878, line: 188, type: !115)
!6877 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6878, file: !6878, line: 188, type: !6879, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6878 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6879 = !DISubroutineType(types: !6880)
!6880 = !{!115, !115, !6881}
!6881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!6882 = !DILocation(line: 188, column: 54, scope: !6877, inlinedAt: !6883)
!6883 = distinct !DILocation(line: 221, column: 9, scope: !6884, inlinedAt: !6886)
!6884 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6885, file: !6885, line: 218, type: !6879, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6885 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6886 = distinct !DILocation(line: 272, column: 12, scope: !6873)
!6887 = !DILocalVariable(name: "v", arg: 2, scope: !6877, file: !6878, line: 188, type: !6881)
!6888 = !DILocation(line: 188, column: 67, scope: !6877, inlinedAt: !6883)
!6889 = !DILocalVariable(name: "__ret", scope: !6890, file: !6878, line: 190, type: !115)
!6890 = distinct !DILexicalBlock(scope: !6877, file: !6878, line: 190, column: 9)
!6891 = !DILocation(line: 190, column: 9, scope: !6890, inlinedAt: !6883)
!6892 = !DILocalVariable(name: "v", arg: 1, scope: !6893, file: !6894, line: 99, type: !6897)
!6893 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6894, file: !6894, line: 99, type: !6895, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6894 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6895 = !DISubroutineType(types: !6896)
!6896 = !{null, !6897, !453}
!6897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6898, size: 64)
!6898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6899)
!6899 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6900 = !DILocation(line: 99, column: 79, scope: !6893, inlinedAt: !6901)
!6901 = distinct !DILocation(line: 220, column: 2, scope: !6884, inlinedAt: !6886)
!6902 = !DILocalVariable(name: "size", arg: 2, scope: !6893, file: !6894, line: 99, type: !453)
!6903 = !DILocation(line: 99, column: 89, scope: !6893, inlinedAt: !6901)
!6904 = !DILocalVariable(name: "i", arg: 1, scope: !6884, file: !6885, line: 218, type: !115)
!6905 = !DILocation(line: 218, column: 30, scope: !6884, inlinedAt: !6886)
!6906 = !DILocalVariable(name: "v", arg: 2, scope: !6884, file: !6885, line: 218, type: !6881)
!6907 = !DILocation(line: 218, column: 43, scope: !6884, inlinedAt: !6886)
!6908 = !DILocalVariable(name: "i", arg: 1, scope: !6873, file: !289, line: 270, type: !115)
!6909 = !DILocation(line: 270, column: 61, scope: !6873)
!6910 = !DILocalVariable(name: "r", arg: 2, scope: !6873, file: !289, line: 270, type: !6856)
!6911 = !DILocation(line: 270, column: 76, scope: !6873)
!6912 = !DILocalVariable(name: "oldp", arg: 3, scope: !6873, file: !289, line: 270, type: !840)
!6913 = !DILocation(line: 270, column: 84, scope: !6873)
!6914 = !DILocalVariable(name: "old", scope: !6873, file: !289, line: 272, type: !115)
!6915 = !DILocation(line: 272, column: 6, scope: !6873)
!6916 = !DILocation(line: 272, column: 37, scope: !6873)
!6917 = !DILocation(line: 272, column: 41, scope: !6873)
!6918 = !DILocation(line: 272, column: 44, scope: !6873)
!6919 = !DILocation(line: 220, column: 31, scope: !6884, inlinedAt: !6886)
!6920 = !DILocation(line: 101, column: 20, scope: !6893, inlinedAt: !6901)
!6921 = !DILocation(line: 101, column: 23, scope: !6893, inlinedAt: !6901)
!6922 = !DILocation(line: 101, column: 2, scope: !6893, inlinedAt: !6901)
!6923 = !DILocation(line: 102, column: 2, scope: !6893, inlinedAt: !6901)
!6924 = !DILocation(line: 221, column: 39, scope: !6884, inlinedAt: !6886)
!6925 = !DILocation(line: 221, column: 42, scope: !6884, inlinedAt: !6886)
!6926 = !{i32 -2146463213}
!6927 = !DILocation(line: 274, column: 6, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6873, file: !289, line: 274, column: 6)
!6929 = !DILocation(line: 274, column: 6, scope: !6873)
!6930 = !DILocation(line: 275, column: 11, scope: !6928)
!6931 = !DILocation(line: 275, column: 4, scope: !6928)
!6932 = !DILocation(line: 275, column: 9, scope: !6928)
!6933 = !DILocation(line: 275, column: 3, scope: !6928)
!6934 = !DILocation(line: 277, column: 6, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6873, file: !289, line: 277, column: 6)
!6936 = !DILocation(line: 277, column: 13, scope: !6935)
!6937 = !DILocation(line: 277, column: 10, scope: !6935)
!6938 = !DILocation(line: 277, column: 6, scope: !6873)
!6939 = !DILocation(line: 278, column: 3, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6935, file: !289, line: 277, column: 16)
!6941 = !{i32 -2145529169}
!6942 = !DILocation(line: 279, column: 3, scope: !6940)
!6943 = !DILocation(line: 282, column: 6, scope: !6944)
!6944 = distinct !DILexicalBlock(scope: !6873, file: !289, line: 282, column: 6)
!6945 = !DILocation(line: 282, column: 6, scope: !6873)
!6946 = !DILocation(line: 283, column: 26, scope: !6944)
!6947 = !DILocation(line: 283, column: 3, scope: !6944)
!6948 = !DILocation(line: 285, column: 2, scope: !6873)
!6949 = !DILocation(line: 286, column: 1, scope: !6873)
!6950 = distinct !DISubprogram(name: "kasan_check_write", scope: !6951, file: !6951, line: 38, type: !6952, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6951 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6952 = !DISubroutineType(types: !6953)
!6953 = !{!622, !6897, !7}
!6954 = !DILocalVariable(name: "p", arg: 1, scope: !6950, file: !6951, line: 38, type: !6897)
!6955 = !DILocation(line: 38, column: 59, scope: !6950)
!6956 = !DILocalVariable(name: "size", arg: 2, scope: !6950, file: !6951, line: 38, type: !7)
!6957 = !DILocation(line: 38, column: 75, scope: !6950)
!6958 = !DILocation(line: 40, column: 2, scope: !6950)
!6959 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6960, file: !6960, line: 178, type: !6961, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6960 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6961 = !DISubroutineType(types: !6962)
!6962 = !{null, !6897, !453, !115}
!6963 = !DILocalVariable(name: "ptr", arg: 1, scope: !6959, file: !6960, line: 178, type: !6897)
!6964 = !DILocation(line: 178, column: 60, scope: !6959)
!6965 = !DILocalVariable(name: "size", arg: 2, scope: !6959, file: !6960, line: 178, type: !453)
!6966 = !DILocation(line: 178, column: 72, scope: !6959)
!6967 = !DILocalVariable(name: "type", arg: 3, scope: !6959, file: !6960, line: 179, type: !115)
!6968 = !DILocation(line: 179, column: 15, scope: !6959)
!6969 = !DILocation(line: 179, column: 23, scope: !6959)
!6970 = distinct !DISubprogram(name: "__list_del_entry", scope: !5831, file: !5831, line: 130, type: !5832, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6971 = !DILocalVariable(name: "entry", arg: 1, scope: !6970, file: !5831, line: 130, type: !309)
!6972 = !DILocation(line: 130, column: 55, scope: !6970)
!6973 = !DILocation(line: 132, column: 30, scope: !6974)
!6974 = distinct !DILexicalBlock(scope: !6970, file: !5831, line: 132, column: 6)
!6975 = !DILocation(line: 132, column: 7, scope: !6974)
!6976 = !DILocation(line: 132, column: 6, scope: !6970)
!6977 = !DILocation(line: 133, column: 3, scope: !6974)
!6978 = !DILocation(line: 135, column: 13, scope: !6970)
!6979 = !DILocation(line: 135, column: 20, scope: !6970)
!6980 = !DILocation(line: 135, column: 26, scope: !6970)
!6981 = !DILocation(line: 135, column: 33, scope: !6970)
!6982 = !DILocation(line: 135, column: 2, scope: !6970)
!6983 = !DILocation(line: 136, column: 1, scope: !6970)
!6984 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5831, file: !5831, line: 51, type: !6985, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6985 = !DISubroutineType(types: !6986)
!6986 = !{!622, !309}
!6987 = !DILocalVariable(name: "entry", arg: 1, scope: !6984, file: !5831, line: 51, type: !309)
!6988 = !DILocation(line: 51, column: 61, scope: !6984)
!6989 = !DILocation(line: 53, column: 2, scope: !6984)
!6990 = distinct !DISubprogram(name: "__list_del", scope: !5831, file: !5831, line: 110, type: !6338, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!6991 = !DILocalVariable(name: "prev", arg: 1, scope: !6990, file: !5831, line: 110, type: !309)
!6992 = !DILocation(line: 110, column: 50, scope: !6990)
!6993 = !DILocalVariable(name: "next", arg: 2, scope: !6990, file: !5831, line: 110, type: !309)
!6994 = !DILocation(line: 110, column: 75, scope: !6990)
!6995 = !DILocation(line: 112, column: 15, scope: !6990)
!6996 = !DILocation(line: 112, column: 2, scope: !6990)
!6997 = !DILocation(line: 112, column: 8, scope: !6990)
!6998 = !DILocation(line: 112, column: 13, scope: !6990)
!6999 = !DILocation(line: 113, column: 2, scope: !6990)
!7000 = !DILocation(line: 113, column: 2, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6990, file: !5831, line: 113, column: 2)
!7002 = !DILocation(line: 113, column: 2, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !7001, file: !5831, line: 113, column: 2)
!7004 = !DILocation(line: 113, column: 2, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !7001, file: !5831, line: 113, column: 2)
!7006 = !DILocation(line: 114, column: 1, scope: !6990)
!7007 = distinct !DISubprogram(name: "test_bit", scope: !7008, file: !7008, line: 132, type: !7009, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7008 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!7009 = !DISubroutineType(types: !7010)
!7010 = !{!622, !250, !7011}
!7011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7012, size: 64)
!7012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7013)
!7013 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !456)
!7014 = !DILocalVariable(name: "nr", arg: 1, scope: !7015, file: !6673, line: 210, type: !250)
!7015 = distinct !DISubprogram(name: "variable_test_bit", scope: !6673, file: !6673, line: 210, type: !7009, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7016 = !DILocation(line: 210, column: 52, scope: !7015, inlinedAt: !7017)
!7017 = distinct !DILocation(line: 135, column: 9, scope: !7007)
!7018 = !DILocalVariable(name: "addr", arg: 2, scope: !7015, file: !6673, line: 210, type: !7011)
!7019 = !DILocation(line: 210, column: 86, scope: !7015, inlinedAt: !7017)
!7020 = !DILocalVariable(name: "oldbit", scope: !7015, file: !6673, line: 212, type: !622)
!7021 = !DILocation(line: 212, column: 7, scope: !7015, inlinedAt: !7017)
!7022 = !DILocalVariable(name: "nr", arg: 1, scope: !7023, file: !6673, line: 204, type: !250)
!7023 = distinct !DISubprogram(name: "constant_test_bit", scope: !6673, file: !6673, line: 204, type: !7009, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7024 = !DILocation(line: 204, column: 52, scope: !7023, inlinedAt: !7025)
!7025 = distinct !DILocation(line: 135, column: 9, scope: !7007)
!7026 = !DILocalVariable(name: "addr", arg: 2, scope: !7023, file: !6673, line: 204, type: !7011)
!7027 = !DILocation(line: 204, column: 86, scope: !7023, inlinedAt: !7025)
!7028 = !DILocalVariable(name: "v", arg: 1, scope: !7029, file: !6894, line: 69, type: !6897)
!7029 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6894, file: !6894, line: 69, type: !6895, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7030 = !DILocation(line: 69, column: 73, scope: !7029, inlinedAt: !7031)
!7031 = distinct !DILocation(line: 134, column: 2, scope: !7007)
!7032 = !DILocalVariable(name: "size", arg: 2, scope: !7029, file: !6894, line: 69, type: !453)
!7033 = !DILocation(line: 69, column: 83, scope: !7029, inlinedAt: !7031)
!7034 = !DILocalVariable(name: "nr", arg: 1, scope: !7007, file: !7008, line: 132, type: !250)
!7035 = !DILocation(line: 132, column: 34, scope: !7007)
!7036 = !DILocalVariable(name: "addr", arg: 2, scope: !7007, file: !7008, line: 132, type: !7011)
!7037 = !DILocation(line: 132, column: 68, scope: !7007)
!7038 = !DILocation(line: 134, column: 25, scope: !7007)
!7039 = !DILocation(line: 134, column: 32, scope: !7007)
!7040 = !DILocation(line: 134, column: 30, scope: !7007)
!7041 = !DILocation(line: 71, column: 19, scope: !7029, inlinedAt: !7031)
!7042 = !DILocation(line: 71, column: 22, scope: !7029, inlinedAt: !7031)
!7043 = !DILocation(line: 71, column: 2, scope: !7029, inlinedAt: !7031)
!7044 = !DILocation(line: 72, column: 2, scope: !7029, inlinedAt: !7031)
!7045 = !DILocation(line: 135, column: 9, scope: !7007)
!7046 = !DILocation(line: 206, column: 19, scope: !7023, inlinedAt: !7025)
!7047 = !DILocation(line: 206, column: 22, scope: !7023, inlinedAt: !7025)
!7048 = !DILocation(line: 206, column: 15, scope: !7023, inlinedAt: !7025)
!7049 = !DILocation(line: 207, column: 4, scope: !7023, inlinedAt: !7025)
!7050 = !DILocation(line: 207, column: 9, scope: !7023, inlinedAt: !7025)
!7051 = !DILocation(line: 207, column: 12, scope: !7023, inlinedAt: !7025)
!7052 = !DILocation(line: 206, column: 44, scope: !7023, inlinedAt: !7025)
!7053 = !DILocation(line: 207, column: 37, scope: !7023, inlinedAt: !7025)
!7054 = !DILocation(line: 217, column: 33, scope: !7015, inlinedAt: !7017)
!7055 = !DILocation(line: 217, column: 46, scope: !7015, inlinedAt: !7017)
!7056 = !DILocation(line: 214, column: 2, scope: !7015, inlinedAt: !7017)
!7057 = !{i32 -2147084645, i32 -2147084585}
!7058 = !DILocation(line: 219, column: 9, scope: !7015, inlinedAt: !7017)
!7059 = !DILocation(line: 135, column: 2, scope: !7007)
!7060 = distinct !DISubprogram(name: "kasan_check_read", scope: !6951, file: !6951, line: 34, type: !6952, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7061 = !DILocalVariable(name: "p", arg: 1, scope: !7060, file: !6951, line: 34, type: !6897)
!7062 = !DILocation(line: 34, column: 58, scope: !7060)
!7063 = !DILocalVariable(name: "size", arg: 2, scope: !7060, file: !6951, line: 34, type: !7)
!7064 = !DILocation(line: 34, column: 74, scope: !7060)
!7065 = !DILocation(line: 36, column: 2, scope: !7060)
!7066 = distinct !DISubprogram(name: "drm_writeback_fence_get_driver_name", scope: !3, file: !3, line: 85, type: !4835, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7067 = !DILocalVariable(name: "fence", arg: 1, scope: !7066, file: !3, line: 85, type: !4823)
!7068 = !DILocation(line: 85, column: 74, scope: !7066)
!7069 = !DILocalVariable(name: "wb_connector", scope: !7066, file: !3, line: 87, type: !320)
!7070 = !DILocation(line: 87, column: 34, scope: !7066)
!7071 = !DILocalVariable(name: "__mptr", scope: !7072, file: !3, line: 88, type: !314)
!7072 = distinct !DILexicalBlock(scope: !7066, file: !3, line: 88, column: 3)
!7073 = !DILocation(line: 88, column: 3, scope: !7072)
!7074 = !DILocation(line: 88, column: 3, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7072, file: !3, line: 88, column: 3)
!7076 = !DILocation(line: 90, column: 9, scope: !7066)
!7077 = !DILocation(line: 90, column: 23, scope: !7066)
!7078 = !DILocation(line: 90, column: 28, scope: !7066)
!7079 = !DILocation(line: 90, column: 33, scope: !7066)
!7080 = !DILocation(line: 90, column: 41, scope: !7066)
!7081 = !DILocation(line: 90, column: 2, scope: !7066)
!7082 = distinct !DISubprogram(name: "drm_writeback_fence_get_timeline_name", scope: !3, file: !3, line: 94, type: !4835, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7083 = !DILocalVariable(name: "fence", arg: 1, scope: !7082, file: !3, line: 94, type: !4823)
!7084 = !DILocation(line: 94, column: 57, scope: !7082)
!7085 = !DILocalVariable(name: "wb_connector", scope: !7082, file: !3, line: 96, type: !320)
!7086 = !DILocation(line: 96, column: 34, scope: !7082)
!7087 = !DILocalVariable(name: "__mptr", scope: !7088, file: !3, line: 97, type: !314)
!7088 = distinct !DILexicalBlock(scope: !7082, file: !3, line: 97, column: 3)
!7089 = !DILocation(line: 97, column: 3, scope: !7088)
!7090 = !DILocation(line: 97, column: 3, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7088, file: !3, line: 97, column: 3)
!7092 = !DILocation(line: 99, column: 9, scope: !7082)
!7093 = !DILocation(line: 99, column: 23, scope: !7082)
!7094 = !DILocation(line: 99, column: 2, scope: !7082)
!7095 = distinct !DISubprogram(name: "drm_writeback_fence_enable_signaling", scope: !3, file: !3, line: 102, type: !4840, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!7096 = !DILocalVariable(name: "fence", arg: 1, scope: !7095, file: !3, line: 102, type: !4823)
!7097 = !DILocation(line: 102, column: 68, scope: !7095)
!7098 = !DILocation(line: 104, column: 2, scope: !7095)
