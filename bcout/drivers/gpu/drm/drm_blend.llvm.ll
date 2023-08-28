; ModuleID = '../bcout/drivers/gpu/drm/drm_blend.llvm.bc'
source_filename = "drivers/gpu/drm/drm_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.drm_prop_enum_list = type { i32, i8* }
%struct.kmem_cache = type opaque
%struct.drm_plane = type { %struct.drm_device*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, i32*, i32, i8, i64*, i32, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_framebuffer*, %struct.drm_plane_funcs*, %struct.drm_object_properties, i32, i32, %struct.drm_plane_helper_funcs*, %struct.drm_plane_state*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
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
%struct.drm_driver = type opaque
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_file = type opaque
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type opaque
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_atomic_state = type { %struct.kref, %struct.drm_device*, i8, %struct.__drm_planes_state*, %struct.__drm_crtcs_state*, i32, %struct.__drm_connnectors_state*, i32, %struct.__drm_private_objs_state*, %struct.drm_modeset_acquire_ctx*, %struct.drm_crtc_commit*, %struct.work_struct }
%struct.__drm_planes_state = type { %struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_plane_state*, %struct.drm_plane_state* }
%struct.__drm_crtcs_state = type { %struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_crtc_state*, %struct.drm_crtc_state*, %struct.drm_crtc_commit*, i32*, i64 }
%struct.drm_crtc_state = type { %struct.drm_crtc*, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, i32, i8, i8, i8, %struct.drm_pending_vblank_event*, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.drm_property_blob = type { %struct.drm_mode_object, %struct.drm_device*, %struct.list_head, %struct.list_head, i64, i8* }
%struct.drm_pending_vblank_event = type opaque
%struct.__drm_connnectors_state = type { %struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_connector_state*, %struct.drm_connector_state*, i32* }
%struct.drm_connector = type { %struct.drm_device*, %struct.device*, %struct.device_attribute*, %struct.list_head, %struct.drm_mode_object, i8*, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, %struct.drm_connector_funcs*, %struct.drm_property_blob*, %struct.drm_object_properties, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property_blob*, %struct.drm_property*, i8, i32, %struct.drm_connector_helper_funcs*, %struct.drm_cmdline_mode, i32, i8, i64, i32, %struct.drm_encoder*, [128 x i8], [2 x i8], [2 x i32], [2 x i32], %struct.i2c_adapter*, i32, i32, i8, i8, %struct.dentry*, %struct.drm_connector_state*, %struct.drm_property_blob*, i8, %struct.drm_tile_group*, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [4 x i64], [4 x i64], i64, i8 }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_connector_funcs = type { i32 (%struct.drm_connector*, i32)*, void (%struct.drm_connector*)*, i32 (%struct.drm_connector*, i1)*, void (%struct.drm_connector*)*, i32 (%struct.drm_connector*, i32, i32)*, i32 (%struct.drm_connector*, %struct.drm_property*, i64)*, i32 (%struct.drm_connector*)*, void (%struct.drm_connector*)*, void (%struct.drm_connector*)*, %struct.drm_connector_state* (%struct.drm_connector*)*, void (%struct.drm_connector*, %struct.drm_connector_state*)*, i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i64*)*, void (%struct.drm_printer*, %struct.drm_connector_state*)* }
%struct.drm_printer = type { void (%struct.drm_printer*, %struct.va_format*)*, void (%struct.drm_printer*, i8*)*, i8*, i8* }
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct.drm_tile_group = type { %struct.kref, %struct.drm_device*, i32, [8 x i8] }
%struct.hdr_sink_metadata = type { i32, %union.anon.66 }
%union.anon.66 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { %struct.drm_connector*, %struct.drm_crtc*, %struct.drm_encoder*, i32, %struct.drm_atomic_state*, %struct.drm_crtc_commit*, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, %struct.drm_writeback_job*, i8, i8, %struct.drm_property_blob* }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type opaque
%struct.__drm_private_objs_state = type { %struct.drm_private_obj*, %struct.drm_private_state*, %struct.drm_private_state*, %struct.drm_private_state* }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, %struct.drm_private_state*, %struct.drm_private_state_funcs* }
%struct.drm_private_state_funcs = type { %struct.drm_private_state* (%struct.drm_private_obj*)*, void (%struct.drm_private_obj*, %struct.drm_private_state*)* }
%struct.drm_private_state = type { %struct.drm_atomic_state* }
%struct.drm_crtc_commit = type { %struct.drm_crtc*, %struct.kref, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, %struct.drm_pending_vblank_event*, i8 }
%struct.drm_mode_config_helper_funcs = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_vma_offset_manager = type opaque
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.drm_mode_object = type { i32, i32, %struct.drm_object_properties*, %struct.kref, void (%struct.kref*)* }
%struct.drm_crtc = type { %struct.drm_device*, %struct.device_node*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, %struct.drm_plane*, %struct.drm_plane*, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, %struct.drm_crtc_funcs*, i32, i16*, %struct.drm_crtc_helper_funcs*, %struct.drm_object_properties, %struct.drm_crtc_state*, %struct.list_head, %struct.spinlock, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], %struct.drm_self_refresh_data* }
%struct.drm_crtc_funcs = type { void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)*, i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32, i32)*, i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_property*, i64)*, %struct.drm_crtc_state* (%struct.drm_crtc*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, i8*)*, i32 (%struct.drm_crtc*, i8*, i64*)*, i8** (%struct.drm_crtc*, i64*)*, void (%struct.drm_printer*, %struct.drm_crtc_state*)*, i32 (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i1 (%struct.drm_crtc*, i32*, i64*, i1)* }
%struct.drm_mode_set = type { %struct.drm_framebuffer*, %struct.drm_crtc*, %struct.drm_display_mode*, i32, i32, %struct.drm_connector**, i64 }
%struct.drm_crtc_helper_funcs = type opaque
%struct.drm_crtc_crc = type { %struct.spinlock, i8*, i8, i8, %struct.drm_crtc_crc_entry*, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.drm_self_refresh_data = type opaque
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, [16 x i8], %struct.drm_format_info*, %struct.drm_framebuffer_funcs*, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x %struct.drm_gem_object*] }
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_gem_object = type opaque
%struct.drm_plane_funcs = type { i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_plane*)*, void (%struct.drm_plane*)*, i32 (%struct.drm_plane*, %struct.drm_property*, i64)*, %struct.drm_plane_state* (%struct.drm_plane*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64*)*, {}*, void (%struct.drm_plane*)*, void (%struct.drm_printer*, %struct.drm_plane_state*)*, i1 (%struct.drm_plane*, i32, i64)* }
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_plane_helper_funcs = type opaque
%struct.drm_plane_state = type { %struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.dma_fence*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.drm_property_blob*, %struct.drm_rect, %struct.drm_rect, i8, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.dma_fence = type opaque
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, i64*, %struct.drm_device*, %struct.list_head }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@drm_plane_create_rotation_property.props = internal constant [6 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0) }], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"rotate-0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rotate-90\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rotate-180\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"rotate-270\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reflect-x\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"reflect-y\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_blend.c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"zpos\00", align 1
@drm_plane_create_blend_mode_property.props = internal constant [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0) }, %struct.drm_prop_enum_list { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }], align 16, !dbg !5285
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Pre-multiplied\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Coverage\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"pixel blend mode\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"[CRTC:%d:%s] calculating normalized zpos values\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"[PLANE:%d:%s] processing zpos value %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"[PLANE:%d:%s] normalized zpos value %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_plane_create_alpha_property(%struct.drm_plane* %plane) #0 !dbg !5302 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca %struct.drm_plane*, align 8
  %prop = alloca %struct.drm_property*, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !5303, metadata !DIExpression()), !dbg !5304
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !5305, metadata !DIExpression()), !dbg !5306
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5307
  %dev = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 0, !dbg !5308
  %1 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5308
  %call = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 0, i64 65535) #6, !dbg !5309
  store %struct.drm_property* %call, %struct.drm_property** %prop, align 8, !dbg !5310
  %2 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5311
  %tobool = icmp ne %struct.drm_property* %2, null, !dbg !5311
  br i1 %tobool, label %if.end, label %if.then, !dbg !5313

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5314
  br label %return, !dbg !5314

if.end:                                           ; preds = %entry
  %3 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5315
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %3, i32 0, i32 4, !dbg !5316
  %4 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5317
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %4, i64 65535) #6, !dbg !5318
  %5 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5319
  %6 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5320
  %alpha_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 20, !dbg !5321
  store %struct.drm_property* %5, %struct.drm_property** %alpha_property, align 8, !dbg !5322
  %7 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5323
  %state = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 19, !dbg !5325
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state, align 8, !dbg !5325
  %tobool1 = icmp ne %struct.drm_plane_state* %8, null, !dbg !5323
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5326

if.then2:                                         ; preds = %if.end
  %9 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5327
  %state3 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 19, !dbg !5328
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state3, align 8, !dbg !5328
  %alpha = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 12, !dbg !5329
  store i16 -1, i16* %alpha, align 8, !dbg !5330
  br label %if.end4, !dbg !5327

if.end4:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

return:                                           ; preds = %if.end4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5332
  ret i32 %11, !dbg !5332
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create_range(%struct.drm_device*, i32, i8*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @drm_object_attach_property(%struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_plane_create_rotation_property(%struct.drm_plane* %plane, i32 %rotation, i32 %supported_rotations) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca %struct.drm_plane*, align 8
  %rotation.addr = alloca i32, align 4
  %supported_rotations.addr = alloca i32, align 4
  %prop = alloca %struct.drm_property*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on19 = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  %__ret_warn_on52 = alloca i32, align 4
  %tmp76 = alloca i64, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  store i32 %rotation, i32* %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rotation.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  store i32 %supported_rotations, i32* %supported_rotations.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %supported_rotations.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !5339, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5341, metadata !DIExpression()), !dbg !5343
  %0 = load i32, i32* %supported_rotations.addr, align 4, !dbg !5343
  %and = and i32 %0, 15, !dbg !5343
  %cmp = icmp eq i32 %and, 0, !dbg !5343
  %lnot = xor i1 %cmp, true, !dbg !5343
  %lnot1 = xor i1 %lnot, true, !dbg !5343
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5343
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5343
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5344
  %tobool = icmp ne i32 %1, 0, !dbg !5344
  %lnot2 = xor i1 %tobool, true, !dbg !5344
  %lnot4 = xor i1 %lnot2, true, !dbg !5344
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5344
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5344
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5344
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5343

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5344

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5346

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5348

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5346

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 279, i32 2305, i64 12) #7, !dbg !5350, !srcloc !5352
  br label %do.end9, !dbg !5350

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #7, !dbg !5353, !srcloc !5355
  br label %do.body10, !dbg !5346

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5356

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5346

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5346

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5343
  %tobool13 = icmp ne i32 %2, 0, !dbg !5343
  %lnot14 = xor i1 %tobool13, true, !dbg !5343
  %lnot16 = xor i1 %lnot14, true, !dbg !5343
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5343
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5343
  store i64 %conv18, i64* %tmp, align 8, !dbg !5344
  %3 = load i64, i64* %tmp, align 8, !dbg !5343
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on19, metadata !5358, metadata !DIExpression()), !dbg !5360
  %4 = load i32, i32* %rotation.addr, align 4, !dbg !5360
  %and20 = and i32 %4, 15, !dbg !5360
  %conv21 = zext i32 %and20 to i64, !dbg !5360
  %call = call zeroext i1 @is_power_of_2(i64 %conv21) #8, !dbg !5360
  %lnot22 = xor i1 %call, true, !dbg !5360
  %lnot24 = xor i1 %lnot22, true, !dbg !5360
  %lnot26 = xor i1 %lnot24, true, !dbg !5360
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5360
  store i32 %lnot.ext27, i32* %__ret_warn_on19, align 4, !dbg !5360
  %5 = load i32, i32* %__ret_warn_on19, align 4, !dbg !5361
  %tobool28 = icmp ne i32 %5, 0, !dbg !5361
  %lnot29 = xor i1 %tobool28, true, !dbg !5361
  %lnot31 = xor i1 %lnot29, true, !dbg !5361
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !5361
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !5361
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !5361
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !5360

if.then35:                                        ; preds = %if.end
  br label %do.body36, !dbg !5361

do.body36:                                        ; preds = %if.then35
  br label %do.body37, !dbg !5363

do.body37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5365

do.end38:                                         ; preds = %do.body37
  br label %do.body39, !dbg !5363

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 280, i32 2305, i64 12) #7, !dbg !5367, !srcloc !5369
  br label %do.end40, !dbg !5367

do.end40:                                         ; preds = %do.body39
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 253) #7, !dbg !5370, !srcloc !5372
  br label %do.body41, !dbg !5363

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5373

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !5363

do.end43:                                         ; preds = %do.end42
  br label %if.end44, !dbg !5363

if.end44:                                         ; preds = %do.end43, %if.end
  %6 = load i32, i32* %__ret_warn_on19, align 4, !dbg !5360
  %tobool46 = icmp ne i32 %6, 0, !dbg !5360
  %lnot47 = xor i1 %tobool46, true, !dbg !5360
  %lnot49 = xor i1 %lnot47, true, !dbg !5360
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !5360
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !5360
  store i64 %conv51, i64* %tmp45, align 8, !dbg !5361
  %7 = load i64, i64* %tmp45, align 8, !dbg !5360
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on52, metadata !5375, metadata !DIExpression()), !dbg !5377
  %8 = load i32, i32* %rotation.addr, align 4, !dbg !5377
  %9 = load i32, i32* %supported_rotations.addr, align 4, !dbg !5377
  %neg = xor i32 %9, -1, !dbg !5377
  %and53 = and i32 %8, %neg, !dbg !5377
  %tobool54 = icmp ne i32 %and53, 0, !dbg !5377
  %lnot55 = xor i1 %tobool54, true, !dbg !5377
  %lnot57 = xor i1 %lnot55, true, !dbg !5377
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !5377
  store i32 %lnot.ext58, i32* %__ret_warn_on52, align 4, !dbg !5377
  %10 = load i32, i32* %__ret_warn_on52, align 4, !dbg !5378
  %tobool59 = icmp ne i32 %10, 0, !dbg !5378
  %lnot60 = xor i1 %tobool59, true, !dbg !5378
  %lnot62 = xor i1 %lnot60, true, !dbg !5378
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !5378
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !5378
  %tobool65 = icmp ne i64 %conv64, 0, !dbg !5378
  br i1 %tobool65, label %if.then66, label %if.end75, !dbg !5377

if.then66:                                        ; preds = %if.end44
  br label %do.body67, !dbg !5378

do.body67:                                        ; preds = %if.then66
  br label %do.body68, !dbg !5380

do.body68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !5382

do.end69:                                         ; preds = %do.body68
  br label %do.body70, !dbg !5380

do.body70:                                        ; preds = %do.end69
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 281, i32 2305, i64 12) #7, !dbg !5384, !srcloc !5386
  br label %do.end71, !dbg !5384

do.end71:                                         ; preds = %do.body70
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 254) #7, !dbg !5387, !srcloc !5389
  br label %do.body72, !dbg !5380

do.body72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !5390

do.end73:                                         ; preds = %do.body72
  br label %do.end74, !dbg !5380

do.end74:                                         ; preds = %do.end73
  br label %if.end75, !dbg !5380

if.end75:                                         ; preds = %do.end74, %if.end44
  %11 = load i32, i32* %__ret_warn_on52, align 4, !dbg !5377
  %tobool77 = icmp ne i32 %11, 0, !dbg !5377
  %lnot78 = xor i1 %tobool77, true, !dbg !5377
  %lnot80 = xor i1 %lnot78, true, !dbg !5377
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !5377
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !5377
  store i64 %conv82, i64* %tmp76, align 8, !dbg !5378
  %12 = load i64, i64* %tmp76, align 8, !dbg !5377
  %13 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5392
  %dev = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0, !dbg !5393
  %14 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5393
  %15 = load i32, i32* %supported_rotations.addr, align 4, !dbg !5394
  %conv83 = zext i32 %15 to i64, !dbg !5394
  %call84 = call %struct.drm_property* @drm_property_create_bitmask(%struct.drm_device* %14, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.drm_prop_enum_list* getelementptr inbounds ([6 x %struct.drm_prop_enum_list], [6 x %struct.drm_prop_enum_list]* @drm_plane_create_rotation_property.props, i64 0, i64 0), i32 6, i64 %conv83) #6, !dbg !5395
  store %struct.drm_property* %call84, %struct.drm_property** %prop, align 8, !dbg !5396
  %16 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5397
  %tobool85 = icmp ne %struct.drm_property* %16, null, !dbg !5397
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !5399

if.then86:                                        ; preds = %if.end75
  store i32 -12, i32* %retval, align 4, !dbg !5400
  br label %return, !dbg !5400

if.end87:                                         ; preds = %if.end75
  %17 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5401
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 4, !dbg !5402
  %18 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5403
  %19 = load i32, i32* %rotation.addr, align 4, !dbg !5404
  %conv88 = zext i32 %19 to i64, !dbg !5404
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %18, i64 %conv88) #6, !dbg !5405
  %20 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5406
  %state = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 19, !dbg !5408
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state, align 8, !dbg !5408
  %tobool89 = icmp ne %struct.drm_plane_state* %21, null, !dbg !5406
  br i1 %tobool89, label %if.then90, label %if.end93, !dbg !5409

if.then90:                                        ; preds = %if.end87
  %22 = load i32, i32* %rotation.addr, align 4, !dbg !5410
  %23 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5411
  %state91 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %23, i32 0, i32 19, !dbg !5412
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state91, align 8, !dbg !5412
  %rotation92 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 14, !dbg !5413
  store i32 %22, i32* %rotation92, align 4, !dbg !5414
  br label %if.end93, !dbg !5411

if.end93:                                         ; preds = %if.then90, %if.end87
  %25 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5415
  %26 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5416
  %rotation_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 22, !dbg !5417
  store %struct.drm_property* %25, %struct.drm_property** %rotation_property, align 8, !dbg !5418
  store i32 0, i32* %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

return:                                           ; preds = %if.end93, %if.then86
  %27 = load i32, i32* %retval, align 4, !dbg !5420
  ret i32 %27, !dbg !5420
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i1 @is_power_of_2(i64 %n) #3 !dbg !5421 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load i64, i64* %n.addr, align 8, !dbg !5427
  %cmp = icmp ne i64 %0, 0, !dbg !5428
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5429

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !5430
  %2 = load i64, i64* %n.addr, align 8, !dbg !5431
  %sub = sub i64 %2, 1, !dbg !5432
  %and = and i64 %1, %sub, !dbg !5433
  %cmp1 = icmp eq i64 %and, 0, !dbg !5434
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !5435
  ret i1 %3, !dbg !5436
}

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create_bitmask(%struct.drm_device*, i32, i8*, %struct.drm_prop_enum_list*, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_rotation_simplify(i32 %rotation, i32 %supported_rotations) #0 !dbg !5437 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !5440, metadata !DIExpression()), !dbg !5443
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !5447, metadata !DIExpression()), !dbg !5448
  %rotation.addr = alloca i32, align 4
  %supported_rotations.addr = alloca i32, align 4
  store i32 %rotation, i32* %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rotation.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  store i32 %supported_rotations, i32* %supported_rotations.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %supported_rotations.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load i32, i32* %rotation.addr, align 4, !dbg !5453
  %1 = load i32, i32* %supported_rotations.addr, align 4, !dbg !5454
  %neg = xor i32 %1, -1, !dbg !5455
  %and = and i32 %0, %neg, !dbg !5456
  %tobool = icmp ne i32 %and, 0, !dbg !5456
  br i1 %tobool, label %if.then, label %if.end, !dbg !5457

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rotation.addr, align 4, !dbg !5458
  %xor = xor i32 %2, 48, !dbg !5458
  store i32 %xor, i32* %rotation.addr, align 4, !dbg !5458
  %3 = load i32, i32* %rotation.addr, align 4, !dbg !5459
  %and1 = and i32 %3, 48, !dbg !5460
  %conv = zext i32 %and1 to i64, !dbg !5461
  %4 = load i32, i32* %rotation.addr, align 4, !dbg !5462
  %and2 = and i32 %4, 15, !dbg !5462
  store i32 %and2, i32* %x.addr.i, align 4
  %5 = load i32, i32* %x.addr.i, align 4, !dbg !5463
  %6 = call i32 asm "bsfl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 -1) #9, !dbg !5464, !srcloc !5465
  store i32 %6, i32* %r.i, align 4, !dbg !5464
  %7 = load i32, i32* %r.i, align 4, !dbg !5466
  %add.i = add i32 %7, 1, !dbg !5467
  %add = add i32 %add.i, 1, !dbg !5462
  %rem = srem i32 %add, 4, !dbg !5462
  %sh_prom = zext i32 %rem to i64, !dbg !5462
  %shl = shl i64 1, %sh_prom, !dbg !5462
  %or = or i64 %conv, %shl, !dbg !5468
  %conv3 = trunc i64 %or to i32, !dbg !5461
  store i32 %conv3, i32* %rotation.addr, align 4, !dbg !5469
  br label %if.end, !dbg !5470

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %rotation.addr, align 4, !dbg !5471
  ret i32 %8, !dbg !5472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane* %plane, i32 %zpos, i32 %min, i32 %max) #0 !dbg !5473 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca %struct.drm_plane*, align 8
  %zpos.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %prop = alloca %struct.drm_property*, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i32 %zpos, i32* %zpos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %zpos.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i32 %min, i32* %min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !5484, metadata !DIExpression()), !dbg !5485
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5486
  %dev = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 0, !dbg !5487
  %1 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5487
  %2 = load i32, i32* %min.addr, align 4, !dbg !5488
  %conv = zext i32 %2 to i64, !dbg !5488
  %3 = load i32, i32* %max.addr, align 4, !dbg !5489
  %conv1 = zext i32 %3 to i64, !dbg !5489
  %call = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %conv, i64 %conv1) #6, !dbg !5490
  store %struct.drm_property* %call, %struct.drm_property** %prop, align 8, !dbg !5491
  %4 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5492
  %tobool = icmp ne %struct.drm_property* %4, null, !dbg !5492
  br i1 %tobool, label %if.end, label %if.then, !dbg !5494

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

if.end:                                           ; preds = %entry
  %5 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5496
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 4, !dbg !5497
  %6 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5498
  %7 = load i32, i32* %zpos.addr, align 4, !dbg !5499
  %conv2 = zext i32 %7 to i64, !dbg !5499
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %6, i64 %conv2) #6, !dbg !5500
  %8 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5501
  %9 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5502
  %zpos_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 21, !dbg !5503
  store %struct.drm_property* %8, %struct.drm_property** %zpos_property, align 8, !dbg !5504
  %10 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5505
  %state = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 19, !dbg !5507
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state, align 8, !dbg !5507
  %tobool3 = icmp ne %struct.drm_plane_state* %11, null, !dbg !5505
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !5508

if.then4:                                         ; preds = %if.end
  %12 = load i32, i32* %zpos.addr, align 4, !dbg !5509
  %13 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5511
  %state5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 19, !dbg !5512
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state5, align 8, !dbg !5512
  %zpos6 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 15, !dbg !5513
  store i32 %12, i32* %zpos6, align 8, !dbg !5514
  %15 = load i32, i32* %zpos.addr, align 4, !dbg !5515
  %16 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5516
  %state7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 19, !dbg !5517
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state7, align 8, !dbg !5517
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 16, !dbg !5518
  store i32 %15, i32* %normalized_zpos, align 4, !dbg !5519
  br label %if.end8, !dbg !5520

if.end8:                                          ; preds = %if.then4, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5521
  br label %return, !dbg !5521

return:                                           ; preds = %if.end8, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5522
  ret i32 %18, !dbg !5522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_plane_create_zpos_immutable_property(%struct.drm_plane* %plane, i32 %zpos) #0 !dbg !5523 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca %struct.drm_plane*, align 8
  %zpos.addr = alloca i32, align 4
  %prop = alloca %struct.drm_property*, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  store i32 %zpos, i32* %zpos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %zpos.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !5528, metadata !DIExpression()), !dbg !5529
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5530
  %dev = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 0, !dbg !5531
  %1 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5531
  %2 = load i32, i32* %zpos.addr, align 4, !dbg !5532
  %conv = zext i32 %2 to i64, !dbg !5532
  %3 = load i32, i32* %zpos.addr, align 4, !dbg !5533
  %conv1 = zext i32 %3 to i64, !dbg !5533
  %call = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %conv, i64 %conv1) #6, !dbg !5534
  store %struct.drm_property* %call, %struct.drm_property** %prop, align 8, !dbg !5535
  %4 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5536
  %tobool = icmp ne %struct.drm_property* %4, null, !dbg !5536
  br i1 %tobool, label %if.end, label %if.then, !dbg !5538

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5539
  br label %return, !dbg !5539

if.end:                                           ; preds = %entry
  %5 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5540
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 4, !dbg !5541
  %6 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5542
  %7 = load i32, i32* %zpos.addr, align 4, !dbg !5543
  %conv2 = zext i32 %7 to i64, !dbg !5543
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %6, i64 %conv2) #6, !dbg !5544
  %8 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5545
  %9 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5546
  %zpos_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 21, !dbg !5547
  store %struct.drm_property* %8, %struct.drm_property** %zpos_property, align 8, !dbg !5548
  %10 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5549
  %state = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 19, !dbg !5551
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state, align 8, !dbg !5551
  %tobool3 = icmp ne %struct.drm_plane_state* %11, null, !dbg !5549
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !5552

if.then4:                                         ; preds = %if.end
  %12 = load i32, i32* %zpos.addr, align 4, !dbg !5553
  %13 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5555
  %state5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 19, !dbg !5556
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state5, align 8, !dbg !5556
  %zpos6 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 15, !dbg !5557
  store i32 %12, i32* %zpos6, align 8, !dbg !5558
  %15 = load i32, i32* %zpos.addr, align 4, !dbg !5559
  %16 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5560
  %state7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 19, !dbg !5561
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state7, align 8, !dbg !5561
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 16, !dbg !5562
  store i32 %15, i32* %normalized_zpos, align 4, !dbg !5563
  br label %if.end8, !dbg !5564

if.end8:                                          ; preds = %if.then4, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5565
  br label %return, !dbg !5565

return:                                           ; preds = %if.end8, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5566
  ret i32 %18, !dbg !5566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_atomic_normalize_zpos(%struct.drm_device* %dev, %struct.drm_atomic_state* %state) #0 !dbg !5567 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %state.addr = alloca %struct.drm_atomic_state*, align 8
  %crtc = alloca %struct.drm_crtc*, align 8
  %old_crtc_state = alloca %struct.drm_crtc_state*, align 8
  %new_crtc_state = alloca %struct.drm_crtc_state*, align 8
  %plane = alloca %struct.drm_plane*, align 8
  %old_plane_state = alloca %struct.drm_plane_state*, align 8
  %new_plane_state = alloca %struct.drm_plane_state*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  store %struct.drm_atomic_state* %state, %struct.drm_atomic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc, metadata !5572, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.declare(metadata %struct.drm_crtc_state** %old_crtc_state, metadata !5574, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata %struct.drm_crtc_state** %new_crtc_state, metadata !5576, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane, metadata !5578, metadata !DIExpression()), !dbg !5579
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %old_plane_state, metadata !5580, metadata !DIExpression()), !dbg !5581
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %new_plane_state, metadata !5582, metadata !DIExpression()), !dbg !5583
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5584, metadata !DIExpression()), !dbg !5585
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5586, metadata !DIExpression()), !dbg !5587
  store i32 0, i32* %ret, align 4, !dbg !5587
  store i32 0, i32* %i, align 4, !dbg !5588
  br label %for.cond, !dbg !5588

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5590
  %1 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5590
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %1, i32 0, i32 1, !dbg !5590
  %2 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5590
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 35, !dbg !5590
  %num_total_plane = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 17, !dbg !5590
  %3 = load i32, i32* %num_total_plane, align 8, !dbg !5590
  %cmp = icmp slt i32 %0, %3, !dbg !5590
  br i1 %cmp, label %for.body, label %for.end, !dbg !5588

for.body:                                         ; preds = %for.cond
  %4 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5592
  %planes = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %4, i32 0, i32 3, !dbg !5592
  %5 = load %struct.__drm_planes_state*, %struct.__drm_planes_state** %planes, align 8, !dbg !5592
  %6 = load i32, i32* %i, align 4, !dbg !5592
  %idxprom = sext i32 %6 to i64, !dbg !5592
  %arrayidx = getelementptr %struct.__drm_planes_state, %struct.__drm_planes_state* %5, i64 %idxprom, !dbg !5592
  %ptr = getelementptr inbounds %struct.__drm_planes_state, %struct.__drm_planes_state* %arrayidx, i32 0, i32 0, !dbg !5592
  %7 = load %struct.drm_plane*, %struct.drm_plane** %ptr, align 8, !dbg !5592
  %tobool = icmp ne %struct.drm_plane* %7, null, !dbg !5592
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5592

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5592
  %planes2 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %8, i32 0, i32 3, !dbg !5592
  %9 = load %struct.__drm_planes_state*, %struct.__drm_planes_state** %planes2, align 8, !dbg !5592
  %10 = load i32, i32* %i, align 4, !dbg !5592
  %idxprom3 = sext i32 %10 to i64, !dbg !5592
  %arrayidx4 = getelementptr %struct.__drm_planes_state, %struct.__drm_planes_state* %9, i64 %idxprom3, !dbg !5592
  %ptr5 = getelementptr inbounds %struct.__drm_planes_state, %struct.__drm_planes_state* %arrayidx4, i32 0, i32 0, !dbg !5592
  %11 = load %struct.drm_plane*, %struct.drm_plane** %ptr5, align 8, !dbg !5592
  store %struct.drm_plane* %11, %struct.drm_plane** %plane, align 8, !dbg !5592
  %12 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5592
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5592
  %planes6 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %13, i32 0, i32 3, !dbg !5592
  %14 = load %struct.__drm_planes_state*, %struct.__drm_planes_state** %planes6, align 8, !dbg !5592
  %15 = load i32, i32* %i, align 4, !dbg !5592
  %idxprom7 = sext i32 %15 to i64, !dbg !5592
  %arrayidx8 = getelementptr %struct.__drm_planes_state, %struct.__drm_planes_state* %14, i64 %idxprom7, !dbg !5592
  %old_state = getelementptr inbounds %struct.__drm_planes_state, %struct.__drm_planes_state* %arrayidx8, i32 0, i32 2, !dbg !5592
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %old_state, align 8, !dbg !5592
  store %struct.drm_plane_state* %16, %struct.drm_plane_state** %old_plane_state, align 8, !dbg !5592
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5592
  %planes9 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %17, i32 0, i32 3, !dbg !5592
  %18 = load %struct.__drm_planes_state*, %struct.__drm_planes_state** %planes9, align 8, !dbg !5592
  %19 = load i32, i32* %i, align 4, !dbg !5592
  %idxprom10 = sext i32 %19 to i64, !dbg !5592
  %arrayidx11 = getelementptr %struct.__drm_planes_state, %struct.__drm_planes_state* %18, i64 %idxprom10, !dbg !5592
  %new_state = getelementptr inbounds %struct.__drm_planes_state, %struct.__drm_planes_state* %arrayidx11, i32 0, i32 3, !dbg !5592
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %new_state, align 8, !dbg !5592
  store %struct.drm_plane_state* %20, %struct.drm_plane_state** %new_plane_state, align 8, !dbg !5592
  br i1 true, label %if.else, label %if.then, !dbg !5590

if.then:                                          ; preds = %land.lhs.true, %for.body
  br label %if.end19, !dbg !5594

if.else:                                          ; preds = %land.lhs.true
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %new_plane_state, align 8, !dbg !5596
  %crtc12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 1, !dbg !5598
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc12, align 8, !dbg !5598
  store %struct.drm_crtc* %22, %struct.drm_crtc** %crtc, align 8, !dbg !5599
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5600
  %tobool13 = icmp ne %struct.drm_crtc* %23, null, !dbg !5600
  br i1 %tobool13, label %if.end, label %if.then14, !dbg !5602

if.then14:                                        ; preds = %if.else
  br label %for.inc, !dbg !5603

if.end:                                           ; preds = %if.else
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %old_plane_state, align 8, !dbg !5604
  %zpos = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 15, !dbg !5606
  %25 = load i32, i32* %zpos, align 8, !dbg !5606
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %new_plane_state, align 8, !dbg !5607
  %zpos15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 15, !dbg !5608
  %27 = load i32, i32* %zpos15, align 8, !dbg !5608
  %cmp16 = icmp ne i32 %25, %27, !dbg !5609
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5610

if.then17:                                        ; preds = %if.end
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5611
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5613
  %call = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %28, %struct.drm_crtc* %29) #6, !dbg !5614
  store %struct.drm_crtc_state* %call, %struct.drm_crtc_state** %new_crtc_state, align 8, !dbg !5615
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_crtc_state, align 8, !dbg !5616
  %zpos_changed = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %30, i32 0, i32 3, !dbg !5617
  %bf.load = load i8, i8* %zpos_changed, align 2, !dbg !5618
  %bf.clear = and i8 %bf.load, -17, !dbg !5618
  %bf.set = or i8 %bf.clear, 16, !dbg !5618
  store i8 %bf.set, i8* %zpos_changed, align 2, !dbg !5618
  br label %if.end18, !dbg !5619

if.end18:                                         ; preds = %if.then17, %if.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  br label %for.inc, !dbg !5592

for.inc:                                          ; preds = %if.end19, %if.then14
  %31 = load i32, i32* %i, align 4, !dbg !5590
  %inc = add i32 %31, 1, !dbg !5590
  store i32 %inc, i32* %i, align 4, !dbg !5590
  br label %for.cond, !dbg !5590, !llvm.loop !5620

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5622
  br label %for.cond20, !dbg !5622

for.cond20:                                       ; preds = %for.inc56, %for.end
  %32 = load i32, i32* %i, align 4, !dbg !5624
  %33 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5624
  %dev21 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %33, i32 0, i32 1, !dbg !5624
  %34 = load %struct.drm_device*, %struct.drm_device** %dev21, align 8, !dbg !5624
  %mode_config22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 35, !dbg !5624
  %num_crtc = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config22, i32 0, i32 19, !dbg !5624
  %35 = load i32, i32* %num_crtc, align 8, !dbg !5624
  %cmp23 = icmp slt i32 %32, %35, !dbg !5624
  br i1 %cmp23, label %for.body24, label %for.end58, !dbg !5622

for.body24:                                       ; preds = %for.cond20
  %36 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5626
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %36, i32 0, i32 4, !dbg !5626
  %37 = load %struct.__drm_crtcs_state*, %struct.__drm_crtcs_state** %crtcs, align 8, !dbg !5626
  %38 = load i32, i32* %i, align 4, !dbg !5626
  %idxprom25 = sext i32 %38 to i64, !dbg !5626
  %arrayidx26 = getelementptr %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %37, i64 %idxprom25, !dbg !5626
  %ptr27 = getelementptr inbounds %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %arrayidx26, i32 0, i32 0, !dbg !5626
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %ptr27, align 8, !dbg !5626
  %tobool28 = icmp ne %struct.drm_crtc* %39, null, !dbg !5626
  br i1 %tobool28, label %land.lhs.true29, label %if.then42, !dbg !5626

land.lhs.true29:                                  ; preds = %for.body24
  %40 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5626
  %crtcs30 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %40, i32 0, i32 4, !dbg !5626
  %41 = load %struct.__drm_crtcs_state*, %struct.__drm_crtcs_state** %crtcs30, align 8, !dbg !5626
  %42 = load i32, i32* %i, align 4, !dbg !5626
  %idxprom31 = sext i32 %42 to i64, !dbg !5626
  %arrayidx32 = getelementptr %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %41, i64 %idxprom31, !dbg !5626
  %ptr33 = getelementptr inbounds %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %arrayidx32, i32 0, i32 0, !dbg !5626
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %ptr33, align 8, !dbg !5626
  store %struct.drm_crtc* %43, %struct.drm_crtc** %crtc, align 8, !dbg !5626
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5626
  %45 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5626
  %crtcs34 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %45, i32 0, i32 4, !dbg !5626
  %46 = load %struct.__drm_crtcs_state*, %struct.__drm_crtcs_state** %crtcs34, align 8, !dbg !5626
  %47 = load i32, i32* %i, align 4, !dbg !5626
  %idxprom35 = sext i32 %47 to i64, !dbg !5626
  %arrayidx36 = getelementptr %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %46, i64 %idxprom35, !dbg !5626
  %old_state37 = getelementptr inbounds %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %arrayidx36, i32 0, i32 2, !dbg !5626
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %old_state37, align 8, !dbg !5626
  store %struct.drm_crtc_state* %48, %struct.drm_crtc_state** %old_crtc_state, align 8, !dbg !5626
  %49 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %old_crtc_state, align 8, !dbg !5626
  %50 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5626
  %crtcs38 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %50, i32 0, i32 4, !dbg !5626
  %51 = load %struct.__drm_crtcs_state*, %struct.__drm_crtcs_state** %crtcs38, align 8, !dbg !5626
  %52 = load i32, i32* %i, align 4, !dbg !5626
  %idxprom39 = sext i32 %52 to i64, !dbg !5626
  %arrayidx40 = getelementptr %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %51, i64 %idxprom39, !dbg !5626
  %new_state41 = getelementptr inbounds %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %arrayidx40, i32 0, i32 3, !dbg !5626
  %53 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_state41, align 8, !dbg !5626
  store %struct.drm_crtc_state* %53, %struct.drm_crtc_state** %new_crtc_state, align 8, !dbg !5626
  br i1 true, label %if.else43, label %if.then42, !dbg !5624

if.then42:                                        ; preds = %land.lhs.true29, %for.body24
  br label %if.end55, !dbg !5628

if.else43:                                        ; preds = %land.lhs.true29
  %54 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %old_crtc_state, align 8, !dbg !5630
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %54, i32 0, i32 4, !dbg !5633
  %55 = load i32, i32* %plane_mask, align 4, !dbg !5633
  %56 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_crtc_state, align 8, !dbg !5634
  %plane_mask44 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %56, i32 0, i32 4, !dbg !5635
  %57 = load i32, i32* %plane_mask44, align 4, !dbg !5635
  %cmp45 = icmp ne i32 %55, %57, !dbg !5636
  br i1 %cmp45, label %if.then49, label %lor.lhs.false, !dbg !5637

lor.lhs.false:                                    ; preds = %if.else43
  %58 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_crtc_state, align 8, !dbg !5638
  %zpos_changed46 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %58, i32 0, i32 3, !dbg !5639
  %bf.load47 = load i8, i8* %zpos_changed46, align 2, !dbg !5639
  %bf.lshr = lshr i8 %bf.load47, 4, !dbg !5639
  %bf.clear48 = and i8 %bf.lshr, 1, !dbg !5639
  %bf.cast = trunc i8 %bf.clear48 to i1, !dbg !5639
  br i1 %bf.cast, label %if.then49, label %if.end54, !dbg !5640

if.then49:                                        ; preds = %lor.lhs.false, %if.else43
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5641
  %60 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_crtc_state, align 8, !dbg !5643
  %call50 = call i32 @drm_atomic_helper_crtc_normalize_zpos(%struct.drm_crtc* %59, %struct.drm_crtc_state* %60) #6, !dbg !5644
  store i32 %call50, i32* %ret, align 4, !dbg !5645
  %61 = load i32, i32* %ret, align 4, !dbg !5646
  %tobool51 = icmp ne i32 %61, 0, !dbg !5646
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !5648

if.then52:                                        ; preds = %if.then49
  %62 = load i32, i32* %ret, align 4, !dbg !5649
  store i32 %62, i32* %retval, align 4, !dbg !5650
  br label %return, !dbg !5650

if.end53:                                         ; preds = %if.then49
  br label %if.end54, !dbg !5651

if.end54:                                         ; preds = %if.end53, %lor.lhs.false
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then42
  br label %for.inc56, !dbg !5626

for.inc56:                                        ; preds = %if.end55
  %63 = load i32, i32* %i, align 4, !dbg !5624
  %inc57 = add i32 %63, 1, !dbg !5624
  store i32 %inc57, i32* %i, align 4, !dbg !5624
  br label %for.cond20, !dbg !5624, !llvm.loop !5652

for.end58:                                        ; preds = %for.cond20
  store i32 0, i32* %retval, align 4, !dbg !5654
  br label %return, !dbg !5654

return:                                           ; preds = %for.end58, %if.then52
  %64 = load i32, i32* %retval, align 4, !dbg !5655
  ret i32 %64, !dbg !5655
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %state, %struct.drm_crtc* %crtc) #0 !dbg !5656 {
entry:
  %state.addr = alloca %struct.drm_atomic_state*, align 8
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  store %struct.drm_atomic_state* %state, %struct.drm_atomic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  %0 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5663
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %0, i32 0, i32 4, !dbg !5664
  %1 = load %struct.__drm_crtcs_state*, %struct.__drm_crtcs_state** %crtcs, align 8, !dbg !5664
  %2 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5665
  %call = call i32 @drm_crtc_index(%struct.drm_crtc* %2) #6, !dbg !5666
  %idxprom = zext i32 %call to i64, !dbg !5663
  %arrayidx = getelementptr %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %1, i64 %idxprom, !dbg !5663
  %new_state = getelementptr inbounds %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %arrayidx, i32 0, i32 3, !dbg !5667
  %3 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_state, align 8, !dbg !5667
  ret %struct.drm_crtc_state* %3, !dbg !5668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_atomic_helper_crtc_normalize_zpos(%struct.drm_crtc* %crtc, %struct.drm_crtc_state* %crtc_state) #0 !dbg !5669 {
entry:
  %retval = alloca i32, align 4
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  %crtc_state.addr = alloca %struct.drm_crtc_state*, align 8
  %state = alloca %struct.drm_atomic_state*, align 8
  %dev = alloca %struct.drm_device*, align 8
  %total_planes = alloca i32, align 4
  %states = alloca %struct.drm_plane_state**, align 8
  %plane = alloca %struct.drm_plane*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_plane*, align 8
  %plane_state = alloca %struct.drm_plane_state*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp25 = alloca %struct.drm_plane*, align 8
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  store %struct.drm_crtc_state* %crtc_state, %struct.drm_crtc_state** %crtc_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc_state** %crtc_state.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state, metadata !5676, metadata !DIExpression()), !dbg !5677
  %0 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %crtc_state.addr, align 8, !dbg !5678
  %state1 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %0, i32 0, i32 19, !dbg !5679
  %1 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state1, align 8, !dbg !5679
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %state, align 8, !dbg !5677
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5680, metadata !DIExpression()), !dbg !5681
  %2 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5682
  %dev2 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %2, i32 0, i32 0, !dbg !5683
  %3 = load %struct.drm_device*, %struct.drm_device** %dev2, align 8, !dbg !5683
  store %struct.drm_device* %3, %struct.drm_device** %dev, align 8, !dbg !5681
  call void @llvm.dbg.declare(metadata i32* %total_planes, metadata !5684, metadata !DIExpression()), !dbg !5685
  %4 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5686
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 35, !dbg !5687
  %num_total_plane = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 17, !dbg !5688
  %5 = load i32, i32* %num_total_plane, align 8, !dbg !5688
  store i32 %5, i32* %total_planes, align 4, !dbg !5685
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state*** %states, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5693, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5695, metadata !DIExpression()), !dbg !5696
  store i32 0, i32* %n, align 4, !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5697, metadata !DIExpression()), !dbg !5698
  store i32 0, i32* %ret, align 4, !dbg !5698
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5699
  %base = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 5, !dbg !5699
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base, i32 0, i32 0, !dbg !5699
  %7 = load i32, i32* %id, align 8, !dbg !5699
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5699
  %name = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 3, !dbg !5699
  %9 = load i8*, i8** %name, align 8, !dbg !5699
  call void (i32, i8*, ...) @__drm_dbg(i32 16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %7, i8* %9) #6, !dbg !5699
  %10 = load i32, i32* %total_planes, align 4, !dbg !5700
  %conv = sext i32 %10 to i64, !dbg !5700
  %call = call i8* @kmalloc_array(i64 %conv, i64 8, i32 3264) #6, !dbg !5701
  %11 = bitcast i8* %call to %struct.drm_plane_state**, !dbg !5701
  store %struct.drm_plane_state** %11, %struct.drm_plane_state*** %states, align 8, !dbg !5702
  %12 = load %struct.drm_plane_state**, %struct.drm_plane_state*** %states, align 8, !dbg !5703
  %tobool = icmp ne %struct.drm_plane_state** %12, null, !dbg !5703
  br i1 %tobool, label %if.end, label %if.then, !dbg !5705

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5706
  br label %return, !dbg !5706

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5707, metadata !DIExpression()), !dbg !5710
  %13 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5710
  %mode_config3 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 35, !dbg !5710
  %plane_list = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config3, i32 0, i32 18, !dbg !5710
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %plane_list, i32 0, i32 0, !dbg !5710
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5710
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !5710
  store i8* %15, i8** %__mptr, align 8, !dbg !5710
  br label %do.body, !dbg !5710

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5711

do.end:                                           ; preds = %do.body
  %16 = load i8*, i8** %__mptr, align 8, !dbg !5710
  %add.ptr = getelementptr i8, i8* %16, i64 -8, !dbg !5710
  %17 = bitcast i8* %add.ptr to %struct.drm_plane*, !dbg !5710
  store %struct.drm_plane* %17, %struct.drm_plane** %tmp, align 8, !dbg !5711
  %18 = load %struct.drm_plane*, %struct.drm_plane** %tmp, align 8, !dbg !5710
  store %struct.drm_plane* %18, %struct.drm_plane** %plane, align 8, !dbg !5713
  br label %for.cond, !dbg !5713

for.cond:                                         ; preds = %do.end24, %do.end
  %19 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5714
  %head = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 1, !dbg !5714
  %20 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5714
  %mode_config4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 35, !dbg !5714
  %plane_list5 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config4, i32 0, i32 18, !dbg !5714
  %cmp = icmp eq %struct.list_head* %head, %plane_list5, !dbg !5714
  %lnot = xor i1 %cmp, true, !dbg !5714
  br i1 %lnot, label %for.body, label %for.end, !dbg !5713

for.body:                                         ; preds = %for.cond
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %crtc_state.addr, align 8, !dbg !5716
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %21, i32 0, i32 4, !dbg !5716
  %22 = load i32, i32* %plane_mask, align 4, !dbg !5716
  %23 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5716
  %call7 = call i32 @drm_plane_mask(%struct.drm_plane* %23) #6, !dbg !5716
  %and = and i32 %22, %call7, !dbg !5716
  %tobool8 = icmp ne i32 %and, 0, !dbg !5716
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !5714

if.then9:                                         ; preds = %for.body
  br label %if.end19, !dbg !5718

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %plane_state, metadata !5720, metadata !DIExpression()), !dbg !5722
  %24 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5723
  %25 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5724
  %call10 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %24, %struct.drm_plane* %25) #6, !dbg !5725
  store %struct.drm_plane_state* %call10, %struct.drm_plane_state** %plane_state, align 8, !dbg !5722
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5726
  %27 = bitcast %struct.drm_plane_state* %26 to i8*, !dbg !5726
  %call11 = call zeroext i1 @IS_ERR(i8* %27) #6, !dbg !5728
  br i1 %call11, label %if.then12, label %if.end15, !dbg !5729

if.then12:                                        ; preds = %if.else
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5730
  %29 = bitcast %struct.drm_plane_state* %28 to i8*, !dbg !5730
  %call13 = call i64 @PTR_ERR(i8* %29) #6, !dbg !5732
  %conv14 = trunc i64 %call13 to i32, !dbg !5732
  store i32 %conv14, i32* %ret, align 4, !dbg !5733
  br label %done, !dbg !5734

if.end15:                                         ; preds = %if.else
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5735
  %31 = load %struct.drm_plane_state**, %struct.drm_plane_state*** %states, align 8, !dbg !5736
  %32 = load i32, i32* %n, align 4, !dbg !5737
  %inc = add i32 %32, 1, !dbg !5737
  store i32 %inc, i32* %n, align 4, !dbg !5737
  %idxprom = sext i32 %32 to i64, !dbg !5736
  %arrayidx = getelementptr %struct.drm_plane_state*, %struct.drm_plane_state** %31, i64 %idxprom, !dbg !5736
  store %struct.drm_plane_state* %30, %struct.drm_plane_state** %arrayidx, align 8, !dbg !5738
  %33 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5739
  %base16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 4, !dbg !5739
  %id17 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base16, i32 0, i32 0, !dbg !5739
  %34 = load i32, i32* %id17, align 8, !dbg !5739
  %35 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5739
  %name18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i32 0, i32 2, !dbg !5739
  %36 = load i8*, i8** %name18, align 8, !dbg !5739
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5739
  %zpos = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 15, !dbg !5739
  %38 = load i32, i32* %zpos, align 8, !dbg !5739
  call void (i32, i8*, ...) @__drm_dbg(i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %34, i8* %36, i32 %38) #6, !dbg !5739
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.then9
  br label %for.inc, !dbg !5716

for.inc:                                          ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !5740, metadata !DIExpression()), !dbg !5742
  %39 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5742
  %head21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 1, !dbg !5742
  %next22 = getelementptr inbounds %struct.list_head, %struct.list_head* %head21, i32 0, i32 0, !dbg !5742
  %40 = load %struct.list_head*, %struct.list_head** %next22, align 8, !dbg !5742
  %41 = bitcast %struct.list_head* %40 to i8*, !dbg !5742
  store i8* %41, i8** %__mptr20, align 8, !dbg !5742
  br label %do.body23, !dbg !5742

do.body23:                                        ; preds = %for.inc
  br label %do.end24, !dbg !5743

do.end24:                                         ; preds = %do.body23
  %42 = load i8*, i8** %__mptr20, align 8, !dbg !5742
  %add.ptr26 = getelementptr i8, i8* %42, i64 -8, !dbg !5742
  %43 = bitcast i8* %add.ptr26 to %struct.drm_plane*, !dbg !5742
  store %struct.drm_plane* %43, %struct.drm_plane** %tmp25, align 8, !dbg !5743
  %44 = load %struct.drm_plane*, %struct.drm_plane** %tmp25, align 8, !dbg !5742
  store %struct.drm_plane* %44, %struct.drm_plane** %plane, align 8, !dbg !5714
  br label %for.cond, !dbg !5714, !llvm.loop !5745

for.end:                                          ; preds = %for.cond
  %45 = load %struct.drm_plane_state**, %struct.drm_plane_state*** %states, align 8, !dbg !5747
  %46 = bitcast %struct.drm_plane_state** %45 to i8*, !dbg !5747
  %47 = load i32, i32* %n, align 4, !dbg !5748
  %conv27 = sext i32 %47 to i64, !dbg !5748
  call void @sort(i8* %46, i64 %conv27, i64 8, i32 (i8*, i8*)* @drm_atomic_state_zpos_cmp, void (i8*, i8*, i32)* null) #6, !dbg !5749
  store i32 0, i32* %i, align 4, !dbg !5750
  br label %for.cond28, !dbg !5752

for.cond28:                                       ; preds = %for.inc40, %for.end
  %48 = load i32, i32* %i, align 4, !dbg !5753
  %49 = load i32, i32* %n, align 4, !dbg !5755
  %cmp29 = icmp slt i32 %48, %49, !dbg !5756
  br i1 %cmp29, label %for.body31, label %for.end42, !dbg !5757

for.body31:                                       ; preds = %for.cond28
  %50 = load %struct.drm_plane_state**, %struct.drm_plane_state*** %states, align 8, !dbg !5758
  %51 = load i32, i32* %i, align 4, !dbg !5760
  %idxprom32 = sext i32 %51 to i64, !dbg !5758
  %arrayidx33 = getelementptr %struct.drm_plane_state*, %struct.drm_plane_state** %50, i64 %idxprom32, !dbg !5758
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %arrayidx33, align 8, !dbg !5758
  %plane34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %52, i32 0, i32 0, !dbg !5761
  %53 = load %struct.drm_plane*, %struct.drm_plane** %plane34, align 8, !dbg !5761
  store %struct.drm_plane* %53, %struct.drm_plane** %plane, align 8, !dbg !5762
  %54 = load i32, i32* %i, align 4, !dbg !5763
  %55 = load %struct.drm_plane_state**, %struct.drm_plane_state*** %states, align 8, !dbg !5764
  %56 = load i32, i32* %i, align 4, !dbg !5765
  %idxprom35 = sext i32 %56 to i64, !dbg !5764
  %arrayidx36 = getelementptr %struct.drm_plane_state*, %struct.drm_plane_state** %55, i64 %idxprom35, !dbg !5764
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %arrayidx36, align 8, !dbg !5764
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 16, !dbg !5766
  store i32 %54, i32* %normalized_zpos, align 4, !dbg !5767
  %58 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5768
  %base37 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 4, !dbg !5768
  %id38 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base37, i32 0, i32 0, !dbg !5768
  %59 = load i32, i32* %id38, align 8, !dbg !5768
  %60 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5768
  %name39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %60, i32 0, i32 2, !dbg !5768
  %61 = load i8*, i8** %name39, align 8, !dbg !5768
  %62 = load i32, i32* %i, align 4, !dbg !5768
  call void (i32, i8*, ...) @__drm_dbg(i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %59, i8* %61, i32 %62) #6, !dbg !5768
  br label %for.inc40, !dbg !5769

for.inc40:                                        ; preds = %for.body31
  %63 = load i32, i32* %i, align 4, !dbg !5770
  %inc41 = add i32 %63, 1, !dbg !5770
  store i32 %inc41, i32* %i, align 4, !dbg !5770
  br label %for.cond28, !dbg !5771, !llvm.loop !5772

for.end42:                                        ; preds = %for.cond28
  %64 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %crtc_state.addr, align 8, !dbg !5774
  %zpos_changed = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %64, i32 0, i32 3, !dbg !5775
  %bf.load = load i8, i8* %zpos_changed, align 2, !dbg !5776
  %bf.clear = and i8 %bf.load, -17, !dbg !5776
  %bf.set = or i8 %bf.clear, 16, !dbg !5776
  store i8 %bf.set, i8* %zpos_changed, align 2, !dbg !5776
  br label %done, !dbg !5774

done:                                             ; preds = %for.end42, %if.then12
  call void @llvm.dbg.label(metadata !5777), !dbg !5778
  %65 = load %struct.drm_plane_state**, %struct.drm_plane_state*** %states, align 8, !dbg !5779
  %66 = bitcast %struct.drm_plane_state** %65 to i8*, !dbg !5779
  call void @kfree(i8* %66) #6, !dbg !5780
  %67 = load i32, i32* %ret, align 4, !dbg !5781
  store i32 %67, i32* %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

return:                                           ; preds = %done, %if.then
  %68 = load i32, i32* %retval, align 4, !dbg !5783
  ret i32 %68, !dbg !5783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_plane_create_blend_mode_property(%struct.drm_plane* %plane, i32 %supported_modes) #0 !dbg !5287 {
entry:
  %w.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr.i, metadata !5784, metadata !DIExpression()), !dbg !5789
  %res.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %res.i, metadata !5791, metadata !DIExpression()), !dbg !5792
  %retval = alloca i32, align 4
  %plane.addr = alloca %struct.drm_plane*, align 8
  %supported_modes.addr = alloca i32, align 4
  %dev = alloca %struct.drm_device*, align 8
  %prop = alloca %struct.drm_property*, align 8
  %valid_mode_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !5793, metadata !DIExpression()), !dbg !5794
  store i32 %supported_modes, i32* %supported_modes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %supported_modes.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5797, metadata !DIExpression()), !dbg !5798
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5799
  %dev1 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 0, !dbg !5800
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5800
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5798
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !5801, metadata !DIExpression()), !dbg !5802
  call void @llvm.dbg.declare(metadata i32* %valid_mode_mask, metadata !5803, metadata !DIExpression()), !dbg !5804
  store i32 7, i32* %valid_mode_mask, align 4, !dbg !5804
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5805, metadata !DIExpression()), !dbg !5806
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5807, metadata !DIExpression()), !dbg !5810
  %2 = load i32, i32* %supported_modes.addr, align 4, !dbg !5810
  %3 = load i32, i32* %valid_mode_mask, align 4, !dbg !5810
  %neg = xor i32 %3, -1, !dbg !5810
  %and = and i32 %2, %neg, !dbg !5810
  %tobool = icmp ne i32 %and, 0, !dbg !5810
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5810

lor.rhs:                                          ; preds = %entry
  %4 = load i32, i32* %supported_modes.addr, align 4, !dbg !5810
  %conv = zext i32 %4 to i64, !dbg !5810
  %and2 = and i64 %conv, 1, !dbg !5810
  %cmp = icmp eq i64 %and2, 0, !dbg !5810
  br label %lor.end, !dbg !5810

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !5810
  %lnot4 = xor i1 %lnot, true, !dbg !5810
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5810
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5810
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !5811
  %tobool5 = icmp ne i32 %6, 0, !dbg !5811
  %lnot6 = xor i1 %tobool5, true, !dbg !5811
  %lnot8 = xor i1 %lnot6, true, !dbg !5811
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5811
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5811
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !5811
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5810

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5811

do.body:                                          ; preds = %if.then
  br label %do.body12, !dbg !5813

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !5815

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !5813

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 581, i32 2305, i64 12) #7, !dbg !5817, !srcloc !5819
  br label %do.end14, !dbg !5817

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 257) #7, !dbg !5820, !srcloc !5822
  br label %do.body15, !dbg !5813

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5823

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !5813

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !5813

if.end:                                           ; preds = %do.end17, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5810
  %tobool18 = icmp ne i32 %7, 0, !dbg !5810
  %lnot19 = xor i1 %tobool18, true, !dbg !5810
  %lnot21 = xor i1 %lnot19, true, !dbg !5810
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5810
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5810
  store i64 %conv23, i64* %tmp, align 8, !dbg !5811
  %8 = load i64, i64* %tmp, align 8, !dbg !5810
  %tobool24 = icmp ne i64 %8, 0, !dbg !5825
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5826

if.then25:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end26:                                         ; preds = %if.end
  %9 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5828
  %10 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %11 = call i1 @llvm.is.constant.i32(i32 %10), !dbg !5829
  br i1 %11, label %cond.true, label %cond.false, !dbg !5829

cond.true:                                        ; preds = %if.end26
  %12 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv27 = zext i32 %12 to i64, !dbg !5829
  %and28 = and i64 %conv27, 1, !dbg !5829
  %tobool29 = icmp ne i64 %and28, 0, !dbg !5829
  %lnot30 = xor i1 %tobool29, true, !dbg !5829
  %lnot32 = xor i1 %lnot30, true, !dbg !5829
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5829
  %13 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv34 = zext i32 %13 to i64, !dbg !5829
  %and35 = and i64 %conv34, 2, !dbg !5829
  %tobool36 = icmp ne i64 %and35, 0, !dbg !5829
  %lnot37 = xor i1 %tobool36, true, !dbg !5829
  %lnot39 = xor i1 %lnot37, true, !dbg !5829
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !5829
  %add = add i32 %lnot.ext33, %lnot.ext40, !dbg !5829
  %14 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv41 = zext i32 %14 to i64, !dbg !5829
  %and42 = and i64 %conv41, 4, !dbg !5829
  %tobool43 = icmp ne i64 %and42, 0, !dbg !5829
  %lnot44 = xor i1 %tobool43, true, !dbg !5829
  %lnot46 = xor i1 %lnot44, true, !dbg !5829
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5829
  %add48 = add i32 %add, %lnot.ext47, !dbg !5829
  %15 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv49 = zext i32 %15 to i64, !dbg !5829
  %and50 = and i64 %conv49, 8, !dbg !5829
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5829
  %lnot52 = xor i1 %tobool51, true, !dbg !5829
  %lnot54 = xor i1 %lnot52, true, !dbg !5829
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5829
  %add56 = add i32 %add48, %lnot.ext55, !dbg !5829
  %16 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv57 = zext i32 %16 to i64, !dbg !5829
  %and58 = and i64 %conv57, 16, !dbg !5829
  %tobool59 = icmp ne i64 %and58, 0, !dbg !5829
  %lnot60 = xor i1 %tobool59, true, !dbg !5829
  %lnot62 = xor i1 %lnot60, true, !dbg !5829
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !5829
  %add64 = add i32 %add56, %lnot.ext63, !dbg !5829
  %17 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv65 = zext i32 %17 to i64, !dbg !5829
  %and66 = and i64 %conv65, 32, !dbg !5829
  %tobool67 = icmp ne i64 %and66, 0, !dbg !5829
  %lnot68 = xor i1 %tobool67, true, !dbg !5829
  %lnot70 = xor i1 %lnot68, true, !dbg !5829
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !5829
  %add72 = add i32 %add64, %lnot.ext71, !dbg !5829
  %18 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv73 = zext i32 %18 to i64, !dbg !5829
  %and74 = and i64 %conv73, 64, !dbg !5829
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5829
  %lnot76 = xor i1 %tobool75, true, !dbg !5829
  %lnot78 = xor i1 %lnot76, true, !dbg !5829
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !5829
  %add80 = add i32 %add72, %lnot.ext79, !dbg !5829
  %19 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %conv81 = zext i32 %19 to i64, !dbg !5829
  %and82 = and i64 %conv81, 128, !dbg !5829
  %tobool83 = icmp ne i64 %and82, 0, !dbg !5829
  %lnot84 = xor i1 %tobool83, true, !dbg !5829
  %lnot86 = xor i1 %lnot84, true, !dbg !5829
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !5829
  %add88 = add i32 %add80, %lnot.ext87, !dbg !5829
  %20 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr = lshr i32 %20, 8, !dbg !5829
  %conv89 = zext i32 %shr to i64, !dbg !5829
  %and90 = and i64 %conv89, 1, !dbg !5829
  %tobool91 = icmp ne i64 %and90, 0, !dbg !5829
  %lnot92 = xor i1 %tobool91, true, !dbg !5829
  %lnot94 = xor i1 %lnot92, true, !dbg !5829
  %lnot.ext95 = zext i1 %lnot94 to i32, !dbg !5829
  %21 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr96 = lshr i32 %21, 8, !dbg !5829
  %conv97 = zext i32 %shr96 to i64, !dbg !5829
  %and98 = and i64 %conv97, 2, !dbg !5829
  %tobool99 = icmp ne i64 %and98, 0, !dbg !5829
  %lnot100 = xor i1 %tobool99, true, !dbg !5829
  %lnot102 = xor i1 %lnot100, true, !dbg !5829
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !5829
  %add104 = add i32 %lnot.ext95, %lnot.ext103, !dbg !5829
  %22 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr105 = lshr i32 %22, 8, !dbg !5829
  %conv106 = zext i32 %shr105 to i64, !dbg !5829
  %and107 = and i64 %conv106, 4, !dbg !5829
  %tobool108 = icmp ne i64 %and107, 0, !dbg !5829
  %lnot109 = xor i1 %tobool108, true, !dbg !5829
  %lnot111 = xor i1 %lnot109, true, !dbg !5829
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !5829
  %add113 = add i32 %add104, %lnot.ext112, !dbg !5829
  %23 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr114 = lshr i32 %23, 8, !dbg !5829
  %conv115 = zext i32 %shr114 to i64, !dbg !5829
  %and116 = and i64 %conv115, 8, !dbg !5829
  %tobool117 = icmp ne i64 %and116, 0, !dbg !5829
  %lnot118 = xor i1 %tobool117, true, !dbg !5829
  %lnot120 = xor i1 %lnot118, true, !dbg !5829
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !5829
  %add122 = add i32 %add113, %lnot.ext121, !dbg !5829
  %24 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr123 = lshr i32 %24, 8, !dbg !5829
  %conv124 = zext i32 %shr123 to i64, !dbg !5829
  %and125 = and i64 %conv124, 16, !dbg !5829
  %tobool126 = icmp ne i64 %and125, 0, !dbg !5829
  %lnot127 = xor i1 %tobool126, true, !dbg !5829
  %lnot129 = xor i1 %lnot127, true, !dbg !5829
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !5829
  %add131 = add i32 %add122, %lnot.ext130, !dbg !5829
  %25 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr132 = lshr i32 %25, 8, !dbg !5829
  %conv133 = zext i32 %shr132 to i64, !dbg !5829
  %and134 = and i64 %conv133, 32, !dbg !5829
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5829
  %lnot136 = xor i1 %tobool135, true, !dbg !5829
  %lnot138 = xor i1 %lnot136, true, !dbg !5829
  %lnot.ext139 = zext i1 %lnot138 to i32, !dbg !5829
  %add140 = add i32 %add131, %lnot.ext139, !dbg !5829
  %26 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr141 = lshr i32 %26, 8, !dbg !5829
  %conv142 = zext i32 %shr141 to i64, !dbg !5829
  %and143 = and i64 %conv142, 64, !dbg !5829
  %tobool144 = icmp ne i64 %and143, 0, !dbg !5829
  %lnot145 = xor i1 %tobool144, true, !dbg !5829
  %lnot147 = xor i1 %lnot145, true, !dbg !5829
  %lnot.ext148 = zext i1 %lnot147 to i32, !dbg !5829
  %add149 = add i32 %add140, %lnot.ext148, !dbg !5829
  %27 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr150 = lshr i32 %27, 8, !dbg !5829
  %conv151 = zext i32 %shr150 to i64, !dbg !5829
  %and152 = and i64 %conv151, 128, !dbg !5829
  %tobool153 = icmp ne i64 %and152, 0, !dbg !5829
  %lnot154 = xor i1 %tobool153, true, !dbg !5829
  %lnot156 = xor i1 %lnot154, true, !dbg !5829
  %lnot.ext157 = zext i1 %lnot156 to i32, !dbg !5829
  %add158 = add i32 %add149, %lnot.ext157, !dbg !5829
  %add159 = add i32 %add88, %add158, !dbg !5829
  %28 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr160 = lshr i32 %28, 16, !dbg !5829
  %conv161 = zext i32 %shr160 to i64, !dbg !5829
  %and162 = and i64 %conv161, 1, !dbg !5829
  %tobool163 = icmp ne i64 %and162, 0, !dbg !5829
  %lnot164 = xor i1 %tobool163, true, !dbg !5829
  %lnot166 = xor i1 %lnot164, true, !dbg !5829
  %lnot.ext167 = zext i1 %lnot166 to i32, !dbg !5829
  %29 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr168 = lshr i32 %29, 16, !dbg !5829
  %conv169 = zext i32 %shr168 to i64, !dbg !5829
  %and170 = and i64 %conv169, 2, !dbg !5829
  %tobool171 = icmp ne i64 %and170, 0, !dbg !5829
  %lnot172 = xor i1 %tobool171, true, !dbg !5829
  %lnot174 = xor i1 %lnot172, true, !dbg !5829
  %lnot.ext175 = zext i1 %lnot174 to i32, !dbg !5829
  %add176 = add i32 %lnot.ext167, %lnot.ext175, !dbg !5829
  %30 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr177 = lshr i32 %30, 16, !dbg !5829
  %conv178 = zext i32 %shr177 to i64, !dbg !5829
  %and179 = and i64 %conv178, 4, !dbg !5829
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5829
  %lnot181 = xor i1 %tobool180, true, !dbg !5829
  %lnot183 = xor i1 %lnot181, true, !dbg !5829
  %lnot.ext184 = zext i1 %lnot183 to i32, !dbg !5829
  %add185 = add i32 %add176, %lnot.ext184, !dbg !5829
  %31 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr186 = lshr i32 %31, 16, !dbg !5829
  %conv187 = zext i32 %shr186 to i64, !dbg !5829
  %and188 = and i64 %conv187, 8, !dbg !5829
  %tobool189 = icmp ne i64 %and188, 0, !dbg !5829
  %lnot190 = xor i1 %tobool189, true, !dbg !5829
  %lnot192 = xor i1 %lnot190, true, !dbg !5829
  %lnot.ext193 = zext i1 %lnot192 to i32, !dbg !5829
  %add194 = add i32 %add185, %lnot.ext193, !dbg !5829
  %32 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr195 = lshr i32 %32, 16, !dbg !5829
  %conv196 = zext i32 %shr195 to i64, !dbg !5829
  %and197 = and i64 %conv196, 16, !dbg !5829
  %tobool198 = icmp ne i64 %and197, 0, !dbg !5829
  %lnot199 = xor i1 %tobool198, true, !dbg !5829
  %lnot201 = xor i1 %lnot199, true, !dbg !5829
  %lnot.ext202 = zext i1 %lnot201 to i32, !dbg !5829
  %add203 = add i32 %add194, %lnot.ext202, !dbg !5829
  %33 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr204 = lshr i32 %33, 16, !dbg !5829
  %conv205 = zext i32 %shr204 to i64, !dbg !5829
  %and206 = and i64 %conv205, 32, !dbg !5829
  %tobool207 = icmp ne i64 %and206, 0, !dbg !5829
  %lnot208 = xor i1 %tobool207, true, !dbg !5829
  %lnot210 = xor i1 %lnot208, true, !dbg !5829
  %lnot.ext211 = zext i1 %lnot210 to i32, !dbg !5829
  %add212 = add i32 %add203, %lnot.ext211, !dbg !5829
  %34 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr213 = lshr i32 %34, 16, !dbg !5829
  %conv214 = zext i32 %shr213 to i64, !dbg !5829
  %and215 = and i64 %conv214, 64, !dbg !5829
  %tobool216 = icmp ne i64 %and215, 0, !dbg !5829
  %lnot217 = xor i1 %tobool216, true, !dbg !5829
  %lnot219 = xor i1 %lnot217, true, !dbg !5829
  %lnot.ext220 = zext i1 %lnot219 to i32, !dbg !5829
  %add221 = add i32 %add212, %lnot.ext220, !dbg !5829
  %35 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr222 = lshr i32 %35, 16, !dbg !5829
  %conv223 = zext i32 %shr222 to i64, !dbg !5829
  %and224 = and i64 %conv223, 128, !dbg !5829
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5829
  %lnot226 = xor i1 %tobool225, true, !dbg !5829
  %lnot228 = xor i1 %lnot226, true, !dbg !5829
  %lnot.ext229 = zext i1 %lnot228 to i32, !dbg !5829
  %add230 = add i32 %add221, %lnot.ext229, !dbg !5829
  %36 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr231 = lshr i32 %36, 16, !dbg !5829
  %shr232 = lshr i32 %shr231, 8, !dbg !5829
  %conv233 = zext i32 %shr232 to i64, !dbg !5829
  %and234 = and i64 %conv233, 1, !dbg !5829
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5829
  %lnot236 = xor i1 %tobool235, true, !dbg !5829
  %lnot238 = xor i1 %lnot236, true, !dbg !5829
  %lnot.ext239 = zext i1 %lnot238 to i32, !dbg !5829
  %37 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr240 = lshr i32 %37, 16, !dbg !5829
  %shr241 = lshr i32 %shr240, 8, !dbg !5829
  %conv242 = zext i32 %shr241 to i64, !dbg !5829
  %and243 = and i64 %conv242, 2, !dbg !5829
  %tobool244 = icmp ne i64 %and243, 0, !dbg !5829
  %lnot245 = xor i1 %tobool244, true, !dbg !5829
  %lnot247 = xor i1 %lnot245, true, !dbg !5829
  %lnot.ext248 = zext i1 %lnot247 to i32, !dbg !5829
  %add249 = add i32 %lnot.ext239, %lnot.ext248, !dbg !5829
  %38 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr250 = lshr i32 %38, 16, !dbg !5829
  %shr251 = lshr i32 %shr250, 8, !dbg !5829
  %conv252 = zext i32 %shr251 to i64, !dbg !5829
  %and253 = and i64 %conv252, 4, !dbg !5829
  %tobool254 = icmp ne i64 %and253, 0, !dbg !5829
  %lnot255 = xor i1 %tobool254, true, !dbg !5829
  %lnot257 = xor i1 %lnot255, true, !dbg !5829
  %lnot.ext258 = zext i1 %lnot257 to i32, !dbg !5829
  %add259 = add i32 %add249, %lnot.ext258, !dbg !5829
  %39 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr260 = lshr i32 %39, 16, !dbg !5829
  %shr261 = lshr i32 %shr260, 8, !dbg !5829
  %conv262 = zext i32 %shr261 to i64, !dbg !5829
  %and263 = and i64 %conv262, 8, !dbg !5829
  %tobool264 = icmp ne i64 %and263, 0, !dbg !5829
  %lnot265 = xor i1 %tobool264, true, !dbg !5829
  %lnot267 = xor i1 %lnot265, true, !dbg !5829
  %lnot.ext268 = zext i1 %lnot267 to i32, !dbg !5829
  %add269 = add i32 %add259, %lnot.ext268, !dbg !5829
  %40 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr270 = lshr i32 %40, 16, !dbg !5829
  %shr271 = lshr i32 %shr270, 8, !dbg !5829
  %conv272 = zext i32 %shr271 to i64, !dbg !5829
  %and273 = and i64 %conv272, 16, !dbg !5829
  %tobool274 = icmp ne i64 %and273, 0, !dbg !5829
  %lnot275 = xor i1 %tobool274, true, !dbg !5829
  %lnot277 = xor i1 %lnot275, true, !dbg !5829
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !5829
  %add279 = add i32 %add269, %lnot.ext278, !dbg !5829
  %41 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr280 = lshr i32 %41, 16, !dbg !5829
  %shr281 = lshr i32 %shr280, 8, !dbg !5829
  %conv282 = zext i32 %shr281 to i64, !dbg !5829
  %and283 = and i64 %conv282, 32, !dbg !5829
  %tobool284 = icmp ne i64 %and283, 0, !dbg !5829
  %lnot285 = xor i1 %tobool284, true, !dbg !5829
  %lnot287 = xor i1 %lnot285, true, !dbg !5829
  %lnot.ext288 = zext i1 %lnot287 to i32, !dbg !5829
  %add289 = add i32 %add279, %lnot.ext288, !dbg !5829
  %42 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr290 = lshr i32 %42, 16, !dbg !5829
  %shr291 = lshr i32 %shr290, 8, !dbg !5829
  %conv292 = zext i32 %shr291 to i64, !dbg !5829
  %and293 = and i64 %conv292, 64, !dbg !5829
  %tobool294 = icmp ne i64 %and293, 0, !dbg !5829
  %lnot295 = xor i1 %tobool294, true, !dbg !5829
  %lnot297 = xor i1 %lnot295, true, !dbg !5829
  %lnot.ext298 = zext i1 %lnot297 to i32, !dbg !5829
  %add299 = add i32 %add289, %lnot.ext298, !dbg !5829
  %43 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  %shr300 = lshr i32 %43, 16, !dbg !5829
  %shr301 = lshr i32 %shr300, 8, !dbg !5829
  %conv302 = zext i32 %shr301 to i64, !dbg !5829
  %and303 = and i64 %conv302, 128, !dbg !5829
  %tobool304 = icmp ne i64 %and303, 0, !dbg !5829
  %lnot305 = xor i1 %tobool304, true, !dbg !5829
  %lnot307 = xor i1 %lnot305, true, !dbg !5829
  %lnot.ext308 = zext i1 %lnot307 to i32, !dbg !5829
  %add309 = add i32 %add299, %lnot.ext308, !dbg !5829
  %add310 = add i32 %add230, %add309, !dbg !5829
  %add311 = add i32 %add159, %add310, !dbg !5829
  br label %cond.end, !dbg !5829

cond.false:                                       ; preds = %if.end26
  %44 = load i32, i32* %supported_modes.addr, align 4, !dbg !5829
  store i32 %44, i32* %w.addr.i, align 4
  %45 = load i32, i32* %w.addr.i, align 4, !dbg !5830
  %46 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %45) #10, !dbg !5831, !srcloc !5832
  store i32 %46, i32* %res.i, align 4, !dbg !5831
  %47 = load i32, i32* %res.i, align 4, !dbg !5833
  br label %cond.end, !dbg !5829

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add311, %cond.true ], [ %47, %cond.false ], !dbg !5829
  %call312 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %9, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %cond) #6, !dbg !5834
  store %struct.drm_property* %call312, %struct.drm_property** %prop, align 8, !dbg !5835
  %48 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5836
  %tobool313 = icmp ne %struct.drm_property* %48, null, !dbg !5836
  br i1 %tobool313, label %if.end315, label %if.then314, !dbg !5838

if.then314:                                       ; preds = %cond.end
  store i32 -12, i32* %retval, align 4, !dbg !5839
  br label %return, !dbg !5839

if.end315:                                        ; preds = %cond.end
  store i32 0, i32* %i, align 4, !dbg !5840
  br label %for.cond, !dbg !5842

for.cond:                                         ; preds = %for.inc, %if.end315
  %49 = load i32, i32* %i, align 4, !dbg !5843
  %conv316 = sext i32 %49 to i64, !dbg !5843
  %cmp317 = icmp ult i64 %conv316, 3, !dbg !5845
  br i1 %cmp317, label %for.body, label %for.end, !dbg !5846

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5847, metadata !DIExpression()), !dbg !5849
  %50 = load i32, i32* %i, align 4, !dbg !5850
  %idxprom = sext i32 %50 to i64, !dbg !5850
  %arrayidx = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* @drm_plane_create_blend_mode_property.props, i64 0, i64 %idxprom, !dbg !5850
  %type = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx, i32 0, i32 0, !dbg !5850
  %51 = load i32, i32* %type, align 16, !dbg !5850
  %sh_prom = zext i32 %51 to i64, !dbg !5850
  %shl = shl i64 1, %sh_prom, !dbg !5850
  %52 = load i32, i32* %supported_modes.addr, align 4, !dbg !5852
  %conv319 = zext i32 %52 to i64, !dbg !5852
  %and320 = and i64 %shl, %conv319, !dbg !5853
  %tobool321 = icmp ne i64 %and320, 0, !dbg !5853
  br i1 %tobool321, label %if.end323, label %if.then322, !dbg !5854

if.then322:                                       ; preds = %for.body
  br label %for.inc, !dbg !5855

if.end323:                                        ; preds = %for.body
  %53 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5856
  %54 = load i32, i32* %i, align 4, !dbg !5857
  %idxprom324 = sext i32 %54 to i64, !dbg !5858
  %arrayidx325 = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* @drm_plane_create_blend_mode_property.props, i64 0, i64 %idxprom324, !dbg !5858
  %type326 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx325, i32 0, i32 0, !dbg !5859
  %55 = load i32, i32* %type326, align 16, !dbg !5859
  %conv327 = sext i32 %55 to i64, !dbg !5858
  %56 = load i32, i32* %i, align 4, !dbg !5860
  %idxprom328 = sext i32 %56 to i64, !dbg !5861
  %arrayidx329 = getelementptr [3 x %struct.drm_prop_enum_list], [3 x %struct.drm_prop_enum_list]* @drm_plane_create_blend_mode_property.props, i64 0, i64 %idxprom328, !dbg !5861
  %name = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %arrayidx329, i32 0, i32 1, !dbg !5862
  %57 = load i8*, i8** %name, align 8, !dbg !5862
  %call330 = call i32 @drm_property_add_enum(%struct.drm_property* %53, i64 %conv327, i8* %57) #6, !dbg !5863
  store i32 %call330, i32* %ret, align 4, !dbg !5864
  %58 = load i32, i32* %ret, align 4, !dbg !5865
  %tobool331 = icmp ne i32 %58, 0, !dbg !5865
  br i1 %tobool331, label %if.then332, label %if.end333, !dbg !5867

if.then332:                                       ; preds = %if.end323
  %59 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5868
  %60 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5870
  call void @drm_property_destroy(%struct.drm_device* %59, %struct.drm_property* %60) #6, !dbg !5871
  %61 = load i32, i32* %ret, align 4, !dbg !5872
  store i32 %61, i32* %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

if.end333:                                        ; preds = %if.end323
  br label %for.inc, !dbg !5874

for.inc:                                          ; preds = %if.end333, %if.then322
  %62 = load i32, i32* %i, align 4, !dbg !5875
  %inc = add i32 %62, 1, !dbg !5875
  store i32 %inc, i32* %i, align 4, !dbg !5875
  br label %for.cond, !dbg !5876, !llvm.loop !5877

for.end:                                          ; preds = %for.cond
  %63 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5879
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %63, i32 0, i32 4, !dbg !5880
  %64 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5881
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %64, i64 0) #6, !dbg !5882
  %65 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !5883
  %66 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5884
  %blend_mode_property = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %66, i32 0, i32 23, !dbg !5885
  store %struct.drm_property* %65, %struct.drm_property** %blend_mode_property, align 8, !dbg !5886
  store i32 0, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

return:                                           ; preds = %for.end, %if.then332, %if.then314, %if.then25
  %67 = load i32, i32* %retval, align 4, !dbg !5888
  ret i32 %67, !dbg !5888
}

; Function Attrs: noredzone
declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noredzone
declare dso_local i32 @drm_property_add_enum(%struct.drm_property*, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local void @drm_property_destroy(%struct.drm_device*, %struct.drm_property*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_crtc_index(%struct.drm_crtc* %crtc) #0 !dbg !5889 {
entry:
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5896
  %index = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %0, i32 0, i32 8, !dbg !5897
  %1 = load i32, i32* %index, align 8, !dbg !5897
  ret i32 %1, !dbg !5898
}

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5899 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5902, metadata !DIExpression()), !dbg !5906
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5915, metadata !DIExpression()), !dbg !5916
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5917, metadata !DIExpression()), !dbg !5918
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5919, metadata !DIExpression()), !dbg !5920
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5921, metadata !DIExpression()), !dbg !5925
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5927, metadata !DIExpression()), !dbg !5931
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5933, metadata !DIExpression()), !dbg !5937
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5942, metadata !DIExpression()), !dbg !5943
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5944, metadata !DIExpression()), !dbg !5945
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5946, metadata !DIExpression()), !dbg !5947
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5948, metadata !DIExpression()), !dbg !5949
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5950, metadata !DIExpression()), !dbg !5951
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5952, metadata !DIExpression()), !dbg !5953
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5954, metadata !DIExpression()), !dbg !5955
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5956, metadata !DIExpression()), !dbg !5957
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5964, metadata !DIExpression()), !dbg !5965
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5966, metadata !DIExpression()), !dbg !5969
  %0 = load i64, i64* %n.addr, align 8, !dbg !5969
  store i64 %0, i64* %__a, align 8, !dbg !5969
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5970, metadata !DIExpression()), !dbg !5969
  %1 = load i64, i64* %size.addr, align 8, !dbg !5969
  store i64 %1, i64* %__b, align 8, !dbg !5969
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5971, metadata !DIExpression()), !dbg !5969
  store i64* %bytes, i64** %__d, align 8, !dbg !5969
  %cmp = icmp eq i64* %__a, %__b, !dbg !5969
  %conv = zext i1 %cmp to i32, !dbg !5969
  %2 = load i64*, i64** %__d, align 8, !dbg !5969
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5969
  %conv2 = zext i1 %cmp1 to i32, !dbg !5969
  %3 = load i64, i64* %__a, align 8, !dbg !5969
  %4 = load i64, i64* %__b, align 8, !dbg !5969
  %5 = load i64*, i64** %__d, align 8, !dbg !5969
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5969
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5969
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5969
  store i64 %8, i64* %5, align 8, !dbg !5969
  %frombool = zext i1 %7 to i8, !dbg !5969
  store i8 %frombool, i8* %tmp, align 1, !dbg !5969
  %9 = load i8, i8* %tmp, align 1, !dbg !5969
  %tobool = trunc i8 %9 to i1, !dbg !5969
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !5972
  %lnot = xor i1 %call, true, !dbg !5972
  %lnot3 = xor i1 %lnot, true, !dbg !5972
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5972
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5972
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5972
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5973

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5974
  br label %return, !dbg !5974

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5975
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5976
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5977

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5978
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5979
  br i1 %13, label %if.then6, label %if.end8, !dbg !5980

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5981
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5982
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5983
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !5984
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5985

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5986
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5987
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5988

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5989
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5990
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5991
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !5992
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5951
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5993
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5994
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5995
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5996
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5997
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5998
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !5999
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5999
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5999
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5999
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5999
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6000
  br label %kmalloc.exit, !dbg !6000

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6001
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6002
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6002
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6004

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6005
  br label %kmalloc_index.exit.i, !dbg !6005

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6006
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6008
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6009

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6010
  br label %kmalloc_index.exit.i, !dbg !6010

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6011
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6013
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6014

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6015
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6016
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6017

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6018
  br label %kmalloc_index.exit.i, !dbg !6018

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6019
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6021
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6022

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6023
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6024
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6025

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6026
  br label %kmalloc_index.exit.i, !dbg !6026

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6027
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6029
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6030

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6031
  br label %kmalloc_index.exit.i, !dbg !6031

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6032
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6034
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6035

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6036
  br label %kmalloc_index.exit.i, !dbg !6036

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6037
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6039
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6040

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6041
  br label %kmalloc_index.exit.i, !dbg !6041

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6042
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6044
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6045

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6046
  br label %kmalloc_index.exit.i, !dbg !6046

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6047
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6049
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6050

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6051
  br label %kmalloc_index.exit.i, !dbg !6051

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6052
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6054
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6055

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6056
  br label %kmalloc_index.exit.i, !dbg !6056

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6057
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6059
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6060

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6061
  br label %kmalloc_index.exit.i, !dbg !6061

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6062
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6064
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6065

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6066
  br label %kmalloc_index.exit.i, !dbg !6066

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6067
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !6069
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6070

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6071
  br label %kmalloc_index.exit.i, !dbg !6071

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6072
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !6074
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6075

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6076
  br label %kmalloc_index.exit.i, !dbg !6076

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6077
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !6079
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6080

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6081
  br label %kmalloc_index.exit.i, !dbg !6081

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6082
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !6084
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6085

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6086
  br label %kmalloc_index.exit.i, !dbg !6086

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6087
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !6089
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6090

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6091
  br label %kmalloc_index.exit.i, !dbg !6091

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6092
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !6094
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6095

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6096
  br label %kmalloc_index.exit.i, !dbg !6096

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6097
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !6099
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6100

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6101
  br label %kmalloc_index.exit.i, !dbg !6101

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6102
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !6104
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6105

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6106
  br label %kmalloc_index.exit.i, !dbg !6106

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6107
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !6109
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6110

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6111
  br label %kmalloc_index.exit.i, !dbg !6111

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6112
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !6114
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6115

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6116
  br label %kmalloc_index.exit.i, !dbg !6116

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6117
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !6119
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6120

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6121
  br label %kmalloc_index.exit.i, !dbg !6121

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6122
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !6124
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6125

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6126
  br label %kmalloc_index.exit.i, !dbg !6126

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6127
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !6129
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6130

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6131
  br label %kmalloc_index.exit.i, !dbg !6131

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6132
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !6134
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6135

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6136
  br label %kmalloc_index.exit.i, !dbg !6136

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6137
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !6139
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6140

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6141
  br label %kmalloc_index.exit.i, !dbg !6141

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6142
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !6144
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6145

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6146
  br label %kmalloc_index.exit.i, !dbg !6146

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !6147, !srcloc !6150
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #7, !dbg !6151, !srcloc !6154
  unreachable, !dbg !6155

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !6156
  store i32 %59, i32* %index.i, align 4, !dbg !6157
  %60 = load i32, i32* %index.i, align 4, !dbg !6158
  %tobool.i = icmp ne i32 %60, 0, !dbg !6158
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6160

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6161
  br label %kmalloc.exit, !dbg !6161

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !6162
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6163
  %and.i.i = and i32 %62, 17, !dbg !6163
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6163
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6163
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6163
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6163
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6165

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6166
  br label %kmalloc_type.exit.i, !dbg !6166

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6167
  %and2.i.i = and i32 %63, 1, !dbg !6168
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6167
  %64 = zext i1 %tobool3.i.i to i64, !dbg !6167
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6167
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6169
  br label %kmalloc_type.exit.i, !dbg !6169

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !6170
  %idxprom.i = zext i32 %65 to i64, !dbg !6171
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6171
  %66 = load i32, i32* %index.i, align 4, !dbg !6172
  %idxprom6.i = zext i32 %66 to i64, !dbg !6171
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6171
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6171
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !6173
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !6174
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6175
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6176
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !6177
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6177
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6177
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6177
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !6177
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5920
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6178
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !6179
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6180
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6181
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !6182
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6183
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !6184
  store i8* %76, i8** %retval.i, align 8, !dbg !6185
  br label %kmalloc.exit, !dbg !6185

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !6186
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !6187
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !6188
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6188
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6188
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6188
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !6188
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6189
  br label %kmalloc.exit, !dbg !6189

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !6190
  store i8* %79, i8** %retval, align 8, !dbg !6191
  br label %return, !dbg !6191

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !6192
  %81 = load i32, i32* %flags.addr, align 4, !dbg !6193
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !6194
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !6194
  %maskedptr = and i64 %ptrint, 7, !dbg !6194
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !6194
  call void @llvm.assume(i1 %maskcond), !dbg !6194
  store i8* %call9, i8** %retval, align 8, !dbg !6195
  br label %return, !dbg !6195

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !6196
  ret i8* %82, !dbg !6196
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_plane_mask(%struct.drm_plane* %plane) #0 !dbg !6197 {
entry:
  %plane.addr = alloca %struct.drm_plane*, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6204
  %call = call i32 @drm_plane_index(%struct.drm_plane* %0) #6, !dbg !6205
  %shl = shl i32 1, %call, !dbg !6206
  ret i32 %shl, !dbg !6207
}

; Function Attrs: noredzone
declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !6208 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6214
  %1 = ptrtoint i8* %0 to i64, !dbg !6214
  %2 = inttoptr i64 %1 to i8*, !dbg !6214
  %3 = ptrtoint i8* %2 to i64, !dbg !6214
  %cmp = icmp uge i64 %3, -4095, !dbg !6214
  %lnot = xor i1 %cmp, true, !dbg !6214
  %lnot1 = xor i1 %lnot, true, !dbg !6214
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6214
  %conv = sext i32 %lnot.ext to i64, !dbg !6214
  %tobool = icmp ne i64 %conv, 0, !dbg !6214
  ret i1 %tobool, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6216 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6219, metadata !DIExpression()), !dbg !6220
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6221
  %1 = ptrtoint i8* %0 to i64, !dbg !6222
  ret i64 %1, !dbg !6223
}

; Function Attrs: noredzone
declare dso_local void @sort(i8*, i64, i64, i32 (i8*, i8*)*, void (i8*, i8*, i32)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_atomic_state_zpos_cmp(i8* %a, i8* %b) #0 !dbg !6224 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %sa = alloca %struct.drm_plane_state*, align 8
  %sb = alloca %struct.drm_plane_state*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %sa, metadata !6231, metadata !DIExpression()), !dbg !6232
  %0 = load i8*, i8** %a.addr, align 8, !dbg !6233
  %1 = bitcast i8* %0 to %struct.drm_plane_state**, !dbg !6234
  %2 = load %struct.drm_plane_state*, %struct.drm_plane_state** %1, align 8, !dbg !6235
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %sa, align 8, !dbg !6232
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %sb, metadata !6236, metadata !DIExpression()), !dbg !6237
  %3 = load i8*, i8** %b.addr, align 8, !dbg !6238
  %4 = bitcast i8* %3 to %struct.drm_plane_state**, !dbg !6239
  %5 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8, !dbg !6240
  store %struct.drm_plane_state* %5, %struct.drm_plane_state** %sb, align 8, !dbg !6237
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %sa, align 8, !dbg !6241
  %zpos = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 15, !dbg !6243
  %7 = load i32, i32* %zpos, align 8, !dbg !6243
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %sb, align 8, !dbg !6244
  %zpos1 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %8, i32 0, i32 15, !dbg !6245
  %9 = load i32, i32* %zpos1, align 8, !dbg !6245
  %cmp = icmp ne i32 %7, %9, !dbg !6246
  br i1 %cmp, label %if.then, label %if.else, !dbg !6247

if.then:                                          ; preds = %entry
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %sa, align 8, !dbg !6248
  %zpos2 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 15, !dbg !6249
  %11 = load i32, i32* %zpos2, align 8, !dbg !6249
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %sb, align 8, !dbg !6250
  %zpos3 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 15, !dbg !6251
  %13 = load i32, i32* %zpos3, align 8, !dbg !6251
  %sub = sub i32 %11, %13, !dbg !6252
  store i32 %sub, i32* %retval, align 4, !dbg !6253
  br label %return, !dbg !6253

if.else:                                          ; preds = %entry
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %sa, align 8, !dbg !6254
  %plane = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 0, !dbg !6255
  %15 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !6255
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 4, !dbg !6256
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base, i32 0, i32 0, !dbg !6257
  %16 = load i32, i32* %id, align 8, !dbg !6257
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %sb, align 8, !dbg !6258
  %plane4 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0, !dbg !6259
  %18 = load %struct.drm_plane*, %struct.drm_plane** %plane4, align 8, !dbg !6259
  %base5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 4, !dbg !6260
  %id6 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base5, i32 0, i32 0, !dbg !6261
  %19 = load i32, i32* %id6, align 8, !dbg !6261
  %sub7 = sub i32 %16, %19, !dbg !6262
  store i32 %sub7, i32* %retval, align 4, !dbg !6263
  br label %return, !dbg !6263

return:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !6264
  ret i32 %20, !dbg !6264
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !6265 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !6271
  %tobool = trunc i8 %0 to i1, !dbg !6271
  %lnot = xor i1 %tobool, true, !dbg !6271
  %lnot1 = xor i1 %lnot, true, !dbg !6271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6271
  %conv = sext i32 %lnot.ext to i64, !dbg !6271
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6271
  ret i1 %tobool2, !dbg !6272
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #3 !dbg !6273 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6277, metadata !DIExpression()), !dbg !6281
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6283, metadata !DIExpression()), !dbg !6284
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  %0 = load i64, i64* %size.addr, align 8, !dbg !6287
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6289
  br i1 %1, label %if.then, label %if.end447, !dbg !6290

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6291
  %tobool = icmp ne i64 %2, 0, !dbg !6291
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6294

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6295
  br label %return, !dbg !6295

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6296
  %cmp = icmp ult i64 %3, 4096, !dbg !6298
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6299

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub = sub i64 %4, 1, !dbg !6301
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6301
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6301

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub4 = sub i64 %6, 1, !dbg !6301
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6301
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6301

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub6 = sub i64 %8, 1, !dbg !6301
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6301
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6301

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6301

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub9 = sub i64 %9, 1, !dbg !6301
  %and = and i64 %sub9, -9223372036854775808, !dbg !6301
  %tobool10 = icmp ne i64 %and, 0, !dbg !6301
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6301

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6301

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub13 = sub i64 %10, 1, !dbg !6301
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6301
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6301
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6301

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6301

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub18 = sub i64 %11, 1, !dbg !6301
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6301
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6301
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6301

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6301

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub23 = sub i64 %12, 1, !dbg !6301
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6301
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6301
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6301

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6301

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub28 = sub i64 %13, 1, !dbg !6301
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6301
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6301
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6301

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6301

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub33 = sub i64 %14, 1, !dbg !6301
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6301
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6301
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6301

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6301

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub38 = sub i64 %15, 1, !dbg !6301
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6301
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6301
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6301

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6301

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub43 = sub i64 %16, 1, !dbg !6301
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6301
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6301
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6301

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6301

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub48 = sub i64 %17, 1, !dbg !6301
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6301
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6301
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6301

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6301

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub53 = sub i64 %18, 1, !dbg !6301
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6301
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6301
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6301

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6301

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub58 = sub i64 %19, 1, !dbg !6301
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6301
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6301
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6301

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6301

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub63 = sub i64 %20, 1, !dbg !6301
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6301
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6301
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6301

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6301

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub68 = sub i64 %21, 1, !dbg !6301
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6301
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6301
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6301

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6301

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub73 = sub i64 %22, 1, !dbg !6301
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6301
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6301
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6301

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6301

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub78 = sub i64 %23, 1, !dbg !6301
  %and79 = and i64 %sub78, 562949953421312, !dbg !6301
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6301
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6301

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6301

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub83 = sub i64 %24, 1, !dbg !6301
  %and84 = and i64 %sub83, 281474976710656, !dbg !6301
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6301
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6301

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6301

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub88 = sub i64 %25, 1, !dbg !6301
  %and89 = and i64 %sub88, 140737488355328, !dbg !6301
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6301
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6301

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6301

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub93 = sub i64 %26, 1, !dbg !6301
  %and94 = and i64 %sub93, 70368744177664, !dbg !6301
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6301
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6301

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6301

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub98 = sub i64 %27, 1, !dbg !6301
  %and99 = and i64 %sub98, 35184372088832, !dbg !6301
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6301
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6301

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6301

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub103 = sub i64 %28, 1, !dbg !6301
  %and104 = and i64 %sub103, 17592186044416, !dbg !6301
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6301
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6301

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6301

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub108 = sub i64 %29, 1, !dbg !6301
  %and109 = and i64 %sub108, 8796093022208, !dbg !6301
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6301
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6301

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6301

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub113 = sub i64 %30, 1, !dbg !6301
  %and114 = and i64 %sub113, 4398046511104, !dbg !6301
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6301
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6301

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6301

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub118 = sub i64 %31, 1, !dbg !6301
  %and119 = and i64 %sub118, 2199023255552, !dbg !6301
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6301
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6301

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6301

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub123 = sub i64 %32, 1, !dbg !6301
  %and124 = and i64 %sub123, 1099511627776, !dbg !6301
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6301
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6301

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6301

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub128 = sub i64 %33, 1, !dbg !6301
  %and129 = and i64 %sub128, 549755813888, !dbg !6301
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6301
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6301

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6301

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub133 = sub i64 %34, 1, !dbg !6301
  %and134 = and i64 %sub133, 274877906944, !dbg !6301
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6301
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6301

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6301

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub138 = sub i64 %35, 1, !dbg !6301
  %and139 = and i64 %sub138, 137438953472, !dbg !6301
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6301
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6301

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6301

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub143 = sub i64 %36, 1, !dbg !6301
  %and144 = and i64 %sub143, 68719476736, !dbg !6301
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6301
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6301

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6301

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub148 = sub i64 %37, 1, !dbg !6301
  %and149 = and i64 %sub148, 34359738368, !dbg !6301
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6301
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6301

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6301

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub153 = sub i64 %38, 1, !dbg !6301
  %and154 = and i64 %sub153, 17179869184, !dbg !6301
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6301
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6301

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6301

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub158 = sub i64 %39, 1, !dbg !6301
  %and159 = and i64 %sub158, 8589934592, !dbg !6301
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6301
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6301

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6301

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub163 = sub i64 %40, 1, !dbg !6301
  %and164 = and i64 %sub163, 4294967296, !dbg !6301
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6301
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6301

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6301

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub168 = sub i64 %41, 1, !dbg !6301
  %and169 = and i64 %sub168, 2147483648, !dbg !6301
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6301
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6301

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6301

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub173 = sub i64 %42, 1, !dbg !6301
  %and174 = and i64 %sub173, 1073741824, !dbg !6301
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6301
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6301

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6301

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub178 = sub i64 %43, 1, !dbg !6301
  %and179 = and i64 %sub178, 536870912, !dbg !6301
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6301
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6301

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6301

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub183 = sub i64 %44, 1, !dbg !6301
  %and184 = and i64 %sub183, 268435456, !dbg !6301
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6301
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6301

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6301

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub188 = sub i64 %45, 1, !dbg !6301
  %and189 = and i64 %sub188, 134217728, !dbg !6301
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6301
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6301

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6301

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub193 = sub i64 %46, 1, !dbg !6301
  %and194 = and i64 %sub193, 67108864, !dbg !6301
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6301
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6301

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6301

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub198 = sub i64 %47, 1, !dbg !6301
  %and199 = and i64 %sub198, 33554432, !dbg !6301
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6301
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6301

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6301

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub203 = sub i64 %48, 1, !dbg !6301
  %and204 = and i64 %sub203, 16777216, !dbg !6301
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6301
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6301

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6301

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub208 = sub i64 %49, 1, !dbg !6301
  %and209 = and i64 %sub208, 8388608, !dbg !6301
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6301
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6301

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6301

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub213 = sub i64 %50, 1, !dbg !6301
  %and214 = and i64 %sub213, 4194304, !dbg !6301
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6301
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6301

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6301

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub218 = sub i64 %51, 1, !dbg !6301
  %and219 = and i64 %sub218, 2097152, !dbg !6301
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6301
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6301

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6301

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub223 = sub i64 %52, 1, !dbg !6301
  %and224 = and i64 %sub223, 1048576, !dbg !6301
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6301
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6301

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6301

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub228 = sub i64 %53, 1, !dbg !6301
  %and229 = and i64 %sub228, 524288, !dbg !6301
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6301
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6301

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6301

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub233 = sub i64 %54, 1, !dbg !6301
  %and234 = and i64 %sub233, 262144, !dbg !6301
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6301
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6301

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6301

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub238 = sub i64 %55, 1, !dbg !6301
  %and239 = and i64 %sub238, 131072, !dbg !6301
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6301
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6301

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6301

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub243 = sub i64 %56, 1, !dbg !6301
  %and244 = and i64 %sub243, 65536, !dbg !6301
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6301
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6301

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6301

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub248 = sub i64 %57, 1, !dbg !6301
  %and249 = and i64 %sub248, 32768, !dbg !6301
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6301
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6301

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6301

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub253 = sub i64 %58, 1, !dbg !6301
  %and254 = and i64 %sub253, 16384, !dbg !6301
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6301
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6301

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6301

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub258 = sub i64 %59, 1, !dbg !6301
  %and259 = and i64 %sub258, 8192, !dbg !6301
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6301
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6301

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6301

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub263 = sub i64 %60, 1, !dbg !6301
  %and264 = and i64 %sub263, 4096, !dbg !6301
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6301
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6301

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6301

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub268 = sub i64 %61, 1, !dbg !6301
  %and269 = and i64 %sub268, 2048, !dbg !6301
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6301
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6301

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6301

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub273 = sub i64 %62, 1, !dbg !6301
  %and274 = and i64 %sub273, 1024, !dbg !6301
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6301
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6301

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6301

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub278 = sub i64 %63, 1, !dbg !6301
  %and279 = and i64 %sub278, 512, !dbg !6301
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6301
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6301

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6301

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub283 = sub i64 %64, 1, !dbg !6301
  %and284 = and i64 %sub283, 256, !dbg !6301
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6301
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6301

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6301

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub288 = sub i64 %65, 1, !dbg !6301
  %and289 = and i64 %sub288, 128, !dbg !6301
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6301
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6301

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6301

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub293 = sub i64 %66, 1, !dbg !6301
  %and294 = and i64 %sub293, 64, !dbg !6301
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6301
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6301

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6301

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub298 = sub i64 %67, 1, !dbg !6301
  %and299 = and i64 %sub298, 32, !dbg !6301
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6301
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6301

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6301

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub303 = sub i64 %68, 1, !dbg !6301
  %and304 = and i64 %sub303, 16, !dbg !6301
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6301
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6301

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6301

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub308 = sub i64 %69, 1, !dbg !6301
  %and309 = and i64 %sub308, 8, !dbg !6301
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6301
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6301

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6301

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub313 = sub i64 %70, 1, !dbg !6301
  %and314 = and i64 %sub313, 4, !dbg !6301
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6301
  %71 = zext i1 %tobool315 to i64, !dbg !6301
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6301
  br label %cond.end, !dbg !6301

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6301
  br label %cond.end317, !dbg !6301

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6301
  br label %cond.end319, !dbg !6301

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6301
  br label %cond.end321, !dbg !6301

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6301
  br label %cond.end323, !dbg !6301

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6301
  br label %cond.end325, !dbg !6301

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6301
  br label %cond.end327, !dbg !6301

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6301
  br label %cond.end329, !dbg !6301

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6301
  br label %cond.end331, !dbg !6301

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6301
  br label %cond.end333, !dbg !6301

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6301
  br label %cond.end335, !dbg !6301

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6301
  br label %cond.end337, !dbg !6301

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6301
  br label %cond.end339, !dbg !6301

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6301
  br label %cond.end341, !dbg !6301

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6301
  br label %cond.end343, !dbg !6301

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6301
  br label %cond.end345, !dbg !6301

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6301
  br label %cond.end347, !dbg !6301

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6301
  br label %cond.end349, !dbg !6301

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6301
  br label %cond.end351, !dbg !6301

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6301
  br label %cond.end353, !dbg !6301

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6301
  br label %cond.end355, !dbg !6301

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6301
  br label %cond.end357, !dbg !6301

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6301
  br label %cond.end359, !dbg !6301

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6301
  br label %cond.end361, !dbg !6301

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6301
  br label %cond.end363, !dbg !6301

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6301
  br label %cond.end365, !dbg !6301

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6301
  br label %cond.end367, !dbg !6301

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6301
  br label %cond.end369, !dbg !6301

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6301
  br label %cond.end371, !dbg !6301

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6301
  br label %cond.end373, !dbg !6301

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6301
  br label %cond.end375, !dbg !6301

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6301
  br label %cond.end377, !dbg !6301

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6301
  br label %cond.end379, !dbg !6301

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6301
  br label %cond.end381, !dbg !6301

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6301
  br label %cond.end383, !dbg !6301

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6301
  br label %cond.end385, !dbg !6301

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6301
  br label %cond.end387, !dbg !6301

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6301
  br label %cond.end389, !dbg !6301

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6301
  br label %cond.end391, !dbg !6301

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6301
  br label %cond.end393, !dbg !6301

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6301
  br label %cond.end395, !dbg !6301

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6301
  br label %cond.end397, !dbg !6301

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6301
  br label %cond.end399, !dbg !6301

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6301
  br label %cond.end401, !dbg !6301

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6301
  br label %cond.end403, !dbg !6301

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6301
  br label %cond.end405, !dbg !6301

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6301
  br label %cond.end407, !dbg !6301

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6301
  br label %cond.end409, !dbg !6301

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6301
  br label %cond.end411, !dbg !6301

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6301
  br label %cond.end413, !dbg !6301

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6301
  br label %cond.end415, !dbg !6301

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6301
  br label %cond.end417, !dbg !6301

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6301
  br label %cond.end419, !dbg !6301

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6301
  br label %cond.end421, !dbg !6301

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6301
  br label %cond.end423, !dbg !6301

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6301
  br label %cond.end425, !dbg !6301

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6301
  br label %cond.end427, !dbg !6301

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6301
  br label %cond.end429, !dbg !6301

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6301
  br label %cond.end431, !dbg !6301

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6301
  br label %cond.end433, !dbg !6301

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6301
  br label %cond.end435, !dbg !6301

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6301
  br label %cond.end437, !dbg !6301

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6301
  br label %cond.end440, !dbg !6301

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6301

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6301
  br label %cond.end444, !dbg !6301

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6301
  %sub443 = sub i64 %72, 1, !dbg !6301
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !6301
  br label %cond.end444, !dbg !6301

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6301
  %sub446 = sub i32 %cond445, 12, !dbg !6302
  %add = add i32 %sub446, 1, !dbg !6303
  store i32 %add, i32* %retval, align 4, !dbg !6304
  br label %return, !dbg !6304

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6305
  %dec = add i64 %73, -1, !dbg !6305
  store i64 %dec, i64* %size.addr, align 8, !dbg !6305
  %74 = load i64, i64* %size.addr, align 8, !dbg !6306
  %shr = lshr i64 %74, 12, !dbg !6306
  store i64 %shr, i64* %size.addr, align 8, !dbg !6306
  %75 = load i64, i64* %size.addr, align 8, !dbg !6307
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6284
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6308
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6309
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !6308, !srcloc !6310
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6308
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6311
  %add.i = add i32 %79, 1, !dbg !6312
  store i32 %add.i, i32* %retval, align 4, !dbg !6313
  br label %return, !dbg !6313

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6314
  ret i32 %80, !dbg !6314
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #3 !dbg !6315 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6277, metadata !DIExpression()), !dbg !6318
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6283, metadata !DIExpression()), !dbg !6320
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  %0 = load i64, i64* %n.addr, align 8, !dbg !6323
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6320
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6324
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6325
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !6324, !srcloc !6310
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6324
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6326
  %add.i = add i32 %4, 1, !dbg !6327
  %sub = sub i32 %add.i, 1, !dbg !6328
  ret i32 %sub, !dbg !6329
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6330 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6338, metadata !DIExpression()), !dbg !6339
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6342
  ret i8* %0, !dbg !6343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_plane_index(%struct.drm_plane* %plane) #0 !dbg !6344 {
entry:
  %plane.addr = alloca %struct.drm_plane*, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !6347, metadata !DIExpression()), !dbg !6348
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !6349
  %index = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 17, !dbg !6350
  %1 = load i32, i32* %index, align 4, !dbg !6350
  ret i32 %1, !dbg !6351
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!5256}
!llvm.module.flags = !{!5297, !5298, !5299, !5300}
!llvm.ident = !{!5301}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "props", scope: !2, file: !3, line: 269, type: !5296, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "drm_plane_create_rotation_property", scope: !3, file: !3, line: 265, type: !4, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_blend.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !215, !215}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !9, line: 575, size: 5184, elements: !10)
!9 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !5170, !5171, !5172, !5173, !5174, !5175, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5237, !5238, !5244, !5245, !5249, !5250, !5251, !5252, !5253, !5254, !5255}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !8, file: !9, line: 577, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !14, line: 53, size: 11840, elements: !15)
!14 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !23, !24, !38, !3911, !3917, !3920, !3921, !3924, !3925, !3926, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3948, !3949, !3950, !3951, !3952, !3953, !3956, !3960, !3961, !5152, !5153, !5154, !5157, !5160, !5167}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !13, file: !14, line: 59, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !18, line: 178, size: 128, elements: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !18, line: 179, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !17, file: !18, line: 179, baseType: !21, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !13, file: !14, line: 62, baseType: !6, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !13, file: !14, line: 65, baseType: !25, size: 32, offset: 160)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !26, line: 19, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !25, file: !26, line: 20, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !30, line: 113, baseType: !31)
!30 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !30, line: 111, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !31, file: !30, line: 112, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !18, line: 168, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 166, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !35, file: !18, line: 167, baseType: !6, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !13, file: !14, line: 68, baseType: !39, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !41, line: 461, size: 5568, elements: !42)
!41 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !3325, !3326, !3329, !3330, !3382, !3479, !3480, !3481, !3482, !3483, !3498, !3616, !3629, !3838, !3839, !3843, !3845, !3846, !3847, !3851, !3857, !3858, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3899, !3900, !3901, !3904, !3907, !3908, !3909, !3910}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !40, file: !41, line: 462, baseType: !44, size: 512)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !45, line: 64, size: 512, elements: !46)
!45 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !51, !52, !54, !114, !3198, !3319, !3320, !3321, !3322, !3323, !3324}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !45, line: 65, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !44, file: !45, line: 66, baseType: !17, size: 128, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !45, line: 67, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !44, file: !45, line: 68, baseType: !55, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !45, line: 192, size: 704, elements: !57)
!57 = !{!58, !59, !75, !76}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !56, file: !45, line: 193, baseType: !17, size: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !56, file: !45, line: 194, baseType: !60, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 83, baseType: !62)
!61 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !61, line: 71, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !61, line: 72, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 72, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !65, file: !61, line: 73, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !61, line: 20, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !68, file: !61, line: 21, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 25, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 25, elements: !74)
!74 = !{}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !56, file: !45, line: 195, baseType: !44, size: 512, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !56, file: !45, line: 196, baseType: !77, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !45, line: 156, size: 192, elements: !80)
!80 = !{!81, !86, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !79, file: !45, line: 157, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!6, !55, !53}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !45, line: 158, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!48, !55, !53}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !79, file: !45, line: 159, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!6, !55, !53, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !45, line: 148, size: 20736, elements: !98)
!98 = !{!99, !104, !108, !109, !113}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !97, file: !45, line: 149, baseType: !100, size: 192)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 192, elements: !102)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!102 = !{!103}
!103 = !DISubrange(count: 3)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !97, file: !45, line: 150, baseType: !105, size: 4096, offset: 192)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 4096, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !97, file: !45, line: 151, baseType: !6, size: 32, offset: 4288)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !97, file: !45, line: 152, baseType: !110, size: 16384, offset: 4320)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 16384, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 2048)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !97, file: !45, line: 153, baseType: !6, size: 32, offset: 20704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !44, file: !45, line: 69, baseType: !115, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !45, line: 138, size: 448, elements: !117)
!117 = !{!118, !122, !152, !154, !3154, !3188, !3192}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !116, file: !45, line: 139, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !53}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !116, file: !45, line: 140, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !126, line: 230, size: 128, elements: !127)
!126 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !144}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !125, file: !126, line: 231, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !53, !137, !101}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 60, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !134, line: 73, baseType: !135)
!134 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !134, line: 15, baseType: !136)
!136 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !126, line: 30, size: 128, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !126, line: 31, baseType: !48, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !138, file: !126, line: 32, baseType: !142, size: 16, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !18, line: 19, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !125, file: !126, line: 232, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!132, !53, !137, !48, !148}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 55, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !134, line: 72, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !134, line: 16, baseType: !151)
!151 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !116, file: !45, line: 141, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !116, file: !45, line: 142, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !126, line: 84, size: 320, elements: !159)
!159 = !{!160, !161, !165, !3151, !3152}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !126, line: 85, baseType: !48, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !158, file: !126, line: 86, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!142, !53, !137, !6}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !158, file: !126, line: 88, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!142, !53, !169, !6}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !126, line: 168, size: 448, elements: !171)
!171 = !{!172, !173, !174, !176, !3146, !3147}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !170, file: !126, line: 169, baseType: !138, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !126, line: 170, baseType: !148, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !170, file: !126, line: 171, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !170, file: !126, line: 172, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!132, !180, !53, !169, !101, !361, !148}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !182, line: 916, size: 1856, align: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !202, !3096, !3097, !3098, !3099, !3108, !3109, !3110, !3111, !3112, !3113, !3129, !3130, !3139, !3140, !3141, !3142, !3143, !3144, !3145}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !181, file: !182, line: 920, baseType: !185, size: 128)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !182, line: 917, size: 128, elements: !186)
!186 = !{!187, !193}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !185, file: !182, line: 918, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !189, line: 58, size: 64, elements: !190)
!189 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !189, line: 59, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !185, file: !182, line: 919, baseType: !194, size: 128, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !18, line: 216, size: 128, align: 64, elements: !195)
!195 = !{!196, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !18, line: 217, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !194, file: !18, line: 218, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !197}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !181, file: !182, line: 921, baseType: !203, size: 128, offset: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !204, line: 8, size: 128, elements: !205)
!204 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !203, file: !204, line: 9, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !209, line: 18, flags: DIFlagFwdDecl)
!209 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !203, file: !204, line: 10, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !209, line: 89, size: 1536, elements: !213)
!213 = !{!214, !216, !226, !234, !235, !258, !3064, !3066, !3078, !3079, !3080, !3081, !3082, !3088, !3089, !3090}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !212, file: !209, line: 91, baseType: !215, size: 32)
!215 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !212, file: !209, line: 92, baseType: !217, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !218, line: 277, baseType: !219)
!218 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !218, line: 277, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !219, file: !218, line: 277, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !218, line: 70, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !218, line: 65, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !223, file: !218, line: 66, baseType: !215, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !212, file: !209, line: 93, baseType: !227, size: 128, offset: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !228, line: 38, size: 128, elements: !229)
!228 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !228, line: 39, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !227, file: !228, line: 39, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !212, file: !209, line: 94, baseType: !211, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !212, file: !209, line: 95, baseType: !236, size: 128, offset: 256)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !209, line: 47, size: 128, elements: !237)
!237 = !{!238, !254}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !209, line: 48, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !209, line: 48, size: 64, elements: !240)
!240 = !{!241, !250}
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !209, line: 49, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !209, line: 49, size: 64, elements: !243)
!243 = !{!244, !249}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !242, file: !209, line: 50, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !246, line: 21, baseType: !247)
!246 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !248, line: 27, baseType: !215)
!248 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !209, line: 50, baseType: !245, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !239, file: !209, line: 52, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !246, line: 23, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !248, line: 31, baseType: !253)
!253 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !209, line: 54, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !212, file: !209, line: 96, baseType: !259, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !182, line: 610, size: 4224, elements: !261)
!261 = !{!262, !263, !264, !272, !279, !280, !428, !2776, !2777, !2778, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !3040, !3048, !3049, !3050, !3060, !3061, !3062, !3063}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !260, file: !182, line: 611, baseType: !142, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !260, file: !182, line: 612, baseType: !143, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !260, file: !182, line: 613, baseType: !265, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !266, line: 23, baseType: !267)
!266 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 21, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !267, file: !266, line: 22, baseType: !270, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !18, line: 32, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !134, line: 49, baseType: !215)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !260, file: !182, line: 614, baseType: !273, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !266, line: 28, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 26, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !274, file: !266, line: 27, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !18, line: 33, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !134, line: 50, baseType: !215)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !260, file: !182, line: 615, baseType: !215, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !260, file: !182, line: 622, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !182, line: 1864, size: 1536, align: 512, elements: !284)
!284 = !{!285, !289, !302, !306, !312, !316, !322, !326, !330, !334, !338, !339, !345, !349, !375, !404, !408, !414, !419, !423, !424}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !283, file: !182, line: 1865, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!211, !259, !211, !215}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !283, file: !182, line: 1866, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!48, !211, !259, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !295, line: 10, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !294, file: !295, line: 11, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !175}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !294, file: !295, line: 12, baseType: !175, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !283, file: !182, line: 1867, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!6, !259, !6}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !283, file: !182, line: 1868, baseType: !307, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !259, !6}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !182, line: 581, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !283, file: !182, line: 1870, baseType: !313, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!6, !211, !101, !6}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !283, file: !182, line: 1872, baseType: !317, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!6, !259, !211, !142, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 30, baseType: !321)
!321 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !283, file: !182, line: 1873, baseType: !323, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!6, !211, !259, !211}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !283, file: !182, line: 1874, baseType: !327, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!6, !259, !211}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !283, file: !182, line: 1875, baseType: !331, size: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!6, !259, !211, !48}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !283, file: !182, line: 1876, baseType: !335, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!6, !259, !211, !142}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !283, file: !182, line: 1877, baseType: !327, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !283, file: !182, line: 1878, baseType: !340, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!6, !259, !211, !142, !343}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !18, line: 16, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !18, line: 13, baseType: !245)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !283, file: !182, line: 1879, baseType: !346, size: 64, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!6, !259, !211, !259, !211, !215}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !283, file: !182, line: 1881, baseType: !350, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!6, !211, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !182, line: 219, size: 640, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !364, !372, !373, !374}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !354, file: !182, line: 220, baseType: !215, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !354, file: !182, line: 221, baseType: !142, size: 16, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !354, file: !182, line: 222, baseType: !265, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !354, file: !182, line: 223, baseType: !273, size: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !354, file: !182, line: 224, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !18, line: 46, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !134, line: 88, baseType: !363)
!363 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !354, file: !182, line: 225, baseType: !365, size: 128, offset: 192)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !366, line: 13, size: 128, elements: !367)
!366 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !365, file: !366, line: 14, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !366, line: 8, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !248, line: 30, baseType: !363)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !365, file: !366, line: 15, baseType: !136, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !354, file: !182, line: 226, baseType: !365, size: 128, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !354, file: !182, line: 227, baseType: !365, size: 128, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !354, file: !182, line: 234, baseType: !180, size: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !283, file: !182, line: 1882, baseType: !376, size: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!6, !379, !381, !245, !215}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !383, line: 22, size: 1152, elements: !384)
!383 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!384 = !{!385, !386, !387, !388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !382, file: !383, line: 23, baseType: !245, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !382, file: !383, line: 24, baseType: !142, size: 16, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !382, file: !383, line: 25, baseType: !215, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !382, file: !383, line: 26, baseType: !389, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 104, baseType: !245)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !382, file: !383, line: 27, baseType: !251, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !382, file: !383, line: 28, baseType: !251, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !382, file: !383, line: 37, baseType: !251, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !382, file: !383, line: 38, baseType: !343, size: 32, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !382, file: !383, line: 39, baseType: !343, size: 32, offset: 352)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !382, file: !383, line: 40, baseType: !265, size: 32, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !382, file: !383, line: 41, baseType: !273, size: 32, offset: 416)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !383, line: 42, baseType: !361, size: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !382, file: !383, line: 43, baseType: !365, size: 128, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !382, file: !383, line: 44, baseType: !365, size: 128, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !382, file: !383, line: 45, baseType: !365, size: 128, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !382, file: !383, line: 46, baseType: !365, size: 128, offset: 896)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !382, file: !383, line: 47, baseType: !251, size: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !382, file: !383, line: 48, baseType: !251, size: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !283, file: !182, line: 1883, baseType: !405, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!132, !211, !101, !148}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !283, file: !182, line: 1884, baseType: !409, size: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!6, !259, !412, !251, !251}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !182, line: 50, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !283, file: !182, line: 1886, baseType: !415, size: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!6, !259, !418, !6}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !283, file: !182, line: 1887, baseType: !420, size: 64, offset: 1152)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!6, !259, !211, !180, !215, !142}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !283, file: !182, line: 1890, baseType: !335, size: 64, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !283, file: !182, line: 1891, baseType: !425, size: 64, offset: 1280)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!6, !259, !310, !6}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !260, file: !182, line: 623, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !182, line: 1416, size: 9472, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !487, !2377, !2465, !2548, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2564, !2568, !2569, !2572, !2573, !2576, !2577, !2578, !2619, !2646, !2647, !2648, !2649, !2650, !2651, !2654, !2656, !2663, !2664, !2666, !2667, !2668, !2727, !2728, !2743, !2744, !2745, !2746, !2747, !2750, !2751, !2752, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !430, file: !182, line: 1417, baseType: !17, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !430, file: !182, line: 1418, baseType: !343, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !430, file: !182, line: 1419, baseType: !257, size: 8, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !430, file: !182, line: 1420, baseType: !151, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !430, file: !182, line: 1421, baseType: !361, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !430, file: !182, line: 1422, baseType: !438, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !182, line: 2228, size: 576, elements: !440)
!440 = !{!441, !442, !443, !450, !454, !458, !462, !466, !467, !477, !480, !481, !482, !484, !485, !486}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !182, line: 2229, baseType: !48, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !439, file: !182, line: 2230, baseType: !6, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !439, file: !182, line: 2238, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!6, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !449, line: 28, flags: DIFlagFwdDecl)
!449 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !439, file: !182, line: 2239, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !182, line: 70, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !439, file: !182, line: 2240, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!211, !438, !6, !48, !175}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !439, file: !182, line: 2242, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !429}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !439, file: !182, line: 2243, baseType: !463, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !465, line: 76, flags: DIFlagFwdDecl)
!465 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !182, line: 2244, baseType: !438, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !439, file: !182, line: 2245, baseType: !468, size: 64, offset: 512)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !18, line: 182, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !468, file: !18, line: 183, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !18, line: 186, size: 128, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !18, line: 187, baseType: !471, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !472, file: !18, line: 187, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !439, file: !182, line: 2247, baseType: !478, offset: 576)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !479, line: 187, elements: !74)
!479 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !439, file: !182, line: 2248, baseType: !478, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !439, file: !182, line: 2249, baseType: !478, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !439, file: !182, line: 2250, baseType: !483, offset: 576)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, elements: !102)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !439, file: !182, line: 2252, baseType: !478, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !439, file: !182, line: 2253, baseType: !478, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !439, file: !182, line: 2254, baseType: !478, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !430, file: !182, line: 1423, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !182, line: 1935, size: 1472, elements: !491)
!491 = !{!492, !496, !500, !501, !505, !512, !516, !517, !518, !522, !526, !527, !528, !529, !535, !540, !541, !597, !598, !599, !600, !2361, !2376}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !490, file: !182, line: 1936, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!259, !429}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !490, file: !182, line: 1937, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !259}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !490, file: !182, line: 1938, baseType: !497, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !490, file: !182, line: 1940, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !259, !6}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !490, file: !182, line: 1941, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!6, !259, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !511, line: 40, flags: DIFlagFwdDecl)
!511 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !490, file: !182, line: 1942, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!6, !259}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !490, file: !182, line: 1943, baseType: !497, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !490, file: !182, line: 1944, baseType: !459, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !490, file: !182, line: 1945, baseType: !519, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!6, !429, !6}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !490, file: !182, line: 1946, baseType: !523, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!6, !429}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !490, file: !182, line: 1947, baseType: !523, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !490, file: !182, line: 1948, baseType: !523, size: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !490, file: !182, line: 1949, baseType: !523, size: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !490, file: !182, line: 1950, baseType: !530, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!6, !211, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !182, line: 57, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !490, file: !182, line: 1951, baseType: !536, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!6, !429, !539, !101}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !490, file: !182, line: 1952, baseType: !459, size: 64, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !490, file: !182, line: 1954, baseType: !542, size: 64, offset: 1024)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!6, !545, !211}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !547, line: 16, size: 896, elements: !548)
!547 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !570, !592, !593, !596}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !546, file: !547, line: 17, baseType: !101, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !546, file: !547, line: 18, baseType: !148, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !546, file: !547, line: 19, baseType: !148, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !546, file: !547, line: 20, baseType: !148, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !546, file: !547, line: 21, baseType: !148, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !546, file: !547, line: 22, baseType: !361, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !546, file: !547, line: 23, baseType: !361, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !546, file: !547, line: 24, baseType: !557, size: 192, offset: 448)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !558, line: 53, size: 192, elements: !559)
!558 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !568, !569}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !557, file: !558, line: 54, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !562, line: 13, baseType: !563)
!562 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !18, line: 175, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 173, size: 64, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !564, file: !18, line: 174, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !246, line: 22, baseType: !370)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !557, file: !558, line: 55, baseType: !60, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !557, file: !558, line: 59, baseType: !17, size: 128, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !546, file: !547, line: 25, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !547, line: 31, size: 256, elements: !574)
!574 = !{!575, !580, !584, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !573, file: !547, line: 32, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!175, !545, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !573, file: !547, line: 33, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !545, !175}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !547, line: 34, baseType: !585, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!175, !545, !175, !579}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !573, file: !547, line: 35, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!6, !545, !175}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !546, file: !547, line: 26, baseType: !6, size: 32, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !546, file: !547, line: 27, baseType: !594, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !546, file: !547, line: 28, baseType: !175, size: 64, offset: 832)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !490, file: !182, line: 1955, baseType: !542, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !490, file: !182, line: 1956, baseType: !542, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !490, file: !182, line: 1957, baseType: !542, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !490, file: !182, line: 1963, baseType: !601, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!6, !429, !604, !627}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !606, line: 68, size: 512, align: 128, elements: !607)
!606 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !609, !2353, !2360}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !606, line: 69, baseType: !151, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !606, line: 77, baseType: !610, size: 320, offset: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 77, size: 320, elements: !611)
!611 = !{!612, !796, !801, !829, !837, !843, !2277, !2352}
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 78, baseType: !613, size: 320)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 78, size: 320, elements: !614)
!614 = !{!615, !616, !794, !795}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !613, file: !606, line: 84, baseType: !17, size: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !613, file: !606, line: 86, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !182, line: 451, size: 1216, align: 64, elements: !619)
!619 = !{!620, !621, !629, !630, !631, !646, !655, !656, !657, !658, !787, !788, !791, !792, !793}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !618, file: !182, line: 452, baseType: !259, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !618, file: !182, line: 453, baseType: !622, size: 128, offset: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !623, line: 292, size: 128, elements: !624)
!623 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !626, !628}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !622, file: !623, line: 293, baseType: !60)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !622, file: !623, line: 295, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !18, line: 148, baseType: !215)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !622, file: !623, line: 296, baseType: !175, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !618, file: !182, line: 454, baseType: !627, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !618, file: !182, line: 455, baseType: !34, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !618, file: !182, line: 460, baseType: !632, size: 128, offset: 256)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !633, line: 125, size: 128, elements: !634)
!633 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !645}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !632, file: !633, line: 126, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !633, line: 31, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !636, file: !633, line: 32, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !633, line: 24, size: 192, align: 64, elements: !641)
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !640, file: !633, line: 25, baseType: !151, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !640, file: !633, line: 26, baseType: !639, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !640, file: !633, line: 27, baseType: !639, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !632, file: !633, line: 127, baseType: !639, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !618, file: !182, line: 461, baseType: !647, size: 256, offset: 384)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !648, line: 35, size: 256, elements: !649)
!648 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!649 = !{!650, !651, !652, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !647, file: !648, line: 36, baseType: !561, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !647, file: !648, line: 42, baseType: !561, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !647, file: !648, line: 46, baseType: !653, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !61, line: 29, baseType: !68)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !647, file: !648, line: 47, baseType: !17, size: 128, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !618, file: !182, line: 462, baseType: !151, size: 64, offset: 640)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !618, file: !182, line: 463, baseType: !151, size: 64, offset: 704)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !618, file: !182, line: 464, baseType: !151, size: 64, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !618, file: !182, line: 465, baseType: !659, size: 64, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !182, line: 367, size: 1408, elements: !662)
!662 = !{!663, !667, !671, !675, !679, !683, !689, !695, !699, !704, !708, !712, !716, !744, !755, !761, !762, !763, !767, !772, !776, !783}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !661, file: !182, line: 368, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!6, !604, !509}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !661, file: !182, line: 369, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!6, !180, !604}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !661, file: !182, line: 372, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!6, !617, !509}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !661, file: !182, line: 375, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!6, !604}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !661, file: !182, line: 381, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!6, !180, !617, !21, !215}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !661, file: !182, line: 383, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !182, line: 290, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !661, file: !182, line: 385, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!6, !180, !617, !361, !215, !215, !693, !694}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !661, file: !182, line: 388, baseType: !696, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!6, !180, !617, !361, !215, !215, !604, !175}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !661, file: !182, line: 393, baseType: !700, size: 64, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!703, !617, !703}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !18, line: 125, baseType: !251)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !661, file: !182, line: 394, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !604, !215, !215}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !661, file: !182, line: 395, baseType: !709, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!6, !604, !627}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !661, file: !182, line: 396, baseType: !713, size: 64, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !604}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !661, file: !182, line: 397, baseType: !717, size: 64, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!132, !720, !742}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !182, line: 320, size: 384, elements: !722)
!722 = !{!723, !724, !725, !729, !730, !731, !734, !735}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !721, file: !182, line: 321, baseType: !180, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !721, file: !182, line: 326, baseType: !361, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !721, file: !182, line: 327, baseType: !726, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !720, !136, !136}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !721, file: !182, line: 328, baseType: !175, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !721, file: !182, line: 329, baseType: !6, size: 32, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !721, file: !182, line: 330, baseType: !732, size: 16, offset: 288)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !246, line: 19, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !248, line: 24, baseType: !143)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !721, file: !182, line: 331, baseType: !732, size: 16, offset: 304)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !182, line: 332, baseType: !736, size: 64, offset: 320)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !182, line: 332, size: 64, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !736, file: !182, line: 333, baseType: !215, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !736, file: !182, line: 334, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !182, line: 334, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !182, line: 64, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !661, file: !182, line: 402, baseType: !745, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!6, !617, !604, !604, !748}
!748 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !749, line: 15, baseType: !215, size: 32, elements: !750)
!749 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !752, !753, !754}
!751 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!752 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!753 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!754 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !661, file: !182, line: 404, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!320, !604, !759}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !760, line: 305, baseType: !215)
!760 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !661, file: !182, line: 405, baseType: !713, size: 64, offset: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !661, file: !182, line: 406, baseType: !676, size: 64, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !661, file: !182, line: 407, baseType: !764, size: 64, offset: 1088)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!6, !604, !151, !151}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !661, file: !182, line: 409, baseType: !768, size: 64, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !604, !771, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !661, file: !182, line: 410, baseType: !773, size: 64, offset: 1216)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!6, !617, !604}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !661, file: !182, line: 413, baseType: !777, size: 64, offset: 1280)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!6, !780, !180, !782}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !182, line: 61, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !661, file: !182, line: 415, baseType: !784, size: 64, offset: 1344)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !180}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !182, line: 466, baseType: !151, size: 64, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !618, file: !182, line: 467, baseType: !789, size: 32, offset: 960)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !790, line: 8, baseType: !245)
!790 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !618, file: !182, line: 468, baseType: !60, offset: 992)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !618, file: !182, line: 469, baseType: !17, size: 128, offset: 1024)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !618, file: !182, line: 470, baseType: !175, size: 64, offset: 1152)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !613, file: !606, line: 87, baseType: !151, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !613, file: !606, line: 94, baseType: !151, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 96, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 96, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !797, file: !606, line: 101, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !18, line: 143, baseType: !251)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 103, baseType: !802, size: 320)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 103, size: 320, elements: !803)
!803 = !{!804, !814, !817, !818}
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !606, line: 104, baseType: !805, size: 128)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !606, line: 104, size: 128, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !805, file: !606, line: 105, baseType: !17, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !606, line: 106, baseType: !809, size: 128)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !606, line: 106, size: 128, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !606, line: 107, baseType: !604, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !809, file: !606, line: 109, baseType: !6, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !809, file: !606, line: 110, baseType: !6, size: 32, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !802, file: !606, line: 117, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !606, line: 117, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !802, file: !606, line: 119, baseType: !175, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !606, line: 120, baseType: !819, size: 64, offset: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !606, line: 120, size: 64, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !819, file: !606, line: 121, baseType: !175, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !819, file: !606, line: 122, baseType: !151, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !606, line: 123, baseType: !824, size: 32)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !819, file: !606, line: 123, size: 32, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !824, file: !606, line: 124, baseType: !215, size: 16, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !824, file: !606, line: 125, baseType: !215, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !824, file: !606, line: 126, baseType: !215, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 130, baseType: !830, size: 192)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 130, size: 192, elements: !831)
!831 = !{!832, !833, !834, !835, !836}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !830, file: !606, line: 131, baseType: !151, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !830, file: !606, line: 134, baseType: !257, size: 8, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !830, file: !606, line: 135, baseType: !257, size: 8, offset: 72)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !830, file: !606, line: 136, baseType: !34, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !830, file: !606, line: 137, baseType: !215, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 139, baseType: !838, size: 256)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 139, size: 256, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !838, file: !606, line: 140, baseType: !151, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !838, file: !606, line: 141, baseType: !34, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !838, file: !606, line: 143, baseType: !17, size: 128, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 145, baseType: !844, size: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 145, size: 256, elements: !845)
!845 = !{!846, !847, !850, !851, !2276}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !844, file: !606, line: 146, baseType: !151, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !844, file: !606, line: 147, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !849, line: 509, baseType: !604)
!849 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !844, file: !606, line: 148, baseType: !151, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !606, line: 149, baseType: !852, size: 64, offset: 192)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !606, line: 149, size: 64, elements: !853)
!853 = !{!854, !2275}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !852, file: !606, line: 150, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !606, line: 388, size: 7296, elements: !857)
!857 = !{!858, !2271}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !606, line: 389, baseType: !859, size: 7296)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !856, file: !606, line: 389, size: 7296, elements: !860)
!860 = !{!861, !984, !985, !986, !990, !991, !992, !993, !994, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1035, !1043, !1046, !1086, !1087, !2255, !2256, !2259, !2260, !2261, !2264, !2265, !2266, !2269, !2270}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !859, file: !606, line: 390, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !606, line: 305, size: 1472, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !879, !880, !885, !886, !889, !978, !979, !980, !981, !982}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !863, file: !606, line: 308, baseType: !151, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !863, file: !606, line: 309, baseType: !151, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !863, file: !606, line: 313, baseType: !862, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !863, file: !606, line: 313, baseType: !862, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !863, file: !606, line: 315, baseType: !640, size: 192, align: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !863, file: !606, line: 323, baseType: !151, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !863, file: !606, line: 327, baseType: !855, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !863, file: !606, line: 333, baseType: !873, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !849, line: 284, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !849, line: 284, size: 64, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !874, file: !849, line: 284, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !878, line: 19, baseType: !151)
!878 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !863, file: !606, line: 334, baseType: !151, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !863, file: !606, line: 343, baseType: !881, size: 256, offset: 704)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !606, line: 340, size: 256, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !881, file: !606, line: 341, baseType: !640, size: 192, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !881, file: !606, line: 342, baseType: !151, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !863, file: !606, line: 351, baseType: !17, size: 128, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !863, file: !606, line: 353, baseType: !887, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !606, line: 353, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !863, file: !606, line: 356, baseType: !890, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !511, line: 557, size: 832, elements: !893)
!893 = !{!894, !898, !899, !903, !907, !947, !956, !960, !964, !965, !966, !970, !974}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !892, file: !511, line: 558, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !862}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !892, file: !511, line: 559, baseType: !895, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !892, file: !511, line: 560, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!6, !862, !151}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !892, file: !511, line: 561, baseType: !904, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!6, !862}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !892, file: !511, line: 562, baseType: !908, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !606, line: 682, baseType: !215)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !511, line: 508, size: 768, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !927, !934, !940, !941, !942, !944, !946}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !913, file: !511, line: 509, baseType: !862, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !913, file: !511, line: 510, baseType: !215, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !913, file: !511, line: 511, baseType: !627, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !913, file: !511, line: 512, baseType: !151, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !913, file: !511, line: 513, baseType: !151, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !913, file: !511, line: 514, baseType: !921, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !849, line: 385, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 385, size: 64, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !923, file: !849, line: 385, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !878, line: 15, baseType: !151)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !913, file: !511, line: 516, baseType: !928, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !849, line: 359, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 359, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !930, file: !849, line: 359, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !878, line: 16, baseType: !151)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !913, file: !511, line: 519, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !878, line: 21, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 21, size: 64, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !936, file: !878, line: 21, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !878, line: 14, baseType: !151)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !913, file: !511, line: 521, baseType: !604, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !913, file: !511, line: 522, baseType: !604, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !913, file: !511, line: 528, baseType: !943, size: 64, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !913, file: !511, line: 532, baseType: !945, size: 64, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !913, file: !511, line: 536, baseType: !848, size: 64, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !892, file: !511, line: 563, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!911, !912, !951}
!951 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !511, line: 546, baseType: !215, size: 32, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!954 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!955 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !892, file: !511, line: 565, baseType: !957, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !912, !151, !151}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !892, file: !511, line: 567, baseType: !961, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!151, !862}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !892, file: !511, line: 571, baseType: !908, size: 64, offset: 512)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !892, file: !511, line: 574, baseType: !908, size: 64, offset: 576)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !892, file: !511, line: 579, baseType: !967, size: 64, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!6, !862, !151, !175, !6, !6}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !892, file: !511, line: 585, baseType: !971, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!48, !862}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !892, file: !511, line: 615, baseType: !975, size: 64, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!604, !862, !151}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !863, file: !606, line: 359, baseType: !151, size: 64, offset: 1216)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !863, file: !606, line: 361, baseType: !180, size: 64, offset: 1280)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !863, file: !606, line: 362, baseType: !175, size: 64, offset: 1344)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !863, file: !606, line: 365, baseType: !561, size: 64, offset: 1408)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !863, file: !606, line: 373, baseType: !983, offset: 1472)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !606, line: 296, elements: !74)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !859, file: !606, line: 391, baseType: !636, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !859, file: !606, line: 392, baseType: !251, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !859, file: !606, line: 394, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!151, !180, !151, !151, !151, !151}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !859, file: !606, line: 398, baseType: !151, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !859, file: !606, line: 399, baseType: !151, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !859, file: !606, line: 405, baseType: !151, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !859, file: !606, line: 406, baseType: !151, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !859, file: !606, line: 407, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !849, line: 286, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 286, size: 64, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !997, file: !849, line: 286, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !878, line: 18, baseType: !151)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !859, file: !606, line: 416, baseType: !34, size: 32, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !859, file: !606, line: 428, baseType: !34, size: 32, offset: 608)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !859, file: !606, line: 437, baseType: !34, size: 32, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !859, file: !606, line: 447, baseType: !34, size: 32, offset: 672)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !859, file: !606, line: 450, baseType: !561, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !859, file: !606, line: 452, baseType: !6, size: 32, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !859, file: !606, line: 454, baseType: !60, offset: 800)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !859, file: !606, line: 457, baseType: !647, size: 256, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !859, file: !606, line: 459, baseType: !17, size: 128, offset: 1088)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !859, file: !606, line: 466, baseType: !151, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !859, file: !606, line: 467, baseType: !151, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !859, file: !606, line: 469, baseType: !151, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !859, file: !606, line: 470, baseType: !151, size: 64, offset: 1408)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !859, file: !606, line: 471, baseType: !563, size: 64, offset: 1472)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !859, file: !606, line: 472, baseType: !151, size: 64, offset: 1536)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !859, file: !606, line: 473, baseType: !151, size: 64, offset: 1600)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !859, file: !606, line: 474, baseType: !151, size: 64, offset: 1664)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !859, file: !606, line: 475, baseType: !151, size: 64, offset: 1728)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !859, file: !606, line: 477, baseType: !60, offset: 1792)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !859, file: !606, line: 478, baseType: !151, size: 64, offset: 1792)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !859, file: !606, line: 478, baseType: !151, size: 64, offset: 1856)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !859, file: !606, line: 478, baseType: !151, size: 64, offset: 1920)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !859, file: !606, line: 478, baseType: !151, size: 64, offset: 1984)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !859, file: !606, line: 479, baseType: !151, size: 64, offset: 2048)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !859, file: !606, line: 479, baseType: !151, size: 64, offset: 2112)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !859, file: !606, line: 479, baseType: !151, size: 64, offset: 2176)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !859, file: !606, line: 480, baseType: !151, size: 64, offset: 2240)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !859, file: !606, line: 480, baseType: !151, size: 64, offset: 2304)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !859, file: !606, line: 480, baseType: !151, size: 64, offset: 2368)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !859, file: !606, line: 480, baseType: !151, size: 64, offset: 2432)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !859, file: !606, line: 482, baseType: !1032, size: 2816, offset: 2496)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 2816, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 44)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !859, file: !606, line: 488, baseType: !1036, size: 256, offset: 5312)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1037, line: 60, size: 256, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1036, file: !1037, line: 61, baseType: !1040, size: 256)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 4)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !859, file: !606, line: 490, baseType: !1044, size: 64, offset: 5568)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !606, line: 490, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !859, file: !606, line: 493, baseType: !1047, size: 896, offset: 5632)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1048, line: 53, baseType: !1049)
!1048 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1048, line: 13, size: 896, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1057, !1058, !1059, !1060, !1080, !1081, !1082}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1049, file: !1048, line: 18, baseType: !251, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1049, file: !1048, line: 28, baseType: !563, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1049, file: !1048, line: 31, baseType: !647, size: 256, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1049, file: !1048, line: 32, baseType: !1055, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1048, line: 32, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1049, file: !1048, line: 37, baseType: !143, size: 16, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !1048, line: 40, baseType: !557, size: 192, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1049, file: !1048, line: 41, baseType: !175, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1049, file: !1048, line: 42, baseType: !1061, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1064, line: 13, size: 896, elements: !1065)
!1064 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1063, file: !1064, line: 14, baseType: !175, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1063, file: !1064, line: 15, baseType: !151, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1063, file: !1064, line: 17, baseType: !151, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1063, file: !1064, line: 17, baseType: !151, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1063, file: !1064, line: 19, baseType: !136, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1063, file: !1064, line: 21, baseType: !136, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1063, file: !1064, line: 22, baseType: !136, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1063, file: !1064, line: 23, baseType: !136, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1063, file: !1064, line: 24, baseType: !136, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1063, file: !1064, line: 25, baseType: !136, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1063, file: !1064, line: 26, baseType: !136, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1063, file: !1064, line: 27, baseType: !136, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1063, file: !1064, line: 28, baseType: !136, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1063, file: !1064, line: 29, baseType: !136, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1049, file: !1048, line: 44, baseType: !34, size: 32, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1049, file: !1048, line: 50, baseType: !732, size: 16, offset: 864)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1049, file: !1048, line: 51, baseType: !1083, size: 16, offset: 880)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !246, line: 18, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !248, line: 23, baseType: !1085)
!1085 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !859, file: !606, line: 495, baseType: !151, size: 64, offset: 6528)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !859, file: !606, line: 497, baseType: !1088, size: 64, offset: 6592)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !606, line: 381, size: 384, elements: !1090)
!1090 = !{!1091, !1092, !2254}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1089, file: !606, line: 382, baseType: !34, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1089, file: !606, line: 383, baseType: !1093, size: 128, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !606, line: 376, size: 128, elements: !1094)
!1094 = !{!1095, !2252}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1093, file: !606, line: 377, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1098, line: 640, size: 48640, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100, !1106, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1121, !1139, !1150, !1240, !1241, !1242, !1253, !1254, !1256, !1257, !1258, !1259, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1344, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1416, !1418, !1419, !1420, !1432, !1433, !1434, !1435, !1436, !1437, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1461, !1466, !1648, !1649, !1650, !1651, !1655, !1658, !1661, !1664, !1667, !1693, !1794, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1840, !1841, !1842, !1843, !1844, !1849, !1850, !1851, !1854, !1855, !1858, !1861, !1864, !1867, !1910, !1913, !1914, !1993, !1994, !1997, !1998, !2001, !2002, !2003, !2007, !2008, !2009, !2022, !2023, !2024, !2034, !2039, !2042, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1097, file: !1098, line: 646, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1102, line: 56, size: 128, elements: !1103)
!1102 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1102, line: 57, baseType: !151, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1101, file: !1102, line: 58, baseType: !245, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1097, file: !1098, line: 649, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1097, file: !1098, line: 657, baseType: !175, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1097, file: !1098, line: 658, baseType: !29, size: 32, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1097, file: !1098, line: 660, baseType: !215, size: 32, offset: 288)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1097, file: !1098, line: 661, baseType: !215, size: 32, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1097, file: !1098, line: 684, baseType: !6, size: 32, offset: 352)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1097, file: !1098, line: 686, baseType: !6, size: 32, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1097, file: !1098, line: 687, baseType: !6, size: 32, offset: 416)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1097, file: !1098, line: 688, baseType: !6, size: 32, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1097, file: !1098, line: 689, baseType: !215, size: 32, offset: 480)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1097, file: !1098, line: 691, baseType: !1118, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1098, line: 691, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1097, file: !1098, line: 692, baseType: !1122, size: 832, offset: 576)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1098, line: 451, size: 832, elements: !1123)
!1123 = !{!1124, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1122, file: !1098, line: 453, baseType: !1125, size: 128)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1098, line: 325, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1125, file: !1098, line: 326, baseType: !151, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1125, file: !1098, line: 327, baseType: !245, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1122, file: !1098, line: 454, baseType: !640, size: 192, align: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1122, file: !1098, line: 455, baseType: !17, size: 128, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1122, file: !1098, line: 456, baseType: !215, size: 32, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1122, file: !1098, line: 458, baseType: !251, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1122, file: !1098, line: 459, baseType: !251, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1122, file: !1098, line: 460, baseType: !251, size: 64, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1122, file: !1098, line: 461, baseType: !251, size: 64, offset: 704)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1122, file: !1098, line: 463, baseType: !251, size: 64, offset: 768)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1122, file: !1098, line: 465, baseType: !1138, offset: 832)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1098, line: 415, elements: !74)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1097, file: !1098, line: 693, baseType: !1140, size: 384, offset: 1408)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1098, line: 489, size: 384, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1140, file: !1098, line: 490, baseType: !17, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1140, file: !1098, line: 491, baseType: !151, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1140, file: !1098, line: 492, baseType: !151, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1140, file: !1098, line: 493, baseType: !215, size: 32, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1140, file: !1098, line: 494, baseType: !143, size: 16, offset: 288)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1140, file: !1098, line: 495, baseType: !143, size: 16, offset: 304)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1140, file: !1098, line: 497, baseType: !1149, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1097, file: !1098, line: 697, baseType: !1151, size: 1792, offset: 1792)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1098, line: 507, size: 1792, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1237, !1238}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1151, file: !1098, line: 508, baseType: !640, size: 192, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1151, file: !1098, line: 515, baseType: !251, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1151, file: !1098, line: 516, baseType: !251, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1151, file: !1098, line: 517, baseType: !251, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1151, file: !1098, line: 518, baseType: !251, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1151, file: !1098, line: 519, baseType: !251, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1151, file: !1098, line: 526, baseType: !567, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1151, file: !1098, line: 527, baseType: !251, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1151, file: !1098, line: 528, baseType: !215, size: 32, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1151, file: !1098, line: 554, baseType: !215, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1151, file: !1098, line: 555, baseType: !215, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1151, file: !1098, line: 556, baseType: !215, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1151, file: !1098, line: 557, baseType: !215, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1151, file: !1098, line: 563, baseType: !1167, size: 512, offset: 704)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1168, line: 118, size: 512, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1178, !1179, !1188, !1231, !1234, !1235, !1236}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1167, file: !1168, line: 119, baseType: !1171, size: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1172, line: 9, size: 256, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1171, file: !1172, line: 10, baseType: !640, size: 192, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1171, file: !1172, line: 11, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1177, line: 29, baseType: !567)
!1177 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1167, file: !1168, line: 120, baseType: !1176, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1167, file: !1168, line: 121, baseType: !1180, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1183, !1187}
!1183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1168, line: 65, baseType: !215, size: 32, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1186 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1167, file: !1168, line: 122, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1168, line: 159, size: 512, align: 512, elements: !1191)
!1191 = !{!1192, !1212, !1213, !1216, !1221, !1222, !1226, !1230}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1190, file: !1168, line: 160, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1168, line: 214, size: 4608, align: 512, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1194, file: !1168, line: 215, baseType: !653)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1194, file: !1168, line: 216, baseType: !215, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1194, file: !1168, line: 217, baseType: !215, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1194, file: !1168, line: 218, baseType: !215, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1194, file: !1168, line: 219, baseType: !215, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1194, file: !1168, line: 220, baseType: !215, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1194, file: !1168, line: 221, baseType: !215, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1194, file: !1168, line: 222, baseType: !215, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1194, file: !1168, line: 233, baseType: !1176, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1194, file: !1168, line: 234, baseType: !1187, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1194, file: !1168, line: 235, baseType: !1176, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1194, file: !1168, line: 236, baseType: !1187, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1194, file: !1168, line: 237, baseType: !1209, size: 4096, offset: 512)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 4096, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 8)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1190, file: !1168, line: 161, baseType: !215, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1190, file: !1168, line: 162, baseType: !1214, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !18, line: 27, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !134, line: 96, baseType: !6)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1190, file: !1168, line: 163, baseType: !1217, size: 32, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !218, line: 276, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !218, line: 276, size: 32, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1218, file: !218, line: 276, baseType: !222, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1190, file: !1168, line: 164, baseType: !1187, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1190, file: !1168, line: 165, baseType: !1223, size: 128, offset: 256)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1172, line: 14, size: 128, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1223, file: !1172, line: 15, baseType: !632, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1190, file: !1168, line: 166, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1176}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1190, file: !1168, line: 167, baseType: !1176, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1167, file: !1168, line: 123, baseType: !1232, size: 8, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !246, line: 17, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !248, line: 21, baseType: !257)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1167, file: !1168, line: 124, baseType: !1232, size: 8, offset: 456)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1167, file: !1168, line: 125, baseType: !1232, size: 8, offset: 464)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1167, file: !1168, line: 126, baseType: !1232, size: 8, offset: 472)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1151, file: !1098, line: 572, baseType: !1167, size: 512, offset: 1216)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1151, file: !1098, line: 580, baseType: !1239, size: 64, offset: 1728)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1097, file: !1098, line: 721, baseType: !215, size: 32, offset: 3584)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1097, file: !1098, line: 722, baseType: !6, size: 32, offset: 3616)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1097, file: !1098, line: 723, baseType: !1243, size: 64, offset: 3648)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1246, line: 17, baseType: !1247)
!1246 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1246, line: 17, size: 64, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1247, file: !1246, line: 17, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 1)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1097, file: !1098, line: 724, baseType: !1245, size: 64, offset: 3712)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1097, file: !1098, line: 749, baseType: !1255, offset: 3776)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1098, line: 290, elements: !74)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1097, file: !1098, line: 751, baseType: !17, size: 128, offset: 3776)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1097, file: !1098, line: 757, baseType: !855, size: 64, offset: 3904)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1097, file: !1098, line: 758, baseType: !855, size: 64, offset: 3968)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1097, file: !1098, line: 761, baseType: !1260, size: 320, offset: 4032)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1037, line: 34, size: 320, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1260, file: !1037, line: 35, baseType: !251, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1260, file: !1037, line: 36, baseType: !1264, size: 256, offset: 64)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 256, elements: !1041)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1097, file: !1098, line: 766, baseType: !6, size: 32, offset: 4352)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1097, file: !1098, line: 767, baseType: !6, size: 32, offset: 4384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1097, file: !1098, line: 768, baseType: !6, size: 32, offset: 4416)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1097, file: !1098, line: 770, baseType: !6, size: 32, offset: 4448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1097, file: !1098, line: 772, baseType: !151, size: 64, offset: 4480)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1097, file: !1098, line: 775, baseType: !215, size: 32, offset: 4544)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1097, file: !1098, line: 778, baseType: !215, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1097, file: !1098, line: 779, baseType: !215, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1097, file: !1098, line: 780, baseType: !215, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1097, file: !1098, line: 803, baseType: !215, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1097, file: !1098, line: 806, baseType: !215, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1097, file: !1098, line: 807, baseType: !215, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1097, file: !1098, line: 809, baseType: !215, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1097, file: !1098, line: 815, baseType: !215, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1097, file: !1098, line: 831, baseType: !151, size: 64, offset: 4672)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1097, file: !1098, line: 833, baseType: !1281, size: 384, offset: 4736)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1282, line: 25, size: 384, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284, !1289}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1281, file: !1282, line: 26, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!136, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1282, line: 27, baseType: !1290, size: 320, offset: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1282, line: 27, size: 320, elements: !1291)
!1291 = !{!1292, !1302, !1334}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1290, file: !1282, line: 36, baseType: !1293, size: 320)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1282, line: 29, size: 320, elements: !1294)
!1294 = !{!1295, !1297, !1298, !1299, !1300, !1301}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1293, file: !1282, line: 30, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1293, file: !1282, line: 31, baseType: !245, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1282, line: 32, baseType: !245, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1293, file: !1282, line: 33, baseType: !245, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1293, file: !1282, line: 34, baseType: !251, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1293, file: !1282, line: 35, baseType: !1296, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1290, file: !1282, line: 46, baseType: !1303, size: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1282, line: 38, size: 192, elements: !1304)
!1304 = !{!1305, !1306, !1312, !1333}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1303, file: !1282, line: 39, baseType: !1214, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1303, file: !1282, line: 40, baseType: !1307, size: 32, offset: 32)
!1307 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1282, line: 16, baseType: !215, size: 32, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1310 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1311 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !1282, line: 41, baseType: !1313, size: 64, offset: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1303, file: !1282, line: 41, size: 64, elements: !1314)
!1314 = !{!1315, !1323}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1313, file: !1282, line: 42, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1318, line: 7, size: 128, elements: !1319)
!1318 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !{!1320, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1317, file: !1318, line: 8, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !134, line: 93, baseType: !363)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1317, file: !1318, line: 9, baseType: !363, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1313, file: !1282, line: 43, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1326, line: 7, size: 64, elements: !1327)
!1326 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !{!1328, !1332}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1325, file: !1326, line: 8, baseType: !1329, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1326, line: 5, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !246, line: 20, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !248, line: 26, baseType: !6)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1325, file: !1326, line: 9, baseType: !1330, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1303, file: !1282, line: 45, baseType: !251, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1290, file: !1282, line: 54, baseType: !1335, size: 256)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1282, line: 48, size: 256, elements: !1336)
!1336 = !{!1337, !1340, !1341, !1342, !1343}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1335, file: !1282, line: 49, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1282, line: 14, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1335, file: !1282, line: 50, baseType: !6, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1335, file: !1282, line: 51, baseType: !6, size: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1335, file: !1282, line: 52, baseType: !151, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1335, file: !1282, line: 53, baseType: !151, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1097, file: !1098, line: 835, baseType: !1345, size: 32, offset: 5120)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !18, line: 22, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !134, line: 28, baseType: !6)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1097, file: !1098, line: 836, baseType: !1345, size: 32, offset: 5152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1097, file: !1098, line: 840, baseType: !151, size: 64, offset: 5184)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1097, file: !1098, line: 849, baseType: !1096, size: 64, offset: 5248)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1097, file: !1098, line: 852, baseType: !1096, size: 64, offset: 5312)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1097, file: !1098, line: 857, baseType: !17, size: 128, offset: 5376)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1097, file: !1098, line: 858, baseType: !17, size: 128, offset: 5504)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1097, file: !1098, line: 859, baseType: !1096, size: 64, offset: 5632)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1097, file: !1098, line: 867, baseType: !17, size: 128, offset: 5696)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1097, file: !1098, line: 868, baseType: !17, size: 128, offset: 5824)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1097, file: !1098, line: 871, baseType: !1357, size: 64, offset: 5952)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1359, line: 59, size: 768, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1362, !1363, !1364, !1366, !1367, !1374, !1375}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1358, file: !1359, line: 61, baseType: !29, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1358, file: !1359, line: 62, baseType: !215, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1358, file: !1359, line: 63, baseType: !60, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1358, file: !1359, line: 65, baseType: !1365, size: 256, offset: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 256, elements: !1041)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1358, file: !1359, line: 66, baseType: !468, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1358, file: !1359, line: 68, baseType: !1368, size: 128, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1369, line: 40, baseType: !1370)
!1369 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1369, line: 36, size: 128, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !1369, line: 37, baseType: !60)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1370, file: !1369, line: 38, baseType: !17, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1358, file: !1359, line: 69, baseType: !194, size: 128, align: 64, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1358, file: !1359, line: 70, baseType: !1376, size: 128, offset: 640)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 128, elements: !1251)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1359, line: 54, size: 128, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1377, file: !1359, line: 55, baseType: !6, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1377, file: !1359, line: 56, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1383, line: 20, size: 1088, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1402, !1405, !1406}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1382, file: !1383, line: 21, baseType: !25, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1382, file: !1383, line: 22, baseType: !1387, size: 192, offset: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1388, line: 19, size: 192, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1387, file: !1388, line: 20, baseType: !622, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1387, file: !1388, line: 21, baseType: !215, size: 32, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1387, file: !1388, line: 22, baseType: !215, size: 32, offset: 160)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1382, file: !1383, line: 23, baseType: !194, size: 128, align: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1382, file: !1383, line: 24, baseType: !215, size: 32, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1382, file: !1383, line: 25, baseType: !1096, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1382, file: !1383, line: 26, baseType: !815, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1382, file: !1383, line: 27, baseType: !215, size: 32, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1382, file: !1383, line: 28, baseType: !1381, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1382, file: !1383, line: 32, baseType: !1400, size: 64, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !606, line: 516, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1382, file: !1383, line: 33, baseType: !1403, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1383, line: 33, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1382, file: !1383, line: 34, baseType: !6, size: 32, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1382, file: !1383, line: 35, baseType: !1407, size: 192, offset: 896)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1408, line: 7, size: 192, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1411, !1415}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1407, file: !1408, line: 8, baseType: !561, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1407, file: !1408, line: 9, baseType: !1412, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1408, line: 5, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1407, file: !1408, line: 10, baseType: !215, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1097, file: !1098, line: 872, baseType: !1417, size: 512, offset: 6016)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 512, elements: !1041)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1097, file: !1098, line: 873, baseType: !17, size: 128, offset: 6528)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1097, file: !1098, line: 874, baseType: !17, size: 128, offset: 6656)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1097, file: !1098, line: 876, baseType: !1421, size: 64, offset: 6784)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1423, line: 26, size: 192, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1422, file: !1423, line: 27, baseType: !215, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1422, file: !1423, line: 28, baseType: !1427, size: 128, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1428, line: 43, size: 128, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1427, file: !1428, line: 44, baseType: !653)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1427, file: !1428, line: 45, baseType: !17, size: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1097, file: !1098, line: 879, baseType: !539, size: 64, offset: 6848)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1097, file: !1098, line: 882, baseType: !539, size: 64, offset: 6912)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1097, file: !1098, line: 884, baseType: !251, size: 64, offset: 6976)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1097, file: !1098, line: 885, baseType: !251, size: 64, offset: 7040)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1097, file: !1098, line: 890, baseType: !251, size: 64, offset: 7104)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1097, file: !1098, line: 891, baseType: !1438, size: 128, offset: 7168)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1098, line: 242, size: 128, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1438, file: !1098, line: 244, baseType: !251, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1438, file: !1098, line: 245, baseType: !251, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !1098, line: 246, baseType: !653, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1097, file: !1098, line: 900, baseType: !151, size: 64, offset: 7296)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1097, file: !1098, line: 901, baseType: !151, size: 64, offset: 7360)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1097, file: !1098, line: 904, baseType: !251, size: 64, offset: 7424)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1097, file: !1098, line: 907, baseType: !251, size: 64, offset: 7488)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1097, file: !1098, line: 910, baseType: !151, size: 64, offset: 7552)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1097, file: !1098, line: 911, baseType: !151, size: 64, offset: 7616)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1097, file: !1098, line: 914, baseType: !1450, size: 640, offset: 7680)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1451, line: 123, size: 640, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1459, !1460}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1450, file: !1451, line: 124, baseType: !1454, size: 576)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1455, size: 576, elements: !102)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1451, line: 108, size: 192, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1455, file: !1451, line: 109, baseType: !251, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1455, file: !1451, line: 110, baseType: !1223, size: 128, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1450, file: !1451, line: 125, baseType: !215, size: 32, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1450, file: !1451, line: 126, baseType: !215, size: 32, offset: 608)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1097, file: !1098, line: 917, baseType: !1462, size: 192, offset: 8320)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1451, line: 134, size: 192, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1462, file: !1451, line: 135, baseType: !194, size: 128, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1462, file: !1451, line: 136, baseType: !215, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1097, file: !1098, line: 923, baseType: !1467, size: 64, offset: 8512)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1470, line: 111, size: 1280, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1491, !1492, !1493, !1494, !1495, !1496, !1603, !1604, !1605, !1606, !1632, !1633, !1643}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1469, file: !1470, line: 112, baseType: !34, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1469, file: !1470, line: 120, baseType: !265, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1469, file: !1470, line: 121, baseType: !273, size: 32, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1469, file: !1470, line: 122, baseType: !265, size: 32, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1469, file: !1470, line: 123, baseType: !273, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1469, file: !1470, line: 124, baseType: !265, size: 32, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1469, file: !1470, line: 125, baseType: !273, size: 32, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1469, file: !1470, line: 126, baseType: !265, size: 32, offset: 224)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1469, file: !1470, line: 127, baseType: !273, size: 32, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1469, file: !1470, line: 128, baseType: !215, size: 32, offset: 288)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1469, file: !1470, line: 129, baseType: !1483, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1484, line: 26, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1484, line: 24, size: 64, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1485, file: !1484, line: 25, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 2)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1469, file: !1470, line: 130, baseType: !1483, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1469, file: !1470, line: 131, baseType: !1483, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1469, file: !1470, line: 132, baseType: !1483, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1469, file: !1470, line: 133, baseType: !1483, size: 64, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1469, file: !1470, line: 135, baseType: !257, size: 8, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1469, file: !1470, line: 137, baseType: !1497, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1499, line: 189, size: 1664, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1502, !1505, !1510, !1511, !1514, !1515, !1520, !1521, !1522, !1523, !1525, !1526, !1527, !1528, !1529, !1567, !1588}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1498, file: !1499, line: 190, baseType: !29, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1498, file: !1499, line: 191, baseType: !1503, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1499, line: 28, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 98, baseType: !1330)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 192, baseType: !1506, size: 192, offset: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 192, size: 192, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1506, file: !1499, line: 193, baseType: !17, size: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1506, file: !1499, line: 194, baseType: !640, size: 192, align: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1498, file: !1499, line: 199, baseType: !647, size: 256, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1498, file: !1499, line: 200, baseType: !1512, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1499, line: 200, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1498, file: !1499, line: 201, baseType: !175, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 202, baseType: !1516, size: 64, offset: 640)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 202, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1516, file: !1499, line: 203, baseType: !369, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1516, file: !1499, line: 204, baseType: !369, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1498, file: !1499, line: 206, baseType: !369, size: 64, offset: 704)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1498, file: !1499, line: 207, baseType: !265, size: 32, offset: 768)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1498, file: !1499, line: 208, baseType: !273, size: 32, offset: 800)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1498, file: !1499, line: 209, baseType: !1524, size: 32, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1499, line: 31, baseType: !389)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1498, file: !1499, line: 210, baseType: !143, size: 16, offset: 864)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1498, file: !1499, line: 211, baseType: !143, size: 16, offset: 880)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1498, file: !1499, line: 215, baseType: !1085, size: 16, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1499, line: 222, baseType: !151, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 239, baseType: !1530, size: 320, offset: 1024)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 239, size: 320, elements: !1531)
!1531 = !{!1532, !1559}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1530, file: !1499, line: 240, baseType: !1533, size: 320)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1499, line: 108, size: 320, elements: !1534)
!1534 = !{!1535, !1536, !1548, !1551, !1558}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1533, file: !1499, line: 110, baseType: !151, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1499, line: 111, baseType: !1537, size: 64, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1499, line: 111, size: 64, elements: !1538)
!1538 = !{!1539, !1547}
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1499, line: 112, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1537, file: !1499, line: 112, size: 64, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1540, file: !1499, line: 114, baseType: !732, size: 16)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1540, file: !1499, line: 115, baseType: !1544, size: 48, offset: 16)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 48, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 6)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1537, file: !1499, line: 121, baseType: !151, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1533, file: !1499, line: 123, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1499, line: 96, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1533, file: !1499, line: 124, baseType: !1552, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1499, line: 102, size: 192, elements: !1554)
!1554 = !{!1555, !1556, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1553, file: !1499, line: 103, baseType: !194, size: 128, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1553, file: !1499, line: 104, baseType: !29, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1553, file: !1499, line: 105, baseType: !320, size: 8, offset: 160)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1533, file: !1499, line: 125, baseType: !48, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1499, line: 241, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !1499, line: 241, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1560, file: !1499, line: 242, baseType: !151, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1560, file: !1499, line: 243, baseType: !151, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1560, file: !1499, line: 244, baseType: !1549, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1560, file: !1499, line: 245, baseType: !1552, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1560, file: !1499, line: 246, baseType: !101, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 254, baseType: !1568, size: 256, offset: 1344)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 254, size: 256, elements: !1569)
!1569 = !{!1570, !1576}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1568, file: !1499, line: 255, baseType: !1571, size: 256)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1499, line: 128, size: 256, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1571, file: !1499, line: 129, baseType: !175, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1571, file: !1499, line: 130, baseType: !1575, size: 256)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 256, elements: !1041)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1499, line: 256, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !1499, line: 256, size: 256, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1577, file: !1499, line: 258, baseType: !17, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1577, file: !1499, line: 259, baseType: !1581, size: 128, offset: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1582, line: 22, size: 128, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1587}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1581, file: !1582, line: 23, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1582, line: 23, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1581, file: !1582, line: 24, baseType: !151, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1498, file: !1499, line: 274, baseType: !1589, size: 64, offset: 1600)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1499, line: 170, size: 192, elements: !1591)
!1591 = !{!1592, !1601, !1602}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1590, file: !1499, line: 171, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1499, line: 165, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!6, !1497, !1597, !1599, !1497}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1590, file: !1499, line: 172, baseType: !1497, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1590, file: !1499, line: 173, baseType: !1549, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1469, file: !1470, line: 138, baseType: !1497, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1469, file: !1470, line: 139, baseType: !1497, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1469, file: !1470, line: 140, baseType: !1497, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1469, file: !1470, line: 145, baseType: !1607, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1609, line: 13, size: 896, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1608, file: !1609, line: 14, baseType: !29, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1608, file: !1609, line: 15, baseType: !34, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1608, file: !1609, line: 16, baseType: !34, size: 32, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1608, file: !1609, line: 21, baseType: !561, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1608, file: !1609, line: 27, baseType: !151, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1608, file: !1609, line: 28, baseType: !151, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1608, file: !1609, line: 29, baseType: !561, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1608, file: !1609, line: 32, baseType: !472, size: 128, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1608, file: !1609, line: 33, baseType: !265, size: 32, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1608, file: !1609, line: 37, baseType: !561, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1608, file: !1609, line: 44, baseType: !1622, size: 256, offset: 640)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1623, line: 15, size: 256, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1622, file: !1623, line: 16, baseType: !653)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1622, file: !1623, line: 18, baseType: !6, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1622, file: !1623, line: 19, baseType: !6, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1622, file: !1623, line: 20, baseType: !6, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1622, file: !1623, line: 21, baseType: !6, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1622, file: !1623, line: 22, baseType: !151, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !1623, line: 23, baseType: !151, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1469, file: !1470, line: 146, baseType: !1400, size: 64, offset: 1024)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1469, file: !1470, line: 147, baseType: !1634, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1470, line: 25, size: 64, elements: !1636)
!1636 = !{!1637, !1638, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1635, file: !1470, line: 26, baseType: !34, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1635, file: !1470, line: 27, baseType: !6, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1635, file: !1470, line: 28, baseType: !1640, offset: 64)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 0)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 149, baseType: !1644, size: 128, offset: 1152)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 149, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1644, file: !1470, line: 150, baseType: !6, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1644, file: !1470, line: 151, baseType: !194, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1097, file: !1098, line: 926, baseType: !1467, size: 64, offset: 8576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1097, file: !1098, line: 929, baseType: !1467, size: 64, offset: 8640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1097, file: !1098, line: 933, baseType: !1497, size: 64, offset: 8704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1097, file: !1098, line: 943, baseType: !1652, size: 128, offset: 8768)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 16)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1097, file: !1098, line: 945, baseType: !1656, size: 64, offset: 8896)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1098, line: 49, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1097, file: !1098, line: 956, baseType: !1659, size: 64, offset: 8960)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1098, line: 45, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1097, file: !1098, line: 959, baseType: !1662, size: 64, offset: 9024)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1098, line: 959, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1097, file: !1098, line: 962, baseType: !1665, size: 64, offset: 9088)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1098, line: 66, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1097, file: !1098, line: 966, baseType: !1668, size: 64, offset: 9152)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1670, line: 31, size: 576, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1673, !1676, !1679, !1682, !1683, !1686, !1689, !1690}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1669, file: !1670, line: 32, baseType: !34, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1669, file: !1670, line: 33, baseType: !1674, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1670, line: 9, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1669, file: !1670, line: 34, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1670, line: 10, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1669, file: !1670, line: 35, baseType: !1680, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1670, line: 8, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1669, file: !1670, line: 36, baseType: !1381, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1669, file: !1670, line: 37, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1499, line: 34, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1669, file: !1670, line: 38, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1670, line: 38, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1669, file: !1670, line: 39, baseType: !1687, size: 64, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1669, file: !1670, line: 40, baseType: !1691, size: 64, offset: 512)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1670, line: 12, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1097, file: !1098, line: 969, baseType: !1694, size: 64, offset: 9216)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1696, line: 82, size: 7296, elements: !1697)
!1696 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1733, !1742, !1743, !1745, !1746, !1747, !1750, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1780, !1781, !1788, !1789, !1790, !1791, !1792, !1793}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1695, file: !1696, line: 83, baseType: !29, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1695, file: !1696, line: 84, baseType: !34, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1695, file: !1696, line: 85, baseType: !6, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1695, file: !1696, line: 86, baseType: !17, size: 128, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1695, file: !1696, line: 88, baseType: !1368, size: 128, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1695, file: !1696, line: 91, baseType: !1096, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1695, file: !1696, line: 94, baseType: !1705, size: 192, offset: 448)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1706, line: 30, size: 192, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1705, file: !1706, line: 31, baseType: !17, size: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1705, file: !1706, line: 32, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1711, line: 25, baseType: !1712)
!1711 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1711, line: 23, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1712, file: !1711, line: 24, baseType: !1250, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1695, file: !1696, line: 97, baseType: !468, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1695, file: !1696, line: 100, baseType: !6, size: 32, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1695, file: !1696, line: 106, baseType: !6, size: 32, offset: 736)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1695, file: !1696, line: 107, baseType: !1096, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1695, file: !1696, line: 110, baseType: !6, size: 32, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1695, file: !1696, line: 111, baseType: !215, size: 32, offset: 864)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1695, file: !1696, line: 122, baseType: !215, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1695, file: !1696, line: 123, baseType: !215, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1695, file: !1696, line: 128, baseType: !6, size: 32, offset: 928)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1695, file: !1696, line: 129, baseType: !17, size: 128, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1695, file: !1696, line: 132, baseType: !1167, size: 512, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1695, file: !1696, line: 133, baseType: !1176, size: 64, offset: 1600)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1695, file: !1696, line: 140, baseType: !1728, size: 256, offset: 1664)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1729, size: 256, elements: !1489)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1696, line: 38, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1729, file: !1696, line: 39, baseType: !251, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1729, file: !1696, line: 40, baseType: !251, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1695, file: !1696, line: 146, baseType: !1734, size: 192, offset: 1920)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1696, line: 66, size: 192, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1734, file: !1696, line: 67, baseType: !1737, size: 192)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1696, line: 47, size: 192, elements: !1738)
!1738 = !{!1739, !1740, !1741}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1737, file: !1696, line: 48, baseType: !563, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1737, file: !1696, line: 49, baseType: !563, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1737, file: !1696, line: 50, baseType: !563, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1695, file: !1696, line: 150, baseType: !1450, size: 640, offset: 2112)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1695, file: !1696, line: 153, baseType: !1744, size: 256, offset: 2752)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 256, elements: !1041)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1695, file: !1696, line: 159, baseType: !1357, size: 64, offset: 3008)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1695, file: !1696, line: 162, baseType: !6, size: 32, offset: 3072)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1695, file: !1696, line: 164, baseType: !1748, size: 64, offset: 3136)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1696, line: 164, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1695, file: !1696, line: 175, baseType: !1751, size: 32, offset: 3200)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !218, line: 805, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 798, size: 32, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1752, file: !218, line: 803, baseType: !217, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1752, file: !218, line: 804, baseType: !60, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1695, file: !1696, line: 176, baseType: !251, size: 64, offset: 3264)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1695, file: !1696, line: 176, baseType: !251, size: 64, offset: 3328)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1695, file: !1696, line: 176, baseType: !251, size: 64, offset: 3392)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1695, file: !1696, line: 176, baseType: !251, size: 64, offset: 3456)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1695, file: !1696, line: 177, baseType: !251, size: 64, offset: 3520)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1695, file: !1696, line: 178, baseType: !251, size: 64, offset: 3584)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1695, file: !1696, line: 179, baseType: !1438, size: 128, offset: 3648)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1695, file: !1696, line: 180, baseType: !151, size: 64, offset: 3776)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1695, file: !1696, line: 180, baseType: !151, size: 64, offset: 3840)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1695, file: !1696, line: 180, baseType: !151, size: 64, offset: 3904)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1695, file: !1696, line: 180, baseType: !151, size: 64, offset: 3968)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1695, file: !1696, line: 181, baseType: !151, size: 64, offset: 4032)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1695, file: !1696, line: 181, baseType: !151, size: 64, offset: 4096)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1695, file: !1696, line: 181, baseType: !151, size: 64, offset: 4160)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1695, file: !1696, line: 181, baseType: !151, size: 64, offset: 4224)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1695, file: !1696, line: 182, baseType: !151, size: 64, offset: 4288)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1695, file: !1696, line: 182, baseType: !151, size: 64, offset: 4352)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1695, file: !1696, line: 182, baseType: !151, size: 64, offset: 4416)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1695, file: !1696, line: 182, baseType: !151, size: 64, offset: 4480)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1695, file: !1696, line: 183, baseType: !151, size: 64, offset: 4544)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1695, file: !1696, line: 183, baseType: !151, size: 64, offset: 4608)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1695, file: !1696, line: 184, baseType: !1778, offset: 4672)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1779, line: 12, elements: !74)
!1779 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1695, file: !1696, line: 192, baseType: !253, size: 64, offset: 4672)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1695, file: !1696, line: 203, baseType: !1782, size: 2048, offset: 4736)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 2048, elements: !1653)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1784, line: 43, size: 128, elements: !1785)
!1784 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1783, file: !1784, line: 44, baseType: !150, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1783, file: !1784, line: 45, baseType: !150, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1695, file: !1696, line: 220, baseType: !320, size: 8, offset: 6784)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1695, file: !1696, line: 221, baseType: !1085, size: 16, offset: 6800)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1695, file: !1696, line: 222, baseType: !1085, size: 16, offset: 6816)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1695, file: !1696, line: 224, baseType: !855, size: 64, offset: 6848)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1695, file: !1696, line: 227, baseType: !557, size: 192, offset: 6912)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1695, file: !1696, line: 233, baseType: !557, size: 192, offset: 7104)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1097, file: !1098, line: 970, baseType: !1795, size: 64, offset: 9280)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1696, line: 20, size: 16576, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1796, file: !1696, line: 21, baseType: !60)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1796, file: !1696, line: 22, baseType: !29, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1796, file: !1696, line: 23, baseType: !1368, size: 128, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1796, file: !1696, line: 24, baseType: !1802, size: 16384, offset: 192)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1803, size: 16384, elements: !106)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1706, line: 49, size: 256, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1803, file: !1706, line: 50, baseType: !1806, size: 256)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1706, line: 35, size: 256, elements: !1807)
!1807 = !{!1808, !1815, !1816, !1822}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1806, file: !1706, line: 37, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1810, line: 19, baseType: !1811)
!1810 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1810, line: 18, baseType: !1813)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !6}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1806, file: !1706, line: 38, baseType: !151, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1806, file: !1706, line: 44, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1810, line: 22, baseType: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1810, line: 21, baseType: !1820)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1806, file: !1706, line: 46, baseType: !1710, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1097, file: !1098, line: 971, baseType: !1710, size: 64, offset: 9344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1097, file: !1098, line: 972, baseType: !1710, size: 64, offset: 9408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1097, file: !1098, line: 974, baseType: !1710, size: 64, offset: 9472)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1097, file: !1098, line: 975, baseType: !1705, size: 192, offset: 9536)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1097, file: !1098, line: 976, baseType: !151, size: 64, offset: 9728)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1097, file: !1098, line: 977, baseType: !148, size: 64, offset: 9792)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1097, file: !1098, line: 978, baseType: !215, size: 32, offset: 9856)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1097, file: !1098, line: 980, baseType: !197, size: 64, offset: 9920)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1097, file: !1098, line: 989, baseType: !1832, size: 128, offset: 9984)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1833, line: 35, size: 128, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1832, file: !1833, line: 36, baseType: !6, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1832, file: !1833, line: 37, baseType: !34, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1832, file: !1833, line: 38, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1833, line: 23, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1097, file: !1098, line: 992, baseType: !251, size: 64, offset: 10112)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1097, file: !1098, line: 993, baseType: !251, size: 64, offset: 10176)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1097, file: !1098, line: 996, baseType: !60, offset: 10240)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1097, file: !1098, line: 999, baseType: !653, offset: 10240)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1097, file: !1098, line: 1001, baseType: !1845, size: 64, offset: 10240)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1098, line: 636, size: 64, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1845, file: !1098, line: 637, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1097, file: !1098, line: 1005, baseType: !632, size: 128, offset: 10304)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1097, file: !1098, line: 1007, baseType: !1096, size: 64, offset: 10432)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1097, file: !1098, line: 1009, baseType: !1852, size: 64, offset: 10496)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1098, line: 1009, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1097, file: !1098, line: 1043, baseType: !175, size: 64, offset: 10560)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1097, file: !1098, line: 1046, baseType: !1856, size: 64, offset: 10624)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1098, line: 41, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1097, file: !1098, line: 1050, baseType: !1859, size: 64, offset: 10688)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1098, line: 42, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1097, file: !1098, line: 1054, baseType: !1862, size: 64, offset: 10752)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1098, line: 55, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1097, file: !1098, line: 1056, baseType: !1865, size: 64, offset: 10816)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1098, line: 40, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1097, file: !1098, line: 1058, baseType: !1868, size: 64, offset: 10880)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1870, line: 99, size: 704, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1897, !1898}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1869, file: !1870, line: 100, baseType: !561, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1869, file: !1870, line: 101, baseType: !34, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1869, file: !1870, line: 102, baseType: !34, size: 32, offset: 96)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !1870, line: 105, baseType: !60, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1869, file: !1870, line: 107, baseType: !143, size: 16, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1869, file: !1870, line: 109, baseType: !622, size: 128, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1869, file: !1870, line: 110, baseType: !1879, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1870, line: 73, size: 448, elements: !1881)
!1881 = !{!1882, !1885, !1886, !1891, !1896}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1880, file: !1870, line: 74, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1870, line: 74, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1880, file: !1870, line: 75, baseType: !1868, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1870, line: 83, baseType: !1887, size: 128, offset: 128)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1870, line: 83, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1887, file: !1870, line: 84, baseType: !17, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1887, file: !1870, line: 85, baseType: !815, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1870, line: 87, baseType: !1892, size: 128, offset: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1870, line: 87, size: 128, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1892, file: !1870, line: 88, baseType: !472, size: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1892, file: !1870, line: 89, baseType: !194, size: 128, align: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1870, line: 92, baseType: !215, size: 32, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1869, file: !1870, line: 111, baseType: !468, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1869, file: !1870, line: 113, baseType: !1899, size: 256, offset: 448)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1900, line: 102, size: 256, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1899, file: !1900, line: 103, baseType: !561, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1899, file: !1900, line: 104, baseType: !17, size: 128, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1899, file: !1900, line: 105, baseType: !1905, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1900, line: 21, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1097, file: !1098, line: 1061, baseType: !1911, size: 64, offset: 10944)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1098, line: 43, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1097, file: !1098, line: 1064, baseType: !151, size: 64, offset: 11008)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1097, file: !1098, line: 1065, baseType: !1915, size: 64, offset: 11072)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1706, line: 14, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1706, line: 12, size: 384, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1706, line: 13, baseType: !1920, size: 384)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !1706, line: 13, size: 384, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1920, file: !1706, line: 13, baseType: !6, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1920, file: !1706, line: 13, baseType: !6, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1920, file: !1706, line: 13, baseType: !6, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1920, file: !1706, line: 13, baseType: !1926, size: 256, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1927, line: 32, size: 256, elements: !1928)
!1927 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1934, !1947, !1953, !1962, !1982, !1987}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1926, file: !1927, line: 37, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 34, size: 64, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1930, file: !1927, line: 35, baseType: !1346, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1930, file: !1927, line: 36, baseType: !271, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1926, file: !1927, line: 45, baseType: !1935, size: 192)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 40, size: 192, elements: !1936)
!1936 = !{!1937, !1939, !1940, !1946}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1935, file: !1927, line: 41, baseType: !1938, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !134, line: 95, baseType: !6)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1935, file: !1927, line: 42, baseType: !6, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1935, file: !1927, line: 43, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1927, line: 11, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1927, line: 8, size: 64, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1942, file: !1927, line: 9, baseType: !6, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1942, file: !1927, line: 10, baseType: !175, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1935, file: !1927, line: 44, baseType: !6, size: 32, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1926, file: !1927, line: 52, baseType: !1948, size: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 48, size: 128, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1948, file: !1927, line: 49, baseType: !1346, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1948, file: !1927, line: 50, baseType: !271, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1948, file: !1927, line: 51, baseType: !1941, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1926, file: !1927, line: 61, baseType: !1954, size: 256)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 55, size: 256, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1954, file: !1927, line: 56, baseType: !1346, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1954, file: !1927, line: 57, baseType: !271, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1954, file: !1927, line: 58, baseType: !6, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1954, file: !1927, line: 59, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !134, line: 94, baseType: !135)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1954, file: !1927, line: 60, baseType: !1960, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1926, file: !1927, line: 95, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 64, size: 256, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1963, file: !1927, line: 65, baseType: !175, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1963, file: !1927, line: 77, baseType: !1967, size: 192, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1963, file: !1927, line: 77, size: 192, elements: !1968)
!1968 = !{!1969, !1970, !1977}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1967, file: !1927, line: 82, baseType: !1085, size: 16)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1967, file: !1927, line: 88, baseType: !1971, size: 192)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1927, line: 84, size: 192, elements: !1972)
!1972 = !{!1973, !1975, !1976}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1971, file: !1927, line: 85, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !1210)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1971, file: !1927, line: 86, baseType: !175, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1971, file: !1927, line: 87, baseType: !175, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1967, file: !1927, line: 93, baseType: !1978, size: 96)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1927, line: 90, size: 96, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1978, file: !1927, line: 91, baseType: !1974, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1978, file: !1927, line: 92, baseType: !247, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1926, file: !1927, line: 101, baseType: !1983, size: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 98, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1983, file: !1927, line: 99, baseType: !136, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1983, file: !1927, line: 100, baseType: !6, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1926, file: !1927, line: 108, baseType: !1988, size: 128)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 104, size: 128, elements: !1989)
!1989 = !{!1990, !1991, !1992}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1988, file: !1927, line: 105, baseType: !175, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1988, file: !1927, line: 106, baseType: !6, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1988, file: !1927, line: 107, baseType: !215, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1097, file: !1098, line: 1067, baseType: !1778, offset: 11136)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1097, file: !1098, line: 1099, baseType: !1995, size: 64, offset: 11136)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1098, line: 56, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1097, file: !1098, line: 1103, baseType: !17, size: 128, offset: 11200)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1097, file: !1098, line: 1104, baseType: !1999, size: 64, offset: 11328)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1098, line: 46, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1097, file: !1098, line: 1105, baseType: !557, size: 192, offset: 11392)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1097, file: !1098, line: 1106, baseType: !215, size: 32, offset: 11584)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1097, file: !1098, line: 1109, baseType: !2004, size: 128, offset: 11648)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 128, elements: !1489)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1098, line: 51, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1097, file: !1098, line: 1110, baseType: !557, size: 192, offset: 11776)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1097, file: !1098, line: 1111, baseType: !17, size: 128, offset: 11968)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1097, file: !1098, line: 1173, baseType: !2010, size: 64, offset: 12096)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2012, line: 62, size: 256, align: 256, elements: !2013)
!2012 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2015, !2016, !2021}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2011, file: !2012, line: 75, baseType: !247, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2011, file: !2012, line: 90, baseType: !247, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2011, file: !2012, line: 124, baseType: !2017, size: 64, offset: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2011, file: !2012, line: 109, size: 64, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2017, file: !2012, line: 110, baseType: !252, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2017, file: !2012, line: 112, baseType: !252, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2011, file: !2012, line: 144, baseType: !247, size: 32, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1097, file: !1098, line: 1174, baseType: !245, size: 32, offset: 12160)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1097, file: !1098, line: 1179, baseType: !151, size: 64, offset: 12224)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1097, file: !1098, line: 1182, baseType: !2025, size: 128, offset: 12288)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1037, line: 76, size: 128, elements: !2026)
!2026 = !{!2027, !2032, !2033}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2025, file: !1037, line: 85, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2029, line: 7, size: 64, elements: !2030)
!2029 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2028, file: !2029, line: 12, baseType: !1247, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2025, file: !1037, line: 88, baseType: !320, size: 8, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2025, file: !1037, line: 95, baseType: !320, size: 8, offset: 72)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !1098, line: 1184, baseType: !2035, size: 128, offset: 12416)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1097, file: !1098, line: 1184, size: 128, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2035, file: !1098, line: 1185, baseType: !29, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2035, file: !1098, line: 1186, baseType: !194, size: 128, align: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1097, file: !1098, line: 1190, baseType: !2040, size: 64, offset: 12544)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1098, line: 53, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1097, file: !1098, line: 1192, baseType: !2043, size: 128, offset: 12608)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1037, line: 64, size: 128, elements: !2044)
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2043, file: !1037, line: 65, baseType: !604, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2043, file: !1037, line: 67, baseType: !247, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2043, file: !1037, line: 68, baseType: !247, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1097, file: !1098, line: 1206, baseType: !6, size: 32, offset: 12736)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1097, file: !1098, line: 1207, baseType: !6, size: 32, offset: 12768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1097, file: !1098, line: 1209, baseType: !151, size: 64, offset: 12800)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1097, file: !1098, line: 1219, baseType: !251, size: 64, offset: 12864)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1097, file: !1098, line: 1220, baseType: !251, size: 64, offset: 12928)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1097, file: !1098, line: 1317, baseType: !6, size: 32, offset: 12992)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1097, file: !1098, line: 1319, baseType: !1096, size: 64, offset: 13056)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1097, file: !1098, line: 1322, baseType: !2056, size: 64, offset: 13120)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2058, line: 56, size: 512, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2068}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2057, file: !2058, line: 57, baseType: !2056, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2057, file: !2058, line: 58, baseType: !175, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2057, file: !2058, line: 59, baseType: !151, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !2058, line: 60, baseType: !151, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2057, file: !2058, line: 61, baseType: !693, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2057, file: !2058, line: 62, baseType: !215, size: 32, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2057, file: !2058, line: 63, baseType: !2067, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !18, line: 153, baseType: !251)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2057, file: !2058, line: 64, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1097, file: !1098, line: 1326, baseType: !29, size: 32, offset: 13184)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1097, file: !1098, line: 1342, baseType: !175, size: 64, offset: 13248)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1097, file: !1098, line: 1343, baseType: !252, size: 64, offset: 13312)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1097, file: !1098, line: 1344, baseType: !251, size: 64, offset: 13376)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1097, file: !1098, line: 1345, baseType: !252, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1097, file: !1098, line: 1346, baseType: !252, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1097, file: !1098, line: 1347, baseType: !252, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1097, file: !1098, line: 1348, baseType: !194, size: 128, align: 64, offset: 13504)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1097, file: !1098, line: 1358, baseType: !2080, size: 34816, offset: 13824)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2081, line: 485, size: 34816, elements: !2082)
!2081 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2112, !2113, !2114, !2115, !2116, !2117, !2120, !2121, !2122}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2080, file: !2081, line: 487, baseType: !2084, size: 192)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2085, size: 192, elements: !102)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2086, line: 16, size: 64, elements: !2087)
!2086 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2085, file: !2086, line: 17, baseType: !732, size: 16)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2085, file: !2086, line: 18, baseType: !732, size: 16, offset: 16)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2085, file: !2086, line: 19, baseType: !732, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2085, file: !2086, line: 19, baseType: !732, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2085, file: !2086, line: 19, baseType: !732, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2085, file: !2086, line: 19, baseType: !732, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2085, file: !2086, line: 19, baseType: !732, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2085, file: !2086, line: 20, baseType: !732, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2085, file: !2086, line: 20, baseType: !732, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2085, file: !2086, line: 20, baseType: !732, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2085, file: !2086, line: 20, baseType: !732, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2085, file: !2086, line: 20, baseType: !732, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2085, file: !2086, line: 20, baseType: !732, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2080, file: !2081, line: 491, baseType: !151, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2080, file: !2081, line: 495, baseType: !143, size: 16, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2080, file: !2081, line: 496, baseType: !143, size: 16, offset: 272)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2080, file: !2081, line: 497, baseType: !143, size: 16, offset: 288)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2080, file: !2081, line: 498, baseType: !143, size: 16, offset: 304)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2080, file: !2081, line: 502, baseType: !151, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2080, file: !2081, line: 503, baseType: !151, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2080, file: !2081, line: 514, baseType: !2109, size: 256, offset: 448)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2110, size: 256, elements: !1041)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2081, line: 483, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2080, file: !2081, line: 516, baseType: !151, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2080, file: !2081, line: 518, baseType: !151, size: 64, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2080, file: !2081, line: 520, baseType: !151, size: 64, offset: 832)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2080, file: !2081, line: 521, baseType: !151, size: 64, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2080, file: !2081, line: 522, baseType: !151, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2080, file: !2081, line: 528, baseType: !2118, size: 64, offset: 1024)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2081, line: 10, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2080, file: !2081, line: 535, baseType: !151, size: 64, offset: 1088)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2080, file: !2081, line: 537, baseType: !215, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2080, file: !2081, line: 540, baseType: !2123, size: 33280, offset: 1536)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2124, line: 317, size: 33280, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2123, file: !2124, line: 330, baseType: !215, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2123, file: !2124, line: 337, baseType: !151, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2123, file: !2124, line: 348, baseType: !2129, size: 32768, offset: 512)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2124, line: 304, size: 32768, elements: !2130)
!2130 = !{!2131, !2146, !2185, !2235, !2248}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2129, file: !2124, line: 305, baseType: !2132, size: 896)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2124, line: 12, size: 896, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2132, file: !2124, line: 13, baseType: !245, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2132, file: !2124, line: 14, baseType: !245, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2132, file: !2124, line: 15, baseType: !245, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2132, file: !2124, line: 16, baseType: !245, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2132, file: !2124, line: 17, baseType: !245, size: 32, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2132, file: !2124, line: 18, baseType: !245, size: 32, offset: 160)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2132, file: !2124, line: 19, baseType: !245, size: 32, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2132, file: !2124, line: 22, baseType: !2142, size: 640, offset: 224)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 640, elements: !2143)
!2143 = !{!2144}
!2144 = !DISubrange(count: 20)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2132, file: !2124, line: 25, baseType: !245, size: 32, offset: 864)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2129, file: !2124, line: 306, baseType: !2147, size: 4096, align: 128)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2124, line: 34, size: 4096, align: 128, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2152, !2153, !2168, !2169, !2170, !2174, !2176, !2180}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2147, file: !2124, line: 35, baseType: !732, size: 16)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2147, file: !2124, line: 36, baseType: !732, size: 16, offset: 16)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2147, file: !2124, line: 37, baseType: !732, size: 16, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2147, file: !2124, line: 38, baseType: !732, size: 16, offset: 48)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2124, line: 39, baseType: !2154, size: 128, offset: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2124, line: 39, size: 128, elements: !2155)
!2155 = !{!2156, !2161}
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2124, line: 40, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2154, file: !2124, line: 40, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2157, file: !2124, line: 41, baseType: !251, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2157, file: !2124, line: 42, baseType: !251, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2124, line: 44, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2154, file: !2124, line: 44, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2162, file: !2124, line: 45, baseType: !245, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2162, file: !2124, line: 46, baseType: !245, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2162, file: !2124, line: 47, baseType: !245, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2162, file: !2124, line: 48, baseType: !245, size: 32, offset: 96)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2147, file: !2124, line: 51, baseType: !245, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2147, file: !2124, line: 52, baseType: !245, size: 32, offset: 224)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2147, file: !2124, line: 55, baseType: !2171, size: 1024, offset: 256)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2147, file: !2124, line: 58, baseType: !2175, size: 2048, offset: 1280)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2048, elements: !106)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2147, file: !2124, line: 60, baseType: !2177, size: 384, offset: 3328)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 384, elements: !2178)
!2178 = !{!2179}
!2179 = !DISubrange(count: 12)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2124, line: 62, baseType: !2181, size: 384, offset: 3712)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2124, line: 62, size: 384, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2181, file: !2124, line: 63, baseType: !2177, size: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2181, file: !2124, line: 64, baseType: !2177, size: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2129, file: !2124, line: 307, baseType: !2186, size: 1088)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2124, line: 79, size: 1088, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2234}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2186, file: !2124, line: 80, baseType: !245, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2186, file: !2124, line: 81, baseType: !245, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2186, file: !2124, line: 82, baseType: !245, size: 32, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2186, file: !2124, line: 83, baseType: !245, size: 32, offset: 96)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2186, file: !2124, line: 84, baseType: !245, size: 32, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2186, file: !2124, line: 85, baseType: !245, size: 32, offset: 160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2186, file: !2124, line: 86, baseType: !245, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2186, file: !2124, line: 88, baseType: !2142, size: 640, offset: 224)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2186, file: !2124, line: 89, baseType: !1232, size: 8, offset: 864)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2186, file: !2124, line: 90, baseType: !1232, size: 8, offset: 872)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2186, file: !2124, line: 91, baseType: !1232, size: 8, offset: 880)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2186, file: !2124, line: 92, baseType: !1232, size: 8, offset: 888)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2186, file: !2124, line: 93, baseType: !1232, size: 8, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2186, file: !2124, line: 94, baseType: !1232, size: 8, offset: 904)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2186, file: !2124, line: 95, baseType: !2203, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2205, line: 11, size: 128, elements: !2206)
!2205 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2204, file: !2205, line: 12, baseType: !136, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2204, file: !2205, line: 13, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2211, line: 56, size: 1344, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2210, file: !2211, line: 61, baseType: !151, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2210, file: !2211, line: 62, baseType: !151, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2210, file: !2211, line: 63, baseType: !151, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2210, file: !2211, line: 64, baseType: !151, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2210, file: !2211, line: 65, baseType: !151, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2210, file: !2211, line: 66, baseType: !151, size: 64, offset: 320)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2210, file: !2211, line: 68, baseType: !151, size: 64, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2210, file: !2211, line: 69, baseType: !151, size: 64, offset: 448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2210, file: !2211, line: 70, baseType: !151, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2210, file: !2211, line: 71, baseType: !151, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2210, file: !2211, line: 72, baseType: !151, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2210, file: !2211, line: 73, baseType: !151, size: 64, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2210, file: !2211, line: 74, baseType: !151, size: 64, offset: 768)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2210, file: !2211, line: 75, baseType: !151, size: 64, offset: 832)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2210, file: !2211, line: 76, baseType: !151, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2210, file: !2211, line: 81, baseType: !151, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2210, file: !2211, line: 83, baseType: !151, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2210, file: !2211, line: 84, baseType: !151, size: 64, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2210, file: !2211, line: 85, baseType: !151, size: 64, offset: 1152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2210, file: !2211, line: 86, baseType: !151, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2210, file: !2211, line: 87, baseType: !151, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2186, file: !2124, line: 96, baseType: !245, size: 32, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2129, file: !2124, line: 308, baseType: !2236, size: 4608, align: 512)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2124, line: 289, size: 4608, align: 512, elements: !2237)
!2237 = !{!2238, !2239, !2246}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2236, file: !2124, line: 290, baseType: !2147, size: 4096, align: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2236, file: !2124, line: 291, baseType: !2240, size: 512, offset: 4096)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2124, line: 268, size: 512, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2240, file: !2124, line: 269, baseType: !251, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2240, file: !2124, line: 270, baseType: !251, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2240, file: !2124, line: 271, baseType: !2245, size: 384, offset: 128)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 384, elements: !1545)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2236, file: !2124, line: 292, baseType: !2247, offset: 4608)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, elements: !1641)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2129, file: !2124, line: 309, baseType: !2249, size: 32768)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 32768, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 4096)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !606, line: 378, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1089, file: !606, line: 384, baseType: !1422, size: 192, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !859, file: !606, line: 500, baseType: !60, offset: 6656)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !859, file: !606, line: 501, baseType: !2257, size: 64, offset: 6656)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !606, line: 387, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !859, file: !606, line: 516, baseType: !1400, size: 64, offset: 6720)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !859, file: !606, line: 519, baseType: !180, size: 64, offset: 6784)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !859, file: !606, line: 521, baseType: !2262, size: 64, offset: 6848)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !606, line: 521, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !859, file: !606, line: 545, baseType: !34, size: 32, offset: 6912)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !859, file: !606, line: 548, baseType: !320, size: 8, offset: 6944)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !859, file: !606, line: 550, baseType: !2267, offset: 6952)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2268, line: 142, elements: !74)
!2268 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !859, file: !606, line: 554, baseType: !1899, size: 256, offset: 6976)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !859, file: !606, line: 557, baseType: !245, size: 32, offset: 7232)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !856, file: !606, line: 565, baseType: !2272, offset: 7296)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !2273)
!2273 = !{!2274}
!2274 = !DISubrange(count: -1)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !852, file: !606, line: 151, baseType: !34, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !844, file: !606, line: 156, baseType: !60, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 159, baseType: !2278, size: 128)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !606, line: 159, size: 128, elements: !2279)
!2279 = !{!2280, !2351}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2278, file: !606, line: 161, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2283, line: 110, size: 1152, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!2284 = !{!2285, !2295, !2316, !2317, !2318, !2325, !2326, !2338, !2339, !2340}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2282, file: !2283, line: 111, baseType: !2286, size: 384)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2283, line: 19, size: 384, elements: !2287)
!2287 = !{!2288, !2290, !2291, !2292, !2293, !2294}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2286, file: !2283, line: 20, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2286, file: !2283, line: 21, baseType: !2289, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2286, file: !2283, line: 22, baseType: !2289, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2286, file: !2283, line: 23, baseType: !151, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2286, file: !2283, line: 24, baseType: !151, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2286, file: !2283, line: 25, baseType: !151, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2282, file: !2283, line: 112, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2298, line: 105, size: 128, elements: !2299)
!2298 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2297, file: !2298, line: 110, baseType: !151, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2297, file: !2298, line: 118, baseType: !2302, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2298, line: 95, size: 448, elements: !2304)
!2304 = !{!2305, !2306, !2311, !2312, !2313, !2314, !2315}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2303, file: !2298, line: 96, baseType: !561, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2303, file: !2298, line: 97, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2298, line: 60, baseType: !2309)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2296}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2303, file: !2298, line: 98, baseType: !2307, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2303, file: !2298, line: 99, baseType: !320, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2303, file: !2298, line: 100, baseType: !320, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2303, file: !2298, line: 101, baseType: !194, size: 128, align: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2303, file: !2298, line: 102, baseType: !2296, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2282, file: !2283, line: 113, baseType: !2297, size: 128, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2282, file: !2283, line: 114, baseType: !1422, size: 192, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2282, file: !2283, line: 115, baseType: !2319, size: 32, offset: 768)
!2319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2283, line: 59, baseType: !215, size: 32, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324}
!2321 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!2322 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!2323 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!2324 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !2283, line: 116, baseType: !215, size: 32, offset: 800)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2282, file: !2283, line: 117, baseType: !2327, size: 64, offset: 832)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2283, line: 67, size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2336, !2337}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2329, file: !2283, line: 73, baseType: !713, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2329, file: !2283, line: 78, baseType: !2333, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2281}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2329, file: !2283, line: 83, baseType: !2333, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2329, file: !2283, line: 89, baseType: !908, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2282, file: !2283, line: 118, baseType: !175, size: 64, offset: 896)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2282, file: !2283, line: 119, baseType: !6, size: 32, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !2283, line: 120, baseType: !2341, size: 128, offset: 1024)
!2341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2282, file: !2283, line: 120, size: 128, elements: !2342)
!2342 = !{!2343, !2349}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2341, file: !2283, line: 121, baseType: !2344, size: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2345, line: 6, size: 128, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2344, file: !2345, line: 7, baseType: !251, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2344, file: !2345, line: 8, baseType: !251, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2341, file: !2283, line: 122, baseType: !2350)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, elements: !1641)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2278, file: !606, line: 162, baseType: !175, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !610, file: !606, line: 176, baseType: !194, size: 128, align: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !606, line: 179, baseType: !2354, size: 32, offset: 384)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 179, size: 32, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2359}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2354, file: !606, line: 184, baseType: !34, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2354, file: !606, line: 192, baseType: !215, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2354, file: !606, line: 194, baseType: !215, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2354, file: !606, line: 195, baseType: !6, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !605, file: !606, line: 199, baseType: !34, size: 32, offset: 416)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !490, file: !182, line: 1964, baseType: !2362, size: 64, offset: 1344)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!136, !429, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2367, line: 12, size: 256, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2366, file: !2367, line: 13, baseType: !627, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2366, file: !2367, line: 16, baseType: !6, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2366, file: !2367, line: 23, baseType: !151, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2366, file: !2367, line: 30, baseType: !151, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2366, file: !2367, line: 33, baseType: !2374, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !606, line: 27, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !490, file: !182, line: 1966, baseType: !2362, size: 64, offset: 1408)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !430, file: !182, line: 1424, baseType: !2378, size: 64, offset: 448)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2381, line: 322, size: 704, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !{!2383, !2434, !2438, !2442, !2443, !2444, !2445, !2446, !2451, !2456, !2460}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2380, file: !2381, line: 323, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!6, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2381, line: 294, size: 1600, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2419, !2420, !2421}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2388, file: !2381, line: 295, baseType: !472, size: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2388, file: !2381, line: 296, baseType: !17, size: 128, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2388, file: !2381, line: 297, baseType: !17, size: 128, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2388, file: !2381, line: 298, baseType: !17, size: 128, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2388, file: !2381, line: 299, baseType: !557, size: 192, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2388, file: !2381, line: 300, baseType: !60, offset: 704)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2388, file: !2381, line: 301, baseType: !34, size: 32, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2388, file: !2381, line: 302, baseType: !429, size: 64, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2388, file: !2381, line: 303, baseType: !2399, size: 64, offset: 832)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2381, line: 68, size: 64, elements: !2400)
!2400 = !{!2401, !2413}
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !2381, line: 69, baseType: !2402, size: 32)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2399, file: !2381, line: 69, size: 32, elements: !2403)
!2403 = !{!2404, !2405, !2406}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2402, file: !2381, line: 70, baseType: !265, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2402, file: !2381, line: 71, baseType: !273, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2402, file: !2381, line: 72, baseType: !2407, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2408, line: 24, baseType: !2409)
!2408 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2408, line: 22, size: 32, elements: !2410)
!2410 = !{!2411}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2409, file: !2408, line: 23, baseType: !2412, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2408, line: 20, baseType: !271)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2399, file: !2381, line: 74, baseType: !2414, size: 32, offset: 32)
!2414 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2381, line: 54, baseType: !215, size: 32, elements: !2415)
!2415 = !{!2416, !2417, !2418}
!2416 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2417 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2418 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2388, file: !2381, line: 304, baseType: !361, size: 64, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2388, file: !2381, line: 305, baseType: !151, size: 64, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2388, file: !2381, line: 306, baseType: !2422, size: 576, offset: 1024)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2381, line: 205, size: 576, elements: !2423)
!2423 = !{!2424, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2422, file: !2381, line: 206, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2381, line: 66, baseType: !363)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2422, file: !2381, line: 207, baseType: !2425, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2422, file: !2381, line: 208, baseType: !2425, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2422, file: !2381, line: 209, baseType: !2425, size: 64, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2422, file: !2381, line: 210, baseType: !2425, size: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2422, file: !2381, line: 211, baseType: !2425, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2422, file: !2381, line: 212, baseType: !2425, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2422, file: !2381, line: 213, baseType: !369, size: 64, offset: 448)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2422, file: !2381, line: 214, baseType: !369, size: 64, offset: 512)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2380, file: !2381, line: 324, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2387, !429, !6}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2380, file: !2381, line: 325, baseType: !2439, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2387}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2380, file: !2381, line: 326, baseType: !2384, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2380, file: !2381, line: 327, baseType: !2384, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2380, file: !2381, line: 328, baseType: !2384, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2380, file: !2381, line: 329, baseType: !519, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2380, file: !2381, line: 332, baseType: !2447, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2450, !259}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2380, file: !2381, line: 333, baseType: !2452, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!6, !259, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2380, file: !2381, line: 335, baseType: !2457, size: 64, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!6, !259, !2450}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2380, file: !2381, line: 337, baseType: !2461, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!6, !429, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !430, file: !182, line: 1425, baseType: !2466, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2381, line: 428, size: 704, elements: !2469)
!2469 = !{!2470, !2474, !2475, !2479, !2480, !2481, !2496, !2519, !2523, !2524, !2547}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2468, file: !2381, line: 429, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!6, !429, !6, !6, !379}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2468, file: !2381, line: 430, baseType: !519, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2468, file: !2381, line: 431, baseType: !2476, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!6, !429, !215}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2468, file: !2381, line: 432, baseType: !2476, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2468, file: !2381, line: 433, baseType: !519, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2468, file: !2381, line: 434, baseType: !2482, size: 64, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!6, !429, !6, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2381, line: 415, size: 256, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2486, file: !2381, line: 416, baseType: !6, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2486, file: !2381, line: 417, baseType: !215, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2486, file: !2381, line: 418, baseType: !215, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2486, file: !2381, line: 420, baseType: !215, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2486, file: !2381, line: 421, baseType: !215, size: 32, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2486, file: !2381, line: 422, baseType: !215, size: 32, offset: 160)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2486, file: !2381, line: 423, baseType: !215, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2486, file: !2381, line: 424, baseType: !215, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2468, file: !2381, line: 435, baseType: !2497, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!6, !429, !2399, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2381, line: 343, size: 960, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2501, file: !2381, line: 344, baseType: !6, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2501, file: !2381, line: 345, baseType: !251, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2501, file: !2381, line: 346, baseType: !251, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2501, file: !2381, line: 347, baseType: !251, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2501, file: !2381, line: 348, baseType: !251, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2501, file: !2381, line: 349, baseType: !251, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2501, file: !2381, line: 350, baseType: !251, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2501, file: !2381, line: 351, baseType: !567, size: 64, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2501, file: !2381, line: 353, baseType: !567, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2501, file: !2381, line: 354, baseType: !6, size: 32, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2501, file: !2381, line: 355, baseType: !6, size: 32, offset: 608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2501, file: !2381, line: 356, baseType: !251, size: 64, offset: 640)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2501, file: !2381, line: 357, baseType: !251, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2501, file: !2381, line: 358, baseType: !251, size: 64, offset: 768)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2501, file: !2381, line: 359, baseType: !567, size: 64, offset: 832)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2501, file: !2381, line: 360, baseType: !6, size: 32, offset: 896)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2468, file: !2381, line: 436, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!6, !429, !2464, !2500}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2468, file: !2381, line: 438, baseType: !2497, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2468, file: !2381, line: 439, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!6, !429, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2381, line: 409, size: 1408, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2529, file: !2381, line: 410, baseType: !215, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2529, file: !2381, line: 411, baseType: !2533, size: 1344, offset: 64)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 1344, elements: !102)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2381, line: 395, size: 448, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2546}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2534, file: !2381, line: 396, baseType: !215, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2534, file: !2381, line: 397, baseType: !215, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2534, file: !2381, line: 399, baseType: !215, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2534, file: !2381, line: 400, baseType: !215, size: 32, offset: 96)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2534, file: !2381, line: 401, baseType: !215, size: 32, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2534, file: !2381, line: 402, baseType: !215, size: 32, offset: 160)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2534, file: !2381, line: 403, baseType: !215, size: 32, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2534, file: !2381, line: 404, baseType: !253, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2534, file: !2381, line: 405, baseType: !2545, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !18, line: 126, baseType: !251)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2534, file: !2381, line: 406, baseType: !2545, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2468, file: !2381, line: 440, baseType: !2476, size: 64, offset: 640)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !430, file: !182, line: 1426, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !182, line: 49, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !430, file: !182, line: 1427, baseType: !151, size: 64, offset: 640)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !430, file: !182, line: 1428, baseType: !151, size: 64, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !430, file: !182, line: 1429, baseType: !151, size: 64, offset: 768)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !430, file: !182, line: 1430, baseType: !211, size: 64, offset: 832)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !430, file: !182, line: 1431, baseType: !647, size: 256, offset: 896)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !430, file: !182, line: 1432, baseType: !6, size: 32, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !430, file: !182, line: 1433, baseType: !34, size: 32, offset: 1184)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !430, file: !182, line: 1437, baseType: !2560, size: 64, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !182, line: 1437, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !430, file: !182, line: 1449, baseType: !2565, size: 64, offset: 1280)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !228, line: 34, size: 64, elements: !2566)
!2566 = !{!2567}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2565, file: !228, line: 35, baseType: !231, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !430, file: !182, line: 1450, baseType: !17, size: 128, offset: 1344)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !430, file: !182, line: 1451, baseType: !2570, size: 64, offset: 1472)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !182, line: 699, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !430, file: !182, line: 1452, baseType: !1865, size: 64, offset: 1536)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !430, file: !182, line: 1453, baseType: !2574, size: 64, offset: 1600)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !182, line: 1453, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !430, file: !182, line: 1454, baseType: !472, size: 128, offset: 1664)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !430, file: !182, line: 1455, baseType: !215, size: 32, offset: 1792)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !430, file: !182, line: 1456, baseType: !2579, size: 2432, offset: 1856)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2381, line: 518, size: 2432, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2585, !2617}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !2381, line: 519, baseType: !215, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2579, file: !2381, line: 520, baseType: !647, size: 256, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2579, file: !2381, line: 521, baseType: !2584, size: 192, offset: 320)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !102)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2579, file: !2381, line: 522, baseType: !2586, size: 1728, offset: 512)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 1728, elements: !102)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2381, line: 222, size: 576, elements: !2588)
!2588 = !{!2589, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2587, file: !2381, line: 223, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2381, line: 443, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2607, !2608}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2591, file: !2381, line: 444, baseType: !6, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2591, file: !2381, line: 445, baseType: !2595, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2381, line: 310, size: 512, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2597, file: !2381, line: 311, baseType: !519, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2597, file: !2381, line: 312, baseType: !519, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2597, file: !2381, line: 313, baseType: !519, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2597, file: !2381, line: 314, baseType: !519, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2597, file: !2381, line: 315, baseType: !2384, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2597, file: !2381, line: 316, baseType: !2384, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2597, file: !2381, line: 317, baseType: !2384, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2597, file: !2381, line: 318, baseType: !2461, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2591, file: !2381, line: 446, baseType: !463, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2591, file: !2381, line: 447, baseType: !2590, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2587, file: !2381, line: 224, baseType: !6, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2587, file: !2381, line: 226, baseType: !17, size: 128, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2587, file: !2381, line: 227, baseType: !151, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2587, file: !2381, line: 228, baseType: !215, size: 32, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2587, file: !2381, line: 229, baseType: !215, size: 32, offset: 352)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2587, file: !2381, line: 230, baseType: !2425, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2587, file: !2381, line: 231, baseType: !2425, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2587, file: !2381, line: 232, baseType: !175, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2579, file: !2381, line: 523, baseType: !2618, size: 192, offset: 2240)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 192, elements: !102)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !430, file: !182, line: 1458, baseType: !2620, size: 2112, offset: 4288)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !182, line: 1410, size: 2112, elements: !2621)
!2621 = !{!2622, !2623, !2624}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2620, file: !182, line: 1411, baseType: !6, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2620, file: !182, line: 1412, baseType: !1368, size: 128, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2620, file: !182, line: 1413, baseType: !2625, size: 1920, offset: 192)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 1920, elements: !102)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2627, line: 12, size: 640, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2628 = !{!2629, !2637, !2639, !2644, !2645}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2626, file: !2627, line: 13, baseType: !2630, size: 320)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2631, line: 17, size: 320, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !{!2633, !2634, !2635, !2636}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2630, file: !2631, line: 18, baseType: !6, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2630, file: !2631, line: 19, baseType: !6, size: 32, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2630, file: !2631, line: 20, baseType: !1368, size: 128, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2630, file: !2631, line: 22, baseType: !194, size: 128, align: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2626, file: !2627, line: 14, baseType: !2638, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2626, file: !2627, line: 15, baseType: !2640, size: 64, offset: 384)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2641, line: 16, size: 64, elements: !2642)
!2641 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2640, file: !2641, line: 17, baseType: !1096, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2626, file: !2627, line: 16, baseType: !1368, size: 128, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2626, file: !2627, line: 17, baseType: !34, size: 32, offset: 576)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !430, file: !182, line: 1465, baseType: !175, size: 64, offset: 6400)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !430, file: !182, line: 1468, baseType: !245, size: 32, offset: 6464)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !430, file: !182, line: 1470, baseType: !369, size: 64, offset: 6528)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !430, file: !182, line: 1471, baseType: !369, size: 64, offset: 6592)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !430, file: !182, line: 1473, baseType: !247, size: 32, offset: 6656)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !430, file: !182, line: 1474, baseType: !2652, size: 64, offset: 6720)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !182, line: 603, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !430, file: !182, line: 1477, baseType: !2655, size: 256, offset: 6784)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 256, elements: !2172)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !430, file: !182, line: 1478, baseType: !2657, size: 128, offset: 7040)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2658, line: 18, baseType: !2659)
!2658 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2658, line: 16, size: 128, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2659, file: !2658, line: 17, baseType: !2662, size: 128)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1233, size: 128, elements: !1653)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !430, file: !182, line: 1480, baseType: !215, size: 32, offset: 7168)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !430, file: !182, line: 1481, baseType: !2665, size: 32, offset: 7200)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !18, line: 150, baseType: !215)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !430, file: !182, line: 1487, baseType: !557, size: 192, offset: 7232)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !430, file: !182, line: 1493, baseType: !48, size: 64, offset: 7424)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !430, file: !182, line: 1495, baseType: !2669, size: 64, offset: 7488)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !209, line: 135, size: 1024, align: 512, elements: !2672)
!2672 = !{!2673, !2677, !2678, !2685, !2691, !2695, !2699, !2703, !2704, !2708, !2712, !2717, !2721}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2671, file: !209, line: 136, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!6, !211, !215}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2671, file: !209, line: 137, baseType: !2674, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2671, file: !209, line: 138, baseType: !2679, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!6, !2682, !2684}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2671, file: !209, line: 139, baseType: !2686, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!6, !2682, !215, !48, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2671, file: !209, line: 141, baseType: !2692, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!6, !2682}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2671, file: !209, line: 142, baseType: !2696, size: 64, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!6, !211}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2671, file: !209, line: 143, baseType: !2700, size: 64, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !211}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2671, file: !209, line: 144, baseType: !2700, size: 64, offset: 448)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2671, file: !209, line: 145, baseType: !2705, size: 64, offset: 512)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !211, !259}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2671, file: !209, line: 146, baseType: !2709, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!101, !211, !101, !6}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2671, file: !209, line: 147, baseType: !2713, size: 64, offset: 640)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!207, !2716}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2671, file: !209, line: 148, baseType: !2718, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!6, !379, !320}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2671, file: !209, line: 149, baseType: !2722, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!211, !211, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !430, file: !182, line: 1500, baseType: !6, size: 32, offset: 7552)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !430, file: !182, line: 1502, baseType: !2729, size: 448, offset: 7616)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2367, line: 60, size: 448, elements: !2730)
!2730 = !{!2731, !2736, !2737, !2738, !2739, !2740, !2741}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2729, file: !2367, line: 61, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!151, !2735, !2365}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2729, file: !2367, line: 63, baseType: !2732, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2729, file: !2367, line: 66, baseType: !136, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2729, file: !2367, line: 67, baseType: !6, size: 32, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2729, file: !2367, line: 68, baseType: !215, size: 32, offset: 224)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2729, file: !2367, line: 71, baseType: !17, size: 128, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2729, file: !2367, line: 77, baseType: !2742, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !430, file: !182, line: 1505, baseType: !561, size: 64, offset: 8064)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !430, file: !182, line: 1508, baseType: !561, size: 64, offset: 8128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !430, file: !182, line: 1511, baseType: !6, size: 32, offset: 8192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !430, file: !182, line: 1514, baseType: !789, size: 32, offset: 8224)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !430, file: !182, line: 1517, baseType: !2748, size: 64, offset: 8256)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1900, line: 18, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !430, file: !182, line: 1518, baseType: !468, size: 64, offset: 8320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !430, file: !182, line: 1525, baseType: !1400, size: 64, offset: 8384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !430, file: !182, line: 1532, baseType: !2753, size: 64, offset: 8448)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2754, line: 52, size: 64, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2753, file: !2754, line: 53, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2754, line: 40, size: 256, elements: !2759)
!2759 = !{!2760, !2761, !2766}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2758, file: !2754, line: 42, baseType: !60)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2758, file: !2754, line: 44, baseType: !2762, size: 192)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2754, line: 28, size: 192, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2762, file: !2754, line: 29, baseType: !17, size: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2762, file: !2754, line: 31, baseType: !136, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2758, file: !2754, line: 49, baseType: !136, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !430, file: !182, line: 1533, baseType: !2753, size: 64, offset: 8512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !430, file: !182, line: 1534, baseType: !194, size: 128, align: 64, offset: 8576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !430, file: !182, line: 1535, baseType: !1899, size: 256, offset: 8704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !430, file: !182, line: 1537, baseType: !557, size: 192, offset: 8960)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !430, file: !182, line: 1542, baseType: !6, size: 32, offset: 9152)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !430, file: !182, line: 1545, baseType: !60, offset: 9184)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !430, file: !182, line: 1546, baseType: !17, size: 128, offset: 9216)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !430, file: !182, line: 1548, baseType: !60, offset: 9344)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !430, file: !182, line: 1549, baseType: !17, size: 128, offset: 9344)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !260, file: !182, line: 624, baseType: !617, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !260, file: !182, line: 631, baseType: !151, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !182, line: 639, baseType: !2779, size: 32, offset: 384)
!2779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !182, line: 639, size: 32, elements: !2780)
!2780 = !{!2781, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2779, file: !182, line: 640, baseType: !2782, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2779, file: !182, line: 641, baseType: !215, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !260, file: !182, line: 643, baseType: !343, size: 32, offset: 416)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !260, file: !182, line: 644, baseType: !361, size: 64, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !260, file: !182, line: 645, baseType: !365, size: 128, offset: 512)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !260, file: !182, line: 646, baseType: !365, size: 128, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !260, file: !182, line: 647, baseType: !365, size: 128, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !260, file: !182, line: 648, baseType: !60, offset: 896)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !260, file: !182, line: 649, baseType: !143, size: 16, offset: 896)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !260, file: !182, line: 650, baseType: !1232, size: 8, offset: 912)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !260, file: !182, line: 651, baseType: !1232, size: 8, offset: 920)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !260, file: !182, line: 652, baseType: !2545, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !260, file: !182, line: 659, baseType: !151, size: 64, offset: 1024)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !260, file: !182, line: 660, baseType: !647, size: 256, offset: 1088)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !260, file: !182, line: 662, baseType: !151, size: 64, offset: 1344)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !260, file: !182, line: 663, baseType: !151, size: 64, offset: 1408)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !260, file: !182, line: 665, baseType: !472, size: 128, offset: 1472)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !260, file: !182, line: 666, baseType: !17, size: 128, offset: 1600)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !260, file: !182, line: 675, baseType: !17, size: 128, offset: 1728)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !260, file: !182, line: 676, baseType: !17, size: 128, offset: 1856)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !260, file: !182, line: 677, baseType: !17, size: 128, offset: 1984)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !182, line: 678, baseType: !2804, size: 128, offset: 2112)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !182, line: 678, size: 128, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2804, file: !182, line: 679, baseType: !468, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2804, file: !182, line: 680, baseType: !194, size: 128, align: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !260, file: !182, line: 682, baseType: !563, size: 64, offset: 2240)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !260, file: !182, line: 683, baseType: !563, size: 64, offset: 2304)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !260, file: !182, line: 684, baseType: !34, size: 32, offset: 2368)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !260, file: !182, line: 685, baseType: !34, size: 32, offset: 2400)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !260, file: !182, line: 686, baseType: !34, size: 32, offset: 2432)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !260, file: !182, line: 688, baseType: !34, size: 32, offset: 2464)
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !182, line: 690, baseType: !2815, size: 64, offset: 2496)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !182, line: 690, size: 64, elements: !2816)
!2816 = !{!2817, !3039}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2815, file: !182, line: 691, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2820)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !182, line: 1822, size: 2048, elements: !2821)
!2821 = !{!2822, !2823, !2827, !2831, !2835, !2836, !2837, !2841, !2854, !2855, !2863, !2867, !2868, !2872, !2873, !2877, !2882, !2883, !2887, !2891, !2999, !3003, !3004, !3008, !3009, !3013, !3017, !3022, !3026, !3030, !3034, !3038}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2820, file: !182, line: 1823, baseType: !463, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2820, file: !182, line: 1824, baseType: !2824, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!361, !180, !361, !6}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2820, file: !182, line: 1825, baseType: !2828, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!132, !180, !101, !148, !579}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2820, file: !182, line: 1826, baseType: !2832, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!132, !180, !48, !148, !579}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2820, file: !182, line: 1827, baseType: !717, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2820, file: !182, line: 1828, baseType: !717, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2820, file: !182, line: 1829, baseType: !2838, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!6, !720, !320}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2820, file: !182, line: 1830, baseType: !2842, size: 64, offset: 448)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!6, !180, !2845}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !182, line: 1776, size: 128, elements: !2847)
!2847 = !{!2848, !2853}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2846, file: !182, line: 1777, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !182, line: 1773, baseType: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!6, !2845, !48, !6, !361, !251, !215}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2846, file: !182, line: 1778, baseType: !361, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2820, file: !182, line: 1831, baseType: !2842, size: 64, offset: 512)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2820, file: !182, line: 1832, baseType: !2856, size: 64, offset: 576)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!2859, !180, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2860, line: 52, baseType: !215)
!2860 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !449, line: 27, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2820, file: !182, line: 1833, baseType: !2864, size: 64, offset: 640)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!136, !180, !215, !151}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2820, file: !182, line: 1834, baseType: !2864, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2820, file: !182, line: 1835, baseType: !2869, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!6, !180, !862}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2820, file: !182, line: 1836, baseType: !151, size: 64, offset: 832)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2820, file: !182, line: 1837, baseType: !2874, size: 64, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!6, !259, !180}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2820, file: !182, line: 1838, baseType: !2878, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!6, !180, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !182, line: 1007, baseType: !175)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2820, file: !182, line: 1839, baseType: !2874, size: 64, offset: 1024)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2820, file: !182, line: 1840, baseType: !2884, size: 64, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!6, !180, !361, !361, !6}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2820, file: !182, line: 1841, baseType: !2888, size: 64, offset: 1152)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!6, !6, !180, !6}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2820, file: !182, line: 1842, baseType: !2892, size: 64, offset: 1216)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!6, !180, !6, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !182, line: 1062, size: 1664, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2929, !2930, !2931, !2944, !2975}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2896, file: !182, line: 1063, baseType: !2895, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2896, file: !182, line: 1064, baseType: !17, size: 128, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2896, file: !182, line: 1065, baseType: !472, size: 128, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2896, file: !182, line: 1066, baseType: !17, size: 128, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2896, file: !182, line: 1069, baseType: !17, size: 128, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2896, file: !182, line: 1072, baseType: !2881, size: 64, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2896, file: !182, line: 1073, baseType: !215, size: 32, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2896, file: !182, line: 1074, baseType: !257, size: 8, offset: 672)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2896, file: !182, line: 1075, baseType: !215, size: 32, offset: 704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2896, file: !182, line: 1076, baseType: !6, size: 32, offset: 736)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2896, file: !182, line: 1077, baseType: !1368, size: 128, offset: 768)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2896, file: !182, line: 1078, baseType: !180, size: 64, offset: 896)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2896, file: !182, line: 1079, baseType: !361, size: 64, offset: 960)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2896, file: !182, line: 1080, baseType: !361, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2896, file: !182, line: 1082, baseType: !2913, size: 64, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !182, line: 1314, size: 320, elements: !2915)
!2915 = !{!2916, !2924, !2925, !2926, !2927, !2928}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2914, file: !182, line: 1315, baseType: !2917)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2918, line: 20, baseType: !2919)
!2918 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2918, line: 11, elements: !2920)
!2920 = !{!2921}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2919, file: !2918, line: 12, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !72, line: 33, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 31, elements: !74)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2914, file: !182, line: 1316, baseType: !6, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2914, file: !182, line: 1317, baseType: !6, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2914, file: !182, line: 1318, baseType: !2913, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2914, file: !182, line: 1319, baseType: !180, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2914, file: !182, line: 1320, baseType: !194, size: 128, align: 64, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2896, file: !182, line: 1084, baseType: !151, size: 64, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2896, file: !182, line: 1085, baseType: !151, size: 64, offset: 1216)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2896, file: !182, line: 1087, baseType: !2932, size: 64, offset: 1280)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2934)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !182, line: 1011, size: 128, elements: !2935)
!2935 = !{!2936, !2940}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2934, file: !182, line: 1012, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2895, !2895}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2934, file: !182, line: 1013, baseType: !2941, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2895}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2896, file: !182, line: 1088, baseType: !2945, size: 64, offset: 1344)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2947)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !182, line: 1016, size: 512, elements: !2948)
!2948 = !{!2949, !2953, !2957, !2958, !2962, !2966, !2970, !2974}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2947, file: !182, line: 1017, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!2881, !2881}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2947, file: !182, line: 1018, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2881}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2947, file: !182, line: 1019, baseType: !2941, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2947, file: !182, line: 1020, baseType: !2959, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!6, !2895, !6}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2947, file: !182, line: 1021, baseType: !2963, size: 64, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!320, !2895}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2947, file: !182, line: 1022, baseType: !2967, size: 64, offset: 320)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!6, !2895, !6, !21}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2947, file: !182, line: 1023, baseType: !2971, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2895, !694}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2947, file: !182, line: 1024, baseType: !2963, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2896, file: !182, line: 1097, baseType: !2976, size: 256, offset: 1408)
!2976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2896, file: !182, line: 1089, size: 256, elements: !2977)
!2977 = !{!2978, !2987, !2993}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2976, file: !182, line: 1090, baseType: !2979, size: 256)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2980, line: 10, size: 256, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2981 = !{!2982, !2983, !2986}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2979, file: !2980, line: 11, baseType: !245, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2979, file: !2980, line: 12, baseType: !2984, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2980, line: 5, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2979, file: !2980, line: 13, baseType: !17, size: 128, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2976, file: !182, line: 1091, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2980, line: 17, size: 64, elements: !2989)
!2989 = !{!2990}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2988, file: !2980, line: 18, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2980, line: 16, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2976, file: !182, line: 1096, baseType: !2994, size: 192)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !182, line: 1092, size: 192, elements: !2995)
!2995 = !{!2996, !2997, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2994, file: !182, line: 1093, baseType: !17, size: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2994, file: !182, line: 1094, baseType: !6, size: 32, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2994, file: !182, line: 1095, baseType: !215, size: 32, offset: 160)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2820, file: !182, line: 1843, baseType: !3000, size: 64, offset: 1280)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!132, !180, !604, !6, !148, !579, !6}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2820, file: !182, line: 1844, baseType: !987, size: 64, offset: 1344)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2820, file: !182, line: 1845, baseType: !3005, size: 64, offset: 1408)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!6, !6}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2820, file: !182, line: 1846, baseType: !2892, size: 64, offset: 1472)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2820, file: !182, line: 1847, baseType: !3010, size: 64, offset: 1536)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!132, !2040, !180, !579, !148, !215}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2820, file: !182, line: 1848, baseType: !3014, size: 64, offset: 1600)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!132, !180, !579, !2040, !148, !215}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2820, file: !182, line: 1849, baseType: !3018, size: 64, offset: 1664)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!6, !180, !136, !3021, !694}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2820, file: !182, line: 1850, baseType: !3023, size: 64, offset: 1728)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!136, !180, !6, !361, !361}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2820, file: !182, line: 1852, baseType: !3027, size: 64, offset: 1792)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !545, !180}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2820, file: !182, line: 1856, baseType: !3031, size: 64, offset: 1856)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!132, !180, !361, !180, !361, !148, !215}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2820, file: !182, line: 1858, baseType: !3035, size: 64, offset: 1920)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!361, !180, !361, !180, !361, !361, !215}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2820, file: !182, line: 1861, baseType: !2884, size: 64, offset: 1984)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2815, file: !182, line: 692, baseType: !497, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !260, file: !182, line: 694, baseType: !3041, size: 64, offset: 2560)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !182, line: 1100, size: 384, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3042, file: !182, line: 1101, baseType: !60)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3042, file: !182, line: 1102, baseType: !17, size: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3042, file: !182, line: 1103, baseType: !17, size: 128, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3042, file: !182, line: 1104, baseType: !17, size: 128, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !260, file: !182, line: 695, baseType: !618, size: 1216, align: 64, offset: 2624)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !260, file: !182, line: 696, baseType: !17, size: 128, offset: 3840)
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !182, line: 697, baseType: !3051, size: 64, offset: 3968)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !182, line: 697, size: 64, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3058, !3059}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3051, file: !182, line: 698, baseType: !2040, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3051, file: !182, line: 699, baseType: !2570, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3051, file: !182, line: 700, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !182, line: 700, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3051, file: !182, line: 701, baseType: !101, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3051, file: !182, line: 702, baseType: !215, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !260, file: !182, line: 705, baseType: !247, size: 32, offset: 4032)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !260, file: !182, line: 708, baseType: !247, size: 32, offset: 4064)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !260, file: !182, line: 709, baseType: !2652, size: 64, offset: 4096)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !260, file: !182, line: 720, baseType: !175, size: 64, offset: 4160)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !212, file: !209, line: 98, baseType: !3065, size: 256, offset: 448)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !2172)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !212, file: !209, line: 101, baseType: !3067, size: 32, offset: 704)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3068, line: 25, size: 32, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3069 = !{!3070}
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !3068, line: 26, baseType: !3071, size: 32)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3067, file: !3068, line: 26, size: 32, elements: !3072)
!3072 = !{!3073}
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !3068, line: 30, baseType: !3074, size: 32)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3068, line: 30, size: 32, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3074, file: !3068, line: 31, baseType: !60)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3074, file: !3068, line: 32, baseType: !6, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !212, file: !209, line: 102, baseType: !2669, size: 64, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !212, file: !209, line: 103, baseType: !429, size: 64, offset: 832)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !212, file: !209, line: 104, baseType: !151, size: 64, offset: 896)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !212, file: !209, line: 105, baseType: !175, size: 64, offset: 960)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !209, line: 107, baseType: !3083, size: 128, offset: 1024)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !209, line: 107, size: 128, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3083, file: !209, line: 108, baseType: !17, size: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3083, file: !209, line: 109, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !212, file: !209, line: 111, baseType: !17, size: 128, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !212, file: !209, line: 112, baseType: !17, size: 128, offset: 1280)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !212, file: !209, line: 120, baseType: !3091, size: 128, offset: 1408)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !209, line: 116, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3091, file: !209, line: 117, baseType: !472, size: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3091, file: !209, line: 118, baseType: !227, size: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3091, file: !209, line: 119, baseType: !194, size: 128, align: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !181, file: !182, line: 922, baseType: !259, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !181, file: !182, line: 923, baseType: !2818, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !181, file: !182, line: 929, baseType: !60, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !181, file: !182, line: 930, baseType: !3100, size: 32, offset: 384)
!3100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !182, line: 296, baseType: !215, size: 32, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107}
!3102 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3103 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3104 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3105 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3106 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3107 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !181, file: !182, line: 931, baseType: !561, size: 64, offset: 448)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !181, file: !182, line: 932, baseType: !215, size: 32, offset: 512)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !181, file: !182, line: 933, baseType: !2665, size: 32, offset: 544)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !181, file: !182, line: 934, baseType: !557, size: 192, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !181, file: !182, line: 935, baseType: !361, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !181, file: !182, line: 936, baseType: !3114, size: 192, offset: 832)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !182, line: 885, size: 192, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3126, !3127, !3128}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3114, file: !182, line: 886, baseType: !2917)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3114, file: !182, line: 887, baseType: !1357, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3114, file: !182, line: 888, baseType: !3119, size: 32, offset: 64)
!3119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1359, line: 9, baseType: !215, size: 32, elements: !3120)
!3120 = !{!3121, !3122, !3123, !3124, !3125}
!3121 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3122 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3123 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3124 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3125 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3114, file: !182, line: 889, baseType: !265, size: 32, offset: 96)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3114, file: !182, line: 889, baseType: !265, size: 32, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3114, file: !182, line: 890, baseType: !6, size: 32, offset: 160)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !181, file: !182, line: 937, baseType: !1467, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !181, file: !182, line: 938, baseType: !3131, size: 256, offset: 1088)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !182, line: 896, size: 256, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3131, file: !182, line: 897, baseType: !151, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3131, file: !182, line: 898, baseType: !215, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3131, file: !182, line: 899, baseType: !215, size: 32, offset: 96)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3131, file: !182, line: 902, baseType: !215, size: 32, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3131, file: !182, line: 903, baseType: !215, size: 32, offset: 160)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3131, file: !182, line: 904, baseType: !361, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !181, file: !182, line: 940, baseType: !251, size: 64, offset: 1344)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !181, file: !182, line: 945, baseType: !175, size: 64, offset: 1408)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !181, file: !182, line: 949, baseType: !17, size: 128, offset: 1472)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !181, file: !182, line: 950, baseType: !17, size: 128, offset: 1600)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !181, file: !182, line: 952, baseType: !617, size: 64, offset: 1728)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !181, file: !182, line: 953, baseType: !789, size: 32, offset: 1792)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !181, file: !182, line: 954, baseType: !789, size: 32, offset: 1824)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !170, file: !126, line: 174, baseType: !177, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !170, file: !126, line: 176, baseType: !3148, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!6, !180, !53, !169, !862}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !158, file: !126, line: 90, baseType: !153, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !158, file: !126, line: 91, baseType: !3153, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !116, file: !45, line: 143, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!3158, !53}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3160)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3161, line: 39, size: 384, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !{!3163, !3169, !3173, !3177, !3183, !3187}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3160, file: !3161, line: 40, baseType: !3164, size: 32)
!3164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3161, line: 26, baseType: !215, size: 32, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3167 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3168 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3160, file: !3161, line: 41, baseType: !3170, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!320}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3160, file: !3161, line: 42, baseType: !3174, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!175}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3160, file: !3161, line: 43, baseType: !3178, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!2069, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3161, line: 19, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3160, file: !3161, line: 44, baseType: !3184, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!2069}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3160, file: !3161, line: 45, baseType: !298, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !116, file: !45, line: 144, baseType: !3189, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!2069, !53}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !116, file: !45, line: 145, baseType: !3193, size: 64, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !53, !3196, !3197}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !44, file: !45, line: 70, baseType: !3199, size: 64, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !449, line: 123, size: 1024, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3312, !3313, !3314, !3315, !3316}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3200, file: !449, line: 124, baseType: !34, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3200, file: !449, line: 125, baseType: !34, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3200, file: !449, line: 135, baseType: !3199, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3200, file: !449, line: 136, baseType: !48, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3200, file: !449, line: 138, baseType: !640, size: 192, align: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3200, file: !449, line: 140, baseType: !2069, size: 64, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3200, file: !449, line: 141, baseType: !215, size: 32, offset: 448)
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !449, line: 142, baseType: !3210, size: 256, offset: 512)
!3210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !449, line: 142, size: 256, elements: !3211)
!3211 = !{!3212, !3252, !3256}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3210, file: !449, line: 143, baseType: !3213, size: 192)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !449, line: 91, size: 192, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3213, file: !449, line: 92, baseType: !151, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3213, file: !449, line: 94, baseType: !636, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3213, file: !449, line: 100, baseType: !3218, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !449, line: 180, size: 704, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3250, !3251}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3219, file: !449, line: 182, baseType: !3199, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3219, file: !449, line: 183, baseType: !215, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3219, file: !449, line: 186, baseType: !1387, size: 192, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3219, file: !449, line: 187, baseType: !245, size: 32, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3219, file: !449, line: 188, baseType: !245, size: 32, offset: 352)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3219, file: !449, line: 189, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !449, line: 168, size: 320, elements: !3229)
!3229 = !{!3230, !3234, !3238, !3242, !3246}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3228, file: !449, line: 169, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!6, !545, !3218}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3228, file: !449, line: 171, baseType: !3235, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!6, !3199, !48, !142}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3228, file: !449, line: 173, baseType: !3239, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!6, !3199}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3228, file: !449, line: 174, baseType: !3243, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!6, !3199, !3199, !48}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3228, file: !449, line: 176, baseType: !3247, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!6, !545, !3199, !3218}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3219, file: !449, line: 192, baseType: !17, size: 128, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3219, file: !449, line: 194, baseType: !1368, size: 128, offset: 576)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3210, file: !449, line: 144, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !449, line: 103, size: 64, elements: !3254)
!3254 = !{!3255}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3253, file: !449, line: 104, baseType: !3199, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3210, file: !449, line: 145, baseType: !3257, size: 256)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !449, line: 107, size: 256, elements: !3258)
!3258 = !{!3259, !3307, !3310, !3311}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3257, file: !449, line: 108, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !449, line: 217, size: 768, elements: !3263)
!3263 = !{!3264, !3284, !3288, !3289, !3290, !3291, !3292, !3296, !3297, !3298, !3299, !3303}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3262, file: !449, line: 222, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!6, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !449, line: 197, size: 1088, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3269, file: !449, line: 199, baseType: !3199, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3269, file: !449, line: 200, baseType: !180, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3269, file: !449, line: 201, baseType: !545, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3269, file: !449, line: 202, baseType: !175, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3269, file: !449, line: 205, baseType: !557, size: 192, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3269, file: !449, line: 206, baseType: !557, size: 192, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3269, file: !449, line: 207, baseType: !6, size: 32, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3269, file: !449, line: 208, baseType: !17, size: 128, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3269, file: !449, line: 209, baseType: !101, size: 64, offset: 832)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3269, file: !449, line: 211, baseType: !148, size: 64, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3269, file: !449, line: 212, baseType: !320, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3269, file: !449, line: 213, baseType: !320, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3269, file: !449, line: 214, baseType: !890, size: 64, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3262, file: !449, line: 223, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3268}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3262, file: !449, line: 236, baseType: !589, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3262, file: !449, line: 238, baseType: !576, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3262, file: !449, line: 239, baseType: !585, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3262, file: !449, line: 240, baseType: !581, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3262, file: !449, line: 242, baseType: !3293, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!132, !3268, !101, !148, !361}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3262, file: !449, line: 252, baseType: !148, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3262, file: !449, line: 259, baseType: !320, size: 8, offset: 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3262, file: !449, line: 260, baseType: !3293, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3262, file: !449, line: 263, baseType: !3300, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!2859, !3268, !2861}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3262, file: !449, line: 266, baseType: !3304, size: 64, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!6, !3268, !862}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3257, file: !449, line: 109, baseType: !3308, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !449, line: 31, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3257, file: !449, line: 110, baseType: !361, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3257, file: !449, line: 111, baseType: !3199, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3200, file: !449, line: 148, baseType: !175, size: 64, offset: 768)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3200, file: !449, line: 154, baseType: !251, size: 64, offset: 832)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !449, line: 156, baseType: !143, size: 16, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3200, file: !449, line: 157, baseType: !142, size: 16, offset: 912)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3200, file: !449, line: 158, baseType: !3317, size: 64, offset: 960)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !449, line: 32, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !44, file: !45, line: 71, baseType: !25, size: 32, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !44, file: !45, line: 75, baseType: !215, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !44, file: !45, line: 76, baseType: !215, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !44, file: !45, line: 77, baseType: !215, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !44, file: !45, line: 78, baseType: !215, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !44, file: !45, line: 79, baseType: !215, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !40, file: !41, line: 463, baseType: !39, size: 64, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !40, file: !41, line: 465, baseType: !3327, size: 64, offset: 576)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !41, line: 36, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !40, file: !41, line: 467, baseType: !48, size: 64, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !41, line: 468, baseType: !3331, size: 64, offset: 704)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3333)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !41, line: 87, size: 384, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3341, !3346, !3350}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3333, file: !41, line: 88, baseType: !48, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3333, file: !41, line: 89, baseType: !155, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3333, file: !41, line: 90, baseType: !3338, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!6, !39, !96}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3333, file: !41, line: 91, baseType: !3342, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!101, !39, !3345, !3196, !3197}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3333, file: !41, line: 93, baseType: !3347, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !39}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3333, file: !41, line: 95, baseType: !3351, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3353)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3354, line: 278, size: 1472, elements: !3355)
!3354 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3355 = !{!3356, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3353, file: !3354, line: 279, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!6, !39}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3353, file: !3354, line: 280, baseType: !3347, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3353, file: !3354, line: 281, baseType: !3357, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3353, file: !3354, line: 282, baseType: !3357, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3353, file: !3354, line: 283, baseType: !3357, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3353, file: !3354, line: 284, baseType: !3357, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3353, file: !3354, line: 285, baseType: !3357, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3353, file: !3354, line: 286, baseType: !3357, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3353, file: !3354, line: 287, baseType: !3357, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3353, file: !3354, line: 288, baseType: !3357, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3353, file: !3354, line: 289, baseType: !3357, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3353, file: !3354, line: 290, baseType: !3357, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3353, file: !3354, line: 291, baseType: !3357, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3353, file: !3354, line: 292, baseType: !3357, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3353, file: !3354, line: 293, baseType: !3357, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3353, file: !3354, line: 294, baseType: !3357, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3353, file: !3354, line: 295, baseType: !3357, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3353, file: !3354, line: 296, baseType: !3357, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3353, file: !3354, line: 297, baseType: !3357, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3353, file: !3354, line: 298, baseType: !3357, size: 64, offset: 1216)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3353, file: !3354, line: 299, baseType: !3357, size: 64, offset: 1280)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3353, file: !3354, line: 300, baseType: !3357, size: 64, offset: 1344)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3353, file: !3354, line: 301, baseType: !3357, size: 64, offset: 1408)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !40, file: !41, line: 470, baseType: !3383, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3385, line: 82, size: 1408, elements: !3386)
!3385 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3392, !3393, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474, !3477, !3478}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3384, file: !3385, line: 83, baseType: !48, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3384, file: !3385, line: 84, baseType: !48, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3384, file: !3385, line: 85, baseType: !39, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3384, file: !3385, line: 86, baseType: !155, size: 64, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3384, file: !3385, line: 87, baseType: !155, size: 64, offset: 256)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3384, file: !3385, line: 88, baseType: !155, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3384, file: !3385, line: 90, baseType: !3394, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!6, !39, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3399, line: 95, size: 1152, elements: !3400)
!3399 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3412, !3425, !3438, !3439, !3440, !3441, !3442, !3450, !3451, !3452, !3453, !3454, !3455}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3398, file: !3399, line: 96, baseType: !48, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3398, file: !3399, line: 97, baseType: !3383, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3398, file: !3399, line: 99, baseType: !463, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3398, file: !3399, line: 100, baseType: !48, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3398, file: !3399, line: 102, baseType: !320, size: 8, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3398, file: !3399, line: 103, baseType: !3407, size: 32, offset: 288)
!3407 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3399, line: 44, baseType: !215, size: 32, elements: !3408)
!3408 = !{!3409, !3410, !3411}
!3409 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3410 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3411 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3398, file: !3399, line: 105, baseType: !3413, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3416, line: 262, size: 1600, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3417 = !{!3418, !3419, !3420, !3424}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3415, file: !3416, line: 263, baseType: !2655, size: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3415, file: !3416, line: 264, baseType: !2655, size: 256, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3415, file: !3416, line: 265, baseType: !3421, size: 1024, offset: 512)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1024, elements: !3422)
!3422 = !{!3423}
!3423 = !DISubrange(count: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3415, file: !3416, line: 266, baseType: !2069, size: 64, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3398, file: !3399, line: 106, baseType: !3426, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3416, line: 210, size: 256, elements: !3429)
!3429 = !{!3430, !3434, !3436, !3437}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3428, file: !3416, line: 211, baseType: !3431, size: 72)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1233, size: 72, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 9)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3428, file: !3416, line: 212, baseType: !3435, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3416, line: 14, baseType: !151)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3428, file: !3416, line: 213, baseType: !247, size: 32, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3428, file: !3416, line: 214, baseType: !247, size: 32, offset: 224)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3398, file: !3399, line: 108, baseType: !3357, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3398, file: !3399, line: 109, baseType: !3347, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3398, file: !3399, line: 110, baseType: !3357, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3398, file: !3399, line: 111, baseType: !3347, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3398, file: !3399, line: 112, baseType: !3443, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!6, !39, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3354, line: 52, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3354, line: 50, size: 32, elements: !3448)
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3447, file: !3354, line: 51, baseType: !6, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3398, file: !3399, line: 113, baseType: !3357, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3398, file: !3399, line: 114, baseType: !155, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3398, file: !3399, line: 115, baseType: !155, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3398, file: !3399, line: 117, baseType: !3351, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3398, file: !3399, line: 118, baseType: !3347, size: 64, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3398, file: !3399, line: 120, baseType: !3456, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3399, line: 120, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3384, file: !3385, line: 91, baseType: !3338, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3384, file: !3385, line: 92, baseType: !3357, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3384, file: !3385, line: 93, baseType: !3347, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3384, file: !3385, line: 94, baseType: !3357, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3384, file: !3385, line: 95, baseType: !3347, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3384, file: !3385, line: 97, baseType: !3357, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3384, file: !3385, line: 98, baseType: !3357, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3384, file: !3385, line: 100, baseType: !3443, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3384, file: !3385, line: 101, baseType: !3357, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3384, file: !3385, line: 103, baseType: !3357, size: 64, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3384, file: !3385, line: 105, baseType: !3357, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3384, file: !3385, line: 107, baseType: !3351, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3384, file: !3385, line: 109, baseType: !3471, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3385, line: 109, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3384, file: !3385, line: 111, baseType: !3475, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3385, line: 111, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3384, file: !3385, line: 112, baseType: !478, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3384, file: !3385, line: 114, baseType: !320, size: 8, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !40, file: !41, line: 471, baseType: !3397, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !40, file: !41, line: 473, baseType: !175, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !40, file: !41, line: 475, baseType: !175, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !40, file: !41, line: 480, baseType: !557, size: 192, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !40, file: !41, line: 484, baseType: !3484, size: 576, offset: 1216)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !41, line: 361, size: 576, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3484, file: !41, line: 362, baseType: !17, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3484, file: !41, line: 363, baseType: !17, size: 128, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3484, file: !41, line: 364, baseType: !17, size: 128, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3484, file: !41, line: 365, baseType: !17, size: 128, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3484, file: !41, line: 366, baseType: !320, size: 8, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3484, file: !41, line: 367, baseType: !3492, size: 32, offset: 544)
!3492 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !41, line: 343, baseType: !215, size: 32, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3495 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3496 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3497 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !40, file: !41, line: 485, baseType: !3499, size: 2304, offset: 1792)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3354, line: 565, size: 2304, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3586, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3609, !3613}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3499, file: !3354, line: 566, baseType: !3446, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3499, file: !3354, line: 567, baseType: !215, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3499, file: !3354, line: 568, baseType: !215, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3499, file: !3354, line: 569, baseType: !320, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3499, file: !3354, line: 570, baseType: !320, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3499, file: !3354, line: 571, baseType: !320, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3499, file: !3354, line: 572, baseType: !320, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3499, file: !3354, line: 573, baseType: !320, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3499, file: !3354, line: 574, baseType: !320, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3499, file: !3354, line: 575, baseType: !320, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3499, file: !3354, line: 576, baseType: !320, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3499, file: !3354, line: 577, baseType: !245, size: 32, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3499, file: !3354, line: 578, baseType: !60, offset: 96)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3499, file: !3354, line: 580, baseType: !17, size: 128, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3499, file: !3354, line: 581, baseType: !1422, size: 192, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3499, file: !3354, line: 582, baseType: !3517, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3519, line: 43, size: 1472, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3528, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !3519, line: 44, baseType: !48, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3518, file: !3519, line: 45, baseType: !6, size: 32, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3518, file: !3519, line: 46, baseType: !17, size: 128, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3518, file: !3519, line: 47, baseType: !60, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3518, file: !3519, line: 48, baseType: !3526, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3354, line: 533, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3518, file: !3519, line: 49, baseType: !3529, size: 320, offset: 320)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3530, line: 11, size: 320, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3531 = !{!3532, !3533, !3534, !3539}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3529, file: !3530, line: 16, baseType: !472, size: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3529, file: !3530, line: 17, baseType: !151, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3529, file: !3530, line: 18, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !3538}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3529, file: !3530, line: 19, baseType: !245, size: 32, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3518, file: !3519, line: 50, baseType: !151, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3518, file: !3519, line: 51, baseType: !1176, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3518, file: !3519, line: 52, baseType: !1176, size: 64, offset: 768)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3518, file: !3519, line: 53, baseType: !1176, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3518, file: !3519, line: 54, baseType: !1176, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3518, file: !3519, line: 55, baseType: !1176, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3518, file: !3519, line: 56, baseType: !151, size: 64, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3518, file: !3519, line: 57, baseType: !151, size: 64, offset: 1088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3518, file: !3519, line: 58, baseType: !151, size: 64, offset: 1152)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3518, file: !3519, line: 59, baseType: !151, size: 64, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3518, file: !3519, line: 60, baseType: !151, size: 64, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3518, file: !3519, line: 61, baseType: !39, size: 64, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3518, file: !3519, line: 62, baseType: !320, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3518, file: !3519, line: 63, baseType: !320, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3499, file: !3354, line: 583, baseType: !320, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3499, file: !3354, line: 584, baseType: !320, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3499, file: !3354, line: 585, baseType: !320, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3499, file: !3354, line: 586, baseType: !215, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3499, file: !3354, line: 587, baseType: !215, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3499, file: !3354, line: 592, baseType: !1167, size: 512, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3499, file: !3354, line: 593, baseType: !251, size: 64, offset: 1088)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3499, file: !3354, line: 594, baseType: !1899, size: 256, offset: 1152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3499, file: !3354, line: 595, baseType: !1368, size: 128, offset: 1408)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3499, file: !3354, line: 596, baseType: !3526, size: 64, offset: 1536)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3499, file: !3354, line: 597, baseType: !34, size: 32, offset: 1600)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3499, file: !3354, line: 598, baseType: !34, size: 32, offset: 1632)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3499, file: !3354, line: 599, baseType: !215, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3499, file: !3354, line: 600, baseType: !215, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3499, file: !3354, line: 601, baseType: !215, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3499, file: !3354, line: 602, baseType: !215, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3499, file: !3354, line: 603, baseType: !215, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3499, file: !3354, line: 604, baseType: !320, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3499, file: !3354, line: 605, baseType: !215, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3499, file: !3354, line: 606, baseType: !215, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3499, file: !3354, line: 607, baseType: !215, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3499, file: !3354, line: 608, baseType: !215, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3499, file: !3354, line: 609, baseType: !215, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3499, file: !3354, line: 610, baseType: !215, size: 32, offset: 1696)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3499, file: !3354, line: 611, baseType: !3579, size: 32, offset: 1728)
!3579 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3354, line: 524, baseType: !215, size: 32, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585}
!3581 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3582 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3583 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3584 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3585 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3499, file: !3354, line: 612, baseType: !3587, size: 32, offset: 1760)
!3587 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3354, line: 502, baseType: !215, size: 32, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592}
!3589 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3590 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3591 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3592 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3499, file: !3354, line: 613, baseType: !6, size: 32, offset: 1792)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3499, file: !3354, line: 614, baseType: !6, size: 32, offset: 1824)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3499, file: !3354, line: 615, baseType: !251, size: 64, offset: 1856)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3499, file: !3354, line: 616, baseType: !251, size: 64, offset: 1920)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3499, file: !3354, line: 617, baseType: !251, size: 64, offset: 1984)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3499, file: !3354, line: 618, baseType: !251, size: 64, offset: 2048)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3499, file: !3354, line: 620, baseType: !3600, size: 64, offset: 2112)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3354, line: 536, size: 256, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3601, file: !3354, line: 537, baseType: !60)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3601, file: !3354, line: 538, baseType: !215, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3601, file: !3354, line: 540, baseType: !17, size: 128, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3601, file: !3354, line: 543, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3354, line: 534, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3499, file: !3354, line: 621, baseType: !3610, size: 64, offset: 2176)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !39, !1330}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3499, file: !3354, line: 622, baseType: !3614, size: 64, offset: 2240)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3354, line: 622, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !40, file: !41, line: 486, baseType: !3617, size: 64, offset: 4096)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3354, line: 642, size: 1792, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3626, !3627, !3628}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3618, file: !3354, line: 643, baseType: !3353, size: 1472)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3618, file: !3354, line: 644, baseType: !3357, size: 64, offset: 1472)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3618, file: !3354, line: 645, baseType: !3623, size: 64, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !39, !320}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3618, file: !3354, line: 646, baseType: !3357, size: 64, offset: 1600)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3618, file: !3354, line: 647, baseType: !3347, size: 64, offset: 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3618, file: !3354, line: 648, baseType: !3347, size: 64, offset: 1728)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !40, file: !41, line: 493, baseType: !3630, size: 64, offset: 4160)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3632, line: 162, size: 1088, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!3633 = !{!3634, !3635, !3636, !3822, !3823, !3824, !3825, !3826, !3827, !3830, !3831, !3832, !3833, !3834, !3835, !3836}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3631, file: !3632, line: 163, baseType: !17, size: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3631, file: !3632, line: 164, baseType: !48, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3631, file: !3632, line: 165, baseType: !3637, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !3632, line: 105, size: 640, elements: !3640)
!3640 = !{!3641, !3772, !3783, !3788, !3792, !3799, !3803, !3807, !3814, !3818}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3639, file: !3632, line: 106, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!6, !3630, !3645, !3759}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3647, line: 51, size: 1344, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3648 = !{!3649, !3650, !3652, !3653, !3743, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3646, file: !3647, line: 52, baseType: !48, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3646, file: !3647, line: 53, baseType: !3651, size: 32, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3647, line: 28, baseType: !245)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3646, file: !3647, line: 54, baseType: !48, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3646, file: !3647, line: 55, baseType: !3654, size: 192, offset: 192)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3655, line: 17, size: 192, elements: !3656)
!3655 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3656 = !{!3657, !3659, !3742}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3654, file: !3655, line: 18, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3654, file: !3655, line: 19, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3655, line: 110, size: 1152, elements: !3663)
!3663 = !{!3664, !3668, !3672, !3678, !3684, !3688, !3692, !3697, !3701, !3702, !3706, !3710, !3714, !3725, !3726, !3727, !3728, !3738}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3662, file: !3655, line: 111, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3658, !3658}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3662, file: !3655, line: 112, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3658}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3662, file: !3655, line: 113, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!320, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3662, file: !3655, line: 114, baseType: !3679, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!2069, !3676, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3662, file: !3655, line: 116, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!320, !3676, !48}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3662, file: !3655, line: 118, baseType: !3689, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!6, !3676, !48, !215, !175, !148}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3662, file: !3655, line: 123, baseType: !3693, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!6, !3676, !48, !3696, !148}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3662, file: !3655, line: 126, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!48, !3676}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3662, file: !3655, line: 127, baseType: !3698, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3662, file: !3655, line: 128, baseType: !3703, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!3658, !3676}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3662, file: !3655, line: 130, baseType: !3707, size: 64, offset: 640)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!3658, !3676, !3658}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3662, file: !3655, line: 133, baseType: !3711, size: 64, offset: 704)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!3658, !3676, !48}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3662, file: !3655, line: 135, baseType: !3715, size: 64, offset: 768)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!6, !3676, !48, !48, !215, !215, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3655, line: 43, size: 640, elements: !3720)
!3720 = !{!3721, !3722, !3723}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3719, file: !3655, line: 44, baseType: !3658, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3719, file: !3655, line: 45, baseType: !215, size: 32, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3719, file: !3655, line: 46, baseType: !3724, size: 512, offset: 128)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, elements: !1210)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3662, file: !3655, line: 140, baseType: !3707, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3662, file: !3655, line: 143, baseType: !3703, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3662, file: !3655, line: 145, baseType: !3665, size: 64, offset: 960)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3662, file: !3655, line: 146, baseType: !3729, size: 64, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!6, !3676, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3655, line: 29, size: 128, elements: !3734)
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3733, file: !3655, line: 30, baseType: !215, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3733, file: !3655, line: 31, baseType: !215, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3733, file: !3655, line: 32, baseType: !3676, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3662, file: !3655, line: 148, baseType: !3739, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!6, !3676, !39}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3654, file: !3655, line: 20, baseType: !39, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3646, file: !3647, line: 57, baseType: !3744, size: 64, offset: 384)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3647, line: 31, size: 704, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3745, file: !3647, line: 32, baseType: !101, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3745, file: !3647, line: 33, baseType: !6, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3745, file: !3647, line: 34, baseType: !175, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3745, file: !3647, line: 35, baseType: !3744, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3745, file: !3647, line: 43, baseType: !170, size: 448, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3646, file: !3647, line: 58, baseType: !3744, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3646, file: !3647, line: 59, baseType: !3645, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3646, file: !3647, line: 60, baseType: !3645, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3646, file: !3647, line: 61, baseType: !3645, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3646, file: !3647, line: 63, baseType: !44, size: 512, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3646, file: !3647, line: 65, baseType: !151, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3646, file: !3647, line: 66, baseType: !175, size: 64, offset: 1280)
!3759 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !3632, line: 76, baseType: !215, size: 32, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3761 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!3762 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!3763 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!3764 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!3765 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!3766 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!3767 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!3768 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!3769 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!3770 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!3771 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3639, file: !3632, line: 108, baseType: !3773, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!6, !3630, !3776, !3759}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !3632, line: 63, size: 640, elements: !3778)
!3778 = !{!3779, !3780, !3781}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3777, file: !3632, line: 64, baseType: !3658, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3777, file: !3632, line: 65, baseType: !6, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3777, file: !3632, line: 66, baseType: !3782, size: 512, offset: 96)
!3782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 512, elements: !1653)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3639, file: !3632, line: 110, baseType: !3784, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!6, !3630, !215, !3787}
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !18, line: 164, baseType: !151)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3639, file: !3632, line: 111, baseType: !3789, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3630, !215}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3639, file: !3632, line: 112, baseType: !3793, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!6, !3630, !3645, !3796, !215, !3798, !2638}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3639, file: !3632, line: 117, baseType: !3800, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!6, !3630, !215, !215, !175}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3639, file: !3632, line: 119, baseType: !3804, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !3630, !215, !215}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3639, file: !3632, line: 121, baseType: !3808, size: 64, offset: 448)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!6, !3630, !3811, !320}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3813, line: 11, flags: DIFlagFwdDecl)
!3813 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3639, file: !3632, line: 122, baseType: !3815, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !3630, !3811}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3639, file: !3632, line: 123, baseType: !3819, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!6, !3630, !3776, !3798, !2638}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3631, file: !3632, line: 166, baseType: !175, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3631, file: !3632, line: 167, baseType: !215, size: 32, offset: 320)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3631, file: !3632, line: 168, baseType: !215, size: 32, offset: 352)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3631, file: !3632, line: 171, baseType: !3658, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3631, file: !3632, line: 172, baseType: !3759, size: 32, offset: 448)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3631, file: !3632, line: 173, baseType: !3828, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !3632, line: 134, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3631, file: !3632, line: 175, baseType: !3630, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3631, file: !3632, line: 182, baseType: !3787, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3631, file: !3632, line: 183, baseType: !215, size: 32, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3631, file: !3632, line: 184, baseType: !215, size: 32, offset: 736)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3631, file: !3632, line: 185, baseType: !622, size: 128, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3631, file: !3632, line: 186, baseType: !557, size: 192, offset: 896)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3631, file: !3632, line: 187, baseType: !3837, offset: 1088)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !2273)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !40, file: !41, line: 499, baseType: !17, size: 128, offset: 4224)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !40, file: !41, line: 502, baseType: !3840, size: 64, offset: 4352)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3842)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !41, line: 502, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !40, file: !41, line: 504, baseType: !3844, size: 64, offset: 4416)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !40, file: !41, line: 505, baseType: !251, size: 64, offset: 4480)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !40, file: !41, line: 510, baseType: !251, size: 64, offset: 4544)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !40, file: !41, line: 511, baseType: !3848, size: 64, offset: 4608)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3850)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !41, line: 511, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !40, file: !41, line: 513, baseType: !3852, size: 64, offset: 4672)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !41, line: 288, size: 128, elements: !3854)
!3854 = !{!3855, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3853, file: !41, line: 293, baseType: !215, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3853, file: !41, line: 294, baseType: !151, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !40, file: !41, line: 515, baseType: !17, size: 128, offset: 4736)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !40, file: !41, line: 526, baseType: !3859, offset: 4864)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3860, line: 5, elements: !74)
!3860 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !40, file: !41, line: 528, baseType: !3645, size: 64, offset: 4864)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !40, file: !41, line: 529, baseType: !3658, size: 64, offset: 4928)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !40, file: !41, line: 534, baseType: !343, size: 32, offset: 4992)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !41, line: 535, baseType: !245, size: 32, offset: 5024)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !40, file: !41, line: 537, baseType: !60, offset: 5056)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !40, file: !41, line: 538, baseType: !17, size: 128, offset: 5056)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !40, file: !41, line: 540, baseType: !3868, size: 64, offset: 5184)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3870, line: 54, size: 960, elements: !3871)
!3870 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878, !3882, !3886, !3887, !3888, !3889, !3893, !3897, !3898}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3869, file: !3870, line: 55, baseType: !48, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3869, file: !3870, line: 56, baseType: !463, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3869, file: !3870, line: 58, baseType: !155, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3869, file: !3870, line: 59, baseType: !155, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3869, file: !3870, line: 60, baseType: !53, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3869, file: !3870, line: 62, baseType: !3338, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3869, file: !3870, line: 63, baseType: !3879, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!101, !39, !3345}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3869, file: !3870, line: 65, baseType: !3883, size: 64, offset: 448)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !3868}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3869, file: !3870, line: 66, baseType: !3347, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3869, file: !3870, line: 68, baseType: !3357, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3869, file: !3870, line: 70, baseType: !3158, size: 64, offset: 640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3869, file: !3870, line: 71, baseType: !3890, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!2069, !39}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3869, file: !3870, line: 73, baseType: !3894, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !39, !3196, !3197}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3869, file: !3870, line: 75, baseType: !3351, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3869, file: !3870, line: 77, baseType: !3475, size: 64, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !40, file: !41, line: 541, baseType: !155, size: 64, offset: 5248)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !40, file: !41, line: 543, baseType: !3347, size: 64, offset: 5312)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !40, file: !41, line: 544, baseType: !3902, size: 64, offset: 5376)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !41, line: 45, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !40, file: !41, line: 545, baseType: !3905, size: 64, offset: 5440)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !41, line: 47, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !40, file: !41, line: 547, baseType: !320, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !40, file: !41, line: 548, baseType: !320, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !40, file: !41, line: 549, baseType: !320, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !40, file: !41, line: 550, baseType: !320, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !13, file: !14, line: 83, baseType: !3912, size: 192, offset: 256)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 76, size: 192, elements: !3913)
!3913 = !{!3914, !3915, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3912, file: !14, line: 78, baseType: !17, size: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !3912, file: !14, line: 80, baseType: !175, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3912, file: !14, line: 82, baseType: !60, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !13, file: !14, line: 86, baseType: !3918, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !14, line: 12, flags: DIFlagFwdDecl)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !13, file: !14, line: 98, baseType: !175, size: 64, offset: 512)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !13, file: !14, line: 101, baseType: !3922, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !14, line: 13, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !13, file: !14, line: 104, baseType: !3922, size: 64, offset: 640)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !13, file: !14, line: 111, baseType: !320, size: 8, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !13, file: !14, line: 119, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !3929, line: 11, flags: DIFlagFwdDecl)
!3929 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !13, file: !14, line: 129, baseType: !245, size: 32, offset: 832)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !13, file: !14, line: 137, baseType: !320, size: 8, offset: 864)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !13, file: !14, line: 140, baseType: !259, size: 64, offset: 896)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !13, file: !14, line: 143, baseType: !101, size: 64, offset: 960)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !13, file: !14, line: 153, baseType: !557, size: 192, offset: 1024)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !13, file: !14, line: 160, baseType: !557, size: 192, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !13, file: !14, line: 168, baseType: !34, size: 32, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !13, file: !14, line: 171, baseType: !557, size: 192, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !13, file: !14, line: 177, baseType: !17, size: 128, offset: 1664)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !13, file: !14, line: 185, baseType: !17, size: 128, offset: 1792)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !13, file: !14, line: 192, baseType: !557, size: 192, offset: 1920)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !13, file: !14, line: 199, baseType: !17, size: 128, offset: 2112)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !13, file: !14, line: 208, baseType: !320, size: 8, offset: 2240)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !13, file: !14, line: 213, baseType: !6, size: 32, offset: 2272)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !13, file: !14, line: 228, baseType: !320, size: 8, offset: 2304)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !13, file: !14, line: 238, baseType: !3946, size: 64, offset: 2368)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !14, line: 16, flags: DIFlagFwdDecl)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !13, file: !14, line: 245, baseType: !60, offset: 2432)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !13, file: !14, line: 250, baseType: !60, offset: 2432)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !13, file: !14, line: 273, baseType: !245, size: 32, offset: 2432)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !13, file: !14, line: 276, baseType: !17, size: 128, offset: 2496)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !13, file: !14, line: 284, baseType: !60, offset: 2624)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !13, file: !14, line: 287, baseType: !3954, size: 64, offset: 2624)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !14, line: 287, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !13, file: !14, line: 290, baseType: !3957, size: 64, offset: 2688)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3959, line: 79, flags: DIFlagFwdDecl)
!3959 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/lizy2001/genbc/linux")
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !13, file: !14, line: 297, baseType: !215, size: 32, offset: 2752)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !13, file: !14, line: 300, baseType: !3962, size: 8384, offset: 2816)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !3963, line: 358, size: 8384, elements: !3964)
!3963 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!3964 = !{!3965, !3966, !3985, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4007, !4008, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !5065, !5067, !5068, !5069, !5070, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3962, file: !3963, line: 369, baseType: !557, size: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !3962, file: !3963, line: 379, baseType: !3967, size: 384, offset: 192)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !3968, line: 76, size: 384, elements: !3969)
!3968 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!3969 = !{!3970, !3984}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3967, file: !3968, line: 80, baseType: !3971, size: 256)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !558, line: 71, size: 256, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3971, file: !558, line: 72, baseType: !557, size: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3971, file: !558, line: 73, baseType: !3975, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !3977, line: 31, size: 192, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !3981, !3982, !3983}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3976, file: !3977, line: 32, baseType: !1096, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !3976, file: !3977, line: 33, baseType: !151, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !3976, file: !3977, line: 34, baseType: !215, size: 32, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !3976, file: !3977, line: 35, baseType: !143, size: 16, offset: 160)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !3976, file: !3977, line: 36, baseType: !143, size: 16, offset: 176)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3967, file: !3968, line: 86, baseType: !17, size: 128, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !3962, file: !3963, line: 389, baseType: !3986, size: 64, offset: 576)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !3968, line: 43, size: 448, elements: !3988)
!3988 = !{!3989, !3990, !3992, !3993, !3994}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !3987, file: !3968, line: 45, baseType: !3976, size: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !3987, file: !3968, line: 52, baseType: !3991, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !3987, file: !3968, line: 57, baseType: !17, size: 128, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !3987, file: !3968, line: 62, baseType: !320, size: 8, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !3987, file: !3968, line: 65, baseType: !320, size: 8, offset: 392)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !3962, file: !3963, line: 397, baseType: !557, size: 192, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !3962, file: !3963, line: 405, baseType: !1387, size: 192, offset: 832)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !3962, file: !3963, line: 413, baseType: !1387, size: 192, offset: 1024)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !3962, file: !3963, line: 416, baseType: !557, size: 192, offset: 1216)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !3962, file: !3963, line: 418, baseType: !6, size: 32, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !3962, file: !3963, line: 420, baseType: !17, size: 128, offset: 1472)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !3962, file: !3963, line: 426, baseType: !60, offset: 1600)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !3962, file: !3963, line: 431, baseType: !6, size: 32, offset: 1600)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !3962, file: !3963, line: 435, baseType: !4004, size: 128, offset: 1664)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1388, line: 244, size: 128, elements: !4005)
!4005 = !{!4006}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4004, file: !1388, line: 245, baseType: !622, size: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !3962, file: !3963, line: 443, baseType: !17, size: 128, offset: 1792)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !3962, file: !3963, line: 453, baseType: !4009, size: 64, offset: 1920)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !189, line: 54, size: 64, elements: !4010)
!4010 = !{!4011}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4009, file: !189, line: 55, baseType: !192, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !3962, file: !3963, line: 457, baseType: !1899, size: 256, offset: 1984)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !3962, file: !3963, line: 465, baseType: !6, size: 32, offset: 2240)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !3962, file: !3963, line: 473, baseType: !17, size: 128, offset: 2304)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !3962, file: !3963, line: 482, baseType: !6, size: 32, offset: 2432)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !3962, file: !3963, line: 489, baseType: !17, size: 128, offset: 2496)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !3962, file: !3963, line: 497, baseType: !6, size: 32, offset: 2624)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !3962, file: !3963, line: 504, baseType: !17, size: 128, offset: 2688)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !3962, file: !3963, line: 513, baseType: !17, size: 128, offset: 2816)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !3962, file: !3963, line: 522, baseType: !17, size: 128, offset: 2944)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !3962, file: !3963, line: 524, baseType: !6, size: 32, offset: 3072)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !3962, file: !3963, line: 524, baseType: !6, size: 32, offset: 3104)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !3962, file: !3963, line: 525, baseType: !6, size: 32, offset: 3136)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !3962, file: !3963, line: 525, baseType: !6, size: 32, offset: 3168)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3962, file: !3963, line: 526, baseType: !4026, size: 64, offset: 3200)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4028)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !3963, line: 47, size: 576, elements: !4029)
!4029 = !{!4030, !4139, !4143, !4147, !4241, !5052, !5056, !5060, !5064}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4028, file: !3963, line: 77, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!4034, !12, !4095, !4123}
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4036, line: 117, size: 1600, elements: !4037)
!4036 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!4037 = !{!4038, !4039, !4040, !4077, !4078, !4082, !4109, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4035, file: !4036, line: 121, baseType: !12, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4035, file: !4036, line: 126, baseType: !17, size: 128, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4035, file: !4036, line: 131, baseType: !4041, size: 256, offset: 192)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4042, line: 55, size: 256, elements: !4043)
!4042 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!4043 = !{!4044, !4045, !4046, !4071, !4072}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4041, file: !4042, line: 56, baseType: !389, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4041, file: !4042, line: 57, baseType: !389, size: 32, offset: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4041, file: !4042, line: 58, baseType: !4047, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4042, line: 67, size: 3136, elements: !4049)
!4049 = !{!4050, !4051, !4069}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4048, file: !4042, line: 73, baseType: !6, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4048, file: !4042, line: 82, baseType: !4052, size: 1536, offset: 64)
!4052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4053, size: 1536, elements: !4067)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4055, line: 73, size: 960, elements: !4056)
!4055 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/lizy2001/genbc/linux")
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4065, !4066}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4054, file: !4055, line: 77, baseType: !17, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4054, file: !4055, line: 82, baseType: !4041, size: 256, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4054, file: !4055, line: 159, baseType: !389, size: 32, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4054, file: !4055, line: 164, baseType: !2655, size: 256, offset: 416)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4054, file: !4055, line: 169, baseType: !389, size: 32, offset: 672)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4054, file: !4055, line: 177, baseType: !4063, size: 64, offset: 704)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 107, baseType: !251)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4054, file: !4055, line: 182, baseType: !12, size: 64, offset: 768)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4054, file: !4055, line: 190, baseType: !17, size: 128, offset: 832)
!4067 = !{!4068}
!4068 = !DISubrange(count: 24)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4048, file: !4042, line: 102, baseType: !4070, size: 1536, offset: 1600)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4064, size: 1536, elements: !4067)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4041, file: !4042, line: 59, baseType: !25, size: 32, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4041, file: !4042, line: 60, baseType: !4073, size: 64, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4035, file: !4036, line: 136, baseType: !1652, size: 128, offset: 448)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4035, file: !4036, line: 141, baseType: !4079, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4081)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4036, line: 35, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4035, file: !4036, line: 145, baseType: !4083, size: 64, offset: 640)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4036, line: 42, size: 192, elements: !4086)
!4086 = !{!4087, !4091, !4097}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4085, file: !4036, line: 53, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !4034}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4085, file: !4036, line: 73, baseType: !4092, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!6, !4034, !4095, !2638}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !3929, line: 9, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4085, file: !4036, line: 97, baseType: !4098, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!6, !4034, !4095, !215, !215, !4101, !215}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4103, line: 97, size: 64, elements: !4104)
!4103 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4104 = !{!4105, !4106, !4107, !4108}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4102, file: !4103, line: 98, baseType: !143, size: 16)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4102, file: !4103, line: 99, baseType: !143, size: 16, offset: 16)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4102, file: !4103, line: 100, baseType: !143, size: 16, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4102, file: !4103, line: 101, baseType: !143, size: 16, offset: 48)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4035, file: !4036, line: 150, baseType: !4110, size: 128, offset: 704)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1041)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4035, file: !4036, line: 168, baseType: !4110, size: 128, offset: 832)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4035, file: !4036, line: 175, baseType: !4064, size: 64, offset: 960)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4035, file: !4036, line: 180, baseType: !215, size: 32, offset: 1024)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4035, file: !4036, line: 185, baseType: !215, size: 32, offset: 1056)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4035, file: !4036, line: 190, baseType: !6, size: 32, offset: 1088)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4035, file: !4036, line: 196, baseType: !6, size: 32, offset: 1120)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4035, file: !4036, line: 202, baseType: !6, size: 32, offset: 1152)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4035, file: !4036, line: 206, baseType: !17, size: 128, offset: 1216)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4035, file: !4036, line: 213, baseType: !4120, size: 256, offset: 1344)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4121, size: 256, elements: !1041)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4036, line: 37, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4126, line: 494, size: 832, elements: !4127)
!4126 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4135, !4136, !4137}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4125, file: !4126, line: 495, baseType: !247, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4125, file: !4126, line: 496, baseType: !247, size: 32, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4125, file: !4126, line: 497, baseType: !247, size: 32, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4125, file: !4126, line: 498, baseType: !247, size: 32, offset: 96)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4125, file: !4126, line: 499, baseType: !247, size: 32, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4125, file: !4126, line: 525, baseType: !4134, size: 128, offset: 160)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !1041)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4125, file: !4126, line: 526, baseType: !4134, size: 128, offset: 288)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4125, file: !4126, line: 527, baseType: !4134, size: 128, offset: 416)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4125, file: !4126, line: 528, baseType: !4138, size: 256, offset: 576)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 256, elements: !1041)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4028, file: !3963, line: 92, baseType: !4140, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!4079, !4123}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4028, file: !3963, line: 109, baseType: !4144, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !12}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4028, file: !3963, line: 119, baseType: !4148, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!4151, !12, !4194}
!4151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !4152, line: 91, baseType: !6, size: 32, elements: !4153)
!4152 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193}
!4154 = !DIEnumerator(name: "MODE_OK", value: 0)
!4155 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!4156 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!4157 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!4158 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!4159 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!4160 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!4161 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!4162 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!4163 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!4164 = !DIEnumerator(name: "MODE_MEM", value: 10)
!4165 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!4166 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!4167 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!4168 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!4169 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!4170 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!4171 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!4172 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!4173 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!4174 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!4175 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!4176 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!4177 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!4178 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!4179 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!4180 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!4181 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!4182 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!4183 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!4184 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!4185 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!4186 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!4187 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!4188 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!4189 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!4190 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!4191 = !DIEnumerator(name: "MODE_STALE", value: -3)
!4192 = !DIEnumerator(name: "MODE_BAD", value: -2)
!4193 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !4152, line: 224, size: 960, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4196, file: !4152, line: 230, baseType: !6, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4196, file: !4152, line: 231, baseType: !732, size: 16, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4196, file: !4152, line: 232, baseType: !732, size: 16, offset: 48)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4196, file: !4152, line: 233, baseType: !732, size: 16, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4196, file: !4152, line: 234, baseType: !732, size: 16, offset: 80)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4196, file: !4152, line: 235, baseType: !732, size: 16, offset: 96)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4196, file: !4152, line: 236, baseType: !732, size: 16, offset: 112)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4196, file: !4152, line: 237, baseType: !732, size: 16, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4196, file: !4152, line: 238, baseType: !732, size: 16, offset: 144)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4196, file: !4152, line: 239, baseType: !732, size: 16, offset: 160)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4196, file: !4152, line: 240, baseType: !732, size: 16, offset: 176)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4196, file: !4152, line: 275, baseType: !245, size: 32, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4196, file: !4152, line: 292, baseType: !6, size: 32, offset: 224)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4196, file: !4152, line: 293, baseType: !732, size: 16, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4196, file: !4152, line: 294, baseType: !732, size: 16, offset: 272)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4196, file: !4152, line: 295, baseType: !732, size: 16, offset: 288)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4196, file: !4152, line: 296, baseType: !732, size: 16, offset: 304)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4196, file: !4152, line: 297, baseType: !732, size: 16, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4196, file: !4152, line: 298, baseType: !732, size: 16, offset: 336)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4196, file: !4152, line: 299, baseType: !732, size: 16, offset: 352)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4196, file: !4152, line: 300, baseType: !732, size: 16, offset: 368)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4196, file: !4152, line: 301, baseType: !732, size: 16, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4196, file: !4152, line: 302, baseType: !732, size: 16, offset: 400)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4196, file: !4152, line: 303, baseType: !732, size: 16, offset: 416)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4196, file: !4152, line: 304, baseType: !732, size: 16, offset: 432)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4196, file: !4152, line: 305, baseType: !732, size: 16, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4196, file: !4152, line: 313, baseType: !732, size: 16, offset: 464)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4196, file: !4152, line: 321, baseType: !732, size: 16, offset: 480)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4196, file: !4152, line: 350, baseType: !1232, size: 8, offset: 496)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4196, file: !4152, line: 361, baseType: !320, size: 8, offset: 504)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4196, file: !4152, line: 368, baseType: !17, size: 128, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4196, file: !4152, line: 375, baseType: !2655, size: 256, offset: 640)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4196, file: !4152, line: 383, baseType: !4151, size: 32, offset: 896)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4196, file: !4152, line: 390, baseType: !4232, size: 32, offset: 928)
!4232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !4233, line: 96, baseType: !215, size: 32, elements: !4234)
!4233 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240}
!4235 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!4236 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!4237 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!4238 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!4239 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!4240 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4028, file: !3963, line: 196, baseType: !4242, size: 64, offset: 256)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!6, !12, !4245}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4247, line: 325, size: 960, elements: !4248)
!4247 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/lizy2001/genbc/linux")
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4995, !5007, !5008, !5017, !5018, !5049, !5050, !5051}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4246, file: !4247, line: 326, baseType: !25, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4246, file: !4247, line: 328, baseType: !12, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4246, file: !4247, line: 338, baseType: !320, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4246, file: !4247, line: 339, baseType: !320, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4246, file: !4247, line: 340, baseType: !320, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4246, file: !4247, line: 349, baseType: !320, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4246, file: !4247, line: 350, baseType: !4256, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !4247, line: 158, size: 256, elements: !4258)
!4258 = !{!4259, !4260, !4993, !4994}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4257, file: !4247, line: 159, baseType: !7, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4257, file: !4247, line: 160, baseType: !4261, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !9, line: 47, size: 1216, elements: !4263)
!4263 = !{!4264, !4265, !4949, !4950, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4974, !4980, !4981, !4989, !4990, !4991, !4992}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4262, file: !9, line: 49, baseType: !7, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4262, file: !9, line: 57, baseType: !4266, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4268, line: 939, size: 7680, elements: !4269)
!4268 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/lizy2001/genbc/linux")
!4269 = !{!4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4909, !4910, !4912, !4916, !4917, !4918, !4919, !4920, !4942, !4943, !4944, !4945, !4946}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4267, file: !4268, line: 941, baseType: !12, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4267, file: !4268, line: 943, baseType: !3645, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4267, file: !4268, line: 951, baseType: !17, size: 128, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4267, file: !4268, line: 954, baseType: !101, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4267, file: !4268, line: 966, baseType: !3967, size: 384, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4267, file: !4268, line: 969, baseType: !4041, size: 256, offset: 704)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4267, file: !4268, line: 978, baseType: !7, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4267, file: !4268, line: 987, baseType: !7, size: 64, offset: 1024)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4267, file: !4268, line: 993, baseType: !215, size: 32, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4267, file: !4268, line: 1002, baseType: !6, size: 32, offset: 1120)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4267, file: !4268, line: 1010, baseType: !6, size: 32, offset: 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4267, file: !4268, line: 1020, baseType: !320, size: 8, offset: 1184)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4267, file: !4268, line: 1030, baseType: !4196, size: 960, offset: 1216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4267, file: !4268, line: 1046, baseType: !4196, size: 960, offset: 2176)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4267, file: !4268, line: 1055, baseType: !6, size: 32, offset: 3136)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4267, file: !4268, line: 1063, baseType: !6, size: 32, offset: 3168)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4267, file: !4268, line: 1066, baseType: !4287, size: 64, offset: 3200)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4289)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4268, line: 409, size: 1536, elements: !4290)
!4290 = !{!4291, !4295, !4299, !4303, !4307, !4312, !4313, !4815, !4819, !4823, !4827, !4860, !4864, !4868, !4874, !4878, !4879, !4883, !4888, !4894, !4898, !4902, !4903, !4904}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4289, file: !4268, line: 420, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4266}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !4289, file: !4268, line: 443, baseType: !4296, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!6, !4266, !4095, !389, !389, !389}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !4289, file: !4268, line: 465, baseType: !4300, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!6, !4266, !4095, !389, !389, !389, !1504, !1504}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !4289, file: !4268, line: 485, baseType: !4304, size: 64, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!6, !4266, !6, !6}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !4289, file: !4268, line: 500, baseType: !4308, size: 64, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!6, !4266, !4311, !4311, !4311, !389, !3986}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4289, file: !4268, line: 511, baseType: !4292, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4289, file: !4268, line: 527, baseType: !4314, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!6, !4317, !3986}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4268, line: 1190, size: 384, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4324, !4325, !4326, !4814}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4318, file: !4268, line: 1191, baseType: !4034, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4318, file: !4268, line: 1192, baseType: !4266, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4318, file: !4268, line: 1193, baseType: !4323, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4318, file: !4268, line: 1195, baseType: !389, size: 32, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4318, file: !4268, line: 1196, baseType: !389, size: 32, offset: 224)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4318, file: !4268, line: 1198, baseType: !4327, size: 64, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !4330, line: 1170, size: 9280, elements: !4331)
!4330 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!4331 = !{!4332, !4333, !4334, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4364, !4365, !4371, !4372, !4423, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4601, !4602, !4606, !4638, !4639, !4640, !4641, !4642, !4643, !4645, !4647, !4649, !4650, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4790, !4791, !4792, !4793, !4794, !4795, !4797, !4798, !4799}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4329, file: !4330, line: 1172, baseType: !12, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4329, file: !4330, line: 1174, baseType: !39, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4329, file: !4330, line: 1176, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !41, line: 99, size: 256, elements: !4337)
!4337 = !{!4338, !4339, !4343}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4336, file: !41, line: 100, baseType: !138, size: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4336, file: !41, line: 101, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!132, !39, !4335, !101}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4336, file: !41, line: 103, baseType: !4344, size: 64, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!132, !39, !4335, !48, !148}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4329, file: !4330, line: 1186, baseType: !17, size: 128, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4329, file: !4330, line: 1189, baseType: !4041, size: 256, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4329, file: !4330, line: 1192, baseType: !101, size: 64, offset: 576)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4329, file: !4330, line: 1199, baseType: !557, size: 192, offset: 640)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4329, file: !4330, line: 1207, baseType: !215, size: 32, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !4329, file: !4330, line: 1213, baseType: !6, size: 32, offset: 864)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !4329, file: !4330, line: 1215, baseType: !6, size: 32, offset: 896)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !4329, file: !4330, line: 1221, baseType: !320, size: 8, offset: 928)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !4329, file: !4330, line: 1227, baseType: !320, size: 8, offset: 936)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4329, file: !4330, line: 1233, baseType: !320, size: 8, offset: 944)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !4329, file: !4330, line: 1241, baseType: !320, size: 8, offset: 952)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !4329, file: !4330, line: 1249, baseType: !4359, size: 32, offset: 960)
!4359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !4330, line: 94, baseType: !215, size: 32, elements: !4360)
!4360 = !{!4361, !4362, !4363}
!4361 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0, isUnsigned: true)
!4362 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1, isUnsigned: true)
!4363 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2, isUnsigned: true)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !4329, file: !4330, line: 1256, baseType: !17, size: 128, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4329, file: !4330, line: 1263, baseType: !4366, size: 32, offset: 1152)
!4366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !4330, line: 59, baseType: !215, size: 32, elements: !4367)
!4367 = !{!4368, !4369, !4370}
!4368 = !DIEnumerator(name: "connector_status_connected", value: 1, isUnsigned: true)
!4369 = !DIEnumerator(name: "connector_status_disconnected", value: 2, isUnsigned: true)
!4370 = !DIEnumerator(name: "connector_status_unknown", value: 3, isUnsigned: true)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !4329, file: !4330, line: 1271, baseType: !17, size: 128, offset: 1216)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !4329, file: !4330, line: 1282, baseType: !4373, size: 1216, offset: 1344)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !4330, line: 428, size: 1216, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4378, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4417, !4418}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4373, file: !4330, line: 432, baseType: !215, size: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4373, file: !4330, line: 437, baseType: !215, size: 32, offset: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !4373, file: !4330, line: 442, baseType: !215, size: 32, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !4373, file: !4330, line: 447, baseType: !4379, size: 32, offset: 96)
!4379 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !4330, line: 133, baseType: !215, size: 32, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386}
!4381 = !DIEnumerator(name: "SubPixelUnknown", value: 0, isUnsigned: true)
!4382 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1, isUnsigned: true)
!4383 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2, isUnsigned: true)
!4384 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3, isUnsigned: true)
!4385 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4, isUnsigned: true)
!4386 = !DIEnumerator(name: "SubPixelNone", value: 5, isUnsigned: true)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !4373, file: !4330, line: 461, baseType: !6, size: 32, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !4373, file: !4330, line: 469, baseType: !245, size: 32, offset: 160)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !4373, file: !4330, line: 476, baseType: !3796, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !4373, file: !4330, line: 480, baseType: !215, size: 32, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4373, file: !4330, line: 487, baseType: !245, size: 32, offset: 288)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !4373, file: !4330, line: 493, baseType: !6, size: 32, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !4373, file: !4330, line: 498, baseType: !320, size: 8, offset: 352)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !4373, file: !4330, line: 506, baseType: !320, size: 8, offset: 360)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !4373, file: !4330, line: 511, baseType: !320, size: 8, offset: 368)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !4373, file: !4330, line: 517, baseType: !320, size: 8, offset: 376)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_dc_modes", scope: !4373, file: !4330, line: 523, baseType: !1232, size: 8, offset: 384)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !4373, file: !4330, line: 528, baseType: !1232, size: 8, offset: 392)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !4373, file: !4330, line: 533, baseType: !4400, size: 704, offset: 448)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !4330, line: 185, size: 704, elements: !4401)
!4401 = !{!4402, !4412, !4414, !4415, !4416}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !4400, file: !4330, line: 187, baseType: !4403, size: 32)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !4330, line: 163, size: 32, elements: !4404)
!4404 = !{!4405, !4406, !4407}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4403, file: !4330, line: 167, baseType: !320, size: 8)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !4403, file: !4330, line: 171, baseType: !320, size: 8, offset: 8)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !4403, file: !4330, line: 175, baseType: !4408, size: 16, offset: 16)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !4330, line: 146, size: 16, elements: !4409)
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4408, file: !4330, line: 150, baseType: !320, size: 8)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !4408, file: !4330, line: 154, baseType: !320, size: 8, offset: 8)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !4400, file: !4330, line: 195, baseType: !4413, size: 256, offset: 64)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !1041)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !4400, file: !4330, line: 203, baseType: !4413, size: 256, offset: 320)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_map", scope: !4400, file: !4330, line: 206, baseType: !251, size: 64, offset: 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !4400, file: !4330, line: 209, baseType: !1232, size: 8, offset: 640)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !4373, file: !4330, line: 538, baseType: !320, size: 8, offset: 1152)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !4373, file: !4330, line: 543, baseType: !4419, size: 16, offset: 1160)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !4330, line: 269, size: 16, elements: !4420)
!4420 = !{!4421, !4422}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !4419, file: !4330, line: 270, baseType: !1232, size: 8)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !4419, file: !4330, line: 271, baseType: !1232, size: 8, offset: 8)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4329, file: !4330, line: 1285, baseType: !4424, size: 64, offset: 2560)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !4330, line: 749, size: 896, elements: !4427)
!4427 = !{!4428, !4432, !4436, !4440, !4441, !4445, !4449, !4453, !4454, !4455, !4542, !4546, !4550, !4556}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4426, file: !4330, line: 766, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!6, !4328, !6}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4426, file: !4330, line: 778, baseType: !4433, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4328}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4426, file: !4330, line: 806, baseType: !4437, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!4366, !4328, !320}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4426, file: !4330, line: 823, baseType: !4433, size: 64, offset: 192)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !4426, file: !4330, line: 848, baseType: !4442, size: 64, offset: 256)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!6, !4328, !389, !389}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4426, file: !4330, line: 864, baseType: !4446, size: 64, offset: 320)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!6, !4328, !4053, !4064}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4426, file: !4330, line: 883, baseType: !4450, size: 64, offset: 384)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!6, !4328}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4426, file: !4330, line: 896, baseType: !4433, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4426, file: !4330, line: 906, baseType: !4433, size: 64, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4426, file: !4330, line: 939, baseType: !4456, size: 64, offset: 576)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!4459, !4328}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !4330, line: 605, size: 1216, elements: !4461)
!4461 = !{!4462, !4463, !4464, !4467, !4472, !4473, !4487, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4530, !4531, !4532}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4460, file: !4330, line: 607, baseType: !4328, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4460, file: !4330, line: 615, baseType: !4266, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !4460, file: !4330, line: 633, baseType: !4465, size: 64, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !4330, line: 39, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !4460, file: !4330, line: 639, baseType: !4468, size: 32, offset: 192)
!4468 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !4330, line: 223, baseType: !215, size: 32, elements: !4469)
!4469 = !{!4470, !4471}
!4470 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0, isUnsigned: true)
!4471 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1, isUnsigned: true)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4460, file: !4330, line: 642, baseType: !4245, size: 64, offset: 256)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4460, file: !4330, line: 649, baseType: !4474, size: 64, offset: 320)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !4247, line: 70, size: 960, elements: !4476)
!4476 = !{!4477, !4478, !4479, !4480, !4481, !4482, !4483, !4486}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4475, file: !4247, line: 76, baseType: !4266, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4475, file: !4247, line: 85, baseType: !25, size: 32, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !4475, file: !4247, line: 99, baseType: !1422, size: 192, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !4475, file: !4247, line: 117, baseType: !1422, size: 192, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !4475, file: !4247, line: 131, baseType: !1422, size: 192, offset: 512)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !4475, file: !4247, line: 139, baseType: !17, size: 128, offset: 704)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4475, file: !4247, line: 146, baseType: !4484, size: 64, offset: 832)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4268, line: 71, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !4475, file: !4247, line: 155, baseType: !320, size: 8, offset: 896)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !4460, file: !4330, line: 652, baseType: !4488, size: 384, offset: 384)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !4330, line: 590, size: 384, elements: !4489)
!4489 = !{!4490, !4506, !4513, !4514, !4515, !4516, !4517, !4518, !4519}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !4488, file: !4330, line: 591, baseType: !4491, size: 32)
!4491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !4126, line: 334, baseType: !215, size: 32, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505}
!4493 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0, isUnsigned: true)
!4494 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0, isUnsigned: true)
!4495 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1, isUnsigned: true)
!4496 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3, isUnsigned: true)
!4497 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4, isUnsigned: true)
!4498 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5, isUnsigned: true)
!4499 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6, isUnsigned: true)
!4500 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8, isUnsigned: true)
!4501 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9, isUnsigned: true)
!4502 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10, isUnsigned: true)
!4503 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11, isUnsigned: true)
!4504 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15, isUnsigned: true)
!4505 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18, isUnsigned: true)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !4488, file: !4330, line: 592, baseType: !4507, size: 128, offset: 32)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !4330, line: 556, size: 128, elements: !4508)
!4508 = !{!4509, !4510, !4511, !4512}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !4507, file: !4330, line: 560, baseType: !215, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !4507, file: !4330, line: 565, baseType: !215, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !4507, file: !4330, line: 570, baseType: !215, size: 32, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4507, file: !4330, line: 575, baseType: !215, size: 32, offset: 96)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4488, file: !4330, line: 593, baseType: !215, size: 32, offset: 160)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4488, file: !4330, line: 594, baseType: !215, size: 32, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !4488, file: !4330, line: 595, baseType: !215, size: 32, offset: 224)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !4488, file: !4330, line: 596, baseType: !215, size: 32, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !4488, file: !4330, line: 597, baseType: !215, size: 32, offset: 288)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !4488, file: !4330, line: 598, baseType: !215, size: 32, offset: 320)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !4488, file: !4330, line: 599, baseType: !215, size: 32, offset: 352)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !4460, file: !4330, line: 666, baseType: !320, size: 8, offset: 768)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4460, file: !4330, line: 675, baseType: !4232, size: 32, offset: 800)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !4460, file: !4330, line: 683, baseType: !215, size: 32, offset: 832)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !4460, file: !4330, line: 689, baseType: !215, size: 32, offset: 864)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !4460, file: !4330, line: 695, baseType: !215, size: 32, offset: 896)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !4460, file: !4330, line: 701, baseType: !215, size: 32, offset: 928)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4460, file: !4330, line: 708, baseType: !245, size: 32, offset: 960)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !4460, file: !4330, line: 721, baseType: !4528, size: 64, offset: 1024)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !4330, line: 721, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !4460, file: !4330, line: 727, baseType: !1232, size: 8, offset: 1088)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !4460, file: !4330, line: 733, baseType: !1232, size: 8, offset: 1096)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !4460, file: !4330, line: 739, baseType: !4533, size: 64, offset: 1152)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4055, line: 209, size: 704, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4541}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4534, file: !4055, line: 210, baseType: !4041, size: 256)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4534, file: !4055, line: 211, baseType: !12, size: 64, offset: 256)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !4534, file: !4055, line: 212, baseType: !17, size: 128, offset: 320)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !4534, file: !4055, line: 213, baseType: !17, size: 128, offset: 448)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4534, file: !4055, line: 214, baseType: !148, size: 64, offset: 576)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4534, file: !4055, line: 215, baseType: !175, size: 64, offset: 640)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4426, file: !4330, line: 949, baseType: !4543, size: 64, offset: 640)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{null, !4328, !4459}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4426, file: !4330, line: 994, baseType: !4547, size: 64, offset: 704)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!6, !4328, !4459, !4053, !4064}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4426, file: !4330, line: 1017, baseType: !4551, size: 64, offset: 768)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!6, !4328, !4554, !4053, !4063}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4426, file: !4330, line: 1031, baseType: !4557, size: 64, offset: 832)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4560, !4554}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4562, line: 75, size: 256, elements: !4563)
!4562 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!4563 = !{!4564, !4586, !4590, !4591}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4561, file: !4562, line: 77, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4560, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4570, line: 90, size: 128, elements: !4571)
!4570 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!4571 = !{!4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4569, file: !4570, line: 91, baseType: !48, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4569, file: !4570, line: 92, baseType: !4574, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4576, line: 99, baseType: !4577)
!4576 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4576, line: 40, baseType: !4578)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4579)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4580, size: 192, elements: !1251)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !4581)
!4581 = !{!4582, !4583, !4584, !4585}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4580, file: !3, baseType: !215, size: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4580, file: !3, baseType: !215, size: 32, offset: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4580, file: !3, baseType: !175, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4580, file: !3, baseType: !175, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4561, file: !4562, line: 78, baseType: !4587, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4560, !48}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4561, file: !4562, line: 79, baseType: !175, size: 64, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4561, file: !4562, line: 80, baseType: !48, size: 64, offset: 192)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !4329, file: !4330, line: 1292, baseType: !4533, size: 64, offset: 2624)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4329, file: !4330, line: 1295, baseType: !4048, size: 3136, offset: 2688)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4329, file: !4330, line: 1301, baseType: !4053, size: 64, offset: 5824)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !4329, file: !4330, line: 1312, baseType: !4053, size: 64, offset: 5888)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !4329, file: !4330, line: 1318, baseType: !4053, size: 64, offset: 5952)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !4329, file: !4330, line: 1326, baseType: !4533, size: 64, offset: 6016)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !4329, file: !4330, line: 1332, baseType: !4053, size: 64, offset: 6080)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !4329, file: !4330, line: 1359, baseType: !4600, size: 8, offset: 6144)
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 102, baseType: !1232)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4329, file: !4330, line: 1367, baseType: !6, size: 32, offset: 6176)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4329, file: !4330, line: 1370, baseType: !4603, size: 64, offset: 6208)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4605)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !4330, line: 35, flags: DIFlagFwdDecl)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !4329, file: !4330, line: 1373, baseType: !4607, size: 672, offset: 6272)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !4330, line: 1043, size: 672, elements: !4608)
!4608 = !{!4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4628, !4629, !4637}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4607, file: !4330, line: 1049, baseType: !2655, size: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !4607, file: !4330, line: 1056, baseType: !320, size: 8, offset: 256)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !4607, file: !4330, line: 1063, baseType: !320, size: 8, offset: 264)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !4607, file: !4330, line: 1070, baseType: !320, size: 8, offset: 272)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4607, file: !4330, line: 1077, baseType: !6, size: 32, offset: 288)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4607, file: !4330, line: 1084, baseType: !6, size: 32, offset: 320)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4607, file: !4330, line: 1091, baseType: !6, size: 32, offset: 352)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4607, file: !4330, line: 1098, baseType: !6, size: 32, offset: 384)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4607, file: !4330, line: 1105, baseType: !320, size: 8, offset: 416)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !4607, file: !4330, line: 1112, baseType: !320, size: 8, offset: 424)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !4607, file: !4330, line: 1120, baseType: !320, size: 8, offset: 432)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !4607, file: !4330, line: 1128, baseType: !320, size: 8, offset: 440)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4607, file: !4330, line: 1136, baseType: !4622, size: 32, offset: 448)
!4622 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !4330, line: 46, baseType: !215, size: 32, elements: !4623)
!4623 = !{!4624, !4625, !4626, !4627}
!4624 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0, isUnsigned: true)
!4625 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1, isUnsigned: true)
!4626 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2, isUnsigned: true)
!4627 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3, isUnsigned: true)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !4607, file: !4330, line: 1146, baseType: !215, size: 32, offset: 480)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !4607, file: !4330, line: 1154, baseType: !4630, size: 32, offset: 512)
!4630 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !4330, line: 249, baseType: !6, size: 32, elements: !4631)
!4631 = !{!4632, !4633, !4634, !4635, !4636}
!4632 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!4633 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!4634 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!4635 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!4636 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !4607, file: !4330, line: 1159, baseType: !4507, size: 128, offset: 544)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4329, file: !4330, line: 1375, baseType: !4622, size: 32, offset: 6944)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "override_edid", scope: !4329, file: !4330, line: 1377, baseType: !320, size: 8, offset: 6976)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !4329, file: !4330, line: 1379, baseType: !251, size: 64, offset: 7040)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !4329, file: !4330, line: 1386, baseType: !245, size: 32, offset: 7104)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !4329, file: !4330, line: 1394, baseType: !4465, size: 64, offset: 7168)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !4329, file: !4330, line: 1398, baseType: !4644, size: 1024, offset: 7232)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4600, size: 1024, elements: !3422)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !4329, file: !4330, line: 1400, baseType: !4646, size: 16, offset: 8256)
!4646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 16, elements: !1489)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !4329, file: !4330, line: 1405, baseType: !4648, size: 64, offset: 8288)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !1489)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !4329, file: !4330, line: 1410, baseType: !4648, size: 64, offset: 8352)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !4329, file: !4330, line: 1421, baseType: !4651, size: 64, offset: 8448)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4653, line: 695, size: 7552, elements: !4654)
!4653 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4654 = !{!4655, !4656, !4657, !4694, !4695, !4709, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4726, !4727, !4728, !4729, !4761, !4772}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4652, file: !4653, line: 696, baseType: !463, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4652, file: !4653, line: 697, baseType: !215, size: 32, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4652, file: !4653, line: 698, baseType: !4658, size: 64, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4660)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4653, line: 519, size: 320, elements: !4661)
!4661 = !{!4662, !4675, !4676, !4689, !4690}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4660, file: !4653, line: 529, baseType: !4663, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!6, !4651, !4666, !6}
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4668, line: 69, size: 128, elements: !4669)
!4668 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4669 = !{!4670, !4671, !4672, !4673}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4667, file: !4668, line: 70, baseType: !733, size: 16)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4667, file: !4668, line: 71, baseType: !733, size: 16, offset: 16)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4667, file: !4668, line: 84, baseType: !733, size: 16, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4667, file: !4668, line: 85, baseType: !4674, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4660, file: !4653, line: 531, baseType: !4663, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4660, file: !4653, line: 533, baseType: !4677, size: 64, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!6, !4651, !732, !143, !50, !1232, !6, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4668, line: 135, size: 272, elements: !4682)
!4682 = !{!4683, !4684, !4685}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4681, file: !4668, line: 136, baseType: !1233, size: 8)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4681, file: !4668, line: 137, baseType: !733, size: 16)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4681, file: !4668, line: 138, baseType: !4686, size: 272)
!4686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1233, size: 272, elements: !4687)
!4687 = !{!4688}
!4688 = !DISubrange(count: 34)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4660, file: !4653, line: 536, baseType: !4677, size: 64, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4660, file: !4653, line: 541, baseType: !4691, size: 64, offset: 256)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!245, !4651}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4652, file: !4653, line: 699, baseType: !175, size: 64, offset: 192)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4652, file: !4653, line: 702, baseType: !4696, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4698)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4653, line: 557, size: 192, elements: !4699)
!4699 = !{!4700, !4704, !4708}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4698, file: !4653, line: 558, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !4651, !215}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4698, file: !4653, line: 559, baseType: !4705, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!6, !4651, !215}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4698, file: !4653, line: 560, baseType: !4701, size: 64, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4652, file: !4653, line: 703, baseType: !4710, size: 192, offset: 320)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4711, line: 30, size: 192, elements: !4712)
!4711 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4712 = !{!4713, !4714, !4715}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4710, file: !4711, line: 31, baseType: !653)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4710, file: !4711, line: 32, baseType: !632, size: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4710, file: !4711, line: 33, baseType: !1096, size: 64, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4652, file: !4653, line: 704, baseType: !4710, size: 192, offset: 512)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4652, file: !4653, line: 706, baseType: !6, size: 32, offset: 704)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4652, file: !4653, line: 707, baseType: !6, size: 32, offset: 736)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4652, file: !4653, line: 708, baseType: !40, size: 5568, offset: 768)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4652, file: !4653, line: 709, baseType: !151, size: 64, offset: 6336)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4652, file: !4653, line: 713, baseType: !6, size: 32, offset: 6400)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4652, file: !4653, line: 714, baseType: !4723, size: 384, offset: 6432)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 384, elements: !4724)
!4724 = !{!4725}
!4725 = !DISubrange(count: 48)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4652, file: !4653, line: 715, baseType: !1422, size: 192, offset: 6848)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4652, file: !4653, line: 717, baseType: !557, size: 192, offset: 7040)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4652, file: !4653, line: 718, baseType: !17, size: 128, offset: 7232)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4652, file: !4653, line: 720, baseType: !4730, size: 64, offset: 7360)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4653, line: 618, size: 832, elements: !4732)
!4732 = !{!4733, !4737, !4738, !4742, !4743, !4744, !4745, !4749, !4750, !4753, !4754, !4757, !4760}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4731, file: !4653, line: 619, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!6, !4651}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4731, file: !4653, line: 621, baseType: !4734, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4731, file: !4653, line: 622, baseType: !4739, size: 64, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !4651, !6}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4731, file: !4653, line: 623, baseType: !4734, size: 64, offset: 192)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4731, file: !4653, line: 624, baseType: !4739, size: 64, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4731, file: !4653, line: 625, baseType: !4734, size: 64, offset: 320)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4731, file: !4653, line: 627, baseType: !4746, size: 64, offset: 384)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !4651}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4731, file: !4653, line: 628, baseType: !4746, size: 64, offset: 448)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4731, file: !4653, line: 631, baseType: !4751, size: 64, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4653, line: 631, flags: DIFlagFwdDecl)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4731, file: !4653, line: 632, baseType: !4751, size: 64, offset: 576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4731, file: !4653, line: 633, baseType: !4755, size: 64, offset: 640)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4653, line: 633, flags: DIFlagFwdDecl)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4731, file: !4653, line: 634, baseType: !4758, size: 64, offset: 704)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4653, line: 634, flags: DIFlagFwdDecl)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4731, file: !4653, line: 635, baseType: !4758, size: 64, offset: 768)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4652, file: !4653, line: 721, baseType: !4762, size: 64, offset: 7424)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4764)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4653, line: 664, size: 192, elements: !4765)
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4771}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4764, file: !4653, line: 665, baseType: !251, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4764, file: !4653, line: 666, baseType: !6, size: 32, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4764, file: !4653, line: 667, baseType: !732, size: 16, offset: 96)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4764, file: !4653, line: 668, baseType: !732, size: 16, offset: 112)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4764, file: !4653, line: 669, baseType: !732, size: 16, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4764, file: !4653, line: 670, baseType: !732, size: 16, offset: 144)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4652, file: !4653, line: 723, baseType: !3630, size: 64, offset: 7488)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !4329, file: !4330, line: 1427, baseType: !6, size: 32, offset: 8512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !4329, file: !4330, line: 1430, baseType: !215, size: 32, offset: 8544)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !4329, file: !4330, line: 1437, baseType: !320, size: 8, offset: 8576)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !4329, file: !4330, line: 1443, baseType: !1232, size: 8, offset: 8584)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !4329, file: !4330, line: 1446, baseType: !211, size: 64, offset: 8640)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4329, file: !4330, line: 1462, baseType: !4459, size: 64, offset: 8704)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !4329, file: !4330, line: 1479, baseType: !4533, size: 64, offset: 8768)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !4329, file: !4330, line: 1482, baseType: !320, size: 8, offset: 8832)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !4329, file: !4330, line: 1484, baseType: !4782, size: 64, offset: 8896)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !4330, line: 1663, size: 256, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4788}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4783, file: !4330, line: 1664, baseType: !25, size: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4783, file: !4330, line: 1665, baseType: !12, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4783, file: !4330, line: 1666, baseType: !6, size: 32, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !4783, file: !4330, line: 1667, baseType: !4789, size: 64, offset: 160)
!4789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 64, elements: !1210)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !4329, file: !4330, line: 1486, baseType: !320, size: 8, offset: 8960)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !4329, file: !4330, line: 1490, baseType: !4600, size: 8, offset: 8968)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !4329, file: !4330, line: 1490, baseType: !4600, size: 8, offset: 8976)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !4329, file: !4330, line: 1493, baseType: !4600, size: 8, offset: 8984)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !4329, file: !4330, line: 1493, baseType: !4600, size: 8, offset: 8992)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !4329, file: !4330, line: 1496, baseType: !4796, size: 16, offset: 9008)
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 103, baseType: !732)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !4329, file: !4330, line: 1496, baseType: !4796, size: 16, offset: 9024)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !4329, file: !4330, line: 1505, baseType: !188, size: 64, offset: 9088)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !4329, file: !4330, line: 1508, baseType: !4800, size: 96, offset: 9152)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !4233, line: 378, size: 96, elements: !4801)
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !4800, file: !4233, line: 382, baseType: !247, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, scope: !4800, file: !4233, line: 386, baseType: !4804, size: 64, offset: 32)
!4804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4800, file: !4233, line: 386, size: 64, elements: !4805)
!4805 = !{!4806}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !4804, file: !4233, line: 387, baseType: !4807, size: 64)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !4233, line: 365, size: 64, elements: !4808)
!4808 = !{!4809, !4810, !4811, !4812, !4813}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !4807, file: !4233, line: 366, baseType: !1233, size: 8)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !4807, file: !4233, line: 367, baseType: !1233, size: 8, offset: 8)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !4807, file: !4233, line: 368, baseType: !733, size: 16, offset: 16)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !4807, file: !4233, line: 369, baseType: !733, size: 16, offset: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !4807, file: !4233, line: 370, baseType: !733, size: 16, offset: 48)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !4318, file: !4268, line: 1199, baseType: !148, size: 64, offset: 320)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !4289, file: !4268, line: 583, baseType: !4816, size: 64, offset: 448)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!6, !4266, !4034, !4484, !389, !3986}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !4289, file: !4268, line: 602, baseType: !4820, size: 64, offset: 512)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!6, !4266, !4034, !4484, !389, !389, !3986}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4289, file: !4268, line: 622, baseType: !4824, size: 64, offset: 576)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!6, !4266, !4053, !4064}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4289, file: !4268, line: 656, baseType: !4828, size: 64, offset: 640)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!4831, !4266}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4268, line: 99, size: 2624, elements: !4833)
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4832, file: !4268, line: 101, baseType: !4266, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4832, file: !4268, line: 108, baseType: !320, size: 8, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4832, file: !4268, line: 123, baseType: !320, size: 8, offset: 72)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !4832, file: !4268, line: 129, baseType: !320, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !4832, file: !4268, line: 141, baseType: !320, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !4832, file: !4268, line: 148, baseType: !320, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !4832, file: !4268, line: 159, baseType: !320, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !4832, file: !4268, line: 165, baseType: !320, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !4832, file: !4268, line: 171, baseType: !320, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !4832, file: !4268, line: 207, baseType: !320, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !4832, file: !4268, line: 213, baseType: !245, size: 32, offset: 96)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !4832, file: !4268, line: 219, baseType: !245, size: 32, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !4832, file: !4268, line: 225, baseType: !245, size: 32, offset: 160)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !4832, file: !4268, line: 240, baseType: !4196, size: 960, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4832, file: !4268, line: 257, baseType: !4196, size: 960, offset: 1152)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !4832, file: !4268, line: 263, baseType: !4533, size: 64, offset: 2112)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !4832, file: !4268, line: 272, baseType: !4533, size: 64, offset: 2176)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !4832, file: !4268, line: 280, baseType: !4533, size: 64, offset: 2240)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !4832, file: !4268, line: 289, baseType: !4533, size: 64, offset: 2304)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !4832, file: !4268, line: 297, baseType: !245, size: 32, offset: 2368)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !4832, file: !4268, line: 305, baseType: !320, size: 8, offset: 2400)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !4832, file: !4268, line: 314, baseType: !320, size: 8, offset: 2408)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !4832, file: !4268, line: 325, baseType: !320, size: 8, offset: 2416)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4832, file: !4268, line: 382, baseType: !4484, size: 64, offset: 2432)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4832, file: !4268, line: 391, baseType: !4474, size: 64, offset: 2496)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4832, file: !4268, line: 394, baseType: !4245, size: 64, offset: 2560)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4289, file: !4268, line: 666, baseType: !4861, size: 64, offset: 704)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !4266, !4831}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4289, file: !4268, line: 711, baseType: !4865, size: 64, offset: 768)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!6, !4266, !4831, !4053, !4064}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4289, file: !4268, line: 733, baseType: !4869, size: 64, offset: 832)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!6, !4266, !4872, !4053, !4063}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4832)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4289, file: !4268, line: 751, baseType: !4875, size: 64, offset: 896)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!6, !4266}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4289, file: !4268, line: 762, baseType: !4292, size: 64, offset: 960)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !4289, file: !4268, line: 791, baseType: !4880, size: 64, offset: 1024)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!6, !4266, !48}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !4289, file: !4268, line: 807, baseType: !4884, size: 64, offset: 1088)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!6, !4266, !48, !4887}
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !4289, file: !4268, line: 829, baseType: !4889, size: 64, offset: 1152)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!4892, !4266, !4887}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4289, file: !4268, line: 841, baseType: !4895, size: 64, offset: 1216)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{null, !4560, !4872}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4289, file: !4268, line: 868, baseType: !4899, size: 64, offset: 1280)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!245, !4266}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4289, file: !4268, line: 881, baseType: !4875, size: 64, offset: 1344)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4289, file: !4268, line: 889, baseType: !4292, size: 64, offset: 1408)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !4289, file: !4268, line: 927, baseType: !4905, size: 64, offset: 1472)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!320, !4266, !539, !4908, !320}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4267, file: !4268, line: 1072, baseType: !389, size: 32, offset: 3264)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4267, file: !4268, line: 1078, baseType: !4911, size: 64, offset: 3328)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4267, file: !4268, line: 1081, baseType: !4913, size: 64, offset: 3392)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4915)
!4915 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4268, line: 76, flags: DIFlagFwdDecl)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4267, file: !4268, line: 1084, baseType: !4048, size: 3136, offset: 3456)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4267, file: !4268, line: 1099, baseType: !4831, size: 64, offset: 6592)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4267, file: !4268, line: 1116, baseType: !17, size: 128, offset: 6656)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4267, file: !4268, line: 1123, baseType: !60, offset: 6784)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4267, file: !4268, line: 1139, baseType: !4921, size: 448, offset: 6784)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !4922, line: 53, size: 448, elements: !4923)
!4922 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/lizy2001/genbc/linux")
!4923 = !{!4924, !4925, !4926, !4927, !4928, !4938, !4939, !4940, !4941}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4921, file: !4922, line: 54, baseType: !60)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4921, file: !4922, line: 55, baseType: !48, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !4921, file: !4922, line: 56, baseType: !320, size: 8, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !4921, file: !4922, line: 56, baseType: !320, size: 8, offset: 72)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4921, file: !4922, line: 57, baseType: !4929, size: 64, offset: 128)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !4922, line: 33, size: 384, elements: !4931)
!4931 = !{!4932, !4933, !4934}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !4930, file: !4922, line: 34, baseType: !320, size: 8)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4930, file: !4922, line: 35, baseType: !389, size: 32, offset: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !4930, file: !4922, line: 36, baseType: !4935, size: 320, offset: 64)
!4935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 320, elements: !4936)
!4936 = !{!4937}
!4937 = !DISubrange(count: 10)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4921, file: !4922, line: 58, baseType: !6, size: 32, offset: 192)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4921, file: !4922, line: 58, baseType: !6, size: 32, offset: 224)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !4921, file: !4922, line: 59, baseType: !148, size: 64, offset: 256)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4921, file: !4922, line: 60, baseType: !1368, size: 128, offset: 320)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4267, file: !4268, line: 1146, baseType: !215, size: 32, offset: 7232)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4267, file: !4268, line: 1153, baseType: !60, offset: 7264)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4267, file: !4268, line: 1160, baseType: !151, size: 64, offset: 7296)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4267, file: !4268, line: 1167, baseType: !2655, size: 256, offset: 7360)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4267, file: !4268, line: 1174, baseType: !4947, size: 64, offset: 7616)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4268, line: 56, flags: DIFlagFwdDecl)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4262, file: !9, line: 65, baseType: !4034, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4262, file: !9, line: 80, baseType: !4951, size: 64, offset: 192)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !9, line: 80, flags: DIFlagFwdDecl)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !4262, file: !9, line: 89, baseType: !1504, size: 32, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !4262, file: !9, line: 96, baseType: !1504, size: 32, offset: 288)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !4262, file: !9, line: 100, baseType: !389, size: 32, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !4262, file: !9, line: 100, baseType: !389, size: 32, offset: 352)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !4262, file: !9, line: 106, baseType: !389, size: 32, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !4262, file: !9, line: 111, baseType: !389, size: 32, offset: 416)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !4262, file: !9, line: 114, baseType: !389, size: 32, offset: 448)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !4262, file: !9, line: 114, baseType: !389, size: 32, offset: 480)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4262, file: !9, line: 122, baseType: !732, size: 16, offset: 512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !4262, file: !9, line: 130, baseType: !4796, size: 16, offset: 528)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !4262, file: !9, line: 137, baseType: !215, size: 32, offset: 544)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !4262, file: !9, line: 152, baseType: !215, size: 32, offset: 576)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !4262, file: !9, line: 161, baseType: !215, size: 32, offset: 608)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !4262, file: !9, line: 168, baseType: !4967, size: 32, offset: 640)
!4967 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !4968, line: 77, baseType: !215, size: 32, elements: !4969)
!4968 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/lizy2001/genbc/linux")
!4969 = !{!4970, !4971, !4972, !4973}
!4970 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0, isUnsigned: true)
!4971 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1, isUnsigned: true)
!4972 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2, isUnsigned: true)
!4973 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3, isUnsigned: true)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !4262, file: !9, line: 175, baseType: !4975, size: 32, offset: 672)
!4975 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !4968, line: 84, baseType: !215, size: 32, elements: !4976)
!4976 = !{!4977, !4978, !4979}
!4977 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0, isUnsigned: true)
!4978 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1, isUnsigned: true)
!4979 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2, isUnsigned: true)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !4262, file: !9, line: 185, baseType: !4533, size: 64, offset: 704)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4262, file: !9, line: 207, baseType: !4982, size: 128, offset: 768)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !4983, line: 43, size: 128, elements: !4984)
!4983 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!4984 = !{!4985, !4986, !4987, !4988}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4982, file: !4983, line: 44, baseType: !6, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4982, file: !4983, line: 44, baseType: !6, size: 32, offset: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4982, file: !4983, line: 44, baseType: !6, size: 32, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4982, file: !4983, line: 44, baseType: !6, size: 32, offset: 96)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4262, file: !9, line: 207, baseType: !4982, size: 128, offset: 896)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !4262, file: !9, line: 215, baseType: !320, size: 8, offset: 1024)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4262, file: !9, line: 223, baseType: !4474, size: 64, offset: 1088)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4262, file: !9, line: 226, baseType: !4245, size: 64, offset: 1152)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4257, file: !4247, line: 160, baseType: !4261, size: 64, offset: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4257, file: !4247, line: 160, baseType: !4261, size: 64, offset: 192)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4246, file: !4247, line: 351, baseType: !4996, size: 64, offset: 256)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !4247, line: 163, size: 448, elements: !4998)
!4998 = !{!4999, !5000, !5001, !5002, !5003, !5004, !5006}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4997, file: !4247, line: 164, baseType: !4266, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4997, file: !4247, line: 165, baseType: !4831, size: 64, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4997, file: !4247, line: 165, baseType: !4831, size: 64, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4997, file: !4247, line: 165, baseType: !4831, size: 64, offset: 192)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4997, file: !4247, line: 175, baseType: !4474, size: 64, offset: 256)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !4997, file: !4247, line: 177, baseType: !5005, size: 64, offset: 320)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !4997, file: !4247, line: 178, baseType: !251, size: 64, offset: 384)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4246, file: !4247, line: 352, baseType: !6, size: 32, offset: 320)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4246, file: !4247, line: 353, baseType: !5009, size: 64, offset: 384)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !4247, line: 181, size: 320, elements: !5011)
!5011 = !{!5012, !5013, !5014, !5015, !5016}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5010, file: !4247, line: 182, baseType: !4328, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5010, file: !4247, line: 183, baseType: !4459, size: 64, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5010, file: !4247, line: 183, baseType: !4459, size: 64, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5010, file: !4247, line: 183, baseType: !4459, size: 64, offset: 192)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5010, file: !4247, line: 191, baseType: !5005, size: 64, offset: 256)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4246, file: !4247, line: 354, baseType: !6, size: 32, offset: 448)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4246, file: !4247, line: 355, baseType: !5019, size: 64, offset: 512)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !4247, line: 302, size: 256, elements: !5021)
!5021 = !{!5022, !5046, !5047, !5048}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5020, file: !4247, line: 303, baseType: !5023, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !4247, line: 252, size: 640, elements: !5025)
!5025 = !{!5026, !5027, !5028, !5033}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5024, file: !4247, line: 257, baseType: !17, size: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5024, file: !4247, line: 262, baseType: !3967, size: 384, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5024, file: !4247, line: 267, baseType: !5029, size: 64, offset: 512)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !4247, line: 298, size: 64, elements: !5031)
!5031 = !{!5032}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5030, file: !4247, line: 299, baseType: !4245, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5024, file: !4247, line: 275, baseType: !5034, size: 64, offset: 576)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5036)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !4247, line: 207, size: 128, elements: !5037)
!5037 = !{!5038, !5042}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5036, file: !4247, line: 219, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!5029, !5023}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5036, file: !4247, line: 226, baseType: !5043, size: 64, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{null, !5023, !5029}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5020, file: !4247, line: 304, baseType: !5029, size: 64, offset: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5020, file: !4247, line: 304, baseType: !5029, size: 64, offset: 128)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5020, file: !4247, line: 304, baseType: !5029, size: 64, offset: 192)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4246, file: !4247, line: 357, baseType: !3986, size: 64, offset: 576)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4246, file: !4247, line: 369, baseType: !4474, size: 64, offset: 640)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4246, file: !4247, line: 377, baseType: !1899, size: 256, offset: 704)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4028, file: !3963, line: 278, baseType: !5053, size: 64, offset: 320)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!6, !12, !4245, !320}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4028, file: !3963, line: 297, baseType: !5057, size: 64, offset: 384)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!4245, !12}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4028, file: !3963, line: 318, baseType: !5061, size: 64, offset: 448)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !4245}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4028, file: !3963, line: 333, baseType: !5061, size: 64, offset: 512)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !3962, file: !3963, line: 527, baseType: !5066, size: 64, offset: 3264)
!5066 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !18, line: 158, baseType: !2067)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !3962, file: !3963, line: 530, baseType: !320, size: 8, offset: 3328)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !3962, file: !3963, line: 531, baseType: !320, size: 8, offset: 3336)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !3962, file: !3963, line: 532, baseType: !320, size: 8, offset: 3344)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !3962, file: !3963, line: 533, baseType: !5071, size: 704, offset: 3392)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1900, line: 115, size: 704, elements: !5072)
!5072 = !{!5073, !5074, !5075, !5076}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5071, file: !1900, line: 116, baseType: !1899, size: 256)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5071, file: !1900, line: 117, baseType: !3529, size: 320, offset: 256)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5071, file: !1900, line: 120, baseType: !2748, size: 64, offset: 576)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5071, file: !1900, line: 121, baseType: !6, size: 32, offset: 640)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !3962, file: !3963, line: 541, baseType: !557, size: 192, offset: 4096)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !3962, file: !3963, line: 549, baseType: !17, size: 128, offset: 4288)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !3962, file: !3963, line: 557, baseType: !4053, size: 64, offset: 4416)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !3962, file: !3963, line: 562, baseType: !4053, size: 64, offset: 4480)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !3962, file: !3963, line: 567, baseType: !4053, size: 64, offset: 4544)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !3962, file: !3963, line: 573, baseType: !4053, size: 64, offset: 4608)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !3962, file: !3963, line: 578, baseType: !4053, size: 64, offset: 4672)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !3962, file: !3963, line: 583, baseType: !4053, size: 64, offset: 4736)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !3962, file: !3963, line: 588, baseType: !4053, size: 64, offset: 4800)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !3962, file: !3963, line: 593, baseType: !4053, size: 64, offset: 4864)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !3962, file: !3963, line: 598, baseType: !4053, size: 64, offset: 4928)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !3962, file: !3963, line: 603, baseType: !4053, size: 64, offset: 4992)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !3962, file: !3963, line: 608, baseType: !4053, size: 64, offset: 5056)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !3962, file: !3963, line: 613, baseType: !4053, size: 64, offset: 5120)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !3962, file: !3963, line: 618, baseType: !4053, size: 64, offset: 5184)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !3962, file: !3963, line: 623, baseType: !4053, size: 64, offset: 5248)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !3962, file: !3963, line: 628, baseType: !4053, size: 64, offset: 5312)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !3962, file: !3963, line: 633, baseType: !4053, size: 64, offset: 5376)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !3962, file: !3963, line: 639, baseType: !4053, size: 64, offset: 5440)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !3962, file: !3963, line: 644, baseType: !4053, size: 64, offset: 5504)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !3962, file: !3963, line: 653, baseType: !4053, size: 64, offset: 5568)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !3962, file: !3963, line: 659, baseType: !4053, size: 64, offset: 5632)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !3962, file: !3963, line: 665, baseType: !4053, size: 64, offset: 5696)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !3962, file: !3963, line: 670, baseType: !4053, size: 64, offset: 5760)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !3962, file: !3963, line: 676, baseType: !4053, size: 64, offset: 5824)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !3962, file: !3963, line: 681, baseType: !4053, size: 64, offset: 5888)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !3962, file: !3963, line: 687, baseType: !4053, size: 64, offset: 5952)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !3962, file: !3963, line: 693, baseType: !4053, size: 64, offset: 6016)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !3962, file: !3963, line: 698, baseType: !4053, size: 64, offset: 6080)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !3962, file: !3963, line: 703, baseType: !4053, size: 64, offset: 6144)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !3962, file: !3963, line: 708, baseType: !4053, size: 64, offset: 6208)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !3962, file: !3963, line: 713, baseType: !4053, size: 64, offset: 6272)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !3962, file: !3963, line: 718, baseType: !4053, size: 64, offset: 6336)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !3962, file: !3963, line: 723, baseType: !4053, size: 64, offset: 6400)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !3962, file: !3963, line: 728, baseType: !4053, size: 64, offset: 6464)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !3962, file: !3963, line: 733, baseType: !4053, size: 64, offset: 6528)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !3962, file: !3963, line: 738, baseType: !4053, size: 64, offset: 6592)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !3962, file: !3963, line: 743, baseType: !4053, size: 64, offset: 6656)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !3962, file: !3963, line: 748, baseType: !4053, size: 64, offset: 6720)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !3962, file: !3963, line: 752, baseType: !4053, size: 64, offset: 6784)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !3962, file: !3963, line: 758, baseType: !4053, size: 64, offset: 6848)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !3962, file: !3963, line: 763, baseType: !4053, size: 64, offset: 6912)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !3962, file: !3963, line: 768, baseType: !4053, size: 64, offset: 6976)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !3962, file: !3963, line: 773, baseType: !4053, size: 64, offset: 7040)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !3962, file: !3963, line: 778, baseType: !4053, size: 64, offset: 7104)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !3962, file: !3963, line: 784, baseType: !4053, size: 64, offset: 7168)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !3962, file: !3963, line: 790, baseType: !4053, size: 64, offset: 7232)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !3962, file: !3963, line: 795, baseType: !4053, size: 64, offset: 7296)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !3962, file: !3963, line: 801, baseType: !4053, size: 64, offset: 7360)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !3962, file: !3963, line: 806, baseType: !4053, size: 64, offset: 7424)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !3962, file: !3963, line: 813, baseType: !4053, size: 64, offset: 7488)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !3962, file: !3963, line: 820, baseType: !4053, size: 64, offset: 7552)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !3962, file: !3963, line: 827, baseType: !4053, size: 64, offset: 7616)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !3962, file: !3963, line: 835, baseType: !4053, size: 64, offset: 7680)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !3962, file: !3963, line: 843, baseType: !4053, size: 64, offset: 7744)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !3962, file: !3963, line: 850, baseType: !4053, size: 64, offset: 7808)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !3962, file: !3963, line: 856, baseType: !4053, size: 64, offset: 7872)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !3962, file: !3963, line: 862, baseType: !4053, size: 64, offset: 7936)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !3962, file: !3963, line: 865, baseType: !389, size: 32, offset: 8000)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !3962, file: !3963, line: 865, baseType: !389, size: 32, offset: 8032)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !3962, file: !3963, line: 872, baseType: !320, size: 8, offset: 8064)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !3962, file: !3963, line: 884, baseType: !320, size: 8, offset: 8072)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !3962, file: !3963, line: 892, baseType: !320, size: 8, offset: 8080)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !3962, file: !3963, line: 906, baseType: !320, size: 8, offset: 8088)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !3962, file: !3963, line: 912, baseType: !320, size: 8, offset: 8096)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !3962, file: !3963, line: 919, baseType: !320, size: 8, offset: 8104)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !3962, file: !3963, line: 927, baseType: !320, size: 8, offset: 8112)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !3962, file: !3963, line: 933, baseType: !4053, size: 64, offset: 8128)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !3962, file: !3963, line: 936, baseType: !389, size: 32, offset: 8192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !3962, file: !3963, line: 936, baseType: !389, size: 32, offset: 8224)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !3962, file: !3963, line: 945, baseType: !4245, size: 64, offset: 8256)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !3962, file: !3963, line: 947, baseType: !5149, size: 64, offset: 8320)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5151)
!5151 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !3963, line: 947, flags: DIFlagFwdDecl)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !13, file: !14, line: 303, baseType: !557, size: 192, offset: 11200)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !13, file: !14, line: 306, baseType: !1387, size: 192, offset: 11392)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !13, file: !14, line: 309, baseType: !5155, size: 64, offset: 11584)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !14, line: 19, flags: DIFlagFwdDecl)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !13, file: !14, line: 312, baseType: !5158, size: 64, offset: 11648)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !14, line: 20, flags: DIFlagFwdDecl)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !13, file: !14, line: 322, baseType: !5161, size: 32, offset: 11712)
!5161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !14, line: 33, baseType: !215, size: 32, elements: !5162)
!5162 = !{!5163, !5164, !5165, !5166}
!5163 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!5164 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!5165 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!5166 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !13, file: !14, line: 330, baseType: !5168, size: 64, offset: 11776)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !14, line: 21, flags: DIFlagFwdDecl)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !8, file: !9, line: 586, baseType: !17, size: 128, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !9, line: 589, baseType: !101, size: 64, offset: 192)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !8, file: !9, line: 600, baseType: !3967, size: 384, offset: 256)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !8, file: !9, line: 603, baseType: !4041, size: 256, offset: 640)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !8, file: !9, line: 609, baseType: !389, size: 32, offset: 896)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !8, file: !9, line: 611, baseType: !5176, size: 64, offset: 960)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !8, file: !9, line: 613, baseType: !215, size: 32, offset: 1024)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !8, file: !9, line: 618, baseType: !320, size: 8, offset: 1056)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !8, file: !9, line: 621, baseType: !4063, size: 64, offset: 1088)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !8, file: !9, line: 623, baseType: !215, size: 32, offset: 1152)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !8, file: !9, line: 632, baseType: !4266, size: 64, offset: 1216)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !8, file: !9, line: 641, baseType: !4034, size: 64, offset: 1280)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !8, file: !9, line: 649, baseType: !4034, size: 64, offset: 1344)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !8, file: !9, line: 652, baseType: !5185, size: 64, offset: 1408)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5187)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !9, line: 256, size: 832, elements: !5188)
!5188 = !{!5189, !5193, !5197, !5201, !5202, !5206, !5210, !5214, !5218, !5224, !5228, !5229, !5233}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5187, file: !9, line: 283, baseType: !5190, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!6, !7, !4266, !4034, !6, !6, !215, !215, !389, !389, !389, !389, !3986}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5187, file: !9, line: 306, baseType: !5194, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!6, !7, !3986}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5187, file: !9, line: 316, baseType: !5198, size: 64, offset: 128)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{null, !7}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5187, file: !9, line: 328, baseType: !5198, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5187, file: !9, line: 344, baseType: !5203, size: 64, offset: 256)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!6, !7, !4053, !4064}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5187, file: !9, line: 378, baseType: !5207, size: 64, offset: 320)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!4261, !7}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5187, file: !9, line: 388, baseType: !5211, size: 64, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{null, !7, !4261}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5187, file: !9, line: 433, baseType: !5215, size: 64, offset: 448)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!6, !7, !4261, !4053, !4064}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5187, file: !9, line: 456, baseType: !5219, size: 64, offset: 512)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!6, !7, !5222, !4053, !4063}
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5187, file: !9, line: 473, baseType: !5225, size: 64, offset: 576)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!6, !7}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5187, file: !9, line: 484, baseType: !5198, size: 64, offset: 640)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5187, file: !9, line: 495, baseType: !5230, size: 64, offset: 704)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !4560, !5222}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5187, file: !9, line: 514, baseType: !5234, size: 64, offset: 768)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!320, !7, !389, !4064}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !8, file: !9, line: 655, baseType: !4048, size: 3136, offset: 1472)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !9, line: 658, baseType: !5239, size: 32, offset: 4608)
!5239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !9, line: 536, baseType: !215, size: 32, elements: !5240)
!5240 = !{!5241, !5242, !5243}
!5241 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0, isUnsigned: true)
!5242 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1, isUnsigned: true)
!5243 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2, isUnsigned: true)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !8, file: !9, line: 664, baseType: !215, size: 32, offset: 4640)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !8, file: !9, line: 667, baseType: !5246, size: 64, offset: 4672)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5248)
!5248 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !9, line: 667, flags: DIFlagFwdDecl)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !8, file: !9, line: 682, baseType: !4261, size: 64, offset: 4736)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !8, file: !9, line: 689, baseType: !4053, size: 64, offset: 4800)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !8, file: !9, line: 695, baseType: !4053, size: 64, offset: 4864)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !8, file: !9, line: 701, baseType: !4053, size: 64, offset: 4928)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !8, file: !9, line: 709, baseType: !4053, size: 64, offset: 4992)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !8, file: !9, line: 718, baseType: !4053, size: 64, offset: 5056)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !8, file: !9, line: 726, baseType: !4053, size: 64, offset: 5120)
!5256 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !5257, retainedTypes: !5282, globals: !5284, splitDebugInlining: false, nameTableKind: None)
!5257 = !{!748, !951, !1183, !1307, !2319, !2414, !3100, !3119, !3164, !3407, !3492, !3579, !3587, !3759, !4151, !4232, !4359, !4366, !4379, !4468, !4491, !4622, !4630, !4967, !4975, !5161, !5239, !5258, !5263, !5275}
!5258 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5259, line: 10, baseType: !215, size: 32, elements: !5260)
!5259 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5260 = !{!5261, !5262}
!5261 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!5262 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!5263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !4562, line: 277, baseType: !215, size: 32, elements: !5264)
!5264 = !{!5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274}
!5265 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!5266 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!5267 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!5268 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!5269 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!5270 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!5271 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!5272 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!5273 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!5274 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!5275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !5276, line: 305, baseType: !215, size: 32, elements: !5277)
!5276 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5277 = !{!5278, !5279, !5280, !5281}
!5278 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!5279 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!5280 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!5281 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!5282 = !{!6, !215, !627, !175, !7, !151, !136, !5283}
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!5284 = !{!0, !5285}
!5285 = !DIGlobalVariableExpression(var: !5286, expr: !DIExpression())
!5286 = distinct !DIGlobalVariable(name: "props", scope: !5287, file: !3, line: 570, type: !5290, isLocal: true, isDefinition: true)
!5287 = distinct !DISubprogram(name: "drm_plane_create_blend_mode_property", scope: !3, file: !3, line: 565, type: !5288, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!6, !7, !215}
!5290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5291, size: 384, elements: !102)
!5291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5292)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prop_enum_list", file: !4055, line: 218, size: 128, elements: !5293)
!5293 = !{!5294, !5295}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5292, file: !4055, line: 219, baseType: !6, size: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5292, file: !4055, line: 220, baseType: !48, size: 64, offset: 64)
!5296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5291, size: 768, elements: !1545)
!5297 = !{i32 7, !"Dwarf Version", i32 4}
!5298 = !{i32 2, !"Debug Info Version", i32 3}
!5299 = !{i32 1, !"wchar_size", i32 2}
!5300 = !{i32 1, !"Code Model", i32 2}
!5301 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5302 = distinct !DISubprogram(name: "drm_plane_create_alpha_property", scope: !3, file: !3, line: 212, type: !5226, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5303 = !DILocalVariable(name: "plane", arg: 1, scope: !5302, file: !3, line: 212, type: !7)
!5304 = !DILocation(line: 212, column: 55, scope: !5302)
!5305 = !DILocalVariable(name: "prop", scope: !5302, file: !3, line: 214, type: !4053)
!5306 = !DILocation(line: 214, column: 23, scope: !5302)
!5307 = !DILocation(line: 216, column: 35, scope: !5302)
!5308 = !DILocation(line: 216, column: 42, scope: !5302)
!5309 = !DILocation(line: 216, column: 9, scope: !5302)
!5310 = !DILocation(line: 216, column: 7, scope: !5302)
!5311 = !DILocation(line: 218, column: 7, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 218, column: 6)
!5313 = !DILocation(line: 218, column: 6, scope: !5302)
!5314 = !DILocation(line: 219, column: 3, scope: !5312)
!5315 = !DILocation(line: 221, column: 30, scope: !5302)
!5316 = !DILocation(line: 221, column: 37, scope: !5302)
!5317 = !DILocation(line: 221, column: 43, scope: !5302)
!5318 = !DILocation(line: 221, column: 2, scope: !5302)
!5319 = !DILocation(line: 222, column: 26, scope: !5302)
!5320 = !DILocation(line: 222, column: 2, scope: !5302)
!5321 = !DILocation(line: 222, column: 9, scope: !5302)
!5322 = !DILocation(line: 222, column: 24, scope: !5302)
!5323 = !DILocation(line: 224, column: 6, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 224, column: 6)
!5325 = !DILocation(line: 224, column: 13, scope: !5324)
!5326 = !DILocation(line: 224, column: 6, scope: !5302)
!5327 = !DILocation(line: 225, column: 3, scope: !5324)
!5328 = !DILocation(line: 225, column: 10, scope: !5324)
!5329 = !DILocation(line: 225, column: 17, scope: !5324)
!5330 = !DILocation(line: 225, column: 23, scope: !5324)
!5331 = !DILocation(line: 227, column: 2, scope: !5302)
!5332 = !DILocation(line: 228, column: 1, scope: !5302)
!5333 = !DILocalVariable(name: "plane", arg: 1, scope: !2, file: !3, line: 265, type: !7)
!5334 = !DILocation(line: 265, column: 58, scope: !2)
!5335 = !DILocalVariable(name: "rotation", arg: 2, scope: !2, file: !3, line: 266, type: !215)
!5336 = !DILocation(line: 266, column: 25, scope: !2)
!5337 = !DILocalVariable(name: "supported_rotations", arg: 3, scope: !2, file: !3, line: 267, type: !215)
!5338 = !DILocation(line: 267, column: 25, scope: !2)
!5339 = !DILocalVariable(name: "prop", scope: !2, file: !3, line: 277, type: !4053)
!5340 = !DILocation(line: 277, column: 23, scope: !2)
!5341 = !DILocalVariable(name: "__ret_warn_on", scope: !5342, file: !3, line: 279, type: !6)
!5342 = distinct !DILexicalBlock(scope: !2, file: !3, line: 279, column: 2)
!5343 = !DILocation(line: 279, column: 2, scope: !5342)
!5344 = !DILocation(line: 279, column: 2, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 279, column: 2)
!5346 = !DILocation(line: 279, column: 2, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 279, column: 2)
!5348 = !DILocation(line: 279, column: 2, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 279, column: 2)
!5350 = !DILocation(line: 279, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 279, column: 2)
!5352 = !{i32 -2140673805, i32 -2140673776, i32 -2140673730, i32 -2140673672, i32 -2140673618, i32 -2140673564, i32 -2140673509, i32 -2140673478}
!5353 = !DILocation(line: 279, column: 2, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 279, column: 2)
!5355 = !{i32 -2140673069, i32 -2140673062, i32 -2140673010, i32 -2140672979, i32 -2140672949}
!5356 = !DILocation(line: 279, column: 2, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 279, column: 2)
!5358 = !DILocalVariable(name: "__ret_warn_on", scope: !5359, file: !3, line: 280, type: !6)
!5359 = distinct !DILexicalBlock(scope: !2, file: !3, line: 280, column: 2)
!5360 = !DILocation(line: 280, column: 2, scope: !5359)
!5361 = !DILocation(line: 280, column: 2, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 280, column: 2)
!5363 = !DILocation(line: 280, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 280, column: 2)
!5365 = !DILocation(line: 280, column: 2, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 280, column: 2)
!5367 = !DILocation(line: 280, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 280, column: 2)
!5369 = !{i32 -2140672181, i32 -2140672152, i32 -2140672106, i32 -2140672048, i32 -2140671994, i32 -2140671940, i32 -2140671885, i32 -2140671854}
!5370 = !DILocation(line: 280, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 280, column: 2)
!5372 = !{i32 -2140671445, i32 -2140671438, i32 -2140671386, i32 -2140671355, i32 -2140671325}
!5373 = !DILocation(line: 280, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 280, column: 2)
!5375 = !DILocalVariable(name: "__ret_warn_on", scope: !5376, file: !3, line: 281, type: !6)
!5376 = distinct !DILexicalBlock(scope: !2, file: !3, line: 281, column: 2)
!5377 = !DILocation(line: 281, column: 2, scope: !5376)
!5378 = !DILocation(line: 281, column: 2, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 281, column: 2)
!5380 = !DILocation(line: 281, column: 2, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 281, column: 2)
!5382 = !DILocation(line: 281, column: 2, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 281, column: 2)
!5384 = !DILocation(line: 281, column: 2, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 281, column: 2)
!5386 = !{i32 -2140670722, i32 -2140670693, i32 -2140670647, i32 -2140670589, i32 -2140670535, i32 -2140670481, i32 -2140670426, i32 -2140670395}
!5387 = !DILocation(line: 281, column: 2, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 281, column: 2)
!5389 = !{i32 -2140669986, i32 -2140669979, i32 -2140669927, i32 -2140669896, i32 -2140669866}
!5390 = !DILocation(line: 281, column: 2, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 281, column: 2)
!5392 = !DILocation(line: 283, column: 37, scope: !2)
!5393 = !DILocation(line: 283, column: 44, scope: !2)
!5394 = !DILocation(line: 285, column: 9, scope: !2)
!5395 = !DILocation(line: 283, column: 9, scope: !2)
!5396 = !DILocation(line: 283, column: 7, scope: !2)
!5397 = !DILocation(line: 286, column: 7, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !2, file: !3, line: 286, column: 6)
!5399 = !DILocation(line: 286, column: 6, scope: !2)
!5400 = !DILocation(line: 287, column: 3, scope: !5398)
!5401 = !DILocation(line: 289, column: 30, scope: !2)
!5402 = !DILocation(line: 289, column: 37, scope: !2)
!5403 = !DILocation(line: 289, column: 43, scope: !2)
!5404 = !DILocation(line: 289, column: 49, scope: !2)
!5405 = !DILocation(line: 289, column: 2, scope: !2)
!5406 = !DILocation(line: 291, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !2, file: !3, line: 291, column: 6)
!5408 = !DILocation(line: 291, column: 13, scope: !5407)
!5409 = !DILocation(line: 291, column: 6, scope: !2)
!5410 = !DILocation(line: 292, column: 28, scope: !5407)
!5411 = !DILocation(line: 292, column: 3, scope: !5407)
!5412 = !DILocation(line: 292, column: 10, scope: !5407)
!5413 = !DILocation(line: 292, column: 17, scope: !5407)
!5414 = !DILocation(line: 292, column: 26, scope: !5407)
!5415 = !DILocation(line: 294, column: 29, scope: !2)
!5416 = !DILocation(line: 294, column: 2, scope: !2)
!5417 = !DILocation(line: 294, column: 9, scope: !2)
!5418 = !DILocation(line: 294, column: 27, scope: !2)
!5419 = !DILocation(line: 296, column: 2, scope: !2)
!5420 = !DILocation(line: 297, column: 1, scope: !2)
!5421 = distinct !DISubprogram(name: "is_power_of_2", scope: !5422, file: !5422, line: 45, type: !5423, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5422 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!320, !151}
!5425 = !DILocalVariable(name: "n", arg: 1, scope: !5421, file: !5422, line: 45, type: !151)
!5426 = !DILocation(line: 45, column: 34, scope: !5421)
!5427 = !DILocation(line: 47, column: 10, scope: !5421)
!5428 = !DILocation(line: 47, column: 12, scope: !5421)
!5429 = !DILocation(line: 47, column: 17, scope: !5421)
!5430 = !DILocation(line: 47, column: 22, scope: !5421)
!5431 = !DILocation(line: 47, column: 27, scope: !5421)
!5432 = !DILocation(line: 47, column: 29, scope: !5421)
!5433 = !DILocation(line: 47, column: 24, scope: !5421)
!5434 = !DILocation(line: 47, column: 35, scope: !5421)
!5435 = !DILocation(line: 0, scope: !5421)
!5436 = !DILocation(line: 47, column: 2, scope: !5421)
!5437 = distinct !DISubprogram(name: "drm_rotation_simplify", scope: !3, file: !3, line: 318, type: !5438, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!215, !215, !215}
!5440 = !DILocalVariable(name: "x", arg: 1, scope: !5441, file: !5442, line: 283, type: !6)
!5441 = distinct !DISubprogram(name: "ffs", scope: !5442, file: !5442, line: 283, type: !3006, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5442 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5443 = !DILocation(line: 283, column: 36, scope: !5441, inlinedAt: !5444)
!5444 = distinct !DILocation(line: 324, column: 14, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 321, column: 39)
!5446 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 321, column: 6)
!5447 = !DILocalVariable(name: "r", scope: !5441, file: !5442, line: 285, type: !6)
!5448 = !DILocation(line: 285, column: 6, scope: !5441, inlinedAt: !5444)
!5449 = !DILocalVariable(name: "rotation", arg: 1, scope: !5437, file: !3, line: 318, type: !215)
!5450 = !DILocation(line: 318, column: 49, scope: !5437)
!5451 = !DILocalVariable(name: "supported_rotations", arg: 2, scope: !5437, file: !3, line: 319, type: !215)
!5452 = !DILocation(line: 319, column: 21, scope: !5437)
!5453 = !DILocation(line: 321, column: 6, scope: !5446)
!5454 = !DILocation(line: 321, column: 18, scope: !5446)
!5455 = !DILocation(line: 321, column: 17, scope: !5446)
!5456 = !DILocation(line: 321, column: 15, scope: !5446)
!5457 = !DILocation(line: 321, column: 6, scope: !5437)
!5458 = !DILocation(line: 322, column: 12, scope: !5445)
!5459 = !DILocation(line: 323, column: 15, scope: !5445)
!5460 = !DILocation(line: 323, column: 24, scope: !5445)
!5461 = !DILocation(line: 323, column: 14, scope: !5445)
!5462 = !DILocation(line: 324, column: 14, scope: !5445)
!5463 = !DILocation(line: 299, column: 14, scope: !5441, inlinedAt: !5444)
!5464 = !DILocation(line: 297, column: 2, scope: !5441, inlinedAt: !5444)
!5465 = !{i32 319231}
!5466 = !DILocation(line: 310, column: 9, scope: !5441, inlinedAt: !5444)
!5467 = !DILocation(line: 310, column: 11, scope: !5441, inlinedAt: !5444)
!5468 = !DILocation(line: 323, column: 49, scope: !5445)
!5469 = !DILocation(line: 323, column: 12, scope: !5445)
!5470 = !DILocation(line: 326, column: 2, scope: !5445)
!5471 = !DILocation(line: 328, column: 9, scope: !5437)
!5472 = !DILocation(line: 328, column: 2, scope: !5437)
!5473 = distinct !DISubprogram(name: "drm_plane_create_zpos_property", scope: !3, file: !3, line: 362, type: !5474, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!6, !7, !215, !215, !215}
!5476 = !DILocalVariable(name: "plane", arg: 1, scope: !5473, file: !3, line: 362, type: !7)
!5477 = !DILocation(line: 362, column: 54, scope: !5473)
!5478 = !DILocalVariable(name: "zpos", arg: 2, scope: !5473, file: !3, line: 363, type: !215)
!5479 = !DILocation(line: 363, column: 21, scope: !5473)
!5480 = !DILocalVariable(name: "min", arg: 3, scope: !5473, file: !3, line: 364, type: !215)
!5481 = !DILocation(line: 364, column: 21, scope: !5473)
!5482 = !DILocalVariable(name: "max", arg: 4, scope: !5473, file: !3, line: 364, type: !215)
!5483 = !DILocation(line: 364, column: 39, scope: !5473)
!5484 = !DILocalVariable(name: "prop", scope: !5473, file: !3, line: 366, type: !4053)
!5485 = !DILocation(line: 366, column: 23, scope: !5473)
!5486 = !DILocation(line: 368, column: 35, scope: !5473)
!5487 = !DILocation(line: 368, column: 42, scope: !5473)
!5488 = !DILocation(line: 368, column: 58, scope: !5473)
!5489 = !DILocation(line: 368, column: 63, scope: !5473)
!5490 = !DILocation(line: 368, column: 9, scope: !5473)
!5491 = !DILocation(line: 368, column: 7, scope: !5473)
!5492 = !DILocation(line: 369, column: 7, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 369, column: 6)
!5494 = !DILocation(line: 369, column: 6, scope: !5473)
!5495 = !DILocation(line: 370, column: 3, scope: !5493)
!5496 = !DILocation(line: 372, column: 30, scope: !5473)
!5497 = !DILocation(line: 372, column: 37, scope: !5473)
!5498 = !DILocation(line: 372, column: 43, scope: !5473)
!5499 = !DILocation(line: 372, column: 49, scope: !5473)
!5500 = !DILocation(line: 372, column: 2, scope: !5473)
!5501 = !DILocation(line: 374, column: 25, scope: !5473)
!5502 = !DILocation(line: 374, column: 2, scope: !5473)
!5503 = !DILocation(line: 374, column: 9, scope: !5473)
!5504 = !DILocation(line: 374, column: 23, scope: !5473)
!5505 = !DILocation(line: 376, column: 6, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 376, column: 6)
!5507 = !DILocation(line: 376, column: 13, scope: !5506)
!5508 = !DILocation(line: 376, column: 6, scope: !5473)
!5509 = !DILocation(line: 377, column: 24, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 376, column: 20)
!5511 = !DILocation(line: 377, column: 3, scope: !5510)
!5512 = !DILocation(line: 377, column: 10, scope: !5510)
!5513 = !DILocation(line: 377, column: 17, scope: !5510)
!5514 = !DILocation(line: 377, column: 22, scope: !5510)
!5515 = !DILocation(line: 378, column: 35, scope: !5510)
!5516 = !DILocation(line: 378, column: 3, scope: !5510)
!5517 = !DILocation(line: 378, column: 10, scope: !5510)
!5518 = !DILocation(line: 378, column: 17, scope: !5510)
!5519 = !DILocation(line: 378, column: 33, scope: !5510)
!5520 = !DILocation(line: 379, column: 2, scope: !5510)
!5521 = !DILocation(line: 381, column: 2, scope: !5473)
!5522 = !DILocation(line: 382, column: 1, scope: !5473)
!5523 = distinct !DISubprogram(name: "drm_plane_create_zpos_immutable_property", scope: !3, file: !3, line: 401, type: !5288, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5524 = !DILocalVariable(name: "plane", arg: 1, scope: !5523, file: !3, line: 401, type: !7)
!5525 = !DILocation(line: 401, column: 64, scope: !5523)
!5526 = !DILocalVariable(name: "zpos", arg: 2, scope: !5523, file: !3, line: 402, type: !215)
!5527 = !DILocation(line: 402, column: 24, scope: !5523)
!5528 = !DILocalVariable(name: "prop", scope: !5523, file: !3, line: 404, type: !4053)
!5529 = !DILocation(line: 404, column: 23, scope: !5523)
!5530 = !DILocation(line: 406, column: 35, scope: !5523)
!5531 = !DILocation(line: 406, column: 42, scope: !5523)
!5532 = !DILocation(line: 407, column: 15, scope: !5523)
!5533 = !DILocation(line: 407, column: 21, scope: !5523)
!5534 = !DILocation(line: 406, column: 9, scope: !5523)
!5535 = !DILocation(line: 406, column: 7, scope: !5523)
!5536 = !DILocation(line: 408, column: 7, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 408, column: 6)
!5538 = !DILocation(line: 408, column: 6, scope: !5523)
!5539 = !DILocation(line: 409, column: 3, scope: !5537)
!5540 = !DILocation(line: 411, column: 30, scope: !5523)
!5541 = !DILocation(line: 411, column: 37, scope: !5523)
!5542 = !DILocation(line: 411, column: 43, scope: !5523)
!5543 = !DILocation(line: 411, column: 49, scope: !5523)
!5544 = !DILocation(line: 411, column: 2, scope: !5523)
!5545 = !DILocation(line: 413, column: 25, scope: !5523)
!5546 = !DILocation(line: 413, column: 2, scope: !5523)
!5547 = !DILocation(line: 413, column: 9, scope: !5523)
!5548 = !DILocation(line: 413, column: 23, scope: !5523)
!5549 = !DILocation(line: 415, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 415, column: 6)
!5551 = !DILocation(line: 415, column: 13, scope: !5550)
!5552 = !DILocation(line: 415, column: 6, scope: !5523)
!5553 = !DILocation(line: 416, column: 24, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 415, column: 20)
!5555 = !DILocation(line: 416, column: 3, scope: !5554)
!5556 = !DILocation(line: 416, column: 10, scope: !5554)
!5557 = !DILocation(line: 416, column: 17, scope: !5554)
!5558 = !DILocation(line: 416, column: 22, scope: !5554)
!5559 = !DILocation(line: 417, column: 35, scope: !5554)
!5560 = !DILocation(line: 417, column: 3, scope: !5554)
!5561 = !DILocation(line: 417, column: 10, scope: !5554)
!5562 = !DILocation(line: 417, column: 17, scope: !5554)
!5563 = !DILocation(line: 417, column: 33, scope: !5554)
!5564 = !DILocation(line: 418, column: 2, scope: !5554)
!5565 = !DILocation(line: 420, column: 2, scope: !5523)
!5566 = !DILocation(line: 421, column: 1, scope: !5523)
!5567 = distinct !DISubprogram(name: "drm_atomic_normalize_zpos", scope: !3, file: !3, line: 504, type: !4243, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5568 = !DILocalVariable(name: "dev", arg: 1, scope: !5567, file: !3, line: 504, type: !12)
!5569 = !DILocation(line: 504, column: 50, scope: !5567)
!5570 = !DILocalVariable(name: "state", arg: 2, scope: !5567, file: !3, line: 505, type: !4245)
!5571 = !DILocation(line: 505, column: 35, scope: !5567)
!5572 = !DILocalVariable(name: "crtc", scope: !5567, file: !3, line: 507, type: !4266)
!5573 = !DILocation(line: 507, column: 19, scope: !5567)
!5574 = !DILocalVariable(name: "old_crtc_state", scope: !5567, file: !3, line: 508, type: !4831)
!5575 = !DILocation(line: 508, column: 25, scope: !5567)
!5576 = !DILocalVariable(name: "new_crtc_state", scope: !5567, file: !3, line: 508, type: !4831)
!5577 = !DILocation(line: 508, column: 42, scope: !5567)
!5578 = !DILocalVariable(name: "plane", scope: !5567, file: !3, line: 509, type: !7)
!5579 = !DILocation(line: 509, column: 20, scope: !5567)
!5580 = !DILocalVariable(name: "old_plane_state", scope: !5567, file: !3, line: 510, type: !4261)
!5581 = !DILocation(line: 510, column: 26, scope: !5567)
!5582 = !DILocalVariable(name: "new_plane_state", scope: !5567, file: !3, line: 510, type: !4261)
!5583 = !DILocation(line: 510, column: 44, scope: !5567)
!5584 = !DILocalVariable(name: "i", scope: !5567, file: !3, line: 511, type: !6)
!5585 = !DILocation(line: 511, column: 6, scope: !5567)
!5586 = !DILocalVariable(name: "ret", scope: !5567, file: !3, line: 511, type: !6)
!5587 = !DILocation(line: 511, column: 9, scope: !5567)
!5588 = !DILocation(line: 513, column: 2, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 513, column: 2)
!5590 = !DILocation(line: 513, column: 2, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 513, column: 2)
!5592 = !DILocation(line: 513, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 513, column: 2)
!5594 = !DILocation(line: 513, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 513, column: 2)
!5596 = !DILocation(line: 514, column: 10, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 513, column: 84)
!5598 = !DILocation(line: 514, column: 27, scope: !5597)
!5599 = !DILocation(line: 514, column: 8, scope: !5597)
!5600 = !DILocation(line: 515, column: 8, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 515, column: 7)
!5602 = !DILocation(line: 515, column: 7, scope: !5597)
!5603 = !DILocation(line: 516, column: 4, scope: !5601)
!5604 = !DILocation(line: 517, column: 7, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 517, column: 7)
!5606 = !DILocation(line: 517, column: 24, scope: !5605)
!5607 = !DILocation(line: 517, column: 32, scope: !5605)
!5608 = !DILocation(line: 517, column: 49, scope: !5605)
!5609 = !DILocation(line: 517, column: 29, scope: !5605)
!5610 = !DILocation(line: 517, column: 7, scope: !5597)
!5611 = !DILocation(line: 518, column: 51, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 517, column: 55)
!5613 = !DILocation(line: 518, column: 58, scope: !5612)
!5614 = !DILocation(line: 518, column: 21, scope: !5612)
!5615 = !DILocation(line: 518, column: 19, scope: !5612)
!5616 = !DILocation(line: 519, column: 4, scope: !5612)
!5617 = !DILocation(line: 519, column: 20, scope: !5612)
!5618 = !DILocation(line: 519, column: 33, scope: !5612)
!5619 = !DILocation(line: 520, column: 3, scope: !5612)
!5620 = distinct !{!5620, !5588, !5621}
!5621 = !DILocation(line: 521, column: 2, scope: !5589)
!5622 = !DILocation(line: 523, column: 2, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 523, column: 2)
!5624 = !DILocation(line: 523, column: 2, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 523, column: 2)
!5626 = !DILocation(line: 523, column: 2, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 523, column: 2)
!5628 = !DILocation(line: 523, column: 2, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 523, column: 2)
!5630 = !DILocation(line: 524, column: 7, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 524, column: 7)
!5632 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 523, column: 80)
!5633 = !DILocation(line: 524, column: 23, scope: !5631)
!5634 = !DILocation(line: 524, column: 37, scope: !5631)
!5635 = !DILocation(line: 524, column: 53, scope: !5631)
!5636 = !DILocation(line: 524, column: 34, scope: !5631)
!5637 = !DILocation(line: 524, column: 64, scope: !5631)
!5638 = !DILocation(line: 525, column: 7, scope: !5631)
!5639 = !DILocation(line: 525, column: 23, scope: !5631)
!5640 = !DILocation(line: 524, column: 7, scope: !5632)
!5641 = !DILocation(line: 526, column: 48, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 525, column: 37)
!5643 = !DILocation(line: 527, column: 13, scope: !5642)
!5644 = !DILocation(line: 526, column: 10, scope: !5642)
!5645 = !DILocation(line: 526, column: 8, scope: !5642)
!5646 = !DILocation(line: 528, column: 8, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 528, column: 8)
!5648 = !DILocation(line: 528, column: 8, scope: !5642)
!5649 = !DILocation(line: 529, column: 12, scope: !5647)
!5650 = !DILocation(line: 529, column: 5, scope: !5647)
!5651 = !DILocation(line: 530, column: 3, scope: !5642)
!5652 = distinct !{!5652, !5622, !5653}
!5653 = !DILocation(line: 531, column: 2, scope: !5623)
!5654 = !DILocation(line: 532, column: 2, scope: !5567)
!5655 = !DILocation(line: 533, column: 1, scope: !5567)
!5656 = distinct !DISubprogram(name: "drm_atomic_get_new_crtc_state", scope: !4247, file: !4247, line: 519, type: !5657, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!4831, !4245, !4266}
!5659 = !DILocalVariable(name: "state", arg: 1, scope: !5656, file: !4247, line: 519, type: !4245)
!5660 = !DILocation(line: 519, column: 56, scope: !5656)
!5661 = !DILocalVariable(name: "crtc", arg: 2, scope: !5656, file: !4247, line: 520, type: !4266)
!5662 = !DILocation(line: 520, column: 27, scope: !5656)
!5663 = !DILocation(line: 522, column: 9, scope: !5656)
!5664 = !DILocation(line: 522, column: 16, scope: !5656)
!5665 = !DILocation(line: 522, column: 37, scope: !5656)
!5666 = !DILocation(line: 522, column: 22, scope: !5656)
!5667 = !DILocation(line: 522, column: 44, scope: !5656)
!5668 = !DILocation(line: 522, column: 2, scope: !5656)
!5669 = distinct !DISubprogram(name: "drm_atomic_helper_crtc_normalize_zpos", scope: !3, file: !3, line: 435, type: !5670, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!6, !4266, !4831}
!5672 = !DILocalVariable(name: "crtc", arg: 1, scope: !5669, file: !3, line: 435, type: !4266)
!5673 = !DILocation(line: 435, column: 67, scope: !5669)
!5674 = !DILocalVariable(name: "crtc_state", arg: 2, scope: !5669, file: !3, line: 436, type: !4831)
!5675 = !DILocation(line: 436, column: 31, scope: !5669)
!5676 = !DILocalVariable(name: "state", scope: !5669, file: !3, line: 438, type: !4245)
!5677 = !DILocation(line: 438, column: 27, scope: !5669)
!5678 = !DILocation(line: 438, column: 35, scope: !5669)
!5679 = !DILocation(line: 438, column: 47, scope: !5669)
!5680 = !DILocalVariable(name: "dev", scope: !5669, file: !3, line: 439, type: !12)
!5681 = !DILocation(line: 439, column: 21, scope: !5669)
!5682 = !DILocation(line: 439, column: 27, scope: !5669)
!5683 = !DILocation(line: 439, column: 33, scope: !5669)
!5684 = !DILocalVariable(name: "total_planes", scope: !5669, file: !3, line: 440, type: !6)
!5685 = !DILocation(line: 440, column: 6, scope: !5669)
!5686 = !DILocation(line: 440, column: 21, scope: !5669)
!5687 = !DILocation(line: 440, column: 26, scope: !5669)
!5688 = !DILocation(line: 440, column: 38, scope: !5669)
!5689 = !DILocalVariable(name: "states", scope: !5669, file: !3, line: 441, type: !5283)
!5690 = !DILocation(line: 441, column: 27, scope: !5669)
!5691 = !DILocalVariable(name: "plane", scope: !5669, file: !3, line: 442, type: !7)
!5692 = !DILocation(line: 442, column: 20, scope: !5669)
!5693 = !DILocalVariable(name: "i", scope: !5669, file: !3, line: 443, type: !6)
!5694 = !DILocation(line: 443, column: 6, scope: !5669)
!5695 = !DILocalVariable(name: "n", scope: !5669, file: !3, line: 443, type: !6)
!5696 = !DILocation(line: 443, column: 9, scope: !5669)
!5697 = !DILocalVariable(name: "ret", scope: !5669, file: !3, line: 444, type: !6)
!5698 = !DILocation(line: 444, column: 6, scope: !5669)
!5699 = !DILocation(line: 446, column: 2, scope: !5669)
!5700 = !DILocation(line: 449, column: 25, scope: !5669)
!5701 = !DILocation(line: 449, column: 11, scope: !5669)
!5702 = !DILocation(line: 449, column: 9, scope: !5669)
!5703 = !DILocation(line: 450, column: 7, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 450, column: 6)
!5705 = !DILocation(line: 450, column: 6, scope: !5669)
!5706 = !DILocation(line: 451, column: 3, scope: !5704)
!5707 = !DILocalVariable(name: "__mptr", scope: !5708, file: !3, line: 457, type: !175)
!5708 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 457, column: 2)
!5709 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 457, column: 2)
!5710 = !DILocation(line: 457, column: 2, scope: !5708)
!5711 = !DILocation(line: 457, column: 2, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 457, column: 2)
!5713 = !DILocation(line: 457, column: 2, scope: !5709)
!5714 = !DILocation(line: 457, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 457, column: 2)
!5716 = !DILocation(line: 457, column: 2, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 457, column: 2)
!5718 = !DILocation(line: 457, column: 2, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 457, column: 2)
!5720 = !DILocalVariable(name: "plane_state", scope: !5721, file: !3, line: 458, type: !4261)
!5721 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 457, column: 62)
!5722 = !DILocation(line: 458, column: 27, scope: !5721)
!5723 = !DILocation(line: 459, column: 31, scope: !5721)
!5724 = !DILocation(line: 459, column: 38, scope: !5721)
!5725 = !DILocation(line: 459, column: 4, scope: !5721)
!5726 = !DILocation(line: 460, column: 14, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 460, column: 7)
!5728 = !DILocation(line: 460, column: 7, scope: !5727)
!5729 = !DILocation(line: 460, column: 7, scope: !5721)
!5730 = !DILocation(line: 461, column: 18, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 460, column: 28)
!5732 = !DILocation(line: 461, column: 10, scope: !5731)
!5733 = !DILocation(line: 461, column: 8, scope: !5731)
!5734 = !DILocation(line: 462, column: 4, scope: !5731)
!5735 = !DILocation(line: 464, column: 17, scope: !5721)
!5736 = !DILocation(line: 464, column: 3, scope: !5721)
!5737 = !DILocation(line: 464, column: 11, scope: !5721)
!5738 = !DILocation(line: 464, column: 15, scope: !5721)
!5739 = !DILocation(line: 465, column: 3, scope: !5721)
!5740 = !DILocalVariable(name: "__mptr", scope: !5741, file: !3, line: 457, type: !175)
!5741 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 457, column: 2)
!5742 = !DILocation(line: 457, column: 2, scope: !5741)
!5743 = !DILocation(line: 457, column: 2, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 457, column: 2)
!5745 = distinct !{!5745, !5713, !5746}
!5746 = !DILocation(line: 468, column: 2, scope: !5709)
!5747 = !DILocation(line: 470, column: 7, scope: !5669)
!5748 = !DILocation(line: 470, column: 15, scope: !5669)
!5749 = !DILocation(line: 470, column: 2, scope: !5669)
!5750 = !DILocation(line: 472, column: 9, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 472, column: 2)
!5752 = !DILocation(line: 472, column: 7, scope: !5751)
!5753 = !DILocation(line: 472, column: 14, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 472, column: 2)
!5755 = !DILocation(line: 472, column: 18, scope: !5754)
!5756 = !DILocation(line: 472, column: 16, scope: !5754)
!5757 = !DILocation(line: 472, column: 2, scope: !5751)
!5758 = !DILocation(line: 473, column: 11, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 472, column: 26)
!5760 = !DILocation(line: 473, column: 18, scope: !5759)
!5761 = !DILocation(line: 473, column: 22, scope: !5759)
!5762 = !DILocation(line: 473, column: 9, scope: !5759)
!5763 = !DILocation(line: 475, column: 32, scope: !5759)
!5764 = !DILocation(line: 475, column: 3, scope: !5759)
!5765 = !DILocation(line: 475, column: 10, scope: !5759)
!5766 = !DILocation(line: 475, column: 14, scope: !5759)
!5767 = !DILocation(line: 475, column: 30, scope: !5759)
!5768 = !DILocation(line: 476, column: 3, scope: !5759)
!5769 = !DILocation(line: 478, column: 2, scope: !5759)
!5770 = !DILocation(line: 472, column: 22, scope: !5754)
!5771 = !DILocation(line: 472, column: 2, scope: !5754)
!5772 = distinct !{!5772, !5757, !5773}
!5773 = !DILocation(line: 478, column: 2, scope: !5751)
!5774 = !DILocation(line: 479, column: 2, scope: !5669)
!5775 = !DILocation(line: 479, column: 14, scope: !5669)
!5776 = !DILocation(line: 479, column: 27, scope: !5669)
!5777 = !DILabel(scope: !5669, name: "done", file: !3, line: 481)
!5778 = !DILocation(line: 481, column: 1, scope: !5669)
!5779 = !DILocation(line: 482, column: 8, scope: !5669)
!5780 = !DILocation(line: 482, column: 2, scope: !5669)
!5781 = !DILocation(line: 483, column: 9, scope: !5669)
!5782 = !DILocation(line: 483, column: 2, scope: !5669)
!5783 = !DILocation(line: 484, column: 1, scope: !5669)
!5784 = !DILocalVariable(name: "w", arg: 1, scope: !5785, file: !5786, line: 15, type: !215)
!5785 = distinct !DISubprogram(name: "__arch_hweight32", scope: !5786, file: !5786, line: 15, type: !5787, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5786 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/lizy2001/genbc/linux")
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!215, !215}
!5789 = !DILocation(line: 15, column: 67, scope: !5785, inlinedAt: !5790)
!5790 = distinct !DILocation(line: 586, column: 8, scope: !5287)
!5791 = !DILocalVariable(name: "res", scope: !5785, file: !5786, line: 17, type: !215)
!5792 = !DILocation(line: 17, column: 15, scope: !5785, inlinedAt: !5790)
!5793 = !DILocalVariable(name: "plane", arg: 1, scope: !5287, file: !3, line: 565, type: !7)
!5794 = !DILocation(line: 565, column: 60, scope: !5287)
!5795 = !DILocalVariable(name: "supported_modes", arg: 2, scope: !5287, file: !3, line: 566, type: !215)
!5796 = !DILocation(line: 566, column: 20, scope: !5287)
!5797 = !DILocalVariable(name: "dev", scope: !5287, file: !3, line: 568, type: !12)
!5798 = !DILocation(line: 568, column: 21, scope: !5287)
!5799 = !DILocation(line: 568, column: 27, scope: !5287)
!5800 = !DILocation(line: 568, column: 34, scope: !5287)
!5801 = !DILocalVariable(name: "prop", scope: !5287, file: !3, line: 569, type: !4053)
!5802 = !DILocation(line: 569, column: 23, scope: !5287)
!5803 = !DILocalVariable(name: "valid_mode_mask", scope: !5287, file: !3, line: 575, type: !215)
!5804 = !DILocation(line: 575, column: 15, scope: !5287)
!5805 = !DILocalVariable(name: "i", scope: !5287, file: !3, line: 578, type: !6)
!5806 = !DILocation(line: 578, column: 6, scope: !5287)
!5807 = !DILocalVariable(name: "__ret_warn_on", scope: !5808, file: !3, line: 580, type: !6)
!5808 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 580, column: 6)
!5809 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 580, column: 6)
!5810 = !DILocation(line: 580, column: 6, scope: !5808)
!5811 = !DILocation(line: 580, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 580, column: 6)
!5813 = !DILocation(line: 580, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 580, column: 6)
!5815 = !DILocation(line: 580, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 580, column: 6)
!5817 = !DILocation(line: 580, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 580, column: 6)
!5819 = !{i32 -2140660752, i32 -2140660723, i32 -2140660677, i32 -2140660619, i32 -2140660565, i32 -2140660511, i32 -2140660456, i32 -2140660425}
!5820 = !DILocation(line: 580, column: 6, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 580, column: 6)
!5822 = !{i32 -2140660016, i32 -2140660009, i32 -2140659957, i32 -2140659926, i32 -2140659896}
!5823 = !DILocation(line: 580, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 580, column: 6)
!5825 = !DILocation(line: 580, column: 6, scope: !5809)
!5826 = !DILocation(line: 580, column: 6, scope: !5287)
!5827 = !DILocation(line: 582, column: 3, scope: !5809)
!5828 = !DILocation(line: 584, column: 29, scope: !5287)
!5829 = !DILocation(line: 586, column: 8, scope: !5287)
!5830 = !DILocation(line: 21, column: 15, scope: !5785, inlinedAt: !5790)
!5831 = !DILocation(line: 19, column: 2, scope: !5785, inlinedAt: !5790)
!5832 = !{i32 -2147082169, i32 -2147082141, i32 -2147082135, i32 -2147082119, i32 -2147082103, i32 -2147082076, i32 -2147081743, i32 -2147082461, i32 -2147081737, i32 -2147081689, i32 -2147081625, i32 -2147081563, i32 -2147081506, i32 -2147081450, i32 -2147082381, i32 -2147082356, i32 -2147081216, i32 -2147081086, i32 -2147081155, i32 -2147081072, i32 -2147082256}
!5833 = !DILocation(line: 23, column: 9, scope: !5785, inlinedAt: !5790)
!5834 = !DILocation(line: 584, column: 9, scope: !5287)
!5835 = !DILocation(line: 584, column: 7, scope: !5287)
!5836 = !DILocation(line: 587, column: 7, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 587, column: 6)
!5838 = !DILocation(line: 587, column: 6, scope: !5287)
!5839 = !DILocation(line: 588, column: 3, scope: !5837)
!5840 = !DILocation(line: 590, column: 9, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 590, column: 2)
!5842 = !DILocation(line: 590, column: 7, scope: !5841)
!5843 = !DILocation(line: 590, column: 14, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 590, column: 2)
!5845 = !DILocation(line: 590, column: 16, scope: !5844)
!5846 = !DILocation(line: 590, column: 2, scope: !5841)
!5847 = !DILocalVariable(name: "ret", scope: !5848, file: !3, line: 591, type: !6)
!5848 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 590, column: 42)
!5849 = !DILocation(line: 591, column: 7, scope: !5848)
!5850 = !DILocation(line: 593, column: 9, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 593, column: 7)
!5852 = !DILocation(line: 593, column: 30, scope: !5851)
!5853 = !DILocation(line: 593, column: 28, scope: !5851)
!5854 = !DILocation(line: 593, column: 7, scope: !5848)
!5855 = !DILocation(line: 594, column: 4, scope: !5851)
!5856 = !DILocation(line: 596, column: 31, scope: !5848)
!5857 = !DILocation(line: 596, column: 43, scope: !5848)
!5858 = !DILocation(line: 596, column: 37, scope: !5848)
!5859 = !DILocation(line: 596, column: 46, scope: !5848)
!5860 = !DILocation(line: 597, column: 16, scope: !5848)
!5861 = !DILocation(line: 597, column: 10, scope: !5848)
!5862 = !DILocation(line: 597, column: 19, scope: !5848)
!5863 = !DILocation(line: 596, column: 9, scope: !5848)
!5864 = !DILocation(line: 596, column: 7, scope: !5848)
!5865 = !DILocation(line: 599, column: 7, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 599, column: 7)
!5867 = !DILocation(line: 599, column: 7, scope: !5848)
!5868 = !DILocation(line: 600, column: 25, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 599, column: 12)
!5870 = !DILocation(line: 600, column: 30, scope: !5869)
!5871 = !DILocation(line: 600, column: 4, scope: !5869)
!5872 = !DILocation(line: 602, column: 11, scope: !5869)
!5873 = !DILocation(line: 602, column: 4, scope: !5869)
!5874 = !DILocation(line: 604, column: 2, scope: !5848)
!5875 = !DILocation(line: 590, column: 38, scope: !5844)
!5876 = !DILocation(line: 590, column: 2, scope: !5844)
!5877 = distinct !{!5877, !5846, !5878}
!5878 = !DILocation(line: 604, column: 2, scope: !5841)
!5879 = !DILocation(line: 606, column: 30, scope: !5287)
!5880 = !DILocation(line: 606, column: 37, scope: !5287)
!5881 = !DILocation(line: 606, column: 43, scope: !5287)
!5882 = !DILocation(line: 606, column: 2, scope: !5287)
!5883 = !DILocation(line: 607, column: 31, scope: !5287)
!5884 = !DILocation(line: 607, column: 2, scope: !5287)
!5885 = !DILocation(line: 607, column: 9, scope: !5287)
!5886 = !DILocation(line: 607, column: 29, scope: !5287)
!5887 = !DILocation(line: 609, column: 2, scope: !5287)
!5888 = !DILocation(line: 610, column: 1, scope: !5287)
!5889 = distinct !DISubprogram(name: "drm_crtc_index", scope: !4268, file: !4268, line: 1220, type: !5890, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!215, !5892}
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!5894 = !DILocalVariable(name: "crtc", arg: 1, scope: !5889, file: !4268, line: 1220, type: !5892)
!5895 = !DILocation(line: 1220, column: 66, scope: !5889)
!5896 = !DILocation(line: 1222, column: 9, scope: !5889)
!5897 = !DILocation(line: 1222, column: 15, scope: !5889)
!5898 = !DILocation(line: 1222, column: 2, scope: !5889)
!5899 = distinct !DISubprogram(name: "kmalloc_array", scope: !5276, file: !5276, line: 584, type: !5900, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!175, !148, !148, !627}
!5902 = !DILocalVariable(name: "s", arg: 1, scope: !5903, file: !5276, line: 445, type: !815)
!5903 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !5276, file: !5276, line: 445, type: !5904, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!175, !815, !627, !148}
!5906 = !DILocation(line: 445, column: 72, scope: !5903, inlinedAt: !5907)
!5907 = distinct !DILocation(line: 552, column: 10, scope: !5908, inlinedAt: !5913)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !5276, line: 540, column: 34)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !5276, line: 540, column: 6)
!5910 = distinct !DISubprogram(name: "kmalloc", scope: !5276, file: !5276, line: 538, type: !5911, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!175, !148, !627}
!5913 = distinct !DILocation(line: 591, column: 10, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5899, file: !5276, line: 590, column: 6)
!5915 = !DILocalVariable(name: "flags", arg: 2, scope: !5903, file: !5276, line: 446, type: !627)
!5916 = !DILocation(line: 446, column: 9, scope: !5903, inlinedAt: !5907)
!5917 = !DILocalVariable(name: "size", arg: 3, scope: !5903, file: !5276, line: 446, type: !148)
!5918 = !DILocation(line: 446, column: 23, scope: !5903, inlinedAt: !5907)
!5919 = !DILocalVariable(name: "ret", scope: !5903, file: !5276, line: 448, type: !175)
!5920 = !DILocation(line: 448, column: 8, scope: !5903, inlinedAt: !5907)
!5921 = !DILocalVariable(name: "flags", arg: 1, scope: !5922, file: !5276, line: 318, type: !627)
!5922 = distinct !DISubprogram(name: "kmalloc_type", scope: !5276, file: !5276, line: 318, type: !5923, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!5275, !627}
!5925 = !DILocation(line: 318, column: 67, scope: !5922, inlinedAt: !5926)
!5926 = distinct !DILocation(line: 553, column: 20, scope: !5908, inlinedAt: !5913)
!5927 = !DILocalVariable(name: "size", arg: 1, scope: !5928, file: !5276, line: 346, type: !148)
!5928 = distinct !DISubprogram(name: "kmalloc_index", scope: !5276, file: !5276, line: 346, type: !5929, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!215, !148}
!5931 = !DILocation(line: 346, column: 58, scope: !5928, inlinedAt: !5932)
!5932 = distinct !DILocation(line: 547, column: 11, scope: !5908, inlinedAt: !5913)
!5933 = !DILocalVariable(name: "size", arg: 1, scope: !5934, file: !5276, line: 472, type: !148)
!5934 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !5276, file: !5276, line: 472, type: !5935, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!175, !148, !627, !215}
!5937 = !DILocation(line: 472, column: 28, scope: !5934, inlinedAt: !5938)
!5938 = distinct !DILocation(line: 481, column: 9, scope: !5939, inlinedAt: !5940)
!5939 = distinct !DISubprogram(name: "kmalloc_large", scope: !5276, file: !5276, line: 478, type: !5911, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!5940 = distinct !DILocation(line: 545, column: 11, scope: !5941, inlinedAt: !5913)
!5941 = distinct !DILexicalBlock(scope: !5908, file: !5276, line: 544, column: 7)
!5942 = !DILocalVariable(name: "flags", arg: 2, scope: !5934, file: !5276, line: 472, type: !627)
!5943 = !DILocation(line: 472, column: 40, scope: !5934, inlinedAt: !5938)
!5944 = !DILocalVariable(name: "order", arg: 3, scope: !5934, file: !5276, line: 472, type: !215)
!5945 = !DILocation(line: 472, column: 60, scope: !5934, inlinedAt: !5938)
!5946 = !DILocalVariable(name: "size", arg: 1, scope: !5939, file: !5276, line: 478, type: !148)
!5947 = !DILocation(line: 478, column: 51, scope: !5939, inlinedAt: !5940)
!5948 = !DILocalVariable(name: "flags", arg: 2, scope: !5939, file: !5276, line: 478, type: !627)
!5949 = !DILocation(line: 478, column: 63, scope: !5939, inlinedAt: !5940)
!5950 = !DILocalVariable(name: "order", scope: !5939, file: !5276, line: 480, type: !215)
!5951 = !DILocation(line: 480, column: 15, scope: !5939, inlinedAt: !5940)
!5952 = !DILocalVariable(name: "size", arg: 1, scope: !5910, file: !5276, line: 538, type: !148)
!5953 = !DILocation(line: 538, column: 45, scope: !5910, inlinedAt: !5913)
!5954 = !DILocalVariable(name: "flags", arg: 2, scope: !5910, file: !5276, line: 538, type: !627)
!5955 = !DILocation(line: 538, column: 57, scope: !5910, inlinedAt: !5913)
!5956 = !DILocalVariable(name: "index", scope: !5908, file: !5276, line: 542, type: !215)
!5957 = !DILocation(line: 542, column: 16, scope: !5908, inlinedAt: !5913)
!5958 = !DILocalVariable(name: "n", arg: 1, scope: !5899, file: !5276, line: 584, type: !148)
!5959 = !DILocation(line: 584, column: 42, scope: !5899)
!5960 = !DILocalVariable(name: "size", arg: 2, scope: !5899, file: !5276, line: 584, type: !148)
!5961 = !DILocation(line: 584, column: 52, scope: !5899)
!5962 = !DILocalVariable(name: "flags", arg: 3, scope: !5899, file: !5276, line: 584, type: !627)
!5963 = !DILocation(line: 584, column: 64, scope: !5899)
!5964 = !DILocalVariable(name: "bytes", scope: !5899, file: !5276, line: 586, type: !148)
!5965 = !DILocation(line: 586, column: 9, scope: !5899)
!5966 = !DILocalVariable(name: "__a", scope: !5967, file: !5276, line: 588, type: !148)
!5967 = distinct !DILexicalBlock(scope: !5968, file: !5276, line: 588, column: 6)
!5968 = distinct !DILexicalBlock(scope: !5899, file: !5276, line: 588, column: 6)
!5969 = !DILocation(line: 588, column: 6, scope: !5967)
!5970 = !DILocalVariable(name: "__b", scope: !5967, file: !5276, line: 588, type: !148)
!5971 = !DILocalVariable(name: "__d", scope: !5967, file: !5276, line: 588, type: !4887)
!5972 = !DILocation(line: 588, column: 6, scope: !5968)
!5973 = !DILocation(line: 588, column: 6, scope: !5899)
!5974 = !DILocation(line: 589, column: 3, scope: !5968)
!5975 = !DILocation(line: 590, column: 27, scope: !5914)
!5976 = !DILocation(line: 590, column: 6, scope: !5914)
!5977 = !DILocation(line: 590, column: 30, scope: !5914)
!5978 = !DILocation(line: 590, column: 54, scope: !5914)
!5979 = !DILocation(line: 590, column: 33, scope: !5914)
!5980 = !DILocation(line: 590, column: 6, scope: !5899)
!5981 = !DILocation(line: 591, column: 18, scope: !5914)
!5982 = !DILocation(line: 591, column: 25, scope: !5914)
!5983 = !DILocation(line: 540, column: 27, scope: !5909, inlinedAt: !5913)
!5984 = !DILocation(line: 540, column: 6, scope: !5909, inlinedAt: !5913)
!5985 = !DILocation(line: 540, column: 6, scope: !5910, inlinedAt: !5913)
!5986 = !DILocation(line: 544, column: 7, scope: !5941, inlinedAt: !5913)
!5987 = !DILocation(line: 544, column: 12, scope: !5941, inlinedAt: !5913)
!5988 = !DILocation(line: 544, column: 7, scope: !5908, inlinedAt: !5913)
!5989 = !DILocation(line: 545, column: 25, scope: !5941, inlinedAt: !5913)
!5990 = !DILocation(line: 545, column: 31, scope: !5941, inlinedAt: !5913)
!5991 = !DILocation(line: 480, column: 33, scope: !5939, inlinedAt: !5940)
!5992 = !DILocation(line: 480, column: 23, scope: !5939, inlinedAt: !5940)
!5993 = !DILocation(line: 481, column: 29, scope: !5939, inlinedAt: !5940)
!5994 = !DILocation(line: 481, column: 35, scope: !5939, inlinedAt: !5940)
!5995 = !DILocation(line: 481, column: 42, scope: !5939, inlinedAt: !5940)
!5996 = !DILocation(line: 474, column: 23, scope: !5934, inlinedAt: !5938)
!5997 = !DILocation(line: 474, column: 29, scope: !5934, inlinedAt: !5938)
!5998 = !DILocation(line: 474, column: 36, scope: !5934, inlinedAt: !5938)
!5999 = !DILocation(line: 474, column: 9, scope: !5934, inlinedAt: !5938)
!6000 = !DILocation(line: 545, column: 4, scope: !5941, inlinedAt: !5913)
!6001 = !DILocation(line: 547, column: 25, scope: !5908, inlinedAt: !5913)
!6002 = !DILocation(line: 348, column: 7, scope: !6003, inlinedAt: !5932)
!6003 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 348, column: 6)
!6004 = !DILocation(line: 348, column: 6, scope: !5928, inlinedAt: !5932)
!6005 = !DILocation(line: 349, column: 3, scope: !6003, inlinedAt: !5932)
!6006 = !DILocation(line: 351, column: 6, scope: !6007, inlinedAt: !5932)
!6007 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 351, column: 6)
!6008 = !DILocation(line: 351, column: 11, scope: !6007, inlinedAt: !5932)
!6009 = !DILocation(line: 351, column: 6, scope: !5928, inlinedAt: !5932)
!6010 = !DILocation(line: 352, column: 3, scope: !6007, inlinedAt: !5932)
!6011 = !DILocation(line: 354, column: 32, scope: !6012, inlinedAt: !5932)
!6012 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 354, column: 6)
!6013 = !DILocation(line: 354, column: 37, scope: !6012, inlinedAt: !5932)
!6014 = !DILocation(line: 354, column: 42, scope: !6012, inlinedAt: !5932)
!6015 = !DILocation(line: 354, column: 45, scope: !6012, inlinedAt: !5932)
!6016 = !DILocation(line: 354, column: 50, scope: !6012, inlinedAt: !5932)
!6017 = !DILocation(line: 354, column: 6, scope: !5928, inlinedAt: !5932)
!6018 = !DILocation(line: 355, column: 3, scope: !6012, inlinedAt: !5932)
!6019 = !DILocation(line: 356, column: 32, scope: !6020, inlinedAt: !5932)
!6020 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 356, column: 6)
!6021 = !DILocation(line: 356, column: 37, scope: !6020, inlinedAt: !5932)
!6022 = !DILocation(line: 356, column: 43, scope: !6020, inlinedAt: !5932)
!6023 = !DILocation(line: 356, column: 46, scope: !6020, inlinedAt: !5932)
!6024 = !DILocation(line: 356, column: 51, scope: !6020, inlinedAt: !5932)
!6025 = !DILocation(line: 356, column: 6, scope: !5928, inlinedAt: !5932)
!6026 = !DILocation(line: 357, column: 3, scope: !6020, inlinedAt: !5932)
!6027 = !DILocation(line: 358, column: 6, scope: !6028, inlinedAt: !5932)
!6028 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 358, column: 6)
!6029 = !DILocation(line: 358, column: 11, scope: !6028, inlinedAt: !5932)
!6030 = !DILocation(line: 358, column: 6, scope: !5928, inlinedAt: !5932)
!6031 = !DILocation(line: 358, column: 26, scope: !6028, inlinedAt: !5932)
!6032 = !DILocation(line: 359, column: 6, scope: !6033, inlinedAt: !5932)
!6033 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 359, column: 6)
!6034 = !DILocation(line: 359, column: 11, scope: !6033, inlinedAt: !5932)
!6035 = !DILocation(line: 359, column: 6, scope: !5928, inlinedAt: !5932)
!6036 = !DILocation(line: 359, column: 26, scope: !6033, inlinedAt: !5932)
!6037 = !DILocation(line: 360, column: 6, scope: !6038, inlinedAt: !5932)
!6038 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 360, column: 6)
!6039 = !DILocation(line: 360, column: 11, scope: !6038, inlinedAt: !5932)
!6040 = !DILocation(line: 360, column: 6, scope: !5928, inlinedAt: !5932)
!6041 = !DILocation(line: 360, column: 26, scope: !6038, inlinedAt: !5932)
!6042 = !DILocation(line: 361, column: 6, scope: !6043, inlinedAt: !5932)
!6043 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 361, column: 6)
!6044 = !DILocation(line: 361, column: 11, scope: !6043, inlinedAt: !5932)
!6045 = !DILocation(line: 361, column: 6, scope: !5928, inlinedAt: !5932)
!6046 = !DILocation(line: 361, column: 26, scope: !6043, inlinedAt: !5932)
!6047 = !DILocation(line: 362, column: 6, scope: !6048, inlinedAt: !5932)
!6048 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 362, column: 6)
!6049 = !DILocation(line: 362, column: 11, scope: !6048, inlinedAt: !5932)
!6050 = !DILocation(line: 362, column: 6, scope: !5928, inlinedAt: !5932)
!6051 = !DILocation(line: 362, column: 26, scope: !6048, inlinedAt: !5932)
!6052 = !DILocation(line: 363, column: 6, scope: !6053, inlinedAt: !5932)
!6053 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 363, column: 6)
!6054 = !DILocation(line: 363, column: 11, scope: !6053, inlinedAt: !5932)
!6055 = !DILocation(line: 363, column: 6, scope: !5928, inlinedAt: !5932)
!6056 = !DILocation(line: 363, column: 26, scope: !6053, inlinedAt: !5932)
!6057 = !DILocation(line: 364, column: 6, scope: !6058, inlinedAt: !5932)
!6058 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 364, column: 6)
!6059 = !DILocation(line: 364, column: 11, scope: !6058, inlinedAt: !5932)
!6060 = !DILocation(line: 364, column: 6, scope: !5928, inlinedAt: !5932)
!6061 = !DILocation(line: 364, column: 26, scope: !6058, inlinedAt: !5932)
!6062 = !DILocation(line: 365, column: 6, scope: !6063, inlinedAt: !5932)
!6063 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 365, column: 6)
!6064 = !DILocation(line: 365, column: 11, scope: !6063, inlinedAt: !5932)
!6065 = !DILocation(line: 365, column: 6, scope: !5928, inlinedAt: !5932)
!6066 = !DILocation(line: 365, column: 26, scope: !6063, inlinedAt: !5932)
!6067 = !DILocation(line: 366, column: 6, scope: !6068, inlinedAt: !5932)
!6068 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 366, column: 6)
!6069 = !DILocation(line: 366, column: 11, scope: !6068, inlinedAt: !5932)
!6070 = !DILocation(line: 366, column: 6, scope: !5928, inlinedAt: !5932)
!6071 = !DILocation(line: 366, column: 26, scope: !6068, inlinedAt: !5932)
!6072 = !DILocation(line: 367, column: 6, scope: !6073, inlinedAt: !5932)
!6073 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 367, column: 6)
!6074 = !DILocation(line: 367, column: 11, scope: !6073, inlinedAt: !5932)
!6075 = !DILocation(line: 367, column: 6, scope: !5928, inlinedAt: !5932)
!6076 = !DILocation(line: 367, column: 26, scope: !6073, inlinedAt: !5932)
!6077 = !DILocation(line: 368, column: 6, scope: !6078, inlinedAt: !5932)
!6078 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 368, column: 6)
!6079 = !DILocation(line: 368, column: 11, scope: !6078, inlinedAt: !5932)
!6080 = !DILocation(line: 368, column: 6, scope: !5928, inlinedAt: !5932)
!6081 = !DILocation(line: 368, column: 26, scope: !6078, inlinedAt: !5932)
!6082 = !DILocation(line: 369, column: 6, scope: !6083, inlinedAt: !5932)
!6083 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 369, column: 6)
!6084 = !DILocation(line: 369, column: 11, scope: !6083, inlinedAt: !5932)
!6085 = !DILocation(line: 369, column: 6, scope: !5928, inlinedAt: !5932)
!6086 = !DILocation(line: 369, column: 26, scope: !6083, inlinedAt: !5932)
!6087 = !DILocation(line: 370, column: 6, scope: !6088, inlinedAt: !5932)
!6088 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 370, column: 6)
!6089 = !DILocation(line: 370, column: 11, scope: !6088, inlinedAt: !5932)
!6090 = !DILocation(line: 370, column: 6, scope: !5928, inlinedAt: !5932)
!6091 = !DILocation(line: 370, column: 26, scope: !6088, inlinedAt: !5932)
!6092 = !DILocation(line: 371, column: 6, scope: !6093, inlinedAt: !5932)
!6093 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 371, column: 6)
!6094 = !DILocation(line: 371, column: 11, scope: !6093, inlinedAt: !5932)
!6095 = !DILocation(line: 371, column: 6, scope: !5928, inlinedAt: !5932)
!6096 = !DILocation(line: 371, column: 26, scope: !6093, inlinedAt: !5932)
!6097 = !DILocation(line: 372, column: 6, scope: !6098, inlinedAt: !5932)
!6098 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 372, column: 6)
!6099 = !DILocation(line: 372, column: 11, scope: !6098, inlinedAt: !5932)
!6100 = !DILocation(line: 372, column: 6, scope: !5928, inlinedAt: !5932)
!6101 = !DILocation(line: 372, column: 26, scope: !6098, inlinedAt: !5932)
!6102 = !DILocation(line: 373, column: 6, scope: !6103, inlinedAt: !5932)
!6103 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 373, column: 6)
!6104 = !DILocation(line: 373, column: 11, scope: !6103, inlinedAt: !5932)
!6105 = !DILocation(line: 373, column: 6, scope: !5928, inlinedAt: !5932)
!6106 = !DILocation(line: 373, column: 26, scope: !6103, inlinedAt: !5932)
!6107 = !DILocation(line: 374, column: 6, scope: !6108, inlinedAt: !5932)
!6108 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 374, column: 6)
!6109 = !DILocation(line: 374, column: 11, scope: !6108, inlinedAt: !5932)
!6110 = !DILocation(line: 374, column: 6, scope: !5928, inlinedAt: !5932)
!6111 = !DILocation(line: 374, column: 26, scope: !6108, inlinedAt: !5932)
!6112 = !DILocation(line: 375, column: 6, scope: !6113, inlinedAt: !5932)
!6113 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 375, column: 6)
!6114 = !DILocation(line: 375, column: 11, scope: !6113, inlinedAt: !5932)
!6115 = !DILocation(line: 375, column: 6, scope: !5928, inlinedAt: !5932)
!6116 = !DILocation(line: 375, column: 27, scope: !6113, inlinedAt: !5932)
!6117 = !DILocation(line: 376, column: 6, scope: !6118, inlinedAt: !5932)
!6118 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 376, column: 6)
!6119 = !DILocation(line: 376, column: 11, scope: !6118, inlinedAt: !5932)
!6120 = !DILocation(line: 376, column: 6, scope: !5928, inlinedAt: !5932)
!6121 = !DILocation(line: 376, column: 32, scope: !6118, inlinedAt: !5932)
!6122 = !DILocation(line: 377, column: 6, scope: !6123, inlinedAt: !5932)
!6123 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 377, column: 6)
!6124 = !DILocation(line: 377, column: 11, scope: !6123, inlinedAt: !5932)
!6125 = !DILocation(line: 377, column: 6, scope: !5928, inlinedAt: !5932)
!6126 = !DILocation(line: 377, column: 32, scope: !6123, inlinedAt: !5932)
!6127 = !DILocation(line: 378, column: 6, scope: !6128, inlinedAt: !5932)
!6128 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 378, column: 6)
!6129 = !DILocation(line: 378, column: 11, scope: !6128, inlinedAt: !5932)
!6130 = !DILocation(line: 378, column: 6, scope: !5928, inlinedAt: !5932)
!6131 = !DILocation(line: 378, column: 32, scope: !6128, inlinedAt: !5932)
!6132 = !DILocation(line: 379, column: 6, scope: !6133, inlinedAt: !5932)
!6133 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 379, column: 6)
!6134 = !DILocation(line: 379, column: 11, scope: !6133, inlinedAt: !5932)
!6135 = !DILocation(line: 379, column: 6, scope: !5928, inlinedAt: !5932)
!6136 = !DILocation(line: 379, column: 33, scope: !6133, inlinedAt: !5932)
!6137 = !DILocation(line: 380, column: 6, scope: !6138, inlinedAt: !5932)
!6138 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 380, column: 6)
!6139 = !DILocation(line: 380, column: 11, scope: !6138, inlinedAt: !5932)
!6140 = !DILocation(line: 380, column: 6, scope: !5928, inlinedAt: !5932)
!6141 = !DILocation(line: 380, column: 33, scope: !6138, inlinedAt: !5932)
!6142 = !DILocation(line: 381, column: 6, scope: !6143, inlinedAt: !5932)
!6143 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 381, column: 6)
!6144 = !DILocation(line: 381, column: 11, scope: !6143, inlinedAt: !5932)
!6145 = !DILocation(line: 381, column: 6, scope: !5928, inlinedAt: !5932)
!6146 = !DILocation(line: 381, column: 33, scope: !6143, inlinedAt: !5932)
!6147 = !DILocation(line: 382, column: 2, scope: !6148, inlinedAt: !5932)
!6148 = distinct !DILexicalBlock(scope: !6149, file: !5276, line: 382, column: 2)
!6149 = distinct !DILexicalBlock(scope: !5928, file: !5276, line: 382, column: 2)
!6150 = !{i32 -2144634014, i32 -2144633985, i32 -2144633939, i32 -2144633881, i32 -2144633827, i32 -2144633773, i32 -2144633718, i32 -2144633687}
!6151 = !DILocation(line: 382, column: 2, scope: !6152, inlinedAt: !5932)
!6152 = distinct !DILexicalBlock(scope: !6153, file: !5276, line: 382, column: 2)
!6153 = distinct !DILexicalBlock(scope: !6149, file: !5276, line: 382, column: 2)
!6154 = !{i32 -2144633244, i32 -2144633237, i32 -2144633183, i32 -2144633152, i32 -2144633122}
!6155 = !DILocation(line: 382, column: 2, scope: !6153, inlinedAt: !5932)
!6156 = !DILocation(line: 386, column: 1, scope: !5928, inlinedAt: !5932)
!6157 = !DILocation(line: 547, column: 9, scope: !5908, inlinedAt: !5913)
!6158 = !DILocation(line: 549, column: 8, scope: !6159, inlinedAt: !5913)
!6159 = distinct !DILexicalBlock(scope: !5908, file: !5276, line: 549, column: 7)
!6160 = !DILocation(line: 549, column: 7, scope: !5908, inlinedAt: !5913)
!6161 = !DILocation(line: 550, column: 4, scope: !6159, inlinedAt: !5913)
!6162 = !DILocation(line: 553, column: 33, scope: !5908, inlinedAt: !5913)
!6163 = !DILocation(line: 325, column: 6, scope: !6164, inlinedAt: !5926)
!6164 = distinct !DILexicalBlock(scope: !5922, file: !5276, line: 325, column: 6)
!6165 = !DILocation(line: 325, column: 6, scope: !5922, inlinedAt: !5926)
!6166 = !DILocation(line: 326, column: 3, scope: !6164, inlinedAt: !5926)
!6167 = !DILocation(line: 332, column: 9, scope: !5922, inlinedAt: !5926)
!6168 = !DILocation(line: 332, column: 15, scope: !5922, inlinedAt: !5926)
!6169 = !DILocation(line: 332, column: 2, scope: !5922, inlinedAt: !5926)
!6170 = !DILocation(line: 336, column: 1, scope: !5922, inlinedAt: !5926)
!6171 = !DILocation(line: 553, column: 5, scope: !5908, inlinedAt: !5913)
!6172 = !DILocation(line: 553, column: 41, scope: !5908, inlinedAt: !5913)
!6173 = !DILocation(line: 554, column: 5, scope: !5908, inlinedAt: !5913)
!6174 = !DILocation(line: 554, column: 12, scope: !5908, inlinedAt: !5913)
!6175 = !DILocation(line: 448, column: 31, scope: !5903, inlinedAt: !5907)
!6176 = !DILocation(line: 448, column: 34, scope: !5903, inlinedAt: !5907)
!6177 = !DILocation(line: 448, column: 14, scope: !5903, inlinedAt: !5907)
!6178 = !DILocation(line: 450, column: 22, scope: !5903, inlinedAt: !5907)
!6179 = !DILocation(line: 450, column: 25, scope: !5903, inlinedAt: !5907)
!6180 = !DILocation(line: 450, column: 30, scope: !5903, inlinedAt: !5907)
!6181 = !DILocation(line: 450, column: 36, scope: !5903, inlinedAt: !5907)
!6182 = !DILocation(line: 450, column: 8, scope: !5903, inlinedAt: !5907)
!6183 = !DILocation(line: 450, column: 6, scope: !5903, inlinedAt: !5907)
!6184 = !DILocation(line: 451, column: 9, scope: !5903, inlinedAt: !5907)
!6185 = !DILocation(line: 552, column: 3, scope: !5908, inlinedAt: !5913)
!6186 = !DILocation(line: 557, column: 19, scope: !5910, inlinedAt: !5913)
!6187 = !DILocation(line: 557, column: 25, scope: !5910, inlinedAt: !5913)
!6188 = !DILocation(line: 557, column: 9, scope: !5910, inlinedAt: !5913)
!6189 = !DILocation(line: 557, column: 2, scope: !5910, inlinedAt: !5913)
!6190 = !DILocation(line: 558, column: 1, scope: !5910, inlinedAt: !5913)
!6191 = !DILocation(line: 591, column: 3, scope: !5914)
!6192 = !DILocation(line: 592, column: 19, scope: !5899)
!6193 = !DILocation(line: 592, column: 26, scope: !5899)
!6194 = !DILocation(line: 592, column: 9, scope: !5899)
!6195 = !DILocation(line: 592, column: 2, scope: !5899)
!6196 = !DILocation(line: 593, column: 1, scope: !5899)
!6197 = distinct !DISubprogram(name: "drm_plane_mask", scope: !9, file: !9, line: 765, type: !6198, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!245, !6200}
!6200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6201, size: 64)
!6201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!6202 = !DILocalVariable(name: "plane", arg: 1, scope: !6197, file: !9, line: 765, type: !6200)
!6203 = !DILocation(line: 765, column: 58, scope: !6197)
!6204 = !DILocation(line: 767, column: 30, scope: !6197)
!6205 = !DILocation(line: 767, column: 14, scope: !6197)
!6206 = !DILocation(line: 767, column: 11, scope: !6197)
!6207 = !DILocation(line: 767, column: 2, scope: !6197)
!6208 = distinct !DISubprogram(name: "IS_ERR", scope: !6209, file: !6209, line: 34, type: !6210, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6209 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!320, !2069}
!6212 = !DILocalVariable(name: "ptr", arg: 1, scope: !6208, file: !6209, line: 34, type: !2069)
!6213 = !DILocation(line: 34, column: 60, scope: !6208)
!6214 = !DILocation(line: 36, column: 9, scope: !6208)
!6215 = !DILocation(line: 36, column: 2, scope: !6208)
!6216 = distinct !DISubprogram(name: "PTR_ERR", scope: !6209, file: !6209, line: 29, type: !6217, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!136, !2069}
!6219 = !DILocalVariable(name: "ptr", arg: 1, scope: !6216, file: !6209, line: 29, type: !2069)
!6220 = !DILocation(line: 29, column: 61, scope: !6216)
!6221 = !DILocation(line: 31, column: 16, scope: !6216)
!6222 = !DILocation(line: 31, column: 9, scope: !6216)
!6223 = !DILocation(line: 31, column: 2, scope: !6216)
!6224 = distinct !DISubprogram(name: "drm_atomic_state_zpos_cmp", scope: !3, file: !3, line: 424, type: !6225, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!6, !2069, !2069}
!6227 = !DILocalVariable(name: "a", arg: 1, scope: !6224, file: !3, line: 424, type: !2069)
!6228 = !DILocation(line: 424, column: 50, scope: !6224)
!6229 = !DILocalVariable(name: "b", arg: 2, scope: !6224, file: !3, line: 424, type: !2069)
!6230 = !DILocation(line: 424, column: 65, scope: !6224)
!6231 = !DILocalVariable(name: "sa", scope: !6224, file: !3, line: 426, type: !5222)
!6232 = !DILocation(line: 426, column: 32, scope: !6224)
!6233 = !DILocation(line: 426, column: 65, scope: !6224)
!6234 = !DILocation(line: 426, column: 38, scope: !6224)
!6235 = !DILocation(line: 426, column: 37, scope: !6224)
!6236 = !DILocalVariable(name: "sb", scope: !6224, file: !3, line: 427, type: !5222)
!6237 = !DILocation(line: 427, column: 32, scope: !6224)
!6238 = !DILocation(line: 427, column: 65, scope: !6224)
!6239 = !DILocation(line: 427, column: 38, scope: !6224)
!6240 = !DILocation(line: 427, column: 37, scope: !6224)
!6241 = !DILocation(line: 429, column: 6, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 429, column: 6)
!6243 = !DILocation(line: 429, column: 10, scope: !6242)
!6244 = !DILocation(line: 429, column: 18, scope: !6242)
!6245 = !DILocation(line: 429, column: 22, scope: !6242)
!6246 = !DILocation(line: 429, column: 15, scope: !6242)
!6247 = !DILocation(line: 429, column: 6, scope: !6224)
!6248 = !DILocation(line: 430, column: 10, scope: !6242)
!6249 = !DILocation(line: 430, column: 14, scope: !6242)
!6250 = !DILocation(line: 430, column: 21, scope: !6242)
!6251 = !DILocation(line: 430, column: 25, scope: !6242)
!6252 = !DILocation(line: 430, column: 19, scope: !6242)
!6253 = !DILocation(line: 430, column: 3, scope: !6242)
!6254 = !DILocation(line: 432, column: 10, scope: !6242)
!6255 = !DILocation(line: 432, column: 14, scope: !6242)
!6256 = !DILocation(line: 432, column: 21, scope: !6242)
!6257 = !DILocation(line: 432, column: 26, scope: !6242)
!6258 = !DILocation(line: 432, column: 31, scope: !6242)
!6259 = !DILocation(line: 432, column: 35, scope: !6242)
!6260 = !DILocation(line: 432, column: 42, scope: !6242)
!6261 = !DILocation(line: 432, column: 47, scope: !6242)
!6262 = !DILocation(line: 432, column: 29, scope: !6242)
!6263 = !DILocation(line: 432, column: 3, scope: !6242)
!6264 = !DILocation(line: 433, column: 1, scope: !6224)
!6265 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6266, file: !6266, line: 52, type: !6267, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6266 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!320, !320}
!6269 = !DILocalVariable(name: "overflow", arg: 1, scope: !6265, file: !6266, line: 52, type: !320)
!6270 = !DILocation(line: 52, column: 60, scope: !6265)
!6271 = !DILocation(line: 54, column: 9, scope: !6265)
!6272 = !DILocation(line: 54, column: 2, scope: !6265)
!6273 = distinct !DISubprogram(name: "get_order", scope: !6274, file: !6274, line: 29, type: !6275, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6274 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!6, !151}
!6277 = !DILocalVariable(name: "x", arg: 1, scope: !6278, file: !5442, line: 366, type: !252)
!6278 = distinct !DISubprogram(name: "fls64", scope: !5442, file: !5442, line: 366, type: !6279, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6279 = !DISubroutineType(types: !6280)
!6280 = !{!6, !252}
!6281 = !DILocation(line: 366, column: 40, scope: !6278, inlinedAt: !6282)
!6282 = distinct !DILocation(line: 46, column: 9, scope: !6273)
!6283 = !DILocalVariable(name: "bitpos", scope: !6278, file: !5442, line: 368, type: !6)
!6284 = !DILocation(line: 368, column: 6, scope: !6278, inlinedAt: !6282)
!6285 = !DILocalVariable(name: "size", arg: 1, scope: !6273, file: !6274, line: 29, type: !151)
!6286 = !DILocation(line: 29, column: 63, scope: !6273)
!6287 = !DILocation(line: 31, column: 27, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6273, file: !6274, line: 31, column: 6)
!6289 = !DILocation(line: 31, column: 6, scope: !6288)
!6290 = !DILocation(line: 31, column: 6, scope: !6273)
!6291 = !DILocation(line: 32, column: 8, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !6274, line: 32, column: 7)
!6293 = distinct !DILexicalBlock(scope: !6288, file: !6274, line: 31, column: 34)
!6294 = !DILocation(line: 32, column: 7, scope: !6293)
!6295 = !DILocation(line: 33, column: 4, scope: !6292)
!6296 = !DILocation(line: 35, column: 7, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6293, file: !6274, line: 35, column: 7)
!6298 = !DILocation(line: 35, column: 12, scope: !6297)
!6299 = !DILocation(line: 35, column: 7, scope: !6293)
!6300 = !DILocation(line: 36, column: 4, scope: !6297)
!6301 = !DILocation(line: 38, column: 10, scope: !6293)
!6302 = !DILocation(line: 38, column: 28, scope: !6293)
!6303 = !DILocation(line: 38, column: 41, scope: !6293)
!6304 = !DILocation(line: 38, column: 3, scope: !6293)
!6305 = !DILocation(line: 41, column: 6, scope: !6273)
!6306 = !DILocation(line: 42, column: 7, scope: !6273)
!6307 = !DILocation(line: 46, column: 15, scope: !6273)
!6308 = !DILocation(line: 374, column: 2, scope: !6278, inlinedAt: !6282)
!6309 = !DILocation(line: 376, column: 14, scope: !6278, inlinedAt: !6282)
!6310 = !{i32 321298}
!6311 = !DILocation(line: 377, column: 9, scope: !6278, inlinedAt: !6282)
!6312 = !DILocation(line: 377, column: 16, scope: !6278, inlinedAt: !6282)
!6313 = !DILocation(line: 46, column: 2, scope: !6273)
!6314 = !DILocation(line: 48, column: 1, scope: !6273)
!6315 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5422, file: !5422, line: 30, type: !6316, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6316 = !DISubroutineType(types: !6317)
!6317 = !{!6, !251}
!6318 = !DILocation(line: 366, column: 40, scope: !6278, inlinedAt: !6319)
!6319 = distinct !DILocation(line: 32, column: 9, scope: !6315)
!6320 = !DILocation(line: 368, column: 6, scope: !6278, inlinedAt: !6319)
!6321 = !DILocalVariable(name: "n", arg: 1, scope: !6315, file: !5422, line: 30, type: !251)
!6322 = !DILocation(line: 30, column: 21, scope: !6315)
!6323 = !DILocation(line: 32, column: 15, scope: !6315)
!6324 = !DILocation(line: 374, column: 2, scope: !6278, inlinedAt: !6319)
!6325 = !DILocation(line: 376, column: 14, scope: !6278, inlinedAt: !6319)
!6326 = !DILocation(line: 377, column: 9, scope: !6278, inlinedAt: !6319)
!6327 = !DILocation(line: 377, column: 16, scope: !6278, inlinedAt: !6319)
!6328 = !DILocation(line: 32, column: 18, scope: !6315)
!6329 = !DILocation(line: 32, column: 2, scope: !6315)
!6330 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6331, file: !6331, line: 137, type: !6332, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6331 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!175, !815, !2069, !148, !627}
!6334 = !DILocalVariable(name: "s", arg: 1, scope: !6330, file: !6331, line: 137, type: !815)
!6335 = !DILocation(line: 137, column: 54, scope: !6330)
!6336 = !DILocalVariable(name: "object", arg: 2, scope: !6330, file: !6331, line: 137, type: !2069)
!6337 = !DILocation(line: 137, column: 69, scope: !6330)
!6338 = !DILocalVariable(name: "size", arg: 3, scope: !6330, file: !6331, line: 138, type: !148)
!6339 = !DILocation(line: 138, column: 12, scope: !6330)
!6340 = !DILocalVariable(name: "flags", arg: 4, scope: !6330, file: !6331, line: 138, type: !627)
!6341 = !DILocation(line: 138, column: 24, scope: !6330)
!6342 = !DILocation(line: 140, column: 17, scope: !6330)
!6343 = !DILocation(line: 140, column: 2, scope: !6330)
!6344 = distinct !DISubprogram(name: "drm_plane_index", scope: !9, file: !9, line: 756, type: !6345, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5256, retainedNodes: !74)
!6345 = !DISubroutineType(types: !6346)
!6346 = !{!215, !6200}
!6347 = !DILocalVariable(name: "plane", arg: 1, scope: !6344, file: !9, line: 756, type: !6200)
!6348 = !DILocation(line: 756, column: 68, scope: !6344)
!6349 = !DILocation(line: 758, column: 9, scope: !6344)
!6350 = !DILocation(line: 758, column: 16, scope: !6344)
!6351 = !DILocation(line: 758, column: 2, scope: !6344)
