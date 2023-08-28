; ModuleID = '../bcout/drivers/gpu/drm/drm_color_mgmt.llvm.bc'
source_filename = "drivers/gpu/drm/drm_color_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.drm_crtc = type { %struct.drm_device*, %struct.device_node*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, %struct.drm_plane*, %struct.drm_plane*, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, %struct.drm_crtc_funcs*, i32, i16*, %struct.drm_crtc_helper_funcs*, %struct.drm_object_properties, %struct.drm_crtc_state*, %struct.list_head, %struct.spinlock, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], %struct.drm_self_refresh_data* }
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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, [16 x i8], %struct.drm_format_info*, %struct.drm_framebuffer_funcs*, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x %struct.drm_gem_object*] }
%struct.drm_format_info = type opaque
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, i64*, %struct.drm_device*, %struct.list_head }
%struct.drm_atomic_state = type opaque
%struct.drm_mode_config_helper_funcs = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_vma_offset_manager = type opaque
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.drm_mode_object = type { i32, i32, %struct.drm_object_properties*, %struct.kref, void (%struct.kref*)* }
%struct.drm_plane = type { %struct.drm_device*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, i32*, i32, i8, i64*, i32, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_framebuffer*, %struct.drm_plane_funcs*, %struct.drm_object_properties, i32, i32, %struct.drm_plane_helper_funcs*, %struct.drm_plane_state*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_plane_funcs = type { i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_plane*)*, void (%struct.drm_plane*)*, i32 (%struct.drm_plane*, %struct.drm_property*, i64)*, %struct.drm_plane_state* (%struct.drm_plane*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_plane*)*, void (%struct.drm_plane*)*, void (%struct.drm_printer*, %struct.drm_plane_state*)*, i1 (%struct.drm_plane*, i32, i64)* }
%struct.drm_printer = type { void (%struct.drm_printer*, %struct.va_format*)*, void (%struct.drm_printer*, i8*)*, i8*, i8* }
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.drm_plane_helper_funcs = type opaque
%struct.drm_plane_state = type { %struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.dma_fence*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.drm_property_blob*, %struct.drm_rect, %struct.drm_rect, i8, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.dma_fence = type opaque
%struct.drm_property_blob = type { %struct.drm_mode_object, %struct.drm_device*, %struct.list_head, %struct.list_head, i64, i8* }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_commit = type opaque
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.drm_connector_helper_funcs = type opaque
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_encoder = type opaque
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
%struct.drm_writeback_job = type opaque
%struct.drm_tile_group = type { %struct.kref, %struct.drm_device*, i32, [8 x i8] }
%struct.hdr_sink_metadata = type { i32, %union.anon.66 }
%union.anon.66 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_pending_vblank_event = type opaque
%struct.drm_crtc_helper_funcs = type opaque
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_crtc_state = type { %struct.drm_crtc*, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, i32, i8, i8, i8, %struct.drm_pending_vblank_event*, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.drm_crtc_crc = type { %struct.spinlock, i8*, i8, i8, %struct.drm_crtc_crc_entry*, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.drm_self_refresh_data = type opaque
%struct.drm_mode_crtc_lut = type { i32, i32, i64, i64, i64 }
%struct.drm_prop_enum_list = type { i32, i8* }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/drm_color_mgmt.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@color_encoding_name = internal constant [3 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)], align 16, !dbg !0
@color_range_name = internal constant [2 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)], align 16, !dbg !5385
@.str.2 = private unnamed_addr constant [15 x i8] c"COLOR_ENCODING\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"COLOR_RANGE\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"All LUT entries must have equal r/g/b\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"LUT entries must never decrease.\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ITU-R BT.601 YCbCr\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ITU-R BT.709 YCbCr\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ITU-R BT.2020 YCbCr\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"YCbCr limited range\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"YCbCr full range\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @drm_color_ctm_s31_32_to_qm_n(i64 %user_input, i32 %m, i32 %n) #0 !dbg !5394 {
entry:
  %user_input.addr = alloca i64, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %mag = alloca i64, align 8
  %negative = alloca i8, align 1
  %val = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x254 = alloca i64, align 8
  %__UNIQUE_ID___x252 = alloca i64, align 8
  %__UNIQUE_ID___y253 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  %__UNIQUE_ID___y255 = alloca i64, align 8
  %tmp40 = alloca i64, align 8
  store i64 %user_input, i64* %user_input.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %user_input.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.declare(metadata i64* %mag, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load i64, i64* %user_input.addr, align 8, !dbg !5405
  %and = and i64 %0, 9223372036854775807, !dbg !5406
  %1 = load i32, i32* %n.addr, align 4, !dbg !5407
  %sub = sub i32 32, %1, !dbg !5408
  %sh_prom = zext i32 %sub to i64, !dbg !5409
  %shr = lshr i64 %and, %sh_prom, !dbg !5409
  store i64 %shr, i64* %mag, align 8, !dbg !5404
  call void @llvm.dbg.declare(metadata i8* %negative, metadata !5410, metadata !DIExpression()), !dbg !5411
  %2 = load i64, i64* %user_input.addr, align 8, !dbg !5412
  %and1 = and i64 %2, -9223372036854775808, !dbg !5413
  %tobool = icmp ne i64 %and1, 0, !dbg !5414
  %lnot = xor i1 %tobool, true, !dbg !5414
  %lnot2 = xor i1 %lnot, true, !dbg !5415
  %frombool = zext i1 %lnot2 to i8, !dbg !5411
  store i8 %frombool, i8* %negative, align 1, !dbg !5411
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5418, metadata !DIExpression()), !dbg !5420
  %3 = load i32, i32* %m.addr, align 4, !dbg !5420
  %cmp = icmp ugt i32 %3, 32, !dbg !5420
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5420

lor.rhs:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4, !dbg !5420
  %cmp3 = icmp ugt i32 %4, 32, !dbg !5420
  br label %lor.end, !dbg !5420

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot4 = xor i1 %5, true, !dbg !5420
  %lnot5 = xor i1 %lnot4, true, !dbg !5420
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5420
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5420
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !5421
  %tobool6 = icmp ne i32 %6, 0, !dbg !5421
  %lnot7 = xor i1 %tobool6, true, !dbg !5421
  %lnot9 = xor i1 %lnot7, true, !dbg !5421
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5421
  %conv = sext i32 %lnot.ext10 to i64, !dbg !5421
  %tobool11 = icmp ne i64 %conv, 0, !dbg !5421
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5420

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5421

do.body:                                          ; preds = %if.then
  br label %do.body12, !dbg !5423

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !5425

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !5423

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 136, i32 2305, i64 12) #6, !dbg !5427, !srcloc !5429
  br label %do.end14, !dbg !5427

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 251) #6, !dbg !5430, !srcloc !5432
  br label %do.body15, !dbg !5423

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5433

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !5423

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !5423

if.end:                                           ; preds = %do.end17, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5420
  %tobool18 = icmp ne i32 %7, 0, !dbg !5420
  %lnot19 = xor i1 %tobool18, true, !dbg !5420
  %lnot21 = xor i1 %lnot19, true, !dbg !5420
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5420
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5420
  store i64 %conv23, i64* %tmp, align 8, !dbg !5421
  %8 = load i64, i64* %tmp, align 8, !dbg !5420
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x254, metadata !5435, metadata !DIExpression()), !dbg !5437
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x252, metadata !5438, metadata !DIExpression()), !dbg !5440
  %9 = load i64, i64* %mag, align 8, !dbg !5440
  store i64 %9, i64* %__UNIQUE_ID___x252, align 8, !dbg !5440
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y253, metadata !5441, metadata !DIExpression()), !dbg !5440
  store i64 0, i64* %__UNIQUE_ID___y253, align 8, !dbg !5440
  %10 = load i64, i64* %__UNIQUE_ID___x252, align 8, !dbg !5440
  %11 = load i64, i64* %__UNIQUE_ID___y253, align 8, !dbg !5440
  %cmp25 = icmp ugt i64 %10, %11, !dbg !5440
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !5440

cond.true:                                        ; preds = %if.end
  %12 = load i64, i64* %__UNIQUE_ID___x252, align 8, !dbg !5440
  br label %cond.end, !dbg !5440

cond.false:                                       ; preds = %if.end
  %13 = load i64, i64* %__UNIQUE_ID___y253, align 8, !dbg !5440
  br label %cond.end, !dbg !5440

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !5440
  store i64 %cond, i64* %tmp24, align 8, !dbg !5440
  %14 = load i64, i64* %tmp24, align 8, !dbg !5440
  store i64 %14, i64* %__UNIQUE_ID___x254, align 8, !dbg !5437
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y255, metadata !5442, metadata !DIExpression()), !dbg !5437
  %15 = load i8, i8* %negative, align 1, !dbg !5437
  %tobool27 = trunc i8 %15 to i1, !dbg !5437
  br i1 %tobool27, label %cond.true29, label %cond.false32, !dbg !5437

cond.true29:                                      ; preds = %cond.end
  %16 = load i32, i32* %n.addr, align 4, !dbg !5437
  %17 = load i32, i32* %m.addr, align 4, !dbg !5437
  %add = add i32 %16, %17, !dbg !5437
  %sub30 = sub i32 %add, 1, !dbg !5437
  %sh_prom31 = zext i32 %sub30 to i64, !dbg !5437
  %shl = shl i64 1, %sh_prom31, !dbg !5437
  br label %cond.end38, !dbg !5437

cond.false32:                                     ; preds = %cond.end
  %18 = load i32, i32* %n.addr, align 4, !dbg !5437
  %19 = load i32, i32* %m.addr, align 4, !dbg !5437
  %add33 = add i32 %18, %19, !dbg !5437
  %sub34 = sub i32 %add33, 1, !dbg !5437
  %sh_prom35 = zext i32 %sub34 to i64, !dbg !5437
  %shl36 = shl i64 1, %sh_prom35, !dbg !5437
  %sub37 = sub i64 %shl36, 1, !dbg !5437
  br label %cond.end38, !dbg !5437

cond.end38:                                       ; preds = %cond.false32, %cond.true29
  %cond39 = phi i64 [ %shl, %cond.true29 ], [ %sub37, %cond.false32 ], !dbg !5437
  store i64 %cond39, i64* %__UNIQUE_ID___y255, align 8, !dbg !5437
  %20 = load i64, i64* %__UNIQUE_ID___x254, align 8, !dbg !5437
  %21 = load i64, i64* %__UNIQUE_ID___y255, align 8, !dbg !5437
  %cmp41 = icmp ult i64 %20, %21, !dbg !5437
  br i1 %cmp41, label %cond.true43, label %cond.false44, !dbg !5437

cond.true43:                                      ; preds = %cond.end38
  %22 = load i64, i64* %__UNIQUE_ID___x254, align 8, !dbg !5437
  br label %cond.end45, !dbg !5437

cond.false44:                                     ; preds = %cond.end38
  %23 = load i64, i64* %__UNIQUE_ID___y255, align 8, !dbg !5437
  br label %cond.end45, !dbg !5437

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i64 [ %22, %cond.true43 ], [ %23, %cond.false44 ], !dbg !5437
  store i64 %cond46, i64* %tmp40, align 8, !dbg !5437
  %24 = load i64, i64* %tmp40, align 8, !dbg !5437
  store i64 %24, i64* %val, align 8, !dbg !5443
  %25 = load i8, i8* %negative, align 1, !dbg !5444
  %tobool47 = trunc i8 %25 to i1, !dbg !5444
  br i1 %tobool47, label %cond.true49, label %cond.false51, !dbg !5444

cond.true49:                                      ; preds = %cond.end45
  %26 = load i64, i64* %val, align 8, !dbg !5445
  %sub50 = sub i64 0, %26, !dbg !5446
  br label %cond.end52, !dbg !5444

cond.false51:                                     ; preds = %cond.end45
  %27 = load i64, i64* %val, align 8, !dbg !5447
  br label %cond.end52, !dbg !5444

cond.end52:                                       ; preds = %cond.false51, %cond.true49
  %cond53 = phi i64 [ %sub50, %cond.true49 ], [ %27, %cond.false51 ], !dbg !5444
  ret i64 %cond53, !dbg !5448
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_crtc_enable_color_mgmt(%struct.drm_crtc* %crtc, i32 %degamma_lut_size, i1 zeroext %has_ctm, i32 %gamma_lut_size) #0 !dbg !5449 {
entry:
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  %degamma_lut_size.addr = alloca i32, align 4
  %has_ctm.addr = alloca i8, align 1
  %gamma_lut_size.addr = alloca i32, align 4
  %dev = alloca %struct.drm_device*, align 8
  %config = alloca %struct.drm_mode_config*, align 8
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  store i32 %degamma_lut_size, i32* %degamma_lut_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %degamma_lut_size.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  %frombool = zext i1 %has_ctm to i8
  store i8 %frombool, i8* %has_ctm.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %has_ctm.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i32 %gamma_lut_size, i32* %gamma_lut_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gamma_lut_size.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5463
  %dev1 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %0, i32 0, i32 0, !dbg !5464
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5464
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5462
  call void @llvm.dbg.declare(metadata %struct.drm_mode_config** %config, metadata !5465, metadata !DIExpression()), !dbg !5467
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5468
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 35, !dbg !5469
  store %struct.drm_mode_config* %mode_config, %struct.drm_mode_config** %config, align 8, !dbg !5467
  %3 = load i32, i32* %degamma_lut_size.addr, align 4, !dbg !5470
  %tobool = icmp ne i32 %3, 0, !dbg !5470
  br i1 %tobool, label %if.then, label %if.end, !dbg !5472

if.then:                                          ; preds = %entry
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5473
  %base = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 5, !dbg !5475
  %5 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5476
  %degamma_lut_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %5, i32 0, i32 76, !dbg !5477
  %6 = load %struct.drm_property*, %struct.drm_property** %degamma_lut_property, align 8, !dbg !5477
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %6, i64 0) #7, !dbg !5478
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5479
  %base2 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 5, !dbg !5480
  %8 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5481
  %degamma_lut_size_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %8, i32 0, i32 77, !dbg !5482
  %9 = load %struct.drm_property*, %struct.drm_property** %degamma_lut_size_property, align 8, !dbg !5482
  %10 = load i32, i32* %degamma_lut_size.addr, align 4, !dbg !5483
  %conv = zext i32 %10 to i64, !dbg !5483
  call void @drm_object_attach_property(%struct.drm_mode_object* %base2, %struct.drm_property* %9, i64 %conv) #7, !dbg !5484
  br label %if.end, !dbg !5485

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8, i8* %has_ctm.addr, align 1, !dbg !5486
  %tobool3 = trunc i8 %11 to i1, !dbg !5486
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5488

if.then4:                                         ; preds = %if.end
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5489
  %base5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 5, !dbg !5490
  %13 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5491
  %ctm_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %13, i32 0, i32 78, !dbg !5492
  %14 = load %struct.drm_property*, %struct.drm_property** %ctm_property, align 8, !dbg !5492
  call void @drm_object_attach_property(%struct.drm_mode_object* %base5, %struct.drm_property* %14, i64 0) #7, !dbg !5493
  br label %if.end6, !dbg !5493

if.end6:                                          ; preds = %if.then4, %if.end
  %15 = load i32, i32* %gamma_lut_size.addr, align 4, !dbg !5494
  %tobool7 = icmp ne i32 %15, 0, !dbg !5494
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !5496

if.then8:                                         ; preds = %if.end6
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5497
  %base9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 5, !dbg !5499
  %17 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5500
  %gamma_lut_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %17, i32 0, i32 79, !dbg !5501
  %18 = load %struct.drm_property*, %struct.drm_property** %gamma_lut_property, align 8, !dbg !5501
  call void @drm_object_attach_property(%struct.drm_mode_object* %base9, %struct.drm_property* %18, i64 0) #7, !dbg !5502
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5503
  %base10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 5, !dbg !5504
  %20 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5505
  %gamma_lut_size_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %20, i32 0, i32 80, !dbg !5506
  %21 = load %struct.drm_property*, %struct.drm_property** %gamma_lut_size_property, align 8, !dbg !5506
  %22 = load i32, i32* %gamma_lut_size.addr, align 4, !dbg !5507
  %conv11 = zext i32 %22 to i64, !dbg !5507
  call void @drm_object_attach_property(%struct.drm_mode_object* %base10, %struct.drm_property* %21, i64 %conv11) #7, !dbg !5508
  br label %if.end12, !dbg !5509

if.end12:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !5510
}

; Function Attrs: noredzone
declare dso_local void @drm_object_attach_property(%struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %crtc, i32 %gamma_size) #0 !dbg !5511 {
entry:
  %retval = alloca i32, align 4
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  %gamma_size.addr = alloca i32, align 4
  %r_base = alloca i16*, align 8
  %g_base = alloca i16*, align 8
  %b_base = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i32 %gamma_size, i32* %gamma_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gamma_size.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata i16** %r_base, metadata !5518, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.declare(metadata i16** %g_base, metadata !5520, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.declare(metadata i16** %b_base, metadata !5522, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5524, metadata !DIExpression()), !dbg !5525
  %0 = load i32, i32* %gamma_size.addr, align 4, !dbg !5526
  %1 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5527
  %gamma_size1 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %1, i32 0, i32 17, !dbg !5528
  store i32 %0, i32* %gamma_size1, align 8, !dbg !5529
  %2 = load i32, i32* %gamma_size.addr, align 4, !dbg !5530
  %conv = sext i32 %2 to i64, !dbg !5530
  %call = call i8* @kcalloc(i64 %conv, i64 6, i32 3264) #7, !dbg !5531
  %3 = bitcast i8* %call to i16*, !dbg !5531
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5532
  %gamma_store = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 18, !dbg !5533
  store i16* %3, i16** %gamma_store, align 8, !dbg !5534
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5535
  %gamma_store2 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 18, !dbg !5537
  %6 = load i16*, i16** %gamma_store2, align 8, !dbg !5537
  %tobool = icmp ne i16* %6, null, !dbg !5535
  br i1 %tobool, label %if.end, label %if.then, !dbg !5538

if.then:                                          ; preds = %entry
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5539
  %gamma_size3 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 17, !dbg !5541
  store i32 0, i32* %gamma_size3, align 8, !dbg !5542
  store i32 -12, i32* %retval, align 4, !dbg !5543
  br label %return, !dbg !5543

if.end:                                           ; preds = %entry
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5544
  %gamma_store4 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 18, !dbg !5545
  %9 = load i16*, i16** %gamma_store4, align 8, !dbg !5545
  store i16* %9, i16** %r_base, align 8, !dbg !5546
  %10 = load i16*, i16** %r_base, align 8, !dbg !5547
  %11 = load i32, i32* %gamma_size.addr, align 4, !dbg !5548
  %idx.ext = sext i32 %11 to i64, !dbg !5549
  %add.ptr = getelementptr i16, i16* %10, i64 %idx.ext, !dbg !5549
  store i16* %add.ptr, i16** %g_base, align 8, !dbg !5550
  %12 = load i16*, i16** %g_base, align 8, !dbg !5551
  %13 = load i32, i32* %gamma_size.addr, align 4, !dbg !5552
  %idx.ext5 = sext i32 %13 to i64, !dbg !5553
  %add.ptr6 = getelementptr i16, i16* %12, i64 %idx.ext5, !dbg !5553
  store i16* %add.ptr6, i16** %b_base, align 8, !dbg !5554
  store i32 0, i32* %i, align 4, !dbg !5555
  br label %for.cond, !dbg !5557

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4, !dbg !5558
  %15 = load i32, i32* %gamma_size.addr, align 4, !dbg !5560
  %cmp = icmp slt i32 %14, %15, !dbg !5561
  br i1 %cmp, label %for.body, label %for.end, !dbg !5562

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !5563
  %shl = shl i32 %16, 8, !dbg !5565
  %conv8 = trunc i32 %shl to i16, !dbg !5563
  %17 = load i16*, i16** %r_base, align 8, !dbg !5566
  %18 = load i32, i32* %i, align 4, !dbg !5567
  %idxprom = sext i32 %18 to i64, !dbg !5566
  %arrayidx = getelementptr i16, i16* %17, i64 %idxprom, !dbg !5566
  store i16 %conv8, i16* %arrayidx, align 2, !dbg !5568
  %19 = load i32, i32* %i, align 4, !dbg !5569
  %shl9 = shl i32 %19, 8, !dbg !5570
  %conv10 = trunc i32 %shl9 to i16, !dbg !5569
  %20 = load i16*, i16** %g_base, align 8, !dbg !5571
  %21 = load i32, i32* %i, align 4, !dbg !5572
  %idxprom11 = sext i32 %21 to i64, !dbg !5571
  %arrayidx12 = getelementptr i16, i16* %20, i64 %idxprom11, !dbg !5571
  store i16 %conv10, i16* %arrayidx12, align 2, !dbg !5573
  %22 = load i32, i32* %i, align 4, !dbg !5574
  %shl13 = shl i32 %22, 8, !dbg !5575
  %conv14 = trunc i32 %shl13 to i16, !dbg !5574
  %23 = load i16*, i16** %b_base, align 8, !dbg !5576
  %24 = load i32, i32* %i, align 4, !dbg !5577
  %idxprom15 = sext i32 %24 to i64, !dbg !5576
  %arrayidx16 = getelementptr i16, i16* %23, i64 %idxprom15, !dbg !5576
  store i16 %conv14, i16* %arrayidx16, align 2, !dbg !5578
  br label %for.inc, !dbg !5579

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !5580
  %inc = add i32 %25, 1, !dbg !5580
  store i32 %inc, i32* %i, align 4, !dbg !5580
  br label %for.cond, !dbg !5581, !llvm.loop !5582

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5584
  br label %return, !dbg !5584

return:                                           ; preds = %for.end, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5585
  ret i32 %26, !dbg !5585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !5586 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  %0 = load i64, i64* %n.addr, align 8, !dbg !5595
  %1 = load i64, i64* %size.addr, align 8, !dbg !5596
  %2 = load i32, i32* %flags.addr, align 4, !dbg !5597
  %or = or i32 %2, 256, !dbg !5598
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !5599
  ret i8* %call, !dbg !5600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_gamma_set_ioctl(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !5601 {
entry:
  %retval.i.i104 = alloca i1, align 1
  %addr.addr.i.i105 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i105, metadata !5602, metadata !DIExpression()), !dbg !5607
  %bytes.addr.i.i106 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i106, metadata !5616, metadata !DIExpression()), !dbg !5617
  %is_source.addr.i.i107 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i107, metadata !5618, metadata !DIExpression()), !dbg !5619
  %sz.i.i108 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i108, metadata !5620, metadata !DIExpression()), !dbg !5621
  %__ret_warn_on.i.i109 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i109, metadata !5622, metadata !DIExpression()), !dbg !5625
  %tmp.i.i110 = alloca i64, align 8
  %to.addr.i111 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i111, metadata !5626, metadata !DIExpression()), !dbg !5627
  %from.addr.i112 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i112, metadata !5628, metadata !DIExpression()), !dbg !5629
  %n.addr.i113 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i113, metadata !5630, metadata !DIExpression()), !dbg !5631
  %retval.i.i53 = alloca i1, align 1
  %addr.addr.i.i54 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i54, metadata !5602, metadata !DIExpression()), !dbg !5632
  %bytes.addr.i.i55 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i55, metadata !5616, metadata !DIExpression()), !dbg !5636
  %is_source.addr.i.i56 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i56, metadata !5618, metadata !DIExpression()), !dbg !5637
  %sz.i.i57 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i57, metadata !5620, metadata !DIExpression()), !dbg !5638
  %__ret_warn_on.i.i58 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i58, metadata !5622, metadata !DIExpression()), !dbg !5639
  %tmp.i.i59 = alloca i64, align 8
  %to.addr.i60 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i60, metadata !5626, metadata !DIExpression()), !dbg !5640
  %from.addr.i61 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i61, metadata !5628, metadata !DIExpression()), !dbg !5641
  %n.addr.i62 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i62, metadata !5630, metadata !DIExpression()), !dbg !5642
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5602, metadata !DIExpression()), !dbg !5643
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5616, metadata !DIExpression()), !dbg !5647
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5618, metadata !DIExpression()), !dbg !5648
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5620, metadata !DIExpression()), !dbg !5649
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5622, metadata !DIExpression()), !dbg !5650
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5626, metadata !DIExpression()), !dbg !5651
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5628, metadata !DIExpression()), !dbg !5652
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5630, metadata !DIExpression()), !dbg !5653
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %crtc_lut = alloca %struct.drm_mode_crtc_lut*, align 8
  %crtc = alloca %struct.drm_crtc*, align 8
  %r_base = alloca i8*, align 8
  %g_base = alloca i8*, align 8
  %b_base = alloca i8*, align 8
  %size = alloca i32, align 4
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  call void @llvm.dbg.declare(metadata %struct.drm_mode_crtc_lut** %crtc_lut, metadata !5660, metadata !DIExpression()), !dbg !5669
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5670
  %1 = bitcast i8* %0 to %struct.drm_mode_crtc_lut*, !dbg !5670
  store %struct.drm_mode_crtc_lut* %1, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5669
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc, metadata !5671, metadata !DIExpression()), !dbg !5672
  call void @llvm.dbg.declare(metadata i8** %r_base, metadata !5673, metadata !DIExpression()), !dbg !5674
  call void @llvm.dbg.declare(metadata i8** %g_base, metadata !5675, metadata !DIExpression()), !dbg !5676
  call void @llvm.dbg.declare(metadata i8** %b_base, metadata !5677, metadata !DIExpression()), !dbg !5678
  call void @llvm.dbg.declare(metadata i32* %size, metadata !5679, metadata !DIExpression()), !dbg !5680
  call void @llvm.dbg.declare(metadata %struct.drm_modeset_acquire_ctx* %ctx, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5683, metadata !DIExpression()), !dbg !5684
  store i32 0, i32* %ret, align 4, !dbg !5684
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5685
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %2, i32 2) #7, !dbg !5687
  br i1 %call, label %if.end, label %if.then, !dbg !5688

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5689
  br label %return, !dbg !5689

if.end:                                           ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5690
  %4 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5691
  %5 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5692
  %crtc_id = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %5, i32 0, i32 0, !dbg !5693
  %6 = load i32, i32* %crtc_id, align 8, !dbg !5693
  %call1 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %3, %struct.drm_file* %4, i32 %6) #7, !dbg !5694
  store %struct.drm_crtc* %call1, %struct.drm_crtc** %crtc, align 8, !dbg !5695
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5696
  %tobool = icmp ne %struct.drm_crtc* %7, null, !dbg !5696
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5698

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !5699
  br label %return, !dbg !5699

if.end3:                                          ; preds = %if.end
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5700
  %funcs = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 16, !dbg !5702
  %9 = load %struct.drm_crtc_funcs*, %struct.drm_crtc_funcs** %funcs, align 8, !dbg !5702
  %gamma_set = getelementptr inbounds %struct.drm_crtc_funcs, %struct.drm_crtc_funcs* %9, i32 0, i32 4, !dbg !5703
  %10 = load i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)** %gamma_set, align 8, !dbg !5703
  %cmp = icmp eq i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)* %10, null, !dbg !5704
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5705

if.then4:                                         ; preds = %if.end3
  store i32 -38, i32* %retval, align 4, !dbg !5706
  br label %return, !dbg !5706

if.end5:                                          ; preds = %if.end3
  %11 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5707
  %gamma_size = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %11, i32 0, i32 1, !dbg !5709
  %12 = load i32, i32* %gamma_size, align 4, !dbg !5709
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5710
  %gamma_size6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 17, !dbg !5711
  %14 = load i32, i32* %gamma_size6, align 8, !dbg !5711
  %cmp7 = icmp ne i32 %12, %14, !dbg !5712
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5713

if.then8:                                         ; preds = %if.end5
  store i32 -22, i32* %retval, align 4, !dbg !5714
  br label %return, !dbg !5714

if.end9:                                          ; preds = %if.end5
  %15 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5715
  %call10 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %15) #7, !dbg !5715
  br i1 %call10, label %if.end12, label %if.then11, !dbg !5717

if.then11:                                        ; preds = %if.end9
  %16 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5715
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 35, !dbg !5715
  %mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 0, !dbg !5715
  call void @mutex_lock(%struct.mutex* %mutex) #7, !dbg !5715
  br label %if.end12, !dbg !5715

if.end12:                                         ; preds = %if.then11, %if.end9
  call void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %ctx, i32 0) #7, !dbg !5717
  br label %modeset_lock_retry, !dbg !5717

modeset_lock_retry:                               ; preds = %if.then45, %if.end12
  call void @llvm.dbg.label(metadata !5718), !dbg !5717
  %17 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5717
  %call13 = call i32 @drm_modeset_lock_all_ctx(%struct.drm_device* %17, %struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5717
  store i32 %call13, i32* %ret, align 4, !dbg !5717
  %18 = load i32, i32* %ret, align 4, !dbg !5719
  %tobool14 = icmp ne i32 %18, 0, !dbg !5719
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5717

if.then15:                                        ; preds = %modeset_lock_retry
  br label %modeset_lock_fail, !dbg !5719

if.end16:                                         ; preds = %modeset_lock_retry
  %19 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5721
  %gamma_size17 = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %19, i32 0, i32 1, !dbg !5722
  %20 = load i32, i32* %gamma_size17, align 4, !dbg !5722
  %conv = zext i32 %20 to i64, !dbg !5721
  %mul = mul i64 %conv, 2, !dbg !5723
  %conv18 = trunc i64 %mul to i32, !dbg !5721
  store i32 %conv18, i32* %size, align 4, !dbg !5724
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5725
  %gamma_store = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 18, !dbg !5726
  %22 = load i16*, i16** %gamma_store, align 8, !dbg !5726
  %23 = bitcast i16* %22 to i8*, !dbg !5725
  store i8* %23, i8** %r_base, align 8, !dbg !5727
  %24 = load i8*, i8** %r_base, align 8, !dbg !5728
  %25 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5729
  %red = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %25, i32 0, i32 2, !dbg !5730
  %26 = load i64, i64* %red, align 8, !dbg !5730
  %27 = inttoptr i64 %26 to i8*, !dbg !5731
  %28 = load i32, i32* %size, align 4, !dbg !5732
  %conv19 = sext i32 %28 to i64, !dbg !5732
  store i8* %24, i8** %to.addr.i, align 8
  store i8* %27, i8** %from.addr.i, align 8
  store i64 %conv19, i64* %n.addr.i, align 8
  %29 = load i8*, i8** %to.addr.i, align 8, !dbg !5733
  %30 = load i64, i64* %n.addr.i, align 8, !dbg !5733
  store i8* %29, i8** %addr.addr.i.i, align 8
  store i64 %30, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5649
  %31 = load i32, i32* %sz.i.i, align 4, !dbg !5734
  %cmp.i.i = icmp sge i32 %31, 0, !dbg !5734
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5734

land.rhs.i.i:                                     ; preds = %if.end16
  %32 = load i32, i32* %sz.i.i, align 4, !dbg !5734
  %conv.i.i = sext i32 %32 to i64, !dbg !5734
  %33 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5734
  %cmp1.i.i = icmp ult i64 %conv.i.i, %33, !dbg !5734
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end16
  %34 = phi i1 [ false, %if.end16 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5736
  %lnot.i.i = xor i1 %34, true, !dbg !5734
  %lnot.ext.i.i = zext i1 %34 to i32, !dbg !5734
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5734
  br i1 %34, label %if.then.i.i, label %if.end10.i.i, !dbg !5737

if.then.i.i:                                      ; preds = %land.end.i.i
  %35 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5738
  %36 = call i1 @llvm.is.constant.i64(i64 %35) #6, !dbg !5741
  br i1 %36, label %if.else.i.i, label %if.then5.i.i, !dbg !5742

if.then5.i.i:                                     ; preds = %if.then.i.i
  %37 = load i32, i32* %sz.i.i, align 4, !dbg !5743
  %38 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5744
  call void @copy_overflow(i32 %37, i64 %38) #8, !dbg !5745
  br label %if.end9.i.i, !dbg !5745

if.else.i.i:                                      ; preds = %if.then.i.i
  %39 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5746
  %tobool6.i.i = trunc i8 %39 to i1, !dbg !5746
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5748

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !5749
  br label %if.end.i.i, !dbg !5749

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !5750
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5751
  br label %check_copy_size.exit.i, !dbg !5751

if.end10.i.i:                                     ; preds = %land.end.i.i
  %40 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5650
  %cmp11.i.i = icmp ugt i64 %40, 2147483647, !dbg !5650
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5650
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5650
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5650
  %41 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5752
  %tobool17.i.i = icmp ne i32 %41, 0, !dbg !5752
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5752
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5752
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5752
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5650

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !5754, !srcloc !5757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !5758, !srcloc !5760
  br label %if.end31.i.i, !dbg !5761

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %42 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5650
  %tobool32.i.i = icmp ne i32 %42, 0, !dbg !5650
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5650
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5650
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5650
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5752
  %43 = load i64, i64* %tmp.i.i, align 8, !dbg !5650
  %tobool38.i.i = icmp ne i64 %43, 0, !dbg !5762
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5763

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5764
  br label %check_copy_size.exit.i, !dbg !5764

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %44 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5765
  %45 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5766
  %46 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5767
  %tobool41.i.i = trunc i8 %46 to i1, !dbg !5767
  call void @check_object_size(i8* %44, i64 %45, i1 zeroext %tobool41.i.i) #8, !dbg !5768
  store i1 true, i1* %retval.i.i, align 1, !dbg !5769
  br label %check_copy_size.exit.i, !dbg !5769

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %47 = load i1, i1* %retval.i.i, align 1, !dbg !5770
  %lnot.i = xor i1 %47, true, !dbg !5733
  %lnot.ext.i = zext i1 %47 to i32, !dbg !5733
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5733
  br i1 %47, label %if.then.i, label %copy_from_user.exit, !dbg !5771

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %48 = load i8*, i8** %to.addr.i, align 8, !dbg !5772
  %49 = load i8*, i8** %from.addr.i, align 8, !dbg !5773
  %50 = load i64, i64* %n.addr.i, align 8, !dbg !5774
  %call2.i = call i64 @_copy_from_user(i8* %48, i8* %49, i64 %50) #8, !dbg !5775
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5776
  br label %copy_from_user.exit, !dbg !5777

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %51 = load i64, i64* %n.addr.i, align 8, !dbg !5778
  %tobool21 = icmp ne i64 %51, 0, !dbg !5779
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5780

if.then22:                                        ; preds = %copy_from_user.exit
  store i32 -14, i32* %ret, align 4, !dbg !5781
  br label %out, !dbg !5783

if.end23:                                         ; preds = %copy_from_user.exit
  %52 = load i8*, i8** %r_base, align 8, !dbg !5784
  %53 = load i32, i32* %size, align 4, !dbg !5785
  %idx.ext = sext i32 %53 to i64, !dbg !5786
  %add.ptr = getelementptr i8, i8* %52, i64 %idx.ext, !dbg !5786
  store i8* %add.ptr, i8** %g_base, align 8, !dbg !5787
  %54 = load i8*, i8** %g_base, align 8, !dbg !5788
  %55 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5789
  %green = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %55, i32 0, i32 3, !dbg !5790
  %56 = load i64, i64* %green, align 8, !dbg !5790
  %57 = inttoptr i64 %56 to i8*, !dbg !5791
  %58 = load i32, i32* %size, align 4, !dbg !5792
  %conv24 = sext i32 %58 to i64, !dbg !5792
  store i8* %54, i8** %to.addr.i60, align 8
  store i8* %57, i8** %from.addr.i61, align 8
  store i64 %conv24, i64* %n.addr.i62, align 8
  %59 = load i8*, i8** %to.addr.i60, align 8, !dbg !5793
  %60 = load i64, i64* %n.addr.i62, align 8, !dbg !5793
  store i8* %59, i8** %addr.addr.i.i54, align 8
  store i64 %60, i64* %bytes.addr.i.i55, align 8
  store i8 0, i8* %is_source.addr.i.i56, align 1
  store i32 -1, i32* %sz.i.i57, align 4, !dbg !5638
  %61 = load i32, i32* %sz.i.i57, align 4, !dbg !5794
  %cmp.i.i63 = icmp sge i32 %61, 0, !dbg !5794
  br i1 %cmp.i.i63, label %land.rhs.i.i66, label %land.end.i.i70, !dbg !5794

land.rhs.i.i66:                                   ; preds = %if.end23
  %62 = load i32, i32* %sz.i.i57, align 4, !dbg !5794
  %conv.i.i64 = sext i32 %62 to i64, !dbg !5794
  %63 = load i64, i64* %bytes.addr.i.i55, align 8, !dbg !5794
  %cmp1.i.i65 = icmp ult i64 %conv.i.i64, %63, !dbg !5794
  br label %land.end.i.i70

land.end.i.i70:                                   ; preds = %land.rhs.i.i66, %if.end23
  %64 = phi i1 [ false, %if.end23 ], [ %cmp1.i.i65, %land.rhs.i.i66 ], !dbg !5795
  %lnot.i.i67 = xor i1 %64, true, !dbg !5794
  %lnot.ext.i.i68 = zext i1 %64 to i32, !dbg !5794
  %conv4.i.i69 = sext i32 %lnot.ext.i.i68 to i64, !dbg !5794
  br i1 %64, label %if.then.i.i71, label %if.end10.i.i86, !dbg !5796

if.then.i.i71:                                    ; preds = %land.end.i.i70
  %65 = load i64, i64* %bytes.addr.i.i55, align 8, !dbg !5797
  %66 = call i1 @llvm.is.constant.i64(i64 %65) #6, !dbg !5798
  br i1 %66, label %if.else.i.i74, label %if.then5.i.i72, !dbg !5799

if.then5.i.i72:                                   ; preds = %if.then.i.i71
  %67 = load i32, i32* %sz.i.i57, align 4, !dbg !5800
  %68 = load i64, i64* %bytes.addr.i.i55, align 8, !dbg !5801
  call void @copy_overflow(i32 %67, i64 %68) #8, !dbg !5802
  br label %if.end9.i.i78, !dbg !5802

if.else.i.i74:                                    ; preds = %if.then.i.i71
  %69 = load i8, i8* %is_source.addr.i.i56, align 1, !dbg !5803
  %tobool6.i.i73 = trunc i8 %69 to i1, !dbg !5803
  br i1 %tobool6.i.i73, label %if.then7.i.i75, label %if.else8.i.i76, !dbg !5804

if.then7.i.i75:                                   ; preds = %if.else.i.i74
  call void @__bad_copy_from() #8, !dbg !5805
  br label %if.end.i.i77, !dbg !5805

if.else8.i.i76:                                   ; preds = %if.else.i.i74
  call void @__bad_copy_to() #8, !dbg !5806
  br label %if.end.i.i77

if.end.i.i77:                                     ; preds = %if.else8.i.i76, %if.then7.i.i75
  br label %if.end9.i.i78

if.end9.i.i78:                                    ; preds = %if.end.i.i77, %if.then5.i.i72
  store i1 false, i1* %retval.i.i53, align 1, !dbg !5807
  br label %check_copy_size.exit.i100, !dbg !5807

if.end10.i.i86:                                   ; preds = %land.end.i.i70
  %70 = load i64, i64* %bytes.addr.i.i55, align 8, !dbg !5639
  %cmp11.i.i79 = icmp ugt i64 %70, 2147483647, !dbg !5639
  %lnot13.i.i80 = xor i1 %cmp11.i.i79, true, !dbg !5639
  %lnot.ext16.i.i81 = zext i1 %cmp11.i.i79 to i32, !dbg !5639
  store i32 %lnot.ext16.i.i81, i32* %__ret_warn_on.i.i58, align 4, !dbg !5639
  %71 = load i32, i32* %__ret_warn_on.i.i58, align 4, !dbg !5808
  %tobool17.i.i82 = icmp ne i32 %71, 0, !dbg !5808
  %lnot18.i.i83 = xor i1 %tobool17.i.i82, true, !dbg !5808
  %lnot.ext21.i.i84 = zext i1 %tobool17.i.i82 to i32, !dbg !5808
  %conv22.i.i85 = sext i32 %lnot.ext21.i.i84 to i64, !dbg !5808
  br i1 %tobool17.i.i82, label %if.then24.i.i87, label %if.end31.i.i93, !dbg !5639

if.then24.i.i87:                                  ; preds = %if.end10.i.i86
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !5809, !srcloc !5757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !5810, !srcloc !5760
  br label %if.end31.i.i93, !dbg !5811

if.end31.i.i93:                                   ; preds = %if.then24.i.i87, %if.end10.i.i86
  %72 = load i32, i32* %__ret_warn_on.i.i58, align 4, !dbg !5639
  %tobool32.i.i88 = icmp ne i32 %72, 0, !dbg !5639
  %lnot33.i.i89 = xor i1 %tobool32.i.i88, true, !dbg !5639
  %lnot.ext36.i.i90 = zext i1 %tobool32.i.i88 to i32, !dbg !5639
  %conv37.i.i91 = sext i32 %lnot.ext36.i.i90 to i64, !dbg !5639
  store i64 %conv37.i.i91, i64* %tmp.i.i59, align 8, !dbg !5808
  %73 = load i64, i64* %tmp.i.i59, align 8, !dbg !5639
  %tobool38.i.i92 = icmp ne i64 %73, 0, !dbg !5812
  br i1 %tobool38.i.i92, label %if.then39.i.i94, label %if.end40.i.i96, !dbg !5813

if.then39.i.i94:                                  ; preds = %if.end31.i.i93
  store i1 false, i1* %retval.i.i53, align 1, !dbg !5814
  br label %check_copy_size.exit.i100, !dbg !5814

if.end40.i.i96:                                   ; preds = %if.end31.i.i93
  %74 = load i8*, i8** %addr.addr.i.i54, align 8, !dbg !5815
  %75 = load i64, i64* %bytes.addr.i.i55, align 8, !dbg !5816
  %76 = load i8, i8* %is_source.addr.i.i56, align 1, !dbg !5817
  %tobool41.i.i95 = trunc i8 %76 to i1, !dbg !5817
  call void @check_object_size(i8* %74, i64 %75, i1 zeroext %tobool41.i.i95) #8, !dbg !5818
  store i1 true, i1* %retval.i.i53, align 1, !dbg !5819
  br label %check_copy_size.exit.i100, !dbg !5819

check_copy_size.exit.i100:                        ; preds = %if.end40.i.i96, %if.then39.i.i94, %if.end9.i.i78
  %77 = load i1, i1* %retval.i.i53, align 1, !dbg !5820
  %lnot.i97 = xor i1 %77, true, !dbg !5793
  %lnot.ext.i98 = zext i1 %77 to i32, !dbg !5793
  %conv.i99 = sext i32 %lnot.ext.i98 to i64, !dbg !5793
  br i1 %77, label %if.then.i102, label %copy_from_user.exit103, !dbg !5821

if.then.i102:                                     ; preds = %check_copy_size.exit.i100
  %78 = load i8*, i8** %to.addr.i60, align 8, !dbg !5822
  %79 = load i8*, i8** %from.addr.i61, align 8, !dbg !5823
  %80 = load i64, i64* %n.addr.i62, align 8, !dbg !5824
  %call2.i101 = call i64 @_copy_from_user(i8* %78, i8* %79, i64 %80) #8, !dbg !5825
  store i64 %call2.i101, i64* %n.addr.i62, align 8, !dbg !5826
  br label %copy_from_user.exit103, !dbg !5827

copy_from_user.exit103:                           ; preds = %check_copy_size.exit.i100, %if.then.i102
  %81 = load i64, i64* %n.addr.i62, align 8, !dbg !5828
  %tobool26 = icmp ne i64 %81, 0, !dbg !5829
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5830

if.then27:                                        ; preds = %copy_from_user.exit103
  store i32 -14, i32* %ret, align 4, !dbg !5831
  br label %out, !dbg !5833

if.end28:                                         ; preds = %copy_from_user.exit103
  %82 = load i8*, i8** %g_base, align 8, !dbg !5834
  %83 = load i32, i32* %size, align 4, !dbg !5835
  %idx.ext29 = sext i32 %83 to i64, !dbg !5836
  %add.ptr30 = getelementptr i8, i8* %82, i64 %idx.ext29, !dbg !5836
  store i8* %add.ptr30, i8** %b_base, align 8, !dbg !5837
  %84 = load i8*, i8** %b_base, align 8, !dbg !5838
  %85 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !5839
  %blue = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %85, i32 0, i32 4, !dbg !5840
  %86 = load i64, i64* %blue, align 8, !dbg !5840
  %87 = inttoptr i64 %86 to i8*, !dbg !5841
  %88 = load i32, i32* %size, align 4, !dbg !5842
  %conv31 = sext i32 %88 to i64, !dbg !5842
  store i8* %84, i8** %to.addr.i111, align 8
  store i8* %87, i8** %from.addr.i112, align 8
  store i64 %conv31, i64* %n.addr.i113, align 8
  %89 = load i8*, i8** %to.addr.i111, align 8, !dbg !5843
  %90 = load i64, i64* %n.addr.i113, align 8, !dbg !5843
  store i8* %89, i8** %addr.addr.i.i105, align 8
  store i64 %90, i64* %bytes.addr.i.i106, align 8
  store i8 0, i8* %is_source.addr.i.i107, align 1
  store i32 -1, i32* %sz.i.i108, align 4, !dbg !5621
  %91 = load i32, i32* %sz.i.i108, align 4, !dbg !5844
  %cmp.i.i114 = icmp sge i32 %91, 0, !dbg !5844
  br i1 %cmp.i.i114, label %land.rhs.i.i117, label %land.end.i.i121, !dbg !5844

land.rhs.i.i117:                                  ; preds = %if.end28
  %92 = load i32, i32* %sz.i.i108, align 4, !dbg !5844
  %conv.i.i115 = sext i32 %92 to i64, !dbg !5844
  %93 = load i64, i64* %bytes.addr.i.i106, align 8, !dbg !5844
  %cmp1.i.i116 = icmp ult i64 %conv.i.i115, %93, !dbg !5844
  br label %land.end.i.i121

land.end.i.i121:                                  ; preds = %land.rhs.i.i117, %if.end28
  %94 = phi i1 [ false, %if.end28 ], [ %cmp1.i.i116, %land.rhs.i.i117 ], !dbg !5845
  %lnot.i.i118 = xor i1 %94, true, !dbg !5844
  %lnot.ext.i.i119 = zext i1 %94 to i32, !dbg !5844
  %conv4.i.i120 = sext i32 %lnot.ext.i.i119 to i64, !dbg !5844
  br i1 %94, label %if.then.i.i122, label %if.end10.i.i137, !dbg !5846

if.then.i.i122:                                   ; preds = %land.end.i.i121
  %95 = load i64, i64* %bytes.addr.i.i106, align 8, !dbg !5847
  %96 = call i1 @llvm.is.constant.i64(i64 %95) #6, !dbg !5848
  br i1 %96, label %if.else.i.i125, label %if.then5.i.i123, !dbg !5849

if.then5.i.i123:                                  ; preds = %if.then.i.i122
  %97 = load i32, i32* %sz.i.i108, align 4, !dbg !5850
  %98 = load i64, i64* %bytes.addr.i.i106, align 8, !dbg !5851
  call void @copy_overflow(i32 %97, i64 %98) #8, !dbg !5852
  br label %if.end9.i.i129, !dbg !5852

if.else.i.i125:                                   ; preds = %if.then.i.i122
  %99 = load i8, i8* %is_source.addr.i.i107, align 1, !dbg !5853
  %tobool6.i.i124 = trunc i8 %99 to i1, !dbg !5853
  br i1 %tobool6.i.i124, label %if.then7.i.i126, label %if.else8.i.i127, !dbg !5854

if.then7.i.i126:                                  ; preds = %if.else.i.i125
  call void @__bad_copy_from() #8, !dbg !5855
  br label %if.end.i.i128, !dbg !5855

if.else8.i.i127:                                  ; preds = %if.else.i.i125
  call void @__bad_copy_to() #8, !dbg !5856
  br label %if.end.i.i128

if.end.i.i128:                                    ; preds = %if.else8.i.i127, %if.then7.i.i126
  br label %if.end9.i.i129

if.end9.i.i129:                                   ; preds = %if.end.i.i128, %if.then5.i.i123
  store i1 false, i1* %retval.i.i104, align 1, !dbg !5857
  br label %check_copy_size.exit.i151, !dbg !5857

if.end10.i.i137:                                  ; preds = %land.end.i.i121
  %100 = load i64, i64* %bytes.addr.i.i106, align 8, !dbg !5625
  %cmp11.i.i130 = icmp ugt i64 %100, 2147483647, !dbg !5625
  %lnot13.i.i131 = xor i1 %cmp11.i.i130, true, !dbg !5625
  %lnot.ext16.i.i132 = zext i1 %cmp11.i.i130 to i32, !dbg !5625
  store i32 %lnot.ext16.i.i132, i32* %__ret_warn_on.i.i109, align 4, !dbg !5625
  %101 = load i32, i32* %__ret_warn_on.i.i109, align 4, !dbg !5858
  %tobool17.i.i133 = icmp ne i32 %101, 0, !dbg !5858
  %lnot18.i.i134 = xor i1 %tobool17.i.i133, true, !dbg !5858
  %lnot.ext21.i.i135 = zext i1 %tobool17.i.i133 to i32, !dbg !5858
  %conv22.i.i136 = sext i32 %lnot.ext21.i.i135 to i64, !dbg !5858
  br i1 %tobool17.i.i133, label %if.then24.i.i138, label %if.end31.i.i144, !dbg !5625

if.then24.i.i138:                                 ; preds = %if.end10.i.i137
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !5859, !srcloc !5757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !5860, !srcloc !5760
  br label %if.end31.i.i144, !dbg !5861

if.end31.i.i144:                                  ; preds = %if.then24.i.i138, %if.end10.i.i137
  %102 = load i32, i32* %__ret_warn_on.i.i109, align 4, !dbg !5625
  %tobool32.i.i139 = icmp ne i32 %102, 0, !dbg !5625
  %lnot33.i.i140 = xor i1 %tobool32.i.i139, true, !dbg !5625
  %lnot.ext36.i.i141 = zext i1 %tobool32.i.i139 to i32, !dbg !5625
  %conv37.i.i142 = sext i32 %lnot.ext36.i.i141 to i64, !dbg !5625
  store i64 %conv37.i.i142, i64* %tmp.i.i110, align 8, !dbg !5858
  %103 = load i64, i64* %tmp.i.i110, align 8, !dbg !5625
  %tobool38.i.i143 = icmp ne i64 %103, 0, !dbg !5862
  br i1 %tobool38.i.i143, label %if.then39.i.i145, label %if.end40.i.i147, !dbg !5863

if.then39.i.i145:                                 ; preds = %if.end31.i.i144
  store i1 false, i1* %retval.i.i104, align 1, !dbg !5864
  br label %check_copy_size.exit.i151, !dbg !5864

if.end40.i.i147:                                  ; preds = %if.end31.i.i144
  %104 = load i8*, i8** %addr.addr.i.i105, align 8, !dbg !5865
  %105 = load i64, i64* %bytes.addr.i.i106, align 8, !dbg !5866
  %106 = load i8, i8* %is_source.addr.i.i107, align 1, !dbg !5867
  %tobool41.i.i146 = trunc i8 %106 to i1, !dbg !5867
  call void @check_object_size(i8* %104, i64 %105, i1 zeroext %tobool41.i.i146) #8, !dbg !5868
  store i1 true, i1* %retval.i.i104, align 1, !dbg !5869
  br label %check_copy_size.exit.i151, !dbg !5869

check_copy_size.exit.i151:                        ; preds = %if.end40.i.i147, %if.then39.i.i145, %if.end9.i.i129
  %107 = load i1, i1* %retval.i.i104, align 1, !dbg !5870
  %lnot.i148 = xor i1 %107, true, !dbg !5843
  %lnot.ext.i149 = zext i1 %107 to i32, !dbg !5843
  %conv.i150 = sext i32 %lnot.ext.i149 to i64, !dbg !5843
  br i1 %107, label %if.then.i153, label %copy_from_user.exit154, !dbg !5871

if.then.i153:                                     ; preds = %check_copy_size.exit.i151
  %108 = load i8*, i8** %to.addr.i111, align 8, !dbg !5872
  %109 = load i8*, i8** %from.addr.i112, align 8, !dbg !5873
  %110 = load i64, i64* %n.addr.i113, align 8, !dbg !5874
  %call2.i152 = call i64 @_copy_from_user(i8* %108, i8* %109, i64 %110) #8, !dbg !5875
  store i64 %call2.i152, i64* %n.addr.i113, align 8, !dbg !5876
  br label %copy_from_user.exit154, !dbg !5877

copy_from_user.exit154:                           ; preds = %check_copy_size.exit.i151, %if.then.i153
  %111 = load i64, i64* %n.addr.i113, align 8, !dbg !5878
  %tobool33 = icmp ne i64 %111, 0, !dbg !5879
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5880

if.then34:                                        ; preds = %copy_from_user.exit154
  store i32 -14, i32* %ret, align 4, !dbg !5881
  br label %out, !dbg !5883

if.end35:                                         ; preds = %copy_from_user.exit154
  %112 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5884
  %funcs36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %112, i32 0, i32 16, !dbg !5885
  %113 = load %struct.drm_crtc_funcs*, %struct.drm_crtc_funcs** %funcs36, align 8, !dbg !5885
  %gamma_set37 = getelementptr inbounds %struct.drm_crtc_funcs, %struct.drm_crtc_funcs* %113, i32 0, i32 4, !dbg !5886
  %114 = load i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)** %gamma_set37, align 8, !dbg !5886
  %115 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5887
  %116 = load i8*, i8** %r_base, align 8, !dbg !5888
  %117 = bitcast i8* %116 to i16*, !dbg !5888
  %118 = load i8*, i8** %g_base, align 8, !dbg !5889
  %119 = bitcast i8* %118 to i16*, !dbg !5889
  %120 = load i8*, i8** %b_base, align 8, !dbg !5890
  %121 = bitcast i8* %120 to i16*, !dbg !5890
  %122 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5891
  %gamma_size38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %122, i32 0, i32 17, !dbg !5892
  %123 = load i32, i32* %gamma_size38, align 8, !dbg !5892
  %call39 = call i32 %114(%struct.drm_crtc* %115, i16* %117, i16* %119, i16* %121, i32 %123, %struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5884
  store i32 %call39, i32* %ret, align 4, !dbg !5893
  br label %out, !dbg !5894

out:                                              ; preds = %if.end35, %if.then34, %if.then27, %if.then22
  call void @llvm.dbg.label(metadata !5895), !dbg !5896
  br label %modeset_lock_fail, !dbg !5894

modeset_lock_fail:                                ; preds = %out, %if.then15
  call void @llvm.dbg.label(metadata !5897), !dbg !5898
  %124 = load i32, i32* %ret, align 4, !dbg !5899
  %cmp40 = icmp eq i32 %124, -35, !dbg !5899
  br i1 %cmp40, label %if.then42, label %if.end47, !dbg !5898

if.then42:                                        ; preds = %modeset_lock_fail
  %call43 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5901
  store i32 %call43, i32* %ret, align 4, !dbg !5901
  %125 = load i32, i32* %ret, align 4, !dbg !5903
  %tobool44 = icmp ne i32 %125, 0, !dbg !5903
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !5901

if.then45:                                        ; preds = %if.then42
  br label %modeset_lock_retry, !dbg !5903

if.end46:                                         ; preds = %if.then42
  br label %if.end47, !dbg !5901

if.end47:                                         ; preds = %if.end46, %modeset_lock_fail
  call void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5898
  call void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5898
  %126 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5905
  %call48 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %126) #7, !dbg !5905
  br i1 %call48, label %if.end52, label %if.then49, !dbg !5898

if.then49:                                        ; preds = %if.end47
  %127 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5905
  %mode_config50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %127, i32 0, i32 35, !dbg !5905
  %mutex51 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config50, i32 0, i32 0, !dbg !5905
  call void @mutex_unlock(%struct.mutex* %mutex51) #7, !dbg !5905
  br label %if.end52, !dbg !5905

if.end52:                                         ; preds = %if.then49, %if.end47
  %128 = load i32, i32* %ret, align 4, !dbg !5907
  store i32 %128, i32* %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

return:                                           ; preds = %if.end52, %if.then8, %if.then4, %if.then2, %if.then
  %129 = load i32, i32* %retval, align 4, !dbg !5909
  ret i32 %129, !dbg !5909
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_feature(%struct.drm_device* %dev, i32 %feature) #0 !dbg !5910 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %feature.addr = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5919
  %1 = load i32, i32* %feature.addr, align 4, !dbg !5920
  %call = call zeroext i1 @drm_core_check_all_features(%struct.drm_device* %0, i32 %1) #7, !dbg !5921
  ret i1 %call, !dbg !5922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %dev, %struct.drm_file* %file_priv, i32 %id) #0 !dbg !5923 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %id.addr = alloca i32, align 4
  %mo = alloca %struct.drm_mode_object*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_crtc*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5928, metadata !DIExpression()), !dbg !5929
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !5930, metadata !DIExpression()), !dbg !5931
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %mo, metadata !5932, metadata !DIExpression()), !dbg !5934
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5935
  %1 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5936
  %2 = load i32, i32* %id.addr, align 4, !dbg !5937
  %call = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 -858993460) #7, !dbg !5938
  store %struct.drm_mode_object* %call, %struct.drm_mode_object** %mo, align 8, !dbg !5939
  %3 = load %struct.drm_mode_object*, %struct.drm_mode_object** %mo, align 8, !dbg !5940
  %tobool = icmp ne %struct.drm_mode_object* %3, null, !dbg !5940
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5940

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5941, metadata !DIExpression()), !dbg !5943
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %mo, align 8, !dbg !5943
  %5 = bitcast %struct.drm_mode_object* %4 to i8*, !dbg !5943
  store i8* %5, i8** %__mptr, align 8, !dbg !5943
  br label %do.body, !dbg !5943

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5944

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !5943
  %add.ptr = getelementptr i8, i8* %6, i64 -88, !dbg !5943
  %7 = bitcast i8* %add.ptr to %struct.drm_crtc*, !dbg !5943
  store %struct.drm_crtc* %7, %struct.drm_crtc** %tmp, align 8, !dbg !5944
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %tmp, align 8, !dbg !5943
  br label %cond.end, !dbg !5940

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5940

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.drm_crtc* [ %8, %do.end ], [ null, %cond.false ], !dbg !5940
  ret %struct.drm_crtc* %cond, !dbg !5946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %dev) #0 !dbg !5947 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5952
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %0, i32 16) #7, !dbg !5953
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !5954

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5955
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 35, !dbg !5956
  %funcs = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 27, !dbg !5957
  %2 = load %struct.drm_mode_config_funcs*, %struct.drm_mode_config_funcs** %funcs, align 8, !dbg !5957
  %tobool = icmp ne %struct.drm_mode_config_funcs* %2, null, !dbg !5955
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5958

land.rhs:                                         ; preds = %lor.rhs
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5959
  %mode_config1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 35, !dbg !5960
  %funcs2 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config1, i32 0, i32 27, !dbg !5961
  %4 = load %struct.drm_mode_config_funcs*, %struct.drm_mode_config_funcs** %funcs2, align 8, !dbg !5961
  %atomic_commit = getelementptr inbounds %struct.drm_mode_config_funcs, %struct.drm_mode_config_funcs* %4, i32 0, i32 5, !dbg !5962
  %5 = load i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)** %atomic_commit, align 8, !dbg !5962
  %cmp = icmp ne i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)* %5, null, !dbg !5963
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ], !dbg !5964
  br label %lor.end, !dbg !5954

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  ret i1 %7, !dbg !5965
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @drm_modeset_lock_all_ctx(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_gamma_get_ioctl(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !5966 {
entry:
  %retval.i.i79 = alloca i1, align 1
  %addr.addr.i.i80 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i80, metadata !5602, metadata !DIExpression()), !dbg !5967
  %bytes.addr.i.i81 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i81, metadata !5616, metadata !DIExpression()), !dbg !5973
  %is_source.addr.i.i82 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i82, metadata !5618, metadata !DIExpression()), !dbg !5974
  %sz.i.i83 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i83, metadata !5620, metadata !DIExpression()), !dbg !5975
  %__ret_warn_on.i.i84 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i84, metadata !5622, metadata !DIExpression()), !dbg !5976
  %tmp.i.i85 = alloca i64, align 8
  %to.addr.i86 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i86, metadata !5977, metadata !DIExpression()), !dbg !5978
  %from.addr.i87 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i87, metadata !5979, metadata !DIExpression()), !dbg !5980
  %n.addr.i88 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i88, metadata !5981, metadata !DIExpression()), !dbg !5982
  %retval.i.i28 = alloca i1, align 1
  %addr.addr.i.i29 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i29, metadata !5602, metadata !DIExpression()), !dbg !5983
  %bytes.addr.i.i30 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i30, metadata !5616, metadata !DIExpression()), !dbg !5987
  %is_source.addr.i.i31 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i31, metadata !5618, metadata !DIExpression()), !dbg !5988
  %sz.i.i32 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i32, metadata !5620, metadata !DIExpression()), !dbg !5989
  %__ret_warn_on.i.i33 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i33, metadata !5622, metadata !DIExpression()), !dbg !5990
  %tmp.i.i34 = alloca i64, align 8
  %to.addr.i35 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i35, metadata !5977, metadata !DIExpression()), !dbg !5991
  %from.addr.i36 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i36, metadata !5979, metadata !DIExpression()), !dbg !5992
  %n.addr.i37 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i37, metadata !5981, metadata !DIExpression()), !dbg !5993
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5602, metadata !DIExpression()), !dbg !5994
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5616, metadata !DIExpression()), !dbg !5998
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5618, metadata !DIExpression()), !dbg !5999
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5620, metadata !DIExpression()), !dbg !6000
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5622, metadata !DIExpression()), !dbg !6001
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5977, metadata !DIExpression()), !dbg !6002
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5979, metadata !DIExpression()), !dbg !6003
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5981, metadata !DIExpression()), !dbg !6004
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %crtc_lut = alloca %struct.drm_mode_crtc_lut*, align 8
  %crtc = alloca %struct.drm_crtc*, align 8
  %r_base = alloca i8*, align 8
  %g_base = alloca i8*, align 8
  %b_base = alloca i8*, align 8
  %size = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6005, metadata !DIExpression()), !dbg !6006
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  call void @llvm.dbg.declare(metadata %struct.drm_mode_crtc_lut** %crtc_lut, metadata !6011, metadata !DIExpression()), !dbg !6012
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6013
  %1 = bitcast i8* %0 to %struct.drm_mode_crtc_lut*, !dbg !6013
  store %struct.drm_mode_crtc_lut* %1, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6012
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc, metadata !6014, metadata !DIExpression()), !dbg !6015
  call void @llvm.dbg.declare(metadata i8** %r_base, metadata !6016, metadata !DIExpression()), !dbg !6017
  call void @llvm.dbg.declare(metadata i8** %g_base, metadata !6018, metadata !DIExpression()), !dbg !6019
  call void @llvm.dbg.declare(metadata i8** %b_base, metadata !6020, metadata !DIExpression()), !dbg !6021
  call void @llvm.dbg.declare(metadata i32* %size, metadata !6022, metadata !DIExpression()), !dbg !6023
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6024, metadata !DIExpression()), !dbg !6025
  store i32 0, i32* %ret, align 4, !dbg !6025
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6026
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %2, i32 2) #7, !dbg !6028
  br i1 %call, label %if.end, label %if.then, !dbg !6029

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !6030
  br label %return, !dbg !6030

if.end:                                           ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6031
  %4 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !6032
  %5 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6033
  %crtc_id = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %5, i32 0, i32 0, !dbg !6034
  %6 = load i32, i32* %crtc_id, align 8, !dbg !6034
  %call1 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %3, %struct.drm_file* %4, i32 %6) #7, !dbg !6035
  store %struct.drm_crtc* %call1, %struct.drm_crtc** %crtc, align 8, !dbg !6036
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !6037
  %tobool = icmp ne %struct.drm_crtc* %7, null, !dbg !6037
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6039

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !6040
  br label %return, !dbg !6040

if.end3:                                          ; preds = %if.end
  %8 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6041
  %gamma_size = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %8, i32 0, i32 1, !dbg !6043
  %9 = load i32, i32* %gamma_size, align 4, !dbg !6043
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !6044
  %gamma_size4 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 17, !dbg !6045
  %11 = load i32, i32* %gamma_size4, align 8, !dbg !6045
  %cmp = icmp ne i32 %9, %11, !dbg !6046
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6047

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %retval, align 4, !dbg !6048
  br label %return, !dbg !6048

if.end6:                                          ; preds = %if.end3
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !6049
  %mutex = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 4, !dbg !6050
  %call7 = call i32 @drm_modeset_lock(%struct.drm_modeset_lock* %mutex, %struct.drm_modeset_acquire_ctx* null) #7, !dbg !6051
  %13 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6052
  %gamma_size8 = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %13, i32 0, i32 1, !dbg !6053
  %14 = load i32, i32* %gamma_size8, align 4, !dbg !6053
  %conv = zext i32 %14 to i64, !dbg !6052
  %mul = mul i64 %conv, 2, !dbg !6054
  %conv9 = trunc i64 %mul to i32, !dbg !6052
  store i32 %conv9, i32* %size, align 4, !dbg !6055
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !6056
  %gamma_store = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 18, !dbg !6057
  %16 = load i16*, i16** %gamma_store, align 8, !dbg !6057
  %17 = bitcast i16* %16 to i8*, !dbg !6056
  store i8* %17, i8** %r_base, align 8, !dbg !6058
  %18 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6059
  %red = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %18, i32 0, i32 2, !dbg !6060
  %19 = load i64, i64* %red, align 8, !dbg !6060
  %20 = inttoptr i64 %19 to i8*, !dbg !6061
  %21 = load i8*, i8** %r_base, align 8, !dbg !6062
  %22 = load i32, i32* %size, align 4, !dbg !6063
  %conv10 = sext i32 %22 to i64, !dbg !6063
  store i8* %20, i8** %to.addr.i, align 8
  store i8* %21, i8** %from.addr.i, align 8
  store i64 %conv10, i64* %n.addr.i, align 8
  %23 = load i8*, i8** %from.addr.i, align 8, !dbg !6064
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !6064
  store i8* %23, i8** %addr.addr.i.i, align 8
  store i64 %24, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !6000
  %25 = load i32, i32* %sz.i.i, align 4, !dbg !6065
  %cmp.i.i = icmp sge i32 %25, 0, !dbg !6065
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6065

land.rhs.i.i:                                     ; preds = %if.end6
  %26 = load i32, i32* %sz.i.i, align 4, !dbg !6065
  %conv.i.i = sext i32 %26 to i64, !dbg !6065
  %27 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6065
  %cmp1.i.i = icmp ult i64 %conv.i.i, %27, !dbg !6065
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end6
  %28 = phi i1 [ false, %if.end6 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6066
  %lnot.i.i = xor i1 %28, true, !dbg !6065
  %lnot.ext.i.i = zext i1 %28 to i32, !dbg !6065
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6065
  br i1 %28, label %if.then.i.i, label %if.end10.i.i, !dbg !6067

if.then.i.i:                                      ; preds = %land.end.i.i
  %29 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6068
  %30 = call i1 @llvm.is.constant.i64(i64 %29) #6, !dbg !6069
  br i1 %30, label %if.else.i.i, label %if.then5.i.i, !dbg !6070

if.then5.i.i:                                     ; preds = %if.then.i.i
  %31 = load i32, i32* %sz.i.i, align 4, !dbg !6071
  %32 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6072
  call void @copy_overflow(i32 %31, i64 %32) #8, !dbg !6073
  br label %if.end9.i.i, !dbg !6073

if.else.i.i:                                      ; preds = %if.then.i.i
  %33 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6074
  %tobool6.i.i = trunc i8 %33 to i1, !dbg !6074
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6075

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !6076
  br label %if.end.i.i, !dbg !6076

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !6077
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6078
  br label %check_copy_size.exit.i, !dbg !6078

if.end10.i.i:                                     ; preds = %land.end.i.i
  %34 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6001
  %cmp11.i.i = icmp ugt i64 %34, 2147483647, !dbg !6001
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !6001
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !6001
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !6001
  %35 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6079
  %tobool17.i.i = icmp ne i32 %35, 0, !dbg !6079
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6079
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6079
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6079
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !6001

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !6080, !srcloc !5757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !6081, !srcloc !5760
  br label %if.end31.i.i, !dbg !6082

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %36 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6001
  %tobool32.i.i = icmp ne i32 %36, 0, !dbg !6001
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !6001
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !6001
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !6001
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6079
  %37 = load i64, i64* %tmp.i.i, align 8, !dbg !6001
  %tobool38.i.i = icmp ne i64 %37, 0, !dbg !6083
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6084

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6085
  br label %check_copy_size.exit.i, !dbg !6085

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %38 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6086
  %39 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6087
  %40 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6088
  %tobool41.i.i = trunc i8 %40 to i1, !dbg !6088
  call void @check_object_size(i8* %38, i64 %39, i1 zeroext %tobool41.i.i) #8, !dbg !6089
  store i1 true, i1* %retval.i.i, align 1, !dbg !6090
  br label %check_copy_size.exit.i, !dbg !6090

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %41 = load i1, i1* %retval.i.i, align 1, !dbg !6091
  %lnot.i = xor i1 %41, true, !dbg !6064
  %lnot.ext.i = zext i1 %41 to i32, !dbg !6064
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6064
  br i1 %41, label %if.then.i, label %copy_to_user.exit, !dbg !6092

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %42 = load i8*, i8** %to.addr.i, align 8, !dbg !6093
  %43 = load i8*, i8** %from.addr.i, align 8, !dbg !6094
  %44 = load i64, i64* %n.addr.i, align 8, !dbg !6095
  %call2.i = call i64 @_copy_to_user(i8* %42, i8* %43, i64 %44) #8, !dbg !6096
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6097
  br label %copy_to_user.exit, !dbg !6098

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %45 = load i64, i64* %n.addr.i, align 8, !dbg !6099
  %tobool12 = icmp ne i64 %45, 0, !dbg !6100
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6101

if.then13:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %ret, align 4, !dbg !6102
  br label %out, !dbg !6104

if.end14:                                         ; preds = %copy_to_user.exit
  %46 = load i8*, i8** %r_base, align 8, !dbg !6105
  %47 = load i32, i32* %size, align 4, !dbg !6106
  %idx.ext = sext i32 %47 to i64, !dbg !6107
  %add.ptr = getelementptr i8, i8* %46, i64 %idx.ext, !dbg !6107
  store i8* %add.ptr, i8** %g_base, align 8, !dbg !6108
  %48 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6109
  %green = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %48, i32 0, i32 3, !dbg !6110
  %49 = load i64, i64* %green, align 8, !dbg !6110
  %50 = inttoptr i64 %49 to i8*, !dbg !6111
  %51 = load i8*, i8** %g_base, align 8, !dbg !6112
  %52 = load i32, i32* %size, align 4, !dbg !6113
  %conv15 = sext i32 %52 to i64, !dbg !6113
  store i8* %50, i8** %to.addr.i35, align 8
  store i8* %51, i8** %from.addr.i36, align 8
  store i64 %conv15, i64* %n.addr.i37, align 8
  %53 = load i8*, i8** %from.addr.i36, align 8, !dbg !6114
  %54 = load i64, i64* %n.addr.i37, align 8, !dbg !6114
  store i8* %53, i8** %addr.addr.i.i29, align 8
  store i64 %54, i64* %bytes.addr.i.i30, align 8
  store i8 1, i8* %is_source.addr.i.i31, align 1
  store i32 -1, i32* %sz.i.i32, align 4, !dbg !5989
  %55 = load i32, i32* %sz.i.i32, align 4, !dbg !6115
  %cmp.i.i38 = icmp sge i32 %55, 0, !dbg !6115
  br i1 %cmp.i.i38, label %land.rhs.i.i41, label %land.end.i.i45, !dbg !6115

land.rhs.i.i41:                                   ; preds = %if.end14
  %56 = load i32, i32* %sz.i.i32, align 4, !dbg !6115
  %conv.i.i39 = sext i32 %56 to i64, !dbg !6115
  %57 = load i64, i64* %bytes.addr.i.i30, align 8, !dbg !6115
  %cmp1.i.i40 = icmp ult i64 %conv.i.i39, %57, !dbg !6115
  br label %land.end.i.i45

land.end.i.i45:                                   ; preds = %land.rhs.i.i41, %if.end14
  %58 = phi i1 [ false, %if.end14 ], [ %cmp1.i.i40, %land.rhs.i.i41 ], !dbg !6116
  %lnot.i.i42 = xor i1 %58, true, !dbg !6115
  %lnot.ext.i.i43 = zext i1 %58 to i32, !dbg !6115
  %conv4.i.i44 = sext i32 %lnot.ext.i.i43 to i64, !dbg !6115
  br i1 %58, label %if.then.i.i46, label %if.end10.i.i61, !dbg !6117

if.then.i.i46:                                    ; preds = %land.end.i.i45
  %59 = load i64, i64* %bytes.addr.i.i30, align 8, !dbg !6118
  %60 = call i1 @llvm.is.constant.i64(i64 %59) #6, !dbg !6119
  br i1 %60, label %if.else.i.i49, label %if.then5.i.i47, !dbg !6120

if.then5.i.i47:                                   ; preds = %if.then.i.i46
  %61 = load i32, i32* %sz.i.i32, align 4, !dbg !6121
  %62 = load i64, i64* %bytes.addr.i.i30, align 8, !dbg !6122
  call void @copy_overflow(i32 %61, i64 %62) #8, !dbg !6123
  br label %if.end9.i.i53, !dbg !6123

if.else.i.i49:                                    ; preds = %if.then.i.i46
  %63 = load i8, i8* %is_source.addr.i.i31, align 1, !dbg !6124
  %tobool6.i.i48 = trunc i8 %63 to i1, !dbg !6124
  br i1 %tobool6.i.i48, label %if.then7.i.i50, label %if.else8.i.i51, !dbg !6125

if.then7.i.i50:                                   ; preds = %if.else.i.i49
  call void @__bad_copy_from() #8, !dbg !6126
  br label %if.end.i.i52, !dbg !6126

if.else8.i.i51:                                   ; preds = %if.else.i.i49
  call void @__bad_copy_to() #8, !dbg !6127
  br label %if.end.i.i52

if.end.i.i52:                                     ; preds = %if.else8.i.i51, %if.then7.i.i50
  br label %if.end9.i.i53

if.end9.i.i53:                                    ; preds = %if.end.i.i52, %if.then5.i.i47
  store i1 false, i1* %retval.i.i28, align 1, !dbg !6128
  br label %check_copy_size.exit.i75, !dbg !6128

if.end10.i.i61:                                   ; preds = %land.end.i.i45
  %64 = load i64, i64* %bytes.addr.i.i30, align 8, !dbg !5990
  %cmp11.i.i54 = icmp ugt i64 %64, 2147483647, !dbg !5990
  %lnot13.i.i55 = xor i1 %cmp11.i.i54, true, !dbg !5990
  %lnot.ext16.i.i56 = zext i1 %cmp11.i.i54 to i32, !dbg !5990
  store i32 %lnot.ext16.i.i56, i32* %__ret_warn_on.i.i33, align 4, !dbg !5990
  %65 = load i32, i32* %__ret_warn_on.i.i33, align 4, !dbg !6129
  %tobool17.i.i57 = icmp ne i32 %65, 0, !dbg !6129
  %lnot18.i.i58 = xor i1 %tobool17.i.i57, true, !dbg !6129
  %lnot.ext21.i.i59 = zext i1 %tobool17.i.i57 to i32, !dbg !6129
  %conv22.i.i60 = sext i32 %lnot.ext21.i.i59 to i64, !dbg !6129
  br i1 %tobool17.i.i57, label %if.then24.i.i62, label %if.end31.i.i68, !dbg !5990

if.then24.i.i62:                                  ; preds = %if.end10.i.i61
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !6130, !srcloc !5757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !6131, !srcloc !5760
  br label %if.end31.i.i68, !dbg !6132

if.end31.i.i68:                                   ; preds = %if.then24.i.i62, %if.end10.i.i61
  %66 = load i32, i32* %__ret_warn_on.i.i33, align 4, !dbg !5990
  %tobool32.i.i63 = icmp ne i32 %66, 0, !dbg !5990
  %lnot33.i.i64 = xor i1 %tobool32.i.i63, true, !dbg !5990
  %lnot.ext36.i.i65 = zext i1 %tobool32.i.i63 to i32, !dbg !5990
  %conv37.i.i66 = sext i32 %lnot.ext36.i.i65 to i64, !dbg !5990
  store i64 %conv37.i.i66, i64* %tmp.i.i34, align 8, !dbg !6129
  %67 = load i64, i64* %tmp.i.i34, align 8, !dbg !5990
  %tobool38.i.i67 = icmp ne i64 %67, 0, !dbg !6133
  br i1 %tobool38.i.i67, label %if.then39.i.i69, label %if.end40.i.i71, !dbg !6134

if.then39.i.i69:                                  ; preds = %if.end31.i.i68
  store i1 false, i1* %retval.i.i28, align 1, !dbg !6135
  br label %check_copy_size.exit.i75, !dbg !6135

if.end40.i.i71:                                   ; preds = %if.end31.i.i68
  %68 = load i8*, i8** %addr.addr.i.i29, align 8, !dbg !6136
  %69 = load i64, i64* %bytes.addr.i.i30, align 8, !dbg !6137
  %70 = load i8, i8* %is_source.addr.i.i31, align 1, !dbg !6138
  %tobool41.i.i70 = trunc i8 %70 to i1, !dbg !6138
  call void @check_object_size(i8* %68, i64 %69, i1 zeroext %tobool41.i.i70) #8, !dbg !6139
  store i1 true, i1* %retval.i.i28, align 1, !dbg !6140
  br label %check_copy_size.exit.i75, !dbg !6140

check_copy_size.exit.i75:                         ; preds = %if.end40.i.i71, %if.then39.i.i69, %if.end9.i.i53
  %71 = load i1, i1* %retval.i.i28, align 1, !dbg !6141
  %lnot.i72 = xor i1 %71, true, !dbg !6114
  %lnot.ext.i73 = zext i1 %71 to i32, !dbg !6114
  %conv.i74 = sext i32 %lnot.ext.i73 to i64, !dbg !6114
  br i1 %71, label %if.then.i77, label %copy_to_user.exit78, !dbg !6142

if.then.i77:                                      ; preds = %check_copy_size.exit.i75
  %72 = load i8*, i8** %to.addr.i35, align 8, !dbg !6143
  %73 = load i8*, i8** %from.addr.i36, align 8, !dbg !6144
  %74 = load i64, i64* %n.addr.i37, align 8, !dbg !6145
  %call2.i76 = call i64 @_copy_to_user(i8* %72, i8* %73, i64 %74) #8, !dbg !6146
  store i64 %call2.i76, i64* %n.addr.i37, align 8, !dbg !6147
  br label %copy_to_user.exit78, !dbg !6148

copy_to_user.exit78:                              ; preds = %check_copy_size.exit.i75, %if.then.i77
  %75 = load i64, i64* %n.addr.i37, align 8, !dbg !6149
  %tobool17 = icmp ne i64 %75, 0, !dbg !6150
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6151

if.then18:                                        ; preds = %copy_to_user.exit78
  store i32 -14, i32* %ret, align 4, !dbg !6152
  br label %out, !dbg !6154

if.end19:                                         ; preds = %copy_to_user.exit78
  %76 = load i8*, i8** %g_base, align 8, !dbg !6155
  %77 = load i32, i32* %size, align 4, !dbg !6156
  %idx.ext20 = sext i32 %77 to i64, !dbg !6157
  %add.ptr21 = getelementptr i8, i8* %76, i64 %idx.ext20, !dbg !6157
  store i8* %add.ptr21, i8** %b_base, align 8, !dbg !6158
  %78 = load %struct.drm_mode_crtc_lut*, %struct.drm_mode_crtc_lut** %crtc_lut, align 8, !dbg !6159
  %blue = getelementptr inbounds %struct.drm_mode_crtc_lut, %struct.drm_mode_crtc_lut* %78, i32 0, i32 4, !dbg !6160
  %79 = load i64, i64* %blue, align 8, !dbg !6160
  %80 = inttoptr i64 %79 to i8*, !dbg !6161
  %81 = load i8*, i8** %b_base, align 8, !dbg !6162
  %82 = load i32, i32* %size, align 4, !dbg !6163
  %conv22 = sext i32 %82 to i64, !dbg !6163
  store i8* %80, i8** %to.addr.i86, align 8
  store i8* %81, i8** %from.addr.i87, align 8
  store i64 %conv22, i64* %n.addr.i88, align 8
  %83 = load i8*, i8** %from.addr.i87, align 8, !dbg !6164
  %84 = load i64, i64* %n.addr.i88, align 8, !dbg !6164
  store i8* %83, i8** %addr.addr.i.i80, align 8
  store i64 %84, i64* %bytes.addr.i.i81, align 8
  store i8 1, i8* %is_source.addr.i.i82, align 1
  store i32 -1, i32* %sz.i.i83, align 4, !dbg !5975
  %85 = load i32, i32* %sz.i.i83, align 4, !dbg !6165
  %cmp.i.i89 = icmp sge i32 %85, 0, !dbg !6165
  br i1 %cmp.i.i89, label %land.rhs.i.i92, label %land.end.i.i96, !dbg !6165

land.rhs.i.i92:                                   ; preds = %if.end19
  %86 = load i32, i32* %sz.i.i83, align 4, !dbg !6165
  %conv.i.i90 = sext i32 %86 to i64, !dbg !6165
  %87 = load i64, i64* %bytes.addr.i.i81, align 8, !dbg !6165
  %cmp1.i.i91 = icmp ult i64 %conv.i.i90, %87, !dbg !6165
  br label %land.end.i.i96

land.end.i.i96:                                   ; preds = %land.rhs.i.i92, %if.end19
  %88 = phi i1 [ false, %if.end19 ], [ %cmp1.i.i91, %land.rhs.i.i92 ], !dbg !6166
  %lnot.i.i93 = xor i1 %88, true, !dbg !6165
  %lnot.ext.i.i94 = zext i1 %88 to i32, !dbg !6165
  %conv4.i.i95 = sext i32 %lnot.ext.i.i94 to i64, !dbg !6165
  br i1 %88, label %if.then.i.i97, label %if.end10.i.i112, !dbg !6167

if.then.i.i97:                                    ; preds = %land.end.i.i96
  %89 = load i64, i64* %bytes.addr.i.i81, align 8, !dbg !6168
  %90 = call i1 @llvm.is.constant.i64(i64 %89) #6, !dbg !6169
  br i1 %90, label %if.else.i.i100, label %if.then5.i.i98, !dbg !6170

if.then5.i.i98:                                   ; preds = %if.then.i.i97
  %91 = load i32, i32* %sz.i.i83, align 4, !dbg !6171
  %92 = load i64, i64* %bytes.addr.i.i81, align 8, !dbg !6172
  call void @copy_overflow(i32 %91, i64 %92) #8, !dbg !6173
  br label %if.end9.i.i104, !dbg !6173

if.else.i.i100:                                   ; preds = %if.then.i.i97
  %93 = load i8, i8* %is_source.addr.i.i82, align 1, !dbg !6174
  %tobool6.i.i99 = trunc i8 %93 to i1, !dbg !6174
  br i1 %tobool6.i.i99, label %if.then7.i.i101, label %if.else8.i.i102, !dbg !6175

if.then7.i.i101:                                  ; preds = %if.else.i.i100
  call void @__bad_copy_from() #8, !dbg !6176
  br label %if.end.i.i103, !dbg !6176

if.else8.i.i102:                                  ; preds = %if.else.i.i100
  call void @__bad_copy_to() #8, !dbg !6177
  br label %if.end.i.i103

if.end.i.i103:                                    ; preds = %if.else8.i.i102, %if.then7.i.i101
  br label %if.end9.i.i104

if.end9.i.i104:                                   ; preds = %if.end.i.i103, %if.then5.i.i98
  store i1 false, i1* %retval.i.i79, align 1, !dbg !6178
  br label %check_copy_size.exit.i126, !dbg !6178

if.end10.i.i112:                                  ; preds = %land.end.i.i96
  %94 = load i64, i64* %bytes.addr.i.i81, align 8, !dbg !5976
  %cmp11.i.i105 = icmp ugt i64 %94, 2147483647, !dbg !5976
  %lnot13.i.i106 = xor i1 %cmp11.i.i105, true, !dbg !5976
  %lnot.ext16.i.i107 = zext i1 %cmp11.i.i105 to i32, !dbg !5976
  store i32 %lnot.ext16.i.i107, i32* %__ret_warn_on.i.i84, align 4, !dbg !5976
  %95 = load i32, i32* %__ret_warn_on.i.i84, align 4, !dbg !6179
  %tobool17.i.i108 = icmp ne i32 %95, 0, !dbg !6179
  %lnot18.i.i109 = xor i1 %tobool17.i.i108, true, !dbg !6179
  %lnot.ext21.i.i110 = zext i1 %tobool17.i.i108 to i32, !dbg !6179
  %conv22.i.i111 = sext i32 %lnot.ext21.i.i110 to i64, !dbg !6179
  br i1 %tobool17.i.i108, label %if.then24.i.i113, label %if.end31.i.i119, !dbg !5976

if.then24.i.i113:                                 ; preds = %if.end10.i.i112
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !6180, !srcloc !5757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !6181, !srcloc !5760
  br label %if.end31.i.i119, !dbg !6182

if.end31.i.i119:                                  ; preds = %if.then24.i.i113, %if.end10.i.i112
  %96 = load i32, i32* %__ret_warn_on.i.i84, align 4, !dbg !5976
  %tobool32.i.i114 = icmp ne i32 %96, 0, !dbg !5976
  %lnot33.i.i115 = xor i1 %tobool32.i.i114, true, !dbg !5976
  %lnot.ext36.i.i116 = zext i1 %tobool32.i.i114 to i32, !dbg !5976
  %conv37.i.i117 = sext i32 %lnot.ext36.i.i116 to i64, !dbg !5976
  store i64 %conv37.i.i117, i64* %tmp.i.i85, align 8, !dbg !6179
  %97 = load i64, i64* %tmp.i.i85, align 8, !dbg !5976
  %tobool38.i.i118 = icmp ne i64 %97, 0, !dbg !6183
  br i1 %tobool38.i.i118, label %if.then39.i.i120, label %if.end40.i.i122, !dbg !6184

if.then39.i.i120:                                 ; preds = %if.end31.i.i119
  store i1 false, i1* %retval.i.i79, align 1, !dbg !6185
  br label %check_copy_size.exit.i126, !dbg !6185

if.end40.i.i122:                                  ; preds = %if.end31.i.i119
  %98 = load i8*, i8** %addr.addr.i.i80, align 8, !dbg !6186
  %99 = load i64, i64* %bytes.addr.i.i81, align 8, !dbg !6187
  %100 = load i8, i8* %is_source.addr.i.i82, align 1, !dbg !6188
  %tobool41.i.i121 = trunc i8 %100 to i1, !dbg !6188
  call void @check_object_size(i8* %98, i64 %99, i1 zeroext %tobool41.i.i121) #8, !dbg !6189
  store i1 true, i1* %retval.i.i79, align 1, !dbg !6190
  br label %check_copy_size.exit.i126, !dbg !6190

check_copy_size.exit.i126:                        ; preds = %if.end40.i.i122, %if.then39.i.i120, %if.end9.i.i104
  %101 = load i1, i1* %retval.i.i79, align 1, !dbg !6191
  %lnot.i123 = xor i1 %101, true, !dbg !6164
  %lnot.ext.i124 = zext i1 %101 to i32, !dbg !6164
  %conv.i125 = sext i32 %lnot.ext.i124 to i64, !dbg !6164
  br i1 %101, label %if.then.i128, label %copy_to_user.exit129, !dbg !6192

if.then.i128:                                     ; preds = %check_copy_size.exit.i126
  %102 = load i8*, i8** %to.addr.i86, align 8, !dbg !6193
  %103 = load i8*, i8** %from.addr.i87, align 8, !dbg !6194
  %104 = load i64, i64* %n.addr.i88, align 8, !dbg !6195
  %call2.i127 = call i64 @_copy_to_user(i8* %102, i8* %103, i64 %104) #8, !dbg !6196
  store i64 %call2.i127, i64* %n.addr.i88, align 8, !dbg !6197
  br label %copy_to_user.exit129, !dbg !6198

copy_to_user.exit129:                             ; preds = %check_copy_size.exit.i126, %if.then.i128
  %105 = load i64, i64* %n.addr.i88, align 8, !dbg !6199
  %tobool24 = icmp ne i64 %105, 0, !dbg !6200
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6201

if.then25:                                        ; preds = %copy_to_user.exit129
  store i32 -14, i32* %ret, align 4, !dbg !6202
  br label %out, !dbg !6204

if.end26:                                         ; preds = %copy_to_user.exit129
  br label %out, !dbg !6205

out:                                              ; preds = %if.end26, %if.then25, %if.then18, %if.then13
  call void @llvm.dbg.label(metadata !6206), !dbg !6207
  %106 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !6208
  %mutex27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %106, i32 0, i32 4, !dbg !6209
  call void @drm_modeset_unlock(%struct.drm_modeset_lock* %mutex27) #7, !dbg !6210
  %107 = load i32, i32* %ret, align 4, !dbg !6211
  store i32 %107, i32* %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

return:                                           ; preds = %out, %if.then5, %if.then2, %if.then
  %108 = load i32, i32* %retval, align 4, !dbg !6213
  ret i32 %108, !dbg !6213
}

; Function Attrs: noredzone
declare dso_local i32 @drm_modeset_lock(%struct.drm_modeset_lock*, %struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @drm_modeset_unlock(%struct.drm_modeset_lock*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @drm_get_color_encoding_name(i32 %encoding) #0 !dbg !6214 {
entry:
  %retval = alloca i8*, align 8
  %encoding.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %encoding, i32* %encoding.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %encoding.addr, metadata !6217, metadata !DIExpression()), !dbg !6218
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6219, metadata !DIExpression()), !dbg !6222
  %0 = load i32, i32* %encoding.addr, align 4, !dbg !6222
  %conv = zext i32 %0 to i64, !dbg !6222
  %cmp = icmp uge i64 %conv, 3, !dbg !6222
  %lnot = xor i1 %cmp, true, !dbg !6222
  %lnot2 = xor i1 %lnot, true, !dbg !6222
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6222
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6222
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !6223
  %tobool = icmp ne i32 %1, 0, !dbg !6223
  %lnot3 = xor i1 %tobool, true, !dbg !6223
  %lnot5 = xor i1 %lnot3, true, !dbg !6223
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6223
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !6223
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !6223
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6222

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6223

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !6225

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !6227

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !6225

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 381, i32 2305, i64 12) #6, !dbg !6229, !srcloc !6231
  br label %do.end11, !dbg !6229

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 256) #6, !dbg !6232, !srcloc !6234
  br label %do.body12, !dbg !6225

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6235

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6225

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6225

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6222
  %tobool15 = icmp ne i32 %2, 0, !dbg !6222
  %lnot16 = xor i1 %tobool15, true, !dbg !6222
  %lnot18 = xor i1 %lnot16, true, !dbg !6222
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6222
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6222
  store i64 %conv20, i64* %tmp, align 8, !dbg !6223
  %3 = load i64, i64* %tmp, align 8, !dbg !6222
  %tobool21 = icmp ne i64 %3, 0, !dbg !6237
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6238

if.then22:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8, !dbg !6239
  br label %return, !dbg !6239

if.end23:                                         ; preds = %if.end
  %4 = load i32, i32* %encoding.addr, align 4, !dbg !6240
  %idxprom = zext i32 %4 to i64, !dbg !6241
  %arrayidx = getelementptr [3 x i8*], [3 x i8*]* @color_encoding_name, i64 0, i64 %idxprom, !dbg !6241
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !6241
  store i8* %5, i8** %retval, align 8, !dbg !6242
  br label %return, !dbg !6242

return:                                           ; preds = %if.end23, %if.then22
  %6 = load i8*, i8** %retval, align 8, !dbg !6243
  ret i8* %6, !dbg !6243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @drm_get_color_range_name(i32 %range) #0 !dbg !6244 {
entry:
  %retval = alloca i8*, align 8
  %range.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %range, i32* %range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %range.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6249, metadata !DIExpression()), !dbg !6252
  %0 = load i32, i32* %range.addr, align 4, !dbg !6252
  %conv = zext i32 %0 to i64, !dbg !6252
  %cmp = icmp uge i64 %conv, 2, !dbg !6252
  %lnot = xor i1 %cmp, true, !dbg !6252
  %lnot2 = xor i1 %lnot, true, !dbg !6252
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6252
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6252
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !6253
  %tobool = icmp ne i32 %1, 0, !dbg !6253
  %lnot3 = xor i1 %tobool, true, !dbg !6253
  %lnot5 = xor i1 %lnot3, true, !dbg !6253
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6253
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !6253
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !6253
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6252

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6253

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !6255

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !6257

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !6255

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 396, i32 2305, i64 12) #6, !dbg !6259, !srcloc !6261
  br label %do.end11, !dbg !6259

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 257) #6, !dbg !6262, !srcloc !6264
  br label %do.body12, !dbg !6255

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6265

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6255

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6255

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6252
  %tobool15 = icmp ne i32 %2, 0, !dbg !6252
  %lnot16 = xor i1 %tobool15, true, !dbg !6252
  %lnot18 = xor i1 %lnot16, true, !dbg !6252
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6252
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6252
  store i64 %conv20, i64* %tmp, align 8, !dbg !6253
  %3 = load i64, i64* %tmp, align 8, !dbg !6252
  %tobool21 = icmp ne i64 %3, 0, !dbg !6267
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6268

if.then22:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8, !dbg !6269
  br label %return, !dbg !6269

if.end23:                                         ; preds = %if.end
  %4 = load i32, i32* %range.addr, align 4, !dbg !6270
  %idxprom = zext i32 %4 to i64, !dbg !6271
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* @color_range_name, i64 0, i64 %idxprom, !dbg !6271
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !6271
  store i8* %5, i8** %retval, align 8, !dbg !6272
  br label %return, !dbg !6272

return:                                           ; preds = %if.end23, %if.then22
  %6 = load i8*, i8** %retval, align 8, !dbg !6273
  ret i8* %6, !dbg !6273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_plane_create_color_properties(%struct.drm_plane* %plane, i32 %supported_encodings, i32 %supported_ranges, i32 %default_encoding, i32 %default_range) #0 !dbg !6274 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca %struct.drm_plane*, align 8
  %supported_encodings.addr = alloca i32, align 4
  %supported_ranges.addr = alloca i32, align 4
  %default_encoding.addr = alloca i32, align 4
  %default_range.addr = alloca i32, align 4
  %dev = alloca %struct.drm_device*, align 8
  %prop = alloca %struct.drm_property*, align 8
  %enum_list = alloca [3 x %struct.drm_prop_enum_list], align 16
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on30 = alloca i32, align 4
  %tmp67 = alloca i64, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !6277, metadata !DIExpression()), !dbg !6278
  store i32 %supported_encodings, i32* %supported_encodings.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %supported_encodings.addr, metadata !6279, metadata !DIExpression()), !dbg !6280
  store i32 %supported_ranges, i32* %supported_ranges.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %supported_ranges.addr, metadata !6281, metadata !DIExpression()), !dbg !6282
  store i32 %default_encoding, i32* %default_encoding.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %default_encoding.addr, metadata !6283, metadata !DIExpression()), !dbg !6284
  store i32 %default_range, i32* %default_range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %default_range.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !6287, metadata !DIExpression()), !dbg !6288
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6289
  %dev1 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 0, !dbg !6290
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !6290
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !6288
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !6291, metadata !DIExpression()), !dbg !6292
  call void @llvm.dbg.declare(metadata [3 x %struct.drm_prop_enum_list]* %enum_list, metadata !6293, metadata !DIExpression()), !dbg !6299
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6300, metadata !DIExpression()), !dbg !6301
  call void @llvm.dbg.declare(metadata i32* %len, metadata !6302, metadata !DIExpression()), !dbg !6303
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6304, metadata !DIExpression()), !dbg !6307
  %2 = load i32, i32* %supported_encodings.addr, align 4, !dbg !6307
  %cmp = icmp eq i32 %2, 0, !dbg !6307
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !6307

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %supported_encodings.addr, align 4, !dbg !6307
  %conv = zext i32 %3 to i64, !dbg !6307
  %and = and i64 %conv, -8, !dbg !6307
  %cmp2 = icmp ne i64 %and, 0, !dbg !6307
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !6307

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %supported_encodings.addr, align 4, !dbg !6307
  %conv4 = zext i32 %4 to i64, !dbg !6307
  %5 = load i32, i32* %default_encoding.addr, align 4, !dbg !6307
  %sh_prom = zext i32 %5 to i64, !dbg !6307
  %shl = shl i64 1, %sh_prom, !dbg !6307
  %and5 = and i64 %conv4, %shl, !dbg !6307
  %cmp6 = icmp eq i64 %and5, 0, !dbg !6307
  br label %lor.end, !dbg !6307

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !6307
  %lnot8 = xor i1 %lnot, true, !dbg !6307
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6307
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6307
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !6308
  %tobool = icmp ne i32 %7, 0, !dbg !6308
  %lnot9 = xor i1 %tobool, true, !dbg !6308
  %lnot11 = xor i1 %lnot9, true, !dbg !6308
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6308
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6308
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !6308
  br i1 %tobool14, label %if.then, label %if.end, !dbg !6307

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !6308

do.body:                                          ; preds = %if.then
  br label %do.body15, !dbg !6310

do.body15:                                        ; preds = %do.body
  br label %do.end, !dbg !6312

do.end:                                           ; preds = %do.body15
  br label %do.body16, !dbg !6310

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 430, i32 2305, i64 12) #6, !dbg !6314, !srcloc !6316
  br label %do.end17, !dbg !6314

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 260) #6, !dbg !6317, !srcloc !6319
  br label %do.body18, !dbg !6310

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6320

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !6310

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !6310

if.end:                                           ; preds = %do.end20, %lor.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !6307
  %tobool21 = icmp ne i32 %8, 0, !dbg !6307
  %lnot22 = xor i1 %tobool21, true, !dbg !6307
  %lnot24 = xor i1 %lnot22, true, !dbg !6307
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6307
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6307
  store i64 %conv26, i64* %tmp, align 8, !dbg !6308
  %9 = load i64, i64* %tmp, align 8, !dbg !6307
  %tobool27 = icmp ne i64 %9, 0, !dbg !6322
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6323

if.then28:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6324
  br label %return, !dbg !6324

if.end29:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on30, metadata !6325, metadata !DIExpression()), !dbg !6328
  %10 = load i32, i32* %supported_ranges.addr, align 4, !dbg !6328
  %cmp31 = icmp eq i32 %10, 0, !dbg !6328
  br i1 %cmp31, label %lor.end45, label %lor.lhs.false33, !dbg !6328

lor.lhs.false33:                                  ; preds = %if.end29
  %11 = load i32, i32* %supported_ranges.addr, align 4, !dbg !6328
  %conv34 = zext i32 %11 to i64, !dbg !6328
  %and35 = and i64 %conv34, -4, !dbg !6328
  %cmp36 = icmp ne i64 %and35, 0, !dbg !6328
  br i1 %cmp36, label %lor.end45, label %lor.rhs38, !dbg !6328

lor.rhs38:                                        ; preds = %lor.lhs.false33
  %12 = load i32, i32* %supported_ranges.addr, align 4, !dbg !6328
  %conv39 = zext i32 %12 to i64, !dbg !6328
  %13 = load i32, i32* %default_range.addr, align 4, !dbg !6328
  %sh_prom40 = zext i32 %13 to i64, !dbg !6328
  %shl41 = shl i64 1, %sh_prom40, !dbg !6328
  %and42 = and i64 %conv39, %shl41, !dbg !6328
  %cmp43 = icmp eq i64 %and42, 0, !dbg !6328
  br label %lor.end45, !dbg !6328

lor.end45:                                        ; preds = %lor.rhs38, %lor.lhs.false33, %if.end29
  %14 = phi i1 [ true, %lor.lhs.false33 ], [ true, %if.end29 ], [ %cmp43, %lor.rhs38 ]
  %lnot46 = xor i1 %14, true, !dbg !6328
  %lnot48 = xor i1 %lnot46, true, !dbg !6328
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !6328
  store i32 %lnot.ext49, i32* %__ret_warn_on30, align 4, !dbg !6328
  %15 = load i32, i32* %__ret_warn_on30, align 4, !dbg !6329
  %tobool50 = icmp ne i32 %15, 0, !dbg !6329
  %lnot51 = xor i1 %tobool50, true, !dbg !6329
  %lnot53 = xor i1 %lnot51, true, !dbg !6329
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !6329
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !6329
  %tobool56 = icmp ne i64 %conv55, 0, !dbg !6329
  br i1 %tobool56, label %if.then57, label %if.end66, !dbg !6328

if.then57:                                        ; preds = %lor.end45
  br label %do.body58, !dbg !6329

do.body58:                                        ; preds = %if.then57
  br label %do.body59, !dbg !6331

do.body59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !6333

do.end60:                                         ; preds = %do.body59
  br label %do.body61, !dbg !6331

do.body61:                                        ; preds = %do.end60
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 435, i32 2305, i64 12) #6, !dbg !6335, !srcloc !6337
  br label %do.end62, !dbg !6335

do.end62:                                         ; preds = %do.body61
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 261) #6, !dbg !6338, !srcloc !6340
  br label %do.body63, !dbg !6331

do.body63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !6341

do.end64:                                         ; preds = %do.body63
  br label %do.end65, !dbg !6331

do.end65:                                         ; preds = %do.end64
  br label %if.end66, !dbg !6331

if.end66:                                         ; preds = %do.end65, %lor.end45
  %16 = load i32, i32* %__ret_warn_on30, align 4, !dbg !6328
  %tobool68 = icmp ne i32 %16, 0, !dbg !6328
  %lnot69 = xor i1 %tobool68, true, !dbg !6328
  %lnot71 = xor i1 %lnot69, true, !dbg !6328
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !6328
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !6328
  store i64 %conv73, i64* %tmp67, align 8, !dbg !6329
  %17 = load i64, i64* %tmp67, align 8, !dbg !6328
  %tobool74 = icmp ne i64 %17, 0, !dbg !6343
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !6344

if.then75:                                        ; preds = %if.end66
  store i32 -22, i32* %retval, align 4, !dbg !6345
  br label %return, !dbg !6345

if.end76:                                         ; preds = %if.end66
  store i32 0, i32* %len, align 4, !dbg !6346
  store i32 0, i32* %i, align 4, !dbg !6347
  br label %for.cond, !dbg !6349

for.cond:                                         ; preds = %for.inc, %if.end76
  %18 = load i32, i32* %i, align 4, !dbg !6350
  %cmp77 = icmp slt i32 %18, 3, !dbg !6352
  br i1 %cmp77, label %for.body, label %for.end, !dbg !6353

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %supported_encodings.addr, align 4, !dbg !6354
  %conv79 = zext i32 %19 to i64, !dbg !6354
  %20 = load i32, i32* %i, align 4, !dbg !6357
  %sh_prom80 = zext i32 %20 to i64, !dbg !6357
  %shl81 = shl i64 1, %sh_prom80, !dbg !6357
  %and82 = and i64 %conv79, %shl81, !dbg !6358
  %cmp83 = icmp eq i64 %and82, 0, !dbg !6359
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !6360

if.then85:                                        ; preds = %for.body
  br label %for.inc, !dbg !6361

if.end86:                                         ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !6362
  %22 = load i32, i32* %len, align 4, !dbg !6363
  %idxprom = sext i32 %22 to i64, !dbg !6364
  %arrayidx = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* %enum_list, i64 0, i64 %idxprom, !dbg !6364
  %type = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx, i32 0, i32 0, !dbg !6365
  store i32 %21, i32* %type, align 16, !dbg !6366
  %23 = load i32, i32* %i, align 4, !dbg !6367
  %idxprom87 = sext i32 %23 to i64, !dbg !6368
  %arrayidx88 = getelementptr [3 x i8*], [3 x i8*]* @color_encoding_name, i64 0, i64 %idxprom87, !dbg !6368
  %24 = load i8*, i8** %arrayidx88, align 8, !dbg !6368
  %25 = load i32, i32* %len, align 4, !dbg !6369
  %idxprom89 = sext i32 %25 to i64, !dbg !6370
  %arrayidx90 = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* %enum_list, i64 0, i64 %idxprom89, !dbg !6370
  %name = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx90, i32 0, i32 1, !dbg !6371
  store i8* %24, i8** %name, align 8, !dbg !6372
  %26 = load i32, i32* %len, align 4, !dbg !6373
  %inc = add i32 %26, 1, !dbg !6373
  store i32 %inc, i32* %len, align 4, !dbg !6373
  br label %for.inc, !dbg !6374

for.inc:                                          ; preds = %if.end86, %if.then85
  %27 = load i32, i32* %i, align 4, !dbg !6375
  %inc91 = add i32 %27, 1, !dbg !6375
  store i32 %inc91, i32* %i, align 4, !dbg !6375
  br label %for.cond, !dbg !6376, !llvm.loop !6377

for.end:                                          ; preds = %for.cond
  %28 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6379
  %arraydecay = getelementptr inbounds [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* %enum_list, i64 0, i64 0, !dbg !6380
  %29 = load i32, i32* %len, align 4, !dbg !6381
  %call = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %28, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.drm_prop_enum_list* %arraydecay, i32 %29) #7, !dbg !6382
  store %struct.drm_property* %call, %struct.drm_property** %prop, align 8, !dbg !6383
  %30 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6384
  %tobool92 = icmp ne %struct.drm_property* %30, null, !dbg !6384
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !6386

if.then93:                                        ; preds = %for.end
  store i32 -12, i32* %retval, align 4, !dbg !6387
  br label %return, !dbg !6387

if.end94:                                         ; preds = %for.end
  %31 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6388
  %32 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6389
  %color_encoding_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %32, i32 0, i32 24, !dbg !6390
  store %struct.drm_property* %31, %struct.drm_property** %color_encoding_property, align 8, !dbg !6391
  %33 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6392
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 4, !dbg !6393
  %34 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6394
  %35 = load i32, i32* %default_encoding.addr, align 4, !dbg !6395
  %conv95 = zext i32 %35 to i64, !dbg !6395
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %34, i64 %conv95) #7, !dbg !6396
  %36 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6397
  %state = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %36, i32 0, i32 19, !dbg !6399
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state, align 8, !dbg !6399
  %tobool96 = icmp ne %struct.drm_plane_state* %37, null, !dbg !6397
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !6400

if.then97:                                        ; preds = %if.end94
  %38 = load i32, i32* %default_encoding.addr, align 4, !dbg !6401
  %39 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6402
  %state98 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 19, !dbg !6403
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state98, align 8, !dbg !6403
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 17, !dbg !6404
  store i32 %38, i32* %color_encoding, align 8, !dbg !6405
  br label %if.end99, !dbg !6402

if.end99:                                         ; preds = %if.then97, %if.end94
  store i32 0, i32* %len, align 4, !dbg !6406
  store i32 0, i32* %i, align 4, !dbg !6407
  br label %for.cond100, !dbg !6409

for.cond100:                                      ; preds = %for.inc121, %if.end99
  %41 = load i32, i32* %i, align 4, !dbg !6410
  %cmp101 = icmp slt i32 %41, 2, !dbg !6412
  br i1 %cmp101, label %for.body103, label %for.end123, !dbg !6413

for.body103:                                      ; preds = %for.cond100
  %42 = load i32, i32* %supported_ranges.addr, align 4, !dbg !6414
  %conv104 = zext i32 %42 to i64, !dbg !6414
  %43 = load i32, i32* %i, align 4, !dbg !6417
  %sh_prom105 = zext i32 %43 to i64, !dbg !6417
  %shl106 = shl i64 1, %sh_prom105, !dbg !6417
  %and107 = and i64 %conv104, %shl106, !dbg !6418
  %cmp108 = icmp eq i64 %and107, 0, !dbg !6419
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !6420

if.then110:                                       ; preds = %for.body103
  br label %for.inc121, !dbg !6421

if.end111:                                        ; preds = %for.body103
  %44 = load i32, i32* %i, align 4, !dbg !6422
  %45 = load i32, i32* %len, align 4, !dbg !6423
  %idxprom112 = sext i32 %45 to i64, !dbg !6424
  %arrayidx113 = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* %enum_list, i64 0, i64 %idxprom112, !dbg !6424
  %type114 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx113, i32 0, i32 0, !dbg !6425
  store i32 %44, i32* %type114, align 16, !dbg !6426
  %46 = load i32, i32* %i, align 4, !dbg !6427
  %idxprom115 = sext i32 %46 to i64, !dbg !6428
  %arrayidx116 = getelementptr [2 x i8*], [2 x i8*]* @color_range_name, i64 0, i64 %idxprom115, !dbg !6428
  %47 = load i8*, i8** %arrayidx116, align 8, !dbg !6428
  %48 = load i32, i32* %len, align 4, !dbg !6429
  %idxprom117 = sext i32 %48 to i64, !dbg !6430
  %arrayidx118 = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* %enum_list, i64 0, i64 %idxprom117, !dbg !6430
  %name119 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx118, i32 0, i32 1, !dbg !6431
  store i8* %47, i8** %name119, align 8, !dbg !6432
  %49 = load i32, i32* %len, align 4, !dbg !6433
  %inc120 = add i32 %49, 1, !dbg !6433
  store i32 %inc120, i32* %len, align 4, !dbg !6433
  br label %for.inc121, !dbg !6434

for.inc121:                                       ; preds = %if.end111, %if.then110
  %50 = load i32, i32* %i, align 4, !dbg !6435
  %inc122 = add i32 %50, 1, !dbg !6435
  store i32 %inc122, i32* %i, align 4, !dbg !6435
  br label %for.cond100, !dbg !6436, !llvm.loop !6437

for.end123:                                       ; preds = %for.cond100
  %51 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6439
  %arraydecay124 = getelementptr inbounds [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* %enum_list, i64 0, i64 0, !dbg !6440
  %52 = load i32, i32* %len, align 4, !dbg !6441
  %call125 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %51, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.drm_prop_enum_list* %arraydecay124, i32 %52) #7, !dbg !6442
  store %struct.drm_property* %call125, %struct.drm_property** %prop, align 8, !dbg !6443
  %53 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6444
  %tobool126 = icmp ne %struct.drm_property* %53, null, !dbg !6444
  br i1 %tobool126, label %if.end128, label %if.then127, !dbg !6446

if.then127:                                       ; preds = %for.end123
  store i32 -12, i32* %retval, align 4, !dbg !6447
  br label %return, !dbg !6447

if.end128:                                        ; preds = %for.end123
  %54 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6448
  %55 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6449
  %color_range_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %55, i32 0, i32 25, !dbg !6450
  store %struct.drm_property* %54, %struct.drm_property** %color_range_property, align 8, !dbg !6451
  %56 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6452
  %base129 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %56, i32 0, i32 4, !dbg !6453
  %57 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6454
  %58 = load i32, i32* %default_range.addr, align 4, !dbg !6455
  %conv130 = zext i32 %58 to i64, !dbg !6455
  call void @drm_object_attach_property(%struct.drm_mode_object* %base129, %struct.drm_property* %57, i64 %conv130) #7, !dbg !6456
  %59 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6457
  %state131 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %59, i32 0, i32 19, !dbg !6459
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state131, align 8, !dbg !6459
  %tobool132 = icmp ne %struct.drm_plane_state* %60, null, !dbg !6457
  br i1 %tobool132, label %if.then133, label %if.end135, !dbg !6460

if.then133:                                       ; preds = %if.end128
  %61 = load i32, i32* %default_range.addr, align 4, !dbg !6461
  %62 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6462
  %state134 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %62, i32 0, i32 19, !dbg !6463
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state134, align 8, !dbg !6463
  %color_range = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 18, !dbg !6464
  store i32 %61, i32* %color_range, align 4, !dbg !6465
  br label %if.end135, !dbg !6462

if.end135:                                        ; preds = %if.then133, %if.end128
  store i32 0, i32* %retval, align 4, !dbg !6466
  br label %return, !dbg !6466

return:                                           ; preds = %if.end135, %if.then127, %if.then93, %if.then75, %if.then28
  %64 = load i32, i32* %retval, align 4, !dbg !6467
  ret i32 %64, !dbg !6467
}

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, %struct.drm_prop_enum_list*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_color_lut_check(%struct.drm_property_blob* %lut, i32 %tests) #0 !dbg !6468 {
entry:
  %retval = alloca i32, align 4
  %lut.addr = alloca %struct.drm_property_blob*, align 8
  %tests.addr = alloca i32, align 4
  %entry1 = alloca %struct.drm_color_lut*, align 8
  %i = alloca i32, align 4
  store %struct.drm_property_blob* %lut, %struct.drm_property_blob** %lut.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property_blob** %lut.addr, metadata !6473, metadata !DIExpression()), !dbg !6474
  store i32 %tests, i32* %tests.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tests.addr, metadata !6475, metadata !DIExpression()), !dbg !6476
  call void @llvm.dbg.declare(metadata %struct.drm_color_lut** %entry1, metadata !6477, metadata !DIExpression()), !dbg !6486
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6487, metadata !DIExpression()), !dbg !6488
  %0 = load %struct.drm_property_blob*, %struct.drm_property_blob** %lut.addr, align 8, !dbg !6489
  %tobool = icmp ne %struct.drm_property_blob* %0, null, !dbg !6489
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6491

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %tests.addr, align 4, !dbg !6492
  %tobool2 = icmp ne i32 %1, 0, !dbg !6492
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6493

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !6494
  br label %return, !dbg !6494

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.drm_property_blob*, %struct.drm_property_blob** %lut.addr, align 8, !dbg !6495
  %data = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %2, i32 0, i32 5, !dbg !6496
  %3 = load i8*, i8** %data, align 8, !dbg !6496
  %4 = bitcast i8* %3 to %struct.drm_color_lut*, !dbg !6495
  store %struct.drm_color_lut* %4, %struct.drm_color_lut** %entry1, align 8, !dbg !6497
  store i32 0, i32* %i, align 4, !dbg !6498
  br label %for.cond, !dbg !6500

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !6501
  %6 = load %struct.drm_property_blob*, %struct.drm_property_blob** %lut.addr, align 8, !dbg !6503
  %call = call i32 @drm_color_lut_size(%struct.drm_property_blob* %6) #7, !dbg !6504
  %cmp = icmp slt i32 %5, %call, !dbg !6505
  br i1 %cmp, label %for.body, label %for.end, !dbg !6506

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %tests.addr, align 4, !dbg !6507
  %and = and i32 %7, 1, !dbg !6510
  %tobool3 = icmp ne i32 %and, 0, !dbg !6510
  br i1 %tobool3, label %if.then4, label %if.end22, !dbg !6511

if.then4:                                         ; preds = %for.body
  %8 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6512
  %9 = load i32, i32* %i, align 4, !dbg !6515
  %idxprom = sext i32 %9 to i64, !dbg !6512
  %arrayidx = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %8, i64 %idxprom, !dbg !6512
  %red = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx, i32 0, i32 0, !dbg !6516
  %10 = load i16, i16* %red, align 2, !dbg !6516
  %conv = zext i16 %10 to i32, !dbg !6512
  %11 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6517
  %12 = load i32, i32* %i, align 4, !dbg !6518
  %idxprom5 = sext i32 %12 to i64, !dbg !6517
  %arrayidx6 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %11, i64 %idxprom5, !dbg !6517
  %blue = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx6, i32 0, i32 2, !dbg !6519
  %13 = load i16, i16* %blue, align 2, !dbg !6519
  %conv7 = zext i16 %13 to i32, !dbg !6517
  %cmp8 = icmp ne i32 %conv, %conv7, !dbg !6520
  br i1 %cmp8, label %if.then20, label %lor.lhs.false10, !dbg !6521

lor.lhs.false10:                                  ; preds = %if.then4
  %14 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6522
  %15 = load i32, i32* %i, align 4, !dbg !6523
  %idxprom11 = sext i32 %15 to i64, !dbg !6522
  %arrayidx12 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %14, i64 %idxprom11, !dbg !6522
  %red13 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx12, i32 0, i32 0, !dbg !6524
  %16 = load i16, i16* %red13, align 2, !dbg !6524
  %conv14 = zext i16 %16 to i32, !dbg !6522
  %17 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6525
  %18 = load i32, i32* %i, align 4, !dbg !6526
  %idxprom15 = sext i32 %18 to i64, !dbg !6525
  %arrayidx16 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %17, i64 %idxprom15, !dbg !6525
  %green = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx16, i32 0, i32 1, !dbg !6527
  %19 = load i16, i16* %green, align 2, !dbg !6527
  %conv17 = zext i16 %19 to i32, !dbg !6525
  %cmp18 = icmp ne i32 %conv14, %conv17, !dbg !6528
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6529

if.then20:                                        ; preds = %lor.lhs.false10, %if.then4
  call void (i32, i8*, ...) @__drm_dbg(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !6530
  store i32 -22, i32* %retval, align 4, !dbg !6532
  br label %return, !dbg !6532

if.end21:                                         ; preds = %lor.lhs.false10
  br label %if.end22, !dbg !6533

if.end22:                                         ; preds = %if.end21, %for.body
  %20 = load i32, i32* %i, align 4, !dbg !6534
  %cmp23 = icmp sgt i32 %20, 0, !dbg !6536
  br i1 %cmp23, label %land.lhs.true, label %if.end64, !dbg !6537

land.lhs.true:                                    ; preds = %if.end22
  %21 = load i32, i32* %tests.addr, align 4, !dbg !6538
  %and25 = and i32 %21, 2, !dbg !6539
  %tobool26 = icmp ne i32 %and25, 0, !dbg !6539
  br i1 %tobool26, label %if.then27, label %if.end64, !dbg !6540

if.then27:                                        ; preds = %land.lhs.true
  %22 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6541
  %23 = load i32, i32* %i, align 4, !dbg !6544
  %idxprom28 = sext i32 %23 to i64, !dbg !6541
  %arrayidx29 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %22, i64 %idxprom28, !dbg !6541
  %red30 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx29, i32 0, i32 0, !dbg !6545
  %24 = load i16, i16* %red30, align 2, !dbg !6545
  %conv31 = zext i16 %24 to i32, !dbg !6541
  %25 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6546
  %26 = load i32, i32* %i, align 4, !dbg !6547
  %sub = sub i32 %26, 1, !dbg !6548
  %idxprom32 = sext i32 %sub to i64, !dbg !6546
  %arrayidx33 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %25, i64 %idxprom32, !dbg !6546
  %red34 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx33, i32 0, i32 0, !dbg !6549
  %27 = load i16, i16* %red34, align 2, !dbg !6549
  %conv35 = zext i16 %27 to i32, !dbg !6546
  %cmp36 = icmp slt i32 %conv31, %conv35, !dbg !6550
  br i1 %cmp36, label %if.then62, label %lor.lhs.false38, !dbg !6551

lor.lhs.false38:                                  ; preds = %if.then27
  %28 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6552
  %29 = load i32, i32* %i, align 4, !dbg !6553
  %idxprom39 = sext i32 %29 to i64, !dbg !6552
  %arrayidx40 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %28, i64 %idxprom39, !dbg !6552
  %green41 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx40, i32 0, i32 1, !dbg !6554
  %30 = load i16, i16* %green41, align 2, !dbg !6554
  %conv42 = zext i16 %30 to i32, !dbg !6552
  %31 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6555
  %32 = load i32, i32* %i, align 4, !dbg !6556
  %sub43 = sub i32 %32, 1, !dbg !6557
  %idxprom44 = sext i32 %sub43 to i64, !dbg !6555
  %arrayidx45 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %31, i64 %idxprom44, !dbg !6555
  %green46 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx45, i32 0, i32 1, !dbg !6558
  %33 = load i16, i16* %green46, align 2, !dbg !6558
  %conv47 = zext i16 %33 to i32, !dbg !6555
  %cmp48 = icmp slt i32 %conv42, %conv47, !dbg !6559
  br i1 %cmp48, label %if.then62, label %lor.lhs.false50, !dbg !6560

lor.lhs.false50:                                  ; preds = %lor.lhs.false38
  %34 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6561
  %35 = load i32, i32* %i, align 4, !dbg !6562
  %idxprom51 = sext i32 %35 to i64, !dbg !6561
  %arrayidx52 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %34, i64 %idxprom51, !dbg !6561
  %blue53 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx52, i32 0, i32 2, !dbg !6563
  %36 = load i16, i16* %blue53, align 2, !dbg !6563
  %conv54 = zext i16 %36 to i32, !dbg !6561
  %37 = load %struct.drm_color_lut*, %struct.drm_color_lut** %entry1, align 8, !dbg !6564
  %38 = load i32, i32* %i, align 4, !dbg !6565
  %sub55 = sub i32 %38, 1, !dbg !6566
  %idxprom56 = sext i32 %sub55 to i64, !dbg !6564
  %arrayidx57 = getelementptr %struct.drm_color_lut, %struct.drm_color_lut* %37, i64 %idxprom56, !dbg !6564
  %blue58 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %arrayidx57, i32 0, i32 2, !dbg !6567
  %39 = load i16, i16* %blue58, align 2, !dbg !6567
  %conv59 = zext i16 %39 to i32, !dbg !6564
  %cmp60 = icmp slt i32 %conv54, %conv59, !dbg !6568
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !6569

if.then62:                                        ; preds = %lor.lhs.false50, %lor.lhs.false38, %if.then27
  call void (i32, i8*, ...) @__drm_dbg(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !6570
  store i32 -22, i32* %retval, align 4, !dbg !6572
  br label %return, !dbg !6572

if.end63:                                         ; preds = %lor.lhs.false50
  br label %if.end64, !dbg !6573

if.end64:                                         ; preds = %if.end63, %land.lhs.true, %if.end22
  br label %for.inc, !dbg !6574

for.inc:                                          ; preds = %if.end64
  %40 = load i32, i32* %i, align 4, !dbg !6575
  %inc = add i32 %40, 1, !dbg !6575
  store i32 %inc, i32* %i, align 4, !dbg !6575
  br label %for.cond, !dbg !6576, !llvm.loop !6577

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6579
  br label %return, !dbg !6579

return:                                           ; preds = %for.end, %if.then62, %if.then20, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !6580
  ret i32 %41, !dbg !6580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_color_lut_size(%struct.drm_property_blob* %blob) #0 !dbg !6581 {
entry:
  %blob.addr = alloca %struct.drm_property_blob*, align 8
  store %struct.drm_property_blob* %blob, %struct.drm_property_blob** %blob.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property_blob** %blob.addr, metadata !6584, metadata !DIExpression()), !dbg !6585
  %0 = load %struct.drm_property_blob*, %struct.drm_property_blob** %blob.addr, align 8, !dbg !6586
  %length = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %0, i32 0, i32 4, !dbg !6587
  %1 = load i64, i64* %length, align 8, !dbg !6587
  %div = udiv i64 %1, 8, !dbg !6588
  %conv = trunc i64 %div to i32, !dbg !6586
  ret i32 %conv, !dbg !6589
}

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !6590 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !6591, metadata !DIExpression()), !dbg !6595
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !6604, metadata !DIExpression()), !dbg !6605
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !6606, metadata !DIExpression()), !dbg !6607
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !6608, metadata !DIExpression()), !dbg !6609
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !6610, metadata !DIExpression()), !dbg !6614
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !6616, metadata !DIExpression()), !dbg !6620
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6622, metadata !DIExpression()), !dbg !6626
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6631, metadata !DIExpression()), !dbg !6632
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6633, metadata !DIExpression()), !dbg !6634
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6635, metadata !DIExpression()), !dbg !6636
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6637, metadata !DIExpression()), !dbg !6638
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6639, metadata !DIExpression()), !dbg !6640
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6641, metadata !DIExpression()), !dbg !6642
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6643, metadata !DIExpression()), !dbg !6644
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6645, metadata !DIExpression()), !dbg !6646
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6647, metadata !DIExpression()), !dbg !6648
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6649, metadata !DIExpression()), !dbg !6650
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6653, metadata !DIExpression()), !dbg !6654
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !6655, metadata !DIExpression()), !dbg !6658
  %0 = load i64, i64* %n.addr, align 8, !dbg !6658
  store i64 %0, i64* %__a, align 8, !dbg !6658
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !6659, metadata !DIExpression()), !dbg !6658
  %1 = load i64, i64* %size.addr, align 8, !dbg !6658
  store i64 %1, i64* %__b, align 8, !dbg !6658
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !6660, metadata !DIExpression()), !dbg !6658
  store i64* %bytes, i64** %__d, align 8, !dbg !6658
  %cmp = icmp eq i64* %__a, %__b, !dbg !6658
  %conv = zext i1 %cmp to i32, !dbg !6658
  %2 = load i64*, i64** %__d, align 8, !dbg !6658
  %cmp1 = icmp eq i64* %__a, %2, !dbg !6658
  %conv2 = zext i1 %cmp1 to i32, !dbg !6658
  %3 = load i64, i64* %__a, align 8, !dbg !6658
  %4 = load i64, i64* %__b, align 8, !dbg !6658
  %5 = load i64*, i64** %__d, align 8, !dbg !6658
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !6658
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !6658
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !6658
  store i64 %8, i64* %5, align 8, !dbg !6658
  %frombool = zext i1 %7 to i8, !dbg !6658
  store i8 %frombool, i8* %tmp, align 1, !dbg !6658
  %9 = load i8, i8* %tmp, align 1, !dbg !6658
  %tobool = trunc i8 %9 to i1, !dbg !6658
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !6661
  %lnot = xor i1 %call, true, !dbg !6661
  %lnot3 = xor i1 %lnot, true, !dbg !6661
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6661
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6661
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !6661
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6662

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !6663
  br label %return, !dbg !6663

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !6664
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6665
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !6666

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !6667
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6668
  br i1 %13, label %if.then6, label %if.end8, !dbg !6669

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !6670
  %15 = load i32, i32* %flags.addr, align 4, !dbg !6671
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !6672
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #6, !dbg !6673
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !6674

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !6675
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !6676
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6677

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !6678
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !6679
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !6680
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !6681
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6640
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !6682
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6683
  %24 = load i32, i32* %order.i.i, align 4, !dbg !6684
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6685
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6686
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6687
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #8, !dbg !6688
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6688
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6688
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6688
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !6688
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6689
  br label %kmalloc.exit, !dbg !6689

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6690
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6691
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6691
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6693

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6694
  br label %kmalloc_index.exit.i, !dbg !6694

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6695
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6697
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6698

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6699
  br label %kmalloc_index.exit.i, !dbg !6699

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6700
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6702
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6703

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6704
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6705
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6706

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6707
  br label %kmalloc_index.exit.i, !dbg !6707

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6708
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6710
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6711

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6712
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6713
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6714

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6715
  br label %kmalloc_index.exit.i, !dbg !6715

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6716
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6718
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6719

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6720
  br label %kmalloc_index.exit.i, !dbg !6720

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6721
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6723
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6724

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6725
  br label %kmalloc_index.exit.i, !dbg !6725

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6726
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6728
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6729

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6730
  br label %kmalloc_index.exit.i, !dbg !6730

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6731
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6733
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6734

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6735
  br label %kmalloc_index.exit.i, !dbg !6735

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6736
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6738
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6739

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6740
  br label %kmalloc_index.exit.i, !dbg !6740

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6741
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6743
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6744

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6745
  br label %kmalloc_index.exit.i, !dbg !6745

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6746
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6748
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6749

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6750
  br label %kmalloc_index.exit.i, !dbg !6750

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6751
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6753
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6754

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6755
  br label %kmalloc_index.exit.i, !dbg !6755

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6756
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !6758
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6759

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6760
  br label %kmalloc_index.exit.i, !dbg !6760

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6761
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !6763
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6764

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6765
  br label %kmalloc_index.exit.i, !dbg !6765

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6766
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !6768
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6769

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6770
  br label %kmalloc_index.exit.i, !dbg !6770

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6771
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !6773
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6774

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6775
  br label %kmalloc_index.exit.i, !dbg !6775

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6776
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !6778
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6779

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6780
  br label %kmalloc_index.exit.i, !dbg !6780

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6781
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !6783
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6784

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6785
  br label %kmalloc_index.exit.i, !dbg !6785

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6786
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !6788
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6789

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6790
  br label %kmalloc_index.exit.i, !dbg !6790

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6791
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !6793
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6794

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6795
  br label %kmalloc_index.exit.i, !dbg !6795

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6796
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !6798
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6799

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6800
  br label %kmalloc_index.exit.i, !dbg !6800

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6801
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !6803
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6804

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6805
  br label %kmalloc_index.exit.i, !dbg !6805

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6806
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !6808
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6809

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6810
  br label %kmalloc_index.exit.i, !dbg !6810

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6811
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !6813
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6814

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6815
  br label %kmalloc_index.exit.i, !dbg !6815

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6816
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !6818
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6819

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6820
  br label %kmalloc_index.exit.i, !dbg !6820

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6821
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !6823
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6824

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6825
  br label %kmalloc_index.exit.i, !dbg !6825

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6826
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !6828
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6829

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6830
  br label %kmalloc_index.exit.i, !dbg !6830

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6831
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !6833
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6834

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6835
  br label %kmalloc_index.exit.i, !dbg !6835

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !6836, !srcloc !6839
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 165) #6, !dbg !6840, !srcloc !6843
  unreachable, !dbg !6844

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !6845
  store i32 %59, i32* %index.i, align 4, !dbg !6846
  %60 = load i32, i32* %index.i, align 4, !dbg !6847
  %tobool.i = icmp ne i32 %60, 0, !dbg !6847
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6849

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6850
  br label %kmalloc.exit, !dbg !6850

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !6851
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6852
  %and.i.i = and i32 %62, 17, !dbg !6852
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6852
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6852
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6852
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6852
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6854

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6855
  br label %kmalloc_type.exit.i, !dbg !6855

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6856
  %and2.i.i = and i32 %63, 1, !dbg !6857
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6856
  %64 = zext i1 %tobool3.i.i to i64, !dbg !6856
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6856
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6858
  br label %kmalloc_type.exit.i, !dbg !6858

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !6859
  %idxprom.i = zext i32 %65 to i64, !dbg !6860
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6860
  %66 = load i32, i32* %index.i, align 4, !dbg !6861
  %idxprom6.i = zext i32 %66 to i64, !dbg !6860
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6860
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6860
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !6862
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !6863
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6864
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6865
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #8, !dbg !6866
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6866
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6866
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6866
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !6866
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6609
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6867
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !6868
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6869
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6870
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #8, !dbg !6871
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6872
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !6873
  store i8* %76, i8** %retval.i, align 8, !dbg !6874
  br label %kmalloc.exit, !dbg !6874

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !6875
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !6876
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #8, !dbg !6877
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6877
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6877
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6877
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !6877
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6878
  br label %kmalloc.exit, !dbg !6878

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !6879
  store i8* %79, i8** %retval, align 8, !dbg !6880
  br label %return, !dbg !6880

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !6881
  %81 = load i32, i32* %flags.addr, align 4, !dbg !6882
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !6883
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !6883
  %maskedptr = and i64 %ptrint, 7, !dbg !6883
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !6883
  call void @llvm.assume(i1 %maskcond), !dbg !6883
  store i8* %call9, i8** %retval, align 8, !dbg !6884
  br label %return, !dbg !6884

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !6885
  ret i8* %82, !dbg !6885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !6886 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !6890, metadata !DIExpression()), !dbg !6891
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !6892
  %tobool = trunc i8 %0 to i1, !dbg !6892
  %lnot = xor i1 %tobool, true, !dbg !6892
  %lnot1 = xor i1 %lnot, true, !dbg !6892
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6892
  %conv = sext i32 %lnot.ext to i64, !dbg !6892
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6892
  ret i1 %tobool2, !dbg !6893
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !6894 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6898, metadata !DIExpression()), !dbg !6903
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6905, metadata !DIExpression()), !dbg !6906
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6907, metadata !DIExpression()), !dbg !6908
  %0 = load i64, i64* %size.addr, align 8, !dbg !6909
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6911
  br i1 %1, label %if.then, label %if.end447, !dbg !6912

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6913
  %tobool = icmp ne i64 %2, 0, !dbg !6913
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6916

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6917
  br label %return, !dbg !6917

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6918
  %cmp = icmp ult i64 %3, 4096, !dbg !6920
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6921

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6922
  br label %return, !dbg !6922

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub = sub i64 %4, 1, !dbg !6923
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6923
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6923

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub4 = sub i64 %6, 1, !dbg !6923
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6923
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6923

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub6 = sub i64 %8, 1, !dbg !6923
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6923
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6923

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6923

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub9 = sub i64 %9, 1, !dbg !6923
  %and = and i64 %sub9, -9223372036854775808, !dbg !6923
  %tobool10 = icmp ne i64 %and, 0, !dbg !6923
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6923

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6923

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub13 = sub i64 %10, 1, !dbg !6923
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6923
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6923
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6923

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6923

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub18 = sub i64 %11, 1, !dbg !6923
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6923
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6923
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6923

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6923

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub23 = sub i64 %12, 1, !dbg !6923
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6923
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6923
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6923

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6923

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub28 = sub i64 %13, 1, !dbg !6923
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6923
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6923
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6923

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6923

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub33 = sub i64 %14, 1, !dbg !6923
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6923
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6923
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6923

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6923

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub38 = sub i64 %15, 1, !dbg !6923
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6923
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6923
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6923

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6923

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub43 = sub i64 %16, 1, !dbg !6923
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6923
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6923
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6923

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6923

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub48 = sub i64 %17, 1, !dbg !6923
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6923
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6923
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6923

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6923

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub53 = sub i64 %18, 1, !dbg !6923
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6923
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6923
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6923

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6923

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub58 = sub i64 %19, 1, !dbg !6923
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6923
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6923
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6923

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6923

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub63 = sub i64 %20, 1, !dbg !6923
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6923
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6923
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6923

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6923

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub68 = sub i64 %21, 1, !dbg !6923
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6923
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6923
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6923

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6923

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub73 = sub i64 %22, 1, !dbg !6923
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6923
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6923
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6923

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6923

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub78 = sub i64 %23, 1, !dbg !6923
  %and79 = and i64 %sub78, 562949953421312, !dbg !6923
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6923
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6923

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6923

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub83 = sub i64 %24, 1, !dbg !6923
  %and84 = and i64 %sub83, 281474976710656, !dbg !6923
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6923
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6923

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6923

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub88 = sub i64 %25, 1, !dbg !6923
  %and89 = and i64 %sub88, 140737488355328, !dbg !6923
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6923
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6923

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6923

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub93 = sub i64 %26, 1, !dbg !6923
  %and94 = and i64 %sub93, 70368744177664, !dbg !6923
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6923
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6923

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6923

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub98 = sub i64 %27, 1, !dbg !6923
  %and99 = and i64 %sub98, 35184372088832, !dbg !6923
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6923
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6923

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6923

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub103 = sub i64 %28, 1, !dbg !6923
  %and104 = and i64 %sub103, 17592186044416, !dbg !6923
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6923
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6923

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6923

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub108 = sub i64 %29, 1, !dbg !6923
  %and109 = and i64 %sub108, 8796093022208, !dbg !6923
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6923
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6923

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6923

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub113 = sub i64 %30, 1, !dbg !6923
  %and114 = and i64 %sub113, 4398046511104, !dbg !6923
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6923
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6923

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6923

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub118 = sub i64 %31, 1, !dbg !6923
  %and119 = and i64 %sub118, 2199023255552, !dbg !6923
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6923
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6923

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6923

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub123 = sub i64 %32, 1, !dbg !6923
  %and124 = and i64 %sub123, 1099511627776, !dbg !6923
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6923
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6923

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6923

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub128 = sub i64 %33, 1, !dbg !6923
  %and129 = and i64 %sub128, 549755813888, !dbg !6923
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6923
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6923

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6923

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub133 = sub i64 %34, 1, !dbg !6923
  %and134 = and i64 %sub133, 274877906944, !dbg !6923
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6923
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6923

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6923

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub138 = sub i64 %35, 1, !dbg !6923
  %and139 = and i64 %sub138, 137438953472, !dbg !6923
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6923
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6923

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6923

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub143 = sub i64 %36, 1, !dbg !6923
  %and144 = and i64 %sub143, 68719476736, !dbg !6923
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6923
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6923

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6923

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub148 = sub i64 %37, 1, !dbg !6923
  %and149 = and i64 %sub148, 34359738368, !dbg !6923
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6923
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6923

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6923

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub153 = sub i64 %38, 1, !dbg !6923
  %and154 = and i64 %sub153, 17179869184, !dbg !6923
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6923
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6923

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6923

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub158 = sub i64 %39, 1, !dbg !6923
  %and159 = and i64 %sub158, 8589934592, !dbg !6923
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6923
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6923

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6923

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub163 = sub i64 %40, 1, !dbg !6923
  %and164 = and i64 %sub163, 4294967296, !dbg !6923
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6923
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6923

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6923

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub168 = sub i64 %41, 1, !dbg !6923
  %and169 = and i64 %sub168, 2147483648, !dbg !6923
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6923
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6923

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6923

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub173 = sub i64 %42, 1, !dbg !6923
  %and174 = and i64 %sub173, 1073741824, !dbg !6923
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6923
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6923

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6923

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub178 = sub i64 %43, 1, !dbg !6923
  %and179 = and i64 %sub178, 536870912, !dbg !6923
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6923
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6923

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6923

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub183 = sub i64 %44, 1, !dbg !6923
  %and184 = and i64 %sub183, 268435456, !dbg !6923
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6923
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6923

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6923

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub188 = sub i64 %45, 1, !dbg !6923
  %and189 = and i64 %sub188, 134217728, !dbg !6923
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6923
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6923

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6923

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub193 = sub i64 %46, 1, !dbg !6923
  %and194 = and i64 %sub193, 67108864, !dbg !6923
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6923
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6923

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6923

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub198 = sub i64 %47, 1, !dbg !6923
  %and199 = and i64 %sub198, 33554432, !dbg !6923
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6923
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6923

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6923

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub203 = sub i64 %48, 1, !dbg !6923
  %and204 = and i64 %sub203, 16777216, !dbg !6923
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6923
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6923

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6923

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub208 = sub i64 %49, 1, !dbg !6923
  %and209 = and i64 %sub208, 8388608, !dbg !6923
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6923
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6923

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6923

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub213 = sub i64 %50, 1, !dbg !6923
  %and214 = and i64 %sub213, 4194304, !dbg !6923
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6923
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6923

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6923

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub218 = sub i64 %51, 1, !dbg !6923
  %and219 = and i64 %sub218, 2097152, !dbg !6923
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6923
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6923

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6923

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub223 = sub i64 %52, 1, !dbg !6923
  %and224 = and i64 %sub223, 1048576, !dbg !6923
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6923
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6923

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6923

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub228 = sub i64 %53, 1, !dbg !6923
  %and229 = and i64 %sub228, 524288, !dbg !6923
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6923
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6923

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6923

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub233 = sub i64 %54, 1, !dbg !6923
  %and234 = and i64 %sub233, 262144, !dbg !6923
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6923
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6923

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6923

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub238 = sub i64 %55, 1, !dbg !6923
  %and239 = and i64 %sub238, 131072, !dbg !6923
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6923
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6923

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6923

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub243 = sub i64 %56, 1, !dbg !6923
  %and244 = and i64 %sub243, 65536, !dbg !6923
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6923
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6923

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6923

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub248 = sub i64 %57, 1, !dbg !6923
  %and249 = and i64 %sub248, 32768, !dbg !6923
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6923
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6923

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6923

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub253 = sub i64 %58, 1, !dbg !6923
  %and254 = and i64 %sub253, 16384, !dbg !6923
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6923
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6923

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6923

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub258 = sub i64 %59, 1, !dbg !6923
  %and259 = and i64 %sub258, 8192, !dbg !6923
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6923
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6923

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6923

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub263 = sub i64 %60, 1, !dbg !6923
  %and264 = and i64 %sub263, 4096, !dbg !6923
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6923
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6923

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6923

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub268 = sub i64 %61, 1, !dbg !6923
  %and269 = and i64 %sub268, 2048, !dbg !6923
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6923
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6923

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6923

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub273 = sub i64 %62, 1, !dbg !6923
  %and274 = and i64 %sub273, 1024, !dbg !6923
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6923
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6923

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6923

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub278 = sub i64 %63, 1, !dbg !6923
  %and279 = and i64 %sub278, 512, !dbg !6923
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6923
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6923

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6923

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub283 = sub i64 %64, 1, !dbg !6923
  %and284 = and i64 %sub283, 256, !dbg !6923
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6923
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6923

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6923

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub288 = sub i64 %65, 1, !dbg !6923
  %and289 = and i64 %sub288, 128, !dbg !6923
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6923
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6923

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6923

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub293 = sub i64 %66, 1, !dbg !6923
  %and294 = and i64 %sub293, 64, !dbg !6923
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6923
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6923

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6923

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub298 = sub i64 %67, 1, !dbg !6923
  %and299 = and i64 %sub298, 32, !dbg !6923
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6923
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6923

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6923

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub303 = sub i64 %68, 1, !dbg !6923
  %and304 = and i64 %sub303, 16, !dbg !6923
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6923
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6923

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6923

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub308 = sub i64 %69, 1, !dbg !6923
  %and309 = and i64 %sub308, 8, !dbg !6923
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6923
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6923

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6923

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub313 = sub i64 %70, 1, !dbg !6923
  %and314 = and i64 %sub313, 4, !dbg !6923
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6923
  %71 = zext i1 %tobool315 to i64, !dbg !6923
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6923
  br label %cond.end, !dbg !6923

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6923
  br label %cond.end317, !dbg !6923

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6923
  br label %cond.end319, !dbg !6923

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6923
  br label %cond.end321, !dbg !6923

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6923
  br label %cond.end323, !dbg !6923

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6923
  br label %cond.end325, !dbg !6923

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6923
  br label %cond.end327, !dbg !6923

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6923
  br label %cond.end329, !dbg !6923

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6923
  br label %cond.end331, !dbg !6923

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6923
  br label %cond.end333, !dbg !6923

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6923
  br label %cond.end335, !dbg !6923

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6923
  br label %cond.end337, !dbg !6923

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6923
  br label %cond.end339, !dbg !6923

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6923
  br label %cond.end341, !dbg !6923

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6923
  br label %cond.end343, !dbg !6923

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6923
  br label %cond.end345, !dbg !6923

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6923
  br label %cond.end347, !dbg !6923

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6923
  br label %cond.end349, !dbg !6923

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6923
  br label %cond.end351, !dbg !6923

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6923
  br label %cond.end353, !dbg !6923

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6923
  br label %cond.end355, !dbg !6923

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6923
  br label %cond.end357, !dbg !6923

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6923
  br label %cond.end359, !dbg !6923

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6923
  br label %cond.end361, !dbg !6923

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6923
  br label %cond.end363, !dbg !6923

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6923
  br label %cond.end365, !dbg !6923

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6923
  br label %cond.end367, !dbg !6923

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6923
  br label %cond.end369, !dbg !6923

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6923
  br label %cond.end371, !dbg !6923

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6923
  br label %cond.end373, !dbg !6923

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6923
  br label %cond.end375, !dbg !6923

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6923
  br label %cond.end377, !dbg !6923

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6923
  br label %cond.end379, !dbg !6923

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6923
  br label %cond.end381, !dbg !6923

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6923
  br label %cond.end383, !dbg !6923

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6923
  br label %cond.end385, !dbg !6923

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6923
  br label %cond.end387, !dbg !6923

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6923
  br label %cond.end389, !dbg !6923

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6923
  br label %cond.end391, !dbg !6923

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6923
  br label %cond.end393, !dbg !6923

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6923
  br label %cond.end395, !dbg !6923

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6923
  br label %cond.end397, !dbg !6923

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6923
  br label %cond.end399, !dbg !6923

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6923
  br label %cond.end401, !dbg !6923

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6923
  br label %cond.end403, !dbg !6923

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6923
  br label %cond.end405, !dbg !6923

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6923
  br label %cond.end407, !dbg !6923

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6923
  br label %cond.end409, !dbg !6923

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6923
  br label %cond.end411, !dbg !6923

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6923
  br label %cond.end413, !dbg !6923

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6923
  br label %cond.end415, !dbg !6923

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6923
  br label %cond.end417, !dbg !6923

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6923
  br label %cond.end419, !dbg !6923

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6923
  br label %cond.end421, !dbg !6923

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6923
  br label %cond.end423, !dbg !6923

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6923
  br label %cond.end425, !dbg !6923

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6923
  br label %cond.end427, !dbg !6923

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6923
  br label %cond.end429, !dbg !6923

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6923
  br label %cond.end431, !dbg !6923

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6923
  br label %cond.end433, !dbg !6923

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6923
  br label %cond.end435, !dbg !6923

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6923
  br label %cond.end437, !dbg !6923

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6923
  br label %cond.end440, !dbg !6923

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6923

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6923
  br label %cond.end444, !dbg !6923

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6923
  %sub443 = sub i64 %72, 1, !dbg !6923
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !6923
  br label %cond.end444, !dbg !6923

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6923
  %sub446 = sub i32 %cond445, 12, !dbg !6924
  %add = add i32 %sub446, 1, !dbg !6925
  store i32 %add, i32* %retval, align 4, !dbg !6926
  br label %return, !dbg !6926

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6927
  %dec = add i64 %73, -1, !dbg !6927
  store i64 %dec, i64* %size.addr, align 8, !dbg !6927
  %74 = load i64, i64* %size.addr, align 8, !dbg !6928
  %shr = lshr i64 %74, 12, !dbg !6928
  store i64 %shr, i64* %size.addr, align 8, !dbg !6928
  %75 = load i64, i64* %size.addr, align 8, !dbg !6929
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6906
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6930
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6931
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !6930, !srcloc !6932
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6930
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6933
  %add.i = add i32 %79, 1, !dbg !6934
  store i32 %add.i, i32* %retval, align 4, !dbg !6935
  br label %return, !dbg !6935

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6936
  ret i32 %80, !dbg !6936
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !6937 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6898, metadata !DIExpression()), !dbg !6941
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6905, metadata !DIExpression()), !dbg !6943
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6944, metadata !DIExpression()), !dbg !6945
  %0 = load i64, i64* %n.addr, align 8, !dbg !6946
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6943
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6947
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6948
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !6947, !srcloc !6932
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6947
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6949
  %add.i = add i32 %4, 1, !dbg !6950
  %sub = sub i32 %add.i, 1, !dbg !6951
  ret i32 %sub, !dbg !6952
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6953 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6957, metadata !DIExpression()), !dbg !6958
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6959, metadata !DIExpression()), !dbg !6960
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6961, metadata !DIExpression()), !dbg !6962
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6963, metadata !DIExpression()), !dbg !6964
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6965
  ret i8* %0, !dbg !6966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_all_features(%struct.drm_device* %dev, i32 %features) #0 !dbg !6967 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6970, metadata !DIExpression()), !dbg !6971
  store i32 %features, i32* %features.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %features.addr, metadata !6972, metadata !DIExpression()), !dbg !6973
  call void @llvm.dbg.declare(metadata i32* %supported, metadata !6974, metadata !DIExpression()), !dbg !6975
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6976
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !6977
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !6977
  %driver_features = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 38, !dbg !6978
  %2 = load i32, i32* %driver_features, align 8, !dbg !6978
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6979
  %driver_features1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 11, !dbg !6980
  %4 = load i32, i32* %driver_features1, align 8, !dbg !6980
  %and = and i32 %2, %4, !dbg !6981
  store i32 %and, i32* %supported, align 4, !dbg !6975
  %5 = load i32, i32* %features.addr, align 4, !dbg !6982
  %tobool = icmp ne i32 %5, 0, !dbg !6982
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6983

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %supported, align 4, !dbg !6984
  %7 = load i32, i32* %features.addr, align 4, !dbg !6985
  %and2 = and i32 %6, %7, !dbg !6986
  %8 = load i32, i32* %features.addr, align 4, !dbg !6987
  %cmp = icmp eq i32 %and2, %8, !dbg !6988
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6989
  ret i1 %9, !dbg !6990
}

; Function Attrs: noredzone
declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, %struct.drm_file*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !6991 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6994, metadata !DIExpression()), !dbg !6995
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6996, metadata !DIExpression()), !dbg !6997
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6998, metadata !DIExpression()), !dbg !7000
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !7000
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !7001
  %tobool = icmp ne i32 %0, 0, !dbg !7001
  %lnot = xor i1 %tobool, true, !dbg !7001
  %lnot1 = xor i1 %lnot, true, !dbg !7001
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7001
  %conv = sext i32 %lnot.ext to i64, !dbg !7001
  %tobool2 = icmp ne i64 %conv, 0, !dbg !7001
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7000

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7001

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !7003

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !7005

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !7003
  %2 = load i64, i64* %count.addr, align 8, !dbg !7003
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %1, i64 %2) #7, !dbg !7003
  br label %do.body4, !dbg !7003

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !7007

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7009

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !7007

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 134, i32 2313, i64 12) #6, !dbg !7011, !srcloc !7013
  br label %do.end8, !dbg !7011

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #6, !dbg !7014, !srcloc !7016
  br label %do.body9, !dbg !7007

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7017

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !7007

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !7003

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !7019

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !7003

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !7003

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !7000
  %tobool15 = icmp ne i32 %3, 0, !dbg !7000
  %lnot16 = xor i1 %tobool15, true, !dbg !7000
  %lnot18 = xor i1 %lnot16, true, !dbg !7000
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !7000
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !7000
  store i64 %conv20, i64* %tmp, align 8, !dbg !7001
  %4 = load i64, i64* %tmp, align 8, !dbg !7000
  ret void, !dbg !7021
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !7022 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7025, metadata !DIExpression()), !dbg !7026
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !7027, metadata !DIExpression()), !dbg !7028
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !7029, metadata !DIExpression()), !dbg !7030
  ret void, !dbg !7031
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5389, !5390, !5391, !5392}
!llvm.ident = !{!5393}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "color_encoding_name", scope: !2, file: !3, line: 361, type: !5388, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !288, globals: !5384, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_color_mgmt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !113, !157, !166, !173, !180, !185, !191, !197, !202, !210, !214, !230, !236, !243, !259, !263, !276, !283}
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
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !174, line: 77, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !174, line: 84, baseType: !7, size: 32, elements: !181)
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0, isUnsigned: true)
!183 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1, isUnsigned: true)
!184 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !186, line: 536, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !192, line: 94, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0, isUnsigned: true)
!195 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1, isUnsigned: true)
!196 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2, isUnsigned: true)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !192, line: 59, baseType: !7, size: 32, elements: !198)
!198 = !{!199, !200, !201}
!199 = !DIEnumerator(name: "connector_status_connected", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "connector_status_disconnected", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "connector_status_unknown", value: 3, isUnsigned: true)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !192, line: 133, baseType: !7, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DIEnumerator(name: "SubPixelUnknown", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2, isUnsigned: true)
!207 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3, isUnsigned: true)
!208 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4, isUnsigned: true)
!209 = !DIEnumerator(name: "SubPixelNone", value: 5, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !192, line: 223, baseType: !7, size: 32, elements: !211)
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
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !192, line: 46, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0, isUnsigned: true)
!233 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1, isUnsigned: true)
!234 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2, isUnsigned: true)
!235 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3, isUnsigned: true)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !192, line: 249, baseType: !115, size: 32, elements: !237)
!237 = !{!238, !239, !240, !241, !242}
!238 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!239 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!240 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!241 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!242 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !244, line: 50, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!246 = !DIEnumerator(name: "DRIVER_GEM", value: 1, isUnsigned: true)
!247 = !DIEnumerator(name: "DRIVER_MODESET", value: 2, isUnsigned: true)
!248 = !DIEnumerator(name: "DRIVER_RENDER", value: 8, isUnsigned: true)
!249 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16, isUnsigned: true)
!250 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32, isUnsigned: true)
!251 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64, isUnsigned: true)
!252 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432, isUnsigned: true)
!253 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864, isUnsigned: true)
!254 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728, isUnsigned: true)
!255 = !DIEnumerator(name: "DRIVER_SG", value: 268435456, isUnsigned: true)
!256 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912, isUnsigned: true)
!257 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824, isUnsigned: true)
!258 = !DIEnumerator(name: "DRIVER_KMS_LEGACY_CONTEXT", value: 2147483648, isUnsigned: true)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_lut_tests", file: !174, line: 102, baseType: !7, size: 32, elements: !260)
!260 = !{!261, !262}
!261 = !DIEnumerator(name: "DRM_COLOR_LUT_EQUAL_CHANNELS", value: 1, isUnsigned: true)
!262 = !DIEnumerator(name: "DRM_COLOR_LUT_NON_DECREASING", value: 2, isUnsigned: true)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !264, line: 277, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!266 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!267 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!268 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!269 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!270 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!271 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!272 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!273 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!274 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!275 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !277, line: 305, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !280, !281, !282}
!279 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!280 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!281 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!282 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 10, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287}
!286 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!288 = !{!289, !294, !296, !297, !115, !298}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !290, line: 23, baseType: !291)
!290 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !292, line: 31, baseType: !293)
!292 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !295, line: 148, baseType: !7)
!295 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!297 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !300, line: 939, size: 7680, elements: !301)
!300 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !4646, !4647, !4648, !4649, !4650, !4651, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !5344, !5345, !5347, !5351, !5352, !5353, !5354, !5355, !5377, !5378, !5379, !5380, !5381}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !299, file: !300, line: 941, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !167, line: 53, size: 11840, elements: !305)
!305 = !{!306, !312, !313, !327, !4090, !4096, !4273, !4274, !4275, !4276, !4277, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4298, !4299, !4300, !4301, !4302, !4303, !4306, !4310, !4311, !4634, !4635, !4636, !4639, !4642, !4643}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !304, file: !167, line: 59, baseType: !307, size: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !295, line: 178, size: 128, elements: !308)
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !295, line: 179, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !307, file: !295, line: 179, baseType: !310, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !304, file: !167, line: 62, baseType: !115, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !304, file: !167, line: 65, baseType: !314, size: 32, offset: 160)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !315, line: 19, size: 32, elements: !316)
!315 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !314, file: !315, line: 20, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !319, line: 113, baseType: !320)
!319 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !319, line: 111, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !320, file: !319, line: 112, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !295, line: 168, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 166, size: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !324, file: !295, line: 167, baseType: !115, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !304, file: !167, line: 68, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !330)
!330 = !{!331, !3544, !3545, !3548, !3549, !3600, !3691, !3692, !3693, !3694, !3695, !3704, !3809, !3822, !4017, !4018, !4022, !4024, !4025, !4026, !4030, !4036, !4037, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4078, !4079, !4080, !4083, !4086, !4087, !4088, !4089}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !329, file: !73, line: 462, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !333, line: 64, size: 512, elements: !334)
!333 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !339, !340, !342, !402, !3417, !3538, !3539, !3540, !3541, !3542, !3543}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !333, line: 65, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !332, file: !333, line: 66, baseType: !307, size: 128, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !332, file: !333, line: 67, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !332, file: !333, line: 68, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !333, line: 192, size: 704, elements: !345)
!345 = !{!346, !347, !363, !364}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !344, file: !333, line: 193, baseType: !307, size: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !344, file: !333, line: 194, baseType: !348, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !349, line: 83, baseType: !350)
!349 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !349, line: 71, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !349, line: 72, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !349, line: 72, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !353, file: !349, line: 73, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !349, line: 20, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !356, file: !349, line: 21, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !360, line: 25, baseType: !361)
!360 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 25, elements: !362)
!362 = !{}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !344, file: !333, line: 195, baseType: !332, size: 512, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !344, file: !333, line: 196, baseType: !365, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !333, line: 156, size: 192, elements: !368)
!368 = !{!369, !374, !379}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !367, file: !333, line: 157, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!115, !343, !341}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !333, line: 158, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!336, !343, !341}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !367, file: !333, line: 159, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!115, !343, !341, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !333, line: 148, size: 20736, elements: !386)
!386 = !{!387, !392, !396, !397, !401}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !385, file: !333, line: 149, baseType: !388, size: 192)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 192, elements: !390)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!390 = !{!391}
!391 = !DISubrange(count: 3)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !385, file: !333, line: 150, baseType: !393, size: 4096, offset: 192)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 4096, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !385, file: !333, line: 151, baseType: !115, size: 32, offset: 4288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !385, file: !333, line: 152, baseType: !398, size: 16384, offset: 4320)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 16384, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 2048)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !385, file: !333, line: 153, baseType: !115, size: 32, offset: 20704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !332, file: !333, line: 69, baseType: !403, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !333, line: 138, size: 448, elements: !405)
!405 = !{!406, !410, !439, !441, !3379, !3407, !3411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !404, file: !333, line: 139, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !341}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !404, file: !333, line: 140, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !414, line: 230, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !432}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !413, file: !414, line: 231, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !341, !425, !389}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !295, line: 60, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !422, line: 73, baseType: !423)
!422 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !422, line: 15, baseType: !424)
!424 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !414, line: 30, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !414, line: 31, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !426, file: !414, line: 32, baseType: !430, size: 16, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !295, line: 19, baseType: !431)
!431 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !413, file: !414, line: 232, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!420, !341, !425, !336, !436}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !295, line: 55, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !422, line: 72, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !422, line: 16, baseType: !297)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !404, file: !333, line: 141, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !404, file: !333, line: 142, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !414, line: 84, size: 320, elements: !446)
!446 = !{!447, !448, !452, !3376, !3377}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !414, line: 85, baseType: !336, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !445, file: !414, line: 86, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!430, !341, !425, !115}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !445, file: !414, line: 88, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!430, !341, !456, !115}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !414, line: 168, size: 448, elements: !458)
!458 = !{!459, !460, !461, !462, !3371, !3372}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !457, file: !414, line: 169, baseType: !426, size: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !457, file: !414, line: 170, baseType: !436, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !457, file: !414, line: 171, baseType: !296, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !457, file: !414, line: 172, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!420, !466, !341, !456, !389, !640, !436}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !468)
!468 = !{!469, !487, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3354, !3355, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !467, file: !44, line: 920, baseType: !470, size: 128)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !44, line: 917, size: 128, elements: !471)
!471 = !{!472, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !470, file: !44, line: 918, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !474, line: 58, size: 64, elements: !475)
!474 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !474, line: 59, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !470, file: !44, line: 919, baseType: !479, size: 128, align: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !295, line: 216, size: 128, align: 64, elements: !480)
!480 = !{!481, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !295, line: 217, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !479, file: !295, line: 218, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !482}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !467, file: !44, line: 921, baseType: !488, size: 128, offset: 128)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !489, line: 8, size: 128, elements: !490)
!489 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!490 = !{!491, !495}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !488, file: !489, line: 9, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !494, line: 18, flags: DIFlagFwdDecl)
!494 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !488, file: !489, line: 10, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !494, line: 89, size: 1536, elements: !498)
!498 = !{!499, !500, !510, !518, !519, !537, !3304, !3306, !3318, !3319, !3320, !3321, !3322, !3328, !3329, !3330}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !497, file: !494, line: 91, baseType: !7, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !497, file: !494, line: 92, baseType: !501, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !502, line: 277, baseType: !503)
!502 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !502, line: 277, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !503, file: !502, line: 277, baseType: !506, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !502, line: 70, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !502, line: 65, size: 32, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !507, file: !502, line: 66, baseType: !7, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !497, file: !494, line: 93, baseType: !511, size: 128, offset: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !512, line: 38, size: 128, elements: !513)
!512 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !512, line: 39, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !511, file: !512, line: 39, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !497, file: !494, line: 94, baseType: !496, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !497, file: !494, line: 95, baseType: !520, size: 128, offset: 256)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !494, line: 47, size: 128, elements: !521)
!521 = !{!522, !533}
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !494, line: 48, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !494, line: 48, size: 64, elements: !524)
!524 = !{!525, !532}
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !494, line: 49, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !494, line: 49, size: 64, elements: !527)
!527 = !{!528, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !526, file: !494, line: 50, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !290, line: 21, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !292, line: 27, baseType: !7)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !526, file: !494, line: 50, baseType: !529, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !523, file: !494, line: 52, baseType: !289, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !520, file: !494, line: 54, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !497, file: !494, line: 96, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !540)
!540 = !{!541, !542, !543, !551, !558, !559, !707, !3016, !3017, !3018, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3280, !3288, !3289, !3290, !3300, !3301, !3302, !3303}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !539, file: !44, line: 611, baseType: !430, size: 16)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !539, file: !44, line: 612, baseType: !431, size: 16, offset: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !539, file: !44, line: 613, baseType: !544, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !545, line: 23, baseType: !546)
!545 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 21, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !545, line: 22, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !295, line: 32, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !422, line: 49, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !539, file: !44, line: 614, baseType: !552, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !545, line: 28, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 26, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !553, file: !545, line: 27, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !295, line: 33, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !422, line: 50, baseType: !7)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !539, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !539, file: !44, line: 622, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !563)
!563 = !{!564, !568, !581, !585, !591, !595, !601, !605, !609, !613, !617, !618, !624, !628, !654, !683, !687, !693, !698, !702, !703}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !562, file: !44, line: 1865, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!496, !538, !496, !7}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !562, file: !44, line: 1866, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!336, !496, !538, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !574, line: 10, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !580}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !573, file: !574, line: 11, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !296}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !573, file: !574, line: 12, baseType: !296, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !562, file: !44, line: 1867, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!115, !538, !115}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !562, file: !44, line: 1868, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!589, !538, !115}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !562, file: !44, line: 1870, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!115, !496, !389, !115}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !562, file: !44, line: 1872, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!115, !538, !496, !430, !599}
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !295, line: 30, baseType: !600)
!600 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !562, file: !44, line: 1873, baseType: !602, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!115, !496, !538, !496}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !562, file: !44, line: 1874, baseType: !606, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!115, !538, !496}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !562, file: !44, line: 1875, baseType: !610, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!115, !538, !496, !336}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !562, file: !44, line: 1876, baseType: !614, size: 64, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!115, !538, !496, !430}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !562, file: !44, line: 1877, baseType: !606, size: 64, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !562, file: !44, line: 1878, baseType: !619, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!115, !538, !496, !430, !622}
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !295, line: 16, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !295, line: 13, baseType: !529)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !562, file: !44, line: 1879, baseType: !625, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!115, !538, !496, !538, !496, !7}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !562, file: !44, line: 1881, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!115, !496, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !643, !651, !652, !653}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !633, file: !44, line: 220, baseType: !7, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !633, file: !44, line: 221, baseType: !430, size: 16, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !633, file: !44, line: 222, baseType: !544, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !633, file: !44, line: 223, baseType: !552, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !633, file: !44, line: 224, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !295, line: 46, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !422, line: 88, baseType: !642)
!642 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !633, file: !44, line: 225, baseType: !644, size: 128, offset: 192)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !645, line: 13, size: 128, elements: !646)
!645 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!646 = !{!647, !650}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !644, file: !645, line: 14, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !645, line: 8, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !292, line: 30, baseType: !642)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !644, file: !645, line: 15, baseType: !424, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !633, file: !44, line: 226, baseType: !644, size: 128, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !633, file: !44, line: 227, baseType: !644, size: 128, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !633, file: !44, line: 234, baseType: !466, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !562, file: !44, line: 1882, baseType: !655, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!115, !658, !660, !529, !7}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !662, line: 22, size: 1152, elements: !663)
!662 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!663 = !{!664, !665, !666, !667, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !661, file: !662, line: 23, baseType: !529, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !661, file: !662, line: 24, baseType: !430, size: 16, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !661, file: !662, line: 25, baseType: !7, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !661, file: !662, line: 26, baseType: !668, size: 32, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !295, line: 104, baseType: !529)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !661, file: !662, line: 27, baseType: !289, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !661, file: !662, line: 28, baseType: !289, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !661, file: !662, line: 37, baseType: !289, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !661, file: !662, line: 38, baseType: !622, size: 32, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !661, file: !662, line: 39, baseType: !622, size: 32, offset: 352)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !661, file: !662, line: 40, baseType: !544, size: 32, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !661, file: !662, line: 41, baseType: !552, size: 32, offset: 416)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !661, file: !662, line: 42, baseType: !640, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !661, file: !662, line: 43, baseType: !644, size: 128, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !661, file: !662, line: 44, baseType: !644, size: 128, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !661, file: !662, line: 45, baseType: !644, size: 128, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !661, file: !662, line: 46, baseType: !644, size: 128, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !661, file: !662, line: 47, baseType: !289, size: 64, offset: 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !661, file: !662, line: 48, baseType: !289, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !562, file: !44, line: 1883, baseType: !684, size: 64, offset: 960)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!420, !496, !389, !436}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !562, file: !44, line: 1884, baseType: !688, size: 64, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!115, !538, !691, !289, !289}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !562, file: !44, line: 1886, baseType: !694, size: 64, offset: 1088)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!115, !538, !697, !115}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !562, file: !44, line: 1887, baseType: !699, size: 64, offset: 1152)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!115, !538, !496, !466, !7, !430}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !562, file: !44, line: 1890, baseType: !614, size: 64, offset: 1216)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !562, file: !44, line: 1891, baseType: !704, size: 64, offset: 1280)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!115, !538, !589, !115}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !539, file: !44, line: 623, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !766, !2623, !2705, !2788, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2804, !2808, !2809, !2812, !2813, !2816, !2817, !2818, !2859, !2886, !2887, !2888, !2889, !2890, !2891, !2894, !2896, !2903, !2904, !2906, !2907, !2908, !2967, !2968, !2983, !2984, !2985, !2986, !2987, !2990, !2991, !2992, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !709, file: !44, line: 1417, baseType: !307, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !709, file: !44, line: 1418, baseType: !622, size: 32, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !709, file: !44, line: 1419, baseType: !536, size: 8, offset: 160)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !709, file: !44, line: 1420, baseType: !297, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !709, file: !44, line: 1421, baseType: !640, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !709, file: !44, line: 1422, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !719)
!719 = !{!720, !721, !722, !729, !733, !737, !741, !745, !746, !756, !759, !760, !761, !763, !764, !765}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !44, line: 2229, baseType: !336, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !718, file: !44, line: 2230, baseType: !115, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !718, file: !44, line: 2238, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!115, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !728, line: 28, flags: DIFlagFwdDecl)
!728 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !718, file: !44, line: 2239, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !718, file: !44, line: 2240, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!496, !717, !115, !336, !296}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !718, file: !44, line: 2242, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !708}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !44, line: 2243, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !744, line: 76, flags: DIFlagFwdDecl)
!744 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !44, line: 2244, baseType: !717, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !718, file: !44, line: 2245, baseType: !747, size: 64, offset: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !295, line: 182, size: 64, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !747, file: !295, line: 183, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !295, line: 186, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !295, line: 187, baseType: !750, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !751, file: !295, line: 187, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !718, file: !44, line: 2247, baseType: !757, offset: 576)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !758, line: 187, elements: !362)
!758 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !718, file: !44, line: 2248, baseType: !757, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !718, file: !44, line: 2249, baseType: !757, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !718, file: !44, line: 2250, baseType: !762, offset: 576)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, elements: !390)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !718, file: !44, line: 2252, baseType: !757, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !718, file: !44, line: 2253, baseType: !757, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !718, file: !44, line: 2254, baseType: !757, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !709, file: !44, line: 1423, baseType: !767, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !770)
!770 = !{!771, !775, !779, !780, !784, !790, !794, !795, !796, !800, !804, !805, !806, !807, !813, !818, !819, !875, !876, !877, !878, !2607, !2622}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !769, file: !44, line: 1936, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!538, !708}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !769, file: !44, line: 1937, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !538}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !769, file: !44, line: 1938, baseType: !776, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !769, file: !44, line: 1940, baseType: !781, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !538, !115}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !769, file: !44, line: 1941, baseType: !785, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!115, !538, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !769, file: !44, line: 1942, baseType: !791, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!115, !538}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !769, file: !44, line: 1943, baseType: !776, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !769, file: !44, line: 1944, baseType: !738, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !769, file: !44, line: 1945, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!115, !708, !115}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !769, file: !44, line: 1946, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!115, !708}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !769, file: !44, line: 1947, baseType: !801, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !769, file: !44, line: 1948, baseType: !801, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !769, file: !44, line: 1949, baseType: !801, size: 64, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !769, file: !44, line: 1950, baseType: !808, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!115, !496, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !769, file: !44, line: 1951, baseType: !814, size: 64, offset: 896)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!115, !708, !817, !389}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !769, file: !44, line: 1952, baseType: !738, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !769, file: !44, line: 1954, baseType: !820, size: 64, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!115, !823, !496}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !825, line: 16, size: 896, elements: !826)
!825 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !848, !870, !871, !874}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !824, file: !825, line: 17, baseType: !389, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !824, file: !825, line: 18, baseType: !436, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !824, file: !825, line: 19, baseType: !436, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !825, line: 20, baseType: !436, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !824, file: !825, line: 21, baseType: !436, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !824, file: !825, line: 22, baseType: !640, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !824, file: !825, line: 23, baseType: !640, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !824, file: !825, line: 24, baseType: !835, size: 192, offset: 448)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !836, line: 53, size: 192, elements: !837)
!836 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!837 = !{!838, !846, !847}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !835, file: !836, line: 54, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !840, line: 13, baseType: !841)
!840 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !295, line: 175, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 173, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !842, file: !295, line: 174, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !290, line: 22, baseType: !649)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !835, file: !836, line: 55, baseType: !348, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !835, file: !836, line: 59, baseType: !307, size: 128, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !824, file: !825, line: 25, baseType: !849, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !825, line: 31, size: 256, elements: !852)
!852 = !{!853, !858, !862, !866}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !851, file: !825, line: 32, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!296, !823, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !851, file: !825, line: 33, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !823, !296}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !825, line: 34, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!296, !823, !296, !857}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !851, file: !825, line: 35, baseType: !867, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!115, !823, !296}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !824, file: !825, line: 26, baseType: !115, size: 32, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !824, file: !825, line: 27, baseType: !872, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !824, file: !825, line: 28, baseType: !296, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !769, file: !44, line: 1955, baseType: !820, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !769, file: !44, line: 1956, baseType: !820, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !769, file: !44, line: 1957, baseType: !820, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !769, file: !44, line: 1963, baseType: !879, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!115, !708, !882, !294}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !884, line: 68, size: 512, align: 128, elements: !885)
!884 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886, !887, !2599, !2606}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !883, file: !884, line: 69, baseType: !297, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !884, line: 77, baseType: !888, size: 320, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !884, line: 77, size: 320, elements: !889)
!889 = !{!890, !1066, !1071, !1099, !1107, !1113, !2530, !2598}
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 78, baseType: !891, size: 320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 78, size: 320, elements: !892)
!892 = !{!893, !894, !1064, !1065}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !891, file: !884, line: 84, baseType: !307, size: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !891, file: !884, line: 86, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !897)
!897 = !{!898, !899, !906, !907, !908, !923, !932, !933, !934, !935, !1057, !1058, !1061, !1062, !1063}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !896, file: !44, line: 452, baseType: !538, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !896, file: !44, line: 453, baseType: !900, size: 128, offset: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !901, line: 292, size: 128, elements: !902)
!901 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !900, file: !901, line: 293, baseType: !348)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !900, file: !901, line: 295, baseType: !294, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !900, file: !901, line: 296, baseType: !296, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !896, file: !44, line: 454, baseType: !294, size: 32, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !896, file: !44, line: 455, baseType: !323, size: 32, offset: 224)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !896, file: !44, line: 460, baseType: !909, size: 128, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !910, line: 125, size: 128, elements: !911)
!910 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !922}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !909, file: !910, line: 126, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !910, line: 31, size: 64, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !913, file: !910, line: 32, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !910, line: 24, size: 192, align: 64, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !917, file: !910, line: 25, baseType: !297, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !917, file: !910, line: 26, baseType: !916, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !917, file: !910, line: 27, baseType: !916, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !909, file: !910, line: 127, baseType: !916, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !896, file: !44, line: 461, baseType: !924, size: 256, offset: 384)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !925, line: 35, size: 256, elements: !926)
!925 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !928, !929, !931}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !924, file: !925, line: 36, baseType: !839, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !924, file: !925, line: 42, baseType: !839, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !924, file: !925, line: 46, baseType: !930, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !349, line: 29, baseType: !356)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !924, file: !925, line: 47, baseType: !307, size: 128, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !896, file: !44, line: 462, baseType: !297, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !896, file: !44, line: 463, baseType: !297, size: 64, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !896, file: !44, line: 464, baseType: !297, size: 64, offset: 768)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !896, file: !44, line: 465, baseType: !936, size: 64, offset: 832)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !939)
!939 = !{!940, !944, !948, !952, !956, !960, !966, !972, !976, !981, !985, !989, !993, !1021, !1025, !1031, !1032, !1033, !1037, !1042, !1046, !1053}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !938, file: !44, line: 368, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!115, !882, !788}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !938, file: !44, line: 369, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!115, !466, !882}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !938, file: !44, line: 372, baseType: !949, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!115, !895, !788}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !938, file: !44, line: 375, baseType: !953, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!115, !882}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !938, file: !44, line: 381, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!115, !466, !895, !310, !7}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !938, file: !44, line: 383, baseType: !961, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !938, file: !44, line: 385, baseType: !967, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!115, !466, !895, !640, !7, !7, !970, !971}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !938, file: !44, line: 388, baseType: !973, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!115, !466, !895, !640, !7, !7, !882, !296}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !938, file: !44, line: 393, baseType: !977, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!980, !895, !980}
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !295, line: 125, baseType: !289)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !938, file: !44, line: 394, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !882, !7, !7}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !938, file: !44, line: 395, baseType: !986, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!115, !882, !294}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !938, file: !44, line: 396, baseType: !990, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !882}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !938, file: !44, line: 397, baseType: !994, size: 64, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!420, !997, !1019}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !999)
!999 = !{!1000, !1001, !1002, !1006, !1007, !1008, !1011, !1012}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !998, file: !44, line: 321, baseType: !466, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !998, file: !44, line: 326, baseType: !640, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !998, file: !44, line: 327, baseType: !1003, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !997, !424, !424}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !998, file: !44, line: 328, baseType: !296, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !998, file: !44, line: 329, baseType: !115, size: 32, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !998, file: !44, line: 330, baseType: !1009, size: 16, offset: 288)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !290, line: 19, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !292, line: 24, baseType: !431)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !998, file: !44, line: 331, baseType: !1009, size: 16, offset: 304)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !44, line: 332, baseType: !1013, size: 64, offset: 320)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !44, line: 332, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1013, file: !44, line: 333, baseType: !7, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1013, file: !44, line: 334, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !938, file: !44, line: 402, baseType: !1022, size: 64, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!115, !895, !882, !882, !5}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !938, file: !44, line: 404, baseType: !1026, size: 64, offset: 896)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!599, !882, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1030, line: 305, baseType: !7)
!1030 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !938, file: !44, line: 405, baseType: !990, size: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !938, file: !44, line: 406, baseType: !953, size: 64, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !938, file: !44, line: 407, baseType: !1034, size: 64, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!115, !882, !297, !297}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !938, file: !44, line: 409, baseType: !1038, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !882, !1041, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !938, file: !44, line: 410, baseType: !1043, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!115, !895, !882}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !938, file: !44, line: 413, baseType: !1047, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!115, !1050, !466, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !938, file: !44, line: 415, baseType: !1054, size: 64, offset: 1344)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !466}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !896, file: !44, line: 466, baseType: !297, size: 64, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !896, file: !44, line: 467, baseType: !1059, size: 32, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1060, line: 8, baseType: !529)
!1060 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !896, file: !44, line: 468, baseType: !348, offset: 992)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !896, file: !44, line: 469, baseType: !307, size: 128, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !896, file: !44, line: 470, baseType: !296, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !891, file: !884, line: 87, baseType: !297, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !891, file: !884, line: 94, baseType: !297, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 96, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 96, size: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1067, file: !884, line: 101, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !295, line: 143, baseType: !289)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 103, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 103, size: 320, elements: !1073)
!1073 = !{!1074, !1084, !1087, !1088}
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !884, line: 104, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !884, line: 104, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1075, file: !884, line: 105, baseType: !307, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !884, line: 106, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !884, line: 106, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !884, line: 107, baseType: !882, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1079, file: !884, line: 109, baseType: !115, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1079, file: !884, line: 110, baseType: !115, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1072, file: !884, line: 117, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !884, line: 117, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1072, file: !884, line: 119, baseType: !296, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !884, line: 120, baseType: !1089, size: 64, offset: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !884, line: 120, size: 64, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1089, file: !884, line: 121, baseType: !296, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1089, file: !884, line: 122, baseType: !297, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !884, line: 123, baseType: !1094, size: 32)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !884, line: 123, size: 32, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1094, file: !884, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1094, file: !884, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1094, file: !884, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 130, baseType: !1100, size: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 130, size: 192, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1100, file: !884, line: 131, baseType: !297, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1100, file: !884, line: 134, baseType: !536, size: 8, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1100, file: !884, line: 135, baseType: !536, size: 8, offset: 72)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1100, file: !884, line: 136, baseType: !323, size: 32, offset: 96)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1100, file: !884, line: 137, baseType: !7, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 139, baseType: !1108, size: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 139, size: 256, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1108, file: !884, line: 140, baseType: !297, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1108, file: !884, line: 141, baseType: !323, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1108, file: !884, line: 143, baseType: !307, size: 128, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 145, baseType: !1114, size: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 145, size: 256, elements: !1115)
!1115 = !{!1116, !1117, !1120, !1121, !2529}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1114, file: !884, line: 146, baseType: !297, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1114, file: !884, line: 147, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1119, line: 509, baseType: !882)
!1119 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1114, file: !884, line: 148, baseType: !297, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !884, line: 149, baseType: !1122, size: 64, offset: 192)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !884, line: 149, size: 64, elements: !1123)
!1123 = !{!1124, !2528}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1122, file: !884, line: 150, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !884, line: 388, size: 7296, elements: !1127)
!1127 = !{!1128, !2524}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !884, line: 389, baseType: !1129, size: 7296)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !884, line: 389, size: 7296, elements: !1130)
!1130 = !{!1131, !1249, !1250, !1251, !1255, !1256, !1257, !1258, !1259, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1300, !1308, !1311, !1351, !1352, !2508, !2509, !2512, !2513, !2514, !2517, !2518, !2519, !2522, !2523}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1129, file: !884, line: 390, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !884, line: 305, size: 1472, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1149, !1150, !1155, !1156, !1159, !1243, !1244, !1245, !1246, !1247}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1133, file: !884, line: 308, baseType: !297, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1133, file: !884, line: 309, baseType: !297, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1133, file: !884, line: 313, baseType: !1132, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1133, file: !884, line: 313, baseType: !1132, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1133, file: !884, line: 315, baseType: !917, size: 192, align: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1133, file: !884, line: 323, baseType: !297, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1133, file: !884, line: 327, baseType: !1125, size: 64, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1133, file: !884, line: 333, baseType: !1143, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1119, line: 284, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1119, line: 284, size: 64, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1144, file: !1119, line: 284, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1148, line: 19, baseType: !297)
!1148 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1133, file: !884, line: 334, baseType: !297, size: 64, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1133, file: !884, line: 343, baseType: !1151, size: 256, offset: 704)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !884, line: 340, size: 256, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1151, file: !884, line: 341, baseType: !917, size: 192, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1151, file: !884, line: 342, baseType: !297, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1133, file: !884, line: 351, baseType: !307, size: 128, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1133, file: !884, line: 353, baseType: !1157, size: 64, offset: 1088)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !884, line: 353, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1133, file: !884, line: 356, baseType: !1160, size: 64, offset: 1152)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1163)
!1163 = !{!1164, !1168, !1169, !1173, !1177, !1217, !1221, !1225, !1229, !1230, !1231, !1235, !1239}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1162, file: !14, line: 558, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !1132}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1162, file: !14, line: 559, baseType: !1165, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1162, file: !14, line: 560, baseType: !1170, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!115, !1132, !297}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1162, file: !14, line: 561, baseType: !1174, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!115, !1132}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1162, file: !14, line: 562, baseType: !1178, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !884, line: 682, baseType: !7)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1197, !1204, !1210, !1211, !1212, !1214, !1216}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1183, file: !14, line: 509, baseType: !1132, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1183, file: !14, line: 511, baseType: !294, size: 32, offset: 96)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1183, file: !14, line: 512, baseType: !297, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1183, file: !14, line: 513, baseType: !297, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1183, file: !14, line: 514, baseType: !1191, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1119, line: 385, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 385, size: 64, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1193, file: !1119, line: 385, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1148, line: 15, baseType: !297)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1183, file: !14, line: 516, baseType: !1198, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1119, line: 359, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 359, size: 64, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1200, file: !1119, line: 359, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1148, line: 16, baseType: !297)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1183, file: !14, line: 519, baseType: !1205, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1148, line: 21, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1148, line: 21, size: 64, elements: !1207)
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1206, file: !1148, line: 21, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1148, line: 14, baseType: !297)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1183, file: !14, line: 521, baseType: !882, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1183, file: !14, line: 522, baseType: !882, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1183, file: !14, line: 528, baseType: !1213, size: 64, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1183, file: !14, line: 532, baseType: !1215, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1183, file: !14, line: 536, baseType: !1118, size: 64, offset: 704)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1162, file: !14, line: 563, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1181, !1182, !13}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1162, file: !14, line: 565, baseType: !1222, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1182, !297, !297}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1162, file: !14, line: 567, baseType: !1226, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!297, !1132}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1162, file: !14, line: 571, baseType: !1178, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1162, file: !14, line: 574, baseType: !1178, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1162, file: !14, line: 579, baseType: !1232, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!115, !1132, !297, !296, !115, !115}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1162, file: !14, line: 585, baseType: !1236, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!336, !1132}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1162, file: !14, line: 615, baseType: !1240, size: 64, offset: 768)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!882, !1132, !297}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1133, file: !884, line: 359, baseType: !297, size: 64, offset: 1216)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1133, file: !884, line: 361, baseType: !466, size: 64, offset: 1280)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1133, file: !884, line: 362, baseType: !296, size: 64, offset: 1344)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1133, file: !884, line: 365, baseType: !839, size: 64, offset: 1408)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1133, file: !884, line: 373, baseType: !1248, offset: 1472)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !884, line: 296, elements: !362)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1129, file: !884, line: 391, baseType: !913, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1129, file: !884, line: 392, baseType: !289, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1129, file: !884, line: 394, baseType: !1252, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!297, !466, !297, !297, !297, !297}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1129, file: !884, line: 398, baseType: !297, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1129, file: !884, line: 399, baseType: !297, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1129, file: !884, line: 405, baseType: !297, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1129, file: !884, line: 406, baseType: !297, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1129, file: !884, line: 407, baseType: !1260, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1119, line: 286, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 286, size: 64, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1262, file: !1119, line: 286, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1148, line: 18, baseType: !297)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1129, file: !884, line: 416, baseType: !323, size: 32, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1129, file: !884, line: 428, baseType: !323, size: 32, offset: 608)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1129, file: !884, line: 437, baseType: !323, size: 32, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1129, file: !884, line: 447, baseType: !323, size: 32, offset: 672)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1129, file: !884, line: 450, baseType: !839, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1129, file: !884, line: 452, baseType: !115, size: 32, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1129, file: !884, line: 454, baseType: !348, offset: 800)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1129, file: !884, line: 457, baseType: !924, size: 256, offset: 832)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1129, file: !884, line: 459, baseType: !307, size: 128, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1129, file: !884, line: 466, baseType: !297, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1129, file: !884, line: 467, baseType: !297, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1129, file: !884, line: 469, baseType: !297, size: 64, offset: 1344)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1129, file: !884, line: 470, baseType: !297, size: 64, offset: 1408)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1129, file: !884, line: 471, baseType: !841, size: 64, offset: 1472)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1129, file: !884, line: 472, baseType: !297, size: 64, offset: 1536)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1129, file: !884, line: 473, baseType: !297, size: 64, offset: 1600)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1129, file: !884, line: 474, baseType: !297, size: 64, offset: 1664)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1129, file: !884, line: 475, baseType: !297, size: 64, offset: 1728)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1129, file: !884, line: 477, baseType: !348, offset: 1792)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1129, file: !884, line: 478, baseType: !297, size: 64, offset: 1792)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1129, file: !884, line: 478, baseType: !297, size: 64, offset: 1856)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1129, file: !884, line: 478, baseType: !297, size: 64, offset: 1920)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1129, file: !884, line: 478, baseType: !297, size: 64, offset: 1984)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1129, file: !884, line: 479, baseType: !297, size: 64, offset: 2048)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1129, file: !884, line: 479, baseType: !297, size: 64, offset: 2112)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1129, file: !884, line: 479, baseType: !297, size: 64, offset: 2176)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1129, file: !884, line: 480, baseType: !297, size: 64, offset: 2240)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1129, file: !884, line: 480, baseType: !297, size: 64, offset: 2304)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1129, file: !884, line: 480, baseType: !297, size: 64, offset: 2368)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1129, file: !884, line: 480, baseType: !297, size: 64, offset: 2432)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1129, file: !884, line: 482, baseType: !1297, size: 2816, offset: 2496)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 2816, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 44)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1129, file: !884, line: 488, baseType: !1301, size: 256, offset: 5312)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1302, line: 60, size: 256, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1301, file: !1302, line: 61, baseType: !1305, size: 256)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 256, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 4)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1129, file: !884, line: 490, baseType: !1309, size: 64, offset: 5568)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !884, line: 490, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1129, file: !884, line: 493, baseType: !1312, size: 896, offset: 5632)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1313, line: 53, baseType: !1314)
!1313 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1313, line: 13, size: 896, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1322, !1323, !1324, !1325, !1345, !1346, !1347}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1314, file: !1313, line: 18, baseType: !289, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1314, file: !1313, line: 28, baseType: !841, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1314, file: !1313, line: 31, baseType: !924, size: 256, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1314, file: !1313, line: 32, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1313, line: 32, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1314, file: !1313, line: 37, baseType: !431, size: 16, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !1313, line: 40, baseType: !835, size: 192, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1314, file: !1313, line: 41, baseType: !296, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1314, file: !1313, line: 42, baseType: !1326, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1329, line: 13, size: 896, elements: !1330)
!1329 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1328, file: !1329, line: 14, baseType: !296, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1328, file: !1329, line: 15, baseType: !297, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1328, file: !1329, line: 17, baseType: !297, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1328, file: !1329, line: 17, baseType: !297, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1328, file: !1329, line: 19, baseType: !424, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1328, file: !1329, line: 21, baseType: !424, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1328, file: !1329, line: 22, baseType: !424, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1328, file: !1329, line: 23, baseType: !424, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1328, file: !1329, line: 24, baseType: !424, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1328, file: !1329, line: 25, baseType: !424, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1328, file: !1329, line: 26, baseType: !424, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1328, file: !1329, line: 27, baseType: !424, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1328, file: !1329, line: 28, baseType: !424, size: 64, offset: 768)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1328, file: !1329, line: 29, baseType: !424, size: 64, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1314, file: !1313, line: 44, baseType: !323, size: 32, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1314, file: !1313, line: 50, baseType: !1009, size: 16, offset: 864)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1314, file: !1313, line: 51, baseType: !1348, size: 16, offset: 880)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !290, line: 18, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !292, line: 23, baseType: !1350)
!1350 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !884, line: 495, baseType: !297, size: 64, offset: 6528)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1129, file: !884, line: 497, baseType: !1353, size: 64, offset: 6592)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !884, line: 381, size: 384, elements: !1355)
!1355 = !{!1356, !1357, !2507}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1354, file: !884, line: 382, baseType: !323, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1354, file: !884, line: 383, baseType: !1358, size: 128, offset: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !884, line: 376, size: 128, elements: !1359)
!1359 = !{!1360, !2505}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1358, file: !884, line: 377, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1363, line: 640, size: 48640, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !{!1365, !1371, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1386, !1404, !1415, !1500, !1501, !1502, !1513, !1514, !1516, !1517, !1518, !1519, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1598, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1669, !1671, !1672, !1673, !1685, !1686, !1687, !1688, !1689, !1690, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1714, !1719, !1901, !1902, !1903, !1904, !1908, !1911, !1914, !1917, !1920, !1946, !2047, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2093, !2094, !2095, !2096, !2097, !2102, !2103, !2104, !2107, !2108, !2111, !2114, !2117, !2120, !2163, !2166, !2167, !2246, !2247, !2250, !2251, !2254, !2255, !2256, !2260, !2261, !2262, !2275, !2276, !2277, !2287, !2292, !2295, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1362, file: !1363, line: 646, baseType: !1366, size: 128)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1367, line: 56, size: 128, elements: !1368)
!1367 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1366, file: !1367, line: 57, baseType: !297, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1366, file: !1367, line: 58, baseType: !529, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1362, file: !1363, line: 649, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !424)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1362, file: !1363, line: 657, baseType: !296, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1362, file: !1363, line: 658, baseType: !318, size: 32, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1362, file: !1363, line: 660, baseType: !7, size: 32, offset: 288)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1362, file: !1363, line: 661, baseType: !7, size: 32, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1362, file: !1363, line: 684, baseType: !115, size: 32, offset: 352)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1362, file: !1363, line: 686, baseType: !115, size: 32, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1362, file: !1363, line: 687, baseType: !115, size: 32, offset: 416)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1362, file: !1363, line: 688, baseType: !115, size: 32, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1362, file: !1363, line: 689, baseType: !7, size: 32, offset: 480)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1362, file: !1363, line: 691, baseType: !1383, size: 64, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1363, line: 691, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1362, file: !1363, line: 692, baseType: !1387, size: 832, offset: 576)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1363, line: 451, size: 832, elements: !1388)
!1388 = !{!1389, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1387, file: !1363, line: 453, baseType: !1390, size: 128)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1363, line: 325, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1390, file: !1363, line: 326, baseType: !297, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1390, file: !1363, line: 327, baseType: !529, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1387, file: !1363, line: 454, baseType: !917, size: 192, align: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1387, file: !1363, line: 455, baseType: !307, size: 128, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1387, file: !1363, line: 456, baseType: !7, size: 32, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1387, file: !1363, line: 458, baseType: !289, size: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1387, file: !1363, line: 459, baseType: !289, size: 64, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1387, file: !1363, line: 460, baseType: !289, size: 64, offset: 640)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1387, file: !1363, line: 461, baseType: !289, size: 64, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1387, file: !1363, line: 463, baseType: !289, size: 64, offset: 768)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1387, file: !1363, line: 465, baseType: !1403, offset: 832)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1363, line: 415, elements: !362)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1362, file: !1363, line: 693, baseType: !1405, size: 384, offset: 1408)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1363, line: 489, size: 384, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1405, file: !1363, line: 490, baseType: !307, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1405, file: !1363, line: 491, baseType: !297, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1405, file: !1363, line: 492, baseType: !297, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1405, file: !1363, line: 493, baseType: !7, size: 32, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1405, file: !1363, line: 494, baseType: !431, size: 16, offset: 288)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1405, file: !1363, line: 495, baseType: !431, size: 16, offset: 304)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1405, file: !1363, line: 497, baseType: !1414, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1362, file: !1363, line: 697, baseType: !1416, size: 1792, offset: 1792)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1363, line: 507, size: 1792, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1497, !1498}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1416, file: !1363, line: 508, baseType: !917, size: 192, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1416, file: !1363, line: 515, baseType: !289, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1416, file: !1363, line: 516, baseType: !289, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1416, file: !1363, line: 517, baseType: !289, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1416, file: !1363, line: 518, baseType: !289, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1416, file: !1363, line: 519, baseType: !289, size: 64, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1416, file: !1363, line: 526, baseType: !845, size: 64, offset: 512)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1416, file: !1363, line: 527, baseType: !289, size: 64, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !1363, line: 528, baseType: !7, size: 32, offset: 640)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1416, file: !1363, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1416, file: !1363, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1416, file: !1363, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1416, file: !1363, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1416, file: !1363, line: 563, baseType: !1432, size: 512, offset: 704)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1433)
!1433 = !{!1434, !1442, !1443, !1448, !1491, !1494, !1495, !1496}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1432, file: !20, line: 119, baseType: !1435, size: 256)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1436, line: 9, size: 256, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1435, file: !1436, line: 10, baseType: !917, size: 192, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1435, file: !1436, line: 11, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1441, line: 29, baseType: !845)
!1441 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1432, file: !20, line: 120, baseType: !1440, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1432, file: !20, line: 121, baseType: !1444, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!19, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1432, file: !20, line: 122, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1451)
!1451 = !{!1452, !1472, !1473, !1476, !1481, !1482, !1486, !1490}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1450, file: !20, line: 160, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !20, line: 215, baseType: !930)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1454, file: !20, line: 216, baseType: !7, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1454, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1454, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1454, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1454, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1454, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1454, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1454, file: !20, line: 233, baseType: !1440, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1454, file: !20, line: 234, baseType: !1447, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1454, file: !20, line: 235, baseType: !1440, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1454, file: !20, line: 236, baseType: !1447, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1454, file: !20, line: 237, baseType: !1469, size: 4096, offset: 512)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 4096, elements: !1470)
!1470 = !{!1471}
!1471 = !DISubrange(count: 8)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1450, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1450, file: !20, line: 162, baseType: !1474, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !295, line: 27, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !422, line: 96, baseType: !115)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1450, file: !20, line: 163, baseType: !1477, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !502, line: 276, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !502, line: 276, size: 32, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1478, file: !502, line: 276, baseType: !506, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1450, file: !20, line: 164, baseType: !1447, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1450, file: !20, line: 165, baseType: !1483, size: 128, offset: 256)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1436, line: 14, size: 128, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1483, file: !1436, line: 15, baseType: !909, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1450, file: !20, line: 166, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1440}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1450, file: !20, line: 167, baseType: !1440, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1432, file: !20, line: 123, baseType: !1492, size: 8, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !290, line: 17, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !292, line: 21, baseType: !536)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1432, file: !20, line: 124, baseType: !1492, size: 8, offset: 456)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1432, file: !20, line: 125, baseType: !1492, size: 8, offset: 464)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1432, file: !20, line: 126, baseType: !1492, size: 8, offset: 472)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1416, file: !1363, line: 572, baseType: !1432, size: 512, offset: 1216)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1416, file: !1363, line: 580, baseType: !1499, size: 64, offset: 1728)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1362, file: !1363, line: 721, baseType: !7, size: 32, offset: 3584)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1362, file: !1363, line: 722, baseType: !115, size: 32, offset: 3616)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1362, file: !1363, line: 723, baseType: !1503, size: 64, offset: 3648)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1506, line: 17, baseType: !1507)
!1506 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1506, line: 17, size: 64, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1507, file: !1506, line: 17, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 1)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1362, file: !1363, line: 724, baseType: !1505, size: 64, offset: 3712)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1362, file: !1363, line: 749, baseType: !1515, offset: 3776)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1363, line: 290, elements: !362)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1362, file: !1363, line: 751, baseType: !307, size: 128, offset: 3776)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1362, file: !1363, line: 757, baseType: !1125, size: 64, offset: 3904)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1362, file: !1363, line: 758, baseType: !1125, size: 64, offset: 3968)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1362, file: !1363, line: 761, baseType: !1520, size: 320, offset: 4032)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1302, line: 34, size: 320, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1520, file: !1302, line: 35, baseType: !289, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1520, file: !1302, line: 36, baseType: !1524, size: 256, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 256, elements: !1306)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1362, file: !1363, line: 766, baseType: !115, size: 32, offset: 4352)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1362, file: !1363, line: 767, baseType: !115, size: 32, offset: 4384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1362, file: !1363, line: 768, baseType: !115, size: 32, offset: 4416)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1362, file: !1363, line: 770, baseType: !115, size: 32, offset: 4448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1362, file: !1363, line: 772, baseType: !297, size: 64, offset: 4480)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1362, file: !1363, line: 775, baseType: !7, size: 32, offset: 4544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1362, file: !1363, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1362, file: !1363, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1362, file: !1363, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1362, file: !1363, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1362, file: !1363, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1362, file: !1363, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1362, file: !1363, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1362, file: !1363, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1362, file: !1363, line: 831, baseType: !297, size: 64, offset: 4672)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1362, file: !1363, line: 833, baseType: !1541, size: 384, offset: 4736)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1542)
!1542 = !{!1543, !1548}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1541, file: !25, line: 26, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!424, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !25, line: 27, baseType: !1549, size: 320, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !25, line: 27, size: 320, elements: !1550)
!1550 = !{!1551, !1561, !1588}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1549, file: !25, line: 36, baseType: !1552, size: 320)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !25, line: 29, size: 320, elements: !1553)
!1553 = !{!1554, !1556, !1557, !1558, !1559, !1560}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1552, file: !25, line: 30, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1552, file: !25, line: 31, baseType: !529, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !25, line: 32, baseType: !529, size: 32, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1552, file: !25, line: 33, baseType: !529, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1552, file: !25, line: 34, baseType: !289, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1552, file: !25, line: 35, baseType: !1555, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1549, file: !25, line: 46, baseType: !1562, size: 192)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !25, line: 38, size: 192, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1587}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1562, file: !25, line: 39, baseType: !1474, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1562, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !25, line: 41, baseType: !1567, size: 64, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !25, line: 41, size: 64, elements: !1568)
!1568 = !{!1569, !1577}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1567, file: !25, line: 42, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1572, line: 7, size: 128, elements: !1573)
!1572 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1571, file: !1572, line: 8, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !422, line: 93, baseType: !642)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1571, file: !1572, line: 9, baseType: !642, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1567, file: !25, line: 43, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1580, line: 7, size: 64, elements: !1581)
!1580 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1586}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1579, file: !1580, line: 8, baseType: !1583, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1580, line: 5, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !290, line: 20, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !292, line: 26, baseType: !115)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1579, file: !1580, line: 9, baseType: !1584, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1562, file: !25, line: 45, baseType: !289, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1549, file: !25, line: 54, baseType: !1589, size: 256)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !25, line: 48, size: 256, elements: !1590)
!1590 = !{!1591, !1594, !1595, !1596, !1597}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1589, file: !25, line: 49, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1589, file: !25, line: 50, baseType: !115, size: 32, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1589, file: !25, line: 51, baseType: !115, size: 32, offset: 96)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1589, file: !25, line: 52, baseType: !297, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1589, file: !25, line: 53, baseType: !297, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1362, file: !1363, line: 835, baseType: !1599, size: 32, offset: 5120)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !295, line: 22, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !422, line: 28, baseType: !115)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1362, file: !1363, line: 836, baseType: !1599, size: 32, offset: 5152)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1362, file: !1363, line: 840, baseType: !297, size: 64, offset: 5184)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1362, file: !1363, line: 849, baseType: !1361, size: 64, offset: 5248)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1362, file: !1363, line: 852, baseType: !1361, size: 64, offset: 5312)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1362, file: !1363, line: 857, baseType: !307, size: 128, offset: 5376)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1362, file: !1363, line: 858, baseType: !307, size: 128, offset: 5504)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1362, file: !1363, line: 859, baseType: !1361, size: 64, offset: 5632)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1362, file: !1363, line: 867, baseType: !307, size: 128, offset: 5696)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1362, file: !1363, line: 868, baseType: !307, size: 128, offset: 5824)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1362, file: !1363, line: 871, baseType: !1611, size: 64, offset: 5952)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1619, !1620, !1627, !1628}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1612, file: !53, line: 61, baseType: !318, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1612, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1612, file: !53, line: 63, baseType: !348, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1612, file: !53, line: 65, baseType: !1618, size: 256, offset: 64)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 256, elements: !1306)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1612, file: !53, line: 66, baseType: !747, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1612, file: !53, line: 68, baseType: !1621, size: 128, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1622, line: 40, baseType: !1623)
!1622 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1622, line: 36, size: 128, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1623, file: !1622, line: 37, baseType: !348)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1623, file: !1622, line: 38, baseType: !307, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1612, file: !53, line: 69, baseType: !479, size: 128, align: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1612, file: !53, line: 70, baseType: !1629, size: 128, offset: 640)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1630, size: 128, elements: !1511)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1630, file: !53, line: 55, baseType: !115, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1630, file: !53, line: 56, baseType: !1634, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1636, line: 20, size: 1088, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1655, !1658, !1659}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1635, file: !1636, line: 21, baseType: !314, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1635, file: !1636, line: 22, baseType: !1640, size: 192, offset: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1641, line: 19, size: 192, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1640, file: !1641, line: 20, baseType: !900, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1640, file: !1641, line: 21, baseType: !7, size: 32, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1640, file: !1641, line: 22, baseType: !7, size: 32, offset: 160)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1635, file: !1636, line: 23, baseType: !479, size: 128, align: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1635, file: !1636, line: 24, baseType: !7, size: 32, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1635, file: !1636, line: 25, baseType: !1361, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1635, file: !1636, line: 26, baseType: !1085, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1635, file: !1636, line: 27, baseType: !7, size: 32, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1635, file: !1636, line: 28, baseType: !1634, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1635, file: !1636, line: 32, baseType: !1653, size: 64, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !545, line: 18, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1635, file: !1636, line: 33, baseType: !1656, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1636, line: 33, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1635, file: !1636, line: 34, baseType: !115, size: 32, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1635, file: !1636, line: 35, baseType: !1660, size: 192, offset: 896)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1661, line: 7, size: 192, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1664, !1668}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1660, file: !1661, line: 8, baseType: !839, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1660, file: !1661, line: 9, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1661, line: 5, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1660, file: !1661, line: 10, baseType: !7, size: 32, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1362, file: !1363, line: 872, baseType: !1670, size: 512, offset: 6016)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 512, elements: !1306)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1362, file: !1363, line: 873, baseType: !307, size: 128, offset: 6528)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1362, file: !1363, line: 874, baseType: !307, size: 128, offset: 6656)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1362, file: !1363, line: 876, baseType: !1674, size: 64, offset: 6784)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1676, line: 26, size: 192, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1675, file: !1676, line: 27, baseType: !7, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1675, file: !1676, line: 28, baseType: !1680, size: 128, offset: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1681, line: 43, size: 128, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1680, file: !1681, line: 44, baseType: !930)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1680, file: !1681, line: 45, baseType: !307, size: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1362, file: !1363, line: 879, baseType: !817, size: 64, offset: 6848)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1362, file: !1363, line: 882, baseType: !817, size: 64, offset: 6912)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1362, file: !1363, line: 884, baseType: !289, size: 64, offset: 6976)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1362, file: !1363, line: 885, baseType: !289, size: 64, offset: 7040)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1362, file: !1363, line: 890, baseType: !289, size: 64, offset: 7104)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1362, file: !1363, line: 891, baseType: !1691, size: 128, offset: 7168)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1363, line: 242, size: 128, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1691, file: !1363, line: 244, baseType: !289, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1691, file: !1363, line: 245, baseType: !289, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !1363, line: 246, baseType: !930, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1362, file: !1363, line: 900, baseType: !297, size: 64, offset: 7296)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1362, file: !1363, line: 901, baseType: !297, size: 64, offset: 7360)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1362, file: !1363, line: 904, baseType: !289, size: 64, offset: 7424)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1362, file: !1363, line: 907, baseType: !289, size: 64, offset: 7488)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1362, file: !1363, line: 910, baseType: !297, size: 64, offset: 7552)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1362, file: !1363, line: 911, baseType: !297, size: 64, offset: 7616)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1362, file: !1363, line: 914, baseType: !1703, size: 640, offset: 7680)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1704, line: 123, size: 640, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1712, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1703, file: !1704, line: 124, baseType: !1707, size: 576)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1708, size: 576, elements: !390)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1704, line: 108, size: 192, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1708, file: !1704, line: 109, baseType: !289, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1708, file: !1704, line: 110, baseType: !1483, size: 128, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1703, file: !1704, line: 125, baseType: !7, size: 32, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1703, file: !1704, line: 126, baseType: !7, size: 32, offset: 608)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1362, file: !1363, line: 917, baseType: !1715, size: 192, offset: 8320)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1704, line: 134, size: 192, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1715, file: !1704, line: 135, baseType: !479, size: 128, align: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1715, file: !1704, line: 136, baseType: !7, size: 32, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1362, file: !1363, line: 923, baseType: !1720, size: 64, offset: 8512)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1723, line: 111, size: 1280, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1744, !1745, !1746, !1747, !1748, !1749, !1856, !1857, !1858, !1859, !1885, !1886, !1896}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1722, file: !1723, line: 112, baseType: !323, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1722, file: !1723, line: 120, baseType: !544, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1722, file: !1723, line: 121, baseType: !552, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1722, file: !1723, line: 122, baseType: !544, size: 32, offset: 96)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1722, file: !1723, line: 123, baseType: !552, size: 32, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1722, file: !1723, line: 124, baseType: !544, size: 32, offset: 160)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1722, file: !1723, line: 125, baseType: !552, size: 32, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1722, file: !1723, line: 126, baseType: !544, size: 32, offset: 224)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1722, file: !1723, line: 127, baseType: !552, size: 32, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1722, file: !1723, line: 128, baseType: !7, size: 32, offset: 288)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1722, file: !1723, line: 129, baseType: !1736, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1737, line: 26, baseType: !1738)
!1737 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1737, line: 24, size: 64, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1738, file: !1737, line: 25, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 64, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 2)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1722, file: !1723, line: 130, baseType: !1736, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1722, file: !1723, line: 131, baseType: !1736, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1722, file: !1723, line: 132, baseType: !1736, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1722, file: !1723, line: 133, baseType: !1736, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1722, file: !1723, line: 135, baseType: !536, size: 8, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1722, file: !1723, line: 137, baseType: !1750, size: 64, offset: 704)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1752, line: 189, size: 1664, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1758, !1763, !1764, !1767, !1768, !1773, !1774, !1775, !1776, !1778, !1779, !1780, !1781, !1782, !1820, !1841}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1751, file: !1752, line: 190, baseType: !318, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1751, file: !1752, line: 191, baseType: !1756, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1752, line: 28, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !295, line: 98, baseType: !1584)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 192, baseType: !1759, size: 192, offset: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 192, size: 192, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1759, file: !1752, line: 193, baseType: !307, size: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1759, file: !1752, line: 194, baseType: !917, size: 192, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1751, file: !1752, line: 199, baseType: !924, size: 256, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1751, file: !1752, line: 200, baseType: !1765, size: 64, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1752, line: 200, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1751, file: !1752, line: 201, baseType: !296, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 202, baseType: !1769, size: 64, offset: 640)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 202, size: 64, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1769, file: !1752, line: 203, baseType: !648, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1769, file: !1752, line: 204, baseType: !648, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1751, file: !1752, line: 206, baseType: !648, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1751, file: !1752, line: 207, baseType: !544, size: 32, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1751, file: !1752, line: 208, baseType: !552, size: 32, offset: 800)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1751, file: !1752, line: 209, baseType: !1777, size: 32, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1752, line: 31, baseType: !668)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1751, file: !1752, line: 210, baseType: !431, size: 16, offset: 864)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1751, file: !1752, line: 211, baseType: !431, size: 16, offset: 880)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1751, file: !1752, line: 215, baseType: !1350, size: 16, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1752, line: 222, baseType: !297, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 239, baseType: !1783, size: 320, offset: 1024)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 239, size: 320, elements: !1784)
!1784 = !{!1785, !1812}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1783, file: !1752, line: 240, baseType: !1786, size: 320)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1752, line: 108, size: 320, elements: !1787)
!1787 = !{!1788, !1789, !1801, !1804, !1811}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1786, file: !1752, line: 110, baseType: !297, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1752, line: 111, baseType: !1790, size: 64, offset: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1752, line: 111, size: 64, elements: !1791)
!1791 = !{!1792, !1800}
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1752, line: 112, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1752, line: 112, size: 64, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1793, file: !1752, line: 114, baseType: !1009, size: 16)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1793, file: !1752, line: 115, baseType: !1797, size: 48, offset: 16)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 48, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 6)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1790, file: !1752, line: 121, baseType: !297, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1786, file: !1752, line: 123, baseType: !1802, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1752, line: 96, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1786, file: !1752, line: 124, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1752, line: 102, size: 192, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1806, file: !1752, line: 103, baseType: !479, size: 128, align: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1806, file: !1752, line: 104, baseType: !318, size: 32, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1806, file: !1752, line: 105, baseType: !599, size: 8, offset: 160)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1786, file: !1752, line: 125, baseType: !336, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1752, line: 241, baseType: !1813, size: 320)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !1752, line: 241, size: 320, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818, !1819}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1813, file: !1752, line: 242, baseType: !297, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1813, file: !1752, line: 243, baseType: !297, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1813, file: !1752, line: 244, baseType: !1802, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1813, file: !1752, line: 245, baseType: !1805, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1813, file: !1752, line: 246, baseType: !389, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 254, baseType: !1821, size: 256, offset: 1344)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 254, size: 256, elements: !1822)
!1822 = !{!1823, !1829}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1821, file: !1752, line: 255, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1752, line: 128, size: 256, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1824, file: !1752, line: 129, baseType: !296, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1824, file: !1752, line: 130, baseType: !1828, size: 256)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !1306)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !1752, line: 256, baseType: !1830, size: 256)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1821, file: !1752, line: 256, size: 256, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1830, file: !1752, line: 258, baseType: !307, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1830, file: !1752, line: 259, baseType: !1834, size: 128, offset: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1835, line: 22, size: 128, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1840}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1834, file: !1835, line: 23, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1835, line: 23, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1834, file: !1835, line: 24, baseType: !297, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1751, file: !1752, line: 274, baseType: !1842, size: 64, offset: 1600)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1752, line: 170, size: 192, elements: !1844)
!1844 = !{!1845, !1854, !1855}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1843, file: !1752, line: 171, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1752, line: 165, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!115, !1750, !1850, !1852, !1750}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1843, file: !1752, line: 172, baseType: !1750, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1843, file: !1752, line: 173, baseType: !1802, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1722, file: !1723, line: 138, baseType: !1750, size: 64, offset: 768)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1722, file: !1723, line: 139, baseType: !1750, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1722, file: !1723, line: 140, baseType: !1750, size: 64, offset: 896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1722, file: !1723, line: 145, baseType: !1860, size: 64, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1862, line: 13, size: 896, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1861, file: !1862, line: 14, baseType: !318, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1861, file: !1862, line: 15, baseType: !323, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1861, file: !1862, line: 16, baseType: !323, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1861, file: !1862, line: 21, baseType: !839, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1861, file: !1862, line: 27, baseType: !297, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1861, file: !1862, line: 28, baseType: !297, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1861, file: !1862, line: 29, baseType: !839, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1861, file: !1862, line: 32, baseType: !751, size: 128, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1861, file: !1862, line: 33, baseType: !544, size: 32, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1861, file: !1862, line: 37, baseType: !839, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1861, file: !1862, line: 44, baseType: !1875, size: 256, offset: 640)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1876, line: 15, size: 256, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !1876, line: 16, baseType: !930)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1875, file: !1876, line: 18, baseType: !115, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1875, file: !1876, line: 19, baseType: !115, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1875, file: !1876, line: 20, baseType: !115, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1875, file: !1876, line: 21, baseType: !115, size: 32, offset: 96)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1875, file: !1876, line: 22, baseType: !297, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1876, line: 23, baseType: !297, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1722, file: !1723, line: 146, baseType: !1653, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1722, file: !1723, line: 147, baseType: !1887, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1723, line: 25, size: 64, elements: !1889)
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1888, file: !1723, line: 26, baseType: !323, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1888, file: !1723, line: 27, baseType: !115, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1888, file: !1723, line: 28, baseType: !1893, offset: 64)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, elements: !1894)
!1894 = !{!1895}
!1895 = !DISubrange(count: 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !1723, line: 149, baseType: !1897, size: 128, offset: 1152)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !1723, line: 149, size: 128, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1897, file: !1723, line: 150, baseType: !115, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1897, file: !1723, line: 151, baseType: !479, size: 128, align: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1362, file: !1363, line: 926, baseType: !1720, size: 64, offset: 8576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1362, file: !1363, line: 929, baseType: !1720, size: 64, offset: 8640)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1362, file: !1363, line: 933, baseType: !1750, size: 64, offset: 8704)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1362, file: !1363, line: 943, baseType: !1905, size: 128, offset: 8768)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 128, elements: !1906)
!1906 = !{!1907}
!1907 = !DISubrange(count: 16)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1362, file: !1363, line: 945, baseType: !1909, size: 64, offset: 8896)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1363, line: 49, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1362, file: !1363, line: 956, baseType: !1912, size: 64, offset: 8960)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1363, line: 45, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1362, file: !1363, line: 959, baseType: !1915, size: 64, offset: 9024)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1363, line: 959, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1362, file: !1363, line: 962, baseType: !1918, size: 64, offset: 9088)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1363, line: 66, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1362, file: !1363, line: 966, baseType: !1921, size: 64, offset: 9152)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1923, line: 31, size: 576, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1929, !1932, !1935, !1936, !1939, !1942, !1943}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1922, file: !1923, line: 32, baseType: !323, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1922, file: !1923, line: 33, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1923, line: 9, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1922, file: !1923, line: 34, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1923, line: 10, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1922, file: !1923, line: 35, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1923, line: 8, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1922, file: !1923, line: 36, baseType: !1634, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1922, file: !1923, line: 37, baseType: !1937, size: 64, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1752, line: 34, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1922, file: !1923, line: 38, baseType: !1940, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1923, line: 38, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1922, file: !1923, line: 39, baseType: !1940, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1922, file: !1923, line: 40, baseType: !1944, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1923, line: 12, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1362, file: !1363, line: 969, baseType: !1947, size: 64, offset: 9216)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1949, line: 82, size: 7296, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1986, !1995, !1996, !1998, !1999, !2000, !2003, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2033, !2034, !2041, !2042, !2043, !2044, !2045, !2046}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1948, file: !1949, line: 83, baseType: !318, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1948, file: !1949, line: 84, baseType: !323, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1948, file: !1949, line: 85, baseType: !115, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1948, file: !1949, line: 86, baseType: !307, size: 128, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1948, file: !1949, line: 88, baseType: !1621, size: 128, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1948, file: !1949, line: 91, baseType: !1361, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1948, file: !1949, line: 94, baseType: !1958, size: 192, offset: 448)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1959, line: 30, size: 192, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1958, file: !1959, line: 31, baseType: !307, size: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1958, file: !1959, line: 32, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1964, line: 25, baseType: !1965)
!1964 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1964, line: 23, size: 64, elements: !1966)
!1966 = !{!1967}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1965, file: !1964, line: 24, baseType: !1510, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1948, file: !1949, line: 97, baseType: !747, size: 64, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1948, file: !1949, line: 100, baseType: !115, size: 32, offset: 704)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1948, file: !1949, line: 106, baseType: !115, size: 32, offset: 736)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1948, file: !1949, line: 107, baseType: !1361, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1948, file: !1949, line: 110, baseType: !115, size: 32, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 111, baseType: !7, size: 32, offset: 864)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1948, file: !1949, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1948, file: !1949, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1948, file: !1949, line: 128, baseType: !115, size: 32, offset: 928)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1948, file: !1949, line: 129, baseType: !307, size: 128, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1948, file: !1949, line: 132, baseType: !1432, size: 512, offset: 1088)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1948, file: !1949, line: 133, baseType: !1440, size: 64, offset: 1600)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1948, file: !1949, line: 140, baseType: !1981, size: 256, offset: 1664)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1982, size: 256, elements: !1742)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1949, line: 38, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1982, file: !1949, line: 39, baseType: !289, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1982, file: !1949, line: 40, baseType: !289, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1948, file: !1949, line: 146, baseType: !1987, size: 192, offset: 1920)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1949, line: 66, size: 192, elements: !1988)
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1987, file: !1949, line: 67, baseType: !1990, size: 192)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1949, line: 47, size: 192, elements: !1991)
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1990, file: !1949, line: 48, baseType: !841, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1990, file: !1949, line: 49, baseType: !841, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1990, file: !1949, line: 50, baseType: !841, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1948, file: !1949, line: 150, baseType: !1703, size: 640, offset: 2112)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1948, file: !1949, line: 153, baseType: !1997, size: 256, offset: 2752)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1611, size: 256, elements: !1306)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1948, file: !1949, line: 159, baseType: !1611, size: 64, offset: 3008)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1948, file: !1949, line: 162, baseType: !115, size: 32, offset: 3072)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1948, file: !1949, line: 164, baseType: !2001, size: 64, offset: 3136)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1949, line: 164, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1948, file: !1949, line: 175, baseType: !2004, size: 32, offset: 3200)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !502, line: 805, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 798, size: 32, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2005, file: !502, line: 803, baseType: !501, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2005, file: !502, line: 804, baseType: !348, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1948, file: !1949, line: 176, baseType: !289, size: 64, offset: 3264)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1948, file: !1949, line: 176, baseType: !289, size: 64, offset: 3328)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1948, file: !1949, line: 176, baseType: !289, size: 64, offset: 3392)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1948, file: !1949, line: 176, baseType: !289, size: 64, offset: 3456)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1948, file: !1949, line: 177, baseType: !289, size: 64, offset: 3520)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1948, file: !1949, line: 178, baseType: !289, size: 64, offset: 3584)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1948, file: !1949, line: 179, baseType: !1691, size: 128, offset: 3648)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1948, file: !1949, line: 180, baseType: !297, size: 64, offset: 3776)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1948, file: !1949, line: 180, baseType: !297, size: 64, offset: 3840)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1948, file: !1949, line: 180, baseType: !297, size: 64, offset: 3904)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1948, file: !1949, line: 180, baseType: !297, size: 64, offset: 3968)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1948, file: !1949, line: 181, baseType: !297, size: 64, offset: 4032)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1948, file: !1949, line: 181, baseType: !297, size: 64, offset: 4096)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1948, file: !1949, line: 181, baseType: !297, size: 64, offset: 4160)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1948, file: !1949, line: 181, baseType: !297, size: 64, offset: 4224)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1948, file: !1949, line: 182, baseType: !297, size: 64, offset: 4288)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1948, file: !1949, line: 182, baseType: !297, size: 64, offset: 4352)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1948, file: !1949, line: 182, baseType: !297, size: 64, offset: 4416)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1948, file: !1949, line: 182, baseType: !297, size: 64, offset: 4480)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1948, file: !1949, line: 183, baseType: !297, size: 64, offset: 4544)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1948, file: !1949, line: 183, baseType: !297, size: 64, offset: 4608)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1948, file: !1949, line: 184, baseType: !2031, offset: 4672)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2032, line: 12, elements: !362)
!2032 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1948, file: !1949, line: 192, baseType: !293, size: 64, offset: 4672)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1948, file: !1949, line: 203, baseType: !2035, size: 2048, offset: 4736)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2036, size: 2048, elements: !1906)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2037, line: 43, size: 128, elements: !2038)
!2037 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2036, file: !2037, line: 44, baseType: !438, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2036, file: !2037, line: 45, baseType: !438, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1948, file: !1949, line: 220, baseType: !599, size: 8, offset: 6784)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1948, file: !1949, line: 221, baseType: !1350, size: 16, offset: 6800)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1948, file: !1949, line: 222, baseType: !1350, size: 16, offset: 6816)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1948, file: !1949, line: 224, baseType: !1125, size: 64, offset: 6848)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1948, file: !1949, line: 227, baseType: !835, size: 192, offset: 6912)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1948, file: !1949, line: 233, baseType: !835, size: 192, offset: 7104)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1362, file: !1363, line: 970, baseType: !2048, size: 64, offset: 9280)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1949, line: 20, size: 16576, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2049, file: !1949, line: 21, baseType: !348)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2049, file: !1949, line: 22, baseType: !318, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2049, file: !1949, line: 23, baseType: !1621, size: 128, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2049, file: !1949, line: 24, baseType: !2055, size: 16384, offset: 192)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2056, size: 16384, elements: !394)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1959, line: 49, size: 256, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2056, file: !1959, line: 50, baseType: !2059, size: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1959, line: 35, size: 256, elements: !2060)
!2060 = !{!2061, !2068, !2069, !2075}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2059, file: !1959, line: 37, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2063, line: 19, baseType: !2064)
!2063 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2063, line: 18, baseType: !2066)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !115}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2059, file: !1959, line: 38, baseType: !297, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2059, file: !1959, line: 44, baseType: !2070, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2063, line: 22, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2063, line: 21, baseType: !2073)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2059, file: !1959, line: 46, baseType: !1963, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1362, file: !1363, line: 971, baseType: !1963, size: 64, offset: 9344)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1362, file: !1363, line: 972, baseType: !1963, size: 64, offset: 9408)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1362, file: !1363, line: 974, baseType: !1963, size: 64, offset: 9472)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1362, file: !1363, line: 975, baseType: !1958, size: 192, offset: 9536)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1362, file: !1363, line: 976, baseType: !297, size: 64, offset: 9728)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1362, file: !1363, line: 977, baseType: !436, size: 64, offset: 9792)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1362, file: !1363, line: 978, baseType: !7, size: 32, offset: 9856)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1362, file: !1363, line: 980, baseType: !482, size: 64, offset: 9920)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1362, file: !1363, line: 989, baseType: !2085, size: 128, offset: 9984)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2086, line: 35, size: 128, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2085, file: !2086, line: 36, baseType: !115, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2085, file: !2086, line: 37, baseType: !323, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2085, file: !2086, line: 38, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2086, line: 23, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1362, file: !1363, line: 992, baseType: !289, size: 64, offset: 10112)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1362, file: !1363, line: 993, baseType: !289, size: 64, offset: 10176)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1362, file: !1363, line: 996, baseType: !348, offset: 10240)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1362, file: !1363, line: 999, baseType: !930, offset: 10240)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1362, file: !1363, line: 1001, baseType: !2098, size: 64, offset: 10240)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1363, line: 636, size: 64, elements: !2099)
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2098, file: !1363, line: 637, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1362, file: !1363, line: 1005, baseType: !909, size: 128, offset: 10304)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1362, file: !1363, line: 1007, baseType: !1361, size: 64, offset: 10432)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1362, file: !1363, line: 1009, baseType: !2105, size: 64, offset: 10496)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1363, line: 1009, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1362, file: !1363, line: 1043, baseType: !296, size: 64, offset: 10560)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1362, file: !1363, line: 1046, baseType: !2109, size: 64, offset: 10624)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1363, line: 41, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1362, file: !1363, line: 1050, baseType: !2112, size: 64, offset: 10688)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1363, line: 42, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1362, file: !1363, line: 1054, baseType: !2115, size: 64, offset: 10752)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1363, line: 55, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1362, file: !1363, line: 1056, baseType: !2118, size: 64, offset: 10816)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1363, line: 40, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1362, file: !1363, line: 1058, baseType: !2121, size: 64, offset: 10880)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2123, line: 99, size: 704, elements: !2124)
!2123 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2150, !2151}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2122, file: !2123, line: 100, baseType: !839, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2122, file: !2123, line: 101, baseType: !323, size: 32, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2122, file: !2123, line: 102, baseType: !323, size: 32, offset: 96)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2122, file: !2123, line: 105, baseType: !348, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2122, file: !2123, line: 107, baseType: !431, size: 16, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2122, file: !2123, line: 109, baseType: !900, size: 128, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2122, file: !2123, line: 110, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2123, line: 73, size: 448, elements: !2134)
!2134 = !{!2135, !2138, !2139, !2144, !2149}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2133, file: !2123, line: 74, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2123, line: 74, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2133, file: !2123, line: 75, baseType: !2121, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2123, line: 83, baseType: !2140, size: 128, offset: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !2123, line: 83, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2140, file: !2123, line: 84, baseType: !307, size: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2140, file: !2123, line: 85, baseType: !1085, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2123, line: 87, baseType: !2145, size: 128, offset: 256)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !2123, line: 87, size: 128, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2145, file: !2123, line: 88, baseType: !751, size: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2145, file: !2123, line: 89, baseType: !479, size: 128, align: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2133, file: !2123, line: 92, baseType: !7, size: 32, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2122, file: !2123, line: 111, baseType: !747, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2122, file: !2123, line: 113, baseType: !2152, size: 256, offset: 448)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2153, line: 102, size: 256, elements: !2154)
!2153 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2152, file: !2153, line: 103, baseType: !839, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2152, file: !2153, line: 104, baseType: !307, size: 128, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2152, file: !2153, line: 105, baseType: !2158, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2153, line: 21, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1362, file: !1363, line: 1061, baseType: !2164, size: 64, offset: 10944)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1363, line: 43, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1362, file: !1363, line: 1064, baseType: !297, size: 64, offset: 11008)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1362, file: !1363, line: 1065, baseType: !2168, size: 64, offset: 11072)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1959, line: 14, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1959, line: 12, size: 384, elements: !2171)
!2171 = !{!2172}
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !1959, line: 13, baseType: !2173, size: 384)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2170, file: !1959, line: 13, size: 384, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2173, file: !1959, line: 13, baseType: !115, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2173, file: !1959, line: 13, baseType: !115, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2173, file: !1959, line: 13, baseType: !115, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2173, file: !1959, line: 13, baseType: !2179, size: 256, offset: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2180, line: 32, size: 256, elements: !2181)
!2180 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2187, !2200, !2206, !2215, !2235, !2240}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2179, file: !2180, line: 37, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 34, size: 64, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2183, file: !2180, line: 35, baseType: !1600, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2183, file: !2180, line: 36, baseType: !550, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2179, file: !2180, line: 45, baseType: !2188, size: 192)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 40, size: 192, elements: !2189)
!2189 = !{!2190, !2192, !2193, !2199}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2188, file: !2180, line: 41, baseType: !2191, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !422, line: 95, baseType: !115)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2188, file: !2180, line: 42, baseType: !115, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2188, file: !2180, line: 43, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2180, line: 11, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2180, line: 8, size: 64, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2195, file: !2180, line: 9, baseType: !115, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2195, file: !2180, line: 10, baseType: !296, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2188, file: !2180, line: 44, baseType: !115, size: 32, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2179, file: !2180, line: 52, baseType: !2201, size: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 48, size: 128, elements: !2202)
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2201, file: !2180, line: 49, baseType: !1600, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2201, file: !2180, line: 50, baseType: !550, size: 32, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2201, file: !2180, line: 51, baseType: !2194, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2179, file: !2180, line: 61, baseType: !2207, size: 256)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 55, size: 256, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2207, file: !2180, line: 56, baseType: !1600, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2207, file: !2180, line: 57, baseType: !550, size: 32, offset: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2207, file: !2180, line: 58, baseType: !115, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2207, file: !2180, line: 59, baseType: !2213, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !422, line: 94, baseType: !423)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2207, file: !2180, line: 60, baseType: !2213, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2179, file: !2180, line: 95, baseType: !2216, size: 256)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 64, size: 256, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2216, file: !2180, line: 65, baseType: !296, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !2180, line: 77, baseType: !2220, size: 192, offset: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !2180, line: 77, size: 192, elements: !2221)
!2221 = !{!2222, !2223, !2230}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2220, file: !2180, line: 82, baseType: !1350, size: 16)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2220, file: !2180, line: 88, baseType: !2224, size: 192)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !2180, line: 84, size: 192, elements: !2225)
!2225 = !{!2226, !2228, !2229}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2224, file: !2180, line: 85, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 64, elements: !1470)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2224, file: !2180, line: 86, baseType: !296, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2224, file: !2180, line: 87, baseType: !296, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2220, file: !2180, line: 93, baseType: !2231, size: 96)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !2180, line: 90, size: 96, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2231, file: !2180, line: 91, baseType: !2227, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2231, file: !2180, line: 92, baseType: !530, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2179, file: !2180, line: 101, baseType: !2236, size: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 98, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2236, file: !2180, line: 99, baseType: !424, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2236, file: !2180, line: 100, baseType: !115, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2179, file: !2180, line: 108, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2180, line: 104, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2241, file: !2180, line: 105, baseType: !296, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2241, file: !2180, line: 106, baseType: !115, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2241, file: !2180, line: 107, baseType: !7, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1362, file: !1363, line: 1067, baseType: !2031, offset: 11136)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1362, file: !1363, line: 1099, baseType: !2248, size: 64, offset: 11136)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1363, line: 56, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1362, file: !1363, line: 1103, baseType: !307, size: 128, offset: 11200)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1362, file: !1363, line: 1104, baseType: !2252, size: 64, offset: 11328)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1363, line: 46, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1362, file: !1363, line: 1105, baseType: !835, size: 192, offset: 11392)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1362, file: !1363, line: 1106, baseType: !7, size: 32, offset: 11584)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1362, file: !1363, line: 1109, baseType: !2257, size: 128, offset: 11648)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2258, size: 128, elements: !1742)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1363, line: 51, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1362, file: !1363, line: 1110, baseType: !835, size: 192, offset: 11776)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1362, file: !1363, line: 1111, baseType: !307, size: 128, offset: 11968)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1362, file: !1363, line: 1173, baseType: !2263, size: 64, offset: 12096)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2265, line: 62, size: 256, align: 256, elements: !2266)
!2265 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !{!2267, !2268, !2269, !2274}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2264, file: !2265, line: 75, baseType: !530, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2264, file: !2265, line: 90, baseType: !530, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2264, file: !2265, line: 124, baseType: !2270, size: 64, offset: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !2265, line: 109, size: 64, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2270, file: !2265, line: 110, baseType: !291, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2270, file: !2265, line: 112, baseType: !291, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2265, line: 144, baseType: !530, size: 32, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1362, file: !1363, line: 1174, baseType: !529, size: 32, offset: 12160)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1362, file: !1363, line: 1179, baseType: !297, size: 64, offset: 12224)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1362, file: !1363, line: 1182, baseType: !2278, size: 128, offset: 12288)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1302, line: 76, size: 128, elements: !2279)
!2279 = !{!2280, !2285, !2286}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2278, file: !1302, line: 85, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2282, line: 7, size: 64, elements: !2283)
!2282 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2281, file: !2282, line: 12, baseType: !1507, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2278, file: !1302, line: 88, baseType: !599, size: 8, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2278, file: !1302, line: 95, baseType: !599, size: 8, offset: 72)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !1363, line: 1184, baseType: !2288, size: 128, offset: 12416)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1362, file: !1363, line: 1184, size: 128, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2288, file: !1363, line: 1185, baseType: !318, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2288, file: !1363, line: 1186, baseType: !479, size: 128, align: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1362, file: !1363, line: 1190, baseType: !2293, size: 64, offset: 12544)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1363, line: 53, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1362, file: !1363, line: 1192, baseType: !2296, size: 128, offset: 12608)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1302, line: 64, size: 128, elements: !2297)
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2296, file: !1302, line: 65, baseType: !882, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2296, file: !1302, line: 67, baseType: !530, size: 32, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2296, file: !1302, line: 68, baseType: !530, size: 32, offset: 96)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1362, file: !1363, line: 1206, baseType: !115, size: 32, offset: 12736)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1362, file: !1363, line: 1207, baseType: !115, size: 32, offset: 12768)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1362, file: !1363, line: 1209, baseType: !297, size: 64, offset: 12800)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1362, file: !1363, line: 1219, baseType: !289, size: 64, offset: 12864)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1362, file: !1363, line: 1220, baseType: !289, size: 64, offset: 12928)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1362, file: !1363, line: 1317, baseType: !115, size: 32, offset: 12992)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1362, file: !1363, line: 1319, baseType: !1361, size: 64, offset: 13056)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1362, file: !1363, line: 1322, baseType: !2309, size: 64, offset: 13120)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2311, line: 56, size: 512, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319, !2321}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2310, file: !2311, line: 57, baseType: !2309, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2310, file: !2311, line: 58, baseType: !296, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2310, file: !2311, line: 59, baseType: !297, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2311, line: 60, baseType: !297, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2310, file: !2311, line: 61, baseType: !970, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2310, file: !2311, line: 62, baseType: !7, size: 32, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2310, file: !2311, line: 63, baseType: !2320, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !295, line: 153, baseType: !289)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2310, file: !2311, line: 64, baseType: !2322, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1362, file: !1363, line: 1326, baseType: !318, size: 32, offset: 13184)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1362, file: !1363, line: 1342, baseType: !296, size: 64, offset: 13248)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1362, file: !1363, line: 1343, baseType: !291, size: 64, offset: 13312)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1362, file: !1363, line: 1344, baseType: !289, size: 64, offset: 13376)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1362, file: !1363, line: 1345, baseType: !291, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1362, file: !1363, line: 1346, baseType: !291, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1362, file: !1363, line: 1347, baseType: !291, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1362, file: !1363, line: 1348, baseType: !479, size: 128, align: 64, offset: 13504)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1362, file: !1363, line: 1358, baseType: !2333, size: 34816, offset: 13824)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2334, line: 485, size: 34816, elements: !2335)
!2334 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !{!2336, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2365, !2366, !2367, !2368, !2369, !2370, !2373, !2374, !2375}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2333, file: !2334, line: 487, baseType: !2337, size: 192)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 192, elements: !390)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2339, line: 16, size: 64, elements: !2340)
!2339 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2338, file: !2339, line: 17, baseType: !1009, size: 16)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2338, file: !2339, line: 18, baseType: !1009, size: 16, offset: 16)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2338, file: !2339, line: 19, baseType: !1009, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2338, file: !2339, line: 19, baseType: !1009, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2338, file: !2339, line: 19, baseType: !1009, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2338, file: !2339, line: 19, baseType: !1009, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2338, file: !2339, line: 19, baseType: !1009, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2338, file: !2339, line: 20, baseType: !1009, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2338, file: !2339, line: 20, baseType: !1009, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2338, file: !2339, line: 20, baseType: !1009, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2338, file: !2339, line: 20, baseType: !1009, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2338, file: !2339, line: 20, baseType: !1009, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2338, file: !2339, line: 20, baseType: !1009, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2333, file: !2334, line: 491, baseType: !297, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2333, file: !2334, line: 495, baseType: !431, size: 16, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2333, file: !2334, line: 496, baseType: !431, size: 16, offset: 272)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2333, file: !2334, line: 497, baseType: !431, size: 16, offset: 288)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2333, file: !2334, line: 498, baseType: !431, size: 16, offset: 304)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2333, file: !2334, line: 502, baseType: !297, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2333, file: !2334, line: 503, baseType: !297, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2333, file: !2334, line: 514, baseType: !2362, size: 256, offset: 448)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 256, elements: !1306)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2334, line: 483, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2333, file: !2334, line: 516, baseType: !297, size: 64, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2333, file: !2334, line: 518, baseType: !297, size: 64, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2333, file: !2334, line: 520, baseType: !297, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2333, file: !2334, line: 521, baseType: !297, size: 64, offset: 896)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2333, file: !2334, line: 522, baseType: !297, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2333, file: !2334, line: 528, baseType: !2371, size: 64, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2334, line: 10, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2333, file: !2334, line: 535, baseType: !297, size: 64, offset: 1088)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2333, file: !2334, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2333, file: !2334, line: 540, baseType: !2376, size: 33280, offset: 1536)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2377, line: 317, size: 33280, elements: !2378)
!2377 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2376, file: !2377, line: 330, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2376, file: !2377, line: 337, baseType: !297, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2376, file: !2377, line: 348, baseType: !2382, size: 32768, offset: 512)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2377, line: 304, size: 32768, elements: !2383)
!2383 = !{!2384, !2399, !2438, !2488, !2501}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2382, file: !2377, line: 305, baseType: !2385, size: 896)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2377, line: 12, size: 896, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2398}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2385, file: !2377, line: 13, baseType: !529, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2385, file: !2377, line: 14, baseType: !529, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2385, file: !2377, line: 15, baseType: !529, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2385, file: !2377, line: 16, baseType: !529, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2385, file: !2377, line: 17, baseType: !529, size: 32, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2385, file: !2377, line: 18, baseType: !529, size: 32, offset: 160)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2385, file: !2377, line: 19, baseType: !529, size: 32, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2385, file: !2377, line: 22, baseType: !2395, size: 640, offset: 224)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 640, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: 20)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2385, file: !2377, line: 25, baseType: !529, size: 32, offset: 864)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2382, file: !2377, line: 306, baseType: !2400, size: 4096, align: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2377, line: 34, size: 4096, align: 128, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2421, !2422, !2423, !2427, !2429, !2433}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2400, file: !2377, line: 35, baseType: !1009, size: 16)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2400, file: !2377, line: 36, baseType: !1009, size: 16, offset: 16)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2400, file: !2377, line: 37, baseType: !1009, size: 16, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2400, file: !2377, line: 38, baseType: !1009, size: 16, offset: 48)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2377, line: 39, baseType: !2407, size: 128, offset: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2377, line: 39, size: 128, elements: !2408)
!2408 = !{!2409, !2414}
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2407, file: !2377, line: 40, baseType: !2410, size: 128)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2377, line: 40, size: 128, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2410, file: !2377, line: 41, baseType: !289, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2410, file: !2377, line: 42, baseType: !289, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !2407, file: !2377, line: 44, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2377, line: 44, size: 128, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2415, file: !2377, line: 45, baseType: !529, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2415, file: !2377, line: 46, baseType: !529, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2415, file: !2377, line: 47, baseType: !529, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2415, file: !2377, line: 48, baseType: !529, size: 32, offset: 96)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2400, file: !2377, line: 51, baseType: !529, size: 32, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2400, file: !2377, line: 52, baseType: !529, size: 32, offset: 224)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2400, file: !2377, line: 55, baseType: !2424, size: 1024, offset: 256)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 1024, elements: !2425)
!2425 = !{!2426}
!2426 = !DISubrange(count: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2400, file: !2377, line: 58, baseType: !2428, size: 2048, offset: 1280)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 2048, elements: !394)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2400, file: !2377, line: 60, baseType: !2430, size: 384, offset: 3328)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 384, elements: !2431)
!2431 = !{!2432}
!2432 = !DISubrange(count: 12)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2377, line: 62, baseType: !2434, size: 384, offset: 3712)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2377, line: 62, size: 384, elements: !2435)
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2434, file: !2377, line: 63, baseType: !2430, size: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2434, file: !2377, line: 64, baseType: !2430, size: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2382, file: !2377, line: 307, baseType: !2439, size: 1088)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2377, line: 79, size: 1088, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2487}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2439, file: !2377, line: 80, baseType: !529, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2439, file: !2377, line: 81, baseType: !529, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2439, file: !2377, line: 82, baseType: !529, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2439, file: !2377, line: 83, baseType: !529, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2439, file: !2377, line: 84, baseType: !529, size: 32, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2439, file: !2377, line: 85, baseType: !529, size: 32, offset: 160)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2439, file: !2377, line: 86, baseType: !529, size: 32, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2439, file: !2377, line: 88, baseType: !2395, size: 640, offset: 224)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2439, file: !2377, line: 89, baseType: !1492, size: 8, offset: 864)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2439, file: !2377, line: 90, baseType: !1492, size: 8, offset: 872)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2439, file: !2377, line: 91, baseType: !1492, size: 8, offset: 880)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2439, file: !2377, line: 92, baseType: !1492, size: 8, offset: 888)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2439, file: !2377, line: 93, baseType: !1492, size: 8, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2439, file: !2377, line: 94, baseType: !1492, size: 8, offset: 904)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2439, file: !2377, line: 95, baseType: !2456, size: 64, offset: 960)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2458, line: 11, size: 128, elements: !2459)
!2458 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2457, file: !2458, line: 12, baseType: !424, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2457, file: !2458, line: 13, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2464, line: 56, size: 1344, elements: !2465)
!2464 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2463, file: !2464, line: 61, baseType: !297, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2463, file: !2464, line: 62, baseType: !297, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2463, file: !2464, line: 63, baseType: !297, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2463, file: !2464, line: 64, baseType: !297, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2463, file: !2464, line: 65, baseType: !297, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2463, file: !2464, line: 66, baseType: !297, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2463, file: !2464, line: 68, baseType: !297, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2463, file: !2464, line: 69, baseType: !297, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2463, file: !2464, line: 70, baseType: !297, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2463, file: !2464, line: 71, baseType: !297, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2463, file: !2464, line: 72, baseType: !297, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2463, file: !2464, line: 73, baseType: !297, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2463, file: !2464, line: 74, baseType: !297, size: 64, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2463, file: !2464, line: 75, baseType: !297, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2463, file: !2464, line: 76, baseType: !297, size: 64, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2463, file: !2464, line: 81, baseType: !297, size: 64, offset: 960)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2463, file: !2464, line: 83, baseType: !297, size: 64, offset: 1024)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2463, file: !2464, line: 84, baseType: !297, size: 64, offset: 1088)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 85, baseType: !297, size: 64, offset: 1152)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2463, file: !2464, line: 86, baseType: !297, size: 64, offset: 1216)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2463, file: !2464, line: 87, baseType: !297, size: 64, offset: 1280)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2439, file: !2377, line: 96, baseType: !529, size: 32, offset: 1024)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2382, file: !2377, line: 308, baseType: !2489, size: 4608, align: 512)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2377, line: 289, size: 4608, align: 512, elements: !2490)
!2490 = !{!2491, !2492, !2499}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2489, file: !2377, line: 290, baseType: !2400, size: 4096, align: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2489, file: !2377, line: 291, baseType: !2493, size: 512, offset: 4096)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2377, line: 268, size: 512, elements: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2493, file: !2377, line: 269, baseType: !289, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2493, file: !2377, line: 270, baseType: !289, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2493, file: !2377, line: 271, baseType: !2498, size: 384, offset: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 384, elements: !1798)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2489, file: !2377, line: 292, baseType: !2500, offset: 4608)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, elements: !1894)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2382, file: !2377, line: 309, baseType: !2502, size: 32768)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 32768, elements: !2503)
!2503 = !{!2504}
!2504 = !DISubrange(count: 4096)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1358, file: !884, line: 378, baseType: !2506, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1354, file: !884, line: 384, baseType: !1675, size: 192, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1129, file: !884, line: 500, baseType: !348, offset: 6656)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1129, file: !884, line: 501, baseType: !2510, size: 64, offset: 6656)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !884, line: 387, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1129, file: !884, line: 516, baseType: !1653, size: 64, offset: 6720)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1129, file: !884, line: 519, baseType: !466, size: 64, offset: 6784)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1129, file: !884, line: 521, baseType: !2515, size: 64, offset: 6848)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !884, line: 521, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1129, file: !884, line: 545, baseType: !323, size: 32, offset: 6912)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1129, file: !884, line: 548, baseType: !599, size: 8, offset: 6944)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1129, file: !884, line: 550, baseType: !2520, offset: 6952)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2521, line: 142, elements: !362)
!2521 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1129, file: !884, line: 554, baseType: !2152, size: 256, offset: 6976)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1129, file: !884, line: 557, baseType: !529, size: 32, offset: 7232)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1126, file: !884, line: 565, baseType: !2525, offset: 7296)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !2526)
!2526 = !{!2527}
!2527 = !DISubrange(count: -1)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1122, file: !884, line: 151, baseType: !323, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1114, file: !884, line: 156, baseType: !348, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 159, baseType: !2531, size: 128)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 159, size: 128, elements: !2532)
!2532 = !{!2533, !2597}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2531, file: !884, line: 161, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2536)
!2536 = !{!2537, !2547, !2568, !2569, !2570, !2571, !2572, !2584, !2585, !2586}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2535, file: !31, line: 111, baseType: !2538, size: 384)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2539)
!2539 = !{!2540, !2542, !2543, !2544, !2545, !2546}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2538, file: !31, line: 20, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2538, file: !31, line: 21, baseType: !2541, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2538, file: !31, line: 22, baseType: !2541, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2538, file: !31, line: 23, baseType: !297, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2538, file: !31, line: 24, baseType: !297, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2538, file: !31, line: 25, baseType: !297, size: 64, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2535, file: !31, line: 112, baseType: !2548, size: 64, offset: 384)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2550, line: 105, size: 128, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2549, file: !2550, line: 110, baseType: !297, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2549, file: !2550, line: 118, baseType: !2554, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2550, line: 95, size: 448, elements: !2556)
!2556 = !{!2557, !2558, !2563, !2564, !2565, !2566, !2567}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2555, file: !2550, line: 96, baseType: !839, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2555, file: !2550, line: 97, baseType: !2559, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2550, line: 60, baseType: !2561)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2548}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2555, file: !2550, line: 98, baseType: !2559, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2555, file: !2550, line: 99, baseType: !599, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2555, file: !2550, line: 100, baseType: !599, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2555, file: !2550, line: 101, baseType: !479, size: 128, align: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2555, file: !2550, line: 102, baseType: !2548, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2535, file: !31, line: 113, baseType: !2549, size: 128, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2535, file: !31, line: 114, baseType: !1675, size: 192, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2535, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2535, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2535, file: !31, line: 117, baseType: !2573, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2576)
!2576 = !{!2577, !2578, !2582, !2583}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2575, file: !31, line: 73, baseType: !990, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2575, file: !31, line: 78, baseType: !2579, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2534}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2575, file: !31, line: 83, baseType: !2579, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2575, file: !31, line: 89, baseType: !1178, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2535, file: !31, line: 118, baseType: !296, size: 64, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2535, file: !31, line: 119, baseType: !115, size: 32, offset: 960)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2535, file: !31, line: 120, baseType: !2587, size: 128, offset: 1024)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2535, file: !31, line: 120, size: 128, elements: !2588)
!2588 = !{!2589, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2587, file: !31, line: 121, baseType: !2590, size: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2591, line: 6, size: 128, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2592 = !{!2593, !2594}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2590, file: !2591, line: 7, baseType: !289, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2590, file: !2591, line: 8, baseType: !289, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2587, file: !31, line: 122, baseType: !2596)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2590, elements: !1894)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2531, file: !884, line: 162, baseType: !296, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !888, file: !884, line: 176, baseType: !479, size: 128, align: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !884, line: 179, baseType: !2600, size: 32, offset: 384)
!2600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !884, line: 179, size: 32, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2600, file: !884, line: 184, baseType: !323, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2600, file: !884, line: 192, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2600, file: !884, line: 194, baseType: !7, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2600, file: !884, line: 195, baseType: !115, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !883, file: !884, line: 199, baseType: !323, size: 32, offset: 416)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !769, file: !44, line: 1964, baseType: !2608, size: 64, offset: 1344)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!424, !708, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2613, line: 12, size: 256, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !{!2615, !2616, !2617, !2618, !2619}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2612, file: !2613, line: 13, baseType: !294, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2612, file: !2613, line: 16, baseType: !115, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2612, file: !2613, line: 23, baseType: !297, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2612, file: !2613, line: 30, baseType: !297, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2612, file: !2613, line: 33, baseType: !2620, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !884, line: 27, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !769, file: !44, line: 1966, baseType: !2608, size: 64, offset: 1408)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !709, file: !44, line: 1424, baseType: !2624, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2627)
!2627 = !{!2628, !2674, !2678, !2682, !2683, !2684, !2685, !2686, !2691, !2696, !2700}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2626, file: !38, line: 323, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!115, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2659, !2660, !2661}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2633, file: !38, line: 295, baseType: !751, size: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2633, file: !38, line: 296, baseType: !307, size: 128, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2633, file: !38, line: 297, baseType: !307, size: 128, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2633, file: !38, line: 298, baseType: !307, size: 128, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2633, file: !38, line: 299, baseType: !835, size: 192, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2633, file: !38, line: 300, baseType: !348, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2633, file: !38, line: 301, baseType: !323, size: 32, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2633, file: !38, line: 302, baseType: !708, size: 64, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2633, file: !38, line: 303, baseType: !2644, size: 64, offset: 832)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2645)
!2645 = !{!2646, !2658}
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !38, line: 69, baseType: !2647, size: 32)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !38, line: 69, size: 32, elements: !2648)
!2648 = !{!2649, !2650, !2651}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2647, file: !38, line: 70, baseType: !544, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2647, file: !38, line: 71, baseType: !552, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2647, file: !38, line: 72, baseType: !2652, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2653, line: 24, baseType: !2654)
!2653 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2653, line: 22, size: 32, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2654, file: !2653, line: 23, baseType: !2657, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2653, line: 20, baseType: !550)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2644, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2633, file: !38, line: 304, baseType: !640, size: 64, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2633, file: !38, line: 305, baseType: !297, size: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2633, file: !38, line: 306, baseType: !2662, size: 576, offset: 1024)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2663)
!2663 = !{!2664, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2662, file: !38, line: 206, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !642)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2662, file: !38, line: 207, baseType: !2665, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2662, file: !38, line: 208, baseType: !2665, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2662, file: !38, line: 209, baseType: !2665, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2662, file: !38, line: 210, baseType: !2665, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2662, file: !38, line: 211, baseType: !2665, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2662, file: !38, line: 212, baseType: !2665, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2662, file: !38, line: 213, baseType: !648, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2662, file: !38, line: 214, baseType: !648, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2626, file: !38, line: 324, baseType: !2675, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!2632, !708, !115}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2626, file: !38, line: 325, baseType: !2679, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2632}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2626, file: !38, line: 326, baseType: !2629, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2626, file: !38, line: 327, baseType: !2629, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2626, file: !38, line: 328, baseType: !2629, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2626, file: !38, line: 329, baseType: !797, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2626, file: !38, line: 332, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2690, !538}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2626, file: !38, line: 333, baseType: !2692, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!115, !538, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2626, file: !38, line: 335, baseType: !2697, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!115, !538, !2690}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2626, file: !38, line: 337, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!115, !708, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !709, file: !44, line: 1425, baseType: !2706, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2709)
!2709 = !{!2710, !2714, !2715, !2719, !2720, !2721, !2736, !2759, !2763, !2764, !2787}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2708, file: !38, line: 429, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!115, !708, !115, !115, !658}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2708, file: !38, line: 430, baseType: !797, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2708, file: !38, line: 431, baseType: !2716, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!115, !708, !7}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2708, file: !38, line: 432, baseType: !2716, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2708, file: !38, line: 433, baseType: !797, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2708, file: !38, line: 434, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!115, !708, !115, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2726, file: !38, line: 416, baseType: !115, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2726, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2726, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2726, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2726, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2726, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2726, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2726, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2708, file: !38, line: 435, baseType: !2737, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!115, !708, !2644, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2741, file: !38, line: 344, baseType: !115, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2741, file: !38, line: 345, baseType: !289, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2741, file: !38, line: 346, baseType: !289, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2741, file: !38, line: 347, baseType: !289, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2741, file: !38, line: 348, baseType: !289, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2741, file: !38, line: 349, baseType: !289, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2741, file: !38, line: 350, baseType: !289, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2741, file: !38, line: 351, baseType: !845, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2741, file: !38, line: 353, baseType: !845, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2741, file: !38, line: 354, baseType: !115, size: 32, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2741, file: !38, line: 355, baseType: !115, size: 32, offset: 608)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2741, file: !38, line: 356, baseType: !289, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2741, file: !38, line: 357, baseType: !289, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2741, file: !38, line: 358, baseType: !289, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2741, file: !38, line: 359, baseType: !845, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2741, file: !38, line: 360, baseType: !115, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2708, file: !38, line: 436, baseType: !2760, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!115, !708, !2704, !2740}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2708, file: !38, line: 438, baseType: !2737, size: 64, offset: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2708, file: !38, line: 439, baseType: !2765, size: 64, offset: 576)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!115, !708, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2769, file: !38, line: 410, baseType: !7, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2769, file: !38, line: 411, baseType: !2773, size: 1344, offset: 64)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2774, size: 1344, elements: !390)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2786}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2774, file: !38, line: 396, baseType: !7, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2774, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2774, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2774, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2774, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2774, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2774, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2774, file: !38, line: 404, baseType: !293, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2774, file: !38, line: 405, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !295, line: 126, baseType: !289)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2774, file: !38, line: 406, baseType: !2785, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2708, file: !38, line: 440, baseType: !2716, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !709, file: !44, line: 1426, baseType: !2789, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !709, file: !44, line: 1427, baseType: !297, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !709, file: !44, line: 1428, baseType: !297, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !709, file: !44, line: 1429, baseType: !297, size: 64, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !709, file: !44, line: 1430, baseType: !496, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !709, file: !44, line: 1431, baseType: !924, size: 256, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !709, file: !44, line: 1432, baseType: !115, size: 32, offset: 1152)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !709, file: !44, line: 1433, baseType: !323, size: 32, offset: 1184)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !709, file: !44, line: 1437, baseType: !2800, size: 64, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !709, file: !44, line: 1449, baseType: !2805, size: 64, offset: 1280)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !512, line: 34, size: 64, elements: !2806)
!2806 = !{!2807}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2805, file: !512, line: 35, baseType: !515, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !709, file: !44, line: 1450, baseType: !307, size: 128, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !709, file: !44, line: 1451, baseType: !2810, size: 64, offset: 1472)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !709, file: !44, line: 1452, baseType: !2118, size: 64, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !709, file: !44, line: 1453, baseType: !2814, size: 64, offset: 1600)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !709, file: !44, line: 1454, baseType: !751, size: 128, offset: 1664)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !709, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !709, file: !44, line: 1456, baseType: !2819, size: 2432, offset: 1856)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2825, !2857}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2819, file: !38, line: 519, baseType: !7, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2819, file: !38, line: 520, baseType: !924, size: 256, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2819, file: !38, line: 521, baseType: !2824, size: 192, offset: 320)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 192, elements: !390)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2819, file: !38, line: 522, baseType: !2826, size: 1728, offset: 512)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 1728, elements: !390)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2828)
!2828 = !{!2829, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2827, file: !38, line: 223, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2832)
!2832 = !{!2833, !2834, !2847, !2848}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2831, file: !38, line: 444, baseType: !115, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2831, file: !38, line: 445, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2837, file: !38, line: 311, baseType: !797, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2837, file: !38, line: 312, baseType: !797, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2837, file: !38, line: 313, baseType: !797, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2837, file: !38, line: 314, baseType: !797, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2837, file: !38, line: 315, baseType: !2629, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2837, file: !38, line: 316, baseType: !2629, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2837, file: !38, line: 317, baseType: !2629, size: 64, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2837, file: !38, line: 318, baseType: !2701, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2831, file: !38, line: 446, baseType: !742, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2831, file: !38, line: 447, baseType: !2830, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2827, file: !38, line: 224, baseType: !115, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2827, file: !38, line: 226, baseType: !307, size: 128, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2827, file: !38, line: 227, baseType: !297, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2827, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2827, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2827, file: !38, line: 230, baseType: !2665, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2827, file: !38, line: 231, baseType: !2665, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2827, file: !38, line: 232, baseType: !296, size: 64, offset: 512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2819, file: !38, line: 523, baseType: !2858, size: 192, offset: 2240)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 192, elements: !390)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !709, file: !44, line: 1458, baseType: !2860, size: 2112, offset: 4288)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2861)
!2861 = !{!2862, !2863, !2864}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2860, file: !44, line: 1411, baseType: !115, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2860, file: !44, line: 1412, baseType: !1621, size: 128, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2860, file: !44, line: 1413, baseType: !2865, size: 1920, offset: 192)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2866, size: 1920, elements: !390)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2867, line: 12, size: 640, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2868 = !{!2869, !2877, !2879, !2884, !2885}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2866, file: !2867, line: 13, baseType: !2870, size: 320)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2871, line: 17, size: 320, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2870, file: !2871, line: 18, baseType: !115, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2870, file: !2871, line: 19, baseType: !115, size: 32, offset: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2870, file: !2871, line: 20, baseType: !1621, size: 128, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2870, file: !2871, line: 22, baseType: !479, size: 128, align: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2866, file: !2867, line: 14, baseType: !2878, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2866, file: !2867, line: 15, baseType: !2880, size: 64, offset: 384)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2881, line: 16, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2880, file: !2881, line: 17, baseType: !1361, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2866, file: !2867, line: 16, baseType: !1621, size: 128, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2866, file: !2867, line: 17, baseType: !323, size: 32, offset: 576)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !709, file: !44, line: 1465, baseType: !296, size: 64, offset: 6400)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !709, file: !44, line: 1468, baseType: !529, size: 32, offset: 6464)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !709, file: !44, line: 1470, baseType: !648, size: 64, offset: 6528)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !709, file: !44, line: 1471, baseType: !648, size: 64, offset: 6592)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !709, file: !44, line: 1473, baseType: !530, size: 32, offset: 6656)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !709, file: !44, line: 1474, baseType: !2892, size: 64, offset: 6720)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !709, file: !44, line: 1477, baseType: !2895, size: 256, offset: 6784)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !2425)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !709, file: !44, line: 1478, baseType: !2897, size: 128, offset: 7040)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2898, line: 18, baseType: !2899)
!2898 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2898, line: 16, size: 128, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2899, file: !2898, line: 17, baseType: !2902, size: 128)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 128, elements: !1906)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !709, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !709, file: !44, line: 1481, baseType: !2905, size: 32, offset: 7200)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !295, line: 150, baseType: !7)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !709, file: !44, line: 1487, baseType: !835, size: 192, offset: 7232)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !709, file: !44, line: 1493, baseType: !336, size: 64, offset: 7424)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !709, file: !44, line: 1495, baseType: !2909, size: 64, offset: 7488)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !494, line: 135, size: 1024, align: 512, elements: !2912)
!2912 = !{!2913, !2917, !2918, !2925, !2931, !2935, !2939, !2943, !2944, !2948, !2952, !2957, !2961}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2911, file: !494, line: 136, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!115, !496, !7}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2911, file: !494, line: 137, baseType: !2914, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2911, file: !494, line: 138, baseType: !2919, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!115, !2922, !2924}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2911, file: !494, line: 139, baseType: !2926, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!115, !2922, !7, !336, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2911, file: !494, line: 141, baseType: !2932, size: 64, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!115, !2922}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2911, file: !494, line: 142, baseType: !2936, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!115, !496}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2911, file: !494, line: 143, baseType: !2940, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !496}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2911, file: !494, line: 144, baseType: !2940, size: 64, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2911, file: !494, line: 145, baseType: !2945, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !496, !538}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2911, file: !494, line: 146, baseType: !2949, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!389, !496, !389, !115}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2911, file: !494, line: 147, baseType: !2953, size: 64, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!492, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2911, file: !494, line: 148, baseType: !2958, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!115, !658, !599}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2911, file: !494, line: 149, baseType: !2962, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!496, !496, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !709, file: !44, line: 1500, baseType: !115, size: 32, offset: 7552)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !709, file: !44, line: 1502, baseType: !2969, size: 448, offset: 7616)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2613, line: 60, size: 448, elements: !2970)
!2970 = !{!2971, !2976, !2977, !2978, !2979, !2980, !2981}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2969, file: !2613, line: 61, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!297, !2975, !2611}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2969, file: !2613, line: 63, baseType: !2972, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2969, file: !2613, line: 66, baseType: !424, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2969, file: !2613, line: 67, baseType: !115, size: 32, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2969, file: !2613, line: 68, baseType: !7, size: 32, offset: 224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2969, file: !2613, line: 71, baseType: !307, size: 128, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2969, file: !2613, line: 77, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !709, file: !44, line: 1505, baseType: !839, size: 64, offset: 8064)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !709, file: !44, line: 1508, baseType: !839, size: 64, offset: 8128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !709, file: !44, line: 1511, baseType: !115, size: 32, offset: 8192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !709, file: !44, line: 1514, baseType: !1059, size: 32, offset: 8224)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !709, file: !44, line: 1517, baseType: !2988, size: 64, offset: 8256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2153, line: 18, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !709, file: !44, line: 1518, baseType: !747, size: 64, offset: 8320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !709, file: !44, line: 1525, baseType: !1653, size: 64, offset: 8384)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !709, file: !44, line: 1532, baseType: !2993, size: 64, offset: 8448)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2994, line: 52, size: 64, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2993, file: !2994, line: 53, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2994, line: 40, size: 256, elements: !2999)
!2999 = !{!3000, !3001, !3006}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !2994, line: 42, baseType: !348)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2998, file: !2994, line: 44, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2994, line: 28, size: 192, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3002, file: !2994, line: 29, baseType: !307, size: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3002, file: !2994, line: 31, baseType: !424, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2998, file: !2994, line: 49, baseType: !424, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !709, file: !44, line: 1533, baseType: !2993, size: 64, offset: 8512)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !44, line: 1534, baseType: !479, size: 128, align: 64, offset: 8576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !709, file: !44, line: 1535, baseType: !2152, size: 256, offset: 8704)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !709, file: !44, line: 1537, baseType: !835, size: 192, offset: 8960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !709, file: !44, line: 1542, baseType: !115, size: 32, offset: 9152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !709, file: !44, line: 1545, baseType: !348, offset: 9184)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !709, file: !44, line: 1546, baseType: !307, size: 128, offset: 9216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !709, file: !44, line: 1548, baseType: !348, offset: 9344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !709, file: !44, line: 1549, baseType: !307, size: 128, offset: 9344)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !539, file: !44, line: 624, baseType: !895, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !539, file: !44, line: 631, baseType: !297, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !44, line: 639, baseType: !3019, size: 32, offset: 384)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !44, line: 639, size: 32, elements: !3020)
!3020 = !{!3021, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3019, file: !44, line: 640, baseType: !3022, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3019, file: !44, line: 641, baseType: !7, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !539, file: !44, line: 643, baseType: !622, size: 32, offset: 416)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !539, file: !44, line: 644, baseType: !640, size: 64, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !539, file: !44, line: 645, baseType: !644, size: 128, offset: 512)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !539, file: !44, line: 646, baseType: !644, size: 128, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !539, file: !44, line: 647, baseType: !644, size: 128, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !539, file: !44, line: 648, baseType: !348, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !539, file: !44, line: 649, baseType: !431, size: 16, offset: 896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !539, file: !44, line: 650, baseType: !1492, size: 8, offset: 912)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !539, file: !44, line: 651, baseType: !1492, size: 8, offset: 920)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !539, file: !44, line: 652, baseType: !2785, size: 64, offset: 960)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !539, file: !44, line: 659, baseType: !297, size: 64, offset: 1024)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !539, file: !44, line: 660, baseType: !924, size: 256, offset: 1088)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !539, file: !44, line: 662, baseType: !297, size: 64, offset: 1344)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !539, file: !44, line: 663, baseType: !297, size: 64, offset: 1408)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !539, file: !44, line: 665, baseType: !751, size: 128, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !539, file: !44, line: 666, baseType: !307, size: 128, offset: 1600)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !539, file: !44, line: 675, baseType: !307, size: 128, offset: 1728)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !539, file: !44, line: 676, baseType: !307, size: 128, offset: 1856)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !539, file: !44, line: 677, baseType: !307, size: 128, offset: 1984)
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !44, line: 678, baseType: !3044, size: 128, offset: 2112)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !44, line: 678, size: 128, elements: !3045)
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3044, file: !44, line: 679, baseType: !747, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3044, file: !44, line: 680, baseType: !479, size: 128, align: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !539, file: !44, line: 682, baseType: !841, size: 64, offset: 2240)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !539, file: !44, line: 683, baseType: !841, size: 64, offset: 2304)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !539, file: !44, line: 684, baseType: !323, size: 32, offset: 2368)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !539, file: !44, line: 685, baseType: !323, size: 32, offset: 2400)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !539, file: !44, line: 686, baseType: !323, size: 32, offset: 2432)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !539, file: !44, line: 688, baseType: !323, size: 32, offset: 2464)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !44, line: 690, baseType: !3055, size: 64, offset: 2496)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !44, line: 690, size: 64, elements: !3056)
!3056 = !{!3057, !3279}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3055, file: !44, line: 691, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3061)
!3061 = !{!3062, !3063, !3067, !3071, !3075, !3076, !3077, !3081, !3094, !3095, !3103, !3107, !3108, !3112, !3113, !3117, !3122, !3123, !3127, !3131, !3239, !3243, !3244, !3248, !3249, !3253, !3257, !3262, !3266, !3270, !3274, !3278}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3060, file: !44, line: 1823, baseType: !742, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3060, file: !44, line: 1824, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!640, !466, !640, !115}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3060, file: !44, line: 1825, baseType: !3068, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!420, !466, !389, !436, !857}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3060, file: !44, line: 1826, baseType: !3072, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!420, !466, !336, !436, !857}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3060, file: !44, line: 1827, baseType: !994, size: 64, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3060, file: !44, line: 1828, baseType: !994, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3060, file: !44, line: 1829, baseType: !3078, size: 64, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!115, !997, !599}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3060, file: !44, line: 1830, baseType: !3082, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!115, !466, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3087)
!3087 = !{!3088, !3093}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3086, file: !44, line: 1777, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3090)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!115, !3085, !336, !115, !640, !289, !7}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3086, file: !44, line: 1778, baseType: !640, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3060, file: !44, line: 1831, baseType: !3082, size: 64, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3060, file: !44, line: 1832, baseType: !3096, size: 64, offset: 576)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!3099, !466, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3100, line: 52, baseType: !7)
!3100 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !728, line: 27, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3060, file: !44, line: 1833, baseType: !3104, size: 64, offset: 640)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!424, !466, !7, !297}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3060, file: !44, line: 1834, baseType: !3104, size: 64, offset: 704)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3060, file: !44, line: 1835, baseType: !3109, size: 64, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!115, !466, !1132}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3060, file: !44, line: 1836, baseType: !297, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3060, file: !44, line: 1837, baseType: !3114, size: 64, offset: 896)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!115, !538, !466}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3060, file: !44, line: 1838, baseType: !3118, size: 64, offset: 960)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!115, !466, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !296)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3060, file: !44, line: 1839, baseType: !3114, size: 64, offset: 1024)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3060, file: !44, line: 1840, baseType: !3124, size: 64, offset: 1088)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!115, !466, !640, !640, !115}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3060, file: !44, line: 1841, baseType: !3128, size: 64, offset: 1152)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!115, !115, !466, !115}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3060, file: !44, line: 1842, baseType: !3132, size: 64, offset: 1216)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!115, !466, !115, !3135}
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3169, !3170, !3171, !3184, !3215}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3136, file: !44, line: 1063, baseType: !3135, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3136, file: !44, line: 1064, baseType: !307, size: 128, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3136, file: !44, line: 1065, baseType: !751, size: 128, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3136, file: !44, line: 1066, baseType: !307, size: 128, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3136, file: !44, line: 1069, baseType: !307, size: 128, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3136, file: !44, line: 1072, baseType: !3121, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3136, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3136, file: !44, line: 1074, baseType: !536, size: 8, offset: 672)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3136, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3136, file: !44, line: 1076, baseType: !115, size: 32, offset: 736)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3136, file: !44, line: 1077, baseType: !1621, size: 128, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3136, file: !44, line: 1078, baseType: !466, size: 64, offset: 896)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3136, file: !44, line: 1079, baseType: !640, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3136, file: !44, line: 1080, baseType: !640, size: 64, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3136, file: !44, line: 1082, baseType: !3153, size: 64, offset: 1088)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3155)
!3155 = !{!3156, !3164, !3165, !3166, !3167, !3168}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3154, file: !44, line: 1315, baseType: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3158, line: 20, baseType: !3159)
!3158 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3158, line: 11, elements: !3160)
!3160 = !{!3161}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3159, file: !3158, line: 12, baseType: !3162)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !360, line: 33, baseType: !3163)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 31, elements: !362)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3154, file: !44, line: 1316, baseType: !115, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3154, file: !44, line: 1317, baseType: !115, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3154, file: !44, line: 1318, baseType: !3153, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3154, file: !44, line: 1319, baseType: !466, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3154, file: !44, line: 1320, baseType: !479, size: 128, align: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3136, file: !44, line: 1084, baseType: !297, size: 64, offset: 1152)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3136, file: !44, line: 1085, baseType: !297, size: 64, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3136, file: !44, line: 1087, baseType: !3172, size: 64, offset: 1280)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3175)
!3175 = !{!3176, !3180}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3174, file: !44, line: 1012, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !3135, !3135}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3174, file: !44, line: 1013, baseType: !3181, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !3135}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3136, file: !44, line: 1088, baseType: !3185, size: 64, offset: 1344)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3188)
!3188 = !{!3189, !3193, !3197, !3198, !3202, !3206, !3210, !3214}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3187, file: !44, line: 1017, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!3121, !3121}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3187, file: !44, line: 1018, baseType: !3194, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3121}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3187, file: !44, line: 1019, baseType: !3181, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3187, file: !44, line: 1020, baseType: !3199, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!115, !3135, !115}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3187, file: !44, line: 1021, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!599, !3135}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3187, file: !44, line: 1022, baseType: !3207, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!115, !3135, !115, !310}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3187, file: !44, line: 1023, baseType: !3211, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !3135, !971}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3187, file: !44, line: 1024, baseType: !3203, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3136, file: !44, line: 1097, baseType: !3216, size: 256, offset: 1408)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !44, line: 1089, size: 256, elements: !3217)
!3217 = !{!3218, !3227, !3233}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3216, file: !44, line: 1090, baseType: !3219, size: 256)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3220, line: 10, size: 256, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3221 = !{!3222, !3223, !3226}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3219, file: !3220, line: 11, baseType: !529, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3219, file: !3220, line: 12, baseType: !3224, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3220, line: 5, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3219, file: !3220, line: 13, baseType: !307, size: 128, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3216, file: !44, line: 1091, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3220, line: 17, size: 64, elements: !3229)
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3228, file: !3220, line: 18, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3220, line: 16, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3216, file: !44, line: 1096, baseType: !3234, size: 192)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !44, line: 1092, size: 192, elements: !3235)
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3234, file: !44, line: 1093, baseType: !307, size: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3234, file: !44, line: 1094, baseType: !115, size: 32, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3234, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3060, file: !44, line: 1843, baseType: !3240, size: 64, offset: 1280)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!420, !466, !882, !115, !436, !857, !115}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3060, file: !44, line: 1844, baseType: !1252, size: 64, offset: 1344)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3060, file: !44, line: 1845, baseType: !3245, size: 64, offset: 1408)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!115, !115}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3060, file: !44, line: 1846, baseType: !3132, size: 64, offset: 1472)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3060, file: !44, line: 1847, baseType: !3250, size: 64, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!420, !2293, !466, !857, !436, !7}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3060, file: !44, line: 1848, baseType: !3254, size: 64, offset: 1600)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!420, !466, !857, !2293, !436, !7}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3060, file: !44, line: 1849, baseType: !3258, size: 64, offset: 1664)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!115, !466, !424, !3261, !971}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3060, file: !44, line: 1850, baseType: !3263, size: 64, offset: 1728)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!424, !466, !115, !640, !640}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3060, file: !44, line: 1852, baseType: !3267, size: 64, offset: 1792)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{null, !823, !466}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3060, file: !44, line: 1856, baseType: !3271, size: 64, offset: 1856)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!420, !466, !640, !466, !640, !436, !7}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3060, file: !44, line: 1858, baseType: !3275, size: 64, offset: 1920)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!640, !466, !640, !466, !640, !640, !7}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3060, file: !44, line: 1861, baseType: !3124, size: 64, offset: 1984)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3055, file: !44, line: 692, baseType: !776, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !539, file: !44, line: 694, baseType: !3281, size: 64, offset: 2560)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3282, file: !44, line: 1101, baseType: !348)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3282, file: !44, line: 1102, baseType: !307, size: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3282, file: !44, line: 1103, baseType: !307, size: 128, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3282, file: !44, line: 1104, baseType: !307, size: 128, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !539, file: !44, line: 695, baseType: !896, size: 1216, align: 64, offset: 2624)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !539, file: !44, line: 696, baseType: !307, size: 128, offset: 3840)
!3290 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !44, line: 697, baseType: !3291, size: 64, offset: 3968)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !44, line: 697, size: 64, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3298, !3299}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3291, file: !44, line: 698, baseType: !2293, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3291, file: !44, line: 699, baseType: !2810, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3291, file: !44, line: 700, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3291, file: !44, line: 701, baseType: !389, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3291, file: !44, line: 702, baseType: !7, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !539, file: !44, line: 705, baseType: !530, size: 32, offset: 4032)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !539, file: !44, line: 708, baseType: !530, size: 32, offset: 4064)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !539, file: !44, line: 709, baseType: !2892, size: 64, offset: 4096)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !539, file: !44, line: 720, baseType: !296, size: 64, offset: 4160)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !497, file: !494, line: 98, baseType: !3305, size: 256, offset: 448)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 256, elements: !2425)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !497, file: !494, line: 101, baseType: !3307, size: 32, offset: 704)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3308, line: 25, size: 32, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3309 = !{!3310}
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3308, line: 26, baseType: !3311, size: 32)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3308, line: 26, size: 32, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3311, file: !3308, line: 30, baseType: !3314, size: 32)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3308, line: 30, size: 32, elements: !3315)
!3315 = !{!3316, !3317}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3314, file: !3308, line: 31, baseType: !348)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3314, file: !3308, line: 32, baseType: !115, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !497, file: !494, line: 102, baseType: !2909, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !497, file: !494, line: 103, baseType: !708, size: 64, offset: 832)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !497, file: !494, line: 104, baseType: !297, size: 64, offset: 896)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !497, file: !494, line: 105, baseType: !296, size: 64, offset: 960)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !494, line: 107, baseType: !3323, size: 128, offset: 1024)
!3323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !494, line: 107, size: 128, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3323, file: !494, line: 108, baseType: !307, size: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3323, file: !494, line: 109, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !497, file: !494, line: 111, baseType: !307, size: 128, offset: 1152)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !497, file: !494, line: 112, baseType: !307, size: 128, offset: 1280)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !497, file: !494, line: 120, baseType: !3331, size: 128, offset: 1408)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !494, line: 116, size: 128, elements: !3332)
!3332 = !{!3333, !3334, !3335}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3331, file: !494, line: 117, baseType: !751, size: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3331, file: !494, line: 118, baseType: !511, size: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3331, file: !494, line: 119, baseType: !479, size: 128, align: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !467, file: !44, line: 922, baseType: !538, size: 64, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !467, file: !44, line: 923, baseType: !3058, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !467, file: !44, line: 929, baseType: !348, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !467, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !467, file: !44, line: 931, baseType: !839, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !467, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !467, file: !44, line: 933, baseType: !2905, size: 32, offset: 544)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !467, file: !44, line: 934, baseType: !835, size: 192, offset: 576)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !467, file: !44, line: 935, baseType: !640, size: 64, offset: 768)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !467, file: !44, line: 936, baseType: !3346, size: 192, offset: 832)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3346, file: !44, line: 886, baseType: !3157)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3346, file: !44, line: 887, baseType: !1611, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3346, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3346, file: !44, line: 889, baseType: !544, size: 32, offset: 96)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3346, file: !44, line: 889, baseType: !544, size: 32, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3346, file: !44, line: 890, baseType: !115, size: 32, offset: 160)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !467, file: !44, line: 937, baseType: !1720, size: 64, offset: 1024)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !467, file: !44, line: 938, baseType: !3356, size: 256, offset: 1088)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3356, file: !44, line: 897, baseType: !297, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3356, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3356, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3356, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3356, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3356, file: !44, line: 904, baseType: !640, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !467, file: !44, line: 940, baseType: !289, size: 64, offset: 1344)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !467, file: !44, line: 945, baseType: !296, size: 64, offset: 1408)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !467, file: !44, line: 949, baseType: !307, size: 128, offset: 1472)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !467, file: !44, line: 950, baseType: !307, size: 128, offset: 1600)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !467, file: !44, line: 952, baseType: !895, size: 64, offset: 1728)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !467, file: !44, line: 953, baseType: !1059, size: 32, offset: 1792)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !467, file: !44, line: 954, baseType: !1059, size: 32, offset: 1824)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !457, file: !414, line: 174, baseType: !463, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !457, file: !414, line: 176, baseType: !3373, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!115, !466, !341, !456, !1132}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !445, file: !414, line: 90, baseType: !440, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !445, file: !414, line: 91, baseType: !3378, size: 64, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !404, file: !333, line: 143, baseType: !3380, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!3383, !341}
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3385)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3386)
!3386 = !{!3387, !3388, !3392, !3396, !3402, !3406}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3385, file: !61, line: 40, baseType: !60, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3385, file: !61, line: 41, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!599}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3385, file: !61, line: 42, baseType: !3393, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!296}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3385, file: !61, line: 43, baseType: !3397, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!2322, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3385, file: !61, line: 44, baseType: !3403, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!2322}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3385, file: !61, line: 45, baseType: !577, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !404, file: !333, line: 144, baseType: !3408, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!2322, !341}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !404, file: !333, line: 145, baseType: !3412, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !341, !3415, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !332, file: !333, line: 70, baseType: !3418, size: 64, offset: 384)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !728, line: 123, size: 1024, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3531, !3532, !3533, !3534, !3535}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3419, file: !728, line: 124, baseType: !323, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3419, file: !728, line: 125, baseType: !323, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3419, file: !728, line: 135, baseType: !3418, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3419, file: !728, line: 136, baseType: !336, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3419, file: !728, line: 138, baseType: !917, size: 192, align: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3419, file: !728, line: 140, baseType: !2322, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3419, file: !728, line: 141, baseType: !7, size: 32, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3419, file: !728, line: 142, baseType: !3429, size: 256, offset: 512)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3419, file: !728, line: 142, size: 256, elements: !3430)
!3430 = !{!3431, !3471, !3475}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3429, file: !728, line: 143, baseType: !3432, size: 192)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !728, line: 91, size: 192, elements: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3432, file: !728, line: 92, baseType: !297, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3432, file: !728, line: 94, baseType: !913, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3432, file: !728, line: 100, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !728, line: 180, size: 704, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3469, !3470}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3438, file: !728, line: 182, baseType: !3418, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3438, file: !728, line: 183, baseType: !7, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3438, file: !728, line: 186, baseType: !1640, size: 192, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3438, file: !728, line: 187, baseType: !529, size: 32, offset: 320)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3438, file: !728, line: 188, baseType: !529, size: 32, offset: 352)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3438, file: !728, line: 189, baseType: !3446, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !728, line: 168, size: 320, elements: !3448)
!3448 = !{!3449, !3453, !3457, !3461, !3465}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3447, file: !728, line: 169, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!115, !823, !3437}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3447, file: !728, line: 171, baseType: !3454, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!115, !3418, !336, !430}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3447, file: !728, line: 173, baseType: !3458, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!115, !3418}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3447, file: !728, line: 174, baseType: !3462, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!115, !3418, !3418, !336}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3447, file: !728, line: 176, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!115, !823, !3418, !3437}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3438, file: !728, line: 192, baseType: !307, size: 128, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3438, file: !728, line: 194, baseType: !1621, size: 128, offset: 576)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3429, file: !728, line: 144, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !728, line: 103, size: 64, elements: !3473)
!3473 = !{!3474}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3472, file: !728, line: 104, baseType: !3418, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3429, file: !728, line: 145, baseType: !3476, size: 256)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !728, line: 107, size: 256, elements: !3477)
!3477 = !{!3478, !3526, !3529, !3530}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3476, file: !728, line: 108, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !728, line: 217, size: 768, elements: !3482)
!3482 = !{!3483, !3503, !3507, !3508, !3509, !3510, !3511, !3515, !3516, !3517, !3518, !3522}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3481, file: !728, line: 222, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!115, !3487}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !728, line: 197, size: 1088, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3488, file: !728, line: 199, baseType: !3418, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3488, file: !728, line: 200, baseType: !466, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3488, file: !728, line: 201, baseType: !823, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3488, file: !728, line: 202, baseType: !296, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3488, file: !728, line: 205, baseType: !835, size: 192, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3488, file: !728, line: 206, baseType: !835, size: 192, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3488, file: !728, line: 207, baseType: !115, size: 32, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3488, file: !728, line: 208, baseType: !307, size: 128, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3488, file: !728, line: 209, baseType: !389, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3488, file: !728, line: 211, baseType: !436, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3488, file: !728, line: 212, baseType: !599, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3488, file: !728, line: 213, baseType: !599, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3488, file: !728, line: 214, baseType: !1160, size: 64, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3481, file: !728, line: 223, baseType: !3504, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{null, !3487}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3481, file: !728, line: 236, baseType: !867, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3481, file: !728, line: 238, baseType: !854, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3481, file: !728, line: 239, baseType: !863, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3481, file: !728, line: 240, baseType: !859, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3481, file: !728, line: 242, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!420, !3487, !389, !436, !640}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3481, file: !728, line: 252, baseType: !436, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3481, file: !728, line: 259, baseType: !599, size: 8, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3481, file: !728, line: 260, baseType: !3512, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3481, file: !728, line: 263, baseType: !3519, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!3099, !3487, !3101}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3481, file: !728, line: 266, baseType: !3523, size: 64, offset: 704)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!115, !3487, !1132}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3476, file: !728, line: 109, baseType: !3527, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !728, line: 31, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3476, file: !728, line: 110, baseType: !640, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3476, file: !728, line: 111, baseType: !3418, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3419, file: !728, line: 148, baseType: !296, size: 64, offset: 768)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3419, file: !728, line: 154, baseType: !289, size: 64, offset: 832)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3419, file: !728, line: 156, baseType: !431, size: 16, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3419, file: !728, line: 157, baseType: !430, size: 16, offset: 912)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3419, file: !728, line: 158, baseType: !3536, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !728, line: 32, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !332, file: !333, line: 71, baseType: !314, size: 32, offset: 448)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !332, file: !333, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !332, file: !333, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !332, file: !333, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !332, file: !333, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !332, file: !333, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !329, file: !73, line: 463, baseType: !328, size: 64, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !329, file: !73, line: 465, baseType: !3546, size: 64, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !329, file: !73, line: 467, baseType: !336, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !329, file: !73, line: 468, baseType: !3550, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3560, !3565, !3569}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3552, file: !73, line: 88, baseType: !336, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3552, file: !73, line: 89, baseType: !442, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3552, file: !73, line: 90, baseType: !3557, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!115, !328, !384}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3552, file: !73, line: 91, baseType: !3561, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!389, !328, !3564, !3415, !3416}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3552, file: !73, line: 93, baseType: !3566, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null, !328}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3552, file: !73, line: 95, baseType: !3570, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3573)
!3573 = !{!3574, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3572, file: !80, line: 279, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!115, !328}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3572, file: !80, line: 280, baseType: !3566, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3572, file: !80, line: 281, baseType: !3575, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3572, file: !80, line: 282, baseType: !3575, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3572, file: !80, line: 283, baseType: !3575, size: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3572, file: !80, line: 284, baseType: !3575, size: 64, offset: 320)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3572, file: !80, line: 285, baseType: !3575, size: 64, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3572, file: !80, line: 286, baseType: !3575, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3572, file: !80, line: 287, baseType: !3575, size: 64, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3572, file: !80, line: 288, baseType: !3575, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3572, file: !80, line: 289, baseType: !3575, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3572, file: !80, line: 290, baseType: !3575, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3572, file: !80, line: 291, baseType: !3575, size: 64, offset: 768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3572, file: !80, line: 292, baseType: !3575, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3572, file: !80, line: 293, baseType: !3575, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3572, file: !80, line: 294, baseType: !3575, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3572, file: !80, line: 295, baseType: !3575, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3572, file: !80, line: 296, baseType: !3575, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3572, file: !80, line: 297, baseType: !3575, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3572, file: !80, line: 298, baseType: !3575, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3572, file: !80, line: 299, baseType: !3575, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3572, file: !80, line: 300, baseType: !3575, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3572, file: !80, line: 301, baseType: !3575, size: 64, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !329, file: !73, line: 470, baseType: !3601, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3603, line: 82, size: 1408, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3686, !3689, !3690}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3602, file: !3603, line: 83, baseType: !336, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3602, file: !3603, line: 84, baseType: !336, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3602, file: !3603, line: 85, baseType: !328, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3602, file: !3603, line: 86, baseType: !442, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3602, file: !3603, line: 87, baseType: !442, size: 64, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3602, file: !3603, line: 88, baseType: !442, size: 64, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3602, file: !3603, line: 90, baseType: !3612, size: 64, offset: 384)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!115, !328, !3615}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3637, !3650, !3651, !3652, !3653, !3654, !3662, !3663, !3664, !3665, !3666, !3667}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3616, file: !67, line: 96, baseType: !336, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3616, file: !67, line: 97, baseType: !3601, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3616, file: !67, line: 99, baseType: !742, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3616, file: !67, line: 100, baseType: !336, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3616, file: !67, line: 102, baseType: !599, size: 8, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3616, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3616, file: !67, line: 105, baseType: !3625, size: 64, offset: 320)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3628, line: 262, size: 1600, elements: !3629)
!3628 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3629 = !{!3630, !3631, !3632, !3636}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3627, file: !3628, line: 263, baseType: !2895, size: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3627, file: !3628, line: 264, baseType: !2895, size: 256, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3627, file: !3628, line: 265, baseType: !3633, size: 1024, offset: 512)
!3633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1024, elements: !3634)
!3634 = !{!3635}
!3635 = !DISubrange(count: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3627, file: !3628, line: 266, baseType: !2322, size: 64, offset: 1536)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3616, file: !67, line: 106, baseType: !3638, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3628, line: 210, size: 256, elements: !3641)
!3641 = !{!3642, !3646, !3648, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3640, file: !3628, line: 211, baseType: !3643, size: 72)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 72, elements: !3644)
!3644 = !{!3645}
!3645 = !DISubrange(count: 9)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3640, file: !3628, line: 212, baseType: !3647, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3628, line: 14, baseType: !297)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3640, file: !3628, line: 213, baseType: !530, size: 32, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3640, file: !3628, line: 214, baseType: !530, size: 32, offset: 224)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3616, file: !67, line: 108, baseType: !3575, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3616, file: !67, line: 109, baseType: !3566, size: 64, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3616, file: !67, line: 110, baseType: !3575, size: 64, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3616, file: !67, line: 111, baseType: !3566, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3616, file: !67, line: 112, baseType: !3655, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!115, !328, !3658}
!3658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3659)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3660)
!3660 = !{!3661}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3659, file: !80, line: 51, baseType: !115, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3616, file: !67, line: 113, baseType: !3575, size: 64, offset: 768)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3616, file: !67, line: 114, baseType: !442, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3616, file: !67, line: 115, baseType: !442, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3616, file: !67, line: 117, baseType: !3570, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3616, file: !67, line: 118, baseType: !3566, size: 64, offset: 1024)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3616, file: !67, line: 120, baseType: !3668, size: 64, offset: 1088)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3602, file: !3603, line: 91, baseType: !3557, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3602, file: !3603, line: 92, baseType: !3575, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3602, file: !3603, line: 93, baseType: !3566, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3602, file: !3603, line: 94, baseType: !3575, size: 64, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3602, file: !3603, line: 95, baseType: !3566, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3602, file: !3603, line: 97, baseType: !3575, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3602, file: !3603, line: 98, baseType: !3575, size: 64, offset: 832)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3602, file: !3603, line: 100, baseType: !3655, size: 64, offset: 896)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3602, file: !3603, line: 101, baseType: !3575, size: 64, offset: 960)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3602, file: !3603, line: 103, baseType: !3575, size: 64, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3602, file: !3603, line: 105, baseType: !3575, size: 64, offset: 1088)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3602, file: !3603, line: 107, baseType: !3570, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3602, file: !3603, line: 109, baseType: !3683, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3603, line: 109, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3602, file: !3603, line: 111, baseType: !3687, size: 64, offset: 1280)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3603, line: 111, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3602, file: !3603, line: 112, baseType: !757, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3602, file: !3603, line: 114, baseType: !599, size: 8, offset: 1344)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !329, file: !73, line: 471, baseType: !3615, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !329, file: !73, line: 473, baseType: !296, size: 64, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !329, file: !73, line: 475, baseType: !296, size: 64, offset: 960)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !329, file: !73, line: 480, baseType: !835, size: 192, offset: 1024)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !329, file: !73, line: 484, baseType: !3696, size: 576, offset: 1216)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3701, !3702, !3703}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3696, file: !73, line: 362, baseType: !307, size: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3696, file: !73, line: 363, baseType: !307, size: 128, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3696, file: !73, line: 364, baseType: !307, size: 128, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3696, file: !73, line: 365, baseType: !307, size: 128, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3696, file: !73, line: 366, baseType: !599, size: 8, offset: 512)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3696, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !329, file: !73, line: 485, baseType: !3705, size: 2304, offset: 1792)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3802, !3806}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3705, file: !80, line: 566, baseType: !3658, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3705, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3705, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3705, file: !80, line: 569, baseType: !599, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3705, file: !80, line: 570, baseType: !599, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3705, file: !80, line: 571, baseType: !599, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3705, file: !80, line: 572, baseType: !599, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3705, file: !80, line: 573, baseType: !599, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3705, file: !80, line: 574, baseType: !599, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3705, file: !80, line: 575, baseType: !599, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3705, file: !80, line: 576, baseType: !599, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3705, file: !80, line: 577, baseType: !529, size: 32, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3705, file: !80, line: 578, baseType: !348, offset: 96)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3705, file: !80, line: 580, baseType: !307, size: 128, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3705, file: !80, line: 581, baseType: !1675, size: 192, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3705, file: !80, line: 582, baseType: !3723, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3725, line: 43, size: 1472, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3734, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3724, file: !3725, line: 44, baseType: !336, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3724, file: !3725, line: 45, baseType: !115, size: 32, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3724, file: !3725, line: 46, baseType: !307, size: 128, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3724, file: !3725, line: 47, baseType: !348, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3724, file: !3725, line: 48, baseType: !3732, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3724, file: !3725, line: 49, baseType: !3735, size: 320, offset: 320)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3736, line: 11, size: 320, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3737 = !{!3738, !3739, !3740, !3745}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3735, file: !3736, line: 16, baseType: !751, size: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3735, file: !3736, line: 17, baseType: !297, size: 64, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3735, file: !3736, line: 18, baseType: !3741, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{null, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3735, file: !3736, line: 19, baseType: !529, size: 32, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3724, file: !3725, line: 50, baseType: !297, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3724, file: !3725, line: 51, baseType: !1440, size: 64, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3724, file: !3725, line: 52, baseType: !1440, size: 64, offset: 768)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3724, file: !3725, line: 53, baseType: !1440, size: 64, offset: 832)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3724, file: !3725, line: 54, baseType: !1440, size: 64, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3724, file: !3725, line: 55, baseType: !1440, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3724, file: !3725, line: 56, baseType: !297, size: 64, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3724, file: !3725, line: 57, baseType: !297, size: 64, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3724, file: !3725, line: 58, baseType: !297, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3724, file: !3725, line: 59, baseType: !297, size: 64, offset: 1216)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3724, file: !3725, line: 60, baseType: !297, size: 64, offset: 1280)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3724, file: !3725, line: 61, baseType: !328, size: 64, offset: 1344)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3724, file: !3725, line: 62, baseType: !599, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3724, file: !3725, line: 63, baseType: !599, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3705, file: !80, line: 583, baseType: !599, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3705, file: !80, line: 584, baseType: !599, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3705, file: !80, line: 585, baseType: !599, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3705, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3705, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3705, file: !80, line: 592, baseType: !1432, size: 512, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3705, file: !80, line: 593, baseType: !289, size: 64, offset: 1088)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3705, file: !80, line: 594, baseType: !2152, size: 256, offset: 1152)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3705, file: !80, line: 595, baseType: !1621, size: 128, offset: 1408)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3705, file: !80, line: 596, baseType: !3732, size: 64, offset: 1536)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3705, file: !80, line: 597, baseType: !323, size: 32, offset: 1600)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3705, file: !80, line: 598, baseType: !323, size: 32, offset: 1632)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3705, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3705, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3705, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3705, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3705, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3705, file: !80, line: 604, baseType: !599, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3705, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3705, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3705, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3705, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3705, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3705, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3705, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3705, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3705, file: !80, line: 613, baseType: !115, size: 32, offset: 1792)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3705, file: !80, line: 614, baseType: !115, size: 32, offset: 1824)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3705, file: !80, line: 615, baseType: !289, size: 64, offset: 1856)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3705, file: !80, line: 616, baseType: !289, size: 64, offset: 1920)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3705, file: !80, line: 617, baseType: !289, size: 64, offset: 1984)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3705, file: !80, line: 618, baseType: !289, size: 64, offset: 2048)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3705, file: !80, line: 620, baseType: !3793, size: 64, offset: 2112)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3794, file: !80, line: 537, baseType: !348)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3794, file: !80, line: 538, baseType: !7, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3794, file: !80, line: 540, baseType: !307, size: 128, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3794, file: !80, line: 543, baseType: !3800, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3705, file: !80, line: 621, baseType: !3803, size: 64, offset: 2176)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !328, !1584}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3705, file: !80, line: 622, baseType: !3807, size: 64, offset: 2240)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !329, file: !73, line: 486, baseType: !3810, size: 64, offset: 4096)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3819, !3820, !3821}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3811, file: !80, line: 643, baseType: !3572, size: 1472)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3811, file: !80, line: 644, baseType: !3575, size: 64, offset: 1472)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3811, file: !80, line: 645, baseType: !3816, size: 64, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !328, !599}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3811, file: !80, line: 646, baseType: !3575, size: 64, offset: 1600)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3811, file: !80, line: 647, baseType: !3566, size: 64, offset: 1664)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3811, file: !80, line: 648, baseType: !3566, size: 64, offset: 1728)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !329, file: !73, line: 493, baseType: !3823, size: 64, offset: 4160)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3825)
!3825 = !{!3826, !3827, !3828, !4001, !4002, !4003, !4004, !4005, !4006, !4009, !4010, !4011, !4012, !4013, !4014, !4015}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3824, file: !94, line: 163, baseType: !307, size: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3824, file: !94, line: 164, baseType: !336, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3824, file: !94, line: 165, baseType: !3829, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3832)
!3832 = !{!3833, !3951, !3962, !3967, !3971, !3978, !3982, !3986, !3993, !3997}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3831, file: !94, line: 106, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!115, !3823, !3837, !93}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3839, line: 51, size: 1344, elements: !3840)
!3839 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3840 = !{!3841, !3842, !3844, !3845, !3935, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3838, file: !3839, line: 52, baseType: !336, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3838, file: !3839, line: 53, baseType: !3843, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3839, line: 28, baseType: !529)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3838, file: !3839, line: 54, baseType: !336, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3838, file: !3839, line: 55, baseType: !3846, size: 192, offset: 192)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3847, line: 17, size: 192, elements: !3848)
!3847 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3848 = !{!3849, !3851, !3934}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3846, file: !3847, line: 18, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3846, file: !3847, line: 19, baseType: !3852, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3847, line: 110, size: 1152, elements: !3855)
!3855 = !{!3856, !3860, !3864, !3870, !3876, !3880, !3884, !3889, !3893, !3894, !3898, !3902, !3906, !3917, !3918, !3919, !3920, !3930}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3854, file: !3847, line: 111, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!3850, !3850}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3854, file: !3847, line: 112, baseType: !3861, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3850}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3854, file: !3847, line: 113, baseType: !3865, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!599, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3846)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3854, file: !3847, line: 114, baseType: !3871, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!2322, !3868, !3874}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3854, file: !3847, line: 116, baseType: !3877, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!599, !3868, !336}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3854, file: !3847, line: 118, baseType: !3881, size: 64, offset: 320)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!115, !3868, !336, !7, !296, !436}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3854, file: !3847, line: 123, baseType: !3885, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!115, !3868, !336, !3888, !436}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3854, file: !3847, line: 126, baseType: !3890, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!336, !3868}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3854, file: !3847, line: 127, baseType: !3890, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3854, file: !3847, line: 128, baseType: !3895, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!3850, !3868}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3854, file: !3847, line: 130, baseType: !3899, size: 64, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!3850, !3868, !3850}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3854, file: !3847, line: 133, baseType: !3903, size: 64, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!3850, !3868, !336}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3854, file: !3847, line: 135, baseType: !3907, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!115, !3868, !336, !336, !7, !7, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3847, line: 43, size: 640, elements: !3912)
!3912 = !{!3913, !3914, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3911, file: !3847, line: 44, baseType: !3850, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3911, file: !3847, line: 45, baseType: !7, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3911, file: !3847, line: 46, baseType: !3916, size: 512, offset: 128)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 512, elements: !1470)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3854, file: !3847, line: 140, baseType: !3899, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3854, file: !3847, line: 143, baseType: !3895, size: 64, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3854, file: !3847, line: 145, baseType: !3857, size: 64, offset: 960)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3854, file: !3847, line: 146, baseType: !3921, size: 64, offset: 1024)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!115, !3868, !3924}
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3847, line: 29, size: 128, elements: !3926)
!3926 = !{!3927, !3928, !3929}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3925, file: !3847, line: 30, baseType: !7, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3925, file: !3847, line: 31, baseType: !7, size: 32, offset: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3925, file: !3847, line: 32, baseType: !3868, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3854, file: !3847, line: 148, baseType: !3931, size: 64, offset: 1088)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!115, !3868, !328}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3846, file: !3847, line: 20, baseType: !328, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3838, file: !3839, line: 57, baseType: !3936, size: 64, offset: 384)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3839, line: 31, size: 704, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3937, file: !3839, line: 32, baseType: !389, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3937, file: !3839, line: 33, baseType: !115, size: 32, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3937, file: !3839, line: 34, baseType: !296, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3937, file: !3839, line: 35, baseType: !3936, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3937, file: !3839, line: 43, baseType: !457, size: 448, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3838, file: !3839, line: 58, baseType: !3936, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3838, file: !3839, line: 59, baseType: !3837, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3838, file: !3839, line: 60, baseType: !3837, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3838, file: !3839, line: 61, baseType: !3837, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3838, file: !3839, line: 63, baseType: !332, size: 512, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3838, file: !3839, line: 65, baseType: !297, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3838, file: !3839, line: 66, baseType: !296, size: 64, offset: 1280)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3831, file: !94, line: 108, baseType: !3952, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!115, !3823, !3955, !93}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3957)
!3957 = !{!3958, !3959, !3960}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3956, file: !94, line: 64, baseType: !3850, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3956, file: !94, line: 65, baseType: !115, size: 32, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3956, file: !94, line: 66, baseType: !3961, size: 512, offset: 96)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 512, elements: !1906)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3831, file: !94, line: 110, baseType: !3963, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!115, !3823, !7, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !295, line: 164, baseType: !297)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3831, file: !94, line: 111, baseType: !3968, size: 64, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3823, !7}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3831, file: !94, line: 112, baseType: !3972, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!115, !3823, !3837, !3975, !7, !3977, !2878}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3831, file: !94, line: 117, baseType: !3979, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!115, !3823, !7, !7, !296}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3831, file: !94, line: 119, baseType: !3983, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !3823, !7, !7}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3831, file: !94, line: 121, baseType: !3987, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!115, !3823, !3990, !599}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3992, line: 11, flags: DIFlagFwdDecl)
!3992 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3831, file: !94, line: 122, baseType: !3994, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3823, !3990}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3831, file: !94, line: 123, baseType: !3998, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!115, !3823, !3955, !3977, !2878}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3824, file: !94, line: 166, baseType: !296, size: 64, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3824, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3824, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3824, file: !94, line: 171, baseType: !3850, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3824, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3824, file: !94, line: 173, baseType: !4007, size: 64, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3824, file: !94, line: 175, baseType: !3823, size: 64, offset: 576)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3824, file: !94, line: 182, baseType: !3966, size: 64, offset: 640)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3824, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3824, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3824, file: !94, line: 185, baseType: !900, size: 128, offset: 768)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3824, file: !94, line: 186, baseType: !835, size: 192, offset: 896)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3824, file: !94, line: 187, baseType: !4016, offset: 1088)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2526)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !329, file: !73, line: 499, baseType: !307, size: 128, offset: 4224)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !329, file: !73, line: 502, baseType: !4019, size: 64, offset: 4352)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4021)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !329, file: !73, line: 504, baseType: !4023, size: 64, offset: 4416)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !329, file: !73, line: 505, baseType: !289, size: 64, offset: 4480)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !329, file: !73, line: 510, baseType: !289, size: 64, offset: 4544)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !329, file: !73, line: 511, baseType: !4027, size: 64, offset: 4608)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4029)
!4029 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !329, file: !73, line: 513, baseType: !4031, size: 64, offset: 4672)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4033)
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4032, file: !73, line: 293, baseType: !7, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4032, file: !73, line: 294, baseType: !297, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !329, file: !73, line: 515, baseType: !307, size: 128, offset: 4736)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !329, file: !73, line: 526, baseType: !4038, offset: 4864)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4039, line: 5, elements: !362)
!4039 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !329, file: !73, line: 528, baseType: !3837, size: 64, offset: 4864)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !329, file: !73, line: 529, baseType: !3850, size: 64, offset: 4928)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !329, file: !73, line: 534, baseType: !622, size: 32, offset: 4992)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !329, file: !73, line: 535, baseType: !529, size: 32, offset: 5024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !329, file: !73, line: 537, baseType: !348, offset: 5056)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !329, file: !73, line: 538, baseType: !307, size: 128, offset: 5056)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !329, file: !73, line: 540, baseType: !4047, size: 64, offset: 5184)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4049, line: 54, size: 960, elements: !4050)
!4049 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4061, !4065, !4066, !4067, !4068, !4072, !4076, !4077}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4048, file: !4049, line: 55, baseType: !336, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4048, file: !4049, line: 56, baseType: !742, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4048, file: !4049, line: 58, baseType: !442, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4048, file: !4049, line: 59, baseType: !442, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4048, file: !4049, line: 60, baseType: !341, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4048, file: !4049, line: 62, baseType: !3557, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4048, file: !4049, line: 63, baseType: !4058, size: 64, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!389, !328, !3564}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4048, file: !4049, line: 65, baseType: !4062, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !4047}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4048, file: !4049, line: 66, baseType: !3566, size: 64, offset: 512)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4048, file: !4049, line: 68, baseType: !3575, size: 64, offset: 576)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4048, file: !4049, line: 70, baseType: !3383, size: 64, offset: 640)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4048, file: !4049, line: 71, baseType: !4069, size: 64, offset: 704)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!2322, !328}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4048, file: !4049, line: 73, baseType: !4073, size: 64, offset: 768)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !328, !3415, !3416}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4048, file: !4049, line: 75, baseType: !3570, size: 64, offset: 832)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4048, file: !4049, line: 77, baseType: !3687, size: 64, offset: 896)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !329, file: !73, line: 541, baseType: !442, size: 64, offset: 5248)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !329, file: !73, line: 543, baseType: !3566, size: 64, offset: 5312)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !329, file: !73, line: 544, baseType: !4081, size: 64, offset: 5376)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !329, file: !73, line: 545, baseType: !4084, size: 64, offset: 5440)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !329, file: !73, line: 547, baseType: !599, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !329, file: !73, line: 548, baseType: !599, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !329, file: !73, line: 549, baseType: !599, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !329, file: !73, line: 550, baseType: !599, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !304, file: !167, line: 83, baseType: !4091, size: 192, offset: 256)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !167, line: 76, size: 192, elements: !4092)
!4092 = !{!4093, !4094, !4095}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4091, file: !167, line: 78, baseType: !307, size: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4091, file: !167, line: 80, baseType: !296, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4091, file: !167, line: 82, baseType: !348, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !304, file: !167, line: 86, baseType: !4097, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !244, line: 162, size: 3328, elements: !4099)
!4099 = !{!4100, !4104, !4111, !4115, !4119, !4120, !4121, !4126, !4127, !4131, !4132, !4136, !4137, !4143, !4150, !4154, !4158, !4162, !4166, !4171, !4177, !4181, !4185, !4186, !4192, !4198, !4202, !4206, !4210, !4224, !4230, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4246, !4247, !4248, !4249, !4250, !4251, !4255, !4256, !4260, !4264, !4268, !4272}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4098, file: !244, line: 179, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!115, !303, !297}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4098, file: !244, line: 199, baseType: !4105, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!115, !303, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4110, line: 9, flags: DIFlagFwdDecl)
!4110 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4098, file: !244, line: 213, baseType: !4112, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !303, !4108}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4098, file: !244, line: 241, baseType: !4116, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !303}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4098, file: !244, line: 258, baseType: !4116, size: 64, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4098, file: !244, line: 270, baseType: !4116, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !4098, file: !244, line: 278, baseType: !4122, size: 64, offset: 384)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!4125, !115, !296}
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !108, line: 17, baseType: !107)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "irq_preinstall", scope: !4098, file: !244, line: 288, baseType: !4116, size: 64, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "irq_postinstall", scope: !4098, file: !244, line: 297, baseType: !4128, size: 64, offset: 512)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!115, !303}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "irq_uninstall", scope: !4098, file: !244, line: 306, baseType: !4116, size: 64, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4098, file: !244, line: 313, baseType: !4133, size: 64, offset: 640)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !303, !4108, !599}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4098, file: !244, line: 320, baseType: !4112, size: 64, offset: 704)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4098, file: !244, line: 327, baseType: !4138, size: 64, offset: 768)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !167, line: 13, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "gem_free_object_unlocked", scope: !4098, file: !244, line: 335, baseType: !4144, size: 64, offset: 832)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !4147}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4149, line: 37, flags: DIFlagFwdDecl)
!4149 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "gem_open_object", scope: !4098, file: !244, line: 344, baseType: !4151, size: 64, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!115, !4147, !4108}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "gem_close_object", scope: !4098, file: !244, line: 353, baseType: !4155, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !4147, !4108}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4098, file: !244, line: 361, baseType: !4159, size: 64, offset: 1024)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!4147, !303, !436}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4098, file: !244, line: 372, baseType: !4163, size: 64, offset: 1088)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!115, !303, !4108, !668, !668, !817}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4098, file: !244, line: 383, baseType: !4167, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!115, !303, !4108, !115, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_export", scope: !4098, file: !244, line: 391, baseType: !4172, size: 64, offset: 1216)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!4175, !4147, !115}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !244, line: 391, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4098, file: !244, line: 400, baseType: !4178, size: 64, offset: 1280)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!4147, !303, !4175}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_pin", scope: !4098, file: !244, line: 408, baseType: !4182, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!115, !4147}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_unpin", scope: !4098, file: !244, line: 415, baseType: !4144, size: 64, offset: 1408)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_get_sg_table", scope: !4098, file: !244, line: 423, baseType: !4187, size: 64, offset: 1472)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!4190, !4147}
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !244, line: 423, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4098, file: !244, line: 431, baseType: !4193, size: 64, offset: 1536)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!4147, !303, !4196, !4190}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !244, line: 39, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vmap", scope: !4098, file: !244, line: 441, baseType: !4199, size: 64, offset: 1600)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!296, !4147}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vunmap", scope: !4098, file: !244, line: 449, baseType: !4203, size: 64, offset: 1664)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !4147, !296}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_mmap", scope: !4098, file: !244, line: 460, baseType: !4207, size: 64, offset: 1728)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!115, !4147, !1132}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4098, file: !244, line: 484, baseType: !4211, size: 64, offset: 1792)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!115, !4108, !303, !4214}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !215, line: 805, size: 256, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4215, file: !215, line: 806, baseType: !530, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4215, file: !215, line: 807, baseType: !530, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4215, file: !215, line: 808, baseType: !530, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4215, file: !215, line: 809, baseType: !530, size: 32, offset: 96)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4215, file: !215, line: 811, baseType: !530, size: 32, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4215, file: !215, line: 812, baseType: !530, size: 32, offset: 160)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4215, file: !215, line: 813, baseType: !291, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4098, file: !244, line: 502, baseType: !4225, size: 64, offset: 1856)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!115, !4108, !303, !668, !4228}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !295, line: 107, baseType: !289)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_destroy", scope: !4098, file: !244, line: 521, baseType: !4231, size: 64, offset: 1920)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!115, !4108, !303, !668}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "gem_vm_ops", scope: !4098, file: !244, line: 531, baseType: !1160, size: 64, offset: 1984)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4098, file: !244, line: 534, baseType: !115, size: 32, offset: 2048)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4098, file: !244, line: 536, baseType: !115, size: 32, offset: 2080)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4098, file: !244, line: 538, baseType: !115, size: 32, offset: 2112)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4098, file: !244, line: 540, baseType: !389, size: 64, offset: 2176)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4098, file: !244, line: 542, baseType: !389, size: 64, offset: 2240)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4098, file: !244, line: 544, baseType: !389, size: 64, offset: 2304)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4098, file: !244, line: 552, baseType: !529, size: 32, offset: 2368)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4098, file: !244, line: 562, baseType: !4243, size: 64, offset: 2432)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !244, line: 562, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4098, file: !244, line: 564, baseType: !115, size: 32, offset: 2496)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4098, file: !244, line: 573, baseType: !3058, size: 64, offset: 2560)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !4098, file: !244, line: 579, baseType: !307, size: 128, offset: 2624)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "firstopen", scope: !4098, file: !244, line: 580, baseType: !4128, size: 64, offset: 2752)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "preclose", scope: !4098, file: !244, line: 581, baseType: !4112, size: 64, offset: 2816)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ioctl", scope: !4098, file: !244, line: 582, baseType: !4252, size: 64, offset: 2880)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!115, !303, !296, !4108}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dma_quiescent", scope: !4098, file: !244, line: 583, baseType: !4128, size: 64, offset: 2944)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "context_dtor", scope: !4098, file: !244, line: 584, baseType: !4257, size: 64, offset: 3008)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!115, !303, !115}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4098, file: !244, line: 585, baseType: !4261, size: 64, offset: 3072)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!529, !303, !7}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4098, file: !244, line: 586, baseType: !4265, size: 64, offset: 3136)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!115, !303, !7}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4098, file: !244, line: 587, baseType: !4269, size: 64, offset: 3200)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !303, !7}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv_size", scope: !4098, file: !244, line: 588, baseType: !115, size: 32, offset: 3264)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !304, file: !167, line: 98, baseType: !296, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !304, file: !167, line: 101, baseType: !4141, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !304, file: !167, line: 104, baseType: !4141, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !304, file: !167, line: 111, baseType: !599, size: 8, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !304, file: !167, line: 119, baseType: !4278, size: 64, offset: 768)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4110, line: 11, flags: DIFlagFwdDecl)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !304, file: !167, line: 129, baseType: !529, size: 32, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !304, file: !167, line: 137, baseType: !599, size: 8, offset: 864)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !304, file: !167, line: 140, baseType: !538, size: 64, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !304, file: !167, line: 143, baseType: !389, size: 64, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !304, file: !167, line: 153, baseType: !835, size: 192, offset: 1024)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !304, file: !167, line: 160, baseType: !835, size: 192, offset: 1216)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !304, file: !167, line: 168, baseType: !323, size: 32, offset: 1408)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !304, file: !167, line: 171, baseType: !835, size: 192, offset: 1472)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !304, file: !167, line: 177, baseType: !307, size: 128, offset: 1664)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !304, file: !167, line: 185, baseType: !307, size: 128, offset: 1792)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !304, file: !167, line: 192, baseType: !835, size: 192, offset: 1920)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !304, file: !167, line: 199, baseType: !307, size: 128, offset: 2112)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !304, file: !167, line: 208, baseType: !599, size: 8, offset: 2240)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !304, file: !167, line: 213, baseType: !115, size: 32, offset: 2272)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !304, file: !167, line: 228, baseType: !599, size: 8, offset: 2304)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !304, file: !167, line: 238, baseType: !4296, size: 64, offset: 2368)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !167, line: 16, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !304, file: !167, line: 245, baseType: !348, offset: 2432)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !304, file: !167, line: 250, baseType: !348, offset: 2432)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !304, file: !167, line: 273, baseType: !529, size: 32, offset: 2432)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !304, file: !167, line: 276, baseType: !307, size: 128, offset: 2496)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !304, file: !167, line: 284, baseType: !348, offset: 2624)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !304, file: !167, line: 287, baseType: !4304, size: 64, offset: 2624)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !167, line: 287, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !304, file: !167, line: 290, baseType: !4307, size: 64, offset: 2688)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4309, line: 79, flags: DIFlagFwdDecl)
!4309 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/lizy2001/genbc/linux")
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !304, file: !167, line: 297, baseType: !7, size: 32, offset: 2752)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !304, file: !167, line: 300, baseType: !4312, size: 8384, offset: 2816)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4313, line: 358, size: 8384, elements: !4314)
!4313 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4314 = !{!4315, !4316, !4335, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4357, !4358, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4547, !4549, !4550, !4551, !4552, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4312, file: !4313, line: 369, baseType: !835, size: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4312, file: !4313, line: 379, baseType: !4317, size: 384, offset: 192)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4318, line: 76, size: 384, elements: !4319)
!4318 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4319 = !{!4320, !4334}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4317, file: !4318, line: 80, baseType: !4321, size: 256)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !836, line: 71, size: 256, elements: !4322)
!4322 = !{!4323, !4324}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4321, file: !836, line: 72, baseType: !835, size: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4321, file: !836, line: 73, baseType: !4325, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4327, line: 31, size: 192, elements: !4328)
!4327 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4328 = !{!4329, !4330, !4331, !4332, !4333}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4326, file: !4327, line: 32, baseType: !1361, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4326, file: !4327, line: 33, baseType: !297, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4326, file: !4327, line: 34, baseType: !7, size: 32, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4326, file: !4327, line: 35, baseType: !431, size: 16, offset: 160)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4326, file: !4327, line: 36, baseType: !431, size: 16, offset: 176)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4317, file: !4318, line: 86, baseType: !307, size: 128, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4312, file: !4313, line: 389, baseType: !4336, size: 64, offset: 576)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4318, line: 43, size: 448, elements: !4338)
!4338 = !{!4339, !4340, !4342, !4343, !4344}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4337, file: !4318, line: 45, baseType: !4326, size: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4337, file: !4318, line: 52, baseType: !4341, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4337, file: !4318, line: 57, baseType: !307, size: 128, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4337, file: !4318, line: 62, baseType: !599, size: 8, offset: 384)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4337, file: !4318, line: 65, baseType: !599, size: 8, offset: 392)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4312, file: !4313, line: 397, baseType: !835, size: 192, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4312, file: !4313, line: 405, baseType: !1640, size: 192, offset: 832)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4312, file: !4313, line: 413, baseType: !1640, size: 192, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4312, file: !4313, line: 416, baseType: !835, size: 192, offset: 1216)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4312, file: !4313, line: 418, baseType: !115, size: 32, offset: 1408)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4312, file: !4313, line: 420, baseType: !307, size: 128, offset: 1472)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4312, file: !4313, line: 426, baseType: !348, offset: 1600)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4312, file: !4313, line: 431, baseType: !115, size: 32, offset: 1600)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4312, file: !4313, line: 435, baseType: !4354, size: 128, offset: 1664)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1641, line: 244, size: 128, elements: !4355)
!4355 = !{!4356}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4354, file: !1641, line: 245, baseType: !900, size: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4312, file: !4313, line: 443, baseType: !307, size: 128, offset: 1792)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4312, file: !4313, line: 453, baseType: !4359, size: 64, offset: 1920)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !474, line: 54, size: 64, elements: !4360)
!4360 = !{!4361}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4359, file: !474, line: 55, baseType: !477, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4312, file: !4313, line: 457, baseType: !2152, size: 256, offset: 1984)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4312, file: !4313, line: 465, baseType: !115, size: 32, offset: 2240)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4312, file: !4313, line: 473, baseType: !307, size: 128, offset: 2304)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4312, file: !4313, line: 482, baseType: !115, size: 32, offset: 2432)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4312, file: !4313, line: 489, baseType: !307, size: 128, offset: 2496)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4312, file: !4313, line: 497, baseType: !115, size: 32, offset: 2624)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4312, file: !4313, line: 504, baseType: !307, size: 128, offset: 2688)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4312, file: !4313, line: 513, baseType: !307, size: 128, offset: 2816)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4312, file: !4313, line: 522, baseType: !307, size: 128, offset: 2944)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4312, file: !4313, line: 524, baseType: !115, size: 32, offset: 3072)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4312, file: !4313, line: 524, baseType: !115, size: 32, offset: 3104)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4312, file: !4313, line: 525, baseType: !115, size: 32, offset: 3136)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4312, file: !4313, line: 525, baseType: !115, size: 32, offset: 3168)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4312, file: !4313, line: 526, baseType: !4376, size: 64, offset: 3200)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4378)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4313, line: 47, size: 576, elements: !4379)
!4379 = !{!4380, !4481, !4485, !4486, !4528, !4534, !4538, !4542, !4546}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4378, file: !4313, line: 77, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!4384, !303, !4108, !4466}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4149, line: 117, size: 1600, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4424, !4425, !4429, !4454, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4385, file: !4149, line: 121, baseType: !303, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4385, file: !4149, line: 126, baseType: !307, size: 128, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4385, file: !4149, line: 131, baseType: !4390, size: 256, offset: 192)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4391, line: 55, size: 256, elements: !4392)
!4391 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!4392 = !{!4393, !4394, !4395, !4418, !4419}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4390, file: !4391, line: 56, baseType: !668, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4390, file: !4391, line: 57, baseType: !668, size: 32, offset: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4390, file: !4391, line: 58, baseType: !4396, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4391, line: 67, size: 3136, elements: !4398)
!4398 = !{!4399, !4400, !4416}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4397, file: !4391, line: 73, baseType: !115, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4397, file: !4391, line: 82, baseType: !4401, size: 1536, offset: 64)
!4401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4402, size: 1536, elements: !4414)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4404, line: 73, size: 960, elements: !4405)
!4404 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/lizy2001/genbc/linux")
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4403, file: !4404, line: 77, baseType: !307, size: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4403, file: !4404, line: 82, baseType: !4390, size: 256, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4403, file: !4404, line: 159, baseType: !668, size: 32, offset: 384)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4403, file: !4404, line: 164, baseType: !2895, size: 256, offset: 416)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4403, file: !4404, line: 169, baseType: !668, size: 32, offset: 672)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4403, file: !4404, line: 177, baseType: !4228, size: 64, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4403, file: !4404, line: 182, baseType: !303, size: 64, offset: 768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4403, file: !4404, line: 190, baseType: !307, size: 128, offset: 832)
!4414 = !{!4415}
!4415 = !DISubrange(count: 24)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4397, file: !4391, line: 102, baseType: !4417, size: 1536, offset: 1600)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4229, size: 1536, elements: !4414)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4390, file: !4391, line: 59, baseType: !314, size: 32, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4390, file: !4391, line: 60, baseType: !4420, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4385, file: !4149, line: 136, baseType: !1905, size: 128, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4385, file: !4149, line: 141, baseType: !4426, size: 64, offset: 576)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4149, line: 35, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4385, file: !4149, line: 145, baseType: !4430, size: 64, offset: 640)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4432)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4149, line: 42, size: 192, elements: !4433)
!4433 = !{!4434, !4438, !4442}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4432, file: !4149, line: 53, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !4384}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4432, file: !4149, line: 73, baseType: !4439, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!115, !4384, !4108, !2878}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4432, file: !4149, line: 97, baseType: !4443, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!115, !4384, !4108, !7, !7, !4446, !7}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4448, line: 97, size: 64, elements: !4449)
!4448 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4449 = !{!4450, !4451, !4452, !4453}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4447, file: !4448, line: 98, baseType: !431, size: 16)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4447, file: !4448, line: 99, baseType: !431, size: 16, offset: 16)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4447, file: !4448, line: 100, baseType: !431, size: 16, offset: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4447, file: !4448, line: 101, baseType: !431, size: 16, offset: 48)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4385, file: !4149, line: 150, baseType: !4455, size: 128, offset: 704)
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1306)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4385, file: !4149, line: 168, baseType: !4455, size: 128, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4385, file: !4149, line: 175, baseType: !4229, size: 64, offset: 960)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4385, file: !4149, line: 180, baseType: !7, size: 32, offset: 1024)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4385, file: !4149, line: 185, baseType: !7, size: 32, offset: 1056)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4385, file: !4149, line: 190, baseType: !115, size: 32, offset: 1088)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4385, file: !4149, line: 196, baseType: !115, size: 32, offset: 1120)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4385, file: !4149, line: 202, baseType: !115, size: 32, offset: 1152)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4385, file: !4149, line: 206, baseType: !307, size: 128, offset: 1216)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4385, file: !4149, line: 213, baseType: !4465, size: 256, offset: 1344)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4147, size: 256, elements: !1306)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4468)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !215, line: 494, size: 832, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4477, !4478, !4479}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4468, file: !215, line: 495, baseType: !530, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4468, file: !215, line: 496, baseType: !530, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4468, file: !215, line: 497, baseType: !530, size: 32, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4468, file: !215, line: 498, baseType: !530, size: 32, offset: 96)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4468, file: !215, line: 499, baseType: !530, size: 32, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4468, file: !215, line: 525, baseType: !4476, size: 128, offset: 160)
!4476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 128, elements: !1306)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4468, file: !215, line: 526, baseType: !4476, size: 128, offset: 288)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4468, file: !215, line: 527, baseType: !4476, size: 128, offset: 416)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4468, file: !215, line: 528, baseType: !4480, size: 256, offset: 576)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !1306)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4378, file: !4313, line: 92, baseType: !4482, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!4426, !4466}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4378, file: !4313, line: 109, baseType: !4116, size: 64, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4378, file: !4313, line: 119, baseType: !4487, size: 64, offset: 192)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!113, !303, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4492)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !114, line: 224, size: 960, elements: !4493)
!4493 = !{!4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4492, file: !114, line: 230, baseType: !115, size: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4492, file: !114, line: 231, baseType: !1009, size: 16, offset: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4492, file: !114, line: 232, baseType: !1009, size: 16, offset: 48)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4492, file: !114, line: 233, baseType: !1009, size: 16, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4492, file: !114, line: 234, baseType: !1009, size: 16, offset: 80)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4492, file: !114, line: 235, baseType: !1009, size: 16, offset: 96)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4492, file: !114, line: 236, baseType: !1009, size: 16, offset: 112)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4492, file: !114, line: 237, baseType: !1009, size: 16, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4492, file: !114, line: 238, baseType: !1009, size: 16, offset: 144)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4492, file: !114, line: 239, baseType: !1009, size: 16, offset: 160)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4492, file: !114, line: 240, baseType: !1009, size: 16, offset: 176)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4492, file: !114, line: 275, baseType: !529, size: 32, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4492, file: !114, line: 292, baseType: !115, size: 32, offset: 224)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4492, file: !114, line: 293, baseType: !1009, size: 16, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4492, file: !114, line: 294, baseType: !1009, size: 16, offset: 272)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4492, file: !114, line: 295, baseType: !1009, size: 16, offset: 288)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4492, file: !114, line: 296, baseType: !1009, size: 16, offset: 304)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4492, file: !114, line: 297, baseType: !1009, size: 16, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4492, file: !114, line: 298, baseType: !1009, size: 16, offset: 336)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4492, file: !114, line: 299, baseType: !1009, size: 16, offset: 352)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4492, file: !114, line: 300, baseType: !1009, size: 16, offset: 368)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4492, file: !114, line: 301, baseType: !1009, size: 16, offset: 384)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4492, file: !114, line: 302, baseType: !1009, size: 16, offset: 400)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4492, file: !114, line: 303, baseType: !1009, size: 16, offset: 416)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4492, file: !114, line: 304, baseType: !1009, size: 16, offset: 432)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4492, file: !114, line: 305, baseType: !1009, size: 16, offset: 448)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4492, file: !114, line: 313, baseType: !1009, size: 16, offset: 464)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4492, file: !114, line: 321, baseType: !1009, size: 16, offset: 480)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4492, file: !114, line: 350, baseType: !1492, size: 8, offset: 496)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4492, file: !114, line: 361, baseType: !599, size: 8, offset: 504)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4492, file: !114, line: 368, baseType: !307, size: 128, offset: 512)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4492, file: !114, line: 375, baseType: !2895, size: 256, offset: 640)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4492, file: !114, line: 383, baseType: !113, size: 32, offset: 896)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4492, file: !114, line: 390, baseType: !157, size: 32, offset: 928)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4378, file: !4313, line: 196, baseType: !4529, size: 64, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!115, !303, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !192, line: 642, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4378, file: !4313, line: 278, baseType: !4535, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!115, !303, !4532, !599}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4378, file: !4313, line: 297, baseType: !4539, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!4532, !303}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4378, file: !4313, line: 318, baseType: !4543, size: 64, offset: 448)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{null, !4532}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4378, file: !4313, line: 333, baseType: !4543, size: 64, offset: 512)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4312, file: !4313, line: 527, baseType: !4548, size: 64, offset: 3264)
!4548 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !295, line: 158, baseType: !2320)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4312, file: !4313, line: 530, baseType: !599, size: 8, offset: 3328)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4312, file: !4313, line: 531, baseType: !599, size: 8, offset: 3336)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4312, file: !4313, line: 532, baseType: !599, size: 8, offset: 3344)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4312, file: !4313, line: 533, baseType: !4553, size: 704, offset: 3392)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2153, line: 115, size: 704, elements: !4554)
!4554 = !{!4555, !4556, !4557, !4558}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4553, file: !2153, line: 116, baseType: !2152, size: 256)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4553, file: !2153, line: 117, baseType: !3735, size: 320, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4553, file: !2153, line: 120, baseType: !2988, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4553, file: !2153, line: 121, baseType: !115, size: 32, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4312, file: !4313, line: 541, baseType: !835, size: 192, offset: 4096)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4312, file: !4313, line: 549, baseType: !307, size: 128, offset: 4288)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4312, file: !4313, line: 557, baseType: !4402, size: 64, offset: 4416)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4312, file: !4313, line: 562, baseType: !4402, size: 64, offset: 4480)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4312, file: !4313, line: 567, baseType: !4402, size: 64, offset: 4544)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4312, file: !4313, line: 573, baseType: !4402, size: 64, offset: 4608)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4312, file: !4313, line: 578, baseType: !4402, size: 64, offset: 4672)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4312, file: !4313, line: 583, baseType: !4402, size: 64, offset: 4736)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4312, file: !4313, line: 588, baseType: !4402, size: 64, offset: 4800)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4312, file: !4313, line: 593, baseType: !4402, size: 64, offset: 4864)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4312, file: !4313, line: 598, baseType: !4402, size: 64, offset: 4928)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4312, file: !4313, line: 603, baseType: !4402, size: 64, offset: 4992)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4312, file: !4313, line: 608, baseType: !4402, size: 64, offset: 5056)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4312, file: !4313, line: 613, baseType: !4402, size: 64, offset: 5120)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4312, file: !4313, line: 618, baseType: !4402, size: 64, offset: 5184)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4312, file: !4313, line: 623, baseType: !4402, size: 64, offset: 5248)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4312, file: !4313, line: 628, baseType: !4402, size: 64, offset: 5312)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4312, file: !4313, line: 633, baseType: !4402, size: 64, offset: 5376)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4312, file: !4313, line: 639, baseType: !4402, size: 64, offset: 5440)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4312, file: !4313, line: 644, baseType: !4402, size: 64, offset: 5504)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4312, file: !4313, line: 653, baseType: !4402, size: 64, offset: 5568)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4312, file: !4313, line: 659, baseType: !4402, size: 64, offset: 5632)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4312, file: !4313, line: 665, baseType: !4402, size: 64, offset: 5696)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4312, file: !4313, line: 670, baseType: !4402, size: 64, offset: 5760)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4312, file: !4313, line: 676, baseType: !4402, size: 64, offset: 5824)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4312, file: !4313, line: 681, baseType: !4402, size: 64, offset: 5888)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4312, file: !4313, line: 687, baseType: !4402, size: 64, offset: 5952)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4312, file: !4313, line: 693, baseType: !4402, size: 64, offset: 6016)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4312, file: !4313, line: 698, baseType: !4402, size: 64, offset: 6080)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4312, file: !4313, line: 703, baseType: !4402, size: 64, offset: 6144)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4312, file: !4313, line: 708, baseType: !4402, size: 64, offset: 6208)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4312, file: !4313, line: 713, baseType: !4402, size: 64, offset: 6272)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4312, file: !4313, line: 718, baseType: !4402, size: 64, offset: 6336)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4312, file: !4313, line: 723, baseType: !4402, size: 64, offset: 6400)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4312, file: !4313, line: 728, baseType: !4402, size: 64, offset: 6464)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4312, file: !4313, line: 733, baseType: !4402, size: 64, offset: 6528)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4312, file: !4313, line: 738, baseType: !4402, size: 64, offset: 6592)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4312, file: !4313, line: 743, baseType: !4402, size: 64, offset: 6656)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4312, file: !4313, line: 748, baseType: !4402, size: 64, offset: 6720)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4312, file: !4313, line: 752, baseType: !4402, size: 64, offset: 6784)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4312, file: !4313, line: 758, baseType: !4402, size: 64, offset: 6848)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4312, file: !4313, line: 763, baseType: !4402, size: 64, offset: 6912)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4312, file: !4313, line: 768, baseType: !4402, size: 64, offset: 6976)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4312, file: !4313, line: 773, baseType: !4402, size: 64, offset: 7040)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4312, file: !4313, line: 778, baseType: !4402, size: 64, offset: 7104)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4312, file: !4313, line: 784, baseType: !4402, size: 64, offset: 7168)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4312, file: !4313, line: 790, baseType: !4402, size: 64, offset: 7232)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4312, file: !4313, line: 795, baseType: !4402, size: 64, offset: 7296)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4312, file: !4313, line: 801, baseType: !4402, size: 64, offset: 7360)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4312, file: !4313, line: 806, baseType: !4402, size: 64, offset: 7424)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4312, file: !4313, line: 813, baseType: !4402, size: 64, offset: 7488)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4312, file: !4313, line: 820, baseType: !4402, size: 64, offset: 7552)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4312, file: !4313, line: 827, baseType: !4402, size: 64, offset: 7616)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4312, file: !4313, line: 835, baseType: !4402, size: 64, offset: 7680)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4312, file: !4313, line: 843, baseType: !4402, size: 64, offset: 7744)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4312, file: !4313, line: 850, baseType: !4402, size: 64, offset: 7808)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4312, file: !4313, line: 856, baseType: !4402, size: 64, offset: 7872)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4312, file: !4313, line: 862, baseType: !4402, size: 64, offset: 7936)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4312, file: !4313, line: 865, baseType: !668, size: 32, offset: 8000)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4312, file: !4313, line: 865, baseType: !668, size: 32, offset: 8032)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4312, file: !4313, line: 872, baseType: !599, size: 8, offset: 8064)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4312, file: !4313, line: 884, baseType: !599, size: 8, offset: 8072)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4312, file: !4313, line: 892, baseType: !599, size: 8, offset: 8080)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4312, file: !4313, line: 906, baseType: !599, size: 8, offset: 8088)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4312, file: !4313, line: 912, baseType: !599, size: 8, offset: 8096)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4312, file: !4313, line: 919, baseType: !599, size: 8, offset: 8104)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4312, file: !4313, line: 927, baseType: !599, size: 8, offset: 8112)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4312, file: !4313, line: 933, baseType: !4402, size: 64, offset: 8128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4312, file: !4313, line: 936, baseType: !668, size: 32, offset: 8192)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4312, file: !4313, line: 936, baseType: !668, size: 32, offset: 8224)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4312, file: !4313, line: 945, baseType: !4532, size: 64, offset: 8256)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4312, file: !4313, line: 947, baseType: !4631, size: 64, offset: 8320)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4633)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4313, line: 947, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !304, file: !167, line: 303, baseType: !835, size: 192, offset: 11200)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !304, file: !167, line: 306, baseType: !1640, size: 192, offset: 11392)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !304, file: !167, line: 309, baseType: !4637, size: 64, offset: 11584)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !167, line: 19, flags: DIFlagFwdDecl)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !304, file: !167, line: 312, baseType: !4640, size: 64, offset: 11648)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !167, line: 20, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !304, file: !167, line: 322, baseType: !166, size: 32, offset: 11712)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !304, file: !167, line: 330, baseType: !4644, size: 64, offset: 11776)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !167, line: 21, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !299, file: !300, line: 943, baseType: !3837, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !299, file: !300, line: 951, baseType: !307, size: 128, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 954, baseType: !389, size: 64, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !299, file: !300, line: 966, baseType: !4317, size: 384, offset: 320)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !299, file: !300, line: 969, baseType: !4390, size: 256, offset: 704)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !299, file: !300, line: 978, baseType: !4652, size: 64, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !186, line: 575, size: 5184, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4802, !4803, !4804, !4805, !4809, !4810, !4811, !4812, !4813, !4814, !4815}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4653, file: !186, line: 577, baseType: !303, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4653, file: !186, line: 586, baseType: !307, size: 128, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4653, file: !186, line: 589, baseType: !389, size: 64, offset: 192)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4653, file: !186, line: 600, baseType: !4317, size: 384, offset: 256)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4653, file: !186, line: 603, baseType: !4390, size: 256, offset: 640)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !4653, file: !186, line: 609, baseType: !668, size: 32, offset: 896)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !4653, file: !186, line: 611, baseType: !4170, size: 64, offset: 960)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !4653, file: !186, line: 613, baseType: !7, size: 32, offset: 1024)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !4653, file: !186, line: 618, baseType: !599, size: 8, offset: 1056)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !4653, file: !186, line: 621, baseType: !4228, size: 64, offset: 1088)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !4653, file: !186, line: 623, baseType: !7, size: 32, offset: 1152)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4653, file: !186, line: 632, baseType: !298, size: 64, offset: 1216)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4653, file: !186, line: 641, baseType: !4384, size: 64, offset: 1280)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !4653, file: !186, line: 649, baseType: !4384, size: 64, offset: 1344)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4653, file: !186, line: 652, baseType: !4670, size: 64, offset: 1408)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4672)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !186, line: 256, size: 832, elements: !4673)
!4673 = !{!4674, !4678, !4682, !4686, !4687, !4691, !4744, !4748, !4752, !4758, !4762, !4763, !4798}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !4672, file: !186, line: 283, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!115, !4652, !298, !4384, !115, !115, !7, !7, !668, !668, !668, !668, !4336}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !4672, file: !186, line: 306, baseType: !4679, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!115, !4652, !4336}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4672, file: !186, line: 316, baseType: !4683, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{null, !4652}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4672, file: !186, line: 328, baseType: !4683, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4672, file: !186, line: 344, baseType: !4688, size: 64, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!115, !4652, !4402, !4229}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4672, file: !186, line: 378, baseType: !4692, size: 64, offset: 320)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!4695, !4652}
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !186, line: 47, size: 1216, elements: !4697)
!4697 = !{!4698, !4699, !4700, !4701, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4715, !4716, !4717, !4718, !4719, !4720, !4730, !4738, !4739, !4740, !4743}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4696, file: !186, line: 49, baseType: !4652, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4696, file: !186, line: 57, baseType: !298, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4696, file: !186, line: 65, baseType: !4384, size: 64, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4696, file: !186, line: 80, baseType: !4702, size: 64, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !186, line: 80, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !4696, file: !186, line: 89, baseType: !1757, size: 32, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !4696, file: !186, line: 96, baseType: !1757, size: 32, offset: 288)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !4696, file: !186, line: 100, baseType: !668, size: 32, offset: 320)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !4696, file: !186, line: 100, baseType: !668, size: 32, offset: 352)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !4696, file: !186, line: 106, baseType: !668, size: 32, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !4696, file: !186, line: 111, baseType: !668, size: 32, offset: 416)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !4696, file: !186, line: 114, baseType: !668, size: 32, offset: 448)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !4696, file: !186, line: 114, baseType: !668, size: 32, offset: 480)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4696, file: !186, line: 122, baseType: !1009, size: 16, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !4696, file: !186, line: 130, baseType: !4714, size: 16, offset: 528)
!4714 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !295, line: 103, baseType: !1009)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !4696, file: !186, line: 137, baseType: !7, size: 32, offset: 544)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !4696, file: !186, line: 152, baseType: !7, size: 32, offset: 576)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !4696, file: !186, line: 161, baseType: !7, size: 32, offset: 608)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !4696, file: !186, line: 168, baseType: !173, size: 32, offset: 640)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !4696, file: !186, line: 175, baseType: !180, size: 32, offset: 672)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !4696, file: !186, line: 185, baseType: !4721, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4404, line: 209, size: 704, elements: !4723)
!4723 = !{!4724, !4725, !4726, !4727, !4728, !4729}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4722, file: !4404, line: 210, baseType: !4390, size: 256)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4722, file: !4404, line: 211, baseType: !303, size: 64, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !4722, file: !4404, line: 212, baseType: !307, size: 128, offset: 320)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !4722, file: !4404, line: 213, baseType: !307, size: 128, offset: 448)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4722, file: !4404, line: 214, baseType: !436, size: 64, offset: 576)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4722, file: !4404, line: 215, baseType: !296, size: 64, offset: 640)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4696, file: !186, line: 207, baseType: !4731, size: 128, offset: 768)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !4732, line: 43, size: 128, elements: !4733)
!4732 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!4733 = !{!4734, !4735, !4736, !4737}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4731, file: !4732, line: 44, baseType: !115, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4731, file: !4732, line: 44, baseType: !115, size: 32, offset: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4731, file: !4732, line: 44, baseType: !115, size: 32, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4731, file: !4732, line: 44, baseType: !115, size: 32, offset: 96)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4696, file: !186, line: 207, baseType: !4731, size: 128, offset: 896)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !4696, file: !186, line: 215, baseType: !599, size: 8, offset: 1024)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4696, file: !186, line: 223, baseType: !4741, size: 64, offset: 1088)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !192, line: 649, flags: DIFlagFwdDecl)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4696, file: !186, line: 226, baseType: !4532, size: 64, offset: 1152)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4672, file: !186, line: 388, baseType: !4745, size: 64, offset: 384)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{null, !4652, !4695}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4672, file: !186, line: 433, baseType: !4749, size: 64, offset: 448)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!115, !4652, !4695, !4402, !4229}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4672, file: !186, line: 456, baseType: !4753, size: 64, offset: 512)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!115, !4652, !4756, !4402, !4228}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4696)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4672, file: !186, line: 473, baseType: !4759, size: 64, offset: 576)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!115, !4652}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4672, file: !186, line: 484, baseType: !4683, size: 64, offset: 640)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4672, file: !186, line: 495, baseType: !4764, size: 64, offset: 704)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4767, !4756}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !264, line: 75, size: 256, elements: !4769)
!4769 = !{!4770, !4792, !4796, !4797}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4768, file: !264, line: 77, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{null, !4767, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4776, line: 90, size: 128, elements: !4777)
!4776 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4775, file: !4776, line: 91, baseType: !336, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4775, file: !4776, line: 92, baseType: !4780, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4782, line: 99, baseType: !4783)
!4782 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4782, line: 40, baseType: !4784)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 142, baseType: !4785)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4786, size: 192, elements: !1511)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 142, size: 192, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4786, file: !3, line: 142, baseType: !7, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4786, file: !3, line: 142, baseType: !7, size: 32, offset: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4786, file: !3, line: 142, baseType: !296, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4786, file: !3, line: 142, baseType: !296, size: 64, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4768, file: !264, line: 78, baseType: !4793, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !4767, !336}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4768, file: !264, line: 79, baseType: !296, size: 64, offset: 128)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4768, file: !264, line: 80, baseType: !336, size: 64, offset: 192)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !4672, file: !186, line: 514, baseType: !4799, size: 64, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!599, !4652, !668, !4229}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4653, file: !186, line: 655, baseType: !4397, size: 3136, offset: 1472)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4653, file: !186, line: 658, baseType: !185, size: 32, offset: 4608)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4653, file: !186, line: 664, baseType: !7, size: 32, offset: 4640)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4653, file: !186, line: 667, baseType: !4806, size: 64, offset: 4672)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4808)
!4808 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !186, line: 667, flags: DIFlagFwdDecl)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4653, file: !186, line: 682, baseType: !4695, size: 64, offset: 4736)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !4653, file: !186, line: 689, baseType: !4402, size: 64, offset: 4800)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !4653, file: !186, line: 695, baseType: !4402, size: 64, offset: 4864)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !4653, file: !186, line: 701, baseType: !4402, size: 64, offset: 4928)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !4653, file: !186, line: 709, baseType: !4402, size: 64, offset: 4992)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !4653, file: !186, line: 718, baseType: !4402, size: 64, offset: 5056)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !4653, file: !186, line: 726, baseType: !4402, size: 64, offset: 5120)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !299, file: !300, line: 987, baseType: !4652, size: 64, offset: 1024)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !299, file: !300, line: 993, baseType: !7, size: 32, offset: 1088)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !299, file: !300, line: 1002, baseType: !115, size: 32, offset: 1120)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !299, file: !300, line: 1010, baseType: !115, size: 32, offset: 1152)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !299, file: !300, line: 1020, baseType: !599, size: 8, offset: 1184)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !299, file: !300, line: 1030, baseType: !4492, size: 960, offset: 1216)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !299, file: !300, line: 1046, baseType: !4492, size: 960, offset: 2176)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !299, file: !300, line: 1055, baseType: !115, size: 32, offset: 3136)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !299, file: !300, line: 1063, baseType: !115, size: 32, offset: 3168)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !299, file: !300, line: 1066, baseType: !4826, size: 64, offset: 3200)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4828)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !300, line: 409, size: 1536, elements: !4829)
!4829 = !{!4830, !4834, !4838, !4842, !4846, !4851, !4852, !5248, !5254, !5258, !5262, !5295, !5299, !5303, !5309, !5313, !5314, !5318, !5323, !5329, !5333, !5337, !5338, !5339}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4828, file: !300, line: 420, baseType: !4831, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{null, !298}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !4828, file: !300, line: 443, baseType: !4835, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!115, !298, !4108, !668, !668, !668}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !4828, file: !300, line: 465, baseType: !4839, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!115, !298, !4108, !668, !668, !668, !1757, !1757}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !4828, file: !300, line: 485, baseType: !4843, size: 64, offset: 192)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!115, !298, !115, !115}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !4828, file: !300, line: 500, baseType: !4847, size: 64, offset: 256)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!115, !298, !4850, !4850, !4850, !668, !4336}
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4828, file: !300, line: 511, baseType: !4831, size: 64, offset: 320)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4828, file: !300, line: 527, baseType: !4853, size: 64, offset: 384)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!115, !4856, !4336}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !300, line: 1190, size: 384, elements: !4858)
!4858 = !{!4859, !4860, !4861, !4863, !4864, !4865, !5247}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4857, file: !300, line: 1191, baseType: !4384, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4857, file: !300, line: 1192, baseType: !298, size: 64, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4857, file: !300, line: 1193, baseType: !4862, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4857, file: !300, line: 1195, baseType: !668, size: 32, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4857, file: !300, line: 1196, baseType: !668, size: 32, offset: 224)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4857, file: !300, line: 1198, baseType: !4866, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !192, line: 1170, size: 9280, elements: !4869)
!4869 = !{!4870, !4871, !4872, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4943, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5048, !5049, !5053, !5072, !5073, !5074, !5075, !5076, !5077, !5079, !5081, !5083, !5084, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4868, file: !192, line: 1172, baseType: !303, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4868, file: !192, line: 1174, baseType: !328, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4868, file: !192, line: 1176, baseType: !4873, size: 64, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4875)
!4875 = !{!4876, !4877, !4881}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4874, file: !73, line: 100, baseType: !426, size: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4874, file: !73, line: 101, baseType: !4878, size: 64, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!420, !328, !4873, !389}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4874, file: !73, line: 103, baseType: !4882, size: 64, offset: 192)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!420, !328, !4873, !336, !436}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4868, file: !192, line: 1186, baseType: !307, size: 128, offset: 192)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4868, file: !192, line: 1189, baseType: !4390, size: 256, offset: 320)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4868, file: !192, line: 1192, baseType: !389, size: 64, offset: 576)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4868, file: !192, line: 1199, baseType: !835, size: 192, offset: 640)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4868, file: !192, line: 1207, baseType: !7, size: 32, offset: 832)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !4868, file: !192, line: 1213, baseType: !115, size: 32, offset: 864)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !4868, file: !192, line: 1215, baseType: !115, size: 32, offset: 896)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !4868, file: !192, line: 1221, baseType: !599, size: 8, offset: 928)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !4868, file: !192, line: 1227, baseType: !599, size: 8, offset: 936)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4868, file: !192, line: 1233, baseType: !599, size: 8, offset: 944)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !4868, file: !192, line: 1241, baseType: !599, size: 8, offset: 952)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !4868, file: !192, line: 1249, baseType: !191, size: 32, offset: 960)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !4868, file: !192, line: 1256, baseType: !307, size: 128, offset: 1024)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4868, file: !192, line: 1263, baseType: !197, size: 32, offset: 1152)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !4868, file: !192, line: 1271, baseType: !307, size: 128, offset: 1216)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !4868, file: !192, line: 1282, baseType: !4901, size: 1216, offset: 1344)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !192, line: 428, size: 1216, elements: !4902)
!4902 = !{!4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4937, !4938}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4901, file: !192, line: 432, baseType: !7, size: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4901, file: !192, line: 437, baseType: !7, size: 32, offset: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !4901, file: !192, line: 442, baseType: !7, size: 32, offset: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !4901, file: !192, line: 447, baseType: !202, size: 32, offset: 96)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !4901, file: !192, line: 461, baseType: !115, size: 32, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !4901, file: !192, line: 469, baseType: !529, size: 32, offset: 160)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !4901, file: !192, line: 476, baseType: !3975, size: 64, offset: 192)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !4901, file: !192, line: 480, baseType: !7, size: 32, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4901, file: !192, line: 487, baseType: !529, size: 32, offset: 288)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !4901, file: !192, line: 493, baseType: !115, size: 32, offset: 320)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !4901, file: !192, line: 498, baseType: !599, size: 8, offset: 352)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !4901, file: !192, line: 506, baseType: !599, size: 8, offset: 360)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !4901, file: !192, line: 511, baseType: !599, size: 8, offset: 368)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !4901, file: !192, line: 517, baseType: !599, size: 8, offset: 376)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_dc_modes", scope: !4901, file: !192, line: 523, baseType: !1492, size: 8, offset: 384)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !4901, file: !192, line: 528, baseType: !1492, size: 8, offset: 392)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !4901, file: !192, line: 533, baseType: !4920, size: 704, offset: 448)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !192, line: 185, size: 704, elements: !4921)
!4921 = !{!4922, !4932, !4934, !4935, !4936}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !4920, file: !192, line: 187, baseType: !4923, size: 32)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !192, line: 163, size: 32, elements: !4924)
!4924 = !{!4925, !4926, !4927}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4923, file: !192, line: 167, baseType: !599, size: 8)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !4923, file: !192, line: 171, baseType: !599, size: 8, offset: 8)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !4923, file: !192, line: 175, baseType: !4928, size: 16, offset: 16)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !192, line: 146, size: 16, elements: !4929)
!4929 = !{!4930, !4931}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4928, file: !192, line: 150, baseType: !599, size: 8)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !4928, file: !192, line: 154, baseType: !599, size: 8, offset: 8)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !4920, file: !192, line: 195, baseType: !4933, size: 256, offset: 64)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !1306)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !4920, file: !192, line: 203, baseType: !4933, size: 256, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_map", scope: !4920, file: !192, line: 206, baseType: !289, size: 64, offset: 576)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !4920, file: !192, line: 209, baseType: !1492, size: 8, offset: 640)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !4901, file: !192, line: 538, baseType: !599, size: 8, offset: 1152)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !4901, file: !192, line: 543, baseType: !4939, size: 16, offset: 1160)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !192, line: 269, size: 16, elements: !4940)
!4940 = !{!4941, !4942}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !4939, file: !192, line: 270, baseType: !1492, size: 8)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !4939, file: !192, line: 271, baseType: !1492, size: 8, offset: 8)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4868, file: !192, line: 1285, baseType: !4944, size: 64, offset: 2560)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4946)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !192, line: 749, size: 896, elements: !4947)
!4947 = !{!4948, !4952, !4956, !4960, !4961, !4965, !4969, !4973, !4974, !4975, !5021, !5025, !5029, !5035}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4946, file: !192, line: 766, baseType: !4949, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!115, !4867, !115}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4946, file: !192, line: 778, baseType: !4953, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{null, !4867}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4946, file: !192, line: 806, baseType: !4957, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!197, !4867, !599}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4946, file: !192, line: 823, baseType: !4953, size: 64, offset: 192)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !4946, file: !192, line: 848, baseType: !4962, size: 64, offset: 256)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!115, !4867, !668, !668}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4946, file: !192, line: 864, baseType: !4966, size: 64, offset: 320)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!115, !4867, !4402, !4229}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4946, file: !192, line: 883, baseType: !4970, size: 64, offset: 384)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!115, !4867}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4946, file: !192, line: 896, baseType: !4953, size: 64, offset: 448)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4946, file: !192, line: 906, baseType: !4953, size: 64, offset: 512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4946, file: !192, line: 939, baseType: !4976, size: 64, offset: 576)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!4979, !4867}
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !192, line: 605, size: 1216, elements: !4981)
!4981 = !{!4982, !4983, !4984, !4987, !4988, !4989, !4990, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5018, !5019, !5020}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4980, file: !192, line: 607, baseType: !4867, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4980, file: !192, line: 615, baseType: !298, size: 64, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !4980, file: !192, line: 633, baseType: !4985, size: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !192, line: 39, flags: DIFlagFwdDecl)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !4980, file: !192, line: 639, baseType: !210, size: 32, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4980, file: !192, line: 642, baseType: !4532, size: 64, offset: 256)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4980, file: !192, line: 649, baseType: !4741, size: 64, offset: 320)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !4980, file: !192, line: 652, baseType: !4991, size: 384, offset: 384)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !192, line: 590, size: 384, elements: !4992)
!4992 = !{!4993, !4994, !5001, !5002, !5003, !5004, !5005, !5006, !5007}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !4991, file: !192, line: 591, baseType: !214, size: 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !4991, file: !192, line: 592, baseType: !4995, size: 128, offset: 32)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !192, line: 556, size: 128, elements: !4996)
!4996 = !{!4997, !4998, !4999, !5000}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !4995, file: !192, line: 560, baseType: !7, size: 32)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !4995, file: !192, line: 565, baseType: !7, size: 32, offset: 32)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !4995, file: !192, line: 570, baseType: !7, size: 32, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4995, file: !192, line: 575, baseType: !7, size: 32, offset: 96)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4991, file: !192, line: 593, baseType: !7, size: 32, offset: 160)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4991, file: !192, line: 594, baseType: !7, size: 32, offset: 192)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !4991, file: !192, line: 595, baseType: !7, size: 32, offset: 224)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !4991, file: !192, line: 596, baseType: !7, size: 32, offset: 256)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !4991, file: !192, line: 597, baseType: !7, size: 32, offset: 288)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !4991, file: !192, line: 598, baseType: !7, size: 32, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !4991, file: !192, line: 599, baseType: !7, size: 32, offset: 352)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !4980, file: !192, line: 666, baseType: !599, size: 8, offset: 768)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4980, file: !192, line: 675, baseType: !157, size: 32, offset: 800)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !4980, file: !192, line: 683, baseType: !7, size: 32, offset: 832)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !4980, file: !192, line: 689, baseType: !7, size: 32, offset: 864)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !4980, file: !192, line: 695, baseType: !7, size: 32, offset: 896)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !4980, file: !192, line: 701, baseType: !7, size: 32, offset: 928)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4980, file: !192, line: 708, baseType: !529, size: 32, offset: 960)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !4980, file: !192, line: 721, baseType: !5016, size: 64, offset: 1024)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !192, line: 721, flags: DIFlagFwdDecl)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !4980, file: !192, line: 727, baseType: !1492, size: 8, offset: 1088)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !4980, file: !192, line: 733, baseType: !1492, size: 8, offset: 1096)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !4980, file: !192, line: 739, baseType: !4721, size: 64, offset: 1152)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4946, file: !192, line: 949, baseType: !5022, size: 64, offset: 640)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !4867, !4979}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4946, file: !192, line: 994, baseType: !5026, size: 64, offset: 704)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!115, !4867, !4979, !4402, !4229}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4946, file: !192, line: 1017, baseType: !5030, size: 64, offset: 768)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!115, !4867, !5033, !4402, !4228}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4980)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4946, file: !192, line: 1031, baseType: !5036, size: 64, offset: 832)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !4767, !5033}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !4868, file: !192, line: 1292, baseType: !4721, size: 64, offset: 2624)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4868, file: !192, line: 1295, baseType: !4397, size: 3136, offset: 2688)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4868, file: !192, line: 1301, baseType: !4402, size: 64, offset: 5824)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !4868, file: !192, line: 1312, baseType: !4402, size: 64, offset: 5888)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !4868, file: !192, line: 1318, baseType: !4402, size: 64, offset: 5952)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !4868, file: !192, line: 1326, baseType: !4721, size: 64, offset: 6016)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !4868, file: !192, line: 1332, baseType: !4402, size: 64, offset: 6080)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !4868, file: !192, line: 1359, baseType: !5047, size: 8, offset: 6144)
!5047 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !295, line: 102, baseType: !1492)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4868, file: !192, line: 1367, baseType: !115, size: 32, offset: 6176)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4868, file: !192, line: 1370, baseType: !5050, size: 64, offset: 6208)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5052)
!5052 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !192, line: 35, flags: DIFlagFwdDecl)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !4868, file: !192, line: 1373, baseType: !5054, size: 672, offset: 6272)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !192, line: 1043, size: 672, elements: !5055)
!5055 = !{!5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5054, file: !192, line: 1049, baseType: !2895, size: 256)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5054, file: !192, line: 1056, baseType: !599, size: 8, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5054, file: !192, line: 1063, baseType: !599, size: 8, offset: 264)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5054, file: !192, line: 1070, baseType: !599, size: 8, offset: 272)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5054, file: !192, line: 1077, baseType: !115, size: 32, offset: 288)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5054, file: !192, line: 1084, baseType: !115, size: 32, offset: 320)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5054, file: !192, line: 1091, baseType: !115, size: 32, offset: 352)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5054, file: !192, line: 1098, baseType: !115, size: 32, offset: 384)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5054, file: !192, line: 1105, baseType: !599, size: 8, offset: 416)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5054, file: !192, line: 1112, baseType: !599, size: 8, offset: 424)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5054, file: !192, line: 1120, baseType: !599, size: 8, offset: 432)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5054, file: !192, line: 1128, baseType: !599, size: 8, offset: 440)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5054, file: !192, line: 1136, baseType: !230, size: 32, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5054, file: !192, line: 1146, baseType: !7, size: 32, offset: 480)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5054, file: !192, line: 1154, baseType: !236, size: 32, offset: 512)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5054, file: !192, line: 1159, baseType: !4995, size: 128, offset: 544)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4868, file: !192, line: 1375, baseType: !230, size: 32, offset: 6944)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "override_edid", scope: !4868, file: !192, line: 1377, baseType: !599, size: 8, offset: 6976)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !4868, file: !192, line: 1379, baseType: !289, size: 64, offset: 7040)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !4868, file: !192, line: 1386, baseType: !529, size: 32, offset: 7104)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !4868, file: !192, line: 1394, baseType: !4985, size: 64, offset: 7168)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !4868, file: !192, line: 1398, baseType: !5078, size: 1024, offset: 7232)
!5078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5047, size: 1024, elements: !3634)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !4868, file: !192, line: 1400, baseType: !5080, size: 16, offset: 8256)
!5080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 16, elements: !1742)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !4868, file: !192, line: 1405, baseType: !5082, size: 64, offset: 8288)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !1742)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !4868, file: !192, line: 1410, baseType: !5082, size: 64, offset: 8352)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !4868, file: !192, line: 1421, baseType: !5085, size: 64, offset: 8448)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !5087, line: 695, size: 7552, elements: !5088)
!5087 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5088 = !{!5089, !5090, !5091, !5128, !5129, !5143, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5160, !5161, !5162, !5163, !5195, !5206}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5086, file: !5087, line: 696, baseType: !742, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5086, file: !5087, line: 697, baseType: !7, size: 32, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5086, file: !5087, line: 698, baseType: !5092, size: 64, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5094)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !5087, line: 519, size: 320, elements: !5095)
!5095 = !{!5096, !5109, !5110, !5123, !5124}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5094, file: !5087, line: 529, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!115, !5085, !5100, !115}
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5102, line: 69, size: 128, elements: !5103)
!5102 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5103 = !{!5104, !5105, !5106, !5107}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5101, file: !5102, line: 70, baseType: !1010, size: 16)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5101, file: !5102, line: 71, baseType: !1010, size: 16, offset: 16)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5101, file: !5102, line: 84, baseType: !1010, size: 16, offset: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5101, file: !5102, line: 85, baseType: !5108, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5094, file: !5087, line: 531, baseType: !5097, size: 64, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5094, file: !5087, line: 533, baseType: !5111, size: 64, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!115, !5085, !1009, !431, !338, !1492, !115, !5114}
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5102, line: 135, size: 272, elements: !5116)
!5116 = !{!5117, !5118, !5119}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5115, file: !5102, line: 136, baseType: !1493, size: 8)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5115, file: !5102, line: 137, baseType: !1010, size: 16)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5115, file: !5102, line: 138, baseType: !5120, size: 272)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 272, elements: !5121)
!5121 = !{!5122}
!5122 = !DISubrange(count: 34)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5094, file: !5087, line: 536, baseType: !5111, size: 64, offset: 192)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5094, file: !5087, line: 541, baseType: !5125, size: 64, offset: 256)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!529, !5085}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5086, file: !5087, line: 699, baseType: !296, size: 64, offset: 192)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5086, file: !5087, line: 702, baseType: !5130, size: 64, offset: 256)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5132)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !5087, line: 557, size: 192, elements: !5133)
!5133 = !{!5134, !5138, !5142}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5132, file: !5087, line: 558, baseType: !5135, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5085, !7}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5132, file: !5087, line: 559, baseType: !5139, size: 64, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!115, !5085, !7}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5132, file: !5087, line: 560, baseType: !5135, size: 64, offset: 128)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5086, file: !5087, line: 703, baseType: !5144, size: 192, offset: 320)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5145, line: 30, size: 192, elements: !5146)
!5145 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!5146 = !{!5147, !5148, !5149}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5144, file: !5145, line: 31, baseType: !930)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5144, file: !5145, line: 32, baseType: !909, size: 128)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5144, file: !5145, line: 33, baseType: !1361, size: 64, offset: 128)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5086, file: !5087, line: 704, baseType: !5144, size: 192, offset: 512)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5086, file: !5087, line: 706, baseType: !115, size: 32, offset: 704)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5086, file: !5087, line: 707, baseType: !115, size: 32, offset: 736)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5086, file: !5087, line: 708, baseType: !329, size: 5568, offset: 768)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5086, file: !5087, line: 709, baseType: !297, size: 64, offset: 6336)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5086, file: !5087, line: 713, baseType: !115, size: 32, offset: 6400)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5086, file: !5087, line: 714, baseType: !5157, size: 384, offset: 6432)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !5158)
!5158 = !{!5159}
!5159 = !DISubrange(count: 48)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5086, file: !5087, line: 715, baseType: !1675, size: 192, offset: 6848)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5086, file: !5087, line: 717, baseType: !835, size: 192, offset: 7040)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5086, file: !5087, line: 718, baseType: !307, size: 128, offset: 7232)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5086, file: !5087, line: 720, baseType: !5164, size: 64, offset: 7360)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !5087, line: 618, size: 832, elements: !5166)
!5166 = !{!5167, !5171, !5172, !5176, !5177, !5178, !5179, !5183, !5184, !5187, !5188, !5191, !5194}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5165, file: !5087, line: 619, baseType: !5168, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!115, !5085}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5165, file: !5087, line: 621, baseType: !5168, size: 64, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5165, file: !5087, line: 622, baseType: !5173, size: 64, offset: 128)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{null, !5085, !115}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5165, file: !5087, line: 623, baseType: !5168, size: 64, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5165, file: !5087, line: 624, baseType: !5173, size: 64, offset: 256)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5165, file: !5087, line: 625, baseType: !5168, size: 64, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5165, file: !5087, line: 627, baseType: !5180, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !5085}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5165, file: !5087, line: 628, baseType: !5180, size: 64, offset: 448)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5165, file: !5087, line: 631, baseType: !5185, size: 64, offset: 512)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !5087, line: 631, flags: DIFlagFwdDecl)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5165, file: !5087, line: 632, baseType: !5185, size: 64, offset: 576)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5165, file: !5087, line: 633, baseType: !5189, size: 64, offset: 640)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5087, line: 633, flags: DIFlagFwdDecl)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5165, file: !5087, line: 634, baseType: !5192, size: 64, offset: 704)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5087, line: 634, flags: DIFlagFwdDecl)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5165, file: !5087, line: 635, baseType: !5192, size: 64, offset: 768)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5086, file: !5087, line: 721, baseType: !5196, size: 64, offset: 7424)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5198)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !5087, line: 664, size: 192, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5203, !5204, !5205}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5198, file: !5087, line: 665, baseType: !289, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5198, file: !5087, line: 666, baseType: !115, size: 32, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5198, file: !5087, line: 667, baseType: !1009, size: 16, offset: 96)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5198, file: !5087, line: 668, baseType: !1009, size: 16, offset: 112)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5198, file: !5087, line: 669, baseType: !1009, size: 16, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5198, file: !5087, line: 670, baseType: !1009, size: 16, offset: 144)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5086, file: !5087, line: 723, baseType: !3823, size: 64, offset: 7488)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !4868, file: !192, line: 1427, baseType: !115, size: 32, offset: 8512)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !4868, file: !192, line: 1430, baseType: !7, size: 32, offset: 8544)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !4868, file: !192, line: 1437, baseType: !599, size: 8, offset: 8576)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !4868, file: !192, line: 1443, baseType: !1492, size: 8, offset: 8584)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !4868, file: !192, line: 1446, baseType: !496, size: 64, offset: 8640)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4868, file: !192, line: 1462, baseType: !4979, size: 64, offset: 8704)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !4868, file: !192, line: 1479, baseType: !4721, size: 64, offset: 8768)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !4868, file: !192, line: 1482, baseType: !599, size: 8, offset: 8832)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !4868, file: !192, line: 1484, baseType: !5216, size: 64, offset: 8896)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !192, line: 1663, size: 256, elements: !5218)
!5218 = !{!5219, !5220, !5221, !5222}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5217, file: !192, line: 1664, baseType: !314, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5217, file: !192, line: 1665, baseType: !303, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5217, file: !192, line: 1666, baseType: !115, size: 32, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5217, file: !192, line: 1667, baseType: !5223, size: 64, offset: 160)
!5223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 64, elements: !1470)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !4868, file: !192, line: 1486, baseType: !599, size: 8, offset: 8960)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !4868, file: !192, line: 1490, baseType: !5047, size: 8, offset: 8968)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !4868, file: !192, line: 1490, baseType: !5047, size: 8, offset: 8976)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !4868, file: !192, line: 1493, baseType: !5047, size: 8, offset: 8984)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !4868, file: !192, line: 1493, baseType: !5047, size: 8, offset: 8992)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !4868, file: !192, line: 1496, baseType: !4714, size: 16, offset: 9008)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !4868, file: !192, line: 1496, baseType: !4714, size: 16, offset: 9024)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !4868, file: !192, line: 1505, baseType: !473, size: 64, offset: 9088)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !4868, file: !192, line: 1508, baseType: !5233, size: 96, offset: 9152)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !158, line: 378, size: 96, elements: !5234)
!5234 = !{!5235, !5236}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5233, file: !158, line: 382, baseType: !530, size: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, scope: !5233, file: !158, line: 386, baseType: !5237, size: 64, offset: 32)
!5237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5233, file: !158, line: 386, size: 64, elements: !5238)
!5238 = !{!5239}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5237, file: !158, line: 387, baseType: !5240, size: 64)
!5240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !158, line: 365, size: 64, elements: !5241)
!5241 = !{!5242, !5243, !5244, !5245, !5246}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5240, file: !158, line: 366, baseType: !1493, size: 8)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5240, file: !158, line: 367, baseType: !1493, size: 8, offset: 8)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5240, file: !158, line: 368, baseType: !1010, size: 16, offset: 16)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5240, file: !158, line: 369, baseType: !1010, size: 16, offset: 32)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5240, file: !158, line: 370, baseType: !1010, size: 16, offset: 48)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !4857, file: !300, line: 1199, baseType: !436, size: 64, offset: 320)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !4828, file: !300, line: 583, baseType: !5249, size: 64, offset: 448)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!115, !298, !4384, !5252, !668, !4336}
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !300, line: 71, flags: DIFlagFwdDecl)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !4828, file: !300, line: 602, baseType: !5255, size: 64, offset: 512)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!115, !298, !4384, !5252, !668, !668, !4336}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4828, file: !300, line: 622, baseType: !5259, size: 64, offset: 576)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!115, !298, !4402, !4229}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4828, file: !300, line: 656, baseType: !5263, size: 64, offset: 640)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!5266, !298}
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !300, line: 99, size: 2624, elements: !5268)
!5268 = !{!5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5267, file: !300, line: 101, baseType: !298, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5267, file: !300, line: 108, baseType: !599, size: 8, offset: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5267, file: !300, line: 123, baseType: !599, size: 8, offset: 72)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5267, file: !300, line: 129, baseType: !599, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5267, file: !300, line: 141, baseType: !599, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5267, file: !300, line: 148, baseType: !599, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5267, file: !300, line: 159, baseType: !599, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5267, file: !300, line: 165, baseType: !599, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5267, file: !300, line: 171, baseType: !599, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5267, file: !300, line: 207, baseType: !599, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5267, file: !300, line: 213, baseType: !529, size: 32, offset: 96)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5267, file: !300, line: 219, baseType: !529, size: 32, offset: 128)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5267, file: !300, line: 225, baseType: !529, size: 32, offset: 160)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5267, file: !300, line: 240, baseType: !4492, size: 960, offset: 192)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5267, file: !300, line: 257, baseType: !4492, size: 960, offset: 1152)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5267, file: !300, line: 263, baseType: !4721, size: 64, offset: 2112)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5267, file: !300, line: 272, baseType: !4721, size: 64, offset: 2176)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5267, file: !300, line: 280, baseType: !4721, size: 64, offset: 2240)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5267, file: !300, line: 289, baseType: !4721, size: 64, offset: 2304)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5267, file: !300, line: 297, baseType: !529, size: 32, offset: 2368)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5267, file: !300, line: 305, baseType: !599, size: 8, offset: 2400)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5267, file: !300, line: 314, baseType: !599, size: 8, offset: 2408)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5267, file: !300, line: 325, baseType: !599, size: 8, offset: 2416)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5267, file: !300, line: 382, baseType: !5252, size: 64, offset: 2432)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5267, file: !300, line: 391, baseType: !4741, size: 64, offset: 2496)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5267, file: !300, line: 394, baseType: !4532, size: 64, offset: 2560)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4828, file: !300, line: 666, baseType: !5296, size: 64, offset: 704)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !298, !5266}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4828, file: !300, line: 711, baseType: !5300, size: 64, offset: 768)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!115, !298, !5266, !4402, !4229}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4828, file: !300, line: 733, baseType: !5304, size: 64, offset: 832)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!115, !298, !5307, !4402, !4228}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5267)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4828, file: !300, line: 751, baseType: !5310, size: 64, offset: 896)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!115, !298}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4828, file: !300, line: 762, baseType: !4831, size: 64, offset: 960)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !4828, file: !300, line: 791, baseType: !5315, size: 64, offset: 1024)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!115, !298, !336}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !4828, file: !300, line: 807, baseType: !5319, size: 64, offset: 1088)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!115, !298, !336, !5322}
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !4828, file: !300, line: 829, baseType: !5324, size: 64, offset: 1152)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!5327, !298, !5322}
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4828, file: !300, line: 841, baseType: !5330, size: 64, offset: 1216)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{null, !4767, !5307}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4828, file: !300, line: 868, baseType: !5334, size: 64, offset: 1280)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!529, !298}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4828, file: !300, line: 881, baseType: !5310, size: 64, offset: 1344)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4828, file: !300, line: 889, baseType: !4831, size: 64, offset: 1408)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !4828, file: !300, line: 927, baseType: !5340, size: 64, offset: 1472)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!599, !298, !817, !5343, !599}
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !299, file: !300, line: 1072, baseType: !668, size: 32, offset: 3264)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !299, file: !300, line: 1078, baseType: !5346, size: 64, offset: 3328)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !299, file: !300, line: 1081, baseType: !5348, size: 64, offset: 3392)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5350)
!5350 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !300, line: 76, flags: DIFlagFwdDecl)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !299, file: !300, line: 1084, baseType: !4397, size: 3136, offset: 3456)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !300, line: 1099, baseType: !5266, size: 64, offset: 6592)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !299, file: !300, line: 1116, baseType: !307, size: 128, offset: 6656)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !299, file: !300, line: 1123, baseType: !348, offset: 6784)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !299, file: !300, line: 1139, baseType: !5356, size: 448, offset: 6784)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5357, line: 53, size: 448, elements: !5358)
!5357 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/lizy2001/genbc/linux")
!5358 = !{!5359, !5360, !5361, !5362, !5363, !5373, !5374, !5375, !5376}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5356, file: !5357, line: 54, baseType: !348)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5356, file: !5357, line: 55, baseType: !336, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5356, file: !5357, line: 56, baseType: !599, size: 8, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5356, file: !5357, line: 56, baseType: !599, size: 8, offset: 72)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5356, file: !5357, line: 57, baseType: !5364, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5357, line: 33, size: 384, elements: !5366)
!5366 = !{!5367, !5368, !5369}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5365, file: !5357, line: 34, baseType: !599, size: 8)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5365, file: !5357, line: 35, baseType: !668, size: 32, offset: 32)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5365, file: !5357, line: 36, baseType: !5370, size: 320, offset: 64)
!5370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 320, elements: !5371)
!5371 = !{!5372}
!5372 = !DISubrange(count: 10)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5356, file: !5357, line: 58, baseType: !115, size: 32, offset: 192)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5356, file: !5357, line: 58, baseType: !115, size: 32, offset: 224)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5356, file: !5357, line: 59, baseType: !436, size: 64, offset: 256)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5356, file: !5357, line: 60, baseType: !1621, size: 128, offset: 320)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !299, file: !300, line: 1146, baseType: !7, size: 32, offset: 7232)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !299, file: !300, line: 1153, baseType: !348, offset: 7264)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !299, file: !300, line: 1160, baseType: !297, size: 64, offset: 7296)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !299, file: !300, line: 1167, baseType: !2895, size: 256, offset: 7360)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !299, file: !300, line: 1174, baseType: !5382, size: 64, offset: 7616)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !300, line: 56, flags: DIFlagFwdDecl)
!5384 = !{!0, !5385}
!5385 = !DIGlobalVariableExpression(var: !5386, expr: !DIExpression())
!5386 = distinct !DIGlobalVariable(name: "color_range_name", scope: !2, file: !3, line: 367, type: !5387, isLocal: true, isDefinition: true)
!5387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5328, size: 128, elements: !1742)
!5388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5328, size: 192, elements: !390)
!5389 = !{i32 7, !"Dwarf Version", i32 4}
!5390 = !{i32 2, !"Debug Info Version", i32 3}
!5391 = !{i32 1, !"wchar_size", i32 2}
!5392 = !{i32 1, !"Code Model", i32 2}
!5393 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5394 = distinct !DISubprogram(name: "drm_color_ctm_s31_32_to_qm_n", scope: !3, file: !3, line: 130, type: !5395, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!289, !289, !529, !529}
!5397 = !DILocalVariable(name: "user_input", arg: 1, scope: !5394, file: !3, line: 130, type: !289)
!5398 = !DILocation(line: 130, column: 38, scope: !5394)
!5399 = !DILocalVariable(name: "m", arg: 2, scope: !5394, file: !3, line: 130, type: !529)
!5400 = !DILocation(line: 130, column: 54, scope: !5394)
!5401 = !DILocalVariable(name: "n", arg: 3, scope: !5394, file: !3, line: 130, type: !529)
!5402 = !DILocation(line: 130, column: 61, scope: !5394)
!5403 = !DILocalVariable(name: "mag", scope: !5394, file: !3, line: 132, type: !289)
!5404 = !DILocation(line: 132, column: 6, scope: !5394)
!5405 = !DILocation(line: 132, column: 13, scope: !5394)
!5406 = !DILocation(line: 132, column: 24, scope: !5394)
!5407 = !DILocation(line: 132, column: 49, scope: !5394)
!5408 = !DILocation(line: 132, column: 47, scope: !5394)
!5409 = !DILocation(line: 132, column: 40, scope: !5394)
!5410 = !DILocalVariable(name: "negative", scope: !5394, file: !3, line: 133, type: !599)
!5411 = !DILocation(line: 133, column: 7, scope: !5394)
!5412 = !DILocation(line: 133, column: 21, scope: !5394)
!5413 = !DILocation(line: 133, column: 32, scope: !5394)
!5414 = !DILocation(line: 133, column: 19, scope: !5394)
!5415 = !DILocation(line: 133, column: 18, scope: !5394)
!5416 = !DILocalVariable(name: "val", scope: !5394, file: !3, line: 134, type: !845)
!5417 = !DILocation(line: 134, column: 6, scope: !5394)
!5418 = !DILocalVariable(name: "__ret_warn_on", scope: !5419, file: !3, line: 136, type: !115)
!5419 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 136, column: 2)
!5420 = !DILocation(line: 136, column: 2, scope: !5419)
!5421 = !DILocation(line: 136, column: 2, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 136, column: 2)
!5423 = !DILocation(line: 136, column: 2, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 136, column: 2)
!5425 = !DILocation(line: 136, column: 2, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 136, column: 2)
!5427 = !DILocation(line: 136, column: 2, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 136, column: 2)
!5429 = !{i32 -2140699161, i32 -2140699132, i32 -2140699086, i32 -2140699028, i32 -2140698974, i32 -2140698920, i32 -2140698865, i32 -2140698834}
!5430 = !DILocation(line: 136, column: 2, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 136, column: 2)
!5432 = !{i32 -2140698420, i32 -2140698413, i32 -2140698361, i32 -2140698330, i32 -2140698300}
!5433 = !DILocation(line: 136, column: 2, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 136, column: 2)
!5435 = !DILocalVariable(name: "__UNIQUE_ID___x254", scope: !5436, file: !3, line: 138, type: !289)
!5436 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 138, column: 8)
!5437 = !DILocation(line: 138, column: 8, scope: !5436)
!5438 = !DILocalVariable(name: "__UNIQUE_ID___x252", scope: !5439, file: !3, line: 138, type: !289)
!5439 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 138, column: 8)
!5440 = !DILocation(line: 138, column: 8, scope: !5439)
!5441 = !DILocalVariable(name: "__UNIQUE_ID___y253", scope: !5439, file: !3, line: 138, type: !289)
!5442 = !DILocalVariable(name: "__UNIQUE_ID___y255", scope: !5436, file: !3, line: 138, type: !289)
!5443 = !DILocation(line: 138, column: 6, scope: !5394)
!5444 = !DILocation(line: 141, column: 9, scope: !5394)
!5445 = !DILocation(line: 141, column: 21, scope: !5394)
!5446 = !DILocation(line: 141, column: 20, scope: !5394)
!5447 = !DILocation(line: 141, column: 27, scope: !5394)
!5448 = !DILocation(line: 141, column: 2, scope: !5394)
!5449 = distinct !DISubprogram(name: "drm_crtc_enable_color_mgmt", scope: !3, file: !3, line: 163, type: !5450, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !298, !5452, !599, !5452}
!5452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !295, line: 87, baseType: !7)
!5453 = !DILocalVariable(name: "crtc", arg: 1, scope: !5449, file: !3, line: 163, type: !298)
!5454 = !DILocation(line: 163, column: 50, scope: !5449)
!5455 = !DILocalVariable(name: "degamma_lut_size", arg: 2, scope: !5449, file: !3, line: 164, type: !5452)
!5456 = !DILocation(line: 164, column: 10, scope: !5449)
!5457 = !DILocalVariable(name: "has_ctm", arg: 3, scope: !5449, file: !3, line: 165, type: !599)
!5458 = !DILocation(line: 165, column: 10, scope: !5449)
!5459 = !DILocalVariable(name: "gamma_lut_size", arg: 4, scope: !5449, file: !3, line: 166, type: !5452)
!5460 = !DILocation(line: 166, column: 10, scope: !5449)
!5461 = !DILocalVariable(name: "dev", scope: !5449, file: !3, line: 168, type: !303)
!5462 = !DILocation(line: 168, column: 21, scope: !5449)
!5463 = !DILocation(line: 168, column: 27, scope: !5449)
!5464 = !DILocation(line: 168, column: 33, scope: !5449)
!5465 = !DILocalVariable(name: "config", scope: !5449, file: !3, line: 169, type: !5466)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!5467 = !DILocation(line: 169, column: 26, scope: !5449)
!5468 = !DILocation(line: 169, column: 36, scope: !5449)
!5469 = !DILocation(line: 169, column: 41, scope: !5449)
!5470 = !DILocation(line: 171, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 171, column: 6)
!5472 = !DILocation(line: 171, column: 6, scope: !5449)
!5473 = !DILocation(line: 172, column: 31, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 171, column: 24)
!5475 = !DILocation(line: 172, column: 37, scope: !5474)
!5476 = !DILocation(line: 173, column: 9, scope: !5474)
!5477 = !DILocation(line: 173, column: 17, scope: !5474)
!5478 = !DILocation(line: 172, column: 3, scope: !5474)
!5479 = !DILocation(line: 174, column: 31, scope: !5474)
!5480 = !DILocation(line: 174, column: 37, scope: !5474)
!5481 = !DILocation(line: 175, column: 9, scope: !5474)
!5482 = !DILocation(line: 175, column: 17, scope: !5474)
!5483 = !DILocation(line: 176, column: 9, scope: !5474)
!5484 = !DILocation(line: 174, column: 3, scope: !5474)
!5485 = !DILocation(line: 177, column: 2, scope: !5474)
!5486 = !DILocation(line: 179, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 179, column: 6)
!5488 = !DILocation(line: 179, column: 6, scope: !5449)
!5489 = !DILocation(line: 180, column: 31, scope: !5487)
!5490 = !DILocation(line: 180, column: 37, scope: !5487)
!5491 = !DILocation(line: 181, column: 9, scope: !5487)
!5492 = !DILocation(line: 181, column: 17, scope: !5487)
!5493 = !DILocation(line: 180, column: 3, scope: !5487)
!5494 = !DILocation(line: 183, column: 6, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 183, column: 6)
!5496 = !DILocation(line: 183, column: 6, scope: !5449)
!5497 = !DILocation(line: 184, column: 31, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 183, column: 22)
!5499 = !DILocation(line: 184, column: 37, scope: !5498)
!5500 = !DILocation(line: 185, column: 9, scope: !5498)
!5501 = !DILocation(line: 185, column: 17, scope: !5498)
!5502 = !DILocation(line: 184, column: 3, scope: !5498)
!5503 = !DILocation(line: 186, column: 31, scope: !5498)
!5504 = !DILocation(line: 186, column: 37, scope: !5498)
!5505 = !DILocation(line: 187, column: 9, scope: !5498)
!5506 = !DILocation(line: 187, column: 17, scope: !5498)
!5507 = !DILocation(line: 188, column: 9, scope: !5498)
!5508 = !DILocation(line: 186, column: 3, scope: !5498)
!5509 = !DILocation(line: 189, column: 2, scope: !5498)
!5510 = !DILocation(line: 190, column: 1, scope: !5449)
!5511 = distinct !DISubprogram(name: "drm_mode_crtc_set_gamma_size", scope: !3, file: !3, line: 205, type: !5512, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!115, !298, !115}
!5514 = !DILocalVariable(name: "crtc", arg: 1, scope: !5511, file: !3, line: 205, type: !298)
!5515 = !DILocation(line: 205, column: 51, scope: !5511)
!5516 = !DILocalVariable(name: "gamma_size", arg: 2, scope: !5511, file: !3, line: 206, type: !115)
!5517 = !DILocation(line: 206, column: 10, scope: !5511)
!5518 = !DILocalVariable(name: "r_base", scope: !5511, file: !3, line: 208, type: !5346)
!5519 = !DILocation(line: 208, column: 12, scope: !5511)
!5520 = !DILocalVariable(name: "g_base", scope: !5511, file: !3, line: 208, type: !5346)
!5521 = !DILocation(line: 208, column: 21, scope: !5511)
!5522 = !DILocalVariable(name: "b_base", scope: !5511, file: !3, line: 208, type: !5346)
!5523 = !DILocation(line: 208, column: 30, scope: !5511)
!5524 = !DILocalVariable(name: "i", scope: !5511, file: !3, line: 209, type: !115)
!5525 = !DILocation(line: 209, column: 6, scope: !5511)
!5526 = !DILocation(line: 211, column: 21, scope: !5511)
!5527 = !DILocation(line: 211, column: 2, scope: !5511)
!5528 = !DILocation(line: 211, column: 8, scope: !5511)
!5529 = !DILocation(line: 211, column: 19, scope: !5511)
!5530 = !DILocation(line: 213, column: 30, scope: !5511)
!5531 = !DILocation(line: 213, column: 22, scope: !5511)
!5532 = !DILocation(line: 213, column: 2, scope: !5511)
!5533 = !DILocation(line: 213, column: 8, scope: !5511)
!5534 = !DILocation(line: 213, column: 20, scope: !5511)
!5535 = !DILocation(line: 215, column: 7, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 215, column: 6)
!5537 = !DILocation(line: 215, column: 13, scope: !5536)
!5538 = !DILocation(line: 215, column: 6, scope: !5511)
!5539 = !DILocation(line: 216, column: 3, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 215, column: 26)
!5541 = !DILocation(line: 216, column: 9, scope: !5540)
!5542 = !DILocation(line: 216, column: 20, scope: !5540)
!5543 = !DILocation(line: 217, column: 3, scope: !5540)
!5544 = !DILocation(line: 220, column: 11, scope: !5511)
!5545 = !DILocation(line: 220, column: 17, scope: !5511)
!5546 = !DILocation(line: 220, column: 9, scope: !5511)
!5547 = !DILocation(line: 221, column: 11, scope: !5511)
!5548 = !DILocation(line: 221, column: 20, scope: !5511)
!5549 = !DILocation(line: 221, column: 18, scope: !5511)
!5550 = !DILocation(line: 221, column: 9, scope: !5511)
!5551 = !DILocation(line: 222, column: 11, scope: !5511)
!5552 = !DILocation(line: 222, column: 20, scope: !5511)
!5553 = !DILocation(line: 222, column: 18, scope: !5511)
!5554 = !DILocation(line: 222, column: 9, scope: !5511)
!5555 = !DILocation(line: 223, column: 9, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 223, column: 2)
!5557 = !DILocation(line: 223, column: 7, scope: !5556)
!5558 = !DILocation(line: 223, column: 14, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 223, column: 2)
!5560 = !DILocation(line: 223, column: 18, scope: !5559)
!5561 = !DILocation(line: 223, column: 16, scope: !5559)
!5562 = !DILocation(line: 223, column: 2, scope: !5556)
!5563 = !DILocation(line: 224, column: 15, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 223, column: 35)
!5565 = !DILocation(line: 224, column: 17, scope: !5564)
!5566 = !DILocation(line: 224, column: 3, scope: !5564)
!5567 = !DILocation(line: 224, column: 10, scope: !5564)
!5568 = !DILocation(line: 224, column: 13, scope: !5564)
!5569 = !DILocation(line: 225, column: 15, scope: !5564)
!5570 = !DILocation(line: 225, column: 17, scope: !5564)
!5571 = !DILocation(line: 225, column: 3, scope: !5564)
!5572 = !DILocation(line: 225, column: 10, scope: !5564)
!5573 = !DILocation(line: 225, column: 13, scope: !5564)
!5574 = !DILocation(line: 226, column: 15, scope: !5564)
!5575 = !DILocation(line: 226, column: 17, scope: !5564)
!5576 = !DILocation(line: 226, column: 3, scope: !5564)
!5577 = !DILocation(line: 226, column: 10, scope: !5564)
!5578 = !DILocation(line: 226, column: 13, scope: !5564)
!5579 = !DILocation(line: 227, column: 2, scope: !5564)
!5580 = !DILocation(line: 223, column: 31, scope: !5559)
!5581 = !DILocation(line: 223, column: 2, scope: !5559)
!5582 = distinct !{!5582, !5562, !5583}
!5583 = !DILocation(line: 227, column: 2, scope: !5556)
!5584 = !DILocation(line: 230, column: 2, scope: !5511)
!5585 = !DILocation(line: 231, column: 1, scope: !5511)
!5586 = distinct !DISubprogram(name: "kcalloc", scope: !277, file: !277, line: 601, type: !5587, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!296, !436, !436, !294}
!5589 = !DILocalVariable(name: "n", arg: 1, scope: !5586, file: !277, line: 601, type: !436)
!5590 = !DILocation(line: 601, column: 36, scope: !5586)
!5591 = !DILocalVariable(name: "size", arg: 2, scope: !5586, file: !277, line: 601, type: !436)
!5592 = !DILocation(line: 601, column: 46, scope: !5586)
!5593 = !DILocalVariable(name: "flags", arg: 3, scope: !5586, file: !277, line: 601, type: !294)
!5594 = !DILocation(line: 601, column: 58, scope: !5586)
!5595 = !DILocation(line: 603, column: 23, scope: !5586)
!5596 = !DILocation(line: 603, column: 26, scope: !5586)
!5597 = !DILocation(line: 603, column: 32, scope: !5586)
!5598 = !DILocation(line: 603, column: 38, scope: !5586)
!5599 = !DILocation(line: 603, column: 9, scope: !5586)
!5600 = !DILocation(line: 603, column: 2, scope: !5586)
!5601 = distinct !DISubprogram(name: "drm_mode_gamma_set_ioctl", scope: !3, file: !3, line: 248, type: !4253, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5602 = !DILocalVariable(name: "addr", arg: 1, scope: !5603, file: !5604, line: 138, type: !2322)
!5603 = distinct !DISubprogram(name: "check_copy_size", scope: !5604, file: !5604, line: 138, type: !5605, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5604 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!599, !2322, !436, !599}
!5607 = !DILocation(line: 138, column: 29, scope: !5603, inlinedAt: !5608)
!5608 = distinct !DILocation(line: 191, column: 6, scope: !5609, inlinedAt: !5614)
!5609 = distinct !DILexicalBlock(scope: !5611, file: !5610, line: 191, column: 6)
!5610 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5611 = distinct !DISubprogram(name: "copy_from_user", scope: !5610, file: !5610, line: 189, type: !5612, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!297, !296, !2322, !297}
!5614 = distinct !DILocation(line: 288, column: 6, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 288, column: 6)
!5616 = !DILocalVariable(name: "bytes", arg: 2, scope: !5603, file: !5604, line: 138, type: !436)
!5617 = !DILocation(line: 138, column: 42, scope: !5603, inlinedAt: !5608)
!5618 = !DILocalVariable(name: "is_source", arg: 3, scope: !5603, file: !5604, line: 138, type: !599)
!5619 = !DILocation(line: 138, column: 54, scope: !5603, inlinedAt: !5608)
!5620 = !DILocalVariable(name: "sz", scope: !5603, file: !5604, line: 140, type: !115)
!5621 = !DILocation(line: 140, column: 6, scope: !5603, inlinedAt: !5608)
!5622 = !DILocalVariable(name: "__ret_warn_on", scope: !5623, file: !5604, line: 150, type: !115)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !5604, line: 150, column: 6)
!5624 = distinct !DILexicalBlock(scope: !5603, file: !5604, line: 150, column: 6)
!5625 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5608)
!5626 = !DILocalVariable(name: "to", arg: 1, scope: !5611, file: !5610, line: 189, type: !296)
!5627 = !DILocation(line: 189, column: 22, scope: !5611, inlinedAt: !5614)
!5628 = !DILocalVariable(name: "from", arg: 2, scope: !5611, file: !5610, line: 189, type: !2322)
!5629 = !DILocation(line: 189, column: 45, scope: !5611, inlinedAt: !5614)
!5630 = !DILocalVariable(name: "n", arg: 3, scope: !5611, file: !5610, line: 189, type: !297)
!5631 = !DILocation(line: 189, column: 65, scope: !5611, inlinedAt: !5614)
!5632 = !DILocation(line: 138, column: 29, scope: !5603, inlinedAt: !5633)
!5633 = distinct !DILocation(line: 191, column: 6, scope: !5609, inlinedAt: !5634)
!5634 = distinct !DILocation(line: 282, column: 6, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 282, column: 6)
!5636 = !DILocation(line: 138, column: 42, scope: !5603, inlinedAt: !5633)
!5637 = !DILocation(line: 138, column: 54, scope: !5603, inlinedAt: !5633)
!5638 = !DILocation(line: 140, column: 6, scope: !5603, inlinedAt: !5633)
!5639 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5633)
!5640 = !DILocation(line: 189, column: 22, scope: !5611, inlinedAt: !5634)
!5641 = !DILocation(line: 189, column: 45, scope: !5611, inlinedAt: !5634)
!5642 = !DILocation(line: 189, column: 65, scope: !5611, inlinedAt: !5634)
!5643 = !DILocation(line: 138, column: 29, scope: !5603, inlinedAt: !5644)
!5644 = distinct !DILocation(line: 191, column: 6, scope: !5609, inlinedAt: !5645)
!5645 = distinct !DILocation(line: 276, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 276, column: 6)
!5647 = !DILocation(line: 138, column: 42, scope: !5603, inlinedAt: !5644)
!5648 = !DILocation(line: 138, column: 54, scope: !5603, inlinedAt: !5644)
!5649 = !DILocation(line: 140, column: 6, scope: !5603, inlinedAt: !5644)
!5650 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5644)
!5651 = !DILocation(line: 189, column: 22, scope: !5611, inlinedAt: !5645)
!5652 = !DILocation(line: 189, column: 45, scope: !5611, inlinedAt: !5645)
!5653 = !DILocation(line: 189, column: 65, scope: !5611, inlinedAt: !5645)
!5654 = !DILocalVariable(name: "dev", arg: 1, scope: !5601, file: !3, line: 248, type: !303)
!5655 = !DILocation(line: 248, column: 49, scope: !5601)
!5656 = !DILocalVariable(name: "data", arg: 2, scope: !5601, file: !3, line: 249, type: !296)
!5657 = !DILocation(line: 249, column: 15, scope: !5601)
!5658 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5601, file: !3, line: 249, type: !4108)
!5659 = !DILocation(line: 249, column: 38, scope: !5601)
!5660 = !DILocalVariable(name: "crtc_lut", scope: !5601, file: !3, line: 251, type: !5661)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_crtc_lut", file: !215, line: 619, size: 256, elements: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_id", scope: !5662, file: !215, line: 620, baseType: !530, size: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5662, file: !215, line: 621, baseType: !530, size: 32, offset: 32)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !5662, file: !215, line: 624, baseType: !291, size: 64, offset: 64)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !5662, file: !215, line: 625, baseType: !291, size: 64, offset: 128)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !5662, file: !215, line: 626, baseType: !291, size: 64, offset: 192)
!5669 = !DILocation(line: 251, column: 28, scope: !5601)
!5670 = !DILocation(line: 251, column: 39, scope: !5601)
!5671 = !DILocalVariable(name: "crtc", scope: !5601, file: !3, line: 252, type: !298)
!5672 = !DILocation(line: 252, column: 19, scope: !5601)
!5673 = !DILocalVariable(name: "r_base", scope: !5601, file: !3, line: 253, type: !296)
!5674 = !DILocation(line: 253, column: 8, scope: !5601)
!5675 = !DILocalVariable(name: "g_base", scope: !5601, file: !3, line: 253, type: !296)
!5676 = !DILocation(line: 253, column: 17, scope: !5601)
!5677 = !DILocalVariable(name: "b_base", scope: !5601, file: !3, line: 253, type: !296)
!5678 = !DILocation(line: 253, column: 26, scope: !5601)
!5679 = !DILocalVariable(name: "size", scope: !5601, file: !3, line: 254, type: !115)
!5680 = !DILocation(line: 254, column: 6, scope: !5601)
!5681 = !DILocalVariable(name: "ctx", scope: !5601, file: !3, line: 255, type: !4337)
!5682 = !DILocation(line: 255, column: 33, scope: !5601)
!5683 = !DILocalVariable(name: "ret", scope: !5601, file: !3, line: 256, type: !115)
!5684 = !DILocation(line: 256, column: 6, scope: !5601)
!5685 = !DILocation(line: 258, column: 30, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 258, column: 6)
!5687 = !DILocation(line: 258, column: 7, scope: !5686)
!5688 = !DILocation(line: 258, column: 6, scope: !5601)
!5689 = !DILocation(line: 259, column: 3, scope: !5686)
!5690 = !DILocation(line: 261, column: 23, scope: !5601)
!5691 = !DILocation(line: 261, column: 28, scope: !5601)
!5692 = !DILocation(line: 261, column: 39, scope: !5601)
!5693 = !DILocation(line: 261, column: 49, scope: !5601)
!5694 = !DILocation(line: 261, column: 9, scope: !5601)
!5695 = !DILocation(line: 261, column: 7, scope: !5601)
!5696 = !DILocation(line: 262, column: 7, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 262, column: 6)
!5698 = !DILocation(line: 262, column: 6, scope: !5601)
!5699 = !DILocation(line: 263, column: 3, scope: !5697)
!5700 = !DILocation(line: 265, column: 6, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 265, column: 6)
!5702 = !DILocation(line: 265, column: 12, scope: !5701)
!5703 = !DILocation(line: 265, column: 19, scope: !5701)
!5704 = !DILocation(line: 265, column: 29, scope: !5701)
!5705 = !DILocation(line: 265, column: 6, scope: !5601)
!5706 = !DILocation(line: 266, column: 3, scope: !5701)
!5707 = !DILocation(line: 269, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 269, column: 6)
!5709 = !DILocation(line: 269, column: 16, scope: !5708)
!5710 = !DILocation(line: 269, column: 30, scope: !5708)
!5711 = !DILocation(line: 269, column: 36, scope: !5708)
!5712 = !DILocation(line: 269, column: 27, scope: !5708)
!5713 = !DILocation(line: 269, column: 6, scope: !5601)
!5714 = !DILocation(line: 270, column: 3, scope: !5708)
!5715 = !DILocation(line: 272, column: 2, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 272, column: 2)
!5717 = !DILocation(line: 272, column: 2, scope: !5601)
!5718 = !DILabel(scope: !5601, name: "modeset_lock_retry", file: !3, line: 272)
!5719 = !DILocation(line: 272, column: 2, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 272, column: 2)
!5721 = !DILocation(line: 274, column: 9, scope: !5601)
!5722 = !DILocation(line: 274, column: 19, scope: !5601)
!5723 = !DILocation(line: 274, column: 30, scope: !5601)
!5724 = !DILocation(line: 274, column: 7, scope: !5601)
!5725 = !DILocation(line: 275, column: 11, scope: !5601)
!5726 = !DILocation(line: 275, column: 17, scope: !5601)
!5727 = !DILocation(line: 275, column: 9, scope: !5601)
!5728 = !DILocation(line: 276, column: 21, scope: !5646)
!5729 = !DILocation(line: 276, column: 59, scope: !5646)
!5730 = !DILocation(line: 276, column: 69, scope: !5646)
!5731 = !DILocation(line: 276, column: 29, scope: !5646)
!5732 = !DILocation(line: 276, column: 74, scope: !5646)
!5733 = !DILocation(line: 191, column: 6, scope: !5609, inlinedAt: !5645)
!5734 = !DILocation(line: 141, column: 6, scope: !5735, inlinedAt: !5644)
!5735 = distinct !DILexicalBlock(scope: !5603, file: !5604, line: 141, column: 6)
!5736 = !DILocation(line: 0, scope: !5735, inlinedAt: !5644)
!5737 = !DILocation(line: 141, column: 6, scope: !5603, inlinedAt: !5644)
!5738 = !DILocation(line: 142, column: 29, scope: !5739, inlinedAt: !5644)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !5604, line: 142, column: 7)
!5740 = distinct !DILexicalBlock(scope: !5735, file: !5604, line: 141, column: 39)
!5741 = !DILocation(line: 142, column: 8, scope: !5739, inlinedAt: !5644)
!5742 = !DILocation(line: 142, column: 7, scope: !5740, inlinedAt: !5644)
!5743 = !DILocation(line: 143, column: 18, scope: !5739, inlinedAt: !5644)
!5744 = !DILocation(line: 143, column: 22, scope: !5739, inlinedAt: !5644)
!5745 = !DILocation(line: 143, column: 4, scope: !5739, inlinedAt: !5644)
!5746 = !DILocation(line: 144, column: 12, scope: !5747, inlinedAt: !5644)
!5747 = distinct !DILexicalBlock(scope: !5739, file: !5604, line: 144, column: 12)
!5748 = !DILocation(line: 144, column: 12, scope: !5739, inlinedAt: !5644)
!5749 = !DILocation(line: 145, column: 4, scope: !5747, inlinedAt: !5644)
!5750 = !DILocation(line: 147, column: 4, scope: !5747, inlinedAt: !5644)
!5751 = !DILocation(line: 148, column: 3, scope: !5740, inlinedAt: !5644)
!5752 = !DILocation(line: 150, column: 6, scope: !5753, inlinedAt: !5644)
!5753 = distinct !DILexicalBlock(scope: !5623, file: !5604, line: 150, column: 6)
!5754 = !DILocation(line: 150, column: 6, scope: !5755, inlinedAt: !5644)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !5604, line: 150, column: 6)
!5756 = distinct !DILexicalBlock(scope: !5753, file: !5604, line: 150, column: 6)
!5757 = !{i32 -2145556499, i32 -2145556470, i32 -2145556424, i32 -2145556366, i32 -2145556312, i32 -2145556258, i32 -2145556203, i32 -2145556172}
!5758 = !DILocation(line: 150, column: 6, scope: !5759, inlinedAt: !5644)
!5759 = distinct !DILexicalBlock(scope: !5756, file: !5604, line: 150, column: 6)
!5760 = !{i32 -2145555752, i32 -2145555745, i32 -2145555693, i32 -2145555662, i32 -2145555632}
!5761 = !DILocation(line: 150, column: 6, scope: !5756, inlinedAt: !5644)
!5762 = !DILocation(line: 150, column: 6, scope: !5624, inlinedAt: !5644)
!5763 = !DILocation(line: 150, column: 6, scope: !5603, inlinedAt: !5644)
!5764 = !DILocation(line: 151, column: 3, scope: !5624, inlinedAt: !5644)
!5765 = !DILocation(line: 152, column: 20, scope: !5603, inlinedAt: !5644)
!5766 = !DILocation(line: 152, column: 26, scope: !5603, inlinedAt: !5644)
!5767 = !DILocation(line: 152, column: 33, scope: !5603, inlinedAt: !5644)
!5768 = !DILocation(line: 152, column: 2, scope: !5603, inlinedAt: !5644)
!5769 = !DILocation(line: 153, column: 2, scope: !5603, inlinedAt: !5644)
!5770 = !DILocation(line: 154, column: 1, scope: !5603, inlinedAt: !5644)
!5771 = !DILocation(line: 191, column: 6, scope: !5611, inlinedAt: !5645)
!5772 = !DILocation(line: 192, column: 23, scope: !5609, inlinedAt: !5645)
!5773 = !DILocation(line: 192, column: 27, scope: !5609, inlinedAt: !5645)
!5774 = !DILocation(line: 192, column: 33, scope: !5609, inlinedAt: !5645)
!5775 = !DILocation(line: 192, column: 7, scope: !5609, inlinedAt: !5645)
!5776 = !DILocation(line: 192, column: 5, scope: !5609, inlinedAt: !5645)
!5777 = !DILocation(line: 192, column: 3, scope: !5609, inlinedAt: !5645)
!5778 = !DILocation(line: 193, column: 9, scope: !5611, inlinedAt: !5645)
!5779 = !DILocation(line: 276, column: 6, scope: !5646)
!5780 = !DILocation(line: 276, column: 6, scope: !5601)
!5781 = !DILocation(line: 277, column: 7, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 276, column: 81)
!5783 = !DILocation(line: 278, column: 3, scope: !5782)
!5784 = !DILocation(line: 281, column: 11, scope: !5601)
!5785 = !DILocation(line: 281, column: 20, scope: !5601)
!5786 = !DILocation(line: 281, column: 18, scope: !5601)
!5787 = !DILocation(line: 281, column: 9, scope: !5601)
!5788 = !DILocation(line: 282, column: 21, scope: !5635)
!5789 = !DILocation(line: 282, column: 59, scope: !5635)
!5790 = !DILocation(line: 282, column: 69, scope: !5635)
!5791 = !DILocation(line: 282, column: 29, scope: !5635)
!5792 = !DILocation(line: 282, column: 76, scope: !5635)
!5793 = !DILocation(line: 191, column: 6, scope: !5609, inlinedAt: !5634)
!5794 = !DILocation(line: 141, column: 6, scope: !5735, inlinedAt: !5633)
!5795 = !DILocation(line: 0, scope: !5735, inlinedAt: !5633)
!5796 = !DILocation(line: 141, column: 6, scope: !5603, inlinedAt: !5633)
!5797 = !DILocation(line: 142, column: 29, scope: !5739, inlinedAt: !5633)
!5798 = !DILocation(line: 142, column: 8, scope: !5739, inlinedAt: !5633)
!5799 = !DILocation(line: 142, column: 7, scope: !5740, inlinedAt: !5633)
!5800 = !DILocation(line: 143, column: 18, scope: !5739, inlinedAt: !5633)
!5801 = !DILocation(line: 143, column: 22, scope: !5739, inlinedAt: !5633)
!5802 = !DILocation(line: 143, column: 4, scope: !5739, inlinedAt: !5633)
!5803 = !DILocation(line: 144, column: 12, scope: !5747, inlinedAt: !5633)
!5804 = !DILocation(line: 144, column: 12, scope: !5739, inlinedAt: !5633)
!5805 = !DILocation(line: 145, column: 4, scope: !5747, inlinedAt: !5633)
!5806 = !DILocation(line: 147, column: 4, scope: !5747, inlinedAt: !5633)
!5807 = !DILocation(line: 148, column: 3, scope: !5740, inlinedAt: !5633)
!5808 = !DILocation(line: 150, column: 6, scope: !5753, inlinedAt: !5633)
!5809 = !DILocation(line: 150, column: 6, scope: !5755, inlinedAt: !5633)
!5810 = !DILocation(line: 150, column: 6, scope: !5759, inlinedAt: !5633)
!5811 = !DILocation(line: 150, column: 6, scope: !5756, inlinedAt: !5633)
!5812 = !DILocation(line: 150, column: 6, scope: !5624, inlinedAt: !5633)
!5813 = !DILocation(line: 150, column: 6, scope: !5603, inlinedAt: !5633)
!5814 = !DILocation(line: 151, column: 3, scope: !5624, inlinedAt: !5633)
!5815 = !DILocation(line: 152, column: 20, scope: !5603, inlinedAt: !5633)
!5816 = !DILocation(line: 152, column: 26, scope: !5603, inlinedAt: !5633)
!5817 = !DILocation(line: 152, column: 33, scope: !5603, inlinedAt: !5633)
!5818 = !DILocation(line: 152, column: 2, scope: !5603, inlinedAt: !5633)
!5819 = !DILocation(line: 153, column: 2, scope: !5603, inlinedAt: !5633)
!5820 = !DILocation(line: 154, column: 1, scope: !5603, inlinedAt: !5633)
!5821 = !DILocation(line: 191, column: 6, scope: !5611, inlinedAt: !5634)
!5822 = !DILocation(line: 192, column: 23, scope: !5609, inlinedAt: !5634)
!5823 = !DILocation(line: 192, column: 27, scope: !5609, inlinedAt: !5634)
!5824 = !DILocation(line: 192, column: 33, scope: !5609, inlinedAt: !5634)
!5825 = !DILocation(line: 192, column: 7, scope: !5609, inlinedAt: !5634)
!5826 = !DILocation(line: 192, column: 5, scope: !5609, inlinedAt: !5634)
!5827 = !DILocation(line: 192, column: 3, scope: !5609, inlinedAt: !5634)
!5828 = !DILocation(line: 193, column: 9, scope: !5611, inlinedAt: !5634)
!5829 = !DILocation(line: 282, column: 6, scope: !5635)
!5830 = !DILocation(line: 282, column: 6, scope: !5601)
!5831 = !DILocation(line: 283, column: 7, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 282, column: 83)
!5833 = !DILocation(line: 284, column: 3, scope: !5832)
!5834 = !DILocation(line: 287, column: 11, scope: !5601)
!5835 = !DILocation(line: 287, column: 20, scope: !5601)
!5836 = !DILocation(line: 287, column: 18, scope: !5601)
!5837 = !DILocation(line: 287, column: 9, scope: !5601)
!5838 = !DILocation(line: 288, column: 21, scope: !5615)
!5839 = !DILocation(line: 288, column: 59, scope: !5615)
!5840 = !DILocation(line: 288, column: 69, scope: !5615)
!5841 = !DILocation(line: 288, column: 29, scope: !5615)
!5842 = !DILocation(line: 288, column: 75, scope: !5615)
!5843 = !DILocation(line: 191, column: 6, scope: !5609, inlinedAt: !5614)
!5844 = !DILocation(line: 141, column: 6, scope: !5735, inlinedAt: !5608)
!5845 = !DILocation(line: 0, scope: !5735, inlinedAt: !5608)
!5846 = !DILocation(line: 141, column: 6, scope: !5603, inlinedAt: !5608)
!5847 = !DILocation(line: 142, column: 29, scope: !5739, inlinedAt: !5608)
!5848 = !DILocation(line: 142, column: 8, scope: !5739, inlinedAt: !5608)
!5849 = !DILocation(line: 142, column: 7, scope: !5740, inlinedAt: !5608)
!5850 = !DILocation(line: 143, column: 18, scope: !5739, inlinedAt: !5608)
!5851 = !DILocation(line: 143, column: 22, scope: !5739, inlinedAt: !5608)
!5852 = !DILocation(line: 143, column: 4, scope: !5739, inlinedAt: !5608)
!5853 = !DILocation(line: 144, column: 12, scope: !5747, inlinedAt: !5608)
!5854 = !DILocation(line: 144, column: 12, scope: !5739, inlinedAt: !5608)
!5855 = !DILocation(line: 145, column: 4, scope: !5747, inlinedAt: !5608)
!5856 = !DILocation(line: 147, column: 4, scope: !5747, inlinedAt: !5608)
!5857 = !DILocation(line: 148, column: 3, scope: !5740, inlinedAt: !5608)
!5858 = !DILocation(line: 150, column: 6, scope: !5753, inlinedAt: !5608)
!5859 = !DILocation(line: 150, column: 6, scope: !5755, inlinedAt: !5608)
!5860 = !DILocation(line: 150, column: 6, scope: !5759, inlinedAt: !5608)
!5861 = !DILocation(line: 150, column: 6, scope: !5756, inlinedAt: !5608)
!5862 = !DILocation(line: 150, column: 6, scope: !5624, inlinedAt: !5608)
!5863 = !DILocation(line: 150, column: 6, scope: !5603, inlinedAt: !5608)
!5864 = !DILocation(line: 151, column: 3, scope: !5624, inlinedAt: !5608)
!5865 = !DILocation(line: 152, column: 20, scope: !5603, inlinedAt: !5608)
!5866 = !DILocation(line: 152, column: 26, scope: !5603, inlinedAt: !5608)
!5867 = !DILocation(line: 152, column: 33, scope: !5603, inlinedAt: !5608)
!5868 = !DILocation(line: 152, column: 2, scope: !5603, inlinedAt: !5608)
!5869 = !DILocation(line: 153, column: 2, scope: !5603, inlinedAt: !5608)
!5870 = !DILocation(line: 154, column: 1, scope: !5603, inlinedAt: !5608)
!5871 = !DILocation(line: 191, column: 6, scope: !5611, inlinedAt: !5614)
!5872 = !DILocation(line: 192, column: 23, scope: !5609, inlinedAt: !5614)
!5873 = !DILocation(line: 192, column: 27, scope: !5609, inlinedAt: !5614)
!5874 = !DILocation(line: 192, column: 33, scope: !5609, inlinedAt: !5614)
!5875 = !DILocation(line: 192, column: 7, scope: !5609, inlinedAt: !5614)
!5876 = !DILocation(line: 192, column: 5, scope: !5609, inlinedAt: !5614)
!5877 = !DILocation(line: 192, column: 3, scope: !5609, inlinedAt: !5614)
!5878 = !DILocation(line: 193, column: 9, scope: !5611, inlinedAt: !5614)
!5879 = !DILocation(line: 288, column: 6, scope: !5615)
!5880 = !DILocation(line: 288, column: 6, scope: !5601)
!5881 = !DILocation(line: 289, column: 7, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 288, column: 82)
!5883 = !DILocation(line: 290, column: 3, scope: !5882)
!5884 = !DILocation(line: 293, column: 8, scope: !5601)
!5885 = !DILocation(line: 293, column: 14, scope: !5601)
!5886 = !DILocation(line: 293, column: 21, scope: !5601)
!5887 = !DILocation(line: 293, column: 31, scope: !5601)
!5888 = !DILocation(line: 293, column: 37, scope: !5601)
!5889 = !DILocation(line: 293, column: 45, scope: !5601)
!5890 = !DILocation(line: 293, column: 53, scope: !5601)
!5891 = !DILocation(line: 294, column: 10, scope: !5601)
!5892 = !DILocation(line: 294, column: 16, scope: !5601)
!5893 = !DILocation(line: 293, column: 6, scope: !5601)
!5894 = !DILocation(line: 293, column: 2, scope: !5601)
!5895 = !DILabel(scope: !5601, name: "out", file: !3, line: 296)
!5896 = !DILocation(line: 296, column: 1, scope: !5601)
!5897 = !DILabel(scope: !5601, name: "modeset_lock_fail", file: !3, line: 297)
!5898 = !DILocation(line: 297, column: 2, scope: !5601)
!5899 = !DILocation(line: 297, column: 2, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 297, column: 2)
!5901 = !DILocation(line: 297, column: 2, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 297, column: 2)
!5903 = !DILocation(line: 297, column: 2, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 297, column: 2)
!5905 = !DILocation(line: 297, column: 2, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 297, column: 2)
!5907 = !DILocation(line: 298, column: 9, scope: !5601)
!5908 = !DILocation(line: 298, column: 2, scope: !5601)
!5909 = !DILocation(line: 300, column: 1, scope: !5601)
!5910 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !244, file: !244, line: 690, type: !5911, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!599, !5913, !243}
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!5915 = !DILocalVariable(name: "dev", arg: 1, scope: !5910, file: !244, line: 690, type: !5913)
!5916 = !DILocation(line: 690, column: 68, scope: !5910)
!5917 = !DILocalVariable(name: "feature", arg: 2, scope: !5910, file: !244, line: 691, type: !243)
!5918 = !DILocation(line: 691, column: 32, scope: !5910)
!5919 = !DILocation(line: 693, column: 37, scope: !5910)
!5920 = !DILocation(line: 693, column: 42, scope: !5910)
!5921 = !DILocation(line: 693, column: 9, scope: !5910)
!5922 = !DILocation(line: 693, column: 2, scope: !5910)
!5923 = distinct !DISubprogram(name: "drm_crtc_find", scope: !300, file: !300, line: 1250, type: !5924, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!298, !303, !4108, !668}
!5926 = !DILocalVariable(name: "dev", arg: 1, scope: !5923, file: !300, line: 1250, type: !303)
!5927 = !DILocation(line: 1250, column: 65, scope: !5923)
!5928 = !DILocalVariable(name: "file_priv", arg: 2, scope: !5923, file: !300, line: 1251, type: !4108)
!5929 = !DILocation(line: 1251, column: 20, scope: !5923)
!5930 = !DILocalVariable(name: "id", arg: 3, scope: !5923, file: !300, line: 1252, type: !668)
!5931 = !DILocation(line: 1252, column: 12, scope: !5923)
!5932 = !DILocalVariable(name: "mo", scope: !5923, file: !300, line: 1254, type: !5933)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!5934 = !DILocation(line: 1254, column: 26, scope: !5923)
!5935 = !DILocation(line: 1255, column: 28, scope: !5923)
!5936 = !DILocation(line: 1255, column: 33, scope: !5923)
!5937 = !DILocation(line: 1255, column: 44, scope: !5923)
!5938 = !DILocation(line: 1255, column: 7, scope: !5923)
!5939 = !DILocation(line: 1255, column: 5, scope: !5923)
!5940 = !DILocation(line: 1256, column: 9, scope: !5923)
!5941 = !DILocalVariable(name: "__mptr", scope: !5942, file: !300, line: 1256, type: !296)
!5942 = distinct !DILexicalBlock(scope: !5923, file: !300, line: 1256, column: 14)
!5943 = !DILocation(line: 1256, column: 14, scope: !5942)
!5944 = !DILocation(line: 1256, column: 14, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5942, file: !300, line: 1256, column: 14)
!5946 = !DILocation(line: 1256, column: 2, scope: !5923)
!5947 = distinct !DISubprogram(name: "drm_drv_uses_atomic_modeset", scope: !244, file: !244, line: 704, type: !5948, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{!599, !303}
!5950 = !DILocalVariable(name: "dev", arg: 1, scope: !5947, file: !244, line: 704, type: !303)
!5951 = !DILocation(line: 704, column: 67, scope: !5947)
!5952 = !DILocation(line: 706, column: 32, scope: !5947)
!5953 = !DILocation(line: 706, column: 9, scope: !5947)
!5954 = !DILocation(line: 706, column: 52, scope: !5947)
!5955 = !DILocation(line: 707, column: 4, scope: !5947)
!5956 = !DILocation(line: 707, column: 9, scope: !5947)
!5957 = !DILocation(line: 707, column: 21, scope: !5947)
!5958 = !DILocation(line: 707, column: 27, scope: !5947)
!5959 = !DILocation(line: 707, column: 30, scope: !5947)
!5960 = !DILocation(line: 707, column: 35, scope: !5947)
!5961 = !DILocation(line: 707, column: 47, scope: !5947)
!5962 = !DILocation(line: 707, column: 54, scope: !5947)
!5963 = !DILocation(line: 707, column: 68, scope: !5947)
!5964 = !DILocation(line: 0, scope: !5947)
!5965 = !DILocation(line: 706, column: 2, scope: !5947)
!5966 = distinct !DISubprogram(name: "drm_mode_gamma_get_ioctl", scope: !3, file: !3, line: 317, type: !4253, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5967 = !DILocation(line: 138, column: 29, scope: !5603, inlinedAt: !5968)
!5968 = distinct !DILocation(line: 199, column: 6, scope: !5969, inlinedAt: !5971)
!5969 = distinct !DILexicalBlock(scope: !5970, file: !5610, line: 199, column: 6)
!5970 = distinct !DISubprogram(name: "copy_to_user", scope: !5610, file: !5610, line: 197, type: !5612, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!5971 = distinct !DILocation(line: 352, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 352, column: 6)
!5973 = !DILocation(line: 138, column: 42, scope: !5603, inlinedAt: !5968)
!5974 = !DILocation(line: 138, column: 54, scope: !5603, inlinedAt: !5968)
!5975 = !DILocation(line: 140, column: 6, scope: !5603, inlinedAt: !5968)
!5976 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5968)
!5977 = !DILocalVariable(name: "to", arg: 1, scope: !5970, file: !5610, line: 197, type: !296)
!5978 = !DILocation(line: 197, column: 27, scope: !5970, inlinedAt: !5971)
!5979 = !DILocalVariable(name: "from", arg: 2, scope: !5970, file: !5610, line: 197, type: !2322)
!5980 = !DILocation(line: 197, column: 43, scope: !5970, inlinedAt: !5971)
!5981 = !DILocalVariable(name: "n", arg: 3, scope: !5970, file: !5610, line: 197, type: !297)
!5982 = !DILocation(line: 197, column: 63, scope: !5970, inlinedAt: !5971)
!5983 = !DILocation(line: 138, column: 29, scope: !5603, inlinedAt: !5984)
!5984 = distinct !DILocation(line: 199, column: 6, scope: !5969, inlinedAt: !5985)
!5985 = distinct !DILocation(line: 346, column: 6, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 346, column: 6)
!5987 = !DILocation(line: 138, column: 42, scope: !5603, inlinedAt: !5984)
!5988 = !DILocation(line: 138, column: 54, scope: !5603, inlinedAt: !5984)
!5989 = !DILocation(line: 140, column: 6, scope: !5603, inlinedAt: !5984)
!5990 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5984)
!5991 = !DILocation(line: 197, column: 27, scope: !5970, inlinedAt: !5985)
!5992 = !DILocation(line: 197, column: 43, scope: !5970, inlinedAt: !5985)
!5993 = !DILocation(line: 197, column: 63, scope: !5970, inlinedAt: !5985)
!5994 = !DILocation(line: 138, column: 29, scope: !5603, inlinedAt: !5995)
!5995 = distinct !DILocation(line: 199, column: 6, scope: !5969, inlinedAt: !5996)
!5996 = distinct !DILocation(line: 340, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 340, column: 6)
!5998 = !DILocation(line: 138, column: 42, scope: !5603, inlinedAt: !5995)
!5999 = !DILocation(line: 138, column: 54, scope: !5603, inlinedAt: !5995)
!6000 = !DILocation(line: 140, column: 6, scope: !5603, inlinedAt: !5995)
!6001 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5995)
!6002 = !DILocation(line: 197, column: 27, scope: !5970, inlinedAt: !5996)
!6003 = !DILocation(line: 197, column: 43, scope: !5970, inlinedAt: !5996)
!6004 = !DILocation(line: 197, column: 63, scope: !5970, inlinedAt: !5996)
!6005 = !DILocalVariable(name: "dev", arg: 1, scope: !5966, file: !3, line: 317, type: !303)
!6006 = !DILocation(line: 317, column: 49, scope: !5966)
!6007 = !DILocalVariable(name: "data", arg: 2, scope: !5966, file: !3, line: 318, type: !296)
!6008 = !DILocation(line: 318, column: 15, scope: !5966)
!6009 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5966, file: !3, line: 318, type: !4108)
!6010 = !DILocation(line: 318, column: 38, scope: !5966)
!6011 = !DILocalVariable(name: "crtc_lut", scope: !5966, file: !3, line: 320, type: !5661)
!6012 = !DILocation(line: 320, column: 28, scope: !5966)
!6013 = !DILocation(line: 320, column: 39, scope: !5966)
!6014 = !DILocalVariable(name: "crtc", scope: !5966, file: !3, line: 321, type: !298)
!6015 = !DILocation(line: 321, column: 19, scope: !5966)
!6016 = !DILocalVariable(name: "r_base", scope: !5966, file: !3, line: 322, type: !296)
!6017 = !DILocation(line: 322, column: 8, scope: !5966)
!6018 = !DILocalVariable(name: "g_base", scope: !5966, file: !3, line: 322, type: !296)
!6019 = !DILocation(line: 322, column: 17, scope: !5966)
!6020 = !DILocalVariable(name: "b_base", scope: !5966, file: !3, line: 322, type: !296)
!6021 = !DILocation(line: 322, column: 26, scope: !5966)
!6022 = !DILocalVariable(name: "size", scope: !5966, file: !3, line: 323, type: !115)
!6023 = !DILocation(line: 323, column: 6, scope: !5966)
!6024 = !DILocalVariable(name: "ret", scope: !5966, file: !3, line: 324, type: !115)
!6025 = !DILocation(line: 324, column: 6, scope: !5966)
!6026 = !DILocation(line: 326, column: 30, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 326, column: 6)
!6028 = !DILocation(line: 326, column: 7, scope: !6027)
!6029 = !DILocation(line: 326, column: 6, scope: !5966)
!6030 = !DILocation(line: 327, column: 3, scope: !6027)
!6031 = !DILocation(line: 329, column: 23, scope: !5966)
!6032 = !DILocation(line: 329, column: 28, scope: !5966)
!6033 = !DILocation(line: 329, column: 39, scope: !5966)
!6034 = !DILocation(line: 329, column: 49, scope: !5966)
!6035 = !DILocation(line: 329, column: 9, scope: !5966)
!6036 = !DILocation(line: 329, column: 7, scope: !5966)
!6037 = !DILocation(line: 330, column: 7, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 330, column: 6)
!6039 = !DILocation(line: 330, column: 6, scope: !5966)
!6040 = !DILocation(line: 331, column: 3, scope: !6038)
!6041 = !DILocation(line: 334, column: 6, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 334, column: 6)
!6043 = !DILocation(line: 334, column: 16, scope: !6042)
!6044 = !DILocation(line: 334, column: 30, scope: !6042)
!6045 = !DILocation(line: 334, column: 36, scope: !6042)
!6046 = !DILocation(line: 334, column: 27, scope: !6042)
!6047 = !DILocation(line: 334, column: 6, scope: !5966)
!6048 = !DILocation(line: 335, column: 3, scope: !6042)
!6049 = !DILocation(line: 337, column: 20, scope: !5966)
!6050 = !DILocation(line: 337, column: 26, scope: !5966)
!6051 = !DILocation(line: 337, column: 2, scope: !5966)
!6052 = !DILocation(line: 338, column: 9, scope: !5966)
!6053 = !DILocation(line: 338, column: 19, scope: !5966)
!6054 = !DILocation(line: 338, column: 30, scope: !5966)
!6055 = !DILocation(line: 338, column: 7, scope: !5966)
!6056 = !DILocation(line: 339, column: 11, scope: !5966)
!6057 = !DILocation(line: 339, column: 17, scope: !5966)
!6058 = !DILocation(line: 339, column: 9, scope: !5966)
!6059 = !DILocation(line: 340, column: 49, scope: !5997)
!6060 = !DILocation(line: 340, column: 59, scope: !5997)
!6061 = !DILocation(line: 340, column: 19, scope: !5997)
!6062 = !DILocation(line: 340, column: 64, scope: !5997)
!6063 = !DILocation(line: 340, column: 72, scope: !5997)
!6064 = !DILocation(line: 199, column: 6, scope: !5969, inlinedAt: !5996)
!6065 = !DILocation(line: 141, column: 6, scope: !5735, inlinedAt: !5995)
!6066 = !DILocation(line: 0, scope: !5735, inlinedAt: !5995)
!6067 = !DILocation(line: 141, column: 6, scope: !5603, inlinedAt: !5995)
!6068 = !DILocation(line: 142, column: 29, scope: !5739, inlinedAt: !5995)
!6069 = !DILocation(line: 142, column: 8, scope: !5739, inlinedAt: !5995)
!6070 = !DILocation(line: 142, column: 7, scope: !5740, inlinedAt: !5995)
!6071 = !DILocation(line: 143, column: 18, scope: !5739, inlinedAt: !5995)
!6072 = !DILocation(line: 143, column: 22, scope: !5739, inlinedAt: !5995)
!6073 = !DILocation(line: 143, column: 4, scope: !5739, inlinedAt: !5995)
!6074 = !DILocation(line: 144, column: 12, scope: !5747, inlinedAt: !5995)
!6075 = !DILocation(line: 144, column: 12, scope: !5739, inlinedAt: !5995)
!6076 = !DILocation(line: 145, column: 4, scope: !5747, inlinedAt: !5995)
!6077 = !DILocation(line: 147, column: 4, scope: !5747, inlinedAt: !5995)
!6078 = !DILocation(line: 148, column: 3, scope: !5740, inlinedAt: !5995)
!6079 = !DILocation(line: 150, column: 6, scope: !5753, inlinedAt: !5995)
!6080 = !DILocation(line: 150, column: 6, scope: !5755, inlinedAt: !5995)
!6081 = !DILocation(line: 150, column: 6, scope: !5759, inlinedAt: !5995)
!6082 = !DILocation(line: 150, column: 6, scope: !5756, inlinedAt: !5995)
!6083 = !DILocation(line: 150, column: 6, scope: !5624, inlinedAt: !5995)
!6084 = !DILocation(line: 150, column: 6, scope: !5603, inlinedAt: !5995)
!6085 = !DILocation(line: 151, column: 3, scope: !5624, inlinedAt: !5995)
!6086 = !DILocation(line: 152, column: 20, scope: !5603, inlinedAt: !5995)
!6087 = !DILocation(line: 152, column: 26, scope: !5603, inlinedAt: !5995)
!6088 = !DILocation(line: 152, column: 33, scope: !5603, inlinedAt: !5995)
!6089 = !DILocation(line: 152, column: 2, scope: !5603, inlinedAt: !5995)
!6090 = !DILocation(line: 153, column: 2, scope: !5603, inlinedAt: !5995)
!6091 = !DILocation(line: 154, column: 1, scope: !5603, inlinedAt: !5995)
!6092 = !DILocation(line: 199, column: 6, scope: !5970, inlinedAt: !5996)
!6093 = !DILocation(line: 200, column: 21, scope: !5969, inlinedAt: !5996)
!6094 = !DILocation(line: 200, column: 25, scope: !5969, inlinedAt: !5996)
!6095 = !DILocation(line: 200, column: 31, scope: !5969, inlinedAt: !5996)
!6096 = !DILocation(line: 200, column: 7, scope: !5969, inlinedAt: !5996)
!6097 = !DILocation(line: 200, column: 5, scope: !5969, inlinedAt: !5996)
!6098 = !DILocation(line: 200, column: 3, scope: !5969, inlinedAt: !5996)
!6099 = !DILocation(line: 201, column: 9, scope: !5970, inlinedAt: !5996)
!6100 = !DILocation(line: 340, column: 6, scope: !5997)
!6101 = !DILocation(line: 340, column: 6, scope: !5966)
!6102 = !DILocation(line: 341, column: 7, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 340, column: 79)
!6104 = !DILocation(line: 342, column: 3, scope: !6103)
!6105 = !DILocation(line: 345, column: 11, scope: !5966)
!6106 = !DILocation(line: 345, column: 20, scope: !5966)
!6107 = !DILocation(line: 345, column: 18, scope: !5966)
!6108 = !DILocation(line: 345, column: 9, scope: !5966)
!6109 = !DILocation(line: 346, column: 49, scope: !5986)
!6110 = !DILocation(line: 346, column: 59, scope: !5986)
!6111 = !DILocation(line: 346, column: 19, scope: !5986)
!6112 = !DILocation(line: 346, column: 66, scope: !5986)
!6113 = !DILocation(line: 346, column: 74, scope: !5986)
!6114 = !DILocation(line: 199, column: 6, scope: !5969, inlinedAt: !5985)
!6115 = !DILocation(line: 141, column: 6, scope: !5735, inlinedAt: !5984)
!6116 = !DILocation(line: 0, scope: !5735, inlinedAt: !5984)
!6117 = !DILocation(line: 141, column: 6, scope: !5603, inlinedAt: !5984)
!6118 = !DILocation(line: 142, column: 29, scope: !5739, inlinedAt: !5984)
!6119 = !DILocation(line: 142, column: 8, scope: !5739, inlinedAt: !5984)
!6120 = !DILocation(line: 142, column: 7, scope: !5740, inlinedAt: !5984)
!6121 = !DILocation(line: 143, column: 18, scope: !5739, inlinedAt: !5984)
!6122 = !DILocation(line: 143, column: 22, scope: !5739, inlinedAt: !5984)
!6123 = !DILocation(line: 143, column: 4, scope: !5739, inlinedAt: !5984)
!6124 = !DILocation(line: 144, column: 12, scope: !5747, inlinedAt: !5984)
!6125 = !DILocation(line: 144, column: 12, scope: !5739, inlinedAt: !5984)
!6126 = !DILocation(line: 145, column: 4, scope: !5747, inlinedAt: !5984)
!6127 = !DILocation(line: 147, column: 4, scope: !5747, inlinedAt: !5984)
!6128 = !DILocation(line: 148, column: 3, scope: !5740, inlinedAt: !5984)
!6129 = !DILocation(line: 150, column: 6, scope: !5753, inlinedAt: !5984)
!6130 = !DILocation(line: 150, column: 6, scope: !5755, inlinedAt: !5984)
!6131 = !DILocation(line: 150, column: 6, scope: !5759, inlinedAt: !5984)
!6132 = !DILocation(line: 150, column: 6, scope: !5756, inlinedAt: !5984)
!6133 = !DILocation(line: 150, column: 6, scope: !5624, inlinedAt: !5984)
!6134 = !DILocation(line: 150, column: 6, scope: !5603, inlinedAt: !5984)
!6135 = !DILocation(line: 151, column: 3, scope: !5624, inlinedAt: !5984)
!6136 = !DILocation(line: 152, column: 20, scope: !5603, inlinedAt: !5984)
!6137 = !DILocation(line: 152, column: 26, scope: !5603, inlinedAt: !5984)
!6138 = !DILocation(line: 152, column: 33, scope: !5603, inlinedAt: !5984)
!6139 = !DILocation(line: 152, column: 2, scope: !5603, inlinedAt: !5984)
!6140 = !DILocation(line: 153, column: 2, scope: !5603, inlinedAt: !5984)
!6141 = !DILocation(line: 154, column: 1, scope: !5603, inlinedAt: !5984)
!6142 = !DILocation(line: 199, column: 6, scope: !5970, inlinedAt: !5985)
!6143 = !DILocation(line: 200, column: 21, scope: !5969, inlinedAt: !5985)
!6144 = !DILocation(line: 200, column: 25, scope: !5969, inlinedAt: !5985)
!6145 = !DILocation(line: 200, column: 31, scope: !5969, inlinedAt: !5985)
!6146 = !DILocation(line: 200, column: 7, scope: !5969, inlinedAt: !5985)
!6147 = !DILocation(line: 200, column: 5, scope: !5969, inlinedAt: !5985)
!6148 = !DILocation(line: 200, column: 3, scope: !5969, inlinedAt: !5985)
!6149 = !DILocation(line: 201, column: 9, scope: !5970, inlinedAt: !5985)
!6150 = !DILocation(line: 346, column: 6, scope: !5986)
!6151 = !DILocation(line: 346, column: 6, scope: !5966)
!6152 = !DILocation(line: 347, column: 7, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 346, column: 81)
!6154 = !DILocation(line: 348, column: 3, scope: !6153)
!6155 = !DILocation(line: 351, column: 11, scope: !5966)
!6156 = !DILocation(line: 351, column: 20, scope: !5966)
!6157 = !DILocation(line: 351, column: 18, scope: !5966)
!6158 = !DILocation(line: 351, column: 9, scope: !5966)
!6159 = !DILocation(line: 352, column: 49, scope: !5972)
!6160 = !DILocation(line: 352, column: 59, scope: !5972)
!6161 = !DILocation(line: 352, column: 19, scope: !5972)
!6162 = !DILocation(line: 352, column: 65, scope: !5972)
!6163 = !DILocation(line: 352, column: 73, scope: !5972)
!6164 = !DILocation(line: 199, column: 6, scope: !5969, inlinedAt: !5971)
!6165 = !DILocation(line: 141, column: 6, scope: !5735, inlinedAt: !5968)
!6166 = !DILocation(line: 0, scope: !5735, inlinedAt: !5968)
!6167 = !DILocation(line: 141, column: 6, scope: !5603, inlinedAt: !5968)
!6168 = !DILocation(line: 142, column: 29, scope: !5739, inlinedAt: !5968)
!6169 = !DILocation(line: 142, column: 8, scope: !5739, inlinedAt: !5968)
!6170 = !DILocation(line: 142, column: 7, scope: !5740, inlinedAt: !5968)
!6171 = !DILocation(line: 143, column: 18, scope: !5739, inlinedAt: !5968)
!6172 = !DILocation(line: 143, column: 22, scope: !5739, inlinedAt: !5968)
!6173 = !DILocation(line: 143, column: 4, scope: !5739, inlinedAt: !5968)
!6174 = !DILocation(line: 144, column: 12, scope: !5747, inlinedAt: !5968)
!6175 = !DILocation(line: 144, column: 12, scope: !5739, inlinedAt: !5968)
!6176 = !DILocation(line: 145, column: 4, scope: !5747, inlinedAt: !5968)
!6177 = !DILocation(line: 147, column: 4, scope: !5747, inlinedAt: !5968)
!6178 = !DILocation(line: 148, column: 3, scope: !5740, inlinedAt: !5968)
!6179 = !DILocation(line: 150, column: 6, scope: !5753, inlinedAt: !5968)
!6180 = !DILocation(line: 150, column: 6, scope: !5755, inlinedAt: !5968)
!6181 = !DILocation(line: 150, column: 6, scope: !5759, inlinedAt: !5968)
!6182 = !DILocation(line: 150, column: 6, scope: !5756, inlinedAt: !5968)
!6183 = !DILocation(line: 150, column: 6, scope: !5624, inlinedAt: !5968)
!6184 = !DILocation(line: 150, column: 6, scope: !5603, inlinedAt: !5968)
!6185 = !DILocation(line: 151, column: 3, scope: !5624, inlinedAt: !5968)
!6186 = !DILocation(line: 152, column: 20, scope: !5603, inlinedAt: !5968)
!6187 = !DILocation(line: 152, column: 26, scope: !5603, inlinedAt: !5968)
!6188 = !DILocation(line: 152, column: 33, scope: !5603, inlinedAt: !5968)
!6189 = !DILocation(line: 152, column: 2, scope: !5603, inlinedAt: !5968)
!6190 = !DILocation(line: 153, column: 2, scope: !5603, inlinedAt: !5968)
!6191 = !DILocation(line: 154, column: 1, scope: !5603, inlinedAt: !5968)
!6192 = !DILocation(line: 199, column: 6, scope: !5970, inlinedAt: !5971)
!6193 = !DILocation(line: 200, column: 21, scope: !5969, inlinedAt: !5971)
!6194 = !DILocation(line: 200, column: 25, scope: !5969, inlinedAt: !5971)
!6195 = !DILocation(line: 200, column: 31, scope: !5969, inlinedAt: !5971)
!6196 = !DILocation(line: 200, column: 7, scope: !5969, inlinedAt: !5971)
!6197 = !DILocation(line: 200, column: 5, scope: !5969, inlinedAt: !5971)
!6198 = !DILocation(line: 200, column: 3, scope: !5969, inlinedAt: !5971)
!6199 = !DILocation(line: 201, column: 9, scope: !5970, inlinedAt: !5971)
!6200 = !DILocation(line: 352, column: 6, scope: !5972)
!6201 = !DILocation(line: 352, column: 6, scope: !5966)
!6202 = !DILocation(line: 353, column: 7, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 352, column: 80)
!6204 = !DILocation(line: 354, column: 3, scope: !6203)
!6205 = !DILocation(line: 352, column: 77, scope: !5972)
!6206 = !DILabel(scope: !5966, name: "out", file: !3, line: 356)
!6207 = !DILocation(line: 356, column: 1, scope: !5966)
!6208 = !DILocation(line: 357, column: 22, scope: !5966)
!6209 = !DILocation(line: 357, column: 28, scope: !5966)
!6210 = !DILocation(line: 357, column: 2, scope: !5966)
!6211 = !DILocation(line: 358, column: 9, scope: !5966)
!6212 = !DILocation(line: 358, column: 2, scope: !5966)
!6213 = !DILocation(line: 359, column: 1, scope: !5966)
!6214 = distinct !DISubprogram(name: "drm_get_color_encoding_name", scope: !3, file: !3, line: 379, type: !6215, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!336, !173}
!6217 = !DILocalVariable(name: "encoding", arg: 1, scope: !6214, file: !3, line: 379, type: !173)
!6218 = !DILocation(line: 379, column: 65, scope: !6214)
!6219 = !DILocalVariable(name: "__ret_warn_on", scope: !6220, file: !3, line: 381, type: !115)
!6220 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 381, column: 6)
!6221 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 381, column: 6)
!6222 = !DILocation(line: 381, column: 6, scope: !6220)
!6223 = !DILocation(line: 381, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 381, column: 6)
!6225 = !DILocation(line: 381, column: 6, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 381, column: 6)
!6227 = !DILocation(line: 381, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 381, column: 6)
!6229 = !DILocation(line: 381, column: 6, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 381, column: 6)
!6231 = !{i32 -2140681188, i32 -2140681159, i32 -2140681113, i32 -2140681055, i32 -2140681001, i32 -2140680947, i32 -2140680892, i32 -2140680861}
!6232 = !DILocation(line: 381, column: 6, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 381, column: 6)
!6234 = !{i32 -2140680447, i32 -2140680440, i32 -2140680388, i32 -2140680357, i32 -2140680327}
!6235 = !DILocation(line: 381, column: 6, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 381, column: 6)
!6237 = !DILocation(line: 381, column: 6, scope: !6221)
!6238 = !DILocation(line: 381, column: 6, scope: !6214)
!6239 = !DILocation(line: 382, column: 3, scope: !6221)
!6240 = !DILocation(line: 384, column: 29, scope: !6214)
!6241 = !DILocation(line: 384, column: 9, scope: !6214)
!6242 = !DILocation(line: 384, column: 2, scope: !6214)
!6243 = !DILocation(line: 385, column: 1, scope: !6214)
!6244 = distinct !DISubprogram(name: "drm_get_color_range_name", scope: !3, file: !3, line: 394, type: !6245, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!336, !180}
!6247 = !DILocalVariable(name: "range", arg: 1, scope: !6244, file: !3, line: 394, type: !180)
!6248 = !DILocation(line: 394, column: 59, scope: !6244)
!6249 = !DILocalVariable(name: "__ret_warn_on", scope: !6250, file: !3, line: 396, type: !115)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 396, column: 6)
!6251 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 396, column: 6)
!6252 = !DILocation(line: 396, column: 6, scope: !6250)
!6253 = !DILocation(line: 396, column: 6, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 396, column: 6)
!6255 = !DILocation(line: 396, column: 6, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 396, column: 6)
!6257 = !DILocation(line: 396, column: 6, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 396, column: 6)
!6259 = !DILocation(line: 396, column: 6, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 396, column: 6)
!6261 = !{i32 -2140679120, i32 -2140679091, i32 -2140679045, i32 -2140678987, i32 -2140678933, i32 -2140678879, i32 -2140678824, i32 -2140678793}
!6262 = !DILocation(line: 396, column: 6, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 396, column: 6)
!6264 = !{i32 -2140678379, i32 -2140678372, i32 -2140678320, i32 -2140678289, i32 -2140678259}
!6265 = !DILocation(line: 396, column: 6, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 396, column: 6)
!6267 = !DILocation(line: 396, column: 6, scope: !6251)
!6268 = !DILocation(line: 396, column: 6, scope: !6244)
!6269 = !DILocation(line: 397, column: 3, scope: !6251)
!6270 = !DILocation(line: 399, column: 26, scope: !6244)
!6271 = !DILocation(line: 399, column: 9, scope: !6244)
!6272 = !DILocation(line: 399, column: 2, scope: !6244)
!6273 = !DILocation(line: 400, column: 1, scope: !6244)
!6274 = distinct !DISubprogram(name: "drm_plane_create_color_properties", scope: !3, file: !3, line: 416, type: !6275, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!115, !4652, !529, !529, !173, !180}
!6277 = !DILocalVariable(name: "plane", arg: 1, scope: !6274, file: !3, line: 416, type: !4652)
!6278 = !DILocation(line: 416, column: 57, scope: !6274)
!6279 = !DILocalVariable(name: "supported_encodings", arg: 2, scope: !6274, file: !3, line: 417, type: !529)
!6280 = !DILocation(line: 417, column: 15, scope: !6274)
!6281 = !DILocalVariable(name: "supported_ranges", arg: 3, scope: !6274, file: !3, line: 418, type: !529)
!6282 = !DILocation(line: 418, column: 15, scope: !6274)
!6283 = !DILocalVariable(name: "default_encoding", arg: 4, scope: !6274, file: !3, line: 419, type: !173)
!6284 = !DILocation(line: 419, column: 35, scope: !6274)
!6285 = !DILocalVariable(name: "default_range", arg: 5, scope: !6274, file: !3, line: 420, type: !180)
!6286 = !DILocation(line: 420, column: 32, scope: !6274)
!6287 = !DILocalVariable(name: "dev", scope: !6274, file: !3, line: 422, type: !303)
!6288 = !DILocation(line: 422, column: 21, scope: !6274)
!6289 = !DILocation(line: 422, column: 27, scope: !6274)
!6290 = !DILocation(line: 422, column: 34, scope: !6274)
!6291 = !DILocalVariable(name: "prop", scope: !6274, file: !3, line: 423, type: !4402)
!6292 = !DILocation(line: 423, column: 23, scope: !6274)
!6293 = !DILocalVariable(name: "enum_list", scope: !6274, file: !3, line: 424, type: !6294)
!6294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6295, size: 384, elements: !390)
!6295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prop_enum_list", file: !4404, line: 218, size: 128, elements: !6296)
!6296 = !{!6297, !6298}
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6295, file: !4404, line: 219, baseType: !115, size: 32)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6295, file: !4404, line: 220, baseType: !336, size: 64, offset: 64)
!6299 = !DILocation(line: 424, column: 28, scope: !6274)
!6300 = !DILocalVariable(name: "i", scope: !6274, file: !3, line: 426, type: !115)
!6301 = !DILocation(line: 426, column: 6, scope: !6274)
!6302 = !DILocalVariable(name: "len", scope: !6274, file: !3, line: 426, type: !115)
!6303 = !DILocation(line: 426, column: 9, scope: !6274)
!6304 = !DILocalVariable(name: "__ret_warn_on", scope: !6305, file: !3, line: 428, type: !115)
!6305 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 428, column: 6)
!6306 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 428, column: 6)
!6307 = !DILocation(line: 428, column: 6, scope: !6305)
!6308 = !DILocation(line: 428, column: 6, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 428, column: 6)
!6310 = !DILocation(line: 428, column: 6, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 428, column: 6)
!6312 = !DILocation(line: 428, column: 6, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 428, column: 6)
!6314 = !DILocation(line: 428, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 428, column: 6)
!6316 = !{i32 -2140675308, i32 -2140675279, i32 -2140675233, i32 -2140675175, i32 -2140675121, i32 -2140675067, i32 -2140675012, i32 -2140674981}
!6317 = !DILocation(line: 428, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 428, column: 6)
!6319 = !{i32 -2140674567, i32 -2140674560, i32 -2140674508, i32 -2140674477, i32 -2140674447}
!6320 = !DILocation(line: 428, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 428, column: 6)
!6322 = !DILocation(line: 428, column: 6, scope: !6306)
!6323 = !DILocation(line: 428, column: 6, scope: !6274)
!6324 = !DILocation(line: 431, column: 3, scope: !6306)
!6325 = !DILocalVariable(name: "__ret_warn_on", scope: !6326, file: !3, line: 433, type: !115)
!6326 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 433, column: 6)
!6327 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 433, column: 6)
!6328 = !DILocation(line: 433, column: 6, scope: !6326)
!6329 = !DILocation(line: 433, column: 6, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 433, column: 6)
!6331 = !DILocation(line: 433, column: 6, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 433, column: 6)
!6333 = !DILocation(line: 433, column: 6, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 433, column: 6)
!6335 = !DILocation(line: 433, column: 6, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 433, column: 6)
!6337 = !{i32 -2140673511, i32 -2140673482, i32 -2140673436, i32 -2140673378, i32 -2140673324, i32 -2140673270, i32 -2140673215, i32 -2140673184}
!6338 = !DILocation(line: 433, column: 6, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 433, column: 6)
!6340 = !{i32 -2140672770, i32 -2140672763, i32 -2140672711, i32 -2140672680, i32 -2140672650}
!6341 = !DILocation(line: 433, column: 6, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 433, column: 6)
!6343 = !DILocation(line: 433, column: 6, scope: !6327)
!6344 = !DILocation(line: 433, column: 6, scope: !6274)
!6345 = !DILocation(line: 436, column: 3, scope: !6327)
!6346 = !DILocation(line: 438, column: 6, scope: !6274)
!6347 = !DILocation(line: 439, column: 9, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 439, column: 2)
!6349 = !DILocation(line: 439, column: 7, scope: !6348)
!6350 = !DILocation(line: 439, column: 14, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 439, column: 2)
!6352 = !DILocation(line: 439, column: 16, scope: !6351)
!6353 = !DILocation(line: 439, column: 2, scope: !6348)
!6354 = !DILocation(line: 440, column: 8, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6356, file: !3, line: 440, column: 7)
!6356 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 439, column: 47)
!6357 = !DILocation(line: 440, column: 30, scope: !6355)
!6358 = !DILocation(line: 440, column: 28, scope: !6355)
!6359 = !DILocation(line: 440, column: 38, scope: !6355)
!6360 = !DILocation(line: 440, column: 7, scope: !6356)
!6361 = !DILocation(line: 441, column: 4, scope: !6355)
!6362 = !DILocation(line: 443, column: 25, scope: !6356)
!6363 = !DILocation(line: 443, column: 13, scope: !6356)
!6364 = !DILocation(line: 443, column: 3, scope: !6356)
!6365 = !DILocation(line: 443, column: 18, scope: !6356)
!6366 = !DILocation(line: 443, column: 23, scope: !6356)
!6367 = !DILocation(line: 444, column: 45, scope: !6356)
!6368 = !DILocation(line: 444, column: 25, scope: !6356)
!6369 = !DILocation(line: 444, column: 13, scope: !6356)
!6370 = !DILocation(line: 444, column: 3, scope: !6356)
!6371 = !DILocation(line: 444, column: 18, scope: !6356)
!6372 = !DILocation(line: 444, column: 23, scope: !6356)
!6373 = !DILocation(line: 445, column: 6, scope: !6356)
!6374 = !DILocation(line: 446, column: 2, scope: !6356)
!6375 = !DILocation(line: 439, column: 43, scope: !6351)
!6376 = !DILocation(line: 439, column: 2, scope: !6351)
!6377 = distinct !{!6377, !6353, !6378}
!6378 = !DILocation(line: 446, column: 2, scope: !6348)
!6379 = !DILocation(line: 448, column: 34, scope: !6274)
!6380 = !DILocation(line: 449, column: 6, scope: !6274)
!6381 = !DILocation(line: 449, column: 17, scope: !6274)
!6382 = !DILocation(line: 448, column: 9, scope: !6274)
!6383 = !DILocation(line: 448, column: 7, scope: !6274)
!6384 = !DILocation(line: 450, column: 7, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 450, column: 6)
!6386 = !DILocation(line: 450, column: 6, scope: !6274)
!6387 = !DILocation(line: 451, column: 3, scope: !6385)
!6388 = !DILocation(line: 452, column: 35, scope: !6274)
!6389 = !DILocation(line: 452, column: 2, scope: !6274)
!6390 = !DILocation(line: 452, column: 9, scope: !6274)
!6391 = !DILocation(line: 452, column: 33, scope: !6274)
!6392 = !DILocation(line: 453, column: 30, scope: !6274)
!6393 = !DILocation(line: 453, column: 37, scope: !6274)
!6394 = !DILocation(line: 453, column: 43, scope: !6274)
!6395 = !DILocation(line: 453, column: 49, scope: !6274)
!6396 = !DILocation(line: 453, column: 2, scope: !6274)
!6397 = !DILocation(line: 454, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 454, column: 6)
!6399 = !DILocation(line: 454, column: 13, scope: !6398)
!6400 = !DILocation(line: 454, column: 6, scope: !6274)
!6401 = !DILocation(line: 455, column: 34, scope: !6398)
!6402 = !DILocation(line: 455, column: 3, scope: !6398)
!6403 = !DILocation(line: 455, column: 10, scope: !6398)
!6404 = !DILocation(line: 455, column: 17, scope: !6398)
!6405 = !DILocation(line: 455, column: 32, scope: !6398)
!6406 = !DILocation(line: 457, column: 6, scope: !6274)
!6407 = !DILocation(line: 458, column: 9, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 458, column: 2)
!6409 = !DILocation(line: 458, column: 7, scope: !6408)
!6410 = !DILocation(line: 458, column: 14, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 458, column: 2)
!6412 = !DILocation(line: 458, column: 16, scope: !6411)
!6413 = !DILocation(line: 458, column: 2, scope: !6408)
!6414 = !DILocation(line: 459, column: 8, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 459, column: 7)
!6416 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 458, column: 44)
!6417 = !DILocation(line: 459, column: 27, scope: !6415)
!6418 = !DILocation(line: 459, column: 25, scope: !6415)
!6419 = !DILocation(line: 459, column: 35, scope: !6415)
!6420 = !DILocation(line: 459, column: 7, scope: !6416)
!6421 = !DILocation(line: 460, column: 4, scope: !6415)
!6422 = !DILocation(line: 462, column: 25, scope: !6416)
!6423 = !DILocation(line: 462, column: 13, scope: !6416)
!6424 = !DILocation(line: 462, column: 3, scope: !6416)
!6425 = !DILocation(line: 462, column: 18, scope: !6416)
!6426 = !DILocation(line: 462, column: 23, scope: !6416)
!6427 = !DILocation(line: 463, column: 42, scope: !6416)
!6428 = !DILocation(line: 463, column: 25, scope: !6416)
!6429 = !DILocation(line: 463, column: 13, scope: !6416)
!6430 = !DILocation(line: 463, column: 3, scope: !6416)
!6431 = !DILocation(line: 463, column: 18, scope: !6416)
!6432 = !DILocation(line: 463, column: 23, scope: !6416)
!6433 = !DILocation(line: 464, column: 6, scope: !6416)
!6434 = !DILocation(line: 465, column: 2, scope: !6416)
!6435 = !DILocation(line: 458, column: 40, scope: !6411)
!6436 = !DILocation(line: 458, column: 2, scope: !6411)
!6437 = distinct !{!6437, !6413, !6438}
!6438 = !DILocation(line: 465, column: 2, scope: !6408)
!6439 = !DILocation(line: 467, column: 34, scope: !6274)
!6440 = !DILocation(line: 468, column: 6, scope: !6274)
!6441 = !DILocation(line: 468, column: 17, scope: !6274)
!6442 = !DILocation(line: 467, column: 9, scope: !6274)
!6443 = !DILocation(line: 467, column: 7, scope: !6274)
!6444 = !DILocation(line: 469, column: 7, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 469, column: 6)
!6446 = !DILocation(line: 469, column: 6, scope: !6274)
!6447 = !DILocation(line: 470, column: 3, scope: !6445)
!6448 = !DILocation(line: 471, column: 32, scope: !6274)
!6449 = !DILocation(line: 471, column: 2, scope: !6274)
!6450 = !DILocation(line: 471, column: 9, scope: !6274)
!6451 = !DILocation(line: 471, column: 30, scope: !6274)
!6452 = !DILocation(line: 472, column: 30, scope: !6274)
!6453 = !DILocation(line: 472, column: 37, scope: !6274)
!6454 = !DILocation(line: 472, column: 43, scope: !6274)
!6455 = !DILocation(line: 472, column: 49, scope: !6274)
!6456 = !DILocation(line: 472, column: 2, scope: !6274)
!6457 = !DILocation(line: 473, column: 6, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 473, column: 6)
!6459 = !DILocation(line: 473, column: 13, scope: !6458)
!6460 = !DILocation(line: 473, column: 6, scope: !6274)
!6461 = !DILocation(line: 474, column: 31, scope: !6458)
!6462 = !DILocation(line: 474, column: 3, scope: !6458)
!6463 = !DILocation(line: 474, column: 10, scope: !6458)
!6464 = !DILocation(line: 474, column: 17, scope: !6458)
!6465 = !DILocation(line: 474, column: 29, scope: !6458)
!6466 = !DILocation(line: 476, column: 2, scope: !6274)
!6467 = !DILocation(line: 477, column: 1, scope: !6274)
!6468 = distinct !DISubprogram(name: "drm_color_lut_check", scope: !3, file: !3, line: 491, type: !6469, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{!115, !6471, !529}
!6471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6472, size: 64)
!6472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4722)
!6473 = !DILocalVariable(name: "lut", arg: 1, scope: !6468, file: !3, line: 491, type: !6471)
!6474 = !DILocation(line: 491, column: 57, scope: !6468)
!6475 = !DILocalVariable(name: "tests", arg: 2, scope: !6468, file: !3, line: 491, type: !529)
!6476 = !DILocation(line: 491, column: 66, scope: !6468)
!6477 = !DILocalVariable(name: "entry", scope: !6468, file: !3, line: 493, type: !6478)
!6478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6479, size: 64)
!6479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6480)
!6480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_color_lut", file: !215, line: 637, size: 64, elements: !6481)
!6481 = !{!6482, !6483, !6484, !6485}
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !6480, file: !215, line: 642, baseType: !1010, size: 16)
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !6480, file: !215, line: 643, baseType: !1010, size: 16, offset: 16)
!6484 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !6480, file: !215, line: 644, baseType: !1010, size: 16, offset: 32)
!6485 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6480, file: !215, line: 645, baseType: !1010, size: 16, offset: 48)
!6486 = !DILocation(line: 493, column: 30, scope: !6468)
!6487 = !DILocalVariable(name: "i", scope: !6468, file: !3, line: 494, type: !115)
!6488 = !DILocation(line: 494, column: 6, scope: !6468)
!6489 = !DILocation(line: 496, column: 7, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 496, column: 6)
!6491 = !DILocation(line: 496, column: 11, scope: !6490)
!6492 = !DILocation(line: 496, column: 15, scope: !6490)
!6493 = !DILocation(line: 496, column: 6, scope: !6468)
!6494 = !DILocation(line: 497, column: 3, scope: !6490)
!6495 = !DILocation(line: 499, column: 10, scope: !6468)
!6496 = !DILocation(line: 499, column: 15, scope: !6468)
!6497 = !DILocation(line: 499, column: 8, scope: !6468)
!6498 = !DILocation(line: 500, column: 9, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 500, column: 2)
!6500 = !DILocation(line: 500, column: 7, scope: !6499)
!6501 = !DILocation(line: 500, column: 14, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 500, column: 2)
!6503 = !DILocation(line: 500, column: 37, scope: !6502)
!6504 = !DILocation(line: 500, column: 18, scope: !6502)
!6505 = !DILocation(line: 500, column: 16, scope: !6502)
!6506 = !DILocation(line: 500, column: 2, scope: !6499)
!6507 = !DILocation(line: 501, column: 7, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 501, column: 7)
!6509 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 500, column: 48)
!6510 = !DILocation(line: 501, column: 13, scope: !6508)
!6511 = !DILocation(line: 501, column: 7, scope: !6509)
!6512 = !DILocation(line: 502, column: 8, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 502, column: 8)
!6514 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 501, column: 45)
!6515 = !DILocation(line: 502, column: 14, scope: !6513)
!6516 = !DILocation(line: 502, column: 17, scope: !6513)
!6517 = !DILocation(line: 502, column: 24, scope: !6513)
!6518 = !DILocation(line: 502, column: 30, scope: !6513)
!6519 = !DILocation(line: 502, column: 33, scope: !6513)
!6520 = !DILocation(line: 502, column: 21, scope: !6513)
!6521 = !DILocation(line: 502, column: 38, scope: !6513)
!6522 = !DILocation(line: 503, column: 8, scope: !6513)
!6523 = !DILocation(line: 503, column: 14, scope: !6513)
!6524 = !DILocation(line: 503, column: 17, scope: !6513)
!6525 = !DILocation(line: 503, column: 24, scope: !6513)
!6526 = !DILocation(line: 503, column: 30, scope: !6513)
!6527 = !DILocation(line: 503, column: 33, scope: !6513)
!6528 = !DILocation(line: 503, column: 21, scope: !6513)
!6529 = !DILocation(line: 502, column: 8, scope: !6514)
!6530 = !DILocation(line: 504, column: 5, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 503, column: 40)
!6532 = !DILocation(line: 505, column: 5, scope: !6531)
!6533 = !DILocation(line: 507, column: 3, scope: !6514)
!6534 = !DILocation(line: 509, column: 7, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 509, column: 7)
!6536 = !DILocation(line: 509, column: 9, scope: !6535)
!6537 = !DILocation(line: 509, column: 13, scope: !6535)
!6538 = !DILocation(line: 509, column: 16, scope: !6535)
!6539 = !DILocation(line: 509, column: 22, scope: !6535)
!6540 = !DILocation(line: 509, column: 7, scope: !6509)
!6541 = !DILocation(line: 510, column: 8, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 510, column: 8)
!6543 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 509, column: 54)
!6544 = !DILocation(line: 510, column: 14, scope: !6542)
!6545 = !DILocation(line: 510, column: 17, scope: !6542)
!6546 = !DILocation(line: 510, column: 23, scope: !6542)
!6547 = !DILocation(line: 510, column: 29, scope: !6542)
!6548 = !DILocation(line: 510, column: 31, scope: !6542)
!6549 = !DILocation(line: 510, column: 36, scope: !6542)
!6550 = !DILocation(line: 510, column: 21, scope: !6542)
!6551 = !DILocation(line: 510, column: 40, scope: !6542)
!6552 = !DILocation(line: 511, column: 8, scope: !6542)
!6553 = !DILocation(line: 511, column: 14, scope: !6542)
!6554 = !DILocation(line: 511, column: 17, scope: !6542)
!6555 = !DILocation(line: 511, column: 25, scope: !6542)
!6556 = !DILocation(line: 511, column: 31, scope: !6542)
!6557 = !DILocation(line: 511, column: 33, scope: !6542)
!6558 = !DILocation(line: 511, column: 38, scope: !6542)
!6559 = !DILocation(line: 511, column: 23, scope: !6542)
!6560 = !DILocation(line: 511, column: 44, scope: !6542)
!6561 = !DILocation(line: 512, column: 8, scope: !6542)
!6562 = !DILocation(line: 512, column: 14, scope: !6542)
!6563 = !DILocation(line: 512, column: 17, scope: !6542)
!6564 = !DILocation(line: 512, column: 24, scope: !6542)
!6565 = !DILocation(line: 512, column: 30, scope: !6542)
!6566 = !DILocation(line: 512, column: 32, scope: !6542)
!6567 = !DILocation(line: 512, column: 37, scope: !6542)
!6568 = !DILocation(line: 512, column: 22, scope: !6542)
!6569 = !DILocation(line: 510, column: 8, scope: !6543)
!6570 = !DILocation(line: 513, column: 5, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 512, column: 43)
!6572 = !DILocation(line: 514, column: 5, scope: !6571)
!6573 = !DILocation(line: 516, column: 3, scope: !6543)
!6574 = !DILocation(line: 517, column: 2, scope: !6509)
!6575 = !DILocation(line: 500, column: 44, scope: !6502)
!6576 = !DILocation(line: 500, column: 2, scope: !6502)
!6577 = distinct !{!6577, !6506, !6578}
!6578 = !DILocation(line: 517, column: 2, scope: !6499)
!6579 = !DILocation(line: 519, column: 2, scope: !6468)
!6580 = !DILocation(line: 520, column: 1, scope: !6468)
!6581 = distinct !DISubprogram(name: "drm_color_lut_size", scope: !174, file: !174, line: 72, type: !6582, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6582 = !DISubroutineType(types: !6583)
!6583 = !{!115, !6471}
!6584 = !DILocalVariable(name: "blob", arg: 1, scope: !6581, file: !174, line: 72, type: !6471)
!6585 = !DILocation(line: 72, column: 70, scope: !6581)
!6586 = !DILocation(line: 74, column: 9, scope: !6581)
!6587 = !DILocation(line: 74, column: 15, scope: !6581)
!6588 = !DILocation(line: 74, column: 22, scope: !6581)
!6589 = !DILocation(line: 74, column: 2, scope: !6581)
!6590 = distinct !DISubprogram(name: "kmalloc_array", scope: !277, file: !277, line: 584, type: !5587, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6591 = !DILocalVariable(name: "s", arg: 1, scope: !6592, file: !277, line: 445, type: !1085)
!6592 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !277, file: !277, line: 445, type: !6593, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6593 = !DISubroutineType(types: !6594)
!6594 = !{!296, !1085, !294, !436}
!6595 = !DILocation(line: 445, column: 72, scope: !6592, inlinedAt: !6596)
!6596 = distinct !DILocation(line: 552, column: 10, scope: !6597, inlinedAt: !6602)
!6597 = distinct !DILexicalBlock(scope: !6598, file: !277, line: 540, column: 34)
!6598 = distinct !DILexicalBlock(scope: !6599, file: !277, line: 540, column: 6)
!6599 = distinct !DISubprogram(name: "kmalloc", scope: !277, file: !277, line: 538, type: !6600, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{!296, !436, !294}
!6602 = distinct !DILocation(line: 591, column: 10, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6590, file: !277, line: 590, column: 6)
!6604 = !DILocalVariable(name: "flags", arg: 2, scope: !6592, file: !277, line: 446, type: !294)
!6605 = !DILocation(line: 446, column: 9, scope: !6592, inlinedAt: !6596)
!6606 = !DILocalVariable(name: "size", arg: 3, scope: !6592, file: !277, line: 446, type: !436)
!6607 = !DILocation(line: 446, column: 23, scope: !6592, inlinedAt: !6596)
!6608 = !DILocalVariable(name: "ret", scope: !6592, file: !277, line: 448, type: !296)
!6609 = !DILocation(line: 448, column: 8, scope: !6592, inlinedAt: !6596)
!6610 = !DILocalVariable(name: "flags", arg: 1, scope: !6611, file: !277, line: 318, type: !294)
!6611 = distinct !DISubprogram(name: "kmalloc_type", scope: !277, file: !277, line: 318, type: !6612, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{!276, !294}
!6614 = !DILocation(line: 318, column: 67, scope: !6611, inlinedAt: !6615)
!6615 = distinct !DILocation(line: 553, column: 20, scope: !6597, inlinedAt: !6602)
!6616 = !DILocalVariable(name: "size", arg: 1, scope: !6617, file: !277, line: 346, type: !436)
!6617 = distinct !DISubprogram(name: "kmalloc_index", scope: !277, file: !277, line: 346, type: !6618, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6618 = !DISubroutineType(types: !6619)
!6619 = !{!7, !436}
!6620 = !DILocation(line: 346, column: 58, scope: !6617, inlinedAt: !6621)
!6621 = distinct !DILocation(line: 547, column: 11, scope: !6597, inlinedAt: !6602)
!6622 = !DILocalVariable(name: "size", arg: 1, scope: !6623, file: !277, line: 472, type: !436)
!6623 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !277, file: !277, line: 472, type: !6624, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6624 = !DISubroutineType(types: !6625)
!6625 = !{!296, !436, !294, !7}
!6626 = !DILocation(line: 472, column: 28, scope: !6623, inlinedAt: !6627)
!6627 = distinct !DILocation(line: 481, column: 9, scope: !6628, inlinedAt: !6629)
!6628 = distinct !DISubprogram(name: "kmalloc_large", scope: !277, file: !277, line: 478, type: !6600, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6629 = distinct !DILocation(line: 545, column: 11, scope: !6630, inlinedAt: !6602)
!6630 = distinct !DILexicalBlock(scope: !6597, file: !277, line: 544, column: 7)
!6631 = !DILocalVariable(name: "flags", arg: 2, scope: !6623, file: !277, line: 472, type: !294)
!6632 = !DILocation(line: 472, column: 40, scope: !6623, inlinedAt: !6627)
!6633 = !DILocalVariable(name: "order", arg: 3, scope: !6623, file: !277, line: 472, type: !7)
!6634 = !DILocation(line: 472, column: 60, scope: !6623, inlinedAt: !6627)
!6635 = !DILocalVariable(name: "size", arg: 1, scope: !6628, file: !277, line: 478, type: !436)
!6636 = !DILocation(line: 478, column: 51, scope: !6628, inlinedAt: !6629)
!6637 = !DILocalVariable(name: "flags", arg: 2, scope: !6628, file: !277, line: 478, type: !294)
!6638 = !DILocation(line: 478, column: 63, scope: !6628, inlinedAt: !6629)
!6639 = !DILocalVariable(name: "order", scope: !6628, file: !277, line: 480, type: !7)
!6640 = !DILocation(line: 480, column: 15, scope: !6628, inlinedAt: !6629)
!6641 = !DILocalVariable(name: "size", arg: 1, scope: !6599, file: !277, line: 538, type: !436)
!6642 = !DILocation(line: 538, column: 45, scope: !6599, inlinedAt: !6602)
!6643 = !DILocalVariable(name: "flags", arg: 2, scope: !6599, file: !277, line: 538, type: !294)
!6644 = !DILocation(line: 538, column: 57, scope: !6599, inlinedAt: !6602)
!6645 = !DILocalVariable(name: "index", scope: !6597, file: !277, line: 542, type: !7)
!6646 = !DILocation(line: 542, column: 16, scope: !6597, inlinedAt: !6602)
!6647 = !DILocalVariable(name: "n", arg: 1, scope: !6590, file: !277, line: 584, type: !436)
!6648 = !DILocation(line: 584, column: 42, scope: !6590)
!6649 = !DILocalVariable(name: "size", arg: 2, scope: !6590, file: !277, line: 584, type: !436)
!6650 = !DILocation(line: 584, column: 52, scope: !6590)
!6651 = !DILocalVariable(name: "flags", arg: 3, scope: !6590, file: !277, line: 584, type: !294)
!6652 = !DILocation(line: 584, column: 64, scope: !6590)
!6653 = !DILocalVariable(name: "bytes", scope: !6590, file: !277, line: 586, type: !436)
!6654 = !DILocation(line: 586, column: 9, scope: !6590)
!6655 = !DILocalVariable(name: "__a", scope: !6656, file: !277, line: 588, type: !436)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !277, line: 588, column: 6)
!6657 = distinct !DILexicalBlock(scope: !6590, file: !277, line: 588, column: 6)
!6658 = !DILocation(line: 588, column: 6, scope: !6656)
!6659 = !DILocalVariable(name: "__b", scope: !6656, file: !277, line: 588, type: !436)
!6660 = !DILocalVariable(name: "__d", scope: !6656, file: !277, line: 588, type: !5322)
!6661 = !DILocation(line: 588, column: 6, scope: !6657)
!6662 = !DILocation(line: 588, column: 6, scope: !6590)
!6663 = !DILocation(line: 589, column: 3, scope: !6657)
!6664 = !DILocation(line: 590, column: 27, scope: !6603)
!6665 = !DILocation(line: 590, column: 6, scope: !6603)
!6666 = !DILocation(line: 590, column: 30, scope: !6603)
!6667 = !DILocation(line: 590, column: 54, scope: !6603)
!6668 = !DILocation(line: 590, column: 33, scope: !6603)
!6669 = !DILocation(line: 590, column: 6, scope: !6590)
!6670 = !DILocation(line: 591, column: 18, scope: !6603)
!6671 = !DILocation(line: 591, column: 25, scope: !6603)
!6672 = !DILocation(line: 540, column: 27, scope: !6598, inlinedAt: !6602)
!6673 = !DILocation(line: 540, column: 6, scope: !6598, inlinedAt: !6602)
!6674 = !DILocation(line: 540, column: 6, scope: !6599, inlinedAt: !6602)
!6675 = !DILocation(line: 544, column: 7, scope: !6630, inlinedAt: !6602)
!6676 = !DILocation(line: 544, column: 12, scope: !6630, inlinedAt: !6602)
!6677 = !DILocation(line: 544, column: 7, scope: !6597, inlinedAt: !6602)
!6678 = !DILocation(line: 545, column: 25, scope: !6630, inlinedAt: !6602)
!6679 = !DILocation(line: 545, column: 31, scope: !6630, inlinedAt: !6602)
!6680 = !DILocation(line: 480, column: 33, scope: !6628, inlinedAt: !6629)
!6681 = !DILocation(line: 480, column: 23, scope: !6628, inlinedAt: !6629)
!6682 = !DILocation(line: 481, column: 29, scope: !6628, inlinedAt: !6629)
!6683 = !DILocation(line: 481, column: 35, scope: !6628, inlinedAt: !6629)
!6684 = !DILocation(line: 481, column: 42, scope: !6628, inlinedAt: !6629)
!6685 = !DILocation(line: 474, column: 23, scope: !6623, inlinedAt: !6627)
!6686 = !DILocation(line: 474, column: 29, scope: !6623, inlinedAt: !6627)
!6687 = !DILocation(line: 474, column: 36, scope: !6623, inlinedAt: !6627)
!6688 = !DILocation(line: 474, column: 9, scope: !6623, inlinedAt: !6627)
!6689 = !DILocation(line: 545, column: 4, scope: !6630, inlinedAt: !6602)
!6690 = !DILocation(line: 547, column: 25, scope: !6597, inlinedAt: !6602)
!6691 = !DILocation(line: 348, column: 7, scope: !6692, inlinedAt: !6621)
!6692 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 348, column: 6)
!6693 = !DILocation(line: 348, column: 6, scope: !6617, inlinedAt: !6621)
!6694 = !DILocation(line: 349, column: 3, scope: !6692, inlinedAt: !6621)
!6695 = !DILocation(line: 351, column: 6, scope: !6696, inlinedAt: !6621)
!6696 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 351, column: 6)
!6697 = !DILocation(line: 351, column: 11, scope: !6696, inlinedAt: !6621)
!6698 = !DILocation(line: 351, column: 6, scope: !6617, inlinedAt: !6621)
!6699 = !DILocation(line: 352, column: 3, scope: !6696, inlinedAt: !6621)
!6700 = !DILocation(line: 354, column: 32, scope: !6701, inlinedAt: !6621)
!6701 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 354, column: 6)
!6702 = !DILocation(line: 354, column: 37, scope: !6701, inlinedAt: !6621)
!6703 = !DILocation(line: 354, column: 42, scope: !6701, inlinedAt: !6621)
!6704 = !DILocation(line: 354, column: 45, scope: !6701, inlinedAt: !6621)
!6705 = !DILocation(line: 354, column: 50, scope: !6701, inlinedAt: !6621)
!6706 = !DILocation(line: 354, column: 6, scope: !6617, inlinedAt: !6621)
!6707 = !DILocation(line: 355, column: 3, scope: !6701, inlinedAt: !6621)
!6708 = !DILocation(line: 356, column: 32, scope: !6709, inlinedAt: !6621)
!6709 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 356, column: 6)
!6710 = !DILocation(line: 356, column: 37, scope: !6709, inlinedAt: !6621)
!6711 = !DILocation(line: 356, column: 43, scope: !6709, inlinedAt: !6621)
!6712 = !DILocation(line: 356, column: 46, scope: !6709, inlinedAt: !6621)
!6713 = !DILocation(line: 356, column: 51, scope: !6709, inlinedAt: !6621)
!6714 = !DILocation(line: 356, column: 6, scope: !6617, inlinedAt: !6621)
!6715 = !DILocation(line: 357, column: 3, scope: !6709, inlinedAt: !6621)
!6716 = !DILocation(line: 358, column: 6, scope: !6717, inlinedAt: !6621)
!6717 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 358, column: 6)
!6718 = !DILocation(line: 358, column: 11, scope: !6717, inlinedAt: !6621)
!6719 = !DILocation(line: 358, column: 6, scope: !6617, inlinedAt: !6621)
!6720 = !DILocation(line: 358, column: 26, scope: !6717, inlinedAt: !6621)
!6721 = !DILocation(line: 359, column: 6, scope: !6722, inlinedAt: !6621)
!6722 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 359, column: 6)
!6723 = !DILocation(line: 359, column: 11, scope: !6722, inlinedAt: !6621)
!6724 = !DILocation(line: 359, column: 6, scope: !6617, inlinedAt: !6621)
!6725 = !DILocation(line: 359, column: 26, scope: !6722, inlinedAt: !6621)
!6726 = !DILocation(line: 360, column: 6, scope: !6727, inlinedAt: !6621)
!6727 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 360, column: 6)
!6728 = !DILocation(line: 360, column: 11, scope: !6727, inlinedAt: !6621)
!6729 = !DILocation(line: 360, column: 6, scope: !6617, inlinedAt: !6621)
!6730 = !DILocation(line: 360, column: 26, scope: !6727, inlinedAt: !6621)
!6731 = !DILocation(line: 361, column: 6, scope: !6732, inlinedAt: !6621)
!6732 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 361, column: 6)
!6733 = !DILocation(line: 361, column: 11, scope: !6732, inlinedAt: !6621)
!6734 = !DILocation(line: 361, column: 6, scope: !6617, inlinedAt: !6621)
!6735 = !DILocation(line: 361, column: 26, scope: !6732, inlinedAt: !6621)
!6736 = !DILocation(line: 362, column: 6, scope: !6737, inlinedAt: !6621)
!6737 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 362, column: 6)
!6738 = !DILocation(line: 362, column: 11, scope: !6737, inlinedAt: !6621)
!6739 = !DILocation(line: 362, column: 6, scope: !6617, inlinedAt: !6621)
!6740 = !DILocation(line: 362, column: 26, scope: !6737, inlinedAt: !6621)
!6741 = !DILocation(line: 363, column: 6, scope: !6742, inlinedAt: !6621)
!6742 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 363, column: 6)
!6743 = !DILocation(line: 363, column: 11, scope: !6742, inlinedAt: !6621)
!6744 = !DILocation(line: 363, column: 6, scope: !6617, inlinedAt: !6621)
!6745 = !DILocation(line: 363, column: 26, scope: !6742, inlinedAt: !6621)
!6746 = !DILocation(line: 364, column: 6, scope: !6747, inlinedAt: !6621)
!6747 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 364, column: 6)
!6748 = !DILocation(line: 364, column: 11, scope: !6747, inlinedAt: !6621)
!6749 = !DILocation(line: 364, column: 6, scope: !6617, inlinedAt: !6621)
!6750 = !DILocation(line: 364, column: 26, scope: !6747, inlinedAt: !6621)
!6751 = !DILocation(line: 365, column: 6, scope: !6752, inlinedAt: !6621)
!6752 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 365, column: 6)
!6753 = !DILocation(line: 365, column: 11, scope: !6752, inlinedAt: !6621)
!6754 = !DILocation(line: 365, column: 6, scope: !6617, inlinedAt: !6621)
!6755 = !DILocation(line: 365, column: 26, scope: !6752, inlinedAt: !6621)
!6756 = !DILocation(line: 366, column: 6, scope: !6757, inlinedAt: !6621)
!6757 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 366, column: 6)
!6758 = !DILocation(line: 366, column: 11, scope: !6757, inlinedAt: !6621)
!6759 = !DILocation(line: 366, column: 6, scope: !6617, inlinedAt: !6621)
!6760 = !DILocation(line: 366, column: 26, scope: !6757, inlinedAt: !6621)
!6761 = !DILocation(line: 367, column: 6, scope: !6762, inlinedAt: !6621)
!6762 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 367, column: 6)
!6763 = !DILocation(line: 367, column: 11, scope: !6762, inlinedAt: !6621)
!6764 = !DILocation(line: 367, column: 6, scope: !6617, inlinedAt: !6621)
!6765 = !DILocation(line: 367, column: 26, scope: !6762, inlinedAt: !6621)
!6766 = !DILocation(line: 368, column: 6, scope: !6767, inlinedAt: !6621)
!6767 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 368, column: 6)
!6768 = !DILocation(line: 368, column: 11, scope: !6767, inlinedAt: !6621)
!6769 = !DILocation(line: 368, column: 6, scope: !6617, inlinedAt: !6621)
!6770 = !DILocation(line: 368, column: 26, scope: !6767, inlinedAt: !6621)
!6771 = !DILocation(line: 369, column: 6, scope: !6772, inlinedAt: !6621)
!6772 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 369, column: 6)
!6773 = !DILocation(line: 369, column: 11, scope: !6772, inlinedAt: !6621)
!6774 = !DILocation(line: 369, column: 6, scope: !6617, inlinedAt: !6621)
!6775 = !DILocation(line: 369, column: 26, scope: !6772, inlinedAt: !6621)
!6776 = !DILocation(line: 370, column: 6, scope: !6777, inlinedAt: !6621)
!6777 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 370, column: 6)
!6778 = !DILocation(line: 370, column: 11, scope: !6777, inlinedAt: !6621)
!6779 = !DILocation(line: 370, column: 6, scope: !6617, inlinedAt: !6621)
!6780 = !DILocation(line: 370, column: 26, scope: !6777, inlinedAt: !6621)
!6781 = !DILocation(line: 371, column: 6, scope: !6782, inlinedAt: !6621)
!6782 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 371, column: 6)
!6783 = !DILocation(line: 371, column: 11, scope: !6782, inlinedAt: !6621)
!6784 = !DILocation(line: 371, column: 6, scope: !6617, inlinedAt: !6621)
!6785 = !DILocation(line: 371, column: 26, scope: !6782, inlinedAt: !6621)
!6786 = !DILocation(line: 372, column: 6, scope: !6787, inlinedAt: !6621)
!6787 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 372, column: 6)
!6788 = !DILocation(line: 372, column: 11, scope: !6787, inlinedAt: !6621)
!6789 = !DILocation(line: 372, column: 6, scope: !6617, inlinedAt: !6621)
!6790 = !DILocation(line: 372, column: 26, scope: !6787, inlinedAt: !6621)
!6791 = !DILocation(line: 373, column: 6, scope: !6792, inlinedAt: !6621)
!6792 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 373, column: 6)
!6793 = !DILocation(line: 373, column: 11, scope: !6792, inlinedAt: !6621)
!6794 = !DILocation(line: 373, column: 6, scope: !6617, inlinedAt: !6621)
!6795 = !DILocation(line: 373, column: 26, scope: !6792, inlinedAt: !6621)
!6796 = !DILocation(line: 374, column: 6, scope: !6797, inlinedAt: !6621)
!6797 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 374, column: 6)
!6798 = !DILocation(line: 374, column: 11, scope: !6797, inlinedAt: !6621)
!6799 = !DILocation(line: 374, column: 6, scope: !6617, inlinedAt: !6621)
!6800 = !DILocation(line: 374, column: 26, scope: !6797, inlinedAt: !6621)
!6801 = !DILocation(line: 375, column: 6, scope: !6802, inlinedAt: !6621)
!6802 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 375, column: 6)
!6803 = !DILocation(line: 375, column: 11, scope: !6802, inlinedAt: !6621)
!6804 = !DILocation(line: 375, column: 6, scope: !6617, inlinedAt: !6621)
!6805 = !DILocation(line: 375, column: 27, scope: !6802, inlinedAt: !6621)
!6806 = !DILocation(line: 376, column: 6, scope: !6807, inlinedAt: !6621)
!6807 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 376, column: 6)
!6808 = !DILocation(line: 376, column: 11, scope: !6807, inlinedAt: !6621)
!6809 = !DILocation(line: 376, column: 6, scope: !6617, inlinedAt: !6621)
!6810 = !DILocation(line: 376, column: 32, scope: !6807, inlinedAt: !6621)
!6811 = !DILocation(line: 377, column: 6, scope: !6812, inlinedAt: !6621)
!6812 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 377, column: 6)
!6813 = !DILocation(line: 377, column: 11, scope: !6812, inlinedAt: !6621)
!6814 = !DILocation(line: 377, column: 6, scope: !6617, inlinedAt: !6621)
!6815 = !DILocation(line: 377, column: 32, scope: !6812, inlinedAt: !6621)
!6816 = !DILocation(line: 378, column: 6, scope: !6817, inlinedAt: !6621)
!6817 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 378, column: 6)
!6818 = !DILocation(line: 378, column: 11, scope: !6817, inlinedAt: !6621)
!6819 = !DILocation(line: 378, column: 6, scope: !6617, inlinedAt: !6621)
!6820 = !DILocation(line: 378, column: 32, scope: !6817, inlinedAt: !6621)
!6821 = !DILocation(line: 379, column: 6, scope: !6822, inlinedAt: !6621)
!6822 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 379, column: 6)
!6823 = !DILocation(line: 379, column: 11, scope: !6822, inlinedAt: !6621)
!6824 = !DILocation(line: 379, column: 6, scope: !6617, inlinedAt: !6621)
!6825 = !DILocation(line: 379, column: 33, scope: !6822, inlinedAt: !6621)
!6826 = !DILocation(line: 380, column: 6, scope: !6827, inlinedAt: !6621)
!6827 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 380, column: 6)
!6828 = !DILocation(line: 380, column: 11, scope: !6827, inlinedAt: !6621)
!6829 = !DILocation(line: 380, column: 6, scope: !6617, inlinedAt: !6621)
!6830 = !DILocation(line: 380, column: 33, scope: !6827, inlinedAt: !6621)
!6831 = !DILocation(line: 381, column: 6, scope: !6832, inlinedAt: !6621)
!6832 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 381, column: 6)
!6833 = !DILocation(line: 381, column: 11, scope: !6832, inlinedAt: !6621)
!6834 = !DILocation(line: 381, column: 6, scope: !6617, inlinedAt: !6621)
!6835 = !DILocation(line: 381, column: 33, scope: !6832, inlinedAt: !6621)
!6836 = !DILocation(line: 382, column: 2, scope: !6837, inlinedAt: !6621)
!6837 = distinct !DILexicalBlock(scope: !6838, file: !277, line: 382, column: 2)
!6838 = distinct !DILexicalBlock(scope: !6617, file: !277, line: 382, column: 2)
!6839 = !{i32 -2143426473, i32 -2143426444, i32 -2143426398, i32 -2143426340, i32 -2143426286, i32 -2143426232, i32 -2143426177, i32 -2143426146}
!6840 = !DILocation(line: 382, column: 2, scope: !6841, inlinedAt: !6621)
!6841 = distinct !DILexicalBlock(scope: !6842, file: !277, line: 382, column: 2)
!6842 = distinct !DILexicalBlock(scope: !6838, file: !277, line: 382, column: 2)
!6843 = !{i32 -2143425703, i32 -2143425696, i32 -2143425642, i32 -2143425611, i32 -2143425581}
!6844 = !DILocation(line: 382, column: 2, scope: !6842, inlinedAt: !6621)
!6845 = !DILocation(line: 386, column: 1, scope: !6617, inlinedAt: !6621)
!6846 = !DILocation(line: 547, column: 9, scope: !6597, inlinedAt: !6602)
!6847 = !DILocation(line: 549, column: 8, scope: !6848, inlinedAt: !6602)
!6848 = distinct !DILexicalBlock(scope: !6597, file: !277, line: 549, column: 7)
!6849 = !DILocation(line: 549, column: 7, scope: !6597, inlinedAt: !6602)
!6850 = !DILocation(line: 550, column: 4, scope: !6848, inlinedAt: !6602)
!6851 = !DILocation(line: 553, column: 33, scope: !6597, inlinedAt: !6602)
!6852 = !DILocation(line: 325, column: 6, scope: !6853, inlinedAt: !6615)
!6853 = distinct !DILexicalBlock(scope: !6611, file: !277, line: 325, column: 6)
!6854 = !DILocation(line: 325, column: 6, scope: !6611, inlinedAt: !6615)
!6855 = !DILocation(line: 326, column: 3, scope: !6853, inlinedAt: !6615)
!6856 = !DILocation(line: 332, column: 9, scope: !6611, inlinedAt: !6615)
!6857 = !DILocation(line: 332, column: 15, scope: !6611, inlinedAt: !6615)
!6858 = !DILocation(line: 332, column: 2, scope: !6611, inlinedAt: !6615)
!6859 = !DILocation(line: 336, column: 1, scope: !6611, inlinedAt: !6615)
!6860 = !DILocation(line: 553, column: 5, scope: !6597, inlinedAt: !6602)
!6861 = !DILocation(line: 553, column: 41, scope: !6597, inlinedAt: !6602)
!6862 = !DILocation(line: 554, column: 5, scope: !6597, inlinedAt: !6602)
!6863 = !DILocation(line: 554, column: 12, scope: !6597, inlinedAt: !6602)
!6864 = !DILocation(line: 448, column: 31, scope: !6592, inlinedAt: !6596)
!6865 = !DILocation(line: 448, column: 34, scope: !6592, inlinedAt: !6596)
!6866 = !DILocation(line: 448, column: 14, scope: !6592, inlinedAt: !6596)
!6867 = !DILocation(line: 450, column: 22, scope: !6592, inlinedAt: !6596)
!6868 = !DILocation(line: 450, column: 25, scope: !6592, inlinedAt: !6596)
!6869 = !DILocation(line: 450, column: 30, scope: !6592, inlinedAt: !6596)
!6870 = !DILocation(line: 450, column: 36, scope: !6592, inlinedAt: !6596)
!6871 = !DILocation(line: 450, column: 8, scope: !6592, inlinedAt: !6596)
!6872 = !DILocation(line: 450, column: 6, scope: !6592, inlinedAt: !6596)
!6873 = !DILocation(line: 451, column: 9, scope: !6592, inlinedAt: !6596)
!6874 = !DILocation(line: 552, column: 3, scope: !6597, inlinedAt: !6602)
!6875 = !DILocation(line: 557, column: 19, scope: !6599, inlinedAt: !6602)
!6876 = !DILocation(line: 557, column: 25, scope: !6599, inlinedAt: !6602)
!6877 = !DILocation(line: 557, column: 9, scope: !6599, inlinedAt: !6602)
!6878 = !DILocation(line: 557, column: 2, scope: !6599, inlinedAt: !6602)
!6879 = !DILocation(line: 558, column: 1, scope: !6599, inlinedAt: !6602)
!6880 = !DILocation(line: 591, column: 3, scope: !6603)
!6881 = !DILocation(line: 592, column: 19, scope: !6590)
!6882 = !DILocation(line: 592, column: 26, scope: !6590)
!6883 = !DILocation(line: 592, column: 9, scope: !6590)
!6884 = !DILocation(line: 592, column: 2, scope: !6590)
!6885 = !DILocation(line: 593, column: 1, scope: !6590)
!6886 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6887, file: !6887, line: 52, type: !6888, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6887 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!6888 = !DISubroutineType(types: !6889)
!6889 = !{!599, !599}
!6890 = !DILocalVariable(name: "overflow", arg: 1, scope: !6886, file: !6887, line: 52, type: !599)
!6891 = !DILocation(line: 52, column: 60, scope: !6886)
!6892 = !DILocation(line: 54, column: 9, scope: !6886)
!6893 = !DILocation(line: 54, column: 2, scope: !6886)
!6894 = distinct !DISubprogram(name: "get_order", scope: !6895, file: !6895, line: 29, type: !6896, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6895 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6896 = !DISubroutineType(types: !6897)
!6897 = !{!115, !297}
!6898 = !DILocalVariable(name: "x", arg: 1, scope: !6899, file: !6900, line: 366, type: !291)
!6899 = distinct !DISubprogram(name: "fls64", scope: !6900, file: !6900, line: 366, type: !6901, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6900 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6901 = !DISubroutineType(types: !6902)
!6902 = !{!115, !291}
!6903 = !DILocation(line: 366, column: 40, scope: !6899, inlinedAt: !6904)
!6904 = distinct !DILocation(line: 46, column: 9, scope: !6894)
!6905 = !DILocalVariable(name: "bitpos", scope: !6899, file: !6900, line: 368, type: !115)
!6906 = !DILocation(line: 368, column: 6, scope: !6899, inlinedAt: !6904)
!6907 = !DILocalVariable(name: "size", arg: 1, scope: !6894, file: !6895, line: 29, type: !297)
!6908 = !DILocation(line: 29, column: 63, scope: !6894)
!6909 = !DILocation(line: 31, column: 27, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !6894, file: !6895, line: 31, column: 6)
!6911 = !DILocation(line: 31, column: 6, scope: !6910)
!6912 = !DILocation(line: 31, column: 6, scope: !6894)
!6913 = !DILocation(line: 32, column: 8, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6915, file: !6895, line: 32, column: 7)
!6915 = distinct !DILexicalBlock(scope: !6910, file: !6895, line: 31, column: 34)
!6916 = !DILocation(line: 32, column: 7, scope: !6915)
!6917 = !DILocation(line: 33, column: 4, scope: !6914)
!6918 = !DILocation(line: 35, column: 7, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6915, file: !6895, line: 35, column: 7)
!6920 = !DILocation(line: 35, column: 12, scope: !6919)
!6921 = !DILocation(line: 35, column: 7, scope: !6915)
!6922 = !DILocation(line: 36, column: 4, scope: !6919)
!6923 = !DILocation(line: 38, column: 10, scope: !6915)
!6924 = !DILocation(line: 38, column: 28, scope: !6915)
!6925 = !DILocation(line: 38, column: 41, scope: !6915)
!6926 = !DILocation(line: 38, column: 3, scope: !6915)
!6927 = !DILocation(line: 41, column: 6, scope: !6894)
!6928 = !DILocation(line: 42, column: 7, scope: !6894)
!6929 = !DILocation(line: 46, column: 15, scope: !6894)
!6930 = !DILocation(line: 374, column: 2, scope: !6899, inlinedAt: !6904)
!6931 = !DILocation(line: 376, column: 14, scope: !6899, inlinedAt: !6904)
!6932 = !{i32 363055}
!6933 = !DILocation(line: 377, column: 9, scope: !6899, inlinedAt: !6904)
!6934 = !DILocation(line: 377, column: 16, scope: !6899, inlinedAt: !6904)
!6935 = !DILocation(line: 46, column: 2, scope: !6894)
!6936 = !DILocation(line: 48, column: 1, scope: !6894)
!6937 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6938, file: !6938, line: 30, type: !6939, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6938 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6939 = !DISubroutineType(types: !6940)
!6940 = !{!115, !289}
!6941 = !DILocation(line: 366, column: 40, scope: !6899, inlinedAt: !6942)
!6942 = distinct !DILocation(line: 32, column: 9, scope: !6937)
!6943 = !DILocation(line: 368, column: 6, scope: !6899, inlinedAt: !6942)
!6944 = !DILocalVariable(name: "n", arg: 1, scope: !6937, file: !6938, line: 30, type: !289)
!6945 = !DILocation(line: 30, column: 21, scope: !6937)
!6946 = !DILocation(line: 32, column: 15, scope: !6937)
!6947 = !DILocation(line: 374, column: 2, scope: !6899, inlinedAt: !6942)
!6948 = !DILocation(line: 376, column: 14, scope: !6899, inlinedAt: !6942)
!6949 = !DILocation(line: 377, column: 9, scope: !6899, inlinedAt: !6942)
!6950 = !DILocation(line: 377, column: 16, scope: !6899, inlinedAt: !6942)
!6951 = !DILocation(line: 32, column: 18, scope: !6937)
!6952 = !DILocation(line: 32, column: 2, scope: !6937)
!6953 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6954, file: !6954, line: 137, type: !6955, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6954 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6955 = !DISubroutineType(types: !6956)
!6956 = !{!296, !1085, !2322, !436, !294}
!6957 = !DILocalVariable(name: "s", arg: 1, scope: !6953, file: !6954, line: 137, type: !1085)
!6958 = !DILocation(line: 137, column: 54, scope: !6953)
!6959 = !DILocalVariable(name: "object", arg: 2, scope: !6953, file: !6954, line: 137, type: !2322)
!6960 = !DILocation(line: 137, column: 69, scope: !6953)
!6961 = !DILocalVariable(name: "size", arg: 3, scope: !6953, file: !6954, line: 138, type: !436)
!6962 = !DILocation(line: 138, column: 12, scope: !6953)
!6963 = !DILocalVariable(name: "flags", arg: 4, scope: !6953, file: !6954, line: 138, type: !294)
!6964 = !DILocation(line: 138, column: 24, scope: !6953)
!6965 = !DILocation(line: 140, column: 17, scope: !6953)
!6966 = !DILocation(line: 140, column: 2, scope: !6953)
!6967 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !244, file: !244, line: 672, type: !6968, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6968 = !DISubroutineType(types: !6969)
!6969 = !{!599, !5913, !529}
!6970 = !DILocalVariable(name: "dev", arg: 1, scope: !6967, file: !244, line: 672, type: !5913)
!6971 = !DILocation(line: 672, column: 73, scope: !6967)
!6972 = !DILocalVariable(name: "features", arg: 2, scope: !6967, file: !244, line: 673, type: !529)
!6973 = !DILocation(line: 673, column: 17, scope: !6967)
!6974 = !DILocalVariable(name: "supported", scope: !6967, file: !244, line: 675, type: !529)
!6975 = !DILocation(line: 675, column: 6, scope: !6967)
!6976 = !DILocation(line: 675, column: 18, scope: !6967)
!6977 = !DILocation(line: 675, column: 23, scope: !6967)
!6978 = !DILocation(line: 675, column: 31, scope: !6967)
!6979 = !DILocation(line: 675, column: 49, scope: !6967)
!6980 = !DILocation(line: 675, column: 54, scope: !6967)
!6981 = !DILocation(line: 675, column: 47, scope: !6967)
!6982 = !DILocation(line: 677, column: 9, scope: !6967)
!6983 = !DILocation(line: 677, column: 18, scope: !6967)
!6984 = !DILocation(line: 677, column: 22, scope: !6967)
!6985 = !DILocation(line: 677, column: 34, scope: !6967)
!6986 = !DILocation(line: 677, column: 32, scope: !6967)
!6987 = !DILocation(line: 677, column: 47, scope: !6967)
!6988 = !DILocation(line: 677, column: 44, scope: !6967)
!6989 = !DILocation(line: 0, scope: !6967)
!6990 = !DILocation(line: 677, column: 2, scope: !6967)
!6991 = distinct !DISubprogram(name: "copy_overflow", scope: !5604, file: !5604, line: 132, type: !6992, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!6992 = !DISubroutineType(types: !6993)
!6993 = !{null, !115, !297}
!6994 = !DILocalVariable(name: "size", arg: 1, scope: !6991, file: !5604, line: 132, type: !115)
!6995 = !DILocation(line: 132, column: 38, scope: !6991)
!6996 = !DILocalVariable(name: "count", arg: 2, scope: !6991, file: !5604, line: 132, type: !297)
!6997 = !DILocation(line: 132, column: 58, scope: !6991)
!6998 = !DILocalVariable(name: "__ret_warn_on", scope: !6999, file: !5604, line: 134, type: !115)
!6999 = distinct !DILexicalBlock(scope: !6991, file: !5604, line: 134, column: 2)
!7000 = !DILocation(line: 134, column: 2, scope: !6999)
!7001 = !DILocation(line: 134, column: 2, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6999, file: !5604, line: 134, column: 2)
!7003 = !DILocation(line: 134, column: 2, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !7002, file: !5604, line: 134, column: 2)
!7005 = !DILocation(line: 134, column: 2, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !7004, file: !5604, line: 134, column: 2)
!7007 = !DILocation(line: 134, column: 2, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !7004, file: !5604, line: 134, column: 2)
!7009 = !DILocation(line: 134, column: 2, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7008, file: !5604, line: 134, column: 2)
!7011 = !DILocation(line: 134, column: 2, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !7008, file: !5604, line: 134, column: 2)
!7013 = !{i32 -2145558323, i32 -2145558294, i32 -2145558248, i32 -2145558190, i32 -2145558136, i32 -2145558082, i32 -2145558027, i32 -2145557996}
!7014 = !DILocation(line: 134, column: 2, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7008, file: !5604, line: 134, column: 2)
!7016 = !{i32 -2145557576, i32 -2145557569, i32 -2145557517, i32 -2145557486, i32 -2145557456}
!7017 = !DILocation(line: 134, column: 2, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !7008, file: !5604, line: 134, column: 2)
!7019 = !DILocation(line: 134, column: 2, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !7004, file: !5604, line: 134, column: 2)
!7021 = !DILocation(line: 135, column: 1, scope: !6991)
!7022 = distinct !DISubprogram(name: "check_object_size", scope: !5604, file: !5604, line: 122, type: !7023, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !362)
!7023 = !DISubroutineType(types: !7024)
!7024 = !{null, !2322, !297, !599}
!7025 = !DILocalVariable(name: "ptr", arg: 1, scope: !7022, file: !5604, line: 122, type: !2322)
!7026 = !DILocation(line: 122, column: 50, scope: !7022)
!7027 = !DILocalVariable(name: "n", arg: 2, scope: !7022, file: !5604, line: 122, type: !297)
!7028 = !DILocation(line: 122, column: 69, scope: !7022)
!7029 = !DILocalVariable(name: "to_user", arg: 3, scope: !7022, file: !5604, line: 123, type: !599)
!7030 = !DILocation(line: 123, column: 15, scope: !7022)
!7031 = !DILocation(line: 124, column: 3, scope: !7022)
