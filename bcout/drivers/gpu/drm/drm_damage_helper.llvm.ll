; ModuleID = '../bcout/drivers/gpu/drm/drm_damage_helper.llvm.bc'
source_filename = "drivers/gpu/drm/drm_damage_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.drm_printer = type opaque
%struct.drm_connector_helper_funcs = type { i32 (%struct.drm_connector*)*, i32 (%struct.drm_connector*, %struct.drm_modeset_acquire_ctx*, i1)*, i32 (%struct.drm_connector*, %struct.drm_display_mode*)*, i32 (%struct.drm_connector*, %struct.drm_display_mode*, %struct.drm_modeset_acquire_ctx*, i32*)*, %struct.drm_encoder* (%struct.drm_connector*)*, %struct.drm_encoder* (%struct.drm_connector*, %struct.drm_connector_state*)*, i32 (%struct.drm_connector*, %struct.drm_atomic_state*)*, void (%struct.drm_connector*, %struct.drm_connector_state*)*, i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, void (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* }
%struct.drm_writeback_connector = type opaque
%struct.drm_writeback_job = type opaque
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, i8*, i32, i32, i32, i32, %struct.drm_crtc*, %struct.list_head, %struct.drm_encoder_funcs*, %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_funcs = type { void (%struct.drm_encoder*)*, void (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)*, void (%struct.drm_encoder*)* }
%struct.drm_encoder_helper_funcs = type { void (%struct.drm_encoder*, i32)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*)*, i1 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, void (%struct.drm_encoder*)*, void (%struct.drm_encoder*)*, void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, void (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)*, i32 (%struct.drm_encoder*, %struct.drm_connector*)*, void (%struct.drm_encoder*, %struct.drm_atomic_state*)*, void (%struct.drm_encoder*, %struct.drm_atomic_state*)*, void (%struct.drm_encoder*)*, void (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* }
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
%struct.__drm_private_objs_state = type { %struct.drm_private_obj*, %struct.drm_private_state*, %struct.drm_private_state*, %struct.drm_private_state* }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, %struct.drm_private_state*, %struct.drm_private_state_funcs* }
%struct.drm_private_state_funcs = type { %struct.drm_private_state* (%struct.drm_private_obj*)*, void (%struct.drm_private_obj*, %struct.drm_private_state*)* }
%struct.drm_private_state = type { %struct.drm_atomic_state* }
%struct.drm_crtc_commit = type { %struct.drm_crtc*, %struct.kref, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, %struct.drm_pending_vblank_event*, i8 }
%struct.drm_mode_config_helper_funcs = type { void (%struct.drm_atomic_state*)* }
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
%struct.drm_crtc_helper_funcs = type { void (%struct.drm_crtc*, i32)*, void (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_display_mode*)*, i1 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*)*, {}*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, i1 (%struct.drm_crtc*, i1, i32*, i32*, i64*, i64*, %struct.drm_display_mode*)* }
%struct.drm_crtc_crc = type { %struct.spinlock, i8*, i8, i8, %struct.drm_crtc_crc_entry*, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.drm_self_refresh_data = type opaque
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, [16 x i8], %struct.drm_format_info*, %struct.drm_framebuffer_funcs*, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x %struct.drm_gem_object*] }
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_gem_object = type opaque
%struct.drm_plane_funcs = type { i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, {}*, {}*, i32 (%struct.drm_plane*, %struct.drm_property*, i64)*, %struct.drm_plane_state* (%struct.drm_plane*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_plane*)*, {}*, void (%struct.drm_printer*, %struct.drm_plane_state*)*, i1 (%struct.drm_plane*, i32, i64)* }
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_plane_helper_funcs = type { i32 (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)* }
%struct.drm_plane_state = type { %struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.dma_fence*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.drm_property_blob*, %struct.drm_rect, %struct.drm_rect, i8, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.dma_fence = type opaque
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, i64*, %struct.drm_device*, %struct.list_head }
%struct.drm_mode_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, %struct.drm_rect*, i32, i32, i8 }

@.str = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/drm_damage_helper.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_plane_enable_fb_damage_clips(%struct.drm_plane* %plane) #0 !dbg !5395 {
entry:
  %plane.addr = alloca %struct.drm_plane*, align 8
  %dev = alloca %struct.drm_device*, align 8
  %config = alloca %struct.drm_mode_config*, align 8
  store %struct.drm_plane* %plane, %struct.drm_plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5398, metadata !DIExpression()), !dbg !5399
  %0 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5400
  %dev1 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %0, i32 0, i32 0, !dbg !5401
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5401
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5399
  call void @llvm.dbg.declare(metadata %struct.drm_mode_config** %config, metadata !5402, metadata !DIExpression()), !dbg !5404
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5405
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 35, !dbg !5406
  store %struct.drm_mode_config* %mode_config, %struct.drm_mode_config** %config, align 8, !dbg !5404
  %3 = load %struct.drm_plane*, %struct.drm_plane** %plane.addr, align 8, !dbg !5407
  %base = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %3, i32 0, i32 4, !dbg !5408
  %4 = load %struct.drm_mode_config*, %struct.drm_mode_config** %config, align 8, !dbg !5409
  %prop_fb_damage_clips = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %4, i32 0, i32 53, !dbg !5410
  %5 = load %struct.drm_property*, %struct.drm_property** %prop_fb_damage_clips, align 8, !dbg !5410
  call void @drm_object_attach_property(%struct.drm_mode_object* %base, %struct.drm_property* %5, i64 0) #7, !dbg !5411
  ret void, !dbg !5412
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @drm_object_attach_property(%struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_atomic_helper_check_plane_damage(%struct.drm_atomic_state* %state, %struct.drm_plane_state* %plane_state) #0 !dbg !5413 {
entry:
  %state.addr = alloca %struct.drm_atomic_state*, align 8
  %plane_state.addr = alloca %struct.drm_plane_state*, align 8
  %crtc_state = alloca %struct.drm_crtc_state*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_atomic_state* %state, %struct.drm_atomic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  store %struct.drm_plane_state* %plane_state, %struct.drm_plane_state** %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %plane_state.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.declare(metadata %struct.drm_crtc_state** %crtc_state, metadata !5420, metadata !DIExpression()), !dbg !5421
  %0 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state.addr, align 8, !dbg !5422
  %crtc = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %0, i32 0, i32 1, !dbg !5424
  %1 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5424
  %tobool = icmp ne %struct.drm_crtc* %1, null, !dbg !5422
  br i1 %tobool, label %if.then, label %if.end31, !dbg !5425

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5426
  %3 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state.addr, align 8, !dbg !5428
  %crtc1 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %3, i32 0, i32 1, !dbg !5429
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc1, align 8, !dbg !5429
  %call = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %2, %struct.drm_crtc* %4) #7, !dbg !5430
  store %struct.drm_crtc_state* %call, %struct.drm_crtc_state** %crtc_state, align 8, !dbg !5431
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5432, metadata !DIExpression()), !dbg !5435
  %5 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %crtc_state, align 8, !dbg !5435
  %tobool2 = icmp ne %struct.drm_crtc_state* %5, null, !dbg !5435
  %lnot = xor i1 %tobool2, true, !dbg !5435
  %lnot3 = xor i1 %lnot, true, !dbg !5435
  %lnot4 = xor i1 %lnot3, true, !dbg !5435
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5435
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5435
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !5436
  %tobool5 = icmp ne i32 %6, 0, !dbg !5436
  %lnot6 = xor i1 %tobool5, true, !dbg !5436
  %lnot8 = xor i1 %lnot6, true, !dbg !5436
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5436
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5436
  %tobool10 = icmp ne i64 %conv, 0, !dbg !5436
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !5435

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !5436

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !5438

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !5440

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !5438

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 129, i32 2305, i64 12) #8, !dbg !5442, !srcloc !5444
  br label %do.end14, !dbg !5442

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #8, !dbg !5445, !srcloc !5447
  br label %do.body15, !dbg !5438

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5448

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !5438

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !5438

if.end:                                           ; preds = %do.end17, %if.then
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5435
  %tobool18 = icmp ne i32 %7, 0, !dbg !5435
  %lnot19 = xor i1 %tobool18, true, !dbg !5435
  %lnot21 = xor i1 %lnot19, true, !dbg !5435
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5435
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5435
  store i64 %conv23, i64* %tmp, align 8, !dbg !5436
  %8 = load i64, i64* %tmp, align 8, !dbg !5435
  %tobool24 = icmp ne i64 %8, 0, !dbg !5450
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5451

if.then25:                                        ; preds = %if.end
  br label %if.end31, !dbg !5452

if.end26:                                         ; preds = %if.end
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %crtc_state, align 8, !dbg !5453
  %call27 = call zeroext i1 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %9) #7, !dbg !5455
  br i1 %call27, label %if.then28, label %if.end30, !dbg !5456

if.then28:                                        ; preds = %if.end26
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state.addr, align 8, !dbg !5457
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 19, !dbg !5459
  %11 = load %struct.drm_property_blob*, %struct.drm_property_blob** %fb_damage_clips, align 8, !dbg !5459
  call void @drm_property_blob_put(%struct.drm_property_blob* %11) #7, !dbg !5460
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state.addr, align 8, !dbg !5461
  %fb_damage_clips29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 19, !dbg !5462
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %fb_damage_clips29, align 8, !dbg !5463
  br label %if.end30, !dbg !5464

if.end30:                                         ; preds = %if.then28, %if.end26
  br label %if.end31, !dbg !5465

if.end31:                                         ; preds = %if.then25, %if.end30, %entry
  ret void, !dbg !5466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %state, %struct.drm_crtc* %crtc) #0 !dbg !5467 {
entry:
  %state.addr = alloca %struct.drm_atomic_state*, align 8
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  store %struct.drm_atomic_state* %state, %struct.drm_atomic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  %0 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5474
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %0, i32 0, i32 4, !dbg !5475
  %1 = load %struct.__drm_crtcs_state*, %struct.__drm_crtcs_state** %crtcs, align 8, !dbg !5475
  %2 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !5476
  %call = call i32 @drm_crtc_index(%struct.drm_crtc* %2) #7, !dbg !5477
  %idxprom = zext i32 %call to i64, !dbg !5474
  %arrayidx = getelementptr %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %1, i64 %idxprom, !dbg !5474
  %new_state = getelementptr inbounds %struct.__drm_crtcs_state, %struct.__drm_crtcs_state* %arrayidx, i32 0, i32 3, !dbg !5478
  %3 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %new_state, align 8, !dbg !5478
  ret %struct.drm_crtc_state* %3, !dbg !5479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %state) #0 !dbg !5480 {
entry:
  %state.addr = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_crtc_state* %state, %struct.drm_crtc_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc_state** %state.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  %0 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %state.addr, align 8, !dbg !5485
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %0, i32 0, i32 3, !dbg !5486
  %bf.load = load i8, i8* %mode_changed, align 2, !dbg !5486
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5486
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5486
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5486
  br i1 %bf.cast, label %lor.end, label %lor.lhs.false, !dbg !5487

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %state.addr, align 8, !dbg !5488
  %active_changed = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %1, i32 0, i32 3, !dbg !5489
  %bf.load1 = load i8, i8* %active_changed, align 2, !dbg !5489
  %bf.lshr2 = lshr i8 %bf.load1, 2, !dbg !5489
  %bf.clear3 = and i8 %bf.lshr2, 1, !dbg !5489
  %bf.cast4 = trunc i8 %bf.clear3 to i1, !dbg !5489
  br i1 %bf.cast4, label %lor.end, label %lor.rhs, !dbg !5490

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %state.addr, align 8, !dbg !5491
  %connectors_changed = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %2, i32 0, i32 3, !dbg !5492
  %bf.load5 = load i8, i8* %connectors_changed, align 2, !dbg !5492
  %bf.lshr6 = lshr i8 %bf.load5, 3, !dbg !5492
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !5492
  %bf.cast8 = trunc i8 %bf.clear7 to i1, !dbg !5492
  br label %lor.end, !dbg !5490

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %bf.cast8, %lor.rhs ]
  ret i1 %3, !dbg !5493
}

; Function Attrs: noredzone
declare dso_local void @drm_property_blob_put(%struct.drm_property_blob*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_atomic_helper_dirtyfb(%struct.drm_framebuffer* %fb, %struct.drm_file* %file_priv, i32 %flags, i32 %color, %struct.drm_clip_rect* %clips, i32 %num_clips) #0 !dbg !5494 {
entry:
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %flags.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %clips.addr = alloca %struct.drm_clip_rect*, align 8
  %num_clips.addr = alloca i32, align 4
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %damage = alloca %struct.drm_property_blob*, align 8
  %rects = alloca %struct.drm_mode_rect*, align 8
  %state = alloca %struct.drm_atomic_state*, align 8
  %plane = alloca %struct.drm_plane*, align 8
  %ret = alloca i32, align 4
  %inc = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_plane*, align 8
  %plane_state = alloca %struct.drm_plane_state*, align 8
  %__mptr45 = alloca i8*, align 8
  %tmp50 = alloca %struct.drm_plane*, align 8
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  store %struct.drm_clip_rect* %clips, %struct.drm_clip_rect** %clips.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_clip_rect** %clips.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  store i32 %num_clips, i32* %num_clips.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clips.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  call void @llvm.dbg.declare(metadata %struct.drm_modeset_acquire_ctx* %ctx, metadata !5507, metadata !DIExpression()), !dbg !5508
  call void @llvm.dbg.declare(metadata %struct.drm_property_blob** %damage, metadata !5509, metadata !DIExpression()), !dbg !5510
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %damage, align 8, !dbg !5510
  call void @llvm.dbg.declare(metadata %struct.drm_mode_rect** %rects, metadata !5511, metadata !DIExpression()), !dbg !5512
  store %struct.drm_mode_rect* null, %struct.drm_mode_rect** %rects, align 8, !dbg !5512
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state, metadata !5513, metadata !DIExpression()), !dbg !5514
  call void @llvm.dbg.declare(metadata %struct.drm_plane** %plane, metadata !5515, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i32 0, i32* %ret, align 4, !dbg !5518
  %0 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5519
  %tobool = icmp ne %struct.drm_file* %0, null, !dbg !5519
  %1 = zext i1 %tobool to i64, !dbg !5519
  %cond = select i1 %tobool, i64 1, i64 0, !dbg !5519
  %conv = trunc i64 %cond to i32, !dbg !5519
  call void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %ctx, i32 %conv) #7, !dbg !5520
  %2 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !5521
  %dev = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %2, i32 0, i32 0, !dbg !5522
  %3 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5522
  %call = call %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device* %3) #7, !dbg !5523
  store %struct.drm_atomic_state* %call, %struct.drm_atomic_state** %state, align 8, !dbg !5524
  %4 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5525
  %tobool1 = icmp ne %struct.drm_atomic_state* %4, null, !dbg !5525
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5527

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !5528
  br label %out_drop_locks, !dbg !5530

if.end:                                           ; preds = %entry
  %5 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5531
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %5, i32 0, i32 9, !dbg !5532
  store %struct.drm_modeset_acquire_ctx* %ctx, %struct.drm_modeset_acquire_ctx** %acquire_ctx, align 8, !dbg !5533
  %6 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %clips.addr, align 8, !dbg !5534
  %tobool2 = icmp ne %struct.drm_clip_rect* %6, null, !dbg !5534
  br i1 %tobool2, label %if.then3, label %if.end20, !dbg !5536

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %inc, metadata !5537, metadata !DIExpression()), !dbg !5539
  store i32 1, i32* %inc, align 4, !dbg !5539
  %7 = load i32, i32* %flags.addr, align 4, !dbg !5540
  %and = and i32 %7, 1, !dbg !5542
  %tobool4 = icmp ne i32 %and, 0, !dbg !5542
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5543

if.then5:                                         ; preds = %if.then3
  store i32 2, i32* %inc, align 4, !dbg !5544
  %8 = load i32, i32* %num_clips.addr, align 4, !dbg !5546
  %div = udiv i32 %8, 2, !dbg !5546
  store i32 %div, i32* %num_clips.addr, align 4, !dbg !5546
  br label %if.end6, !dbg !5547

if.end6:                                          ; preds = %if.then5, %if.then3
  %9 = load i32, i32* %num_clips.addr, align 4, !dbg !5548
  %conv7 = zext i32 %9 to i64, !dbg !5548
  %call8 = call i8* @kcalloc(i64 %conv7, i64 16, i32 3264) #7, !dbg !5549
  %10 = bitcast i8* %call8 to %struct.drm_mode_rect*, !dbg !5549
  store %struct.drm_mode_rect* %10, %struct.drm_mode_rect** %rects, align 8, !dbg !5550
  %11 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %rects, align 8, !dbg !5551
  %tobool9 = icmp ne %struct.drm_mode_rect* %11, null, !dbg !5551
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5553

if.then10:                                        ; preds = %if.end6
  store i32 -12, i32* %ret, align 4, !dbg !5554
  br label %out, !dbg !5556

if.end11:                                         ; preds = %if.end6
  %12 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %clips.addr, align 8, !dbg !5557
  %13 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %rects, align 8, !dbg !5558
  %14 = load i32, i32* %num_clips.addr, align 4, !dbg !5559
  %15 = load i32, i32* %inc, align 4, !dbg !5560
  call void @convert_clip_rect_to_rect(%struct.drm_clip_rect* %12, %struct.drm_mode_rect* %13, i32 %14, i32 %15) #7, !dbg !5561
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !5562
  %dev12 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %16, i32 0, i32 0, !dbg !5563
  %17 = load %struct.drm_device*, %struct.drm_device** %dev12, align 8, !dbg !5563
  %18 = load i32, i32* %num_clips.addr, align 4, !dbg !5564
  %conv13 = zext i32 %18 to i64, !dbg !5564
  %mul = mul i64 %conv13, 16, !dbg !5565
  %19 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %rects, align 8, !dbg !5566
  %20 = bitcast %struct.drm_mode_rect* %19 to i8*, !dbg !5566
  %call14 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %17, i64 %mul, i8* %20) #7, !dbg !5567
  store %struct.drm_property_blob* %call14, %struct.drm_property_blob** %damage, align 8, !dbg !5568
  %21 = load %struct.drm_property_blob*, %struct.drm_property_blob** %damage, align 8, !dbg !5569
  %22 = bitcast %struct.drm_property_blob* %21 to i8*, !dbg !5569
  %call15 = call zeroext i1 @IS_ERR(i8* %22) #7, !dbg !5571
  br i1 %call15, label %if.then16, label %if.end19, !dbg !5572

if.then16:                                        ; preds = %if.end11
  %23 = load %struct.drm_property_blob*, %struct.drm_property_blob** %damage, align 8, !dbg !5573
  %24 = bitcast %struct.drm_property_blob* %23 to i8*, !dbg !5573
  %call17 = call i64 @PTR_ERR(i8* %24) #7, !dbg !5575
  %conv18 = trunc i64 %call17 to i32, !dbg !5575
  store i32 %conv18, i32* %ret, align 4, !dbg !5576
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %damage, align 8, !dbg !5577
  br label %out, !dbg !5578

if.end19:                                         ; preds = %if.end11
  br label %if.end20, !dbg !5579

if.end20:                                         ; preds = %if.end19, %if.end
  br label %retry, !dbg !5534

retry:                                            ; preds = %if.then58, %if.end20
  call void @llvm.dbg.label(metadata !5580), !dbg !5581
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5582, metadata !DIExpression()), !dbg !5585
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !5585
  %dev21 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 0, !dbg !5585
  %26 = load %struct.drm_device*, %struct.drm_device** %dev21, align 8, !dbg !5585
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 35, !dbg !5585
  %plane_list = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 18, !dbg !5585
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %plane_list, i32 0, i32 0, !dbg !5585
  %27 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5585
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !5585
  store i8* %28, i8** %__mptr, align 8, !dbg !5585
  br label %do.body, !dbg !5585

do.body:                                          ; preds = %retry
  br label %do.end, !dbg !5586

do.end:                                           ; preds = %do.body
  %29 = load i8*, i8** %__mptr, align 8, !dbg !5585
  %add.ptr = getelementptr i8, i8* %29, i64 -8, !dbg !5585
  %30 = bitcast i8* %add.ptr to %struct.drm_plane*, !dbg !5585
  store %struct.drm_plane* %30, %struct.drm_plane** %tmp, align 8, !dbg !5586
  %31 = load %struct.drm_plane*, %struct.drm_plane** %tmp, align 8, !dbg !5585
  store %struct.drm_plane* %31, %struct.drm_plane** %plane, align 8, !dbg !5588
  br label %for.cond, !dbg !5588

for.cond:                                         ; preds = %do.end49, %do.end
  %32 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5589
  %head = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %32, i32 0, i32 1, !dbg !5589
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !5589
  %dev22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 0, !dbg !5589
  %34 = load %struct.drm_device*, %struct.drm_device** %dev22, align 8, !dbg !5589
  %mode_config23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 35, !dbg !5589
  %plane_list24 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config23, i32 0, i32 18, !dbg !5589
  %cmp = icmp eq %struct.list_head* %head, %plane_list24, !dbg !5589
  %lnot = xor i1 %cmp, true, !dbg !5589
  br i1 %lnot, label %for.body, label %for.end, !dbg !5588

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %plane_state, metadata !5591, metadata !DIExpression()), !dbg !5593
  %35 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5594
  %mutex = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i32 0, i32 3, !dbg !5595
  %36 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5596
  %acquire_ctx26 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %36, i32 0, i32 9, !dbg !5597
  %37 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %acquire_ctx26, align 8, !dbg !5597
  %call27 = call i32 @drm_modeset_lock(%struct.drm_modeset_lock* %mutex, %struct.drm_modeset_acquire_ctx* %37) #7, !dbg !5598
  store i32 %call27, i32* %ret, align 4, !dbg !5599
  %38 = load i32, i32* %ret, align 4, !dbg !5600
  %tobool28 = icmp ne i32 %38, 0, !dbg !5600
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5602

if.then29:                                        ; preds = %for.body
  br label %out, !dbg !5603

if.end30:                                         ; preds = %for.body
  %39 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5604
  %state31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 19, !dbg !5606
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state31, align 8, !dbg !5606
  %fb32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 2, !dbg !5607
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb32, align 8, !dbg !5607
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !5608
  %cmp33 = icmp ne %struct.drm_framebuffer* %41, %42, !dbg !5609
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !5610

if.then35:                                        ; preds = %if.end30
  %43 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5611
  %mutex36 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %43, i32 0, i32 3, !dbg !5613
  call void @drm_modeset_unlock(%struct.drm_modeset_lock* %mutex36) #7, !dbg !5614
  br label %for.inc, !dbg !5615

if.end37:                                         ; preds = %if.end30
  %44 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5616
  %45 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5617
  %call38 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %44, %struct.drm_plane* %45) #7, !dbg !5618
  store %struct.drm_plane_state* %call38, %struct.drm_plane_state** %plane_state, align 8, !dbg !5619
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5620
  %47 = bitcast %struct.drm_plane_state* %46 to i8*, !dbg !5620
  %call39 = call zeroext i1 @IS_ERR(i8* %47) #7, !dbg !5622
  br i1 %call39, label %if.then40, label %if.end43, !dbg !5623

if.then40:                                        ; preds = %if.end37
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5624
  %49 = bitcast %struct.drm_plane_state* %48 to i8*, !dbg !5624
  %call41 = call i64 @PTR_ERR(i8* %49) #7, !dbg !5626
  %conv42 = trunc i64 %call41 to i32, !dbg !5626
  store i32 %conv42, i32* %ret, align 4, !dbg !5627
  br label %out, !dbg !5628

if.end43:                                         ; preds = %if.end37
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %plane_state, align 8, !dbg !5629
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 19, !dbg !5630
  %51 = load %struct.drm_property_blob*, %struct.drm_property_blob** %damage, align 8, !dbg !5631
  %call44 = call zeroext i1 @drm_property_replace_blob(%struct.drm_property_blob** %fb_damage_clips, %struct.drm_property_blob* %51) #7, !dbg !5632
  br label %for.inc, !dbg !5633

for.inc:                                          ; preds = %if.end43, %if.then35
  call void @llvm.dbg.declare(metadata i8** %__mptr45, metadata !5634, metadata !DIExpression()), !dbg !5636
  %52 = load %struct.drm_plane*, %struct.drm_plane** %plane, align 8, !dbg !5636
  %head46 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %52, i32 0, i32 1, !dbg !5636
  %next47 = getelementptr inbounds %struct.list_head, %struct.list_head* %head46, i32 0, i32 0, !dbg !5636
  %53 = load %struct.list_head*, %struct.list_head** %next47, align 8, !dbg !5636
  %54 = bitcast %struct.list_head* %53 to i8*, !dbg !5636
  store i8* %54, i8** %__mptr45, align 8, !dbg !5636
  br label %do.body48, !dbg !5636

do.body48:                                        ; preds = %for.inc
  br label %do.end49, !dbg !5637

do.end49:                                         ; preds = %do.body48
  %55 = load i8*, i8** %__mptr45, align 8, !dbg !5636
  %add.ptr51 = getelementptr i8, i8* %55, i64 -8, !dbg !5636
  %56 = bitcast i8* %add.ptr51 to %struct.drm_plane*, !dbg !5636
  store %struct.drm_plane* %56, %struct.drm_plane** %tmp50, align 8, !dbg !5637
  %57 = load %struct.drm_plane*, %struct.drm_plane** %tmp50, align 8, !dbg !5636
  store %struct.drm_plane* %57, %struct.drm_plane** %plane, align 8, !dbg !5589
  br label %for.cond, !dbg !5589, !llvm.loop !5639

for.end:                                          ; preds = %for.cond
  %58 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5641
  %call52 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %58) #7, !dbg !5642
  store i32 %call52, i32* %ret, align 4, !dbg !5643
  br label %out, !dbg !5644

out:                                              ; preds = %for.end, %if.then40, %if.then29, %if.then16, %if.then10
  call void @llvm.dbg.label(metadata !5645), !dbg !5646
  %59 = load i32, i32* %ret, align 4, !dbg !5647
  %cmp53 = icmp eq i32 %59, -35, !dbg !5649
  br i1 %cmp53, label %if.then55, label %if.end60, !dbg !5650

if.then55:                                        ; preds = %out
  %60 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5651
  call void @drm_atomic_state_clear(%struct.drm_atomic_state* %60) #7, !dbg !5653
  %call56 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5654
  store i32 %call56, i32* %ret, align 4, !dbg !5655
  %61 = load i32, i32* %ret, align 4, !dbg !5656
  %tobool57 = icmp ne i32 %61, 0, !dbg !5656
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !5658

if.then58:                                        ; preds = %if.then55
  br label %retry, !dbg !5659

if.end59:                                         ; preds = %if.then55
  br label %if.end60, !dbg !5660

if.end60:                                         ; preds = %if.end59, %out
  %62 = load %struct.drm_property_blob*, %struct.drm_property_blob** %damage, align 8, !dbg !5661
  call void @drm_property_blob_put(%struct.drm_property_blob* %62) #7, !dbg !5662
  %63 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %rects, align 8, !dbg !5663
  %64 = bitcast %struct.drm_mode_rect* %63 to i8*, !dbg !5663
  call void @kfree(i8* %64) #7, !dbg !5664
  %65 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !5665
  call void @drm_atomic_state_put(%struct.drm_atomic_state* %65) #7, !dbg !5666
  br label %out_drop_locks, !dbg !5666

out_drop_locks:                                   ; preds = %if.end60, %if.then
  call void @llvm.dbg.label(metadata !5667), !dbg !5668
  call void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5669
  call void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %ctx) #7, !dbg !5670
  %66 = load i32, i32* %ret, align 4, !dbg !5671
  ret i32 %66, !dbg !5672
}

; Function Attrs: noredzone
declare dso_local void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !5673 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5676, metadata !DIExpression()), !dbg !5677
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5680, metadata !DIExpression()), !dbg !5681
  %0 = load i64, i64* %n.addr, align 8, !dbg !5682
  %1 = load i64, i64* %size.addr, align 8, !dbg !5683
  %2 = load i32, i32* %flags.addr, align 4, !dbg !5684
  %or = or i32 %2, 256, !dbg !5685
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !5686
  ret i8* %call, !dbg !5687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @convert_clip_rect_to_rect(%struct.drm_clip_rect* %src, %struct.drm_mode_rect* %dest, i32 %num_clips, i32 %src_inc) #0 !dbg !5688 {
entry:
  %src.addr = alloca %struct.drm_clip_rect*, align 8
  %dest.addr = alloca %struct.drm_mode_rect*, align 8
  %num_clips.addr = alloca i32, align 4
  %src_inc.addr = alloca i32, align 4
  store %struct.drm_clip_rect* %src, %struct.drm_clip_rect** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_clip_rect** %src.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  store %struct.drm_mode_rect* %dest, %struct.drm_mode_rect** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_rect** %dest.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  store i32 %num_clips, i32* %num_clips.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clips.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  store i32 %src_inc, i32* %src_inc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src_inc.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  br label %while.cond, !dbg !5701

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %num_clips.addr, align 4, !dbg !5702
  %cmp = icmp ugt i32 %0, 0, !dbg !5703
  br i1 %cmp, label %while.body, label %while.end, !dbg !5701

while.body:                                       ; preds = %while.cond
  %1 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %src.addr, align 8, !dbg !5704
  %x1 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %1, i32 0, i32 0, !dbg !5706
  %2 = load i16, i16* %x1, align 2, !dbg !5706
  %conv = zext i16 %2 to i32, !dbg !5704
  %3 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %dest.addr, align 8, !dbg !5707
  %x11 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %3, i32 0, i32 0, !dbg !5708
  store i32 %conv, i32* %x11, align 4, !dbg !5709
  %4 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %src.addr, align 8, !dbg !5710
  %y1 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %4, i32 0, i32 1, !dbg !5711
  %5 = load i16, i16* %y1, align 2, !dbg !5711
  %conv2 = zext i16 %5 to i32, !dbg !5710
  %6 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %dest.addr, align 8, !dbg !5712
  %y13 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %6, i32 0, i32 1, !dbg !5713
  store i32 %conv2, i32* %y13, align 4, !dbg !5714
  %7 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %src.addr, align 8, !dbg !5715
  %x2 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %7, i32 0, i32 2, !dbg !5716
  %8 = load i16, i16* %x2, align 2, !dbg !5716
  %conv4 = zext i16 %8 to i32, !dbg !5715
  %9 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %dest.addr, align 8, !dbg !5717
  %x25 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %9, i32 0, i32 2, !dbg !5718
  store i32 %conv4, i32* %x25, align 4, !dbg !5719
  %10 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %src.addr, align 8, !dbg !5720
  %y2 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %10, i32 0, i32 3, !dbg !5721
  %11 = load i16, i16* %y2, align 2, !dbg !5721
  %conv6 = zext i16 %11 to i32, !dbg !5720
  %12 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %dest.addr, align 8, !dbg !5722
  %y27 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %12, i32 0, i32 3, !dbg !5723
  store i32 %conv6, i32* %y27, align 4, !dbg !5724
  %13 = load i32, i32* %src_inc.addr, align 4, !dbg !5725
  %14 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %src.addr, align 8, !dbg !5726
  %idx.ext = zext i32 %13 to i64, !dbg !5726
  %add.ptr = getelementptr %struct.drm_clip_rect, %struct.drm_clip_rect* %14, i64 %idx.ext, !dbg !5726
  store %struct.drm_clip_rect* %add.ptr, %struct.drm_clip_rect** %src.addr, align 8, !dbg !5726
  %15 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %dest.addr, align 8, !dbg !5727
  %incdec.ptr = getelementptr %struct.drm_mode_rect, %struct.drm_mode_rect* %15, i32 1, !dbg !5727
  store %struct.drm_mode_rect* %incdec.ptr, %struct.drm_mode_rect** %dest.addr, align 8, !dbg !5727
  %16 = load i32, i32* %num_clips.addr, align 4, !dbg !5728
  %dec = add i32 %16, -1, !dbg !5728
  store i32 %dec, i32* %num_clips.addr, align 4, !dbg !5728
  br label %while.cond, !dbg !5701, !llvm.loop !5729

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5731
}

; Function Attrs: noredzone
declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i64, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5732 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5738
  %1 = ptrtoint i8* %0 to i64, !dbg !5738
  %2 = inttoptr i64 %1 to i8*, !dbg !5738
  %3 = ptrtoint i8* %2 to i64, !dbg !5738
  %cmp = icmp uge i64 %3, -4095, !dbg !5738
  %lnot = xor i1 %cmp, true, !dbg !5738
  %lnot1 = xor i1 %lnot, true, !dbg !5738
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5738
  %conv = sext i32 %lnot.ext to i64, !dbg !5738
  %tobool = icmp ne i64 %conv, 0, !dbg !5738
  ret i1 %tobool, !dbg !5739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5740 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5745
  %1 = ptrtoint i8* %0 to i64, !dbg !5746
  ret i64 %1, !dbg !5747
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @drm_modeset_lock(%struct.drm_modeset_lock*, %struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @drm_modeset_unlock(%struct.drm_modeset_lock*) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @drm_property_replace_blob(%struct.drm_property_blob**, %struct.drm_property_blob*) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #2

; Function Attrs: noredzone
declare dso_local void @drm_atomic_state_clear(%struct.drm_atomic_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_atomic_state_put(%struct.drm_atomic_state* %state) #0 !dbg !5748 {
entry:
  %state.addr = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_atomic_state* %state, %struct.drm_atomic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  %0 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !5751
  %ref = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %0, i32 0, i32 0, !dbg !5752
  %call = call i32 @kref_put(%struct.kref* %ref, void (%struct.kref*)* @__drm_atomic_state_free) #7, !dbg !5753
  ret void, !dbg !5754
}

; Function Attrs: noredzone
declare dso_local void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noredzone
declare dso_local void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_atomic_helper_damage_iter_init(%struct.drm_atomic_helper_damage_iter* %iter, %struct.drm_plane_state* %old_state, %struct.drm_plane_state* %state) #0 !dbg !5755 {
entry:
  %iter.addr = alloca %struct.drm_atomic_helper_damage_iter*, align 8
  %old_state.addr = alloca %struct.drm_plane_state*, align 8
  %state.addr = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_atomic_helper_damage_iter* %iter, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_helper_damage_iter** %iter.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  store %struct.drm_plane_state* %old_state, %struct.drm_plane_state** %old_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %old_state.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  store %struct.drm_plane_state* %state, %struct.drm_plane_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %state.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5775
  %1 = bitcast %struct.drm_atomic_helper_damage_iter* %0 to i8*, !dbg !5776
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 40, i1 false), !dbg !5776
  %2 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5777
  %tobool = icmp ne %struct.drm_plane_state* %2, null, !dbg !5777
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5779

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5780
  %crtc = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %3, i32 0, i32 1, !dbg !5781
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc, align 8, !dbg !5781
  %tobool1 = icmp ne %struct.drm_crtc* %4, null, !dbg !5780
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !5782

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5783
  %fb = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %5, i32 0, i32 2, !dbg !5784
  %6 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb, align 8, !dbg !5784
  %tobool3 = icmp ne %struct.drm_framebuffer* %6, null, !dbg !5783
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !5785

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5786
  %visible = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 22, !dbg !5787
  %8 = load i8, i8* %visible, align 8, !dbg !5787
  %tobool5 = trunc i8 %8 to i1, !dbg !5787
  br i1 %tobool5, label %if.end, label %if.then, !dbg !5788

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end42, !dbg !5789

if.end:                                           ; preds = %lor.lhs.false4
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5790
  %call = call %struct.drm_rect* @drm_helper_get_plane_damage_clips(%struct.drm_plane_state* %9) #7, !dbg !5791
  %10 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5792
  %clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %10, i32 0, i32 1, !dbg !5793
  store %struct.drm_rect* %call, %struct.drm_rect** %clips, align 8, !dbg !5794
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5795
  %call6 = call i32 @drm_plane_get_damage_clips_count(%struct.drm_plane_state* %11) #7, !dbg !5796
  %12 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5797
  %num_clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %12, i32 0, i32 2, !dbg !5798
  store i32 %call6, i32* %num_clips, align 8, !dbg !5799
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5800
  %src = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 20, !dbg !5801
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %src, i32 0, i32 0, !dbg !5802
  %14 = load i32, i32* %x1, align 8, !dbg !5802
  %shr = ashr i32 %14, 16, !dbg !5803
  %15 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5804
  %plane_src = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %15, i32 0, i32 0, !dbg !5805
  %x17 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %plane_src, i32 0, i32 0, !dbg !5806
  store i32 %shr, i32* %x17, align 8, !dbg !5807
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5808
  %src8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 20, !dbg !5809
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %src8, i32 0, i32 1, !dbg !5810
  %17 = load i32, i32* %y1, align 4, !dbg !5810
  %shr9 = ashr i32 %17, 16, !dbg !5811
  %18 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5812
  %plane_src10 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %18, i32 0, i32 0, !dbg !5813
  %y111 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %plane_src10, i32 0, i32 1, !dbg !5814
  store i32 %shr9, i32* %y111, align 4, !dbg !5815
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5816
  %src12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 20, !dbg !5817
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %src12, i32 0, i32 2, !dbg !5818
  %20 = load i32, i32* %x2, align 8, !dbg !5818
  %shr13 = ashr i32 %20, 16, !dbg !5819
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5820
  %src14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 20, !dbg !5821
  %x215 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %src14, i32 0, i32 2, !dbg !5822
  %22 = load i32, i32* %x215, align 8, !dbg !5822
  %and = and i32 %22, 65535, !dbg !5823
  %tobool16 = icmp ne i32 %and, 0, !dbg !5824
  %lnot = xor i1 %tobool16, true, !dbg !5824
  %lnot17 = xor i1 %lnot, true, !dbg !5825
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !5825
  %add = add i32 %shr13, %lnot.ext, !dbg !5826
  %23 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5827
  %plane_src18 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %23, i32 0, i32 0, !dbg !5828
  %x219 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %plane_src18, i32 0, i32 2, !dbg !5829
  store i32 %add, i32* %x219, align 8, !dbg !5830
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5831
  %src20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 20, !dbg !5832
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %src20, i32 0, i32 3, !dbg !5833
  %25 = load i32, i32* %y2, align 4, !dbg !5833
  %shr21 = ashr i32 %25, 16, !dbg !5834
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5835
  %src22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 20, !dbg !5836
  %y223 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %src22, i32 0, i32 3, !dbg !5837
  %27 = load i32, i32* %y223, align 4, !dbg !5837
  %and24 = and i32 %27, 65535, !dbg !5838
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5839
  %lnot26 = xor i1 %tobool25, true, !dbg !5839
  %lnot28 = xor i1 %lnot26, true, !dbg !5840
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5840
  %add30 = add i32 %shr21, %lnot.ext29, !dbg !5841
  %28 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5842
  %plane_src31 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %28, i32 0, i32 0, !dbg !5843
  %y232 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %plane_src31, i32 0, i32 3, !dbg !5844
  store i32 %add30, i32* %y232, align 4, !dbg !5845
  %29 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5846
  %clips33 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %29, i32 0, i32 1, !dbg !5848
  %30 = load %struct.drm_rect*, %struct.drm_rect** %clips33, align 8, !dbg !5848
  %tobool34 = icmp ne %struct.drm_rect* %30, null, !dbg !5846
  br i1 %tobool34, label %lor.lhs.false35, label %if.then39, !dbg !5849

lor.lhs.false35:                                  ; preds = %if.end
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5850
  %src36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 20, !dbg !5851
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %old_state.addr, align 8, !dbg !5852
  %src37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 20, !dbg !5853
  %call38 = call zeroext i1 @drm_rect_equals(%struct.drm_rect* %src36, %struct.drm_rect* %src37) #7, !dbg !5854
  br i1 %call38, label %if.end42, label %if.then39, !dbg !5855

if.then39:                                        ; preds = %lor.lhs.false35, %if.end
  %33 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5856
  %clips40 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %33, i32 0, i32 1, !dbg !5858
  store %struct.drm_rect* null, %struct.drm_rect** %clips40, align 8, !dbg !5859
  %34 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5860
  %num_clips41 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %34, i32 0, i32 2, !dbg !5861
  store i32 0, i32* %num_clips41, align 8, !dbg !5862
  %35 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5863
  %full_update = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %35, i32 0, i32 4, !dbg !5864
  store i8 1, i8* %full_update, align 8, !dbg !5865
  br label %if.end42, !dbg !5866

if.end42:                                         ; preds = %if.then, %if.then39, %lor.lhs.false35
  ret void, !dbg !5867
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_rect* @drm_helper_get_plane_damage_clips(%struct.drm_plane_state* %state) #0 !dbg !5868 {
entry:
  %state.addr = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane_state* %state, %struct.drm_plane_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %state.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  %0 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5873
  %call = call %struct.drm_mode_rect* @drm_plane_get_damage_clips(%struct.drm_plane_state* %0) #7, !dbg !5874
  %1 = bitcast %struct.drm_mode_rect* %call to %struct.drm_rect*, !dbg !5875
  ret %struct.drm_rect* %1, !dbg !5876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_plane_get_damage_clips_count(%struct.drm_plane_state* %state) #0 !dbg !5877 {
entry:
  %state.addr = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane_state* %state, %struct.drm_plane_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %state.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  %0 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5882
  %tobool = icmp ne %struct.drm_plane_state* %0, null, !dbg !5882
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !5883

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5884
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %1, i32 0, i32 19, !dbg !5885
  %2 = load %struct.drm_property_blob*, %struct.drm_property_blob** %fb_damage_clips, align 8, !dbg !5885
  %tobool1 = icmp ne %struct.drm_property_blob* %2, null, !dbg !5884
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !5886

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !5887
  %fb_damage_clips2 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %3, i32 0, i32 19, !dbg !5888
  %4 = load %struct.drm_property_blob*, %struct.drm_property_blob** %fb_damage_clips2, align 8, !dbg !5888
  %length = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %4, i32 0, i32 4, !dbg !5889
  %5 = load i64, i64* %length, align 8, !dbg !5889
  %div = udiv i64 %5, 16, !dbg !5890
  br label %cond.end, !dbg !5886

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !5886

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 0, %cond.false ], !dbg !5886
  %conv = trunc i64 %cond to i32, !dbg !5886
  ret i32 %conv, !dbg !5891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_rect_equals(%struct.drm_rect* %r1, %struct.drm_rect* %r2) #0 !dbg !5892 {
entry:
  %r1.addr = alloca %struct.drm_rect*, align 8
  %r2.addr = alloca %struct.drm_rect*, align 8
  store %struct.drm_rect* %r1, %struct.drm_rect** %r1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r1.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store %struct.drm_rect* %r2, %struct.drm_rect** %r2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r2.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  %0 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !5899
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 0, !dbg !5900
  %1 = load i32, i32* %x1, align 4, !dbg !5900
  %2 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !5901
  %x11 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !5902
  %3 = load i32, i32* %x11, align 4, !dbg !5902
  %cmp = icmp eq i32 %1, %3, !dbg !5903
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !5904

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !5905
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %4, i32 0, i32 2, !dbg !5906
  %5 = load i32, i32* %x2, align 4, !dbg !5906
  %6 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !5907
  %x22 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %6, i32 0, i32 2, !dbg !5908
  %7 = load i32, i32* %x22, align 4, !dbg !5908
  %cmp3 = icmp eq i32 %5, %7, !dbg !5909
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !5910

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !5911
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 1, !dbg !5912
  %9 = load i32, i32* %y1, align 4, !dbg !5912
  %10 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !5913
  %y15 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 1, !dbg !5914
  %11 = load i32, i32* %y15, align 4, !dbg !5914
  %cmp6 = icmp eq i32 %9, %11, !dbg !5915
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !5916

land.rhs:                                         ; preds = %land.lhs.true4
  %12 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !5917
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 3, !dbg !5918
  %13 = load i32, i32* %y2, align 4, !dbg !5918
  %14 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !5919
  %y27 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 3, !dbg !5920
  %15 = load i32, i32* %y27, align 4, !dbg !5920
  %cmp8 = icmp eq i32 %13, %15, !dbg !5921
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ], !dbg !5922
  ret i1 %16, !dbg !5923
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_atomic_helper_damage_iter_next(%struct.drm_atomic_helper_damage_iter* %iter, %struct.drm_rect* %rect) #0 !dbg !5924 {
entry:
  %retval = alloca i1, align 1
  %iter.addr = alloca %struct.drm_atomic_helper_damage_iter*, align 8
  %rect.addr = alloca %struct.drm_rect*, align 8
  %ret = alloca i8, align 1
  store %struct.drm_atomic_helper_damage_iter* %iter, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_helper_damage_iter** %iter.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  store %struct.drm_rect* %rect, %struct.drm_rect** %rect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %rect.addr, metadata !5929, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5931, metadata !DIExpression()), !dbg !5932
  store i8 0, i8* %ret, align 1, !dbg !5932
  %0 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5933
  %full_update = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %0, i32 0, i32 4, !dbg !5935
  %1 = load i8, i8* %full_update, align 8, !dbg !5935
  %tobool = trunc i8 %1 to i1, !dbg !5935
  br i1 %tobool, label %if.then, label %if.end, !dbg !5936

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5937
  %3 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5939
  %plane_src = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %3, i32 0, i32 0, !dbg !5940
  %4 = bitcast %struct.drm_rect* %2 to i8*, !dbg !5940
  %5 = bitcast %struct.drm_rect* %plane_src to i8*, !dbg !5940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 8 %5, i64 16, i1 false), !dbg !5940
  %6 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5941
  %full_update1 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %6, i32 0, i32 4, !dbg !5942
  store i8 0, i8* %full_update1, align 8, !dbg !5943
  store i1 true, i1* %retval, align 1, !dbg !5944
  br label %return, !dbg !5944

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5945

while.cond:                                       ; preds = %if.end6, %if.end
  %7 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5946
  %curr_clip = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %7, i32 0, i32 3, !dbg !5947
  %8 = load i32, i32* %curr_clip, align 4, !dbg !5947
  %9 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5948
  %num_clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %9, i32 0, i32 2, !dbg !5949
  %10 = load i32, i32* %num_clips, align 8, !dbg !5949
  %cmp = icmp ult i32 %8, %10, !dbg !5950
  br i1 %cmp, label %while.body, label %while.end, !dbg !5945

while.body:                                       ; preds = %while.cond
  %11 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5951
  %12 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5953
  %clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %12, i32 0, i32 1, !dbg !5954
  %13 = load %struct.drm_rect*, %struct.drm_rect** %clips, align 8, !dbg !5954
  %14 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5955
  %curr_clip2 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %14, i32 0, i32 3, !dbg !5956
  %15 = load i32, i32* %curr_clip2, align 4, !dbg !5956
  %idxprom = zext i32 %15 to i64, !dbg !5953
  %arrayidx = getelementptr %struct.drm_rect, %struct.drm_rect* %13, i64 %idxprom, !dbg !5953
  %16 = bitcast %struct.drm_rect* %11 to i8*, !dbg !5953
  %17 = bitcast %struct.drm_rect* %arrayidx to i8*, !dbg !5953
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 16, i1 false), !dbg !5953
  %18 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5957
  %curr_clip3 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %18, i32 0, i32 3, !dbg !5958
  %19 = load i32, i32* %curr_clip3, align 4, !dbg !5959
  %inc = add i32 %19, 1, !dbg !5959
  store i32 %inc, i32* %curr_clip3, align 4, !dbg !5959
  %20 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5960
  %21 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %iter.addr, align 8, !dbg !5962
  %plane_src4 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %21, i32 0, i32 0, !dbg !5963
  %call = call zeroext i1 @drm_rect_intersect(%struct.drm_rect* %20, %struct.drm_rect* %plane_src4) #7, !dbg !5964
  br i1 %call, label %if.then5, label %if.end6, !dbg !5965

if.then5:                                         ; preds = %while.body
  store i8 1, i8* %ret, align 1, !dbg !5966
  br label %while.end, !dbg !5968

if.end6:                                          ; preds = %while.body
  br label %while.cond, !dbg !5945, !llvm.loop !5969

while.end:                                        ; preds = %if.then5, %while.cond
  %22 = load i8, i8* %ret, align 1, !dbg !5971
  %tobool7 = trunc i8 %22 to i1, !dbg !5971
  store i1 %tobool7, i1* %retval, align 1, !dbg !5972
  br label %return, !dbg !5972

return:                                           ; preds = %while.end, %if.then
  %23 = load i1, i1* %retval, align 1, !dbg !5973
  ret i1 %23, !dbg !5973
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @drm_rect_intersect(%struct.drm_rect*, %struct.drm_rect*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_atomic_helper_damage_merged(%struct.drm_plane_state* %old_state, %struct.drm_plane_state* %state, %struct.drm_rect* %rect) #0 !dbg !5974 {
entry:
  %old_state.addr = alloca %struct.drm_plane_state*, align 8
  %state.addr = alloca %struct.drm_plane_state*, align 8
  %rect.addr = alloca %struct.drm_rect*, align 8
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 8
  %clip = alloca %struct.drm_rect, align 4
  %valid = alloca i8, align 1
  %__UNIQUE_ID___x255 = alloca i32, align 4
  %__UNIQUE_ID___y256 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x257 = alloca i32, align 4
  %__UNIQUE_ID___y258 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %__UNIQUE_ID___x259 = alloca i32, align 4
  %__UNIQUE_ID___y260 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %__UNIQUE_ID___x261 = alloca i32, align 4
  %__UNIQUE_ID___y262 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  store %struct.drm_plane_state* %old_state, %struct.drm_plane_state** %old_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %old_state.addr, metadata !5977, metadata !DIExpression()), !dbg !5978
  store %struct.drm_plane_state* %state, %struct.drm_plane_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %state.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  store %struct.drm_rect* %rect, %struct.drm_rect** %rect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %rect.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_helper_damage_iter* %iter, metadata !5983, metadata !DIExpression()), !dbg !5984
  call void @llvm.dbg.declare(metadata %struct.drm_rect* %clip, metadata !5985, metadata !DIExpression()), !dbg !5986
  call void @llvm.dbg.declare(metadata i8* %valid, metadata !5987, metadata !DIExpression()), !dbg !5988
  store i8 0, i8* %valid, align 1, !dbg !5988
  %0 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5989
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 0, !dbg !5990
  store i32 2147483647, i32* %x1, align 4, !dbg !5991
  %1 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5992
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %1, i32 0, i32 1, !dbg !5993
  store i32 2147483647, i32* %y1, align 4, !dbg !5994
  %2 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5995
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 2, !dbg !5996
  store i32 0, i32* %x2, align 4, !dbg !5997
  %3 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !5998
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %3, i32 0, i32 3, !dbg !5999
  store i32 0, i32* %y2, align 4, !dbg !6000
  %4 = load %struct.drm_plane_state*, %struct.drm_plane_state** %old_state.addr, align 8, !dbg !6001
  %5 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !6002
  call void @drm_atomic_helper_damage_iter_init(%struct.drm_atomic_helper_damage_iter* %iter, %struct.drm_plane_state* %4, %struct.drm_plane_state* %5) #7, !dbg !6003
  br label %while.cond, !dbg !6004

while.cond:                                       ; preds = %cond.end28, %entry
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(%struct.drm_atomic_helper_damage_iter* %iter, %struct.drm_rect* %clip) #7, !dbg !6004
  br i1 %call, label %while.body, label %while.end, !dbg !6004

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x255, metadata !6005, metadata !DIExpression()), !dbg !6008
  %6 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6008
  %x11 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %6, i32 0, i32 0, !dbg !6008
  %7 = load i32, i32* %x11, align 4, !dbg !6008
  store i32 %7, i32* %__UNIQUE_ID___x255, align 4, !dbg !6008
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y256, metadata !6009, metadata !DIExpression()), !dbg !6008
  %x12 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %clip, i32 0, i32 0, !dbg !6008
  %8 = load i32, i32* %x12, align 4, !dbg !6008
  store i32 %8, i32* %__UNIQUE_ID___y256, align 4, !dbg !6008
  %9 = load i32, i32* %__UNIQUE_ID___x255, align 4, !dbg !6008
  %10 = load i32, i32* %__UNIQUE_ID___y256, align 4, !dbg !6008
  %cmp = icmp slt i32 %9, %10, !dbg !6008
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6008

cond.true:                                        ; preds = %while.body
  %11 = load i32, i32* %__UNIQUE_ID___x255, align 4, !dbg !6008
  br label %cond.end, !dbg !6008

cond.false:                                       ; preds = %while.body
  %12 = load i32, i32* %__UNIQUE_ID___y256, align 4, !dbg !6008
  br label %cond.end, !dbg !6008

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !6008
  store i32 %cond, i32* %tmp, align 4, !dbg !6008
  %13 = load i32, i32* %tmp, align 4, !dbg !6008
  %14 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6010
  %x13 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 0, !dbg !6011
  store i32 %13, i32* %x13, align 4, !dbg !6012
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x257, metadata !6013, metadata !DIExpression()), !dbg !6015
  %15 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6015
  %y14 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %15, i32 0, i32 1, !dbg !6015
  %16 = load i32, i32* %y14, align 4, !dbg !6015
  store i32 %16, i32* %__UNIQUE_ID___x257, align 4, !dbg !6015
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y258, metadata !6016, metadata !DIExpression()), !dbg !6015
  %y15 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %clip, i32 0, i32 1, !dbg !6015
  %17 = load i32, i32* %y15, align 4, !dbg !6015
  store i32 %17, i32* %__UNIQUE_ID___y258, align 4, !dbg !6015
  %18 = load i32, i32* %__UNIQUE_ID___x257, align 4, !dbg !6015
  %19 = load i32, i32* %__UNIQUE_ID___y258, align 4, !dbg !6015
  %cmp7 = icmp slt i32 %18, %19, !dbg !6015
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !6015

cond.true8:                                       ; preds = %cond.end
  %20 = load i32, i32* %__UNIQUE_ID___x257, align 4, !dbg !6015
  br label %cond.end10, !dbg !6015

cond.false9:                                      ; preds = %cond.end
  %21 = load i32, i32* %__UNIQUE_ID___y258, align 4, !dbg !6015
  br label %cond.end10, !dbg !6015

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i32 [ %20, %cond.true8 ], [ %21, %cond.false9 ], !dbg !6015
  store i32 %cond11, i32* %tmp6, align 4, !dbg !6015
  %22 = load i32, i32* %tmp6, align 4, !dbg !6015
  %23 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6017
  %y112 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %23, i32 0, i32 1, !dbg !6018
  store i32 %22, i32* %y112, align 4, !dbg !6019
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x259, metadata !6020, metadata !DIExpression()), !dbg !6022
  %24 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6022
  %x213 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %24, i32 0, i32 2, !dbg !6022
  %25 = load i32, i32* %x213, align 4, !dbg !6022
  store i32 %25, i32* %__UNIQUE_ID___x259, align 4, !dbg !6022
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y260, metadata !6023, metadata !DIExpression()), !dbg !6022
  %x214 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %clip, i32 0, i32 2, !dbg !6022
  %26 = load i32, i32* %x214, align 4, !dbg !6022
  store i32 %26, i32* %__UNIQUE_ID___y260, align 4, !dbg !6022
  %27 = load i32, i32* %__UNIQUE_ID___x259, align 4, !dbg !6022
  %28 = load i32, i32* %__UNIQUE_ID___y260, align 4, !dbg !6022
  %cmp16 = icmp sgt i32 %27, %28, !dbg !6022
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !6022

cond.true17:                                      ; preds = %cond.end10
  %29 = load i32, i32* %__UNIQUE_ID___x259, align 4, !dbg !6022
  br label %cond.end19, !dbg !6022

cond.false18:                                     ; preds = %cond.end10
  %30 = load i32, i32* %__UNIQUE_ID___y260, align 4, !dbg !6022
  br label %cond.end19, !dbg !6022

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ %29, %cond.true17 ], [ %30, %cond.false18 ], !dbg !6022
  store i32 %cond20, i32* %tmp15, align 4, !dbg !6022
  %31 = load i32, i32* %tmp15, align 4, !dbg !6022
  %32 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6024
  %x221 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i32 0, i32 2, !dbg !6025
  store i32 %31, i32* %x221, align 4, !dbg !6026
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x261, metadata !6027, metadata !DIExpression()), !dbg !6029
  %33 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6029
  %y222 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 3, !dbg !6029
  %34 = load i32, i32* %y222, align 4, !dbg !6029
  store i32 %34, i32* %__UNIQUE_ID___x261, align 4, !dbg !6029
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y262, metadata !6030, metadata !DIExpression()), !dbg !6029
  %y223 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %clip, i32 0, i32 3, !dbg !6029
  %35 = load i32, i32* %y223, align 4, !dbg !6029
  store i32 %35, i32* %__UNIQUE_ID___y262, align 4, !dbg !6029
  %36 = load i32, i32* %__UNIQUE_ID___x261, align 4, !dbg !6029
  %37 = load i32, i32* %__UNIQUE_ID___y262, align 4, !dbg !6029
  %cmp25 = icmp sgt i32 %36, %37, !dbg !6029
  br i1 %cmp25, label %cond.true26, label %cond.false27, !dbg !6029

cond.true26:                                      ; preds = %cond.end19
  %38 = load i32, i32* %__UNIQUE_ID___x261, align 4, !dbg !6029
  br label %cond.end28, !dbg !6029

cond.false27:                                     ; preds = %cond.end19
  %39 = load i32, i32* %__UNIQUE_ID___y262, align 4, !dbg !6029
  br label %cond.end28, !dbg !6029

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ %38, %cond.true26 ], [ %39, %cond.false27 ], !dbg !6029
  store i32 %cond29, i32* %tmp24, align 4, !dbg !6029
  %40 = load i32, i32* %tmp24, align 4, !dbg !6029
  %41 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6031
  %y230 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %41, i32 0, i32 3, !dbg !6032
  store i32 %40, i32* %y230, align 4, !dbg !6033
  store i8 1, i8* %valid, align 1, !dbg !6034
  br label %while.cond, !dbg !6004, !llvm.loop !6035

while.end:                                        ; preds = %while.cond
  %42 = load i8, i8* %valid, align 1, !dbg !6037
  %tobool = trunc i8 %42 to i1, !dbg !6037
  ret i1 %tobool, !dbg !6038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_crtc_index(%struct.drm_crtc* %crtc) #0 !dbg !6039 {
entry:
  %crtc.addr = alloca %struct.drm_crtc*, align 8
  store %struct.drm_crtc* %crtc, %struct.drm_crtc** %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_crtc** %crtc.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  %0 = load %struct.drm_crtc*, %struct.drm_crtc** %crtc.addr, align 8, !dbg !6046
  %index = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %0, i32 0, i32 8, !dbg !6047
  %1 = load i32, i32* %index, align 8, !dbg !6047
  ret i32 %1, !dbg !6048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !6049 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !6050, metadata !DIExpression()), !dbg !6054
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !6063, metadata !DIExpression()), !dbg !6064
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !6065, metadata !DIExpression()), !dbg !6066
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !6067, metadata !DIExpression()), !dbg !6068
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !6069, metadata !DIExpression()), !dbg !6073
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !6075, metadata !DIExpression()), !dbg !6079
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6081, metadata !DIExpression()), !dbg !6085
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6090, metadata !DIExpression()), !dbg !6091
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6092, metadata !DIExpression()), !dbg !6093
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6094, metadata !DIExpression()), !dbg !6095
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6096, metadata !DIExpression()), !dbg !6097
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6098, metadata !DIExpression()), !dbg !6099
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6100, metadata !DIExpression()), !dbg !6101
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6102, metadata !DIExpression()), !dbg !6103
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6104, metadata !DIExpression()), !dbg !6105
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6108, metadata !DIExpression()), !dbg !6109
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6112, metadata !DIExpression()), !dbg !6113
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !6114, metadata !DIExpression()), !dbg !6117
  %0 = load i64, i64* %n.addr, align 8, !dbg !6117
  store i64 %0, i64* %__a, align 8, !dbg !6117
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !6118, metadata !DIExpression()), !dbg !6117
  %1 = load i64, i64* %size.addr, align 8, !dbg !6117
  store i64 %1, i64* %__b, align 8, !dbg !6117
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !6119, metadata !DIExpression()), !dbg !6117
  store i64* %bytes, i64** %__d, align 8, !dbg !6117
  %cmp = icmp eq i64* %__a, %__b, !dbg !6117
  %conv = zext i1 %cmp to i32, !dbg !6117
  %2 = load i64*, i64** %__d, align 8, !dbg !6117
  %cmp1 = icmp eq i64* %__a, %2, !dbg !6117
  %conv2 = zext i1 %cmp1 to i32, !dbg !6117
  %3 = load i64, i64* %__a, align 8, !dbg !6117
  %4 = load i64, i64* %__b, align 8, !dbg !6117
  %5 = load i64*, i64** %__d, align 8, !dbg !6117
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !6117
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !6117
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !6117
  store i64 %8, i64* %5, align 8, !dbg !6117
  %frombool = zext i1 %7 to i8, !dbg !6117
  store i8 %frombool, i8* %tmp, align 1, !dbg !6117
  %9 = load i8, i8* %tmp, align 1, !dbg !6117
  %tobool = trunc i8 %9 to i1, !dbg !6117
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !6120
  %lnot = xor i1 %call, true, !dbg !6120
  %lnot3 = xor i1 %lnot, true, !dbg !6120
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6120
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6120
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !6120
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6121

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !6122
  br label %return, !dbg !6122

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !6123
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6124
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !6125

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !6126
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6127
  br i1 %13, label %if.then6, label %if.end8, !dbg !6128

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !6129
  %15 = load i32, i32* %flags.addr, align 4, !dbg !6130
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !6131
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !6132
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !6133

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !6134
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !6135
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6136

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !6137
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !6138
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !6139
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !6140
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6099
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !6141
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6142
  %24 = load i32, i32* %order.i.i, align 4, !dbg !6143
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6144
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6145
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6146
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !6147
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6147
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6147
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6147
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !6147
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6148
  br label %kmalloc.exit, !dbg !6148

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6149
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6150
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6150
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6152

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6153
  br label %kmalloc_index.exit.i, !dbg !6153

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6154
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6156
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6157

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6158
  br label %kmalloc_index.exit.i, !dbg !6158

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6159
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6161
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6162

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6163
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6164
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6165

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6166
  br label %kmalloc_index.exit.i, !dbg !6166

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6167
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6169
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6170

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6171
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6172
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6173

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6174
  br label %kmalloc_index.exit.i, !dbg !6174

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6175
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6177
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6178

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6179
  br label %kmalloc_index.exit.i, !dbg !6179

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6180
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6182
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6183

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6184
  br label %kmalloc_index.exit.i, !dbg !6184

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6185
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6187
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6188

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6189
  br label %kmalloc_index.exit.i, !dbg !6189

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6190
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6192
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6193

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6194
  br label %kmalloc_index.exit.i, !dbg !6194

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6195
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6197
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6198

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6199
  br label %kmalloc_index.exit.i, !dbg !6199

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6200
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6202
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6203

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6204
  br label %kmalloc_index.exit.i, !dbg !6204

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6205
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6207
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6208

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6209
  br label %kmalloc_index.exit.i, !dbg !6209

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6210
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6212
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6213

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6214
  br label %kmalloc_index.exit.i, !dbg !6214

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6215
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !6217
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6218

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6219
  br label %kmalloc_index.exit.i, !dbg !6219

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6220
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !6222
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6223

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6224
  br label %kmalloc_index.exit.i, !dbg !6224

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6225
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !6227
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6228

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6229
  br label %kmalloc_index.exit.i, !dbg !6229

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6230
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !6232
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6233

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6234
  br label %kmalloc_index.exit.i, !dbg !6234

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6235
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !6237
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6238

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6239
  br label %kmalloc_index.exit.i, !dbg !6239

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6240
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !6242
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6243

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6244
  br label %kmalloc_index.exit.i, !dbg !6244

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6245
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !6247
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6248

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6249
  br label %kmalloc_index.exit.i, !dbg !6249

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6250
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !6252
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6253

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6254
  br label %kmalloc_index.exit.i, !dbg !6254

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6255
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !6257
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6258

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6259
  br label %kmalloc_index.exit.i, !dbg !6259

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6260
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !6262
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6263

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6264
  br label %kmalloc_index.exit.i, !dbg !6264

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6265
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !6267
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6268

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6269
  br label %kmalloc_index.exit.i, !dbg !6269

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6270
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !6272
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6273

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6274
  br label %kmalloc_index.exit.i, !dbg !6274

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6275
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !6277
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6278

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6279
  br label %kmalloc_index.exit.i, !dbg !6279

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6280
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !6282
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6283

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6284
  br label %kmalloc_index.exit.i, !dbg !6284

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6285
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !6287
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6288

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6289
  br label %kmalloc_index.exit.i, !dbg !6289

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6290
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !6292
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6293

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6294
  br label %kmalloc_index.exit.i, !dbg !6294

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !6295, !srcloc !6298
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !6299, !srcloc !6302
  unreachable, !dbg !6303

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !6304
  store i32 %59, i32* %index.i, align 4, !dbg !6305
  %60 = load i32, i32* %index.i, align 4, !dbg !6306
  %tobool.i = icmp ne i32 %60, 0, !dbg !6306
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6308

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6309
  br label %kmalloc.exit, !dbg !6309

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !6310
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6311
  %and.i.i = and i32 %62, 17, !dbg !6311
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6311
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6311
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6311
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6311
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6313

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6314
  br label %kmalloc_type.exit.i, !dbg !6314

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6315
  %and2.i.i = and i32 %63, 1, !dbg !6316
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6315
  %64 = zext i1 %tobool3.i.i to i64, !dbg !6315
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6315
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6317
  br label %kmalloc_type.exit.i, !dbg !6317

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !6318
  %idxprom.i = zext i32 %65 to i64, !dbg !6319
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6319
  %66 = load i32, i32* %index.i, align 4, !dbg !6320
  %idxprom6.i = zext i32 %66 to i64, !dbg !6319
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6319
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6319
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !6321
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !6322
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6323
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6324
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !6325
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6325
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6325
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6325
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !6325
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6068
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6326
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !6327
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6328
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6329
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !6330
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6331
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !6332
  store i8* %76, i8** %retval.i, align 8, !dbg !6333
  br label %kmalloc.exit, !dbg !6333

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !6334
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !6335
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !6336
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6336
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6336
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6336
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !6336
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6337
  br label %kmalloc.exit, !dbg !6337

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !6338
  store i8* %79, i8** %retval, align 8, !dbg !6339
  br label %return, !dbg !6339

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !6340
  %81 = load i32, i32* %flags.addr, align 4, !dbg !6341
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !6342
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !6342
  %maskedptr = and i64 %ptrint, 7, !dbg !6342
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !6342
  call void @llvm.assume(i1 %maskcond), !dbg !6342
  store i8* %call9, i8** %retval, align 8, !dbg !6343
  br label %return, !dbg !6343

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !6344
  ret i8* %82, !dbg !6344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !6345 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !6349, metadata !DIExpression()), !dbg !6350
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !6351
  %tobool = trunc i8 %0 to i1, !dbg !6351
  %lnot = xor i1 %tobool, true, !dbg !6351
  %lnot1 = xor i1 %lnot, true, !dbg !6351
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6351
  %conv = sext i32 %lnot.ext to i64, !dbg !6351
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6351
  ret i1 %tobool2, !dbg !6352
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
define internal i32 @get_order(i64 %size) #6 !dbg !6353 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6357, metadata !DIExpression()), !dbg !6362
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6364, metadata !DIExpression()), !dbg !6365
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  %0 = load i64, i64* %size.addr, align 8, !dbg !6368
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6370
  br i1 %1, label %if.then, label %if.end447, !dbg !6371

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6372
  %tobool = icmp ne i64 %2, 0, !dbg !6372
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6375

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6377
  %cmp = icmp ult i64 %3, 4096, !dbg !6379
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6380

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub = sub i64 %4, 1, !dbg !6382
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6382
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6382

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub4 = sub i64 %6, 1, !dbg !6382
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6382
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6382

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub6 = sub i64 %8, 1, !dbg !6382
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6382
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6382

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6382

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub9 = sub i64 %9, 1, !dbg !6382
  %and = and i64 %sub9, -9223372036854775808, !dbg !6382
  %tobool10 = icmp ne i64 %and, 0, !dbg !6382
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6382

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6382

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub13 = sub i64 %10, 1, !dbg !6382
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6382
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6382
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6382

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6382

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub18 = sub i64 %11, 1, !dbg !6382
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6382
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6382
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6382

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6382

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub23 = sub i64 %12, 1, !dbg !6382
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6382
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6382
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6382

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6382

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub28 = sub i64 %13, 1, !dbg !6382
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6382
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6382
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6382

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6382

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub33 = sub i64 %14, 1, !dbg !6382
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6382
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6382
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6382

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6382

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub38 = sub i64 %15, 1, !dbg !6382
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6382
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6382
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6382

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6382

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub43 = sub i64 %16, 1, !dbg !6382
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6382
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6382
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6382

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6382

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub48 = sub i64 %17, 1, !dbg !6382
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6382
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6382
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6382

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6382

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub53 = sub i64 %18, 1, !dbg !6382
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6382
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6382
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6382

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6382

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub58 = sub i64 %19, 1, !dbg !6382
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6382
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6382
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6382

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6382

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub63 = sub i64 %20, 1, !dbg !6382
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6382
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6382
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6382

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6382

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub68 = sub i64 %21, 1, !dbg !6382
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6382
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6382
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6382

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6382

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub73 = sub i64 %22, 1, !dbg !6382
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6382
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6382
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6382

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6382

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub78 = sub i64 %23, 1, !dbg !6382
  %and79 = and i64 %sub78, 562949953421312, !dbg !6382
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6382
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6382

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6382

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub83 = sub i64 %24, 1, !dbg !6382
  %and84 = and i64 %sub83, 281474976710656, !dbg !6382
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6382
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6382

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6382

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub88 = sub i64 %25, 1, !dbg !6382
  %and89 = and i64 %sub88, 140737488355328, !dbg !6382
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6382
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6382

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6382

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub93 = sub i64 %26, 1, !dbg !6382
  %and94 = and i64 %sub93, 70368744177664, !dbg !6382
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6382
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6382

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6382

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub98 = sub i64 %27, 1, !dbg !6382
  %and99 = and i64 %sub98, 35184372088832, !dbg !6382
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6382
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6382

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6382

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub103 = sub i64 %28, 1, !dbg !6382
  %and104 = and i64 %sub103, 17592186044416, !dbg !6382
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6382
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6382

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6382

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub108 = sub i64 %29, 1, !dbg !6382
  %and109 = and i64 %sub108, 8796093022208, !dbg !6382
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6382
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6382

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6382

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub113 = sub i64 %30, 1, !dbg !6382
  %and114 = and i64 %sub113, 4398046511104, !dbg !6382
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6382
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6382

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6382

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub118 = sub i64 %31, 1, !dbg !6382
  %and119 = and i64 %sub118, 2199023255552, !dbg !6382
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6382
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6382

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6382

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub123 = sub i64 %32, 1, !dbg !6382
  %and124 = and i64 %sub123, 1099511627776, !dbg !6382
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6382
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6382

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6382

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub128 = sub i64 %33, 1, !dbg !6382
  %and129 = and i64 %sub128, 549755813888, !dbg !6382
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6382
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6382

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6382

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub133 = sub i64 %34, 1, !dbg !6382
  %and134 = and i64 %sub133, 274877906944, !dbg !6382
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6382
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6382

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6382

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub138 = sub i64 %35, 1, !dbg !6382
  %and139 = and i64 %sub138, 137438953472, !dbg !6382
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6382
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6382

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6382

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub143 = sub i64 %36, 1, !dbg !6382
  %and144 = and i64 %sub143, 68719476736, !dbg !6382
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6382
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6382

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6382

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub148 = sub i64 %37, 1, !dbg !6382
  %and149 = and i64 %sub148, 34359738368, !dbg !6382
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6382
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6382

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6382

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub153 = sub i64 %38, 1, !dbg !6382
  %and154 = and i64 %sub153, 17179869184, !dbg !6382
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6382
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6382

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6382

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub158 = sub i64 %39, 1, !dbg !6382
  %and159 = and i64 %sub158, 8589934592, !dbg !6382
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6382
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6382

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6382

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub163 = sub i64 %40, 1, !dbg !6382
  %and164 = and i64 %sub163, 4294967296, !dbg !6382
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6382
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6382

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6382

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub168 = sub i64 %41, 1, !dbg !6382
  %and169 = and i64 %sub168, 2147483648, !dbg !6382
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6382
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6382

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6382

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub173 = sub i64 %42, 1, !dbg !6382
  %and174 = and i64 %sub173, 1073741824, !dbg !6382
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6382
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6382

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6382

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub178 = sub i64 %43, 1, !dbg !6382
  %and179 = and i64 %sub178, 536870912, !dbg !6382
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6382
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6382

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6382

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub183 = sub i64 %44, 1, !dbg !6382
  %and184 = and i64 %sub183, 268435456, !dbg !6382
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6382
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6382

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6382

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub188 = sub i64 %45, 1, !dbg !6382
  %and189 = and i64 %sub188, 134217728, !dbg !6382
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6382
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6382

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6382

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub193 = sub i64 %46, 1, !dbg !6382
  %and194 = and i64 %sub193, 67108864, !dbg !6382
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6382
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6382

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6382

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub198 = sub i64 %47, 1, !dbg !6382
  %and199 = and i64 %sub198, 33554432, !dbg !6382
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6382
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6382

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6382

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub203 = sub i64 %48, 1, !dbg !6382
  %and204 = and i64 %sub203, 16777216, !dbg !6382
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6382
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6382

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6382

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub208 = sub i64 %49, 1, !dbg !6382
  %and209 = and i64 %sub208, 8388608, !dbg !6382
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6382
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6382

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6382

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub213 = sub i64 %50, 1, !dbg !6382
  %and214 = and i64 %sub213, 4194304, !dbg !6382
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6382
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6382

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6382

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub218 = sub i64 %51, 1, !dbg !6382
  %and219 = and i64 %sub218, 2097152, !dbg !6382
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6382
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6382

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6382

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub223 = sub i64 %52, 1, !dbg !6382
  %and224 = and i64 %sub223, 1048576, !dbg !6382
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6382
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6382

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6382

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub228 = sub i64 %53, 1, !dbg !6382
  %and229 = and i64 %sub228, 524288, !dbg !6382
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6382
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6382

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6382

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub233 = sub i64 %54, 1, !dbg !6382
  %and234 = and i64 %sub233, 262144, !dbg !6382
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6382
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6382

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6382

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub238 = sub i64 %55, 1, !dbg !6382
  %and239 = and i64 %sub238, 131072, !dbg !6382
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6382
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6382

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6382

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub243 = sub i64 %56, 1, !dbg !6382
  %and244 = and i64 %sub243, 65536, !dbg !6382
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6382
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6382

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6382

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub248 = sub i64 %57, 1, !dbg !6382
  %and249 = and i64 %sub248, 32768, !dbg !6382
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6382
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6382

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6382

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub253 = sub i64 %58, 1, !dbg !6382
  %and254 = and i64 %sub253, 16384, !dbg !6382
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6382
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6382

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6382

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub258 = sub i64 %59, 1, !dbg !6382
  %and259 = and i64 %sub258, 8192, !dbg !6382
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6382
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6382

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6382

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub263 = sub i64 %60, 1, !dbg !6382
  %and264 = and i64 %sub263, 4096, !dbg !6382
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6382
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6382

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6382

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub268 = sub i64 %61, 1, !dbg !6382
  %and269 = and i64 %sub268, 2048, !dbg !6382
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6382
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6382

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6382

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub273 = sub i64 %62, 1, !dbg !6382
  %and274 = and i64 %sub273, 1024, !dbg !6382
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6382
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6382

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6382

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub278 = sub i64 %63, 1, !dbg !6382
  %and279 = and i64 %sub278, 512, !dbg !6382
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6382
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6382

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6382

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub283 = sub i64 %64, 1, !dbg !6382
  %and284 = and i64 %sub283, 256, !dbg !6382
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6382
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6382

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6382

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub288 = sub i64 %65, 1, !dbg !6382
  %and289 = and i64 %sub288, 128, !dbg !6382
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6382
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6382

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6382

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub293 = sub i64 %66, 1, !dbg !6382
  %and294 = and i64 %sub293, 64, !dbg !6382
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6382
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6382

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6382

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub298 = sub i64 %67, 1, !dbg !6382
  %and299 = and i64 %sub298, 32, !dbg !6382
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6382
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6382

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6382

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub303 = sub i64 %68, 1, !dbg !6382
  %and304 = and i64 %sub303, 16, !dbg !6382
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6382
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6382

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6382

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub308 = sub i64 %69, 1, !dbg !6382
  %and309 = and i64 %sub308, 8, !dbg !6382
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6382
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6382

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6382

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub313 = sub i64 %70, 1, !dbg !6382
  %and314 = and i64 %sub313, 4, !dbg !6382
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6382
  %71 = zext i1 %tobool315 to i64, !dbg !6382
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6382
  br label %cond.end, !dbg !6382

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6382
  br label %cond.end317, !dbg !6382

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6382
  br label %cond.end319, !dbg !6382

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6382
  br label %cond.end321, !dbg !6382

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6382
  br label %cond.end323, !dbg !6382

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6382
  br label %cond.end325, !dbg !6382

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6382
  br label %cond.end327, !dbg !6382

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6382
  br label %cond.end329, !dbg !6382

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6382
  br label %cond.end331, !dbg !6382

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6382
  br label %cond.end333, !dbg !6382

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6382
  br label %cond.end335, !dbg !6382

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6382
  br label %cond.end337, !dbg !6382

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6382
  br label %cond.end339, !dbg !6382

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6382
  br label %cond.end341, !dbg !6382

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6382
  br label %cond.end343, !dbg !6382

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6382
  br label %cond.end345, !dbg !6382

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6382
  br label %cond.end347, !dbg !6382

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6382
  br label %cond.end349, !dbg !6382

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6382
  br label %cond.end351, !dbg !6382

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6382
  br label %cond.end353, !dbg !6382

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6382
  br label %cond.end355, !dbg !6382

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6382
  br label %cond.end357, !dbg !6382

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6382
  br label %cond.end359, !dbg !6382

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6382
  br label %cond.end361, !dbg !6382

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6382
  br label %cond.end363, !dbg !6382

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6382
  br label %cond.end365, !dbg !6382

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6382
  br label %cond.end367, !dbg !6382

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6382
  br label %cond.end369, !dbg !6382

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6382
  br label %cond.end371, !dbg !6382

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6382
  br label %cond.end373, !dbg !6382

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6382
  br label %cond.end375, !dbg !6382

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6382
  br label %cond.end377, !dbg !6382

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6382
  br label %cond.end379, !dbg !6382

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6382
  br label %cond.end381, !dbg !6382

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6382
  br label %cond.end383, !dbg !6382

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6382
  br label %cond.end385, !dbg !6382

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6382
  br label %cond.end387, !dbg !6382

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6382
  br label %cond.end389, !dbg !6382

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6382
  br label %cond.end391, !dbg !6382

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6382
  br label %cond.end393, !dbg !6382

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6382
  br label %cond.end395, !dbg !6382

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6382
  br label %cond.end397, !dbg !6382

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6382
  br label %cond.end399, !dbg !6382

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6382
  br label %cond.end401, !dbg !6382

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6382
  br label %cond.end403, !dbg !6382

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6382
  br label %cond.end405, !dbg !6382

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6382
  br label %cond.end407, !dbg !6382

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6382
  br label %cond.end409, !dbg !6382

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6382
  br label %cond.end411, !dbg !6382

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6382
  br label %cond.end413, !dbg !6382

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6382
  br label %cond.end415, !dbg !6382

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6382
  br label %cond.end417, !dbg !6382

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6382
  br label %cond.end419, !dbg !6382

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6382
  br label %cond.end421, !dbg !6382

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6382
  br label %cond.end423, !dbg !6382

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6382
  br label %cond.end425, !dbg !6382

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6382
  br label %cond.end427, !dbg !6382

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6382
  br label %cond.end429, !dbg !6382

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6382
  br label %cond.end431, !dbg !6382

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6382
  br label %cond.end433, !dbg !6382

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6382
  br label %cond.end435, !dbg !6382

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6382
  br label %cond.end437, !dbg !6382

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6382
  br label %cond.end440, !dbg !6382

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6382

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6382
  br label %cond.end444, !dbg !6382

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6382
  %sub443 = sub i64 %72, 1, !dbg !6382
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !6382
  br label %cond.end444, !dbg !6382

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6382
  %sub446 = sub i32 %cond445, 12, !dbg !6383
  %add = add i32 %sub446, 1, !dbg !6384
  store i32 %add, i32* %retval, align 4, !dbg !6385
  br label %return, !dbg !6385

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6386
  %dec = add i64 %73, -1, !dbg !6386
  store i64 %dec, i64* %size.addr, align 8, !dbg !6386
  %74 = load i64, i64* %size.addr, align 8, !dbg !6387
  %shr = lshr i64 %74, 12, !dbg !6387
  store i64 %shr, i64* %size.addr, align 8, !dbg !6387
  %75 = load i64, i64* %size.addr, align 8, !dbg !6388
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6365
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6389
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6390
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !6389, !srcloc !6391
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6389
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6392
  %add.i = add i32 %79, 1, !dbg !6393
  store i32 %add.i, i32* %retval, align 4, !dbg !6394
  br label %return, !dbg !6394

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6395
  ret i32 %80, !dbg !6395
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !6396 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6357, metadata !DIExpression()), !dbg !6400
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6364, metadata !DIExpression()), !dbg !6402
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6403, metadata !DIExpression()), !dbg !6404
  %0 = load i64, i64* %n.addr, align 8, !dbg !6405
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6402
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6406
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6407
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !6406, !srcloc !6391
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6406
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6408
  %add.i = add i32 %4, 1, !dbg !6409
  %sub = sub i32 %add.i, 1, !dbg !6410
  ret i32 %sub, !dbg !6411
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6412 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6418, metadata !DIExpression()), !dbg !6419
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6424
  ret i8* %0, !dbg !6425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !6426 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !6429, metadata !DIExpression()), !dbg !6430
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6433
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !6435
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #7, !dbg !6436
  br i1 %call, label %if.then, label %if.end, !dbg !6437

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !6438
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6440
  call void %1(%struct.kref* %2) #7, !dbg !6438
  store i32 1, i32* %retval, align 4, !dbg !6441
  br label %return, !dbg !6441

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6442
  br label %return, !dbg !6442

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6443
  ret i32 %3, !dbg !6443
}

; Function Attrs: noredzone
declare dso_local void @__drm_atomic_state_free(%struct.kref*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !6444 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6450
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #7, !dbg !6451
  ret i1 %call, !dbg !6452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6453 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6456, metadata !DIExpression()), !dbg !6457
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6460
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6461
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !6462
  ret i1 %call, !dbg !6463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6464 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6467, metadata !DIExpression()), !dbg !6473
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6478, metadata !DIExpression()), !dbg !6479
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6480, metadata !DIExpression()), !dbg !6482
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6483, metadata !DIExpression()), !dbg !6491
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6493, metadata !DIExpression()), !dbg !6494
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6495, metadata !DIExpression()), !dbg !6496
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6497, metadata !DIExpression()), !dbg !6498
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6499, metadata !DIExpression()), !dbg !6500
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6503, metadata !DIExpression()), !dbg !6504
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6505, metadata !DIExpression()), !dbg !6506
  %0 = load i32, i32* %i.addr, align 4, !dbg !6507
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6508
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !6509
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6510
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6510
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6511
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6512
  %conv.i.i = trunc i64 %5 to i32, !dbg !6512
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !6513
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6514
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6514
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !6514
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !6515
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6516
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6482
  %sub.i.i = sub i32 0, %10, !dbg !6482
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !6482
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6482
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6482
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6482
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !6482, !srcloc !6517
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6482
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6482
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6482
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6482
  store i32 %15, i32* %old, align 4, !dbg !6506
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !6518
  %tobool = icmp ne i32* %16, null, !dbg !6518
  br i1 %tobool, label %if.then, label %if.end, !dbg !6520

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6521
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6522
  store i32 %17, i32* %18, align 4, !dbg !6523
  br label %if.end, !dbg !6524

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6525
  %20 = load i32, i32* %i.addr, align 4, !dbg !6527
  %cmp = icmp eq i32 %19, %20, !dbg !6528
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6529

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6530, !srcloc !6532
  store i1 true, i1* %retval, align 1, !dbg !6533
  br label %return, !dbg !6533

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6534
  %cmp3 = icmp slt i32 %21, 0, !dbg !6534
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !6534

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !6534
  %23 = load i32, i32* %i.addr, align 4, !dbg !6534
  %sub = sub i32 %22, %23, !dbg !6534
  %cmp4 = icmp slt i32 %sub, 0, !dbg !6534
  br label %lor.end, !dbg !6534

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !6534
  %lnot5 = xor i1 %lnot, true, !dbg !6534
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6534
  %conv = sext i32 %lnot.ext to i64, !dbg !6534
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6534
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6536

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6537
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #7, !dbg !6538
  br label %if.end8, !dbg !6538

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !6539
  br label %return, !dbg !6539

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !6540
  ret i1 %26, !dbg !6540
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6541 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6545, metadata !DIExpression()), !dbg !6546
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  ret i1 true, !dbg !6549
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6550 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6554, metadata !DIExpression()), !dbg !6555
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6558, metadata !DIExpression()), !dbg !6559
  ret void, !dbg !6560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mode_rect* @drm_plane_get_damage_clips(%struct.drm_plane_state* %state) #0 !dbg !6561 {
entry:
  %state.addr = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane_state* %state, %struct.drm_plane_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_plane_state** %state.addr, metadata !6564, metadata !DIExpression()), !dbg !6565
  %0 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !6566
  %tobool = icmp ne %struct.drm_plane_state* %0, null, !dbg !6566
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !6567

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !6568
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %1, i32 0, i32 19, !dbg !6569
  %2 = load %struct.drm_property_blob*, %struct.drm_property_blob** %fb_damage_clips, align 8, !dbg !6569
  %tobool1 = icmp ne %struct.drm_property_blob* %2, null, !dbg !6568
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !6570

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct.drm_plane_state*, %struct.drm_plane_state** %state.addr, align 8, !dbg !6571
  %fb_damage_clips2 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %3, i32 0, i32 19, !dbg !6572
  %4 = load %struct.drm_property_blob*, %struct.drm_property_blob** %fb_damage_clips2, align 8, !dbg !6572
  %data = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %4, i32 0, i32 5, !dbg !6573
  %5 = load i8*, i8** %data, align 8, !dbg !6573
  br label %cond.end, !dbg !6570

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !6570

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ null, %cond.false ], !dbg !6570
  %6 = bitcast i8* %cond to %struct.drm_mode_rect*, !dbg !6574
  ret %struct.drm_mode_rect* %6, !dbg !6575
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5390, !5391, !5392, !5393}
!llvm.ident = !{!5394}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !255, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_damage_helper.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !105, !149, !158, !164, !169, !177, !181, !197, !203, !210, !217, !222, !229, !235, !240, !247}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !92, line: 76, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!94 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !106, line: 91, baseType: !107, size: 32, elements: !108)
!106 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!109 = !DIEnumerator(name: "MODE_OK", value: 0)
!110 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!111 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!112 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!113 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!114 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!115 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!116 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!117 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!118 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!119 = !DIEnumerator(name: "MODE_MEM", value: 10)
!120 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!121 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!122 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!123 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!124 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!125 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!126 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!127 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!128 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!129 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!130 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!131 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!132 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!133 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!134 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!135 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!136 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!137 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!138 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!139 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!140 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!141 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!142 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!143 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!144 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!145 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!146 = !DIEnumerator(name: "MODE_STALE", value: -3)
!147 = !DIEnumerator(name: "MODE_BAD", value: -2)
!148 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !150, line: 96, baseType: !5, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!156 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!157 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !159, line: 94, baseType: !5, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !159, line: 59, baseType: !5, size: 32, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "connector_status_connected", value: 1, isUnsigned: true)
!167 = !DIEnumerator(name: "connector_status_disconnected", value: 2, isUnsigned: true)
!168 = !DIEnumerator(name: "connector_status_unknown", value: 3, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !159, line: 133, baseType: !5, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176}
!171 = !DIEnumerator(name: "SubPixelUnknown", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4, isUnsigned: true)
!176 = !DIEnumerator(name: "SubPixelNone", value: 5, isUnsigned: true)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !159, line: 223, baseType: !5, size: 32, elements: !178)
!178 = !{!179, !180}
!179 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0, isUnsigned: true)
!180 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !182, line: 334, baseType: !5, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!184 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4, isUnsigned: true)
!189 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5, isUnsigned: true)
!190 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6, isUnsigned: true)
!191 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8, isUnsigned: true)
!192 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9, isUnsigned: true)
!193 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10, isUnsigned: true)
!194 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11, isUnsigned: true)
!195 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15, isUnsigned: true)
!196 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18, isUnsigned: true)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !159, line: 46, baseType: !5, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1, isUnsigned: true)
!201 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2, isUnsigned: true)
!202 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3, isUnsigned: true)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !159, line: 249, baseType: !107, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!206 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!207 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!208 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!209 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !211, line: 77, baseType: !5, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1, isUnsigned: true)
!215 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2, isUnsigned: true)
!216 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !211, line: 84, baseType: !5, size: 32, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2, isUnsigned: true)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !223, line: 33, baseType: !5, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !226, !227, !228}
!225 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!226 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!227 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!228 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !230, line: 536, baseType: !5, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0, isUnsigned: true)
!233 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1, isUnsigned: true)
!234 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !236, line: 10, baseType: !5, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !239}
!238 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!239 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !241, line: 305, baseType: !5, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !244, !245, !246}
!243 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!244 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!245 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!246 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !248, line: 119, baseType: !5, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!251 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!252 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!253 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!254 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!255 = !{!256, !258, !259, !107, !398, !383, !5382, !5383}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !257, line: 148, baseType: !5)
!257 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !230, line: 575, size: 5184, elements: !261)
!261 = !{!262, !5290, !5291, !5292, !5293, !5294, !5295, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5357, !5358, !5359, !5360, !5375, !5376, !5377, !5378, !5379, !5380, !5381}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !260, file: !230, line: 577, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !223, line: 53, size: 11840, elements: !265)
!265 = !{!266, !272, !273, !286, !4031, !4037, !4040, !4041, !4044, !4045, !4046, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4068, !4069, !4070, !4071, !4072, !4073, !4076, !4080, !4081, !5278, !5279, !5280, !5283, !5286, !5287}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !264, file: !223, line: 59, baseType: !267, size: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !257, line: 178, size: 128, elements: !268)
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !257, line: 179, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !267, file: !257, line: 179, baseType: !270, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !264, file: !223, line: 62, baseType: !107, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !264, file: !223, line: 65, baseType: !274, size: 32, offset: 160)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !275, line: 19, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !274, file: !275, line: 20, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !248, line: 113, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !248, line: 111, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !279, file: !248, line: 112, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !257, line: 168, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 166, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !283, file: !257, line: 167, baseType: !107, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !264, file: !223, line: 68, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !289)
!289 = !{!290, !3485, !3486, !3489, !3490, !3541, !3632, !3633, !3634, !3635, !3636, !3645, !3750, !3763, !3958, !3959, !3963, !3965, !3966, !3967, !3971, !3977, !3978, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !4019, !4020, !4021, !4024, !4027, !4028, !4029, !4030}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !288, file: !71, line: 462, baseType: !291, size: 512)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !292, line: 64, size: 512, elements: !293)
!292 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !298, !299, !301, !361, !3346, !3479, !3480, !3481, !3482, !3483, !3484}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !292, line: 65, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !291, file: !292, line: 66, baseType: !267, size: 128, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !291, file: !292, line: 67, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !291, file: !292, line: 68, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !292, line: 192, size: 704, elements: !304)
!304 = !{!305, !306, !322, !323}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !292, line: 193, baseType: !267, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !303, file: !292, line: 194, baseType: !307, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !308, line: 83, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !308, line: 71, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 72, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 72, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !312, file: !308, line: 73, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !308, line: 20, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !315, file: !308, line: 21, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !319, line: 25, baseType: !320)
!319 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 25, elements: !321)
!321 = !{}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !303, file: !292, line: 195, baseType: !291, size: 512, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !303, file: !292, line: 196, baseType: !324, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !292, line: 156, size: 192, elements: !327)
!327 = !{!328, !333, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !326, file: !292, line: 157, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!107, !302, !300}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !292, line: 158, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!295, !302, !300}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !326, file: !292, line: 159, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!107, !302, !300, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !292, line: 148, size: 20736, elements: !345)
!345 = !{!346, !351, !355, !356, !360}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !344, file: !292, line: 149, baseType: !347, size: 192)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !349)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!349 = !{!350}
!350 = !DISubrange(count: 3)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !344, file: !292, line: 150, baseType: !352, size: 4096, offset: 192)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 4096, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !344, file: !292, line: 151, baseType: !107, size: 32, offset: 4288)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !344, file: !292, line: 152, baseType: !357, size: 16384, offset: 4320)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 16384, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 2048)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !344, file: !292, line: 153, baseType: !107, size: 32, offset: 20704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !291, file: !292, line: 69, baseType: !362, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !292, line: 138, size: 448, elements: !364)
!364 = !{!365, !369, !399, !401, !3308, !3336, !3340}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !363, file: !292, line: 139, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !300}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !363, file: !292, line: 140, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !373, line: 230, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375, !391}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !372, file: !373, line: 231, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !300, !384, !348}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !257, line: 60, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !381, line: 73, baseType: !382)
!381 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !381, line: 15, baseType: !383)
!383 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !373, line: 30, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !373, line: 31, baseType: !295, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !385, file: !373, line: 32, baseType: !389, size: 16, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !257, line: 19, baseType: !390)
!390 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !372, file: !373, line: 232, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!379, !300, !384, !295, !395}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !257, line: 55, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !381, line: 72, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !381, line: 16, baseType: !398)
!398 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !363, file: !292, line: 141, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !363, file: !292, line: 142, baseType: !402, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !373, line: 84, size: 320, elements: !406)
!406 = !{!407, !408, !412, !3305, !3306}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !373, line: 85, baseType: !295, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !405, file: !373, line: 86, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!389, !300, !384, !107}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !405, file: !373, line: 88, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!389, !300, !416, !107}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !373, line: 168, size: 448, elements: !418)
!418 = !{!419, !420, !421, !422, !3300, !3301}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !417, file: !373, line: 169, baseType: !385, size: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !417, file: !373, line: 170, baseType: !395, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !417, file: !373, line: 171, baseType: !258, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !417, file: !373, line: 172, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!379, !426, !300, !416, !348, !605, !395}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !428)
!428 = !{!429, !447, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3283, !3284, !3293, !3294, !3295, !3296, !3297, !3298, !3299}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !427, file: !42, line: 920, baseType: !430, size: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !42, line: 917, size: 128, elements: !431)
!431 = !{!432, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !430, file: !42, line: 918, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !434, line: 58, size: 64, elements: !435)
!434 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !434, line: 59, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !430, file: !42, line: 919, baseType: !439, size: 128, align: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !257, line: 216, size: 128, align: 64, elements: !440)
!440 = !{!441, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !257, line: 217, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !439, file: !257, line: 218, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !442}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !427, file: !42, line: 921, baseType: !448, size: 128, offset: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !449, line: 8, size: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!450 = !{!451, !455}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !448, file: !449, line: 9, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !454, line: 18, flags: DIFlagFwdDecl)
!454 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !448, file: !449, line: 10, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !454, line: 89, size: 1536, elements: !458)
!458 = !{!459, !460, !470, !478, !479, !502, !3233, !3235, !3247, !3248, !3249, !3250, !3251, !3257, !3258, !3259}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !457, file: !454, line: 91, baseType: !5, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !457, file: !454, line: 92, baseType: !461, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !462, line: 277, baseType: !463)
!462 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !462, line: 277, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !463, file: !462, line: 277, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !462, line: 70, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !462, line: 65, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !467, file: !462, line: 66, baseType: !5, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !457, file: !454, line: 93, baseType: !471, size: 128, offset: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !472, line: 38, size: 128, elements: !473)
!472 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !472, line: 39, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !471, file: !472, line: 39, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !457, file: !454, line: 94, baseType: !456, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !457, file: !454, line: 95, baseType: !480, size: 128, offset: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !454, line: 47, size: 128, elements: !481)
!481 = !{!482, !498}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !454, line: 48, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !454, line: 48, size: 64, elements: !484)
!484 = !{!485, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !454, line: 49, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !454, line: 49, size: 64, elements: !487)
!487 = !{!488, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !486, file: !454, line: 50, baseType: !489, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !490, line: 21, baseType: !491)
!490 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !492, line: 27, baseType: !5)
!492 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!493 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !486, file: !454, line: 50, baseType: !489, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !483, file: !454, line: 52, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !490, line: 23, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !492, line: 31, baseType: !497)
!497 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !454, line: 54, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !457, file: !454, line: 96, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !505)
!505 = !{!506, !507, !508, !516, !523, !524, !672, !2944, !2945, !2946, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !3209, !3217, !3218, !3219, !3229, !3230, !3231, !3232}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !504, file: !42, line: 611, baseType: !389, size: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !504, file: !42, line: 612, baseType: !390, size: 16, offset: 16)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !504, file: !42, line: 613, baseType: !509, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !510, line: 23, baseType: !511)
!510 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 21, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !511, file: !510, line: 22, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !257, line: 32, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !381, line: 49, baseType: !5)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !504, file: !42, line: 614, baseType: !517, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !510, line: 28, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 26, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !510, line: 27, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !257, line: 33, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !381, line: 50, baseType: !5)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !504, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !504, file: !42, line: 622, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !528)
!528 = !{!529, !533, !546, !550, !556, !560, !566, !570, !574, !578, !582, !583, !589, !593, !619, !648, !652, !658, !663, !667, !668}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !527, file: !42, line: 1865, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!456, !503, !456, !5}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !527, file: !42, line: 1866, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!295, !456, !503, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !539, line: 10, size: 128, elements: !540)
!539 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!540 = !{!541, !545}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !538, file: !539, line: 11, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !258}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !538, file: !539, line: 12, baseType: !258, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !527, file: !42, line: 1867, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!107, !503, !107}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !527, file: !42, line: 1868, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!554, !503, !107}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !527, file: !42, line: 1870, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!107, !456, !348, !107}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !527, file: !42, line: 1872, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!107, !503, !456, !389, !564}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !257, line: 30, baseType: !565)
!565 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !527, file: !42, line: 1873, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!107, !456, !503, !456}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !527, file: !42, line: 1874, baseType: !571, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!107, !503, !456}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !527, file: !42, line: 1875, baseType: !575, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!107, !503, !456, !295}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !527, file: !42, line: 1876, baseType: !579, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!107, !503, !456, !389}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !527, file: !42, line: 1877, baseType: !571, size: 64, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !527, file: !42, line: 1878, baseType: !584, size: 64, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!107, !503, !456, !389, !587}
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !257, line: 16, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !257, line: 13, baseType: !489)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !527, file: !42, line: 1879, baseType: !590, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!107, !503, !456, !503, !456, !5}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !527, file: !42, line: 1881, baseType: !594, size: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!107, !456, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !608, !616, !617, !618}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !598, file: !42, line: 220, baseType: !5, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !598, file: !42, line: 221, baseType: !389, size: 16, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !598, file: !42, line: 222, baseType: !509, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !598, file: !42, line: 223, baseType: !517, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !598, file: !42, line: 224, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !257, line: 46, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !381, line: 88, baseType: !607)
!607 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !598, file: !42, line: 225, baseType: !609, size: 128, offset: 192)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !610, line: 13, size: 128, elements: !611)
!610 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!611 = !{!612, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !609, file: !610, line: 14, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !610, line: 8, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !492, line: 30, baseType: !607)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !609, file: !610, line: 15, baseType: !383, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !598, file: !42, line: 226, baseType: !609, size: 128, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !598, file: !42, line: 227, baseType: !609, size: 128, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !598, file: !42, line: 234, baseType: !426, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !527, file: !42, line: 1882, baseType: !620, size: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!107, !623, !625, !489, !5}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !627, line: 22, size: 1152, elements: !628)
!627 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629, !630, !631, !632, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !626, file: !627, line: 23, baseType: !489, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !626, file: !627, line: 24, baseType: !389, size: 16, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !626, file: !627, line: 25, baseType: !5, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !626, file: !627, line: 26, baseType: !633, size: 32, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !257, line: 104, baseType: !489)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !626, file: !627, line: 27, baseType: !495, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !626, file: !627, line: 28, baseType: !495, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !626, file: !627, line: 37, baseType: !495, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !626, file: !627, line: 38, baseType: !587, size: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !626, file: !627, line: 39, baseType: !587, size: 32, offset: 352)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !626, file: !627, line: 40, baseType: !509, size: 32, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !626, file: !627, line: 41, baseType: !517, size: 32, offset: 416)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !626, file: !627, line: 42, baseType: !605, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !626, file: !627, line: 43, baseType: !609, size: 128, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !626, file: !627, line: 44, baseType: !609, size: 128, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !626, file: !627, line: 45, baseType: !609, size: 128, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !626, file: !627, line: 46, baseType: !609, size: 128, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !626, file: !627, line: 47, baseType: !495, size: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !626, file: !627, line: 48, baseType: !495, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !527, file: !42, line: 1883, baseType: !649, size: 64, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!379, !456, !348, !395}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !527, file: !42, line: 1884, baseType: !653, size: 64, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!107, !503, !656, !495, !495}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !527, file: !42, line: 1886, baseType: !659, size: 64, offset: 1088)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!107, !503, !662, !107}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !527, file: !42, line: 1887, baseType: !664, size: 64, offset: 1152)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!107, !503, !456, !426, !5, !389}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !527, file: !42, line: 1890, baseType: !579, size: 64, offset: 1216)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !527, file: !42, line: 1891, baseType: !669, size: 64, offset: 1280)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!107, !503, !554, !107}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !504, file: !42, line: 623, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !731, !2551, !2633, !2716, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2732, !2736, !2737, !2740, !2741, !2744, !2745, !2746, !2787, !2814, !2815, !2816, !2817, !2818, !2819, !2822, !2824, !2831, !2832, !2834, !2835, !2836, !2895, !2896, !2911, !2912, !2913, !2914, !2915, !2918, !2919, !2920, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !674, file: !42, line: 1417, baseType: !267, size: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !674, file: !42, line: 1418, baseType: !587, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !674, file: !42, line: 1419, baseType: !501, size: 8, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !674, file: !42, line: 1420, baseType: !398, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !674, file: !42, line: 1421, baseType: !605, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !674, file: !42, line: 1422, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !684)
!684 = !{!685, !686, !687, !694, !698, !702, !706, !710, !711, !721, !724, !725, !726, !728, !729, !730}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !42, line: 2229, baseType: !295, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !683, file: !42, line: 2230, baseType: !107, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !683, file: !42, line: 2238, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!107, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !693, line: 28, flags: DIFlagFwdDecl)
!693 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !683, file: !42, line: 2239, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !683, file: !42, line: 2240, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!456, !682, !107, !295, !258}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !683, file: !42, line: 2242, baseType: !703, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !673}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !683, file: !42, line: 2243, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !709, line: 76, flags: DIFlagFwdDecl)
!709 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !42, line: 2244, baseType: !682, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !683, file: !42, line: 2245, baseType: !712, size: 64, offset: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !257, line: 182, size: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !712, file: !257, line: 183, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !257, line: 186, size: 128, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !257, line: 187, baseType: !715, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !716, file: !257, line: 187, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !683, file: !42, line: 2247, baseType: !722, offset: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !723, line: 187, elements: !321)
!723 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !683, file: !42, line: 2248, baseType: !722, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !683, file: !42, line: 2249, baseType: !722, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !683, file: !42, line: 2250, baseType: !727, offset: 576)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, elements: !349)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !683, file: !42, line: 2252, baseType: !722, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !683, file: !42, line: 2253, baseType: !722, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !683, file: !42, line: 2254, baseType: !722, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !674, file: !42, line: 1423, baseType: !732, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !735)
!735 = !{!736, !740, !744, !745, !749, !755, !759, !760, !761, !765, !769, !770, !771, !772, !778, !783, !784, !791, !792, !793, !794, !2535, !2550}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !734, file: !42, line: 1936, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!503, !673}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !734, file: !42, line: 1937, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !503}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !734, file: !42, line: 1938, baseType: !741, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !734, file: !42, line: 1940, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !503, !107}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !734, file: !42, line: 1941, baseType: !750, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!107, !503, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !734, file: !42, line: 1942, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!107, !503}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !734, file: !42, line: 1943, baseType: !741, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !734, file: !42, line: 1944, baseType: !703, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !734, file: !42, line: 1945, baseType: !762, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!107, !673, !107}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !734, file: !42, line: 1946, baseType: !766, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!107, !673}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !734, file: !42, line: 1947, baseType: !766, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !734, file: !42, line: 1948, baseType: !766, size: 64, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !734, file: !42, line: 1949, baseType: !766, size: 64, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !734, file: !42, line: 1950, baseType: !773, size: 64, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!107, !456, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !734, file: !42, line: 1951, baseType: !779, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!107, !673, !782, !348}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !734, file: !42, line: 1952, baseType: !703, size: 64, offset: 960)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !734, file: !42, line: 1954, baseType: !785, size: 64, offset: 1024)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!107, !788, !456}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !790, line: 539, flags: DIFlagFwdDecl)
!790 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !734, file: !42, line: 1955, baseType: !785, size: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !734, file: !42, line: 1956, baseType: !785, size: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !734, file: !42, line: 1957, baseType: !785, size: 64, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !734, file: !42, line: 1963, baseType: !795, size: 64, offset: 1280)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!107, !673, !798, !256}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !800, line: 68, size: 512, align: 128, elements: !801)
!800 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803, !2527, !2534}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !800, line: 69, baseType: !398, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !800, line: 77, baseType: !804, size: 320, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !800, line: 77, size: 320, elements: !805)
!805 = !{!806, !989, !994, !1022, !1030, !1036, !2458, !2526}
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 78, baseType: !807, size: 320)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 78, size: 320, elements: !808)
!808 = !{!809, !810, !987, !988}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !807, file: !800, line: 84, baseType: !267, size: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !807, file: !800, line: 86, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !813)
!813 = !{!814, !815, !822, !823, !824, !839, !855, !856, !857, !858, !980, !981, !984, !985, !986}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !812, file: !42, line: 452, baseType: !503, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !812, file: !42, line: 453, baseType: !816, size: 128, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !817, line: 292, size: 128, elements: !818)
!817 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !816, file: !817, line: 293, baseType: !307)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !816, file: !817, line: 295, baseType: !256, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !816, file: !817, line: 296, baseType: !258, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !812, file: !42, line: 454, baseType: !256, size: 32, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !812, file: !42, line: 455, baseType: !282, size: 32, offset: 224)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !812, file: !42, line: 460, baseType: !825, size: 128, offset: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !826, line: 125, size: 128, elements: !827)
!826 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !838}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !825, file: !826, line: 126, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !826, line: 31, size: 64, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !829, file: !826, line: 32, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !826, line: 24, size: 192, align: 64, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !833, file: !826, line: 25, baseType: !398, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !833, file: !826, line: 26, baseType: !832, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !833, file: !826, line: 27, baseType: !832, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !825, file: !826, line: 127, baseType: !832, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !812, file: !42, line: 461, baseType: !840, size: 256, offset: 384)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !841, line: 35, size: 256, elements: !842)
!841 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !851, !852, !854}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !840, file: !841, line: 36, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !845, line: 13, baseType: !846)
!845 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !257, line: 175, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 173, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !847, file: !257, line: 174, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !490, line: 22, baseType: !614)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !840, file: !841, line: 42, baseType: !844, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !840, file: !841, line: 46, baseType: !853, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !308, line: 29, baseType: !315)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !840, file: !841, line: 47, baseType: !267, size: 128, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !812, file: !42, line: 462, baseType: !398, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !812, file: !42, line: 463, baseType: !398, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !812, file: !42, line: 464, baseType: !398, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !812, file: !42, line: 465, baseType: !859, size: 64, offset: 832)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !862)
!862 = !{!863, !867, !871, !875, !879, !883, !889, !895, !899, !904, !908, !912, !916, !944, !948, !954, !955, !956, !960, !965, !969, !976}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !861, file: !42, line: 368, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!107, !798, !753}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !861, file: !42, line: 369, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!107, !426, !798}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !861, file: !42, line: 372, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!107, !811, !753}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !861, file: !42, line: 375, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!107, !798}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !861, file: !42, line: 381, baseType: !880, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!107, !426, !811, !270, !5}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !861, file: !42, line: 383, baseType: !884, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !861, file: !42, line: 385, baseType: !890, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!107, !426, !811, !605, !5, !5, !893, !894}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !861, file: !42, line: 388, baseType: !896, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!107, !426, !811, !605, !5, !5, !798, !258}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !861, file: !42, line: 393, baseType: !900, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!903, !811, !903}
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !257, line: 125, baseType: !495)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !861, file: !42, line: 394, baseType: !905, size: 64, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !798, !5, !5}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !861, file: !42, line: 395, baseType: !909, size: 64, offset: 640)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!107, !798, !256}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !861, file: !42, line: 396, baseType: !913, size: 64, offset: 704)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !798}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !861, file: !42, line: 397, baseType: !917, size: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!379, !920, !942}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !922)
!922 = !{!923, !924, !925, !929, !930, !931, !934, !935}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !921, file: !42, line: 321, baseType: !426, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !921, file: !42, line: 326, baseType: !605, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !921, file: !42, line: 327, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !920, !383, !383}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !921, file: !42, line: 328, baseType: !258, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !921, file: !42, line: 329, baseType: !107, size: 32, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !921, file: !42, line: 330, baseType: !932, size: 16, offset: 288)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !490, line: 19, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !492, line: 24, baseType: !390)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !921, file: !42, line: 331, baseType: !932, size: 16, offset: 304)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !42, line: 332, baseType: !936, size: 64, offset: 320)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !42, line: 332, size: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !936, file: !42, line: 333, baseType: !5, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !936, file: !42, line: 334, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !861, file: !42, line: 402, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!107, !811, !798, !798, !3}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !861, file: !42, line: 404, baseType: !949, size: 64, offset: 896)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!564, !798, !952}
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !953, line: 305, baseType: !5)
!953 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!954 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !861, file: !42, line: 405, baseType: !913, size: 64, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !861, file: !42, line: 406, baseType: !876, size: 64, offset: 1024)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !861, file: !42, line: 407, baseType: !957, size: 64, offset: 1088)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!107, !798, !398, !398}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !861, file: !42, line: 409, baseType: !961, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !798, !964, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !861, file: !42, line: 410, baseType: !966, size: 64, offset: 1216)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!107, !811, !798}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !861, file: !42, line: 413, baseType: !970, size: 64, offset: 1280)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!107, !973, !426, !975}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !861, file: !42, line: 415, baseType: !977, size: 64, offset: 1344)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !426}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !42, line: 466, baseType: !398, size: 64, offset: 896)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !812, file: !42, line: 467, baseType: !982, size: 32, offset: 960)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !983, line: 8, baseType: !489)
!983 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!984 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !812, file: !42, line: 468, baseType: !307, offset: 992)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !812, file: !42, line: 469, baseType: !267, size: 128, offset: 1024)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !812, file: !42, line: 470, baseType: !258, size: 64, offset: 1152)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !807, file: !800, line: 87, baseType: !398, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !807, file: !800, line: 94, baseType: !398, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 96, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 96, size: 64, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !990, file: !800, line: 101, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !257, line: 143, baseType: !495)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 103, baseType: !995, size: 320)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 103, size: 320, elements: !996)
!996 = !{!997, !1007, !1010, !1011}
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !800, line: 104, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !800, line: 104, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !998, file: !800, line: 105, baseType: !267, size: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !800, line: 106, baseType: !1002, size: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !800, line: 106, size: 128, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !800, line: 107, baseType: !798, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1002, file: !800, line: 109, baseType: !107, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1002, file: !800, line: 110, baseType: !107, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !995, file: !800, line: 117, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !800, line: 117, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !995, file: !800, line: 119, baseType: !258, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !800, line: 120, baseType: !1012, size: 64, offset: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !800, line: 120, size: 64, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1012, file: !800, line: 121, baseType: !258, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1012, file: !800, line: 122, baseType: !398, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !800, line: 123, baseType: !1017, size: 32)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !800, line: 123, size: 32, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1017, file: !800, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1017, file: !800, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1017, file: !800, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 130, baseType: !1023, size: 192)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 130, size: 192, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1023, file: !800, line: 131, baseType: !398, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1023, file: !800, line: 134, baseType: !501, size: 8, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1023, file: !800, line: 135, baseType: !501, size: 8, offset: 72)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1023, file: !800, line: 136, baseType: !282, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1023, file: !800, line: 137, baseType: !5, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 139, baseType: !1031, size: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 139, size: 256, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1031, file: !800, line: 140, baseType: !398, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1031, file: !800, line: 141, baseType: !282, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1031, file: !800, line: 143, baseType: !267, size: 128, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 145, baseType: !1037, size: 256)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 145, size: 256, elements: !1038)
!1038 = !{!1039, !1040, !1042, !1043, !2457}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1037, file: !800, line: 146, baseType: !398, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1037, file: !800, line: 147, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !790, line: 509, baseType: !798)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1037, file: !800, line: 148, baseType: !398, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !800, line: 149, baseType: !1044, size: 64, offset: 192)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !800, line: 149, size: 64, elements: !1045)
!1045 = !{!1046, !2456}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1044, file: !800, line: 150, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !800, line: 388, size: 7296, elements: !1049)
!1049 = !{!1050, !2452}
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !800, line: 389, baseType: !1051, size: 7296)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !800, line: 389, size: 7296, elements: !1052)
!1052 = !{!1053, !1171, !1172, !1173, !1177, !1178, !1179, !1180, !1181, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1222, !1230, !1233, !1279, !1280, !2436, !2437, !2440, !2441, !2442, !2445, !2446, !2447, !2450, !2451}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1051, file: !800, line: 390, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !800, line: 305, size: 1472, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1071, !1072, !1077, !1078, !1081, !1165, !1166, !1167, !1168, !1169}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1055, file: !800, line: 308, baseType: !398, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1055, file: !800, line: 309, baseType: !398, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1055, file: !800, line: 313, baseType: !1054, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1055, file: !800, line: 313, baseType: !1054, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1055, file: !800, line: 315, baseType: !833, size: 192, align: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1055, file: !800, line: 323, baseType: !398, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1055, file: !800, line: 327, baseType: !1047, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1055, file: !800, line: 333, baseType: !1065, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !790, line: 284, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !790, line: 284, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1066, file: !790, line: 284, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1070, line: 19, baseType: !398)
!1070 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1055, file: !800, line: 334, baseType: !398, size: 64, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1055, file: !800, line: 343, baseType: !1073, size: 256, offset: 704)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !800, line: 340, size: 256, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1073, file: !800, line: 341, baseType: !833, size: 192, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1073, file: !800, line: 342, baseType: !398, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1055, file: !800, line: 351, baseType: !267, size: 128, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1055, file: !800, line: 353, baseType: !1079, size: 64, offset: 1088)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !800, line: 353, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1055, file: !800, line: 356, baseType: !1082, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1085)
!1085 = !{!1086, !1090, !1091, !1095, !1099, !1139, !1143, !1147, !1151, !1152, !1153, !1157, !1161}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1084, file: !12, line: 558, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1054}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1084, file: !12, line: 559, baseType: !1087, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1084, file: !12, line: 560, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!107, !1054, !398}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1084, file: !12, line: 561, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!107, !1054}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1084, file: !12, line: 562, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !800, line: 682, baseType: !5)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1119, !1126, !1132, !1133, !1134, !1136, !1138}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1105, file: !12, line: 509, baseType: !1054, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1105, file: !12, line: 511, baseType: !256, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1105, file: !12, line: 512, baseType: !398, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1105, file: !12, line: 513, baseType: !398, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1105, file: !12, line: 514, baseType: !1113, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !790, line: 385, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 385, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1115, file: !790, line: 385, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1070, line: 15, baseType: !398)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1105, file: !12, line: 516, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !790, line: 359, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 359, size: 64, elements: !1123)
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1122, file: !790, line: 359, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1070, line: 16, baseType: !398)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1105, file: !12, line: 519, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1070, line: 21, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1070, line: 21, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1128, file: !1070, line: 21, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1070, line: 14, baseType: !398)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1105, file: !12, line: 521, baseType: !798, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1105, file: !12, line: 522, baseType: !798, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1105, file: !12, line: 528, baseType: !1135, size: 64, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1105, file: !12, line: 532, baseType: !1137, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1105, file: !12, line: 536, baseType: !1041, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1084, file: !12, line: 563, baseType: !1140, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1103, !1104, !11}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1084, file: !12, line: 565, baseType: !1144, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1104, !398, !398}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1084, file: !12, line: 567, baseType: !1148, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!398, !1054}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1084, file: !12, line: 571, baseType: !1100, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1084, file: !12, line: 574, baseType: !1100, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1084, file: !12, line: 579, baseType: !1154, size: 64, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!107, !1054, !398, !258, !107, !107}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !12, line: 585, baseType: !1158, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!295, !1054}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1084, file: !12, line: 615, baseType: !1162, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!798, !1054, !398}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1055, file: !800, line: 359, baseType: !398, size: 64, offset: 1216)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1055, file: !800, line: 361, baseType: !426, size: 64, offset: 1280)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1055, file: !800, line: 362, baseType: !258, size: 64, offset: 1344)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1055, file: !800, line: 365, baseType: !844, size: 64, offset: 1408)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1055, file: !800, line: 373, baseType: !1170, offset: 1472)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !800, line: 296, elements: !321)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1051, file: !800, line: 391, baseType: !829, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1051, file: !800, line: 392, baseType: !495, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1051, file: !800, line: 394, baseType: !1174, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!398, !426, !398, !398, !398, !398}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1051, file: !800, line: 398, baseType: !398, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1051, file: !800, line: 399, baseType: !398, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1051, file: !800, line: 405, baseType: !398, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1051, file: !800, line: 406, baseType: !398, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1051, file: !800, line: 407, baseType: !1182, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !790, line: 286, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 286, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1184, file: !790, line: 286, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1070, line: 18, baseType: !398)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1051, file: !800, line: 416, baseType: !282, size: 32, offset: 576)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1051, file: !800, line: 428, baseType: !282, size: 32, offset: 608)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1051, file: !800, line: 437, baseType: !282, size: 32, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1051, file: !800, line: 447, baseType: !282, size: 32, offset: 672)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1051, file: !800, line: 450, baseType: !844, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1051, file: !800, line: 452, baseType: !107, size: 32, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1051, file: !800, line: 454, baseType: !307, offset: 800)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1051, file: !800, line: 457, baseType: !840, size: 256, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1051, file: !800, line: 459, baseType: !267, size: 128, offset: 1088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1051, file: !800, line: 466, baseType: !398, size: 64, offset: 1216)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1051, file: !800, line: 467, baseType: !398, size: 64, offset: 1280)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1051, file: !800, line: 469, baseType: !398, size: 64, offset: 1344)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1051, file: !800, line: 470, baseType: !398, size: 64, offset: 1408)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1051, file: !800, line: 471, baseType: !846, size: 64, offset: 1472)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1051, file: !800, line: 472, baseType: !398, size: 64, offset: 1536)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1051, file: !800, line: 473, baseType: !398, size: 64, offset: 1600)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1051, file: !800, line: 474, baseType: !398, size: 64, offset: 1664)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1051, file: !800, line: 475, baseType: !398, size: 64, offset: 1728)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1051, file: !800, line: 477, baseType: !307, offset: 1792)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1051, file: !800, line: 478, baseType: !398, size: 64, offset: 1792)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1051, file: !800, line: 478, baseType: !398, size: 64, offset: 1856)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1051, file: !800, line: 478, baseType: !398, size: 64, offset: 1920)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1051, file: !800, line: 478, baseType: !398, size: 64, offset: 1984)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1051, file: !800, line: 479, baseType: !398, size: 64, offset: 2048)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1051, file: !800, line: 479, baseType: !398, size: 64, offset: 2112)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1051, file: !800, line: 479, baseType: !398, size: 64, offset: 2176)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1051, file: !800, line: 480, baseType: !398, size: 64, offset: 2240)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1051, file: !800, line: 480, baseType: !398, size: 64, offset: 2304)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1051, file: !800, line: 480, baseType: !398, size: 64, offset: 2368)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1051, file: !800, line: 480, baseType: !398, size: 64, offset: 2432)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1051, file: !800, line: 482, baseType: !1219, size: 2816, offset: 2496)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 2816, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 44)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1051, file: !800, line: 488, baseType: !1223, size: 256, offset: 5312)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1224, line: 60, size: 256, elements: !1225)
!1224 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1223, file: !1224, line: 61, baseType: !1227, size: 256)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 256, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 4)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1051, file: !800, line: 490, baseType: !1231, size: 64, offset: 5568)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !800, line: 490, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1051, file: !800, line: 493, baseType: !1234, size: 896, offset: 5632)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1235, line: 53, baseType: !1236)
!1235 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 13, size: 896, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1244, !1245, !1252, !1253, !1273, !1274, !1275}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1236, file: !1235, line: 18, baseType: !495, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1236, file: !1235, line: 28, baseType: !846, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1236, file: !1235, line: 31, baseType: !840, size: 256, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1236, file: !1235, line: 32, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1235, line: 32, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1236, file: !1235, line: 37, baseType: !390, size: 16, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1236, file: !1235, line: 40, baseType: !1246, size: 192, offset: 512)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1247, line: 53, size: 192, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1246, file: !1247, line: 54, baseType: !844, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1246, file: !1247, line: 55, baseType: !307, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1246, file: !1247, line: 59, baseType: !267, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1236, file: !1235, line: 41, baseType: !258, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1236, file: !1235, line: 42, baseType: !1254, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1257, line: 13, size: 896, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1256, file: !1257, line: 14, baseType: !258, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1256, file: !1257, line: 15, baseType: !398, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1256, file: !1257, line: 17, baseType: !398, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1256, file: !1257, line: 17, baseType: !398, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1256, file: !1257, line: 19, baseType: !383, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1256, file: !1257, line: 21, baseType: !383, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1256, file: !1257, line: 22, baseType: !383, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1256, file: !1257, line: 23, baseType: !383, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1256, file: !1257, line: 24, baseType: !383, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1256, file: !1257, line: 25, baseType: !383, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1256, file: !1257, line: 26, baseType: !383, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1256, file: !1257, line: 27, baseType: !383, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1256, file: !1257, line: 28, baseType: !383, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1256, file: !1257, line: 29, baseType: !383, size: 64, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1236, file: !1235, line: 44, baseType: !282, size: 32, offset: 832)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1236, file: !1235, line: 50, baseType: !932, size: 16, offset: 864)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1236, file: !1235, line: 51, baseType: !1276, size: 16, offset: 880)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !490, line: 18, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !492, line: 23, baseType: !1278)
!1278 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1051, file: !800, line: 495, baseType: !398, size: 64, offset: 6528)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1051, file: !800, line: 497, baseType: !1281, size: 64, offset: 6592)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !800, line: 381, size: 384, elements: !1283)
!1283 = !{!1284, !1285, !2435}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1282, file: !800, line: 382, baseType: !282, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1282, file: !800, line: 383, baseType: !1286, size: 128, offset: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !800, line: 376, size: 128, elements: !1287)
!1287 = !{!1288, !2433}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1286, file: !800, line: 377, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1291, line: 640, size: 48640, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1299, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1314, !1332, !1343, !1428, !1429, !1430, !1441, !1442, !1444, !1445, !1446, !1447, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1526, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1597, !1599, !1600, !1601, !1613, !1614, !1615, !1616, !1617, !1618, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1642, !1647, !1829, !1830, !1831, !1832, !1836, !1839, !1842, !1845, !1848, !1874, !1975, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2021, !2022, !2023, !2024, !2025, !2030, !2031, !2032, !2035, !2036, !2039, !2042, !2045, !2048, !2091, !2094, !2095, !2174, !2175, !2178, !2179, !2182, !2183, !2184, !2188, !2189, !2190, !2203, !2204, !2205, !2215, !2220, !2223, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1290, file: !1291, line: 646, baseType: !1294, size: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1295, line: 56, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1295, line: 57, baseType: !398, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1294, file: !1295, line: 58, baseType: !489, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1290, file: !1291, line: 649, baseType: !1300, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !383)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1290, file: !1291, line: 657, baseType: !258, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1290, file: !1291, line: 658, baseType: !278, size: 32, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !1291, line: 660, baseType: !5, size: 32, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1290, file: !1291, line: 661, baseType: !5, size: 32, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1290, file: !1291, line: 684, baseType: !107, size: 32, offset: 352)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1290, file: !1291, line: 686, baseType: !107, size: 32, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1290, file: !1291, line: 687, baseType: !107, size: 32, offset: 416)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1290, file: !1291, line: 688, baseType: !107, size: 32, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1290, file: !1291, line: 689, baseType: !5, size: 32, offset: 480)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1290, file: !1291, line: 691, baseType: !1311, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1291, line: 691, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1290, file: !1291, line: 692, baseType: !1315, size: 832, offset: 576)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1291, line: 451, size: 832, elements: !1316)
!1316 = !{!1317, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1315, file: !1291, line: 453, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1291, line: 325, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1318, file: !1291, line: 326, baseType: !398, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1318, file: !1291, line: 327, baseType: !489, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1315, file: !1291, line: 454, baseType: !833, size: 192, align: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1315, file: !1291, line: 455, baseType: !267, size: 128, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1315, file: !1291, line: 456, baseType: !5, size: 32, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1315, file: !1291, line: 458, baseType: !495, size: 64, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1315, file: !1291, line: 459, baseType: !495, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1315, file: !1291, line: 460, baseType: !495, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1315, file: !1291, line: 461, baseType: !495, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1315, file: !1291, line: 463, baseType: !495, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1315, file: !1291, line: 465, baseType: !1331, offset: 832)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1291, line: 415, elements: !321)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1290, file: !1291, line: 693, baseType: !1333, size: 384, offset: 1408)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1291, line: 489, size: 384, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1333, file: !1291, line: 490, baseType: !267, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1333, file: !1291, line: 491, baseType: !398, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1333, file: !1291, line: 492, baseType: !398, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1333, file: !1291, line: 493, baseType: !5, size: 32, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1333, file: !1291, line: 494, baseType: !390, size: 16, offset: 288)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1333, file: !1291, line: 495, baseType: !390, size: 16, offset: 304)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1333, file: !1291, line: 497, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1290, file: !1291, line: 697, baseType: !1344, size: 1792, offset: 1792)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1291, line: 507, size: 1792, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1425, !1426}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1344, file: !1291, line: 508, baseType: !833, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1344, file: !1291, line: 515, baseType: !495, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1344, file: !1291, line: 516, baseType: !495, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1344, file: !1291, line: 517, baseType: !495, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1344, file: !1291, line: 518, baseType: !495, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1344, file: !1291, line: 519, baseType: !495, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1344, file: !1291, line: 526, baseType: !850, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1344, file: !1291, line: 527, baseType: !495, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !1291, line: 528, baseType: !5, size: 32, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1344, file: !1291, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1344, file: !1291, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1344, file: !1291, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1344, file: !1291, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1344, file: !1291, line: 563, baseType: !1360, size: 512, offset: 704)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1361)
!1361 = !{!1362, !1370, !1371, !1376, !1419, !1422, !1423, !1424}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1360, file: !18, line: 119, baseType: !1363, size: 256)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1364, line: 9, size: 256, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1363, file: !1364, line: 10, baseType: !833, size: 192, align: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1363, file: !1364, line: 11, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1369, line: 29, baseType: !850)
!1369 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1360, file: !18, line: 120, baseType: !1368, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1360, file: !18, line: 121, baseType: !1372, size: 64, offset: 320)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!17, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1360, file: !18, line: 122, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1379)
!1379 = !{!1380, !1400, !1401, !1404, !1409, !1410, !1414, !1418}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1378, file: !18, line: 160, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !18, line: 215, baseType: !853)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1382, file: !18, line: 216, baseType: !5, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1382, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1382, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1382, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1382, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1382, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1382, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1382, file: !18, line: 233, baseType: !1368, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1382, file: !18, line: 234, baseType: !1375, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1382, file: !18, line: 235, baseType: !1368, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1382, file: !18, line: 236, baseType: !1375, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1382, file: !18, line: 237, baseType: !1397, size: 4096, offset: 512)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 4096, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 8)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1378, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1378, file: !18, line: 162, baseType: !1402, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !257, line: 27, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !381, line: 96, baseType: !107)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1378, file: !18, line: 163, baseType: !1405, size: 32, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !462, line: 276, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !462, line: 276, size: 32, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1406, file: !462, line: 276, baseType: !466, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1378, file: !18, line: 164, baseType: !1375, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1378, file: !18, line: 165, baseType: !1411, size: 128, offset: 256)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1364, line: 14, size: 128, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1411, file: !1364, line: 15, baseType: !825, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1378, file: !18, line: 166, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1368}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1378, file: !18, line: 167, baseType: !1368, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1360, file: !18, line: 123, baseType: !1420, size: 8, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !490, line: 17, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !492, line: 21, baseType: !501)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1360, file: !18, line: 124, baseType: !1420, size: 8, offset: 456)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1360, file: !18, line: 125, baseType: !1420, size: 8, offset: 464)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1360, file: !18, line: 126, baseType: !1420, size: 8, offset: 472)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1344, file: !1291, line: 572, baseType: !1360, size: 512, offset: 1216)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1344, file: !1291, line: 580, baseType: !1427, size: 64, offset: 1728)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1290, file: !1291, line: 721, baseType: !5, size: 32, offset: 3584)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1290, file: !1291, line: 722, baseType: !107, size: 32, offset: 3616)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1290, file: !1291, line: 723, baseType: !1431, size: 64, offset: 3648)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1434, line: 17, baseType: !1435)
!1434 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1434, line: 17, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1435, file: !1434, line: 17, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 64, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 1)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1290, file: !1291, line: 724, baseType: !1433, size: 64, offset: 3712)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1290, file: !1291, line: 749, baseType: !1443, offset: 3776)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1291, line: 290, elements: !321)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1290, file: !1291, line: 751, baseType: !267, size: 128, offset: 3776)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1290, file: !1291, line: 757, baseType: !1047, size: 64, offset: 3904)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1290, file: !1291, line: 758, baseType: !1047, size: 64, offset: 3968)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1290, file: !1291, line: 761, baseType: !1448, size: 320, offset: 4032)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1224, line: 34, size: 320, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1448, file: !1224, line: 35, baseType: !495, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1448, file: !1224, line: 36, baseType: !1452, size: 256, offset: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1054, size: 256, elements: !1228)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1290, file: !1291, line: 766, baseType: !107, size: 32, offset: 4352)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1290, file: !1291, line: 767, baseType: !107, size: 32, offset: 4384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1290, file: !1291, line: 768, baseType: !107, size: 32, offset: 4416)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1290, file: !1291, line: 770, baseType: !107, size: 32, offset: 4448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1290, file: !1291, line: 772, baseType: !398, size: 64, offset: 4480)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1290, file: !1291, line: 775, baseType: !5, size: 32, offset: 4544)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1290, file: !1291, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1290, file: !1291, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1290, file: !1291, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1290, file: !1291, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1290, file: !1291, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1290, file: !1291, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1290, file: !1291, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1290, file: !1291, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1290, file: !1291, line: 831, baseType: !398, size: 64, offset: 4672)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1290, file: !1291, line: 833, baseType: !1469, size: 384, offset: 4736)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1470)
!1470 = !{!1471, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1469, file: !23, line: 26, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!383, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !23, line: 27, baseType: !1477, size: 320, offset: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !23, line: 27, size: 320, elements: !1478)
!1478 = !{!1479, !1489, !1516}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1477, file: !23, line: 36, baseType: !1480, size: 320)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !23, line: 29, size: 320, elements: !1481)
!1481 = !{!1482, !1484, !1485, !1486, !1487, !1488}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1480, file: !23, line: 30, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1480, file: !23, line: 31, baseType: !489, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !23, line: 32, baseType: !489, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1480, file: !23, line: 33, baseType: !489, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1480, file: !23, line: 34, baseType: !495, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1480, file: !23, line: 35, baseType: !1483, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1477, file: !23, line: 46, baseType: !1490, size: 192)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !23, line: 38, size: 192, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1515}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1490, file: !23, line: 39, baseType: !1402, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1490, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !23, line: 41, baseType: !1495, size: 64, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1490, file: !23, line: 41, size: 64, elements: !1496)
!1496 = !{!1497, !1505}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1495, file: !23, line: 42, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1500, line: 7, size: 128, elements: !1501)
!1500 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1499, file: !1500, line: 8, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !381, line: 93, baseType: !607)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1499, file: !1500, line: 9, baseType: !607, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1495, file: !23, line: 43, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1508, line: 7, size: 64, elements: !1509)
!1508 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1507, file: !1508, line: 8, baseType: !1511, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1508, line: 5, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !490, line: 20, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !492, line: 26, baseType: !107)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1507, file: !1508, line: 9, baseType: !1512, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1490, file: !23, line: 45, baseType: !495, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1477, file: !23, line: 54, baseType: !1517, size: 256)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !23, line: 48, size: 256, elements: !1518)
!1518 = !{!1519, !1522, !1523, !1524, !1525}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1517, file: !23, line: 49, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1517, file: !23, line: 50, baseType: !107, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1517, file: !23, line: 51, baseType: !107, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1517, file: !23, line: 52, baseType: !398, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1517, file: !23, line: 53, baseType: !398, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1290, file: !1291, line: 835, baseType: !1527, size: 32, offset: 5120)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !257, line: 22, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !381, line: 28, baseType: !107)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1290, file: !1291, line: 836, baseType: !1527, size: 32, offset: 5152)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1290, file: !1291, line: 840, baseType: !398, size: 64, offset: 5184)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1290, file: !1291, line: 849, baseType: !1289, size: 64, offset: 5248)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1290, file: !1291, line: 852, baseType: !1289, size: 64, offset: 5312)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1290, file: !1291, line: 857, baseType: !267, size: 128, offset: 5376)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1290, file: !1291, line: 858, baseType: !267, size: 128, offset: 5504)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1290, file: !1291, line: 859, baseType: !1289, size: 64, offset: 5632)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1290, file: !1291, line: 867, baseType: !267, size: 128, offset: 5696)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1290, file: !1291, line: 868, baseType: !267, size: 128, offset: 5824)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1290, file: !1291, line: 871, baseType: !1539, size: 64, offset: 5952)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1547, !1548, !1555, !1556}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1540, file: !51, line: 61, baseType: !278, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1540, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1540, file: !51, line: 63, baseType: !307, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1540, file: !51, line: 65, baseType: !1546, size: 256, offset: 64)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 256, elements: !1228)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1540, file: !51, line: 66, baseType: !712, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1540, file: !51, line: 68, baseType: !1549, size: 128, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1550, line: 40, baseType: !1551)
!1550 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1550, line: 36, size: 128, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1551, file: !1550, line: 37, baseType: !307)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1551, file: !1550, line: 38, baseType: !267, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1540, file: !51, line: 69, baseType: !439, size: 128, align: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1540, file: !51, line: 70, baseType: !1557, size: 128, offset: 640)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1558, size: 128, elements: !1439)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1558, file: !51, line: 55, baseType: !107, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1558, file: !51, line: 56, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1564, line: 20, size: 1088, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1567, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1583, !1586, !1587}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1563, file: !1564, line: 21, baseType: !274, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1563, file: !1564, line: 22, baseType: !1568, size: 192, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1569, line: 19, size: 192, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1568, file: !1569, line: 20, baseType: !816, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1568, file: !1569, line: 21, baseType: !5, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1568, file: !1569, line: 22, baseType: !5, size: 32, offset: 160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1563, file: !1564, line: 23, baseType: !439, size: 128, align: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1563, file: !1564, line: 24, baseType: !5, size: 32, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1563, file: !1564, line: 25, baseType: !1289, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1563, file: !1564, line: 26, baseType: !1008, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1563, file: !1564, line: 27, baseType: !5, size: 32, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1563, file: !1564, line: 28, baseType: !1562, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1563, file: !1564, line: 32, baseType: !1581, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !800, line: 516, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1563, file: !1564, line: 33, baseType: !1584, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1564, line: 33, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1563, file: !1564, line: 34, baseType: !107, size: 32, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1563, file: !1564, line: 35, baseType: !1588, size: 192, offset: 896)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1589, line: 7, size: 192, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1592, !1596}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1588, file: !1589, line: 8, baseType: !844, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1588, file: !1589, line: 9, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1589, line: 5, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1588, file: !1589, line: 10, baseType: !5, size: 32, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1290, file: !1291, line: 872, baseType: !1598, size: 512, offset: 6016)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 512, elements: !1228)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1290, file: !1291, line: 873, baseType: !267, size: 128, offset: 6528)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1290, file: !1291, line: 874, baseType: !267, size: 128, offset: 6656)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1290, file: !1291, line: 876, baseType: !1602, size: 64, offset: 6784)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1604, line: 26, size: 192, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1603, file: !1604, line: 27, baseType: !5, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1603, file: !1604, line: 28, baseType: !1608, size: 128, offset: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1609, line: 43, size: 128, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1608, file: !1609, line: 44, baseType: !853)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1608, file: !1609, line: 45, baseType: !267, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1290, file: !1291, line: 879, baseType: !782, size: 64, offset: 6848)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1290, file: !1291, line: 882, baseType: !782, size: 64, offset: 6912)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1290, file: !1291, line: 884, baseType: !495, size: 64, offset: 6976)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1290, file: !1291, line: 885, baseType: !495, size: 64, offset: 7040)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1290, file: !1291, line: 890, baseType: !495, size: 64, offset: 7104)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1290, file: !1291, line: 891, baseType: !1619, size: 128, offset: 7168)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1291, line: 242, size: 128, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1619, file: !1291, line: 244, baseType: !495, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1619, file: !1291, line: 245, baseType: !495, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1619, file: !1291, line: 246, baseType: !853, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1290, file: !1291, line: 900, baseType: !398, size: 64, offset: 7296)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1290, file: !1291, line: 901, baseType: !398, size: 64, offset: 7360)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1290, file: !1291, line: 904, baseType: !495, size: 64, offset: 7424)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1290, file: !1291, line: 907, baseType: !495, size: 64, offset: 7488)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1290, file: !1291, line: 910, baseType: !398, size: 64, offset: 7552)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1290, file: !1291, line: 911, baseType: !398, size: 64, offset: 7616)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1290, file: !1291, line: 914, baseType: !1631, size: 640, offset: 7680)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1632, line: 123, size: 640, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1640, !1641}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1631, file: !1632, line: 124, baseType: !1635, size: 576)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1636, size: 576, elements: !349)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1632, line: 108, size: 192, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1636, file: !1632, line: 109, baseType: !495, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1636, file: !1632, line: 110, baseType: !1411, size: 128, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1631, file: !1632, line: 125, baseType: !5, size: 32, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1631, file: !1632, line: 126, baseType: !5, size: 32, offset: 608)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1290, file: !1291, line: 917, baseType: !1643, size: 192, offset: 8320)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1632, line: 134, size: 192, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1643, file: !1632, line: 135, baseType: !439, size: 128, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1643, file: !1632, line: 136, baseType: !5, size: 32, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1290, file: !1291, line: 923, baseType: !1648, size: 64, offset: 8512)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1651, line: 111, size: 1280, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1672, !1673, !1674, !1675, !1676, !1677, !1784, !1785, !1786, !1787, !1813, !1814, !1824}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1650, file: !1651, line: 112, baseType: !282, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1650, file: !1651, line: 120, baseType: !509, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1650, file: !1651, line: 121, baseType: !517, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1650, file: !1651, line: 122, baseType: !509, size: 32, offset: 96)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1650, file: !1651, line: 123, baseType: !517, size: 32, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1650, file: !1651, line: 124, baseType: !509, size: 32, offset: 160)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1650, file: !1651, line: 125, baseType: !517, size: 32, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1650, file: !1651, line: 126, baseType: !509, size: 32, offset: 224)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1650, file: !1651, line: 127, baseType: !517, size: 32, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1650, file: !1651, line: 128, baseType: !5, size: 32, offset: 288)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1650, file: !1651, line: 129, baseType: !1664, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1665, line: 26, baseType: !1666)
!1665 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1665, line: 24, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1666, file: !1665, line: 25, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 64, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 2)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1650, file: !1651, line: 130, baseType: !1664, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1650, file: !1651, line: 131, baseType: !1664, size: 64, offset: 448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1650, file: !1651, line: 132, baseType: !1664, size: 64, offset: 512)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1650, file: !1651, line: 133, baseType: !1664, size: 64, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1650, file: !1651, line: 135, baseType: !501, size: 8, offset: 640)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1650, file: !1651, line: 137, baseType: !1678, size: 64, offset: 704)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1680, line: 189, size: 1664, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1686, !1691, !1692, !1695, !1696, !1701, !1702, !1703, !1704, !1706, !1707, !1708, !1709, !1710, !1748, !1769}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1679, file: !1680, line: 190, baseType: !278, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1679, file: !1680, line: 191, baseType: !1684, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1680, line: 28, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !257, line: 98, baseType: !1512)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1680, line: 192, baseType: !1687, size: 192, offset: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !1680, line: 192, size: 192, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1687, file: !1680, line: 193, baseType: !267, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1687, file: !1680, line: 194, baseType: !833, size: 192, align: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1679, file: !1680, line: 199, baseType: !840, size: 256, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1679, file: !1680, line: 200, baseType: !1693, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1680, line: 200, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1679, file: !1680, line: 201, baseType: !258, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1680, line: 202, baseType: !1697, size: 64, offset: 640)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !1680, line: 202, size: 64, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1697, file: !1680, line: 203, baseType: !613, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1697, file: !1680, line: 204, baseType: !613, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1679, file: !1680, line: 206, baseType: !613, size: 64, offset: 704)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1679, file: !1680, line: 207, baseType: !509, size: 32, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1679, file: !1680, line: 208, baseType: !517, size: 32, offset: 800)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1679, file: !1680, line: 209, baseType: !1705, size: 32, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1680, line: 31, baseType: !633)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1679, file: !1680, line: 210, baseType: !390, size: 16, offset: 864)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1679, file: !1680, line: 211, baseType: !390, size: 16, offset: 880)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1679, file: !1680, line: 215, baseType: !1278, size: 16, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !1680, line: 222, baseType: !398, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1680, line: 239, baseType: !1711, size: 320, offset: 1024)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !1680, line: 239, size: 320, elements: !1712)
!1712 = !{!1713, !1740}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1711, file: !1680, line: 240, baseType: !1714, size: 320)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1680, line: 108, size: 320, elements: !1715)
!1715 = !{!1716, !1717, !1729, !1732, !1739}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1714, file: !1680, line: 110, baseType: !398, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !1680, line: 111, baseType: !1718, size: 64, offset: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !1680, line: 111, size: 64, elements: !1719)
!1719 = !{!1720, !1728}
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !1680, line: 112, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1718, file: !1680, line: 112, size: 64, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1721, file: !1680, line: 114, baseType: !932, size: 16)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1721, file: !1680, line: 115, baseType: !1725, size: 48, offset: 16)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 48, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 6)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1718, file: !1680, line: 121, baseType: !398, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1714, file: !1680, line: 123, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1680, line: 96, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1714, file: !1680, line: 124, baseType: !1733, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1680, line: 102, size: 192, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1734, file: !1680, line: 103, baseType: !439, size: 128, align: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1734, file: !1680, line: 104, baseType: !278, size: 32, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1734, file: !1680, line: 105, baseType: !564, size: 8, offset: 160)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1714, file: !1680, line: 125, baseType: !295, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1680, line: 241, baseType: !1741, size: 320)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !1680, line: 241, size: 320, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1741, file: !1680, line: 242, baseType: !398, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1741, file: !1680, line: 243, baseType: !398, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1741, file: !1680, line: 244, baseType: !1730, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1741, file: !1680, line: 245, baseType: !1733, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1741, file: !1680, line: 246, baseType: !348, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1680, line: 254, baseType: !1749, size: 256, offset: 1344)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !1680, line: 254, size: 256, elements: !1750)
!1750 = !{!1751, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1749, file: !1680, line: 255, baseType: !1752, size: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1680, line: 128, size: 256, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1752, file: !1680, line: 129, baseType: !258, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1752, file: !1680, line: 130, baseType: !1756, size: 256)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !1228)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !1680, line: 256, baseType: !1758, size: 256)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1680, line: 256, size: 256, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1758, file: !1680, line: 258, baseType: !267, size: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1758, file: !1680, line: 259, baseType: !1762, size: 128, offset: 128)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1763, line: 22, size: 128, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1768}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1762, file: !1763, line: 23, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1763, line: 23, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1762, file: !1763, line: 24, baseType: !398, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1679, file: !1680, line: 274, baseType: !1770, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1680, line: 170, size: 192, elements: !1772)
!1772 = !{!1773, !1782, !1783}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1771, file: !1680, line: 171, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1680, line: 165, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!107, !1678, !1778, !1780, !1678}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1752)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1771, file: !1680, line: 172, baseType: !1678, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1771, file: !1680, line: 173, baseType: !1730, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1650, file: !1651, line: 138, baseType: !1678, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1650, file: !1651, line: 139, baseType: !1678, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1650, file: !1651, line: 140, baseType: !1678, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1650, file: !1651, line: 145, baseType: !1788, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1790, line: 13, size: 896, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1789, file: !1790, line: 14, baseType: !278, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1789, file: !1790, line: 15, baseType: !282, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1789, file: !1790, line: 16, baseType: !282, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1789, file: !1790, line: 21, baseType: !844, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1789, file: !1790, line: 27, baseType: !398, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1789, file: !1790, line: 28, baseType: !398, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1789, file: !1790, line: 29, baseType: !844, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1789, file: !1790, line: 32, baseType: !716, size: 128, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1789, file: !1790, line: 33, baseType: !509, size: 32, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1789, file: !1790, line: 37, baseType: !844, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1789, file: !1790, line: 44, baseType: !1803, size: 256, offset: 640)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1804, line: 15, size: 256, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1803, file: !1804, line: 16, baseType: !853)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1803, file: !1804, line: 18, baseType: !107, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1803, file: !1804, line: 19, baseType: !107, size: 32, offset: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1803, file: !1804, line: 20, baseType: !107, size: 32, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1803, file: !1804, line: 21, baseType: !107, size: 32, offset: 96)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1803, file: !1804, line: 22, baseType: !398, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1804, line: 23, baseType: !398, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1650, file: !1651, line: 146, baseType: !1581, size: 64, offset: 1024)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1650, file: !1651, line: 147, baseType: !1815, size: 64, offset: 1088)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1651, line: 25, size: 64, elements: !1817)
!1817 = !{!1818, !1819, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1816, file: !1651, line: 26, baseType: !282, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1816, file: !1651, line: 27, baseType: !107, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1816, file: !1651, line: 28, baseType: !1821, offset: 64)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 0)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1651, line: 149, baseType: !1825, size: 128, offset: 1152)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !1651, line: 149, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1825, file: !1651, line: 150, baseType: !107, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1825, file: !1651, line: 151, baseType: !439, size: 128, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1290, file: !1291, line: 926, baseType: !1648, size: 64, offset: 8576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1290, file: !1291, line: 929, baseType: !1648, size: 64, offset: 8640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1290, file: !1291, line: 933, baseType: !1678, size: 64, offset: 8704)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1290, file: !1291, line: 943, baseType: !1833, size: 128, offset: 8768)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 16)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1290, file: !1291, line: 945, baseType: !1837, size: 64, offset: 8896)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1291, line: 49, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1290, file: !1291, line: 956, baseType: !1840, size: 64, offset: 8960)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1291, line: 45, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1290, file: !1291, line: 959, baseType: !1843, size: 64, offset: 9024)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1291, line: 959, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1290, file: !1291, line: 962, baseType: !1846, size: 64, offset: 9088)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1291, line: 66, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1290, file: !1291, line: 966, baseType: !1849, size: 64, offset: 9152)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1851, line: 31, size: 576, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1854, !1857, !1860, !1863, !1864, !1867, !1870, !1871}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1850, file: !1851, line: 32, baseType: !282, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1850, file: !1851, line: 33, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1851, line: 9, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1850, file: !1851, line: 34, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1851, line: 10, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1850, file: !1851, line: 35, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1851, line: 8, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1850, file: !1851, line: 36, baseType: !1562, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1850, file: !1851, line: 37, baseType: !1865, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1680, line: 34, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1850, file: !1851, line: 38, baseType: !1868, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1851, line: 38, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1850, file: !1851, line: 39, baseType: !1868, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1850, file: !1851, line: 40, baseType: !1872, size: 64, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1851, line: 12, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1290, file: !1291, line: 969, baseType: !1875, size: 64, offset: 9216)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1877, line: 82, size: 7296, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884, !1885, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1914, !1923, !1924, !1926, !1927, !1928, !1931, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1961, !1962, !1969, !1970, !1971, !1972, !1973, !1974}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1876, file: !1877, line: 83, baseType: !278, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1876, file: !1877, line: 84, baseType: !282, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1876, file: !1877, line: 85, baseType: !107, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1876, file: !1877, line: 86, baseType: !267, size: 128, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1876, file: !1877, line: 88, baseType: !1549, size: 128, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1876, file: !1877, line: 91, baseType: !1289, size: 64, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1876, file: !1877, line: 94, baseType: !1886, size: 192, offset: 448)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1887, line: 30, size: 192, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1886, file: !1887, line: 31, baseType: !267, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1886, file: !1887, line: 32, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1892, line: 25, baseType: !1893)
!1892 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 23, size: 64, elements: !1894)
!1894 = !{!1895}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1893, file: !1892, line: 24, baseType: !1438, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1876, file: !1877, line: 97, baseType: !712, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1876, file: !1877, line: 100, baseType: !107, size: 32, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1876, file: !1877, line: 106, baseType: !107, size: 32, offset: 736)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1876, file: !1877, line: 107, baseType: !1289, size: 64, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1876, file: !1877, line: 110, baseType: !107, size: 32, offset: 832)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1877, line: 111, baseType: !5, size: 32, offset: 864)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1876, file: !1877, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1876, file: !1877, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1876, file: !1877, line: 128, baseType: !107, size: 32, offset: 928)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1876, file: !1877, line: 129, baseType: !267, size: 128, offset: 960)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1876, file: !1877, line: 132, baseType: !1360, size: 512, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1876, file: !1877, line: 133, baseType: !1368, size: 64, offset: 1600)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1876, file: !1877, line: 140, baseType: !1909, size: 256, offset: 1664)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1910, size: 256, elements: !1670)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1877, line: 38, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1910, file: !1877, line: 39, baseType: !495, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1910, file: !1877, line: 40, baseType: !495, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1876, file: !1877, line: 146, baseType: !1915, size: 192, offset: 1920)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1877, line: 66, size: 192, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1915, file: !1877, line: 67, baseType: !1918, size: 192)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1877, line: 47, size: 192, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1918, file: !1877, line: 48, baseType: !846, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1918, file: !1877, line: 49, baseType: !846, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1918, file: !1877, line: 50, baseType: !846, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1876, file: !1877, line: 150, baseType: !1631, size: 640, offset: 2112)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1876, file: !1877, line: 153, baseType: !1925, size: 256, offset: 2752)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1539, size: 256, elements: !1228)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1876, file: !1877, line: 159, baseType: !1539, size: 64, offset: 3008)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1876, file: !1877, line: 162, baseType: !107, size: 32, offset: 3072)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1876, file: !1877, line: 164, baseType: !1929, size: 64, offset: 3136)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1877, line: 164, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1876, file: !1877, line: 175, baseType: !1932, size: 32, offset: 3200)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !462, line: 805, baseType: !1933)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 798, size: 32, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1933, file: !462, line: 803, baseType: !461, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1933, file: !462, line: 804, baseType: !307, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1876, file: !1877, line: 176, baseType: !495, size: 64, offset: 3264)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1876, file: !1877, line: 176, baseType: !495, size: 64, offset: 3328)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1876, file: !1877, line: 176, baseType: !495, size: 64, offset: 3392)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1876, file: !1877, line: 176, baseType: !495, size: 64, offset: 3456)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1876, file: !1877, line: 177, baseType: !495, size: 64, offset: 3520)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1876, file: !1877, line: 178, baseType: !495, size: 64, offset: 3584)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1876, file: !1877, line: 179, baseType: !1619, size: 128, offset: 3648)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1876, file: !1877, line: 180, baseType: !398, size: 64, offset: 3776)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1876, file: !1877, line: 180, baseType: !398, size: 64, offset: 3840)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1876, file: !1877, line: 180, baseType: !398, size: 64, offset: 3904)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1876, file: !1877, line: 180, baseType: !398, size: 64, offset: 3968)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1876, file: !1877, line: 181, baseType: !398, size: 64, offset: 4032)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1876, file: !1877, line: 181, baseType: !398, size: 64, offset: 4096)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1876, file: !1877, line: 181, baseType: !398, size: 64, offset: 4160)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1876, file: !1877, line: 181, baseType: !398, size: 64, offset: 4224)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1876, file: !1877, line: 182, baseType: !398, size: 64, offset: 4288)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1876, file: !1877, line: 182, baseType: !398, size: 64, offset: 4352)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1876, file: !1877, line: 182, baseType: !398, size: 64, offset: 4416)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1876, file: !1877, line: 182, baseType: !398, size: 64, offset: 4480)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1876, file: !1877, line: 183, baseType: !398, size: 64, offset: 4544)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1876, file: !1877, line: 183, baseType: !398, size: 64, offset: 4608)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1876, file: !1877, line: 184, baseType: !1959, offset: 4672)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1960, line: 12, elements: !321)
!1960 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1876, file: !1877, line: 192, baseType: !497, size: 64, offset: 4672)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1876, file: !1877, line: 203, baseType: !1963, size: 2048, offset: 4736)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1964, size: 2048, elements: !1834)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1965, line: 43, size: 128, elements: !1966)
!1965 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1964, file: !1965, line: 44, baseType: !397, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1964, file: !1965, line: 45, baseType: !397, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1876, file: !1877, line: 220, baseType: !564, size: 8, offset: 6784)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1876, file: !1877, line: 221, baseType: !1278, size: 16, offset: 6800)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1876, file: !1877, line: 222, baseType: !1278, size: 16, offset: 6816)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1876, file: !1877, line: 224, baseType: !1047, size: 64, offset: 6848)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1876, file: !1877, line: 227, baseType: !1246, size: 192, offset: 6912)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1876, file: !1877, line: 233, baseType: !1246, size: 192, offset: 7104)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1290, file: !1291, line: 970, baseType: !1976, size: 64, offset: 9280)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1877, line: 20, size: 16576, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1977, file: !1877, line: 21, baseType: !307)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1977, file: !1877, line: 22, baseType: !278, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1977, file: !1877, line: 23, baseType: !1549, size: 128, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1977, file: !1877, line: 24, baseType: !1983, size: 16384, offset: 192)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1984, size: 16384, elements: !353)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1887, line: 49, size: 256, elements: !1985)
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1984, file: !1887, line: 50, baseType: !1987, size: 256)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1887, line: 35, size: 256, elements: !1988)
!1988 = !{!1989, !1996, !1997, !2003}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1987, file: !1887, line: 37, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1991, line: 19, baseType: !1992)
!1991 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1991, line: 18, baseType: !1994)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !107}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1987, file: !1887, line: 38, baseType: !398, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1987, file: !1887, line: 44, baseType: !1998, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1991, line: 22, baseType: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1991, line: 21, baseType: !2001)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1987, file: !1887, line: 46, baseType: !1891, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1290, file: !1291, line: 971, baseType: !1891, size: 64, offset: 9344)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1290, file: !1291, line: 972, baseType: !1891, size: 64, offset: 9408)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1290, file: !1291, line: 974, baseType: !1891, size: 64, offset: 9472)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1290, file: !1291, line: 975, baseType: !1886, size: 192, offset: 9536)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1290, file: !1291, line: 976, baseType: !398, size: 64, offset: 9728)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1290, file: !1291, line: 977, baseType: !395, size: 64, offset: 9792)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1290, file: !1291, line: 978, baseType: !5, size: 32, offset: 9856)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1290, file: !1291, line: 980, baseType: !442, size: 64, offset: 9920)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1290, file: !1291, line: 989, baseType: !2013, size: 128, offset: 9984)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2014, line: 35, size: 128, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2013, file: !2014, line: 36, baseType: !107, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2013, file: !2014, line: 37, baseType: !282, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2013, file: !2014, line: 38, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2014, line: 23, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1290, file: !1291, line: 992, baseType: !495, size: 64, offset: 10112)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1290, file: !1291, line: 993, baseType: !495, size: 64, offset: 10176)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1290, file: !1291, line: 996, baseType: !307, offset: 10240)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1290, file: !1291, line: 999, baseType: !853, offset: 10240)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1290, file: !1291, line: 1001, baseType: !2026, size: 64, offset: 10240)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1291, line: 636, size: 64, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2026, file: !1291, line: 637, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1290, file: !1291, line: 1005, baseType: !825, size: 128, offset: 10304)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1290, file: !1291, line: 1007, baseType: !1289, size: 64, offset: 10432)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1290, file: !1291, line: 1009, baseType: !2033, size: 64, offset: 10496)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1291, line: 1009, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1290, file: !1291, line: 1043, baseType: !258, size: 64, offset: 10560)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1290, file: !1291, line: 1046, baseType: !2037, size: 64, offset: 10624)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1291, line: 41, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1290, file: !1291, line: 1050, baseType: !2040, size: 64, offset: 10688)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1291, line: 42, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1290, file: !1291, line: 1054, baseType: !2043, size: 64, offset: 10752)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1291, line: 55, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1290, file: !1291, line: 1056, baseType: !2046, size: 64, offset: 10816)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1291, line: 40, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1290, file: !1291, line: 1058, baseType: !2049, size: 64, offset: 10880)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2051, line: 99, size: 704, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2078, !2079}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2050, file: !2051, line: 100, baseType: !844, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2050, file: !2051, line: 101, baseType: !282, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2050, file: !2051, line: 102, baseType: !282, size: 32, offset: 96)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2050, file: !2051, line: 105, baseType: !307, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2050, file: !2051, line: 107, baseType: !390, size: 16, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2050, file: !2051, line: 109, baseType: !816, size: 128, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2050, file: !2051, line: 110, baseType: !2060, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2051, line: 73, size: 448, elements: !2062)
!2062 = !{!2063, !2066, !2067, !2072, !2077}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2061, file: !2051, line: 74, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2051, line: 74, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2061, file: !2051, line: 75, baseType: !2049, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2051, line: 83, baseType: !2068, size: 128, offset: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2051, line: 83, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2068, file: !2051, line: 84, baseType: !267, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2068, file: !2051, line: 85, baseType: !1008, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2051, line: 87, baseType: !2073, size: 128, offset: 256)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2051, line: 87, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2073, file: !2051, line: 88, baseType: !716, size: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2073, file: !2051, line: 89, baseType: !439, size: 128, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2061, file: !2051, line: 92, baseType: !5, size: 32, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2050, file: !2051, line: 111, baseType: !712, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2050, file: !2051, line: 113, baseType: !2080, size: 256, offset: 448)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2081, line: 102, size: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2080, file: !2081, line: 103, baseType: !844, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2080, file: !2081, line: 104, baseType: !267, size: 128, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2080, file: !2081, line: 105, baseType: !2086, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2081, line: 21, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1290, file: !1291, line: 1061, baseType: !2092, size: 64, offset: 10944)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1291, line: 43, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1290, file: !1291, line: 1064, baseType: !398, size: 64, offset: 11008)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1290, file: !1291, line: 1065, baseType: !2096, size: 64, offset: 11072)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1887, line: 14, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1887, line: 12, size: 384, elements: !2099)
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !1887, line: 13, baseType: !2101, size: 384)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !1887, line: 13, size: 384, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2101, file: !1887, line: 13, baseType: !107, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2101, file: !1887, line: 13, baseType: !107, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2101, file: !1887, line: 13, baseType: !107, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2101, file: !1887, line: 13, baseType: !2107, size: 256, offset: 128)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2108, line: 32, size: 256, elements: !2109)
!2108 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2115, !2128, !2134, !2143, !2163, !2168}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2107, file: !2108, line: 37, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 34, size: 64, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2111, file: !2108, line: 35, baseType: !1528, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2111, file: !2108, line: 36, baseType: !515, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2107, file: !2108, line: 45, baseType: !2116, size: 192)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 40, size: 192, elements: !2117)
!2117 = !{!2118, !2120, !2121, !2127}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2116, file: !2108, line: 41, baseType: !2119, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !381, line: 95, baseType: !107)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2116, file: !2108, line: 42, baseType: !107, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2116, file: !2108, line: 43, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2108, line: 11, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2108, line: 8, size: 64, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2123, file: !2108, line: 9, baseType: !107, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2123, file: !2108, line: 10, baseType: !258, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2116, file: !2108, line: 44, baseType: !107, size: 32, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2107, file: !2108, line: 52, baseType: !2129, size: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 48, size: 128, elements: !2130)
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2129, file: !2108, line: 49, baseType: !1528, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2129, file: !2108, line: 50, baseType: !515, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2129, file: !2108, line: 51, baseType: !2122, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2107, file: !2108, line: 61, baseType: !2135, size: 256)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 55, size: 256, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2142}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2135, file: !2108, line: 56, baseType: !1528, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2135, file: !2108, line: 57, baseType: !515, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2135, file: !2108, line: 58, baseType: !107, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2135, file: !2108, line: 59, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !381, line: 94, baseType: !382)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2135, file: !2108, line: 60, baseType: !2141, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2107, file: !2108, line: 95, baseType: !2144, size: 256)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 64, size: 256, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2144, file: !2108, line: 65, baseType: !258, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !2108, line: 77, baseType: !2148, size: 192, offset: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !2108, line: 77, size: 192, elements: !2149)
!2149 = !{!2150, !2151, !2158}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2148, file: !2108, line: 82, baseType: !1278, size: 16)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2148, file: !2108, line: 88, baseType: !2152, size: 192)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2108, line: 84, size: 192, elements: !2153)
!2153 = !{!2154, !2156, !2157}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2152, file: !2108, line: 85, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !1398)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2152, file: !2108, line: 86, baseType: !258, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2152, file: !2108, line: 87, baseType: !258, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2148, file: !2108, line: 93, baseType: !2159, size: 96)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2108, line: 90, size: 96, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2159, file: !2108, line: 91, baseType: !2155, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2159, file: !2108, line: 92, baseType: !491, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2107, file: !2108, line: 101, baseType: !2164, size: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 98, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2164, file: !2108, line: 99, baseType: !383, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2164, file: !2108, line: 100, baseType: !107, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2107, file: !2108, line: 108, baseType: !2169, size: 128)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 104, size: 128, elements: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2169, file: !2108, line: 105, baseType: !258, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2169, file: !2108, line: 106, baseType: !107, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2169, file: !2108, line: 107, baseType: !5, size: 32, offset: 96)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1290, file: !1291, line: 1067, baseType: !1959, offset: 11136)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1290, file: !1291, line: 1099, baseType: !2176, size: 64, offset: 11136)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1291, line: 56, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1290, file: !1291, line: 1103, baseType: !267, size: 128, offset: 11200)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1290, file: !1291, line: 1104, baseType: !2180, size: 64, offset: 11328)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1291, line: 46, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1290, file: !1291, line: 1105, baseType: !1246, size: 192, offset: 11392)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1290, file: !1291, line: 1106, baseType: !5, size: 32, offset: 11584)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1290, file: !1291, line: 1109, baseType: !2185, size: 128, offset: 11648)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2186, size: 128, elements: !1670)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1291, line: 51, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1290, file: !1291, line: 1110, baseType: !1246, size: 192, offset: 11776)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1290, file: !1291, line: 1111, baseType: !267, size: 128, offset: 11968)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1290, file: !1291, line: 1173, baseType: !2191, size: 64, offset: 12096)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2193, line: 62, size: 256, align: 256, elements: !2194)
!2193 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !{!2195, !2196, !2197, !2202}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2192, file: !2193, line: 75, baseType: !491, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2192, file: !2193, line: 90, baseType: !491, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2192, file: !2193, line: 124, baseType: !2198, size: 64, offset: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2192, file: !2193, line: 109, size: 64, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2198, file: !2193, line: 110, baseType: !496, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2198, file: !2193, line: 112, baseType: !496, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2192, file: !2193, line: 144, baseType: !491, size: 32, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1290, file: !1291, line: 1174, baseType: !489, size: 32, offset: 12160)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1290, file: !1291, line: 1179, baseType: !398, size: 64, offset: 12224)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1290, file: !1291, line: 1182, baseType: !2206, size: 128, offset: 12288)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1224, line: 76, size: 128, elements: !2207)
!2207 = !{!2208, !2213, !2214}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2206, file: !1224, line: 85, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2210, line: 7, size: 64, elements: !2211)
!2210 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2211 = !{!2212}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2209, file: !2210, line: 12, baseType: !1435, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2206, file: !1224, line: 88, baseType: !564, size: 8, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2206, file: !1224, line: 95, baseType: !564, size: 8, offset: 72)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !1291, line: 1184, baseType: !2216, size: 128, offset: 12416)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1290, file: !1291, line: 1184, size: 128, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2216, file: !1291, line: 1185, baseType: !278, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2216, file: !1291, line: 1186, baseType: !439, size: 128, align: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1290, file: !1291, line: 1190, baseType: !2221, size: 64, offset: 12544)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1291, line: 53, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1290, file: !1291, line: 1192, baseType: !2224, size: 128, offset: 12608)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1224, line: 64, size: 128, elements: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2224, file: !1224, line: 65, baseType: !798, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2224, file: !1224, line: 67, baseType: !491, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2224, file: !1224, line: 68, baseType: !491, size: 32, offset: 96)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1290, file: !1291, line: 1206, baseType: !107, size: 32, offset: 12736)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1290, file: !1291, line: 1207, baseType: !107, size: 32, offset: 12768)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1290, file: !1291, line: 1209, baseType: !398, size: 64, offset: 12800)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1290, file: !1291, line: 1219, baseType: !495, size: 64, offset: 12864)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1290, file: !1291, line: 1220, baseType: !495, size: 64, offset: 12928)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1290, file: !1291, line: 1317, baseType: !107, size: 32, offset: 12992)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1290, file: !1291, line: 1319, baseType: !1289, size: 64, offset: 13056)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1290, file: !1291, line: 1322, baseType: !2237, size: 64, offset: 13120)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2239, line: 56, size: 512, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2249}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2238, file: !2239, line: 57, baseType: !2237, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2238, file: !2239, line: 58, baseType: !258, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2238, file: !2239, line: 59, baseType: !398, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !2239, line: 60, baseType: !398, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2238, file: !2239, line: 61, baseType: !893, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2238, file: !2239, line: 62, baseType: !5, size: 32, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2238, file: !2239, line: 63, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !257, line: 153, baseType: !495)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2238, file: !2239, line: 64, baseType: !2250, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1290, file: !1291, line: 1326, baseType: !278, size: 32, offset: 13184)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1290, file: !1291, line: 1342, baseType: !258, size: 64, offset: 13248)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1290, file: !1291, line: 1343, baseType: !496, size: 64, offset: 13312)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1290, file: !1291, line: 1344, baseType: !495, size: 64, offset: 13376)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1290, file: !1291, line: 1345, baseType: !496, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1290, file: !1291, line: 1346, baseType: !496, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1290, file: !1291, line: 1347, baseType: !496, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1290, file: !1291, line: 1348, baseType: !439, size: 128, align: 64, offset: 13504)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1290, file: !1291, line: 1358, baseType: !2261, size: 34816, offset: 13824)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2262, line: 485, size: 34816, elements: !2263)
!2262 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !{!2264, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2293, !2294, !2295, !2296, !2297, !2298, !2301, !2302, !2303}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2261, file: !2262, line: 487, baseType: !2265, size: 192)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2266, size: 192, elements: !349)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2267, line: 16, size: 64, elements: !2268)
!2267 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2266, file: !2267, line: 17, baseType: !932, size: 16)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2266, file: !2267, line: 18, baseType: !932, size: 16, offset: 16)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2266, file: !2267, line: 19, baseType: !932, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2266, file: !2267, line: 19, baseType: !932, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2266, file: !2267, line: 19, baseType: !932, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2266, file: !2267, line: 19, baseType: !932, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2266, file: !2267, line: 19, baseType: !932, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2266, file: !2267, line: 20, baseType: !932, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2266, file: !2267, line: 20, baseType: !932, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2266, file: !2267, line: 20, baseType: !932, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2266, file: !2267, line: 20, baseType: !932, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2266, file: !2267, line: 20, baseType: !932, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2266, file: !2267, line: 20, baseType: !932, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2261, file: !2262, line: 491, baseType: !398, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2261, file: !2262, line: 495, baseType: !390, size: 16, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2261, file: !2262, line: 496, baseType: !390, size: 16, offset: 272)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2261, file: !2262, line: 497, baseType: !390, size: 16, offset: 288)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2261, file: !2262, line: 498, baseType: !390, size: 16, offset: 304)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2261, file: !2262, line: 502, baseType: !398, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2261, file: !2262, line: 503, baseType: !398, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2261, file: !2262, line: 514, baseType: !2290, size: 256, offset: 448)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2291, size: 256, elements: !1228)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2262, line: 483, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2261, file: !2262, line: 516, baseType: !398, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2261, file: !2262, line: 518, baseType: !398, size: 64, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2261, file: !2262, line: 520, baseType: !398, size: 64, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2261, file: !2262, line: 521, baseType: !398, size: 64, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2261, file: !2262, line: 522, baseType: !398, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2261, file: !2262, line: 528, baseType: !2299, size: 64, offset: 1024)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2262, line: 10, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2261, file: !2262, line: 535, baseType: !398, size: 64, offset: 1088)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2261, file: !2262, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2261, file: !2262, line: 540, baseType: !2304, size: 33280, offset: 1536)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2305, line: 317, size: 33280, elements: !2306)
!2305 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2304, file: !2305, line: 330, baseType: !5, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2304, file: !2305, line: 337, baseType: !398, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2304, file: !2305, line: 348, baseType: !2310, size: 32768, offset: 512)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2305, line: 304, size: 32768, elements: !2311)
!2311 = !{!2312, !2327, !2366, !2416, !2429}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2310, file: !2305, line: 305, baseType: !2313, size: 896)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2305, line: 12, size: 896, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2326}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2313, file: !2305, line: 13, baseType: !489, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2313, file: !2305, line: 14, baseType: !489, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2313, file: !2305, line: 15, baseType: !489, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2313, file: !2305, line: 16, baseType: !489, size: 32, offset: 96)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2313, file: !2305, line: 17, baseType: !489, size: 32, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2313, file: !2305, line: 18, baseType: !489, size: 32, offset: 160)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2313, file: !2305, line: 19, baseType: !489, size: 32, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2313, file: !2305, line: 22, baseType: !2323, size: 640, offset: 224)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 640, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 20)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2313, file: !2305, line: 25, baseType: !489, size: 32, offset: 864)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2310, file: !2305, line: 306, baseType: !2328, size: 4096, align: 128)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2305, line: 34, size: 4096, align: 128, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2349, !2350, !2351, !2355, !2357, !2361}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2328, file: !2305, line: 35, baseType: !932, size: 16)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2328, file: !2305, line: 36, baseType: !932, size: 16, offset: 16)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2328, file: !2305, line: 37, baseType: !932, size: 16, offset: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2328, file: !2305, line: 38, baseType: !932, size: 16, offset: 48)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !2305, line: 39, baseType: !2335, size: 128, offset: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !2305, line: 39, size: 128, elements: !2336)
!2336 = !{!2337, !2342}
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !2305, line: 40, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2335, file: !2305, line: 40, size: 128, elements: !2339)
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2338, file: !2305, line: 41, baseType: !495, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2338, file: !2305, line: 42, baseType: !495, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !2305, line: 44, baseType: !2343, size: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2335, file: !2305, line: 44, size: 128, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2343, file: !2305, line: 45, baseType: !489, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2343, file: !2305, line: 46, baseType: !489, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2343, file: !2305, line: 47, baseType: !489, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2343, file: !2305, line: 48, baseType: !489, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2328, file: !2305, line: 51, baseType: !489, size: 32, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2328, file: !2305, line: 52, baseType: !489, size: 32, offset: 224)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2328, file: !2305, line: 55, baseType: !2352, size: 1024, offset: 256)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 1024, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2328, file: !2305, line: 58, baseType: !2356, size: 2048, offset: 1280)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 2048, elements: !353)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2328, file: !2305, line: 60, baseType: !2358, size: 384, offset: 3328)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 384, elements: !2359)
!2359 = !{!2360}
!2360 = !DISubrange(count: 12)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !2305, line: 62, baseType: !2362, size: 384, offset: 3712)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !2305, line: 62, size: 384, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2362, file: !2305, line: 63, baseType: !2358, size: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2362, file: !2305, line: 64, baseType: !2358, size: 384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2310, file: !2305, line: 307, baseType: !2367, size: 1088)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2305, line: 79, size: 1088, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2415}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2367, file: !2305, line: 80, baseType: !489, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2367, file: !2305, line: 81, baseType: !489, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2367, file: !2305, line: 82, baseType: !489, size: 32, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2367, file: !2305, line: 83, baseType: !489, size: 32, offset: 96)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2367, file: !2305, line: 84, baseType: !489, size: 32, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2367, file: !2305, line: 85, baseType: !489, size: 32, offset: 160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2367, file: !2305, line: 86, baseType: !489, size: 32, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2367, file: !2305, line: 88, baseType: !2323, size: 640, offset: 224)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2367, file: !2305, line: 89, baseType: !1420, size: 8, offset: 864)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2367, file: !2305, line: 90, baseType: !1420, size: 8, offset: 872)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2367, file: !2305, line: 91, baseType: !1420, size: 8, offset: 880)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2367, file: !2305, line: 92, baseType: !1420, size: 8, offset: 888)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2367, file: !2305, line: 93, baseType: !1420, size: 8, offset: 896)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2367, file: !2305, line: 94, baseType: !1420, size: 8, offset: 904)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2367, file: !2305, line: 95, baseType: !2384, size: 64, offset: 960)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2386, line: 11, size: 128, elements: !2387)
!2386 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2385, file: !2386, line: 12, baseType: !383, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2385, file: !2386, line: 13, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2392, line: 56, size: 1344, elements: !2393)
!2392 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2391, file: !2392, line: 61, baseType: !398, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2391, file: !2392, line: 62, baseType: !398, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2391, file: !2392, line: 63, baseType: !398, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2391, file: !2392, line: 64, baseType: !398, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2391, file: !2392, line: 65, baseType: !398, size: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2391, file: !2392, line: 66, baseType: !398, size: 64, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2391, file: !2392, line: 68, baseType: !398, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2391, file: !2392, line: 69, baseType: !398, size: 64, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2391, file: !2392, line: 70, baseType: !398, size: 64, offset: 512)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2391, file: !2392, line: 71, baseType: !398, size: 64, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2391, file: !2392, line: 72, baseType: !398, size: 64, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2391, file: !2392, line: 73, baseType: !398, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2391, file: !2392, line: 74, baseType: !398, size: 64, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2391, file: !2392, line: 75, baseType: !398, size: 64, offset: 832)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2391, file: !2392, line: 76, baseType: !398, size: 64, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2391, file: !2392, line: 81, baseType: !398, size: 64, offset: 960)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2391, file: !2392, line: 83, baseType: !398, size: 64, offset: 1024)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2391, file: !2392, line: 84, baseType: !398, size: 64, offset: 1088)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !2392, line: 85, baseType: !398, size: 64, offset: 1152)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2391, file: !2392, line: 86, baseType: !398, size: 64, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2391, file: !2392, line: 87, baseType: !398, size: 64, offset: 1280)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2367, file: !2305, line: 96, baseType: !489, size: 32, offset: 1024)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2310, file: !2305, line: 308, baseType: !2417, size: 4608, align: 512)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2305, line: 289, size: 4608, align: 512, elements: !2418)
!2418 = !{!2419, !2420, !2427}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2417, file: !2305, line: 290, baseType: !2328, size: 4096, align: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2417, file: !2305, line: 291, baseType: !2421, size: 512, offset: 4096)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2305, line: 268, size: 512, elements: !2422)
!2422 = !{!2423, !2424, !2425}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2421, file: !2305, line: 269, baseType: !495, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2421, file: !2305, line: 270, baseType: !495, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2421, file: !2305, line: 271, baseType: !2426, size: 384, offset: 128)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 384, elements: !1726)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2417, file: !2305, line: 292, baseType: !2428, offset: 4608)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, elements: !1822)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2310, file: !2305, line: 309, baseType: !2430, size: 32768)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 32768, elements: !2431)
!2431 = !{!2432}
!2432 = !DISubrange(count: 4096)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1286, file: !800, line: 378, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1282, file: !800, line: 384, baseType: !1603, size: 192, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1051, file: !800, line: 500, baseType: !307, offset: 6656)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1051, file: !800, line: 501, baseType: !2438, size: 64, offset: 6656)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !800, line: 387, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1051, file: !800, line: 516, baseType: !1581, size: 64, offset: 6720)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1051, file: !800, line: 519, baseType: !426, size: 64, offset: 6784)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1051, file: !800, line: 521, baseType: !2443, size: 64, offset: 6848)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !800, line: 521, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1051, file: !800, line: 545, baseType: !282, size: 32, offset: 6912)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1051, file: !800, line: 548, baseType: !564, size: 8, offset: 6944)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1051, file: !800, line: 550, baseType: !2448, offset: 6952)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2449, line: 142, elements: !321)
!2449 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1051, file: !800, line: 554, baseType: !2080, size: 256, offset: 6976)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1051, file: !800, line: 557, baseType: !489, size: 32, offset: 7232)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1048, file: !800, line: 565, baseType: !2453, offset: 7296)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !2454)
!2454 = !{!2455}
!2455 = !DISubrange(count: -1)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1044, file: !800, line: 151, baseType: !282, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1037, file: !800, line: 156, baseType: !307, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !800, line: 159, baseType: !2459, size: 128)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !800, line: 159, size: 128, elements: !2460)
!2460 = !{!2461, !2525}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2459, file: !800, line: 161, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2464)
!2464 = !{!2465, !2475, !2496, !2497, !2498, !2499, !2500, !2512, !2513, !2514}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2463, file: !29, line: 111, baseType: !2466, size: 384)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2467)
!2467 = !{!2468, !2470, !2471, !2472, !2473, !2474}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2466, file: !29, line: 20, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2466, file: !29, line: 21, baseType: !2469, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2466, file: !29, line: 22, baseType: !2469, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2466, file: !29, line: 23, baseType: !398, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2466, file: !29, line: 24, baseType: !398, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2466, file: !29, line: 25, baseType: !398, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2463, file: !29, line: 112, baseType: !2476, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2478, line: 105, size: 128, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2477, file: !2478, line: 110, baseType: !398, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2477, file: !2478, line: 118, baseType: !2482, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2478, line: 95, size: 448, elements: !2484)
!2484 = !{!2485, !2486, !2491, !2492, !2493, !2494, !2495}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2483, file: !2478, line: 96, baseType: !844, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2483, file: !2478, line: 97, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2478, line: 60, baseType: !2489)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2476}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2483, file: !2478, line: 98, baseType: !2487, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2483, file: !2478, line: 99, baseType: !564, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2483, file: !2478, line: 100, baseType: !564, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2483, file: !2478, line: 101, baseType: !439, size: 128, align: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2483, file: !2478, line: 102, baseType: !2476, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2463, file: !29, line: 113, baseType: !2477, size: 128, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2463, file: !29, line: 114, baseType: !1603, size: 192, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2463, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2463, file: !29, line: 117, baseType: !2501, size: 64, offset: 832)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2504)
!2504 = !{!2505, !2506, !2510, !2511}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2503, file: !29, line: 73, baseType: !913, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2503, file: !29, line: 78, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !2462}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2503, file: !29, line: 83, baseType: !2507, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2503, file: !29, line: 89, baseType: !1100, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2463, file: !29, line: 118, baseType: !258, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2463, file: !29, line: 119, baseType: !107, size: 32, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !29, line: 120, baseType: !2515, size: 128, offset: 1024)
!2515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !29, line: 120, size: 128, elements: !2516)
!2516 = !{!2517, !2523}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2515, file: !29, line: 121, baseType: !2518, size: 128)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2519, line: 6, size: 128, elements: !2520)
!2519 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2518, file: !2519, line: 7, baseType: !495, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2518, file: !2519, line: 8, baseType: !495, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2515, file: !29, line: 122, baseType: !2524)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2518, elements: !1822)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2459, file: !800, line: 162, baseType: !258, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !804, file: !800, line: 176, baseType: !439, size: 128, align: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !800, line: 179, baseType: !2528, size: 32, offset: 384)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !800, line: 179, size: 32, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2528, file: !800, line: 184, baseType: !282, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2528, file: !800, line: 192, baseType: !5, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2528, file: !800, line: 194, baseType: !5, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2528, file: !800, line: 195, baseType: !107, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !799, file: !800, line: 199, baseType: !282, size: 32, offset: 416)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !734, file: !42, line: 1964, baseType: !2536, size: 64, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!383, !673, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2541, line: 12, size: 256, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2542 = !{!2543, !2544, !2545, !2546, !2547}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2540, file: !2541, line: 13, baseType: !256, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2540, file: !2541, line: 16, baseType: !107, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2540, file: !2541, line: 23, baseType: !398, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2540, file: !2541, line: 30, baseType: !398, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2540, file: !2541, line: 33, baseType: !2548, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !800, line: 27, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !734, file: !42, line: 1966, baseType: !2536, size: 64, offset: 1408)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !674, file: !42, line: 1424, baseType: !2552, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2555)
!2555 = !{!2556, !2602, !2606, !2610, !2611, !2612, !2613, !2614, !2619, !2624, !2628}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2554, file: !36, line: 323, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!107, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2587, !2588, !2589}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2561, file: !36, line: 295, baseType: !716, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2561, file: !36, line: 296, baseType: !267, size: 128, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2561, file: !36, line: 297, baseType: !267, size: 128, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2561, file: !36, line: 298, baseType: !267, size: 128, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2561, file: !36, line: 299, baseType: !1246, size: 192, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2561, file: !36, line: 300, baseType: !307, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2561, file: !36, line: 301, baseType: !282, size: 32, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2561, file: !36, line: 302, baseType: !673, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2561, file: !36, line: 303, baseType: !2572, size: 64, offset: 832)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2573)
!2573 = !{!2574, !2586}
!2574 = !DIDerivedType(tag: DW_TAG_member, scope: !2572, file: !36, line: 69, baseType: !2575, size: 32)
!2575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2572, file: !36, line: 69, size: 32, elements: !2576)
!2576 = !{!2577, !2578, !2579}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2575, file: !36, line: 70, baseType: !509, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2575, file: !36, line: 71, baseType: !517, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2575, file: !36, line: 72, baseType: !2580, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2581, line: 24, baseType: !2582)
!2581 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2581, line: 22, size: 32, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2582, file: !2581, line: 23, baseType: !2585, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2581, line: 20, baseType: !515)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2572, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2561, file: !36, line: 304, baseType: !605, size: 64, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2561, file: !36, line: 305, baseType: !398, size: 64, offset: 960)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2561, file: !36, line: 306, baseType: !2590, size: 576, offset: 1024)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2591)
!2591 = !{!2592, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2590, file: !36, line: 206, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !607)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2590, file: !36, line: 207, baseType: !2593, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2590, file: !36, line: 208, baseType: !2593, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2590, file: !36, line: 209, baseType: !2593, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2590, file: !36, line: 210, baseType: !2593, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2590, file: !36, line: 211, baseType: !2593, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2590, file: !36, line: 212, baseType: !2593, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2590, file: !36, line: 213, baseType: !613, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2590, file: !36, line: 214, baseType: !613, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2554, file: !36, line: 324, baseType: !2603, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!2560, !673, !107}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2554, file: !36, line: 325, baseType: !2607, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null, !2560}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2554, file: !36, line: 326, baseType: !2557, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2554, file: !36, line: 327, baseType: !2557, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2554, file: !36, line: 328, baseType: !2557, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2554, file: !36, line: 329, baseType: !762, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2554, file: !36, line: 332, baseType: !2615, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2618, !503}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2554, file: !36, line: 333, baseType: !2620, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!107, !503, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2554, file: !36, line: 335, baseType: !2625, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!107, !503, !2618}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2554, file: !36, line: 337, baseType: !2629, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!107, !673, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !674, file: !42, line: 1425, baseType: !2634, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2637)
!2637 = !{!2638, !2642, !2643, !2647, !2648, !2649, !2664, !2687, !2691, !2692, !2715}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2636, file: !36, line: 429, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!107, !673, !107, !107, !623}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2636, file: !36, line: 430, baseType: !762, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2636, file: !36, line: 431, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!107, !673, !5}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2636, file: !36, line: 432, baseType: !2644, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2636, file: !36, line: 433, baseType: !762, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2636, file: !36, line: 434, baseType: !2650, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!107, !673, !107, !2653}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2654, file: !36, line: 416, baseType: !107, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2654, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2654, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2654, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2654, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2654, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2654, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2654, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2636, file: !36, line: 435, baseType: !2665, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!107, !673, !2572, !2668}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2669, file: !36, line: 344, baseType: !107, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2669, file: !36, line: 345, baseType: !495, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2669, file: !36, line: 346, baseType: !495, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2669, file: !36, line: 347, baseType: !495, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2669, file: !36, line: 348, baseType: !495, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2669, file: !36, line: 349, baseType: !495, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2669, file: !36, line: 350, baseType: !495, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2669, file: !36, line: 351, baseType: !850, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2669, file: !36, line: 353, baseType: !850, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2669, file: !36, line: 354, baseType: !107, size: 32, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2669, file: !36, line: 355, baseType: !107, size: 32, offset: 608)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2669, file: !36, line: 356, baseType: !495, size: 64, offset: 640)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2669, file: !36, line: 357, baseType: !495, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2669, file: !36, line: 358, baseType: !495, size: 64, offset: 768)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2669, file: !36, line: 359, baseType: !850, size: 64, offset: 832)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2669, file: !36, line: 360, baseType: !107, size: 32, offset: 896)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2636, file: !36, line: 436, baseType: !2688, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!107, !673, !2632, !2668}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2636, file: !36, line: 438, baseType: !2665, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2636, file: !36, line: 439, baseType: !2693, size: 64, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!107, !673, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2697, file: !36, line: 410, baseType: !5, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2697, file: !36, line: 411, baseType: !2701, size: 1344, offset: 64)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 1344, elements: !349)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2714}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2702, file: !36, line: 396, baseType: !5, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2702, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2702, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2702, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2702, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2702, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2702, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2702, file: !36, line: 404, baseType: !497, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2702, file: !36, line: 405, baseType: !2713, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !257, line: 126, baseType: !495)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2702, file: !36, line: 406, baseType: !2713, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2636, file: !36, line: 440, baseType: !2644, size: 64, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !674, file: !42, line: 1426, baseType: !2717, size: 64, offset: 576)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !674, file: !42, line: 1427, baseType: !398, size: 64, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !674, file: !42, line: 1428, baseType: !398, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !674, file: !42, line: 1429, baseType: !398, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !674, file: !42, line: 1430, baseType: !456, size: 64, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !674, file: !42, line: 1431, baseType: !840, size: 256, offset: 896)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !674, file: !42, line: 1432, baseType: !107, size: 32, offset: 1152)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !674, file: !42, line: 1433, baseType: !282, size: 32, offset: 1184)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !674, file: !42, line: 1437, baseType: !2728, size: 64, offset: 1216)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2731)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !674, file: !42, line: 1449, baseType: !2733, size: 64, offset: 1280)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !472, line: 34, size: 64, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2733, file: !472, line: 35, baseType: !475, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !674, file: !42, line: 1450, baseType: !267, size: 128, offset: 1344)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !674, file: !42, line: 1451, baseType: !2738, size: 64, offset: 1472)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !674, file: !42, line: 1452, baseType: !2046, size: 64, offset: 1536)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !674, file: !42, line: 1453, baseType: !2742, size: 64, offset: 1600)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !674, file: !42, line: 1454, baseType: !716, size: 128, offset: 1664)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !674, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !674, file: !42, line: 1456, baseType: !2747, size: 2432, offset: 1856)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2753, !2785}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2747, file: !36, line: 519, baseType: !5, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2747, file: !36, line: 520, baseType: !840, size: 256, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2747, file: !36, line: 521, baseType: !2752, size: 192, offset: 320)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !349)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2747, file: !36, line: 522, baseType: !2754, size: 1728, offset: 512)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2755, size: 1728, elements: !349)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2756)
!2756 = !{!2757, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2755, file: !36, line: 223, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2760)
!2760 = !{!2761, !2762, !2775, !2776}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2759, file: !36, line: 444, baseType: !107, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2759, file: !36, line: 445, baseType: !2763, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2765, file: !36, line: 311, baseType: !762, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2765, file: !36, line: 312, baseType: !762, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2765, file: !36, line: 313, baseType: !762, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2765, file: !36, line: 314, baseType: !762, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2765, file: !36, line: 315, baseType: !2557, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2765, file: !36, line: 316, baseType: !2557, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2765, file: !36, line: 317, baseType: !2557, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2765, file: !36, line: 318, baseType: !2629, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2759, file: !36, line: 446, baseType: !707, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2759, file: !36, line: 447, baseType: !2758, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2755, file: !36, line: 224, baseType: !107, size: 32, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2755, file: !36, line: 226, baseType: !267, size: 128, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2755, file: !36, line: 227, baseType: !398, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2755, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2755, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2755, file: !36, line: 230, baseType: !2593, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2755, file: !36, line: 231, baseType: !2593, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2755, file: !36, line: 232, baseType: !258, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2747, file: !36, line: 523, baseType: !2786, size: 192, offset: 2240)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2763, size: 192, elements: !349)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !674, file: !42, line: 1458, baseType: !2788, size: 2112, offset: 4288)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2789)
!2789 = !{!2790, !2791, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2788, file: !42, line: 1411, baseType: !107, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2788, file: !42, line: 1412, baseType: !1549, size: 128, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2788, file: !42, line: 1413, baseType: !2793, size: 1920, offset: 192)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2794, size: 1920, elements: !349)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2795, line: 12, size: 640, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797, !2805, !2807, !2812, !2813}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2794, file: !2795, line: 13, baseType: !2798, size: 320)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2799, line: 17, size: 320, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2800 = !{!2801, !2802, !2803, !2804}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2798, file: !2799, line: 18, baseType: !107, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2798, file: !2799, line: 19, baseType: !107, size: 32, offset: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2798, file: !2799, line: 20, baseType: !1549, size: 128, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2798, file: !2799, line: 22, baseType: !439, size: 128, align: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2794, file: !2795, line: 14, baseType: !2806, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2794, file: !2795, line: 15, baseType: !2808, size: 64, offset: 384)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2809, line: 16, size: 64, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2808, file: !2809, line: 17, baseType: !1289, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2794, file: !2795, line: 16, baseType: !1549, size: 128, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2794, file: !2795, line: 17, baseType: !282, size: 32, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !674, file: !42, line: 1465, baseType: !258, size: 64, offset: 6400)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !674, file: !42, line: 1468, baseType: !489, size: 32, offset: 6464)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !674, file: !42, line: 1470, baseType: !613, size: 64, offset: 6528)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !674, file: !42, line: 1471, baseType: !613, size: 64, offset: 6592)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !674, file: !42, line: 1473, baseType: !491, size: 32, offset: 6656)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !674, file: !42, line: 1474, baseType: !2820, size: 64, offset: 6720)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !674, file: !42, line: 1477, baseType: !2823, size: 256, offset: 6784)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !2353)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !674, file: !42, line: 1478, baseType: !2825, size: 128, offset: 7040)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2826, line: 18, baseType: !2827)
!2826 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2826, line: 16, size: 128, elements: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2827, file: !2826, line: 17, baseType: !2830, size: 128)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 128, elements: !1834)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !674, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !674, file: !42, line: 1481, baseType: !2833, size: 32, offset: 7200)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !257, line: 150, baseType: !5)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !674, file: !42, line: 1487, baseType: !1246, size: 192, offset: 7232)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !674, file: !42, line: 1493, baseType: !295, size: 64, offset: 7424)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !674, file: !42, line: 1495, baseType: !2837, size: 64, offset: 7488)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2839)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !454, line: 135, size: 1024, align: 512, elements: !2840)
!2840 = !{!2841, !2845, !2846, !2853, !2859, !2863, !2867, !2871, !2872, !2876, !2880, !2885, !2889}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2839, file: !454, line: 136, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!107, !456, !5}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2839, file: !454, line: 137, baseType: !2842, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2839, file: !454, line: 138, baseType: !2847, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!107, !2850, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2839, file: !454, line: 139, baseType: !2854, size: 64, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!107, !2850, !5, !295, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2839, file: !454, line: 141, baseType: !2860, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!107, !2850}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2839, file: !454, line: 142, baseType: !2864, size: 64, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!107, !456}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2839, file: !454, line: 143, baseType: !2868, size: 64, offset: 384)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !456}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2839, file: !454, line: 144, baseType: !2868, size: 64, offset: 448)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2839, file: !454, line: 145, baseType: !2873, size: 64, offset: 512)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !456, !503}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2839, file: !454, line: 146, baseType: !2877, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!348, !456, !348, !107}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2839, file: !454, line: 147, baseType: !2881, size: 64, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!452, !2884}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2839, file: !454, line: 148, baseType: !2886, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!107, !623, !564}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2839, file: !454, line: 149, baseType: !2890, size: 64, offset: 768)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!456, !456, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !674, file: !42, line: 1500, baseType: !107, size: 32, offset: 7552)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !674, file: !42, line: 1502, baseType: !2897, size: 448, offset: 7616)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2541, line: 60, size: 448, elements: !2898)
!2898 = !{!2899, !2904, !2905, !2906, !2907, !2908, !2909}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2897, file: !2541, line: 61, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!398, !2903, !2539}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2897, file: !2541, line: 63, baseType: !2900, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2897, file: !2541, line: 66, baseType: !383, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2897, file: !2541, line: 67, baseType: !107, size: 32, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2897, file: !2541, line: 68, baseType: !5, size: 32, offset: 224)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2897, file: !2541, line: 71, baseType: !267, size: 128, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2897, file: !2541, line: 77, baseType: !2910, size: 64, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !674, file: !42, line: 1505, baseType: !844, size: 64, offset: 8064)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !674, file: !42, line: 1508, baseType: !844, size: 64, offset: 8128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !674, file: !42, line: 1511, baseType: !107, size: 32, offset: 8192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !674, file: !42, line: 1514, baseType: !982, size: 32, offset: 8224)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !674, file: !42, line: 1517, baseType: !2916, size: 64, offset: 8256)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2081, line: 18, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !674, file: !42, line: 1518, baseType: !712, size: 64, offset: 8320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !674, file: !42, line: 1525, baseType: !1581, size: 64, offset: 8384)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !674, file: !42, line: 1532, baseType: !2921, size: 64, offset: 8448)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2922, line: 52, size: 64, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2921, file: !2922, line: 53, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2922, line: 40, size: 256, elements: !2927)
!2927 = !{!2928, !2929, !2934}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2926, file: !2922, line: 42, baseType: !307)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2926, file: !2922, line: 44, baseType: !2930, size: 192)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2922, line: 28, size: 192, elements: !2931)
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2930, file: !2922, line: 29, baseType: !267, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2930, file: !2922, line: 31, baseType: !383, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2926, file: !2922, line: 49, baseType: !383, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !674, file: !42, line: 1533, baseType: !2921, size: 64, offset: 8512)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !674, file: !42, line: 1534, baseType: !439, size: 128, align: 64, offset: 8576)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !674, file: !42, line: 1535, baseType: !2080, size: 256, offset: 8704)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !674, file: !42, line: 1537, baseType: !1246, size: 192, offset: 8960)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !674, file: !42, line: 1542, baseType: !107, size: 32, offset: 9152)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !674, file: !42, line: 1545, baseType: !307, offset: 9184)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !674, file: !42, line: 1546, baseType: !267, size: 128, offset: 9216)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !674, file: !42, line: 1548, baseType: !307, offset: 9344)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !674, file: !42, line: 1549, baseType: !267, size: 128, offset: 9344)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !504, file: !42, line: 624, baseType: !811, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !504, file: !42, line: 631, baseType: !398, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !42, line: 639, baseType: !2947, size: 32, offset: 384)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !42, line: 639, size: 32, elements: !2948)
!2948 = !{!2949, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2947, file: !42, line: 640, baseType: !2950, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2947, file: !42, line: 641, baseType: !5, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !504, file: !42, line: 643, baseType: !587, size: 32, offset: 416)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !504, file: !42, line: 644, baseType: !605, size: 64, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !504, file: !42, line: 645, baseType: !609, size: 128, offset: 512)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !504, file: !42, line: 646, baseType: !609, size: 128, offset: 640)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !504, file: !42, line: 647, baseType: !609, size: 128, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !504, file: !42, line: 648, baseType: !307, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !504, file: !42, line: 649, baseType: !390, size: 16, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !504, file: !42, line: 650, baseType: !1420, size: 8, offset: 912)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !504, file: !42, line: 651, baseType: !1420, size: 8, offset: 920)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !504, file: !42, line: 652, baseType: !2713, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !504, file: !42, line: 659, baseType: !398, size: 64, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !504, file: !42, line: 660, baseType: !840, size: 256, offset: 1088)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !504, file: !42, line: 662, baseType: !398, size: 64, offset: 1344)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !504, file: !42, line: 663, baseType: !398, size: 64, offset: 1408)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !504, file: !42, line: 665, baseType: !716, size: 128, offset: 1472)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !504, file: !42, line: 666, baseType: !267, size: 128, offset: 1600)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !504, file: !42, line: 675, baseType: !267, size: 128, offset: 1728)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !504, file: !42, line: 676, baseType: !267, size: 128, offset: 1856)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !504, file: !42, line: 677, baseType: !267, size: 128, offset: 1984)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !42, line: 678, baseType: !2972, size: 128, offset: 2112)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !42, line: 678, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2972, file: !42, line: 679, baseType: !712, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2972, file: !42, line: 680, baseType: !439, size: 128, align: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !504, file: !42, line: 682, baseType: !846, size: 64, offset: 2240)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !504, file: !42, line: 683, baseType: !846, size: 64, offset: 2304)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !504, file: !42, line: 684, baseType: !282, size: 32, offset: 2368)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !504, file: !42, line: 685, baseType: !282, size: 32, offset: 2400)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !504, file: !42, line: 686, baseType: !282, size: 32, offset: 2432)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !504, file: !42, line: 688, baseType: !282, size: 32, offset: 2464)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !42, line: 690, baseType: !2983, size: 64, offset: 2496)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !42, line: 690, size: 64, elements: !2984)
!2984 = !{!2985, !3208}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2983, file: !42, line: 691, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2989)
!2989 = !{!2990, !2991, !2995, !3000, !3004, !3005, !3006, !3010, !3023, !3024, !3032, !3036, !3037, !3041, !3042, !3046, !3051, !3052, !3056, !3060, !3168, !3172, !3173, !3177, !3178, !3182, !3186, !3191, !3195, !3199, !3203, !3207}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2988, file: !42, line: 1823, baseType: !707, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2988, file: !42, line: 1824, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!605, !426, !605, !107}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2988, file: !42, line: 1825, baseType: !2996, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!379, !426, !348, !395, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2988, file: !42, line: 1826, baseType: !3001, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!379, !426, !295, !395, !2999}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2988, file: !42, line: 1827, baseType: !917, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2988, file: !42, line: 1828, baseType: !917, size: 64, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2988, file: !42, line: 1829, baseType: !3007, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!107, !920, !564}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2988, file: !42, line: 1830, baseType: !3011, size: 64, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!107, !426, !3014}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !3016)
!3016 = !{!3017, !3022}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3015, file: !42, line: 1777, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !3019)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!107, !3014, !295, !107, !605, !495, !5}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3015, file: !42, line: 1778, baseType: !605, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2988, file: !42, line: 1831, baseType: !3011, size: 64, offset: 512)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2988, file: !42, line: 1832, baseType: !3025, size: 64, offset: 576)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!3028, !426, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3029, line: 52, baseType: !5)
!3029 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !693, line: 27, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2988, file: !42, line: 1833, baseType: !3033, size: 64, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!383, !426, !5, !398}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2988, file: !42, line: 1834, baseType: !3033, size: 64, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2988, file: !42, line: 1835, baseType: !3038, size: 64, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!107, !426, !1054}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2988, file: !42, line: 1836, baseType: !398, size: 64, offset: 832)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2988, file: !42, line: 1837, baseType: !3043, size: 64, offset: 896)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!107, !503, !426}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2988, file: !42, line: 1838, baseType: !3047, size: 64, offset: 960)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!107, !426, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !258)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2988, file: !42, line: 1839, baseType: !3043, size: 64, offset: 1024)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2988, file: !42, line: 1840, baseType: !3053, size: 64, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!107, !426, !605, !605, !107}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2988, file: !42, line: 1841, baseType: !3057, size: 64, offset: 1152)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!107, !107, !426, !107}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2988, file: !42, line: 1842, baseType: !3061, size: 64, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!107, !426, !107, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3098, !3099, !3100, !3113, !3144}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3065, file: !42, line: 1063, baseType: !3064, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3065, file: !42, line: 1064, baseType: !267, size: 128, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3065, file: !42, line: 1065, baseType: !716, size: 128, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3065, file: !42, line: 1066, baseType: !267, size: 128, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3065, file: !42, line: 1069, baseType: !267, size: 128, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3065, file: !42, line: 1072, baseType: !3050, size: 64, offset: 576)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3065, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3065, file: !42, line: 1074, baseType: !501, size: 8, offset: 672)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3065, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3065, file: !42, line: 1076, baseType: !107, size: 32, offset: 736)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3065, file: !42, line: 1077, baseType: !1549, size: 128, offset: 768)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3065, file: !42, line: 1078, baseType: !426, size: 64, offset: 896)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3065, file: !42, line: 1079, baseType: !605, size: 64, offset: 960)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3065, file: !42, line: 1080, baseType: !605, size: 64, offset: 1024)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3065, file: !42, line: 1082, baseType: !3082, size: 64, offset: 1088)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !3084)
!3084 = !{!3085, !3093, !3094, !3095, !3096, !3097}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3083, file: !42, line: 1315, baseType: !3086)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3087, line: 20, baseType: !3088)
!3087 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3087, line: 11, elements: !3089)
!3089 = !{!3090}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3088, file: !3087, line: 12, baseType: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !319, line: 33, baseType: !3092)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 31, elements: !321)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3083, file: !42, line: 1316, baseType: !107, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3083, file: !42, line: 1317, baseType: !107, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3083, file: !42, line: 1318, baseType: !3082, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3083, file: !42, line: 1319, baseType: !426, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3083, file: !42, line: 1320, baseType: !439, size: 128, align: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3065, file: !42, line: 1084, baseType: !398, size: 64, offset: 1152)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3065, file: !42, line: 1085, baseType: !398, size: 64, offset: 1216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3065, file: !42, line: 1087, baseType: !3101, size: 64, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3104)
!3104 = !{!3105, !3109}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3103, file: !42, line: 1012, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !3064, !3064}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3103, file: !42, line: 1013, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3064}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3065, file: !42, line: 1088, baseType: !3114, size: 64, offset: 1344)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3116)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3117)
!3117 = !{!3118, !3122, !3126, !3127, !3131, !3135, !3139, !3143}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3116, file: !42, line: 1017, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!3050, !3050}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3116, file: !42, line: 1018, baseType: !3123, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3050}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3116, file: !42, line: 1019, baseType: !3110, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3116, file: !42, line: 1020, baseType: !3128, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!107, !3064, !107}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3116, file: !42, line: 1021, baseType: !3132, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!564, !3064}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3116, file: !42, line: 1022, baseType: !3136, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!107, !3064, !107, !270}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3116, file: !42, line: 1023, baseType: !3140, size: 64, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null, !3064, !894}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3116, file: !42, line: 1024, baseType: !3132, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3065, file: !42, line: 1097, baseType: !3145, size: 256, offset: 1408)
!3145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !42, line: 1089, size: 256, elements: !3146)
!3146 = !{!3147, !3156, !3162}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3145, file: !42, line: 1090, baseType: !3148, size: 256)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3149, line: 10, size: 256, elements: !3150)
!3149 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3150 = !{!3151, !3152, !3155}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3148, file: !3149, line: 11, baseType: !489, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3148, file: !3149, line: 12, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3149, line: 5, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3148, file: !3149, line: 13, baseType: !267, size: 128, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3145, file: !42, line: 1091, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3149, line: 17, size: 64, elements: !3158)
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3157, file: !3149, line: 18, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3149, line: 16, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3145, file: !42, line: 1096, baseType: !3163, size: 192)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3145, file: !42, line: 1092, size: 192, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3163, file: !42, line: 1093, baseType: !267, size: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3163, file: !42, line: 1094, baseType: !107, size: 32, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3163, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2988, file: !42, line: 1843, baseType: !3169, size: 64, offset: 1280)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!379, !426, !798, !107, !395, !2999, !107}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2988, file: !42, line: 1844, baseType: !1174, size: 64, offset: 1344)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2988, file: !42, line: 1845, baseType: !3174, size: 64, offset: 1408)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!107, !107}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2988, file: !42, line: 1846, baseType: !3061, size: 64, offset: 1472)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2988, file: !42, line: 1847, baseType: !3179, size: 64, offset: 1536)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!379, !2221, !426, !2999, !395, !5}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2988, file: !42, line: 1848, baseType: !3183, size: 64, offset: 1600)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!379, !426, !2999, !2221, !395, !5}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2988, file: !42, line: 1849, baseType: !3187, size: 64, offset: 1664)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!107, !426, !383, !3190, !894}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2988, file: !42, line: 1850, baseType: !3192, size: 64, offset: 1728)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!383, !426, !107, !605, !605}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2988, file: !42, line: 1852, baseType: !3196, size: 64, offset: 1792)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !788, !426}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2988, file: !42, line: 1856, baseType: !3200, size: 64, offset: 1856)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!379, !426, !605, !426, !605, !395, !5}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2988, file: !42, line: 1858, baseType: !3204, size: 64, offset: 1920)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!605, !426, !605, !426, !605, !605, !5}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2988, file: !42, line: 1861, baseType: !3053, size: 64, offset: 1984)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2983, file: !42, line: 692, baseType: !741, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !504, file: !42, line: 694, baseType: !3210, size: 64, offset: 2560)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3211, file: !42, line: 1101, baseType: !307)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3211, file: !42, line: 1102, baseType: !267, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3211, file: !42, line: 1103, baseType: !267, size: 128, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3211, file: !42, line: 1104, baseType: !267, size: 128, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !504, file: !42, line: 695, baseType: !812, size: 1216, align: 64, offset: 2624)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !504, file: !42, line: 696, baseType: !267, size: 128, offset: 3840)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !42, line: 697, baseType: !3220, size: 64, offset: 3968)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !42, line: 697, size: 64, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3227, !3228}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3220, file: !42, line: 698, baseType: !2221, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3220, file: !42, line: 699, baseType: !2738, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3220, file: !42, line: 700, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3220, file: !42, line: 701, baseType: !348, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3220, file: !42, line: 702, baseType: !5, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !504, file: !42, line: 705, baseType: !491, size: 32, offset: 4032)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !504, file: !42, line: 708, baseType: !491, size: 32, offset: 4064)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !504, file: !42, line: 709, baseType: !2820, size: 64, offset: 4096)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !504, file: !42, line: 720, baseType: !258, size: 64, offset: 4160)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !457, file: !454, line: 98, baseType: !3234, size: 256, offset: 448)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !2353)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !457, file: !454, line: 101, baseType: !3236, size: 32, offset: 704)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3237, line: 25, size: 32, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239}
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !3237, line: 26, baseType: !3240, size: 32)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !3237, line: 26, size: 32, elements: !3241)
!3241 = !{!3242}
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !3237, line: 30, baseType: !3243, size: 32)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3240, file: !3237, line: 30, size: 32, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3243, file: !3237, line: 31, baseType: !307)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3243, file: !3237, line: 32, baseType: !107, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !457, file: !454, line: 102, baseType: !2837, size: 64, offset: 768)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !457, file: !454, line: 103, baseType: !673, size: 64, offset: 832)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !457, file: !454, line: 104, baseType: !398, size: 64, offset: 896)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !457, file: !454, line: 105, baseType: !258, size: 64, offset: 960)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !454, line: 107, baseType: !3252, size: 128, offset: 1024)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !454, line: 107, size: 128, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3252, file: !454, line: 108, baseType: !267, size: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3252, file: !454, line: 109, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !457, file: !454, line: 111, baseType: !267, size: 128, offset: 1152)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !457, file: !454, line: 112, baseType: !267, size: 128, offset: 1280)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !457, file: !454, line: 120, baseType: !3260, size: 128, offset: 1408)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !454, line: 116, size: 128, elements: !3261)
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3260, file: !454, line: 117, baseType: !716, size: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3260, file: !454, line: 118, baseType: !471, size: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3260, file: !454, line: 119, baseType: !439, size: 128, align: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !427, file: !42, line: 922, baseType: !503, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !427, file: !42, line: 923, baseType: !2986, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !427, file: !42, line: 929, baseType: !307, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !427, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !427, file: !42, line: 931, baseType: !844, size: 64, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !427, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !427, file: !42, line: 933, baseType: !2833, size: 32, offset: 544)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !427, file: !42, line: 934, baseType: !1246, size: 192, offset: 576)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !427, file: !42, line: 935, baseType: !605, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !427, file: !42, line: 936, baseType: !3275, size: 192, offset: 832)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3275, file: !42, line: 886, baseType: !3086)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3275, file: !42, line: 887, baseType: !1539, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3275, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3275, file: !42, line: 889, baseType: !509, size: 32, offset: 96)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3275, file: !42, line: 889, baseType: !509, size: 32, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3275, file: !42, line: 890, baseType: !107, size: 32, offset: 160)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !427, file: !42, line: 937, baseType: !1648, size: 64, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !427, file: !42, line: 938, baseType: !3285, size: 256, offset: 1088)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3285, file: !42, line: 897, baseType: !398, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3285, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3285, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3285, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3285, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3285, file: !42, line: 904, baseType: !605, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !427, file: !42, line: 940, baseType: !495, size: 64, offset: 1344)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !427, file: !42, line: 945, baseType: !258, size: 64, offset: 1408)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !427, file: !42, line: 949, baseType: !267, size: 128, offset: 1472)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !427, file: !42, line: 950, baseType: !267, size: 128, offset: 1600)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !427, file: !42, line: 952, baseType: !811, size: 64, offset: 1728)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !427, file: !42, line: 953, baseType: !982, size: 32, offset: 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !427, file: !42, line: 954, baseType: !982, size: 32, offset: 1824)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !417, file: !373, line: 174, baseType: !423, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !417, file: !373, line: 176, baseType: !3302, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!107, !426, !300, !416, !1054}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !405, file: !373, line: 90, baseType: !400, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !405, file: !373, line: 91, baseType: !3307, size: 64, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !363, file: !292, line: 143, baseType: !3309, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!3312, !300}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3314)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3315)
!3315 = !{!3316, !3317, !3321, !3325, !3331, !3335}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3314, file: !59, line: 40, baseType: !58, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3314, file: !59, line: 41, baseType: !3318, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!564}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3314, file: !59, line: 42, baseType: !3322, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!258}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3314, file: !59, line: 43, baseType: !3326, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!2250, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3314, file: !59, line: 44, baseType: !3332, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!2250}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3314, file: !59, line: 45, baseType: !542, size: 64, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !363, file: !292, line: 144, baseType: !3337, size: 64, offset: 320)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!2250, !300}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !363, file: !292, line: 145, baseType: !3341, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !300, !3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !291, file: !292, line: 70, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !693, line: 123, size: 1024, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3472, !3473, !3474, !3475, !3476}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3348, file: !693, line: 124, baseType: !282, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3348, file: !693, line: 125, baseType: !282, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3348, file: !693, line: 135, baseType: !3347, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3348, file: !693, line: 136, baseType: !295, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3348, file: !693, line: 138, baseType: !833, size: 192, align: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3348, file: !693, line: 140, baseType: !2250, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3348, file: !693, line: 141, baseType: !5, size: 32, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3348, file: !693, line: 142, baseType: !3358, size: 256, offset: 512)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3348, file: !693, line: 142, size: 256, elements: !3359)
!3359 = !{!3360, !3400, !3404}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3358, file: !693, line: 143, baseType: !3361, size: 192)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !693, line: 91, size: 192, elements: !3362)
!3362 = !{!3363, !3364, !3365}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3361, file: !693, line: 92, baseType: !398, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3361, file: !693, line: 94, baseType: !829, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3361, file: !693, line: 100, baseType: !3366, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !693, line: 180, size: 704, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3398, !3399}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3367, file: !693, line: 182, baseType: !3347, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3367, file: !693, line: 183, baseType: !5, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3367, file: !693, line: 186, baseType: !1568, size: 192, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3367, file: !693, line: 187, baseType: !489, size: 32, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3367, file: !693, line: 188, baseType: !489, size: 32, offset: 352)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3367, file: !693, line: 189, baseType: !3375, size: 64, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !693, line: 168, size: 320, elements: !3377)
!3377 = !{!3378, !3382, !3386, !3390, !3394}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3376, file: !693, line: 169, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!107, !788, !3366}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3376, file: !693, line: 171, baseType: !3383, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!107, !3347, !295, !389}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3376, file: !693, line: 173, baseType: !3387, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!107, !3347}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3376, file: !693, line: 174, baseType: !3391, size: 64, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!107, !3347, !3347, !295}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3376, file: !693, line: 176, baseType: !3395, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!107, !788, !3347, !3366}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3367, file: !693, line: 192, baseType: !267, size: 128, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3367, file: !693, line: 194, baseType: !1549, size: 128, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3358, file: !693, line: 144, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !693, line: 103, size: 64, elements: !3402)
!3402 = !{!3403}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3401, file: !693, line: 104, baseType: !3347, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3358, file: !693, line: 145, baseType: !3405, size: 256)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !693, line: 107, size: 256, elements: !3406)
!3406 = !{!3407, !3467, !3470, !3471}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3405, file: !693, line: 108, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !693, line: 217, size: 768, elements: !3411)
!3411 = !{!3412, !3432, !3436, !3440, !3444, !3448, !3452, !3456, !3457, !3458, !3459, !3463}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3410, file: !693, line: 222, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!107, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !693, line: 197, size: 1088, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3417, file: !693, line: 199, baseType: !3347, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3417, file: !693, line: 200, baseType: !426, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3417, file: !693, line: 201, baseType: !788, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3417, file: !693, line: 202, baseType: !258, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3417, file: !693, line: 205, baseType: !1246, size: 192, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3417, file: !693, line: 206, baseType: !1246, size: 192, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3417, file: !693, line: 207, baseType: !107, size: 32, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3417, file: !693, line: 208, baseType: !267, size: 128, offset: 704)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3417, file: !693, line: 209, baseType: !348, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3417, file: !693, line: 211, baseType: !395, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3417, file: !693, line: 212, baseType: !564, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3417, file: !693, line: 213, baseType: !564, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3417, file: !693, line: 214, baseType: !1082, size: 64, offset: 1024)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3410, file: !693, line: 223, baseType: !3433, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !3416}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3410, file: !693, line: 236, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!107, !788, !258}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3410, file: !693, line: 238, baseType: !3441, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!258, !788, !2999}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3410, file: !693, line: 239, baseType: !3445, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!258, !788, !258, !2999}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3410, file: !693, line: 240, baseType: !3449, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !788, !258}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3410, file: !693, line: 242, baseType: !3453, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!379, !3416, !348, !395, !605}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3410, file: !693, line: 252, baseType: !395, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3410, file: !693, line: 259, baseType: !564, size: 8, offset: 512)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3410, file: !693, line: 260, baseType: !3453, size: 64, offset: 576)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3410, file: !693, line: 263, baseType: !3460, size: 64, offset: 640)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!3028, !3416, !3030}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3410, file: !693, line: 266, baseType: !3464, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!107, !3416, !1054}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3405, file: !693, line: 109, baseType: !3468, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !693, line: 31, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3405, file: !693, line: 110, baseType: !605, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3405, file: !693, line: 111, baseType: !3347, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3348, file: !693, line: 148, baseType: !258, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3348, file: !693, line: 154, baseType: !495, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3348, file: !693, line: 156, baseType: !390, size: 16, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3348, file: !693, line: 157, baseType: !389, size: 16, offset: 912)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3348, file: !693, line: 158, baseType: !3477, size: 64, offset: 960)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !693, line: 32, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !291, file: !292, line: 71, baseType: !274, size: 32, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !291, file: !292, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !291, file: !292, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !291, file: !292, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !291, file: !292, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !291, file: !292, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !288, file: !71, line: 463, baseType: !287, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !288, file: !71, line: 465, baseType: !3487, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !288, file: !71, line: 467, baseType: !295, size: 64, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !288, file: !71, line: 468, baseType: !3491, size: 64, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3501, !3506, !3510}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !71, line: 88, baseType: !295, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3493, file: !71, line: 89, baseType: !402, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3493, file: !71, line: 90, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!107, !287, !343}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3493, file: !71, line: 91, baseType: !3502, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!348, !287, !3505, !3344, !3345}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3493, file: !71, line: 93, baseType: !3507, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !287}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3493, file: !71, line: 95, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3514)
!3514 = !{!3515, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3513, file: !78, line: 279, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!107, !287}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3513, file: !78, line: 280, baseType: !3507, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3513, file: !78, line: 281, baseType: !3516, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3513, file: !78, line: 282, baseType: !3516, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3513, file: !78, line: 283, baseType: !3516, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3513, file: !78, line: 284, baseType: !3516, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3513, file: !78, line: 285, baseType: !3516, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3513, file: !78, line: 286, baseType: !3516, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3513, file: !78, line: 287, baseType: !3516, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3513, file: !78, line: 288, baseType: !3516, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3513, file: !78, line: 289, baseType: !3516, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3513, file: !78, line: 290, baseType: !3516, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3513, file: !78, line: 291, baseType: !3516, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3513, file: !78, line: 292, baseType: !3516, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3513, file: !78, line: 293, baseType: !3516, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3513, file: !78, line: 294, baseType: !3516, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3513, file: !78, line: 295, baseType: !3516, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3513, file: !78, line: 296, baseType: !3516, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3513, file: !78, line: 297, baseType: !3516, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3513, file: !78, line: 298, baseType: !3516, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3513, file: !78, line: 299, baseType: !3516, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3513, file: !78, line: 300, baseType: !3516, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3513, file: !78, line: 301, baseType: !3516, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !288, file: !71, line: 470, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3544, line: 82, size: 1408, elements: !3545)
!3544 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3627, !3630, !3631}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3543, file: !3544, line: 83, baseType: !295, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3543, file: !3544, line: 84, baseType: !295, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3543, file: !3544, line: 85, baseType: !287, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3543, file: !3544, line: 86, baseType: !402, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3543, file: !3544, line: 87, baseType: !402, size: 64, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3543, file: !3544, line: 88, baseType: !402, size: 64, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3543, file: !3544, line: 90, baseType: !3553, size: 64, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!107, !287, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3578, !3591, !3592, !3593, !3594, !3595, !3603, !3604, !3605, !3606, !3607, !3608}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !65, line: 96, baseType: !295, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3557, file: !65, line: 97, baseType: !3542, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3557, file: !65, line: 99, baseType: !707, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3557, file: !65, line: 100, baseType: !295, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3557, file: !65, line: 102, baseType: !564, size: 8, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3557, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3557, file: !65, line: 105, baseType: !3566, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3569, line: 262, size: 1600, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3570 = !{!3571, !3572, !3573, !3577}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3568, file: !3569, line: 263, baseType: !2823, size: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3568, file: !3569, line: 264, baseType: !2823, size: 256, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3568, file: !3569, line: 265, baseType: !3574, size: 1024, offset: 512)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 1024, elements: !3575)
!3575 = !{!3576}
!3576 = !DISubrange(count: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3568, file: !3569, line: 266, baseType: !2250, size: 64, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3557, file: !65, line: 106, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3581)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3569, line: 210, size: 256, elements: !3582)
!3582 = !{!3583, !3587, !3589, !3590}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3581, file: !3569, line: 211, baseType: !3584, size: 72)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 72, elements: !3585)
!3585 = !{!3586}
!3586 = !DISubrange(count: 9)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3581, file: !3569, line: 212, baseType: !3588, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3569, line: 14, baseType: !398)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3581, file: !3569, line: 213, baseType: !491, size: 32, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3581, file: !3569, line: 214, baseType: !491, size: 32, offset: 224)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3557, file: !65, line: 108, baseType: !3516, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3557, file: !65, line: 109, baseType: !3507, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3557, file: !65, line: 110, baseType: !3516, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3557, file: !65, line: 111, baseType: !3507, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3557, file: !65, line: 112, baseType: !3596, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!107, !287, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3600)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3601)
!3601 = !{!3602}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3600, file: !78, line: 51, baseType: !107, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3557, file: !65, line: 113, baseType: !3516, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3557, file: !65, line: 114, baseType: !402, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3557, file: !65, line: 115, baseType: !402, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3557, file: !65, line: 117, baseType: !3511, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3557, file: !65, line: 118, baseType: !3507, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3557, file: !65, line: 120, baseType: !3609, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3543, file: !3544, line: 91, baseType: !3498, size: 64, offset: 448)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3543, file: !3544, line: 92, baseType: !3516, size: 64, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3543, file: !3544, line: 93, baseType: !3507, size: 64, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3543, file: !3544, line: 94, baseType: !3516, size: 64, offset: 640)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3543, file: !3544, line: 95, baseType: !3507, size: 64, offset: 704)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3543, file: !3544, line: 97, baseType: !3516, size: 64, offset: 768)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3543, file: !3544, line: 98, baseType: !3516, size: 64, offset: 832)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3543, file: !3544, line: 100, baseType: !3596, size: 64, offset: 896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3543, file: !3544, line: 101, baseType: !3516, size: 64, offset: 960)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3543, file: !3544, line: 103, baseType: !3516, size: 64, offset: 1024)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3543, file: !3544, line: 105, baseType: !3516, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3543, file: !3544, line: 107, baseType: !3511, size: 64, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3543, file: !3544, line: 109, baseType: !3624, size: 64, offset: 1216)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3544, line: 109, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3543, file: !3544, line: 111, baseType: !3628, size: 64, offset: 1280)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3544, line: 111, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3543, file: !3544, line: 112, baseType: !722, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3543, file: !3544, line: 114, baseType: !564, size: 8, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !288, file: !71, line: 471, baseType: !3556, size: 64, offset: 832)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !288, file: !71, line: 473, baseType: !258, size: 64, offset: 896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !288, file: !71, line: 475, baseType: !258, size: 64, offset: 960)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !288, file: !71, line: 480, baseType: !1246, size: 192, offset: 1024)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !288, file: !71, line: 484, baseType: !3637, size: 576, offset: 1216)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3637, file: !71, line: 362, baseType: !267, size: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3637, file: !71, line: 363, baseType: !267, size: 128, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3637, file: !71, line: 364, baseType: !267, size: 128, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3637, file: !71, line: 365, baseType: !267, size: 128, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3637, file: !71, line: 366, baseType: !564, size: 8, offset: 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3637, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !288, file: !71, line: 485, baseType: !3646, size: 2304, offset: 1792)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3743, !3747}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3646, file: !78, line: 566, baseType: !3599, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3646, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3646, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3646, file: !78, line: 569, baseType: !564, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3646, file: !78, line: 570, baseType: !564, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3646, file: !78, line: 571, baseType: !564, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3646, file: !78, line: 572, baseType: !564, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3646, file: !78, line: 573, baseType: !564, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3646, file: !78, line: 574, baseType: !564, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3646, file: !78, line: 575, baseType: !564, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3646, file: !78, line: 576, baseType: !564, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3646, file: !78, line: 577, baseType: !489, size: 32, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3646, file: !78, line: 578, baseType: !307, offset: 96)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3646, file: !78, line: 580, baseType: !267, size: 128, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3646, file: !78, line: 581, baseType: !1603, size: 192, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3646, file: !78, line: 582, baseType: !3664, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3666, line: 43, size: 1472, elements: !3667)
!3666 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3675, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3665, file: !3666, line: 44, baseType: !295, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3665, file: !3666, line: 45, baseType: !107, size: 32, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3665, file: !3666, line: 46, baseType: !267, size: 128, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3665, file: !3666, line: 47, baseType: !307, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3665, file: !3666, line: 48, baseType: !3673, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3665, file: !3666, line: 49, baseType: !3676, size: 320, offset: 320)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3677, line: 11, size: 320, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3678 = !{!3679, !3680, !3681, !3686}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3676, file: !3677, line: 16, baseType: !716, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3676, file: !3677, line: 17, baseType: !398, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3676, file: !3677, line: 18, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3676, file: !3677, line: 19, baseType: !489, size: 32, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3665, file: !3666, line: 50, baseType: !398, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3665, file: !3666, line: 51, baseType: !1368, size: 64, offset: 704)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3665, file: !3666, line: 52, baseType: !1368, size: 64, offset: 768)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3665, file: !3666, line: 53, baseType: !1368, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3665, file: !3666, line: 54, baseType: !1368, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3665, file: !3666, line: 55, baseType: !1368, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3665, file: !3666, line: 56, baseType: !398, size: 64, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3665, file: !3666, line: 57, baseType: !398, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3665, file: !3666, line: 58, baseType: !398, size: 64, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3665, file: !3666, line: 59, baseType: !398, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3665, file: !3666, line: 60, baseType: !398, size: 64, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3665, file: !3666, line: 61, baseType: !287, size: 64, offset: 1344)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3665, file: !3666, line: 62, baseType: !564, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3665, file: !3666, line: 63, baseType: !564, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3646, file: !78, line: 583, baseType: !564, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3646, file: !78, line: 584, baseType: !564, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3646, file: !78, line: 585, baseType: !564, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3646, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3646, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3646, file: !78, line: 592, baseType: !1360, size: 512, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3646, file: !78, line: 593, baseType: !495, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3646, file: !78, line: 594, baseType: !2080, size: 256, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3646, file: !78, line: 595, baseType: !1549, size: 128, offset: 1408)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3646, file: !78, line: 596, baseType: !3673, size: 64, offset: 1536)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3646, file: !78, line: 597, baseType: !282, size: 32, offset: 1600)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3646, file: !78, line: 598, baseType: !282, size: 32, offset: 1632)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3646, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3646, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3646, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3646, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3646, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3646, file: !78, line: 604, baseType: !564, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3646, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3646, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3646, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3646, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3646, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3646, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3646, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3646, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3646, file: !78, line: 613, baseType: !107, size: 32, offset: 1792)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3646, file: !78, line: 614, baseType: !107, size: 32, offset: 1824)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3646, file: !78, line: 615, baseType: !495, size: 64, offset: 1856)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3646, file: !78, line: 616, baseType: !495, size: 64, offset: 1920)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3646, file: !78, line: 617, baseType: !495, size: 64, offset: 1984)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3646, file: !78, line: 618, baseType: !495, size: 64, offset: 2048)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3646, file: !78, line: 620, baseType: !3734, size: 64, offset: 2112)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3735, file: !78, line: 537, baseType: !307)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3735, file: !78, line: 538, baseType: !5, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3735, file: !78, line: 540, baseType: !267, size: 128, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3735, file: !78, line: 543, baseType: !3741, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3646, file: !78, line: 621, baseType: !3744, size: 64, offset: 2176)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !287, !1512}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3646, file: !78, line: 622, baseType: !3748, size: 64, offset: 2240)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !288, file: !71, line: 486, baseType: !3751, size: 64, offset: 4096)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3760, !3761, !3762}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3752, file: !78, line: 643, baseType: !3513, size: 1472)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3752, file: !78, line: 644, baseType: !3516, size: 64, offset: 1472)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3752, file: !78, line: 645, baseType: !3757, size: 64, offset: 1536)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !287, !564}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3752, file: !78, line: 646, baseType: !3516, size: 64, offset: 1600)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3752, file: !78, line: 647, baseType: !3507, size: 64, offset: 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3752, file: !78, line: 648, baseType: !3507, size: 64, offset: 1728)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !288, file: !71, line: 493, baseType: !3764, size: 64, offset: 4160)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !92, line: 162, size: 1088, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3942, !3943, !3944, !3945, !3946, !3947, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3765, file: !92, line: 163, baseType: !267, size: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3765, file: !92, line: 164, baseType: !295, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3765, file: !92, line: 165, baseType: !3770, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3772)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !92, line: 105, size: 640, elements: !3773)
!3773 = !{!3774, !3892, !3903, !3908, !3912, !3919, !3923, !3927, !3934, !3938}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3772, file: !92, line: 106, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!107, !3764, !3778, !91}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3780, line: 51, size: 1344, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3781 = !{!3782, !3783, !3785, !3786, !3876, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3779, file: !3780, line: 52, baseType: !295, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3779, file: !3780, line: 53, baseType: !3784, size: 32, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3780, line: 28, baseType: !489)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3779, file: !3780, line: 54, baseType: !295, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3779, file: !3780, line: 55, baseType: !3787, size: 192, offset: 192)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3788, line: 17, size: 192, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !{!3790, !3792, !3875}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3787, file: !3788, line: 18, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3787, file: !3788, line: 19, baseType: !3793, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3788, line: 110, size: 1152, elements: !3796)
!3796 = !{!3797, !3801, !3805, !3811, !3817, !3821, !3825, !3830, !3834, !3835, !3839, !3843, !3847, !3858, !3859, !3860, !3861, !3871}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3795, file: !3788, line: 111, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3791, !3791}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3795, file: !3788, line: 112, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3791}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3795, file: !3788, line: 113, baseType: !3806, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!564, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3787)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3795, file: !3788, line: 114, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!2250, !3809, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3795, file: !3788, line: 116, baseType: !3818, size: 64, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!564, !3809, !295}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3795, file: !3788, line: 118, baseType: !3822, size: 64, offset: 320)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!107, !3809, !295, !5, !258, !395}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3795, file: !3788, line: 123, baseType: !3826, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!107, !3809, !295, !3829, !395}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3795, file: !3788, line: 126, baseType: !3831, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!295, !3809}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3795, file: !3788, line: 127, baseType: !3831, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3795, file: !3788, line: 128, baseType: !3836, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!3791, !3809}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3795, file: !3788, line: 130, baseType: !3840, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3791, !3809, !3791}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3795, file: !3788, line: 133, baseType: !3844, size: 64, offset: 704)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3791, !3809, !295}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3795, file: !3788, line: 135, baseType: !3848, size: 64, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!107, !3809, !295, !295, !5, !5, !3851}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3788, line: 43, size: 640, elements: !3853)
!3853 = !{!3854, !3855, !3856}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3852, file: !3788, line: 44, baseType: !3791, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3852, file: !3788, line: 45, baseType: !5, size: 32, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3852, file: !3788, line: 46, baseType: !3857, size: 512, offset: 128)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 512, elements: !1398)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3795, file: !3788, line: 140, baseType: !3840, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3795, file: !3788, line: 143, baseType: !3836, size: 64, offset: 896)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3795, file: !3788, line: 145, baseType: !3798, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3795, file: !3788, line: 146, baseType: !3862, size: 64, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!107, !3809, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3788, line: 29, size: 128, elements: !3867)
!3867 = !{!3868, !3869, !3870}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3866, file: !3788, line: 30, baseType: !5, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3866, file: !3788, line: 31, baseType: !5, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3866, file: !3788, line: 32, baseType: !3809, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3795, file: !3788, line: 148, baseType: !3872, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!107, !3809, !287}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3787, file: !3788, line: 20, baseType: !287, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3779, file: !3780, line: 57, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3780, line: 31, size: 704, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3878, file: !3780, line: 32, baseType: !348, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3878, file: !3780, line: 33, baseType: !107, size: 32, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3878, file: !3780, line: 34, baseType: !258, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3878, file: !3780, line: 35, baseType: !3877, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3878, file: !3780, line: 43, baseType: !417, size: 448, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3779, file: !3780, line: 58, baseType: !3877, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3779, file: !3780, line: 59, baseType: !3778, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3779, file: !3780, line: 60, baseType: !3778, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3779, file: !3780, line: 61, baseType: !3778, size: 64, offset: 640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3779, file: !3780, line: 63, baseType: !291, size: 512, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !3780, line: 65, baseType: !398, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3779, file: !3780, line: 66, baseType: !258, size: 64, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3772, file: !92, line: 108, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!107, !3764, !3896, !91}
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !92, line: 63, size: 640, elements: !3898)
!3898 = !{!3899, !3900, !3901}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3897, file: !92, line: 64, baseType: !3791, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3897, file: !92, line: 65, baseType: !107, size: 32, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3897, file: !92, line: 66, baseType: !3902, size: 512, offset: 96)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 512, elements: !1834)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3772, file: !92, line: 110, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!107, !3764, !5, !3907}
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !257, line: 164, baseType: !398)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3772, file: !92, line: 111, baseType: !3909, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3764, !5}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3772, file: !92, line: 112, baseType: !3913, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!107, !3764, !3778, !3916, !5, !3918, !2806}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3772, file: !92, line: 117, baseType: !3920, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!107, !3764, !5, !5, !258}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3772, file: !92, line: 119, baseType: !3924, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3764, !5, !5}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3772, file: !92, line: 121, baseType: !3928, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!107, !3764, !3931, !564}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3933, line: 11, flags: DIFlagFwdDecl)
!3933 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3772, file: !92, line: 122, baseType: !3935, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3764, !3931}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3772, file: !92, line: 123, baseType: !3939, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!107, !3764, !3896, !3918, !2806}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3765, file: !92, line: 166, baseType: !258, size: 64, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3765, file: !92, line: 167, baseType: !5, size: 32, offset: 320)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3765, file: !92, line: 168, baseType: !5, size: 32, offset: 352)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3765, file: !92, line: 171, baseType: !3791, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3765, file: !92, line: 172, baseType: !91, size: 32, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3765, file: !92, line: 173, baseType: !3948, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !92, line: 134, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3765, file: !92, line: 175, baseType: !3764, size: 64, offset: 576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3765, file: !92, line: 182, baseType: !3907, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3765, file: !92, line: 183, baseType: !5, size: 32, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3765, file: !92, line: 184, baseType: !5, size: 32, offset: 736)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3765, file: !92, line: 185, baseType: !816, size: 128, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3765, file: !92, line: 186, baseType: !1246, size: 192, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3765, file: !92, line: 187, baseType: !3957, offset: 1088)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !2454)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !288, file: !71, line: 499, baseType: !267, size: 128, offset: 4224)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !288, file: !71, line: 502, baseType: !3960, size: 64, offset: 4352)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !288, file: !71, line: 504, baseType: !3964, size: 64, offset: 4416)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !288, file: !71, line: 505, baseType: !495, size: 64, offset: 4480)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !288, file: !71, line: 510, baseType: !495, size: 64, offset: 4544)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !288, file: !71, line: 511, baseType: !3968, size: 64, offset: 4608)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !288, file: !71, line: 513, baseType: !3972, size: 64, offset: 4672)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3974)
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3973, file: !71, line: 293, baseType: !5, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3973, file: !71, line: 294, baseType: !398, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !288, file: !71, line: 515, baseType: !267, size: 128, offset: 4736)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !288, file: !71, line: 526, baseType: !3979, offset: 4864)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3980, line: 5, elements: !321)
!3980 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !288, file: !71, line: 528, baseType: !3778, size: 64, offset: 4864)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !288, file: !71, line: 529, baseType: !3791, size: 64, offset: 4928)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !288, file: !71, line: 534, baseType: !587, size: 32, offset: 4992)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !288, file: !71, line: 535, baseType: !489, size: 32, offset: 5024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !288, file: !71, line: 537, baseType: !307, offset: 5056)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !288, file: !71, line: 538, baseType: !267, size: 128, offset: 5056)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !288, file: !71, line: 540, baseType: !3988, size: 64, offset: 5184)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3990, line: 54, size: 960, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997, !3998, !4002, !4006, !4007, !4008, !4009, !4013, !4017, !4018}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !3990, line: 55, baseType: !295, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3989, file: !3990, line: 56, baseType: !707, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3989, file: !3990, line: 58, baseType: !402, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3989, file: !3990, line: 59, baseType: !402, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3989, file: !3990, line: 60, baseType: !300, size: 64, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3989, file: !3990, line: 62, baseType: !3498, size: 64, offset: 320)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3989, file: !3990, line: 63, baseType: !3999, size: 64, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!348, !287, !3505}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3989, file: !3990, line: 65, baseType: !4003, size: 64, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !3988}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3989, file: !3990, line: 66, baseType: !3507, size: 64, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3989, file: !3990, line: 68, baseType: !3516, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3989, file: !3990, line: 70, baseType: !3312, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3989, file: !3990, line: 71, baseType: !4010, size: 64, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!2250, !287}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3989, file: !3990, line: 73, baseType: !4014, size: 64, offset: 768)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !287, !3344, !3345}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3989, file: !3990, line: 75, baseType: !3511, size: 64, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3989, file: !3990, line: 77, baseType: !3628, size: 64, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !288, file: !71, line: 541, baseType: !402, size: 64, offset: 5248)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !288, file: !71, line: 543, baseType: !3507, size: 64, offset: 5312)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !288, file: !71, line: 544, baseType: !4022, size: 64, offset: 5376)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !288, file: !71, line: 545, baseType: !4025, size: 64, offset: 5440)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !288, file: !71, line: 547, baseType: !564, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !288, file: !71, line: 548, baseType: !564, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !288, file: !71, line: 549, baseType: !564, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !288, file: !71, line: 550, baseType: !564, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !264, file: !223, line: 83, baseType: !4032, size: 192, offset: 256)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !223, line: 76, size: 192, elements: !4033)
!4033 = !{!4034, !4035, !4036}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4032, file: !223, line: 78, baseType: !267, size: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4032, file: !223, line: 80, baseType: !258, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4032, file: !223, line: 82, baseType: !307, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !264, file: !223, line: 86, baseType: !4038, size: 64, offset: 448)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !223, line: 12, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !264, file: !223, line: 98, baseType: !258, size: 64, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !264, file: !223, line: 101, baseType: !4042, size: 64, offset: 576)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !223, line: 13, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !264, file: !223, line: 104, baseType: !4042, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !264, file: !223, line: 111, baseType: !564, size: 8, offset: 704)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !264, file: !223, line: 119, baseType: !4047, size: 64, offset: 768)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4049, line: 11, flags: DIFlagFwdDecl)
!4049 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !264, file: !223, line: 129, baseType: !489, size: 32, offset: 832)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !264, file: !223, line: 137, baseType: !564, size: 8, offset: 864)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !264, file: !223, line: 140, baseType: !503, size: 64, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !264, file: !223, line: 143, baseType: !348, size: 64, offset: 960)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !264, file: !223, line: 153, baseType: !1246, size: 192, offset: 1024)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !264, file: !223, line: 160, baseType: !1246, size: 192, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !264, file: !223, line: 168, baseType: !282, size: 32, offset: 1408)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !264, file: !223, line: 171, baseType: !1246, size: 192, offset: 1472)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !264, file: !223, line: 177, baseType: !267, size: 128, offset: 1664)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !264, file: !223, line: 185, baseType: !267, size: 128, offset: 1792)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !264, file: !223, line: 192, baseType: !1246, size: 192, offset: 1920)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !264, file: !223, line: 199, baseType: !267, size: 128, offset: 2112)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !264, file: !223, line: 208, baseType: !564, size: 8, offset: 2240)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !264, file: !223, line: 213, baseType: !107, size: 32, offset: 2272)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !264, file: !223, line: 228, baseType: !564, size: 8, offset: 2304)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !264, file: !223, line: 238, baseType: !4066, size: 64, offset: 2368)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !223, line: 16, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !264, file: !223, line: 245, baseType: !307, offset: 2432)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !264, file: !223, line: 250, baseType: !307, offset: 2432)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !264, file: !223, line: 273, baseType: !489, size: 32, offset: 2432)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !264, file: !223, line: 276, baseType: !267, size: 128, offset: 2496)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !264, file: !223, line: 284, baseType: !307, offset: 2624)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !264, file: !223, line: 287, baseType: !4074, size: 64, offset: 2624)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !223, line: 287, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !264, file: !223, line: 290, baseType: !4077, size: 64, offset: 2688)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4079, line: 79, flags: DIFlagFwdDecl)
!4079 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/lizy2001/genbc/linux")
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !264, file: !223, line: 297, baseType: !5, size: 32, offset: 2752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !264, file: !223, line: 300, baseType: !4082, size: 8384, offset: 2816)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4083, line: 358, size: 8384, elements: !4084)
!4083 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4084 = !{!4085, !4086, !4105, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4127, !4128, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !5189, !5191, !5192, !5193, !5194, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4082, file: !4083, line: 369, baseType: !1246, size: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4082, file: !4083, line: 379, baseType: !4087, size: 384, offset: 192)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4088, line: 76, size: 384, elements: !4089)
!4088 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4089 = !{!4090, !4104}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4087, file: !4088, line: 80, baseType: !4091, size: 256)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !1247, line: 71, size: 256, elements: !4092)
!4092 = !{!4093, !4094}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4091, file: !1247, line: 72, baseType: !1246, size: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4091, file: !1247, line: 73, baseType: !4095, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4097, line: 31, size: 192, elements: !4098)
!4097 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4098 = !{!4099, !4100, !4101, !4102, !4103}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4096, file: !4097, line: 32, baseType: !1289, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4096, file: !4097, line: 33, baseType: !398, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4096, file: !4097, line: 34, baseType: !5, size: 32, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4096, file: !4097, line: 35, baseType: !390, size: 16, offset: 160)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4096, file: !4097, line: 36, baseType: !390, size: 16, offset: 176)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4087, file: !4088, line: 86, baseType: !267, size: 128, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4082, file: !4083, line: 389, baseType: !4106, size: 64, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4088, line: 43, size: 448, elements: !4108)
!4108 = !{!4109, !4110, !4112, !4113, !4114}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4107, file: !4088, line: 45, baseType: !4096, size: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4107, file: !4088, line: 52, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4107, file: !4088, line: 57, baseType: !267, size: 128, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4107, file: !4088, line: 62, baseType: !564, size: 8, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4107, file: !4088, line: 65, baseType: !564, size: 8, offset: 392)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4082, file: !4083, line: 397, baseType: !1246, size: 192, offset: 640)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4082, file: !4083, line: 405, baseType: !1568, size: 192, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4082, file: !4083, line: 413, baseType: !1568, size: 192, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4082, file: !4083, line: 416, baseType: !1246, size: 192, offset: 1216)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4082, file: !4083, line: 418, baseType: !107, size: 32, offset: 1408)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4082, file: !4083, line: 420, baseType: !267, size: 128, offset: 1472)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4082, file: !4083, line: 426, baseType: !307, offset: 1600)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4082, file: !4083, line: 431, baseType: !107, size: 32, offset: 1600)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4082, file: !4083, line: 435, baseType: !4124, size: 128, offset: 1664)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1569, line: 244, size: 128, elements: !4125)
!4125 = !{!4126}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4124, file: !1569, line: 245, baseType: !816, size: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4082, file: !4083, line: 443, baseType: !267, size: 128, offset: 1792)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4082, file: !4083, line: 453, baseType: !4129, size: 64, offset: 1920)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !434, line: 54, size: 64, elements: !4130)
!4130 = !{!4131}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4129, file: !434, line: 55, baseType: !437, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4082, file: !4083, line: 457, baseType: !2080, size: 256, offset: 1984)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4082, file: !4083, line: 465, baseType: !107, size: 32, offset: 2240)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4082, file: !4083, line: 473, baseType: !267, size: 128, offset: 2304)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4082, file: !4083, line: 482, baseType: !107, size: 32, offset: 2432)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4082, file: !4083, line: 489, baseType: !267, size: 128, offset: 2496)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4082, file: !4083, line: 497, baseType: !107, size: 32, offset: 2624)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4082, file: !4083, line: 504, baseType: !267, size: 128, offset: 2688)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4082, file: !4083, line: 513, baseType: !267, size: 128, offset: 2816)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4082, file: !4083, line: 522, baseType: !267, size: 128, offset: 2944)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4082, file: !4083, line: 524, baseType: !107, size: 32, offset: 3072)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4082, file: !4083, line: 524, baseType: !107, size: 32, offset: 3104)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4082, file: !4083, line: 525, baseType: !107, size: 32, offset: 3136)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4082, file: !4083, line: 525, baseType: !107, size: 32, offset: 3168)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4082, file: !4083, line: 526, baseType: !4146, size: 64, offset: 3200)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4083, line: 47, size: 576, elements: !4149)
!4149 = !{!4150, !4258, !4262, !4266, !4308, !5176, !5180, !5184, !5188}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4148, file: !4083, line: 77, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!4154, !263, !4215, !4243}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4156, line: 117, size: 1600, elements: !4157)
!4156 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!4157 = !{!4158, !4159, !4160, !4197, !4198, !4202, !4229, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4155, file: !4156, line: 121, baseType: !263, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4155, file: !4156, line: 126, baseType: !267, size: 128, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4155, file: !4156, line: 131, baseType: !4161, size: 256, offset: 192)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4162, line: 55, size: 256, elements: !4163)
!4162 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!4163 = !{!4164, !4165, !4166, !4191, !4192}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4161, file: !4162, line: 56, baseType: !633, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4161, file: !4162, line: 57, baseType: !633, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4161, file: !4162, line: 58, baseType: !4167, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4162, line: 67, size: 3136, elements: !4169)
!4169 = !{!4170, !4171, !4189}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4168, file: !4162, line: 73, baseType: !107, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4168, file: !4162, line: 82, baseType: !4172, size: 1536, offset: 64)
!4172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4173, size: 1536, elements: !4187)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4175, line: 73, size: 960, elements: !4176)
!4175 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/lizy2001/genbc/linux")
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4185, !4186}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4174, file: !4175, line: 77, baseType: !267, size: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4174, file: !4175, line: 82, baseType: !4161, size: 256, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4174, file: !4175, line: 159, baseType: !633, size: 32, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4174, file: !4175, line: 164, baseType: !2823, size: 256, offset: 416)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4174, file: !4175, line: 169, baseType: !633, size: 32, offset: 672)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4174, file: !4175, line: 177, baseType: !4183, size: 64, offset: 704)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !257, line: 107, baseType: !495)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4174, file: !4175, line: 182, baseType: !263, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4174, file: !4175, line: 190, baseType: !267, size: 128, offset: 832)
!4187 = !{!4188}
!4188 = !DISubrange(count: 24)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4168, file: !4162, line: 102, baseType: !4190, size: 1536, offset: 1600)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4184, size: 1536, elements: !4187)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4161, file: !4162, line: 59, baseType: !274, size: 32, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4161, file: !4162, line: 60, baseType: !4193, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4155, file: !4156, line: 136, baseType: !1833, size: 128, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4155, file: !4156, line: 141, baseType: !4199, size: 64, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4201 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4156, line: 35, flags: DIFlagFwdDecl)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4155, file: !4156, line: 145, baseType: !4203, size: 64, offset: 640)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4156, line: 42, size: 192, elements: !4206)
!4206 = !{!4207, !4211, !4217}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4205, file: !4156, line: 53, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !4154}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4205, file: !4156, line: 73, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!107, !4154, !4215, !2806}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4049, line: 9, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4205, file: !4156, line: 97, baseType: !4218, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!107, !4154, !4215, !5, !5, !4221, !5}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4223, line: 97, size: 64, elements: !4224)
!4223 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4224 = !{!4225, !4226, !4227, !4228}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4222, file: !4223, line: 98, baseType: !390, size: 16)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4222, file: !4223, line: 99, baseType: !390, size: 16, offset: 16)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4222, file: !4223, line: 100, baseType: !390, size: 16, offset: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4222, file: !4223, line: 101, baseType: !390, size: 16, offset: 48)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4155, file: !4156, line: 150, baseType: !4230, size: 128, offset: 704)
!4230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !1228)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4155, file: !4156, line: 168, baseType: !4230, size: 128, offset: 832)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4155, file: !4156, line: 175, baseType: !4184, size: 64, offset: 960)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4155, file: !4156, line: 180, baseType: !5, size: 32, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4155, file: !4156, line: 185, baseType: !5, size: 32, offset: 1056)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4155, file: !4156, line: 190, baseType: !107, size: 32, offset: 1088)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4155, file: !4156, line: 196, baseType: !107, size: 32, offset: 1120)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4155, file: !4156, line: 202, baseType: !107, size: 32, offset: 1152)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4155, file: !4156, line: 206, baseType: !267, size: 128, offset: 1216)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4155, file: !4156, line: 213, baseType: !4240, size: 256, offset: 1344)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4241, size: 256, elements: !1228)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4156, line: 37, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !182, line: 494, size: 832, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250, !4251, !4252, !4254, !4255, !4256}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4245, file: !182, line: 495, baseType: !491, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4245, file: !182, line: 496, baseType: !491, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4245, file: !182, line: 497, baseType: !491, size: 32, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4245, file: !182, line: 498, baseType: !491, size: 32, offset: 96)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4245, file: !182, line: 499, baseType: !491, size: 32, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4245, file: !182, line: 525, baseType: !4253, size: 128, offset: 160)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 128, elements: !1228)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4245, file: !182, line: 526, baseType: !4253, size: 128, offset: 288)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4245, file: !182, line: 527, baseType: !4253, size: 128, offset: 416)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4245, file: !182, line: 528, baseType: !4257, size: 256, offset: 576)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 256, elements: !1228)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4148, file: !4083, line: 92, baseType: !4259, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!4199, !4243}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4148, file: !4083, line: 109, baseType: !4263, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !263}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4148, file: !4083, line: 119, baseType: !4267, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!105, !263, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !106, line: 224, size: 960, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4272, file: !106, line: 230, baseType: !107, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4272, file: !106, line: 231, baseType: !932, size: 16, offset: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4272, file: !106, line: 232, baseType: !932, size: 16, offset: 48)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4272, file: !106, line: 233, baseType: !932, size: 16, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4272, file: !106, line: 234, baseType: !932, size: 16, offset: 80)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4272, file: !106, line: 235, baseType: !932, size: 16, offset: 96)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4272, file: !106, line: 236, baseType: !932, size: 16, offset: 112)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4272, file: !106, line: 237, baseType: !932, size: 16, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4272, file: !106, line: 238, baseType: !932, size: 16, offset: 144)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4272, file: !106, line: 239, baseType: !932, size: 16, offset: 160)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4272, file: !106, line: 240, baseType: !932, size: 16, offset: 176)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4272, file: !106, line: 275, baseType: !489, size: 32, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4272, file: !106, line: 292, baseType: !107, size: 32, offset: 224)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4272, file: !106, line: 293, baseType: !932, size: 16, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4272, file: !106, line: 294, baseType: !932, size: 16, offset: 272)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4272, file: !106, line: 295, baseType: !932, size: 16, offset: 288)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4272, file: !106, line: 296, baseType: !932, size: 16, offset: 304)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4272, file: !106, line: 297, baseType: !932, size: 16, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4272, file: !106, line: 298, baseType: !932, size: 16, offset: 336)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4272, file: !106, line: 299, baseType: !932, size: 16, offset: 352)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4272, file: !106, line: 300, baseType: !932, size: 16, offset: 368)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4272, file: !106, line: 301, baseType: !932, size: 16, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4272, file: !106, line: 302, baseType: !932, size: 16, offset: 400)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4272, file: !106, line: 303, baseType: !932, size: 16, offset: 416)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4272, file: !106, line: 304, baseType: !932, size: 16, offset: 432)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4272, file: !106, line: 305, baseType: !932, size: 16, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4272, file: !106, line: 313, baseType: !932, size: 16, offset: 464)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4272, file: !106, line: 321, baseType: !932, size: 16, offset: 480)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4272, file: !106, line: 350, baseType: !1420, size: 8, offset: 496)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4272, file: !106, line: 361, baseType: !564, size: 8, offset: 504)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4272, file: !106, line: 368, baseType: !267, size: 128, offset: 512)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4272, file: !106, line: 375, baseType: !2823, size: 256, offset: 640)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4272, file: !106, line: 383, baseType: !105, size: 32, offset: 896)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4272, file: !106, line: 390, baseType: !149, size: 32, offset: 928)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4148, file: !4083, line: 196, baseType: !4309, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!107, !263, !4312}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4314, line: 325, size: 960, elements: !4315)
!4314 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/lizy2001/genbc/linux")
!4315 = !{!4316, !4317, !4318, !4319, !4320, !4321, !4322, !5119, !5131, !5132, !5141, !5142, !5173, !5174, !5175}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4313, file: !4314, line: 326, baseType: !274, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4313, file: !4314, line: 328, baseType: !263, size: 64, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4313, file: !4314, line: 338, baseType: !564, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4313, file: !4314, line: 339, baseType: !564, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4313, file: !4314, line: 340, baseType: !564, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4313, file: !4314, line: 349, baseType: !564, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4313, file: !4314, line: 350, baseType: !4323, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !4314, line: 158, size: 256, elements: !4325)
!4325 = !{!4326, !4327, !5117, !5118}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4324, file: !4314, line: 159, baseType: !259, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4324, file: !4314, line: 160, baseType: !4328, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !230, line: 47, size: 1216, elements: !4330)
!4330 = !{!4331, !4332, !5085, !5086, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5113, !5114, !5115, !5116}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4329, file: !230, line: 49, baseType: !259, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4329, file: !230, line: 57, baseType: !4333, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4335, line: 939, size: 7680, elements: !4336)
!4335 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/lizy2001/genbc/linux")
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !5003, !5004, !5006, !5052, !5053, !5054, !5055, !5056, !5078, !5079, !5080, !5081, !5082}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4334, file: !4335, line: 941, baseType: !263, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4334, file: !4335, line: 943, baseType: !3778, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4334, file: !4335, line: 951, baseType: !267, size: 128, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4334, file: !4335, line: 954, baseType: !348, size: 64, offset: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4334, file: !4335, line: 966, baseType: !4087, size: 384, offset: 320)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4334, file: !4335, line: 969, baseType: !4161, size: 256, offset: 704)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4334, file: !4335, line: 978, baseType: !259, size: 64, offset: 960)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4334, file: !4335, line: 987, baseType: !259, size: 64, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4334, file: !4335, line: 993, baseType: !5, size: 32, offset: 1088)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4334, file: !4335, line: 1002, baseType: !107, size: 32, offset: 1120)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4334, file: !4335, line: 1010, baseType: !107, size: 32, offset: 1152)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4334, file: !4335, line: 1020, baseType: !564, size: 8, offset: 1184)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4334, file: !4335, line: 1030, baseType: !4272, size: 960, offset: 1216)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4334, file: !4335, line: 1046, baseType: !4272, size: 960, offset: 2176)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4334, file: !4335, line: 1055, baseType: !107, size: 32, offset: 3136)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4334, file: !4335, line: 1063, baseType: !107, size: 32, offset: 3168)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4334, file: !4335, line: 1066, baseType: !4354, size: 64, offset: 3200)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4356)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4335, line: 409, size: 1536, elements: !4357)
!4357 = !{!4358, !4362, !4366, !4370, !4374, !4379, !4380, !4938, !4942, !4946, !4950, !4954, !4958, !4962, !4968, !4972, !4973, !4977, !4982, !4988, !4992, !4996, !4997, !4998}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4356, file: !4335, line: 420, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4333}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !4356, file: !4335, line: 443, baseType: !4363, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!107, !4333, !4215, !633, !633, !633}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !4356, file: !4335, line: 465, baseType: !4367, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!107, !4333, !4215, !633, !633, !633, !1685, !1685}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !4356, file: !4335, line: 485, baseType: !4371, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!107, !4333, !107, !107}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !4356, file: !4335, line: 500, baseType: !4375, size: 64, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!107, !4333, !4378, !4378, !4378, !633, !4106}
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4356, file: !4335, line: 511, baseType: !4359, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4356, file: !4335, line: 527, baseType: !4381, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!107, !4384, !4106}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4335, line: 1190, size: 384, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4391, !4392, !4393, !4937}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4385, file: !4335, line: 1191, baseType: !4154, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4385, file: !4335, line: 1192, baseType: !4333, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4385, file: !4335, line: 1193, baseType: !4390, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4385, file: !4335, line: 1195, baseType: !633, size: 32, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4385, file: !4335, line: 1196, baseType: !633, size: 32, offset: 224)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4385, file: !4335, line: 1198, baseType: !4394, size: 64, offset: 256)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !159, line: 1170, size: 9280, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4471, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4699, !4700, !4742, !4761, !4762, !4763, !4764, !4765, !4766, !4768, !4770, !4772, !4773, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4913, !4914, !4915, !4916, !4917, !4918, !4920, !4921, !4922}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4396, file: !159, line: 1172, baseType: !263, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4396, file: !159, line: 1174, baseType: !287, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4396, file: !159, line: 1176, baseType: !4401, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !71, line: 99, size: 256, elements: !4403)
!4403 = !{!4404, !4405, !4409}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4402, file: !71, line: 100, baseType: !385, size: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4402, file: !71, line: 101, baseType: !4406, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!379, !287, !4401, !348}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4402, file: !71, line: 103, baseType: !4410, size: 64, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!379, !287, !4401, !295, !395}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4396, file: !159, line: 1186, baseType: !267, size: 128, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4396, file: !159, line: 1189, baseType: !4161, size: 256, offset: 320)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4396, file: !159, line: 1192, baseType: !348, size: 64, offset: 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4396, file: !159, line: 1199, baseType: !1246, size: 192, offset: 640)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4396, file: !159, line: 1207, baseType: !5, size: 32, offset: 832)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !4396, file: !159, line: 1213, baseType: !107, size: 32, offset: 864)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !4396, file: !159, line: 1215, baseType: !107, size: 32, offset: 896)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !4396, file: !159, line: 1221, baseType: !564, size: 8, offset: 928)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !4396, file: !159, line: 1227, baseType: !564, size: 8, offset: 936)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4396, file: !159, line: 1233, baseType: !564, size: 8, offset: 944)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !4396, file: !159, line: 1241, baseType: !564, size: 8, offset: 952)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !4396, file: !159, line: 1249, baseType: !158, size: 32, offset: 960)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !4396, file: !159, line: 1256, baseType: !267, size: 128, offset: 1024)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4396, file: !159, line: 1263, baseType: !164, size: 32, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !4396, file: !159, line: 1271, baseType: !267, size: 128, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !4396, file: !159, line: 1282, baseType: !4429, size: 1216, offset: 1344)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !159, line: 428, size: 1216, elements: !4430)
!4430 = !{!4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4465, !4466}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4429, file: !159, line: 432, baseType: !5, size: 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4429, file: !159, line: 437, baseType: !5, size: 32, offset: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !4429, file: !159, line: 442, baseType: !5, size: 32, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !4429, file: !159, line: 447, baseType: !169, size: 32, offset: 96)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !4429, file: !159, line: 461, baseType: !107, size: 32, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !4429, file: !159, line: 469, baseType: !489, size: 32, offset: 160)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !4429, file: !159, line: 476, baseType: !3916, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !4429, file: !159, line: 480, baseType: !5, size: 32, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4429, file: !159, line: 487, baseType: !489, size: 32, offset: 288)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !4429, file: !159, line: 493, baseType: !107, size: 32, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !4429, file: !159, line: 498, baseType: !564, size: 8, offset: 352)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !4429, file: !159, line: 506, baseType: !564, size: 8, offset: 360)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !4429, file: !159, line: 511, baseType: !564, size: 8, offset: 368)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !4429, file: !159, line: 517, baseType: !564, size: 8, offset: 376)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_dc_modes", scope: !4429, file: !159, line: 523, baseType: !1420, size: 8, offset: 384)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !4429, file: !159, line: 528, baseType: !1420, size: 8, offset: 392)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !4429, file: !159, line: 533, baseType: !4448, size: 704, offset: 448)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !159, line: 185, size: 704, elements: !4449)
!4449 = !{!4450, !4460, !4462, !4463, !4464}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !4448, file: !159, line: 187, baseType: !4451, size: 32)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !159, line: 163, size: 32, elements: !4452)
!4452 = !{!4453, !4454, !4455}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4451, file: !159, line: 167, baseType: !564, size: 8)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !4451, file: !159, line: 171, baseType: !564, size: 8, offset: 8)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !4451, file: !159, line: 175, baseType: !4456, size: 16, offset: 16)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !159, line: 146, size: 16, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4456, file: !159, line: 150, baseType: !564, size: 8)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !4456, file: !159, line: 154, baseType: !564, size: 8, offset: 8)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !4448, file: !159, line: 195, baseType: !4461, size: 256, offset: 64)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !1228)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !4448, file: !159, line: 203, baseType: !4461, size: 256, offset: 320)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_map", scope: !4448, file: !159, line: 206, baseType: !495, size: 64, offset: 576)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !4448, file: !159, line: 209, baseType: !1420, size: 8, offset: 640)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !4429, file: !159, line: 538, baseType: !564, size: 8, offset: 1152)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !4429, file: !159, line: 543, baseType: !4467, size: 16, offset: 1160)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !159, line: 269, size: 16, elements: !4468)
!4468 = !{!4469, !4470}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !4467, file: !159, line: 270, baseType: !1420, size: 8)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !4467, file: !159, line: 271, baseType: !1420, size: 8, offset: 8)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4396, file: !159, line: 1285, baseType: !4472, size: 64, offset: 2560)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4474)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !159, line: 749, size: 896, elements: !4475)
!4475 = !{!4476, !4480, !4484, !4488, !4489, !4493, !4497, !4501, !4502, !4503, !4670, !4674, !4678, !4684}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4474, file: !159, line: 766, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!107, !4395, !107}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4474, file: !159, line: 778, baseType: !4481, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !4395}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4474, file: !159, line: 806, baseType: !4485, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!164, !4395, !564}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4474, file: !159, line: 823, baseType: !4481, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !4474, file: !159, line: 848, baseType: !4490, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!107, !4395, !633, !633}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4474, file: !159, line: 864, baseType: !4494, size: 64, offset: 320)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!107, !4395, !4173, !4184}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4474, file: !159, line: 883, baseType: !4498, size: 64, offset: 384)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!107, !4395}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4474, file: !159, line: 896, baseType: !4481, size: 64, offset: 448)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4474, file: !159, line: 906, baseType: !4481, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4474, file: !159, line: 939, baseType: !4504, size: 64, offset: 576)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!4507, !4395}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !159, line: 605, size: 1216, elements: !4509)
!4509 = !{!4510, !4511, !4512, !4636, !4637, !4638, !4639, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4667, !4668, !4669}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4508, file: !159, line: 607, baseType: !4395, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4508, file: !159, line: 615, baseType: !4333, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !4508, file: !159, line: 633, baseType: !4513, size: 64, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !4515, line: 99, size: 960, elements: !4516)
!4515 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/lizy2001/genbc/linux")
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4542}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4514, file: !4515, line: 100, baseType: !263, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4514, file: !4515, line: 101, baseType: !267, size: 128, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4514, file: !4515, line: 103, baseType: !4161, size: 256, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4514, file: !4515, line: 104, baseType: !348, size: 64, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !4514, file: !4515, line: 131, baseType: !107, size: 32, offset: 512)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4514, file: !4515, line: 137, baseType: !5, size: 32, offset: 544)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !4514, file: !4515, line: 150, baseType: !633, size: 32, offset: 576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !4514, file: !4515, line: 171, baseType: !633, size: 32, offset: 608)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4514, file: !4515, line: 178, baseType: !4333, size: 64, offset: 640)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !4514, file: !4515, line: 184, baseType: !267, size: 128, offset: 704)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4514, file: !4515, line: 186, baseType: !4528, size: 64, offset: 832)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !4515, line: 40, size: 256, elements: !4531)
!4531 = !{!4532, !4536, !4537, !4541}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4530, file: !4515, line: 48, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{null, !4513}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4530, file: !4515, line: 57, baseType: !4533, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4530, file: !4515, line: 72, baseType: !4538, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!107, !4513}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4530, file: !4515, line: 83, baseType: !4533, size: 64, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4514, file: !4515, line: 187, baseType: !4543, size: 64, offset: 896)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4545)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !4546, line: 519, size: 832, elements: !4547)
!4546 = !DIFile(filename: "./include/drm/drm_modeset_helper_vtables.h", directory: "/home/lizy2001/genbc/linux")
!4547 = !{!4548, !4552, !4556, !4560, !4561, !4562, !4566, !4621, !4625, !4629, !4630, !4631, !4632}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4545, file: !4546, line: 536, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !4513, !107}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4545, file: !4546, line: 569, baseType: !4553, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!105, !4513, !4270}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !4545, file: !4546, line: 612, baseType: !4557, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!564, !4513, !4270, !4390}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4545, file: !4546, line: 629, baseType: !4533, size: 64, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4545, file: !4546, line: 644, baseType: !4533, size: 64, offset: 256)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !4545, file: !4546, line: 668, baseType: !4563, size: 64, offset: 320)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4513, !4390, !4390}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode_set", scope: !4545, file: !4546, line: 691, baseType: !4567, size: 64, offset: 384)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !4513, !4570, !4507}
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4335, line: 99, size: 2624, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4608, !4620}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4571, file: !4335, line: 101, baseType: !4333, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4571, file: !4335, line: 108, baseType: !564, size: 8, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4571, file: !4335, line: 123, baseType: !564, size: 8, offset: 72)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !4571, file: !4335, line: 129, baseType: !564, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !4571, file: !4335, line: 141, baseType: !564, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !4571, file: !4335, line: 148, baseType: !564, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !4571, file: !4335, line: 159, baseType: !564, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !4571, file: !4335, line: 165, baseType: !564, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !4571, file: !4335, line: 171, baseType: !564, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !4571, file: !4335, line: 207, baseType: !564, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !4571, file: !4335, line: 213, baseType: !489, size: 32, offset: 96)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !4571, file: !4335, line: 219, baseType: !489, size: 32, offset: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !4571, file: !4335, line: 225, baseType: !489, size: 32, offset: 160)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !4571, file: !4335, line: 240, baseType: !4272, size: 960, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4571, file: !4335, line: 257, baseType: !4272, size: 960, offset: 1152)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !4571, file: !4335, line: 263, baseType: !4589, size: 64, offset: 2112)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4175, line: 209, size: 704, elements: !4591)
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4597}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4590, file: !4175, line: 210, baseType: !4161, size: 256)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4590, file: !4175, line: 211, baseType: !263, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !4590, file: !4175, line: 212, baseType: !267, size: 128, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !4590, file: !4175, line: 213, baseType: !267, size: 128, offset: 448)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4590, file: !4175, line: 214, baseType: !395, size: 64, offset: 576)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4590, file: !4175, line: 215, baseType: !258, size: 64, offset: 640)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !4571, file: !4335, line: 272, baseType: !4589, size: 64, offset: 2176)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !4571, file: !4335, line: 280, baseType: !4589, size: 64, offset: 2240)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !4571, file: !4335, line: 289, baseType: !4589, size: 64, offset: 2304)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !4571, file: !4335, line: 297, baseType: !489, size: 32, offset: 2368)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !4571, file: !4335, line: 305, baseType: !564, size: 8, offset: 2400)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !4571, file: !4335, line: 314, baseType: !564, size: 8, offset: 2408)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !4571, file: !4335, line: 325, baseType: !564, size: 8, offset: 2416)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4571, file: !4335, line: 382, baseType: !4606, size: 64, offset: 2432)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4335, line: 71, flags: DIFlagFwdDecl)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4571, file: !4335, line: 391, baseType: !4609, size: 64, offset: 2496)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !4314, line: 70, size: 960, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4610, file: !4314, line: 76, baseType: !4333, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4610, file: !4314, line: 85, baseType: !274, size: 32, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !4610, file: !4314, line: 99, baseType: !1603, size: 192, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !4610, file: !4314, line: 117, baseType: !1603, size: 192, offset: 320)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !4610, file: !4314, line: 131, baseType: !1603, size: 192, offset: 512)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !4610, file: !4314, line: 139, baseType: !267, size: 128, offset: 704)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4610, file: !4314, line: 146, baseType: !4606, size: 64, offset: 832)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !4610, file: !4314, line: 155, baseType: !564, size: 8, offset: 896)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4571, file: !4335, line: 394, baseType: !4312, size: 64, offset: 2560)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4545, file: !4546, line: 710, baseType: !4622, size: 64, offset: 448)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!164, !4513, !4395}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !4545, file: !4546, line: 733, baseType: !4626, size: 64, offset: 512)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4513, !4312}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !4545, file: !4546, line: 756, baseType: !4626, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4545, file: !4546, line: 790, baseType: !4533, size: 64, offset: 640)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4545, file: !4546, line: 808, baseType: !4533, size: 64, offset: 704)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4545, file: !4546, line: 846, baseType: !4633, size: 64, offset: 768)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!107, !4513, !4570, !4507}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !4508, file: !159, line: 639, baseType: !177, size: 32, offset: 192)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4508, file: !159, line: 642, baseType: !4312, size: 64, offset: 256)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4508, file: !159, line: 649, baseType: !4609, size: 64, offset: 320)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !4508, file: !159, line: 652, baseType: !4640, size: 384, offset: 384)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !159, line: 590, size: 384, elements: !4641)
!4641 = !{!4642, !4643, !4650, !4651, !4652, !4653, !4654, !4655, !4656}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !4640, file: !159, line: 591, baseType: !181, size: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !4640, file: !159, line: 592, baseType: !4644, size: 128, offset: 32)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !159, line: 556, size: 128, elements: !4645)
!4645 = !{!4646, !4647, !4648, !4649}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !4644, file: !159, line: 560, baseType: !5, size: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !4644, file: !159, line: 565, baseType: !5, size: 32, offset: 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !4644, file: !159, line: 570, baseType: !5, size: 32, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4644, file: !159, line: 575, baseType: !5, size: 32, offset: 96)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4640, file: !159, line: 593, baseType: !5, size: 32, offset: 160)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4640, file: !159, line: 594, baseType: !5, size: 32, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !4640, file: !159, line: 595, baseType: !5, size: 32, offset: 224)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !4640, file: !159, line: 596, baseType: !5, size: 32, offset: 256)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !4640, file: !159, line: 597, baseType: !5, size: 32, offset: 288)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !4640, file: !159, line: 598, baseType: !5, size: 32, offset: 320)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !4640, file: !159, line: 599, baseType: !5, size: 32, offset: 352)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !4508, file: !159, line: 666, baseType: !564, size: 8, offset: 768)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4508, file: !159, line: 675, baseType: !149, size: 32, offset: 800)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !4508, file: !159, line: 683, baseType: !5, size: 32, offset: 832)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !4508, file: !159, line: 689, baseType: !5, size: 32, offset: 864)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !4508, file: !159, line: 695, baseType: !5, size: 32, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !4508, file: !159, line: 701, baseType: !5, size: 32, offset: 928)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4508, file: !159, line: 708, baseType: !489, size: 32, offset: 960)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !4508, file: !159, line: 721, baseType: !4665, size: 64, offset: 1024)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !159, line: 721, flags: DIFlagFwdDecl)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !4508, file: !159, line: 727, baseType: !1420, size: 8, offset: 1088)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !4508, file: !159, line: 733, baseType: !1420, size: 8, offset: 1096)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !4508, file: !159, line: 739, baseType: !4589, size: 64, offset: 1152)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4474, file: !159, line: 949, baseType: !4671, size: 64, offset: 640)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !4395, !4507}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4474, file: !159, line: 994, baseType: !4675, size: 64, offset: 704)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!107, !4395, !4507, !4173, !4184}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4474, file: !159, line: 1017, baseType: !4679, size: 64, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!107, !4395, !4682, !4173, !4183}
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4508)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4474, file: !159, line: 1031, baseType: !4685, size: 64, offset: 832)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !4688, !4682}
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !159, line: 42, flags: DIFlagFwdDecl)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !4396, file: !159, line: 1292, baseType: !4589, size: 64, offset: 2624)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4396, file: !159, line: 1295, baseType: !4168, size: 3136, offset: 2688)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4396, file: !159, line: 1301, baseType: !4173, size: 64, offset: 5824)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !4396, file: !159, line: 1312, baseType: !4173, size: 64, offset: 5888)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !4396, file: !159, line: 1318, baseType: !4173, size: 64, offset: 5952)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !4396, file: !159, line: 1326, baseType: !4589, size: 64, offset: 6016)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !4396, file: !159, line: 1332, baseType: !4173, size: 64, offset: 6080)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !4396, file: !159, line: 1359, baseType: !4698, size: 8, offset: 6144)
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !257, line: 102, baseType: !1420)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4396, file: !159, line: 1367, baseType: !107, size: 32, offset: 6176)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4396, file: !159, line: 1370, baseType: !4701, size: 64, offset: 6208)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4703)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !4546, line: 868, size: 640, elements: !4704)
!4704 = !{!4705, !4706, !4710, !4714, !4719, !4723, !4727, !4731, !4732, !4738}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !4703, file: !4546, line: 905, baseType: !4498, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "detect_ctx", scope: !4703, file: !4546, line: 931, baseType: !4707, size: 64, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!107, !4395, !4106, !564}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4703, file: !4546, line: 969, baseType: !4711, size: 64, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!105, !4395, !4390}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid_ctx", scope: !4703, file: !4546, line: 1008, baseType: !4715, size: 64, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!107, !4395, !4390, !4106, !4718}
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !4703, file: !4546, line: 1041, baseType: !4720, size: 64, offset: 256)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!4513, !4395}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_best_encoder", scope: !4703, file: !4546, line: 1068, baseType: !4724, size: 64, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!4513, !4395, !4507}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4703, file: !4546, line: 1102, baseType: !4728, size: 64, offset: 384)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!107, !4395, !4312}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4703, file: !4546, line: 1117, baseType: !4671, size: 64, offset: 448)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_writeback_job", scope: !4703, file: !4546, line: 1134, baseType: !4733, size: 64, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!107, !4736, !4665}
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_connector", file: !4546, line: 52, flags: DIFlagFwdDecl)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_writeback_job", scope: !4703, file: !4546, line: 1149, baseType: !4739, size: 64, offset: 576)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !4736, !4665}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !4396, file: !159, line: 1373, baseType: !4743, size: 672, offset: 6272)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !159, line: 1043, size: 672, elements: !4744)
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4743, file: !159, line: 1049, baseType: !2823, size: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !4743, file: !159, line: 1056, baseType: !564, size: 8, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !4743, file: !159, line: 1063, baseType: !564, size: 8, offset: 264)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !4743, file: !159, line: 1070, baseType: !564, size: 8, offset: 272)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4743, file: !159, line: 1077, baseType: !107, size: 32, offset: 288)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4743, file: !159, line: 1084, baseType: !107, size: 32, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4743, file: !159, line: 1091, baseType: !107, size: 32, offset: 352)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4743, file: !159, line: 1098, baseType: !107, size: 32, offset: 384)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4743, file: !159, line: 1105, baseType: !564, size: 8, offset: 416)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !4743, file: !159, line: 1112, baseType: !564, size: 8, offset: 424)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !4743, file: !159, line: 1120, baseType: !564, size: 8, offset: 432)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !4743, file: !159, line: 1128, baseType: !564, size: 8, offset: 440)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4743, file: !159, line: 1136, baseType: !197, size: 32, offset: 448)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !4743, file: !159, line: 1146, baseType: !5, size: 32, offset: 480)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !4743, file: !159, line: 1154, baseType: !203, size: 32, offset: 512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !4743, file: !159, line: 1159, baseType: !4644, size: 128, offset: 544)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !4396, file: !159, line: 1375, baseType: !197, size: 32, offset: 6944)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "override_edid", scope: !4396, file: !159, line: 1377, baseType: !564, size: 8, offset: 6976)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !4396, file: !159, line: 1379, baseType: !495, size: 64, offset: 7040)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !4396, file: !159, line: 1386, baseType: !489, size: 32, offset: 7104)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !4396, file: !159, line: 1394, baseType: !4513, size: 64, offset: 7168)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !4396, file: !159, line: 1398, baseType: !4767, size: 1024, offset: 7232)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4698, size: 1024, elements: !3575)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !4396, file: !159, line: 1400, baseType: !4769, size: 16, offset: 8256)
!4769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 16, elements: !1670)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !4396, file: !159, line: 1405, baseType: !4771, size: 64, offset: 8288)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !1670)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !4396, file: !159, line: 1410, baseType: !4771, size: 64, offset: 8352)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !4396, file: !159, line: 1421, baseType: !4774, size: 64, offset: 8448)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4776, line: 695, size: 7552, elements: !4777)
!4776 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4777 = !{!4778, !4779, !4780, !4817, !4818, !4832, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4849, !4850, !4851, !4852, !4884, !4895}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4775, file: !4776, line: 696, baseType: !707, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4775, file: !4776, line: 697, baseType: !5, size: 32, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4775, file: !4776, line: 698, baseType: !4781, size: 64, offset: 128)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4783)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4776, line: 519, size: 320, elements: !4784)
!4784 = !{!4785, !4798, !4799, !4812, !4813}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4783, file: !4776, line: 529, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!107, !4774, !4789, !107}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4791, line: 69, size: 128, elements: !4792)
!4791 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4792 = !{!4793, !4794, !4795, !4796}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4790, file: !4791, line: 70, baseType: !933, size: 16)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4790, file: !4791, line: 71, baseType: !933, size: 16, offset: 16)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4790, file: !4791, line: 84, baseType: !933, size: 16, offset: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4790, file: !4791, line: 85, baseType: !4797, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4783, file: !4776, line: 531, baseType: !4786, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4783, file: !4776, line: 533, baseType: !4800, size: 64, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!107, !4774, !932, !390, !297, !1420, !107, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4791, line: 135, size: 272, elements: !4805)
!4805 = !{!4806, !4807, !4808}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4804, file: !4791, line: 136, baseType: !1421, size: 8)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4804, file: !4791, line: 137, baseType: !933, size: 16)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4804, file: !4791, line: 138, baseType: !4809, size: 272)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 272, elements: !4810)
!4810 = !{!4811}
!4811 = !DISubrange(count: 34)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4783, file: !4776, line: 536, baseType: !4800, size: 64, offset: 192)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4783, file: !4776, line: 541, baseType: !4814, size: 64, offset: 256)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!489, !4774}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4775, file: !4776, line: 699, baseType: !258, size: 64, offset: 192)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4775, file: !4776, line: 702, baseType: !4819, size: 64, offset: 256)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4821)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4776, line: 557, size: 192, elements: !4822)
!4822 = !{!4823, !4827, !4831}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4821, file: !4776, line: 558, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{null, !4774, !5}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4821, file: !4776, line: 559, baseType: !4828, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!107, !4774, !5}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4821, file: !4776, line: 560, baseType: !4824, size: 64, offset: 128)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4775, file: !4776, line: 703, baseType: !4833, size: 192, offset: 320)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4834, line: 30, size: 192, elements: !4835)
!4834 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4835 = !{!4836, !4837, !4838}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4833, file: !4834, line: 31, baseType: !853)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4833, file: !4834, line: 32, baseType: !825, size: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4833, file: !4834, line: 33, baseType: !1289, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4775, file: !4776, line: 704, baseType: !4833, size: 192, offset: 512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4775, file: !4776, line: 706, baseType: !107, size: 32, offset: 704)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4775, file: !4776, line: 707, baseType: !107, size: 32, offset: 736)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4775, file: !4776, line: 708, baseType: !288, size: 5568, offset: 768)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4775, file: !4776, line: 709, baseType: !398, size: 64, offset: 6336)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4775, file: !4776, line: 713, baseType: !107, size: 32, offset: 6400)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4775, file: !4776, line: 714, baseType: !4846, size: 384, offset: 6432)
!4846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 384, elements: !4847)
!4847 = !{!4848}
!4848 = !DISubrange(count: 48)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4775, file: !4776, line: 715, baseType: !1603, size: 192, offset: 6848)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4775, file: !4776, line: 717, baseType: !1246, size: 192, offset: 7040)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4775, file: !4776, line: 718, baseType: !267, size: 128, offset: 7232)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4775, file: !4776, line: 720, baseType: !4853, size: 64, offset: 7360)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4776, line: 618, size: 832, elements: !4855)
!4855 = !{!4856, !4860, !4861, !4865, !4866, !4867, !4868, !4872, !4873, !4876, !4877, !4880, !4883}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4854, file: !4776, line: 619, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!107, !4774}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4854, file: !4776, line: 621, baseType: !4857, size: 64, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4854, file: !4776, line: 622, baseType: !4862, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{null, !4774, !107}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4854, file: !4776, line: 623, baseType: !4857, size: 64, offset: 192)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4854, file: !4776, line: 624, baseType: !4862, size: 64, offset: 256)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4854, file: !4776, line: 625, baseType: !4857, size: 64, offset: 320)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4854, file: !4776, line: 627, baseType: !4869, size: 64, offset: 384)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{null, !4774}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4854, file: !4776, line: 628, baseType: !4869, size: 64, offset: 448)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4854, file: !4776, line: 631, baseType: !4874, size: 64, offset: 512)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4776, line: 631, flags: DIFlagFwdDecl)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4854, file: !4776, line: 632, baseType: !4874, size: 64, offset: 576)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4854, file: !4776, line: 633, baseType: !4878, size: 64, offset: 640)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4776, line: 633, flags: DIFlagFwdDecl)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4854, file: !4776, line: 634, baseType: !4881, size: 64, offset: 704)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4776, line: 634, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4854, file: !4776, line: 635, baseType: !4881, size: 64, offset: 768)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4775, file: !4776, line: 721, baseType: !4885, size: 64, offset: 7424)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4887)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4776, line: 664, size: 192, elements: !4888)
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4887, file: !4776, line: 665, baseType: !495, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4887, file: !4776, line: 666, baseType: !107, size: 32, offset: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4887, file: !4776, line: 667, baseType: !932, size: 16, offset: 96)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4887, file: !4776, line: 668, baseType: !932, size: 16, offset: 112)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4887, file: !4776, line: 669, baseType: !932, size: 16, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4887, file: !4776, line: 670, baseType: !932, size: 16, offset: 144)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4775, file: !4776, line: 723, baseType: !3764, size: 64, offset: 7488)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !4396, file: !159, line: 1427, baseType: !107, size: 32, offset: 8512)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !4396, file: !159, line: 1430, baseType: !5, size: 32, offset: 8544)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !4396, file: !159, line: 1437, baseType: !564, size: 8, offset: 8576)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !4396, file: !159, line: 1443, baseType: !1420, size: 8, offset: 8584)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !4396, file: !159, line: 1446, baseType: !456, size: 64, offset: 8640)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4396, file: !159, line: 1462, baseType: !4507, size: 64, offset: 8704)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !4396, file: !159, line: 1479, baseType: !4589, size: 64, offset: 8768)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !4396, file: !159, line: 1482, baseType: !564, size: 8, offset: 8832)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !4396, file: !159, line: 1484, baseType: !4905, size: 64, offset: 8896)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !159, line: 1663, size: 256, elements: !4907)
!4907 = !{!4908, !4909, !4910, !4911}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4906, file: !159, line: 1664, baseType: !274, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4906, file: !159, line: 1665, baseType: !263, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4906, file: !159, line: 1666, baseType: !107, size: 32, offset: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !4906, file: !159, line: 1667, baseType: !4912, size: 64, offset: 160)
!4912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 64, elements: !1398)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !4396, file: !159, line: 1486, baseType: !564, size: 8, offset: 8960)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !4396, file: !159, line: 1490, baseType: !4698, size: 8, offset: 8968)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !4396, file: !159, line: 1490, baseType: !4698, size: 8, offset: 8976)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !4396, file: !159, line: 1493, baseType: !4698, size: 8, offset: 8984)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !4396, file: !159, line: 1493, baseType: !4698, size: 8, offset: 8992)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !4396, file: !159, line: 1496, baseType: !4919, size: 16, offset: 9008)
!4919 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !257, line: 103, baseType: !932)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !4396, file: !159, line: 1496, baseType: !4919, size: 16, offset: 9024)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !4396, file: !159, line: 1505, baseType: !433, size: 64, offset: 9088)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !4396, file: !159, line: 1508, baseType: !4923, size: 96, offset: 9152)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !150, line: 378, size: 96, elements: !4924)
!4924 = !{!4925, !4926}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !4923, file: !150, line: 382, baseType: !491, size: 32)
!4926 = !DIDerivedType(tag: DW_TAG_member, scope: !4923, file: !150, line: 386, baseType: !4927, size: 64, offset: 32)
!4927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4923, file: !150, line: 386, size: 64, elements: !4928)
!4928 = !{!4929}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !4927, file: !150, line: 387, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !150, line: 365, size: 64, elements: !4931)
!4931 = !{!4932, !4933, !4934, !4935, !4936}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !4930, file: !150, line: 366, baseType: !1421, size: 8)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !4930, file: !150, line: 367, baseType: !1421, size: 8, offset: 8)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !4930, file: !150, line: 368, baseType: !933, size: 16, offset: 16)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !4930, file: !150, line: 369, baseType: !933, size: 16, offset: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !4930, file: !150, line: 370, baseType: !933, size: 16, offset: 48)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !4385, file: !4335, line: 1199, baseType: !395, size: 64, offset: 320)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !4356, file: !4335, line: 583, baseType: !4939, size: 64, offset: 448)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!107, !4333, !4154, !4606, !633, !4106}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !4356, file: !4335, line: 602, baseType: !4943, size: 64, offset: 512)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!107, !4333, !4154, !4606, !633, !633, !4106}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4356, file: !4335, line: 622, baseType: !4947, size: 64, offset: 576)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!107, !4333, !4173, !4184}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4356, file: !4335, line: 656, baseType: !4951, size: 64, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!4570, !4333}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4356, file: !4335, line: 666, baseType: !4955, size: 64, offset: 704)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{null, !4333, !4570}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4356, file: !4335, line: 711, baseType: !4959, size: 64, offset: 768)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!107, !4333, !4570, !4173, !4184}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4356, file: !4335, line: 733, baseType: !4963, size: 64, offset: 832)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!107, !4333, !4966, !4173, !4183}
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4356, file: !4335, line: 751, baseType: !4969, size: 64, offset: 896)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!107, !4333}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4356, file: !4335, line: 762, baseType: !4359, size: 64, offset: 960)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !4356, file: !4335, line: 791, baseType: !4974, size: 64, offset: 1024)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!107, !4333, !295}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !4356, file: !4335, line: 807, baseType: !4978, size: 64, offset: 1088)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!107, !4333, !295, !4981}
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !4356, file: !4335, line: 829, baseType: !4983, size: 64, offset: 1152)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!4986, !4333, !4981}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4356, file: !4335, line: 841, baseType: !4989, size: 64, offset: 1216)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{null, !4688, !4966}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4356, file: !4335, line: 868, baseType: !4993, size: 64, offset: 1280)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!489, !4333}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4356, file: !4335, line: 881, baseType: !4969, size: 64, offset: 1344)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4356, file: !4335, line: 889, baseType: !4359, size: 64, offset: 1408)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !4356, file: !4335, line: 927, baseType: !4999, size: 64, offset: 1472)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!564, !4333, !782, !5002, !564}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4334, file: !4335, line: 1072, baseType: !633, size: 32, offset: 3264)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4334, file: !4335, line: 1078, baseType: !5005, size: 64, offset: 3328)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4334, file: !4335, line: 1081, baseType: !5007, size: 64, offset: 3392)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5009)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4546, line: 61, size: 1024, elements: !5010)
!5010 = !{!5011, !5015, !5016, !5017, !5021, !5025, !5029, !5030, !5034, !5039, !5040, !5044, !5045, !5046, !5047, !5048}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5009, file: !4546, line: 78, baseType: !5012, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{null, !4333, !107}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5009, file: !4546, line: 93, baseType: !4359, size: 64, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5009, file: !4546, line: 108, baseType: !4359, size: 64, offset: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5009, file: !4546, line: 141, baseType: !5018, size: 64, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!105, !4333, !4270}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5009, file: !4546, line: 187, baseType: !5022, size: 64, offset: 256)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!564, !4333, !4270, !4390}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5009, file: !4546, line: 206, baseType: !5026, size: 64, offset: 320)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!107, !4333, !4390, !4390, !107, !107, !4154}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_nofb", scope: !5009, file: !4546, line: 231, baseType: !4359, size: 64, offset: 384)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base", scope: !5009, file: !4546, line: 250, baseType: !5031, size: 64, offset: 448)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!107, !4333, !107, !107, !4154}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base_atomic", scope: !5009, file: !4546, line: 267, baseType: !5035, size: 64, offset: 512)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!107, !4333, !4154, !107, !107, !5038}
!5038 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_set_atomic", file: !4546, line: 51, flags: DIFlagFwdDecl)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5009, file: !4546, line: 302, baseType: !4359, size: 64, offset: 576)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5009, file: !4546, line: 355, baseType: !5041, size: 64, offset: 640)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!107, !4333, !4570}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_begin", scope: !5009, file: !4546, line: 376, baseType: !4955, size: 64, offset: 704)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flush", scope: !5009, file: !4546, line: 400, baseType: !4955, size: 64, offset: 768)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5009, file: !4546, line: 426, baseType: !4955, size: 64, offset: 832)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5009, file: !4546, line: 451, baseType: !4955, size: 64, offset: 896)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "get_scanout_position", scope: !5009, file: !4546, line: 496, baseType: !5049, size: 64, offset: 960)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!564, !4333, !564, !782, !782, !5002, !5002, !4270}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4334, file: !4335, line: 1084, baseType: !4168, size: 3136, offset: 3456)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4334, file: !4335, line: 1099, baseType: !4570, size: 64, offset: 6592)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4334, file: !4335, line: 1116, baseType: !267, size: 128, offset: 6656)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4334, file: !4335, line: 1123, baseType: !307, offset: 6784)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4334, file: !4335, line: 1139, baseType: !5057, size: 448, offset: 6784)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5058, line: 53, size: 448, elements: !5059)
!5058 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/lizy2001/genbc/linux")
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5074, !5075, !5076, !5077}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5057, file: !5058, line: 54, baseType: !307)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5057, file: !5058, line: 55, baseType: !295, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5057, file: !5058, line: 56, baseType: !564, size: 8, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5057, file: !5058, line: 56, baseType: !564, size: 8, offset: 72)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5057, file: !5058, line: 57, baseType: !5065, size: 64, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5058, line: 33, size: 384, elements: !5067)
!5067 = !{!5068, !5069, !5070}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5066, file: !5058, line: 34, baseType: !564, size: 8)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5066, file: !5058, line: 35, baseType: !633, size: 32, offset: 32)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5066, file: !5058, line: 36, baseType: !5071, size: 320, offset: 64)
!5071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 320, elements: !5072)
!5072 = !{!5073}
!5073 = !DISubrange(count: 10)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5057, file: !5058, line: 58, baseType: !107, size: 32, offset: 192)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5057, file: !5058, line: 58, baseType: !107, size: 32, offset: 224)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5057, file: !5058, line: 59, baseType: !395, size: 64, offset: 256)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5057, file: !5058, line: 60, baseType: !1549, size: 128, offset: 320)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4334, file: !4335, line: 1146, baseType: !5, size: 32, offset: 7232)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4334, file: !4335, line: 1153, baseType: !307, offset: 7264)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4334, file: !4335, line: 1160, baseType: !398, size: 64, offset: 7296)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4334, file: !4335, line: 1167, baseType: !2823, size: 256, offset: 7360)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4334, file: !4335, line: 1174, baseType: !5083, size: 64, offset: 7616)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4335, line: 56, flags: DIFlagFwdDecl)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4329, file: !230, line: 65, baseType: !4154, size: 64, offset: 128)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4329, file: !230, line: 80, baseType: !5087, size: 64, offset: 192)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !230, line: 80, flags: DIFlagFwdDecl)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !4329, file: !230, line: 89, baseType: !1685, size: 32, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !4329, file: !230, line: 96, baseType: !1685, size: 32, offset: 288)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !4329, file: !230, line: 100, baseType: !633, size: 32, offset: 320)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !4329, file: !230, line: 100, baseType: !633, size: 32, offset: 352)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !4329, file: !230, line: 106, baseType: !633, size: 32, offset: 384)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !4329, file: !230, line: 111, baseType: !633, size: 32, offset: 416)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !4329, file: !230, line: 114, baseType: !633, size: 32, offset: 448)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !4329, file: !230, line: 114, baseType: !633, size: 32, offset: 480)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4329, file: !230, line: 122, baseType: !932, size: 16, offset: 512)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !4329, file: !230, line: 130, baseType: !4919, size: 16, offset: 528)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !4329, file: !230, line: 137, baseType: !5, size: 32, offset: 544)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !4329, file: !230, line: 152, baseType: !5, size: 32, offset: 576)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !4329, file: !230, line: 161, baseType: !5, size: 32, offset: 608)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !4329, file: !230, line: 168, baseType: !210, size: 32, offset: 640)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !4329, file: !230, line: 175, baseType: !217, size: 32, offset: 672)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !4329, file: !230, line: 185, baseType: !4589, size: 64, offset: 704)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4329, file: !230, line: 207, baseType: !5106, size: 128, offset: 768)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5107, line: 43, size: 128, elements: !5108)
!5107 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!5108 = !{!5109, !5110, !5111, !5112}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5106, file: !5107, line: 44, baseType: !107, size: 32)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5106, file: !5107, line: 44, baseType: !107, size: 32, offset: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5106, file: !5107, line: 44, baseType: !107, size: 32, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5106, file: !5107, line: 44, baseType: !107, size: 32, offset: 96)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4329, file: !230, line: 207, baseType: !5106, size: 128, offset: 896)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !4329, file: !230, line: 215, baseType: !564, size: 8, offset: 1024)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4329, file: !230, line: 223, baseType: !4609, size: 64, offset: 1088)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4329, file: !230, line: 226, baseType: !4312, size: 64, offset: 1152)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4324, file: !4314, line: 160, baseType: !4328, size: 64, offset: 128)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4324, file: !4314, line: 160, baseType: !4328, size: 64, offset: 192)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4313, file: !4314, line: 351, baseType: !5120, size: 64, offset: 256)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !4314, line: 163, size: 448, elements: !5122)
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5130}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5121, file: !4314, line: 164, baseType: !4333, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5121, file: !4314, line: 165, baseType: !4570, size: 64, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5121, file: !4314, line: 165, baseType: !4570, size: 64, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5121, file: !4314, line: 165, baseType: !4570, size: 64, offset: 192)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5121, file: !4314, line: 175, baseType: !4609, size: 64, offset: 256)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5121, file: !4314, line: 177, baseType: !5129, size: 64, offset: 320)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !5121, file: !4314, line: 178, baseType: !495, size: 64, offset: 384)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4313, file: !4314, line: 352, baseType: !107, size: 32, offset: 320)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4313, file: !4314, line: 353, baseType: !5133, size: 64, offset: 384)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !4314, line: 181, size: 320, elements: !5135)
!5135 = !{!5136, !5137, !5138, !5139, !5140}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5134, file: !4314, line: 182, baseType: !4395, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5134, file: !4314, line: 183, baseType: !4507, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5134, file: !4314, line: 183, baseType: !4507, size: 64, offset: 128)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5134, file: !4314, line: 183, baseType: !4507, size: 64, offset: 192)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5134, file: !4314, line: 191, baseType: !5129, size: 64, offset: 256)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4313, file: !4314, line: 354, baseType: !107, size: 32, offset: 448)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4313, file: !4314, line: 355, baseType: !5143, size: 64, offset: 512)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !4314, line: 302, size: 256, elements: !5145)
!5145 = !{!5146, !5170, !5171, !5172}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5144, file: !4314, line: 303, baseType: !5147, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !4314, line: 252, size: 640, elements: !5149)
!5149 = !{!5150, !5151, !5152, !5157}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5148, file: !4314, line: 257, baseType: !267, size: 128)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5148, file: !4314, line: 262, baseType: !4087, size: 384, offset: 128)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5148, file: !4314, line: 267, baseType: !5153, size: 64, offset: 512)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !4314, line: 298, size: 64, elements: !5155)
!5155 = !{!5156}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5154, file: !4314, line: 299, baseType: !4312, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5148, file: !4314, line: 275, baseType: !5158, size: 64, offset: 576)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5160)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !4314, line: 207, size: 128, elements: !5161)
!5161 = !{!5162, !5166}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5160, file: !4314, line: 219, baseType: !5163, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!5153, !5147}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5160, file: !4314, line: 226, baseType: !5167, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{null, !5147, !5153}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5144, file: !4314, line: 304, baseType: !5153, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5144, file: !4314, line: 304, baseType: !5153, size: 64, offset: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5144, file: !4314, line: 304, baseType: !5153, size: 64, offset: 192)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4313, file: !4314, line: 357, baseType: !4106, size: 64, offset: 576)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4313, file: !4314, line: 369, baseType: !4609, size: 64, offset: 640)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4313, file: !4314, line: 377, baseType: !2080, size: 256, offset: 704)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4148, file: !4083, line: 278, baseType: !5177, size: 64, offset: 320)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!107, !263, !4312, !564}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4148, file: !4083, line: 297, baseType: !5181, size: 64, offset: 384)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!4312, !263}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4148, file: !4083, line: 318, baseType: !5185, size: 64, offset: 448)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{null, !4312}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4148, file: !4083, line: 333, baseType: !5185, size: 64, offset: 512)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4082, file: !4083, line: 527, baseType: !5190, size: 64, offset: 3264)
!5190 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !257, line: 158, baseType: !2248)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4082, file: !4083, line: 530, baseType: !564, size: 8, offset: 3328)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4082, file: !4083, line: 531, baseType: !564, size: 8, offset: 3336)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4082, file: !4083, line: 532, baseType: !564, size: 8, offset: 3344)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4082, file: !4083, line: 533, baseType: !5195, size: 704, offset: 3392)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2081, line: 115, size: 704, elements: !5196)
!5196 = !{!5197, !5198, !5199, !5200}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5195, file: !2081, line: 116, baseType: !2080, size: 256)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5195, file: !2081, line: 117, baseType: !3676, size: 320, offset: 256)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5195, file: !2081, line: 120, baseType: !2916, size: 64, offset: 576)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5195, file: !2081, line: 121, baseType: !107, size: 32, offset: 640)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4082, file: !4083, line: 541, baseType: !1246, size: 192, offset: 4096)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4082, file: !4083, line: 549, baseType: !267, size: 128, offset: 4288)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4082, file: !4083, line: 557, baseType: !4173, size: 64, offset: 4416)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4082, file: !4083, line: 562, baseType: !4173, size: 64, offset: 4480)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4082, file: !4083, line: 567, baseType: !4173, size: 64, offset: 4544)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4082, file: !4083, line: 573, baseType: !4173, size: 64, offset: 4608)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4082, file: !4083, line: 578, baseType: !4173, size: 64, offset: 4672)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4082, file: !4083, line: 583, baseType: !4173, size: 64, offset: 4736)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4082, file: !4083, line: 588, baseType: !4173, size: 64, offset: 4800)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4082, file: !4083, line: 593, baseType: !4173, size: 64, offset: 4864)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4082, file: !4083, line: 598, baseType: !4173, size: 64, offset: 4928)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4082, file: !4083, line: 603, baseType: !4173, size: 64, offset: 4992)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4082, file: !4083, line: 608, baseType: !4173, size: 64, offset: 5056)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4082, file: !4083, line: 613, baseType: !4173, size: 64, offset: 5120)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4082, file: !4083, line: 618, baseType: !4173, size: 64, offset: 5184)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4082, file: !4083, line: 623, baseType: !4173, size: 64, offset: 5248)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4082, file: !4083, line: 628, baseType: !4173, size: 64, offset: 5312)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4082, file: !4083, line: 633, baseType: !4173, size: 64, offset: 5376)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4082, file: !4083, line: 639, baseType: !4173, size: 64, offset: 5440)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4082, file: !4083, line: 644, baseType: !4173, size: 64, offset: 5504)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4082, file: !4083, line: 653, baseType: !4173, size: 64, offset: 5568)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4082, file: !4083, line: 659, baseType: !4173, size: 64, offset: 5632)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4082, file: !4083, line: 665, baseType: !4173, size: 64, offset: 5696)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4082, file: !4083, line: 670, baseType: !4173, size: 64, offset: 5760)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4082, file: !4083, line: 676, baseType: !4173, size: 64, offset: 5824)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4082, file: !4083, line: 681, baseType: !4173, size: 64, offset: 5888)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4082, file: !4083, line: 687, baseType: !4173, size: 64, offset: 5952)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4082, file: !4083, line: 693, baseType: !4173, size: 64, offset: 6016)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4082, file: !4083, line: 698, baseType: !4173, size: 64, offset: 6080)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4082, file: !4083, line: 703, baseType: !4173, size: 64, offset: 6144)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4082, file: !4083, line: 708, baseType: !4173, size: 64, offset: 6208)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4082, file: !4083, line: 713, baseType: !4173, size: 64, offset: 6272)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4082, file: !4083, line: 718, baseType: !4173, size: 64, offset: 6336)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4082, file: !4083, line: 723, baseType: !4173, size: 64, offset: 6400)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4082, file: !4083, line: 728, baseType: !4173, size: 64, offset: 6464)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4082, file: !4083, line: 733, baseType: !4173, size: 64, offset: 6528)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4082, file: !4083, line: 738, baseType: !4173, size: 64, offset: 6592)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4082, file: !4083, line: 743, baseType: !4173, size: 64, offset: 6656)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4082, file: !4083, line: 748, baseType: !4173, size: 64, offset: 6720)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4082, file: !4083, line: 752, baseType: !4173, size: 64, offset: 6784)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4082, file: !4083, line: 758, baseType: !4173, size: 64, offset: 6848)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4082, file: !4083, line: 763, baseType: !4173, size: 64, offset: 6912)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4082, file: !4083, line: 768, baseType: !4173, size: 64, offset: 6976)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4082, file: !4083, line: 773, baseType: !4173, size: 64, offset: 7040)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4082, file: !4083, line: 778, baseType: !4173, size: 64, offset: 7104)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4082, file: !4083, line: 784, baseType: !4173, size: 64, offset: 7168)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4082, file: !4083, line: 790, baseType: !4173, size: 64, offset: 7232)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4082, file: !4083, line: 795, baseType: !4173, size: 64, offset: 7296)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4082, file: !4083, line: 801, baseType: !4173, size: 64, offset: 7360)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4082, file: !4083, line: 806, baseType: !4173, size: 64, offset: 7424)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4082, file: !4083, line: 813, baseType: !4173, size: 64, offset: 7488)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4082, file: !4083, line: 820, baseType: !4173, size: 64, offset: 7552)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4082, file: !4083, line: 827, baseType: !4173, size: 64, offset: 7616)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4082, file: !4083, line: 835, baseType: !4173, size: 64, offset: 7680)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4082, file: !4083, line: 843, baseType: !4173, size: 64, offset: 7744)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4082, file: !4083, line: 850, baseType: !4173, size: 64, offset: 7808)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4082, file: !4083, line: 856, baseType: !4173, size: 64, offset: 7872)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4082, file: !4083, line: 862, baseType: !4173, size: 64, offset: 7936)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4082, file: !4083, line: 865, baseType: !633, size: 32, offset: 8000)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4082, file: !4083, line: 865, baseType: !633, size: 32, offset: 8032)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4082, file: !4083, line: 872, baseType: !564, size: 8, offset: 8064)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4082, file: !4083, line: 884, baseType: !564, size: 8, offset: 8072)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4082, file: !4083, line: 892, baseType: !564, size: 8, offset: 8080)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4082, file: !4083, line: 906, baseType: !564, size: 8, offset: 8088)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4082, file: !4083, line: 912, baseType: !564, size: 8, offset: 8096)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4082, file: !4083, line: 919, baseType: !564, size: 8, offset: 8104)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4082, file: !4083, line: 927, baseType: !564, size: 8, offset: 8112)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4082, file: !4083, line: 933, baseType: !4173, size: 64, offset: 8128)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4082, file: !4083, line: 936, baseType: !633, size: 32, offset: 8192)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4082, file: !4083, line: 936, baseType: !633, size: 32, offset: 8224)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4082, file: !4083, line: 945, baseType: !4312, size: 64, offset: 8256)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4082, file: !4083, line: 947, baseType: !5273, size: 64, offset: 8320)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5275)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4546, line: 1372, size: 64, elements: !5276)
!5276 = !{!5277}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !5275, file: !4546, line: 1408, baseType: !5185, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !264, file: !223, line: 303, baseType: !1246, size: 192, offset: 11200)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !264, file: !223, line: 306, baseType: !1568, size: 192, offset: 11392)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !264, file: !223, line: 309, baseType: !5281, size: 64, offset: 11584)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !223, line: 19, flags: DIFlagFwdDecl)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !264, file: !223, line: 312, baseType: !5284, size: 64, offset: 11648)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !223, line: 20, flags: DIFlagFwdDecl)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !264, file: !223, line: 322, baseType: !222, size: 32, offset: 11712)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !264, file: !223, line: 330, baseType: !5288, size: 64, offset: 11776)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !223, line: 21, flags: DIFlagFwdDecl)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !260, file: !230, line: 586, baseType: !267, size: 128, offset: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !230, line: 589, baseType: !348, size: 64, offset: 192)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !260, file: !230, line: 600, baseType: !4087, size: 384, offset: 256)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !260, file: !230, line: 603, baseType: !4161, size: 256, offset: 640)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !260, file: !230, line: 609, baseType: !633, size: 32, offset: 896)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !260, file: !230, line: 611, baseType: !5296, size: 64, offset: 960)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !260, file: !230, line: 613, baseType: !5, size: 32, offset: 1024)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !260, file: !230, line: 618, baseType: !564, size: 8, offset: 1056)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !260, file: !230, line: 621, baseType: !4183, size: 64, offset: 1088)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !260, file: !230, line: 623, baseType: !5, size: 32, offset: 1152)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !260, file: !230, line: 632, baseType: !4333, size: 64, offset: 1216)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !260, file: !230, line: 641, baseType: !4154, size: 64, offset: 1280)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !260, file: !230, line: 649, baseType: !4154, size: 64, offset: 1344)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !260, file: !230, line: 652, baseType: !5305, size: 64, offset: 1408)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5307)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !230, line: 256, size: 832, elements: !5308)
!5308 = !{!5309, !5313, !5317, !5321, !5322, !5326, !5330, !5334, !5338, !5344, !5348, !5349, !5353}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5307, file: !230, line: 283, baseType: !5310, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!107, !259, !4333, !4154, !107, !107, !5, !5, !633, !633, !633, !633, !4106}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5307, file: !230, line: 306, baseType: !5314, size: 64, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!107, !259, !4106}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5307, file: !230, line: 316, baseType: !5318, size: 64, offset: 128)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{null, !259}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5307, file: !230, line: 328, baseType: !5318, size: 64, offset: 192)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5307, file: !230, line: 344, baseType: !5323, size: 64, offset: 256)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!107, !259, !4173, !4184}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5307, file: !230, line: 378, baseType: !5327, size: 64, offset: 320)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!4328, !259}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5307, file: !230, line: 388, baseType: !5331, size: 64, offset: 384)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{null, !259, !4328}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5307, file: !230, line: 433, baseType: !5335, size: 64, offset: 448)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!107, !259, !4328, !4173, !4184}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5307, file: !230, line: 456, baseType: !5339, size: 64, offset: 512)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!107, !259, !5342, !4173, !4183}
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4329)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5307, file: !230, line: 473, baseType: !5345, size: 64, offset: 576)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!107, !259}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5307, file: !230, line: 484, baseType: !5318, size: 64, offset: 640)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5307, file: !230, line: 495, baseType: !5350, size: 64, offset: 704)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{null, !4688, !5342}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5307, file: !230, line: 514, baseType: !5354, size: 64, offset: 768)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!564, !259, !633, !4184}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !260, file: !230, line: 655, baseType: !4168, size: 3136, offset: 1472)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !260, file: !230, line: 658, baseType: !229, size: 32, offset: 4608)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !260, file: !230, line: 664, baseType: !5, size: 32, offset: 4640)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !260, file: !230, line: 667, baseType: !5361, size: 64, offset: 4672)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5363)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !4546, line: 1170, size: 448, elements: !5364)
!5364 = !{!5365, !5369, !5370, !5371, !5372, !5373, !5374}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !5363, file: !4546, line: 1202, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!107, !259, !4328}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !5363, file: !4546, line: 1213, baseType: !5331, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5363, file: !4546, line: 1252, baseType: !5366, size: 64, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_update", scope: !5363, file: !4546, line: 1270, baseType: !5331, size: 64, offset: 192)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5363, file: !4546, line: 1294, baseType: !5331, size: 64, offset: 256)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_check", scope: !5363, file: !4546, line: 1313, baseType: !5366, size: 64, offset: 320)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_update", scope: !5363, file: !4546, line: 1352, baseType: !5331, size: 64, offset: 384)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !260, file: !230, line: 682, baseType: !4328, size: 64, offset: 4736)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !260, file: !230, line: 689, baseType: !4173, size: 64, offset: 4800)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !260, file: !230, line: 695, baseType: !4173, size: 64, offset: 4864)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !260, file: !230, line: 701, baseType: !4173, size: 64, offset: 4928)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !260, file: !230, line: 709, baseType: !4173, size: 64, offset: 4992)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !260, file: !230, line: 718, baseType: !4173, size: 64, offset: 5056)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !260, file: !230, line: 726, baseType: !4173, size: 64, offset: 5120)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_rect", file: !182, line: 1026, size: 128, elements: !5385)
!5385 = !{!5386, !5387, !5388, !5389}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5384, file: !182, line: 1027, baseType: !1513, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5384, file: !182, line: 1028, baseType: !1513, size: 32, offset: 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5384, file: !182, line: 1029, baseType: !1513, size: 32, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5384, file: !182, line: 1030, baseType: !1513, size: 32, offset: 96)
!5390 = !{i32 7, !"Dwarf Version", i32 4}
!5391 = !{i32 2, !"Debug Info Version", i32 3}
!5392 = !{i32 1, !"wchar_size", i32 2}
!5393 = !{i32 1, !"Code Model", i32 2}
!5394 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5395 = distinct !DISubprogram(name: "drm_plane_enable_fb_damage_clips", scope: !1, file: !1, line: 96, type: !5319, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5396 = !DILocalVariable(name: "plane", arg: 1, scope: !5395, file: !1, line: 96, type: !259)
!5397 = !DILocation(line: 96, column: 57, scope: !5395)
!5398 = !DILocalVariable(name: "dev", scope: !5395, file: !1, line: 98, type: !263)
!5399 = !DILocation(line: 98, column: 21, scope: !5395)
!5400 = !DILocation(line: 98, column: 27, scope: !5395)
!5401 = !DILocation(line: 98, column: 34, scope: !5395)
!5402 = !DILocalVariable(name: "config", scope: !5395, file: !1, line: 99, type: !5403)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!5404 = !DILocation(line: 99, column: 26, scope: !5395)
!5405 = !DILocation(line: 99, column: 36, scope: !5395)
!5406 = !DILocation(line: 99, column: 41, scope: !5395)
!5407 = !DILocation(line: 101, column: 30, scope: !5395)
!5408 = !DILocation(line: 101, column: 37, scope: !5395)
!5409 = !DILocation(line: 101, column: 43, scope: !5395)
!5410 = !DILocation(line: 101, column: 51, scope: !5395)
!5411 = !DILocation(line: 101, column: 2, scope: !5395)
!5412 = !DILocation(line: 103, column: 1, scope: !5395)
!5413 = distinct !DISubprogram(name: "drm_atomic_helper_check_plane_damage", scope: !1, file: !1, line: 120, type: !5414, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{null, !4312, !4328}
!5416 = !DILocalVariable(name: "state", arg: 1, scope: !5413, file: !1, line: 120, type: !4312)
!5417 = !DILocation(line: 120, column: 68, scope: !5413)
!5418 = !DILocalVariable(name: "plane_state", arg: 2, scope: !5413, file: !1, line: 121, type: !4328)
!5419 = !DILocation(line: 121, column: 32, scope: !5413)
!5420 = !DILocalVariable(name: "crtc_state", scope: !5413, file: !1, line: 123, type: !4570)
!5421 = !DILocation(line: 123, column: 25, scope: !5413)
!5422 = !DILocation(line: 125, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5413, file: !1, line: 125, column: 6)
!5424 = !DILocation(line: 125, column: 19, scope: !5423)
!5425 = !DILocation(line: 125, column: 6, scope: !5413)
!5426 = !DILocation(line: 126, column: 46, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5423, file: !1, line: 125, column: 25)
!5428 = !DILocation(line: 127, column: 11, scope: !5427)
!5429 = !DILocation(line: 127, column: 24, scope: !5427)
!5430 = !DILocation(line: 126, column: 16, scope: !5427)
!5431 = !DILocation(line: 126, column: 14, scope: !5427)
!5432 = !DILocalVariable(name: "__ret_warn_on", scope: !5433, file: !1, line: 129, type: !107)
!5433 = distinct !DILexicalBlock(scope: !5434, file: !1, line: 129, column: 7)
!5434 = distinct !DILexicalBlock(scope: !5427, file: !1, line: 129, column: 7)
!5435 = !DILocation(line: 129, column: 7, scope: !5433)
!5436 = !DILocation(line: 129, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5433, file: !1, line: 129, column: 7)
!5438 = !DILocation(line: 129, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5437, file: !1, line: 129, column: 7)
!5440 = !DILocation(line: 129, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5439, file: !1, line: 129, column: 7)
!5442 = !DILocation(line: 129, column: 7, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5439, file: !1, line: 129, column: 7)
!5444 = !{i32 -2140648791, i32 -2140648762, i32 -2140648716, i32 -2140648658, i32 -2140648604, i32 -2140648550, i32 -2140648495, i32 -2140648464}
!5445 = !DILocation(line: 129, column: 7, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5439, file: !1, line: 129, column: 7)
!5447 = !{i32 -2140648047, i32 -2140648040, i32 -2140647988, i32 -2140647957, i32 -2140647927}
!5448 = !DILocation(line: 129, column: 7, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5439, file: !1, line: 129, column: 7)
!5450 = !DILocation(line: 129, column: 7, scope: !5434)
!5451 = !DILocation(line: 129, column: 7, scope: !5427)
!5452 = !DILocation(line: 130, column: 4, scope: !5434)
!5453 = !DILocation(line: 132, column: 37, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5427, file: !1, line: 132, column: 7)
!5455 = !DILocation(line: 132, column: 7, scope: !5454)
!5456 = !DILocation(line: 132, column: 7, scope: !5427)
!5457 = !DILocation(line: 133, column: 26, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 132, column: 50)
!5459 = !DILocation(line: 133, column: 39, scope: !5458)
!5460 = !DILocation(line: 133, column: 4, scope: !5458)
!5461 = !DILocation(line: 134, column: 4, scope: !5458)
!5462 = !DILocation(line: 134, column: 17, scope: !5458)
!5463 = !DILocation(line: 134, column: 33, scope: !5458)
!5464 = !DILocation(line: 135, column: 3, scope: !5458)
!5465 = !DILocation(line: 136, column: 2, scope: !5427)
!5466 = !DILocation(line: 137, column: 1, scope: !5413)
!5467 = distinct !DISubprogram(name: "drm_atomic_get_new_crtc_state", scope: !4314, file: !4314, line: 519, type: !5468, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!4570, !4312, !4333}
!5470 = !DILocalVariable(name: "state", arg: 1, scope: !5467, file: !4314, line: 519, type: !4312)
!5471 = !DILocation(line: 519, column: 56, scope: !5467)
!5472 = !DILocalVariable(name: "crtc", arg: 2, scope: !5467, file: !4314, line: 520, type: !4333)
!5473 = !DILocation(line: 520, column: 27, scope: !5467)
!5474 = !DILocation(line: 522, column: 9, scope: !5467)
!5475 = !DILocation(line: 522, column: 16, scope: !5467)
!5476 = !DILocation(line: 522, column: 37, scope: !5467)
!5477 = !DILocation(line: 522, column: 22, scope: !5467)
!5478 = !DILocation(line: 522, column: 44, scope: !5467)
!5479 = !DILocation(line: 522, column: 2, scope: !5467)
!5480 = distinct !DISubprogram(name: "drm_atomic_crtc_needs_modeset", scope: !4314, file: !4314, line: 977, type: !5481, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!564, !4966}
!5483 = !DILocalVariable(name: "state", arg: 1, scope: !5480, file: !4314, line: 977, type: !4966)
!5484 = !DILocation(line: 977, column: 60, scope: !5480)
!5485 = !DILocation(line: 979, column: 9, scope: !5480)
!5486 = !DILocation(line: 979, column: 16, scope: !5480)
!5487 = !DILocation(line: 979, column: 29, scope: !5480)
!5488 = !DILocation(line: 979, column: 32, scope: !5480)
!5489 = !DILocation(line: 979, column: 39, scope: !5480)
!5490 = !DILocation(line: 979, column: 54, scope: !5480)
!5491 = !DILocation(line: 980, column: 9, scope: !5480)
!5492 = !DILocation(line: 980, column: 16, scope: !5480)
!5493 = !DILocation(line: 979, column: 2, scope: !5480)
!5494 = distinct !DISubprogram(name: "drm_atomic_helper_dirtyfb", scope: !1, file: !1, line: 160, type: !4219, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5495 = !DILocalVariable(name: "fb", arg: 1, scope: !5494, file: !1, line: 160, type: !4154)
!5496 = !DILocation(line: 160, column: 55, scope: !5494)
!5497 = !DILocalVariable(name: "file_priv", arg: 2, scope: !5494, file: !1, line: 161, type: !4215)
!5498 = !DILocation(line: 161, column: 27, scope: !5494)
!5499 = !DILocalVariable(name: "flags", arg: 3, scope: !5494, file: !1, line: 161, type: !5)
!5500 = !DILocation(line: 161, column: 51, scope: !5494)
!5501 = !DILocalVariable(name: "color", arg: 4, scope: !5494, file: !1, line: 162, type: !5)
!5502 = !DILocation(line: 162, column: 23, scope: !5494)
!5503 = !DILocalVariable(name: "clips", arg: 5, scope: !5494, file: !1, line: 162, type: !4221)
!5504 = !DILocation(line: 162, column: 52, scope: !5494)
!5505 = !DILocalVariable(name: "num_clips", arg: 6, scope: !5494, file: !1, line: 163, type: !5)
!5506 = !DILocation(line: 163, column: 23, scope: !5494)
!5507 = !DILocalVariable(name: "ctx", scope: !5494, file: !1, line: 165, type: !4107)
!5508 = !DILocation(line: 165, column: 33, scope: !5494)
!5509 = !DILocalVariable(name: "damage", scope: !5494, file: !1, line: 166, type: !4589)
!5510 = !DILocation(line: 166, column: 28, scope: !5494)
!5511 = !DILocalVariable(name: "rects", scope: !5494, file: !1, line: 167, type: !5383)
!5512 = !DILocation(line: 167, column: 24, scope: !5494)
!5513 = !DILocalVariable(name: "state", scope: !5494, file: !1, line: 168, type: !4312)
!5514 = !DILocation(line: 168, column: 27, scope: !5494)
!5515 = !DILocalVariable(name: "plane", scope: !5494, file: !1, line: 169, type: !259)
!5516 = !DILocation(line: 169, column: 20, scope: !5494)
!5517 = !DILocalVariable(name: "ret", scope: !5494, file: !1, line: 170, type: !107)
!5518 = !DILocation(line: 170, column: 6, scope: !5494)
!5519 = !DILocation(line: 177, column: 3, scope: !5494)
!5520 = !DILocation(line: 176, column: 2, scope: !5494)
!5521 = !DILocation(line: 179, column: 33, scope: !5494)
!5522 = !DILocation(line: 179, column: 37, scope: !5494)
!5523 = !DILocation(line: 179, column: 10, scope: !5494)
!5524 = !DILocation(line: 179, column: 8, scope: !5494)
!5525 = !DILocation(line: 180, column: 7, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5494, file: !1, line: 180, column: 6)
!5527 = !DILocation(line: 180, column: 6, scope: !5494)
!5528 = !DILocation(line: 181, column: 7, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5526, file: !1, line: 180, column: 14)
!5530 = !DILocation(line: 182, column: 3, scope: !5529)
!5531 = !DILocation(line: 184, column: 2, scope: !5494)
!5532 = !DILocation(line: 184, column: 9, scope: !5494)
!5533 = !DILocation(line: 184, column: 21, scope: !5494)
!5534 = !DILocation(line: 186, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5494, file: !1, line: 186, column: 6)
!5536 = !DILocation(line: 186, column: 6, scope: !5494)
!5537 = !DILocalVariable(name: "inc", scope: !5538, file: !1, line: 187, type: !633)
!5538 = distinct !DILexicalBlock(scope: !5535, file: !1, line: 186, column: 13)
!5539 = !DILocation(line: 187, column: 12, scope: !5538)
!5540 = !DILocation(line: 189, column: 7, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5538, file: !1, line: 189, column: 7)
!5542 = !DILocation(line: 189, column: 13, scope: !5541)
!5543 = !DILocation(line: 189, column: 7, scope: !5538)
!5544 = !DILocation(line: 190, column: 8, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !1, line: 189, column: 48)
!5546 = !DILocation(line: 191, column: 14, scope: !5545)
!5547 = !DILocation(line: 192, column: 3, scope: !5545)
!5548 = !DILocation(line: 194, column: 19, scope: !5538)
!5549 = !DILocation(line: 194, column: 11, scope: !5538)
!5550 = !DILocation(line: 194, column: 9, scope: !5538)
!5551 = !DILocation(line: 195, column: 8, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5538, file: !1, line: 195, column: 7)
!5553 = !DILocation(line: 195, column: 7, scope: !5538)
!5554 = !DILocation(line: 196, column: 8, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !1, line: 195, column: 15)
!5556 = !DILocation(line: 197, column: 4, scope: !5555)
!5557 = !DILocation(line: 200, column: 29, scope: !5538)
!5558 = !DILocation(line: 200, column: 36, scope: !5538)
!5559 = !DILocation(line: 200, column: 43, scope: !5538)
!5560 = !DILocation(line: 200, column: 54, scope: !5538)
!5561 = !DILocation(line: 200, column: 3, scope: !5538)
!5562 = !DILocation(line: 201, column: 37, scope: !5538)
!5563 = !DILocation(line: 201, column: 41, scope: !5538)
!5564 = !DILocation(line: 202, column: 9, scope: !5538)
!5565 = !DILocation(line: 202, column: 19, scope: !5538)
!5566 = !DILocation(line: 203, column: 9, scope: !5538)
!5567 = !DILocation(line: 201, column: 12, scope: !5538)
!5568 = !DILocation(line: 201, column: 10, scope: !5538)
!5569 = !DILocation(line: 204, column: 14, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5538, file: !1, line: 204, column: 7)
!5571 = !DILocation(line: 204, column: 7, scope: !5570)
!5572 = !DILocation(line: 204, column: 7, scope: !5538)
!5573 = !DILocation(line: 205, column: 18, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5570, file: !1, line: 204, column: 23)
!5575 = !DILocation(line: 205, column: 10, scope: !5574)
!5576 = !DILocation(line: 205, column: 8, scope: !5574)
!5577 = !DILocation(line: 206, column: 11, scope: !5574)
!5578 = !DILocation(line: 207, column: 4, scope: !5574)
!5579 = !DILocation(line: 209, column: 2, scope: !5538)
!5580 = !DILabel(scope: !5494, name: "retry", file: !1, line: 211)
!5581 = !DILocation(line: 211, column: 1, scope: !5494)
!5582 = !DILocalVariable(name: "__mptr", scope: !5583, file: !1, line: 212, type: !258)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !1, line: 212, column: 2)
!5584 = distinct !DILexicalBlock(scope: !5494, file: !1, line: 212, column: 2)
!5585 = !DILocation(line: 212, column: 2, scope: !5583)
!5586 = !DILocation(line: 212, column: 2, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5583, file: !1, line: 212, column: 2)
!5588 = !DILocation(line: 212, column: 2, scope: !5584)
!5589 = !DILocation(line: 212, column: 2, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5584, file: !1, line: 212, column: 2)
!5591 = !DILocalVariable(name: "plane_state", scope: !5592, file: !1, line: 213, type: !4328)
!5592 = distinct !DILexicalBlock(scope: !5590, file: !1, line: 212, column: 37)
!5593 = !DILocation(line: 213, column: 27, scope: !5592)
!5594 = !DILocation(line: 215, column: 27, scope: !5592)
!5595 = !DILocation(line: 215, column: 34, scope: !5592)
!5596 = !DILocation(line: 215, column: 41, scope: !5592)
!5597 = !DILocation(line: 215, column: 48, scope: !5592)
!5598 = !DILocation(line: 215, column: 9, scope: !5592)
!5599 = !DILocation(line: 215, column: 7, scope: !5592)
!5600 = !DILocation(line: 216, column: 7, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5592, file: !1, line: 216, column: 7)
!5602 = !DILocation(line: 216, column: 7, scope: !5592)
!5603 = !DILocation(line: 217, column: 4, scope: !5601)
!5604 = !DILocation(line: 219, column: 7, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5592, file: !1, line: 219, column: 7)
!5606 = !DILocation(line: 219, column: 14, scope: !5605)
!5607 = !DILocation(line: 219, column: 21, scope: !5605)
!5608 = !DILocation(line: 219, column: 27, scope: !5605)
!5609 = !DILocation(line: 219, column: 24, scope: !5605)
!5610 = !DILocation(line: 219, column: 7, scope: !5592)
!5611 = !DILocation(line: 220, column: 24, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5605, file: !1, line: 219, column: 31)
!5613 = !DILocation(line: 220, column: 31, scope: !5612)
!5614 = !DILocation(line: 220, column: 4, scope: !5612)
!5615 = !DILocation(line: 221, column: 4, scope: !5612)
!5616 = !DILocation(line: 224, column: 44, scope: !5592)
!5617 = !DILocation(line: 224, column: 51, scope: !5592)
!5618 = !DILocation(line: 224, column: 17, scope: !5592)
!5619 = !DILocation(line: 224, column: 15, scope: !5592)
!5620 = !DILocation(line: 225, column: 14, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5592, file: !1, line: 225, column: 7)
!5622 = !DILocation(line: 225, column: 7, scope: !5621)
!5623 = !DILocation(line: 225, column: 7, scope: !5592)
!5624 = !DILocation(line: 226, column: 18, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5621, file: !1, line: 225, column: 28)
!5626 = !DILocation(line: 226, column: 10, scope: !5625)
!5627 = !DILocation(line: 226, column: 8, scope: !5625)
!5628 = !DILocation(line: 227, column: 4, scope: !5625)
!5629 = !DILocation(line: 230, column: 30, scope: !5592)
!5630 = !DILocation(line: 230, column: 43, scope: !5592)
!5631 = !DILocation(line: 231, column: 8, scope: !5592)
!5632 = !DILocation(line: 230, column: 3, scope: !5592)
!5633 = !DILocation(line: 232, column: 2, scope: !5592)
!5634 = !DILocalVariable(name: "__mptr", scope: !5635, file: !1, line: 212, type: !258)
!5635 = distinct !DILexicalBlock(scope: !5590, file: !1, line: 212, column: 2)
!5636 = !DILocation(line: 212, column: 2, scope: !5635)
!5637 = !DILocation(line: 212, column: 2, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5635, file: !1, line: 212, column: 2)
!5639 = distinct !{!5639, !5588, !5640}
!5640 = !DILocation(line: 232, column: 2, scope: !5584)
!5641 = !DILocation(line: 234, column: 26, scope: !5494)
!5642 = !DILocation(line: 234, column: 8, scope: !5494)
!5643 = !DILocation(line: 234, column: 6, scope: !5494)
!5644 = !DILocation(line: 234, column: 2, scope: !5494)
!5645 = !DILabel(scope: !5494, name: "out", file: !1, line: 236)
!5646 = !DILocation(line: 236, column: 1, scope: !5494)
!5647 = !DILocation(line: 237, column: 6, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5494, file: !1, line: 237, column: 6)
!5649 = !DILocation(line: 237, column: 10, scope: !5648)
!5650 = !DILocation(line: 237, column: 6, scope: !5494)
!5651 = !DILocation(line: 238, column: 26, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !1, line: 237, column: 23)
!5653 = !DILocation(line: 238, column: 3, scope: !5652)
!5654 = !DILocation(line: 239, column: 9, scope: !5652)
!5655 = !DILocation(line: 239, column: 7, scope: !5652)
!5656 = !DILocation(line: 240, column: 8, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5652, file: !1, line: 240, column: 7)
!5658 = !DILocation(line: 240, column: 7, scope: !5652)
!5659 = !DILocation(line: 241, column: 4, scope: !5657)
!5660 = !DILocation(line: 242, column: 2, scope: !5652)
!5661 = !DILocation(line: 244, column: 24, scope: !5494)
!5662 = !DILocation(line: 244, column: 2, scope: !5494)
!5663 = !DILocation(line: 245, column: 8, scope: !5494)
!5664 = !DILocation(line: 245, column: 2, scope: !5494)
!5665 = !DILocation(line: 246, column: 23, scope: !5494)
!5666 = !DILocation(line: 246, column: 2, scope: !5494)
!5667 = !DILabel(scope: !5494, name: "out_drop_locks", file: !1, line: 248)
!5668 = !DILocation(line: 248, column: 1, scope: !5494)
!5669 = !DILocation(line: 249, column: 2, scope: !5494)
!5670 = !DILocation(line: 250, column: 2, scope: !5494)
!5671 = !DILocation(line: 252, column: 9, scope: !5494)
!5672 = !DILocation(line: 252, column: 2, scope: !5494)
!5673 = distinct !DISubprogram(name: "kcalloc", scope: !241, file: !241, line: 601, type: !5674, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!258, !395, !395, !256}
!5676 = !DILocalVariable(name: "n", arg: 1, scope: !5673, file: !241, line: 601, type: !395)
!5677 = !DILocation(line: 601, column: 36, scope: !5673)
!5678 = !DILocalVariable(name: "size", arg: 2, scope: !5673, file: !241, line: 601, type: !395)
!5679 = !DILocation(line: 601, column: 46, scope: !5673)
!5680 = !DILocalVariable(name: "flags", arg: 3, scope: !5673, file: !241, line: 601, type: !256)
!5681 = !DILocation(line: 601, column: 58, scope: !5673)
!5682 = !DILocation(line: 603, column: 23, scope: !5673)
!5683 = !DILocation(line: 603, column: 26, scope: !5673)
!5684 = !DILocation(line: 603, column: 32, scope: !5673)
!5685 = !DILocation(line: 603, column: 38, scope: !5673)
!5686 = !DILocation(line: 603, column: 9, scope: !5673)
!5687 = !DILocation(line: 603, column: 2, scope: !5673)
!5688 = distinct !DISubprogram(name: "convert_clip_rect_to_rect", scope: !1, file: !1, line: 75, type: !5689, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{null, !5691, !5383, !633, !633}
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4222)
!5693 = !DILocalVariable(name: "src", arg: 1, scope: !5688, file: !1, line: 75, type: !5691)
!5694 = !DILocation(line: 75, column: 67, scope: !5688)
!5695 = !DILocalVariable(name: "dest", arg: 2, scope: !5688, file: !1, line: 76, type: !5383)
!5696 = !DILocation(line: 76, column: 33, scope: !5688)
!5697 = !DILocalVariable(name: "num_clips", arg: 3, scope: !5688, file: !1, line: 77, type: !633)
!5698 = !DILocation(line: 77, column: 20, scope: !5688)
!5699 = !DILocalVariable(name: "src_inc", arg: 4, scope: !5688, file: !1, line: 77, type: !633)
!5700 = !DILocation(line: 77, column: 40, scope: !5688)
!5701 = !DILocation(line: 79, column: 2, scope: !5688)
!5702 = !DILocation(line: 79, column: 9, scope: !5688)
!5703 = !DILocation(line: 79, column: 19, scope: !5688)
!5704 = !DILocation(line: 80, column: 14, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5688, file: !1, line: 79, column: 24)
!5706 = !DILocation(line: 80, column: 19, scope: !5705)
!5707 = !DILocation(line: 80, column: 3, scope: !5705)
!5708 = !DILocation(line: 80, column: 9, scope: !5705)
!5709 = !DILocation(line: 80, column: 12, scope: !5705)
!5710 = !DILocation(line: 81, column: 14, scope: !5705)
!5711 = !DILocation(line: 81, column: 19, scope: !5705)
!5712 = !DILocation(line: 81, column: 3, scope: !5705)
!5713 = !DILocation(line: 81, column: 9, scope: !5705)
!5714 = !DILocation(line: 81, column: 12, scope: !5705)
!5715 = !DILocation(line: 82, column: 14, scope: !5705)
!5716 = !DILocation(line: 82, column: 19, scope: !5705)
!5717 = !DILocation(line: 82, column: 3, scope: !5705)
!5718 = !DILocation(line: 82, column: 9, scope: !5705)
!5719 = !DILocation(line: 82, column: 12, scope: !5705)
!5720 = !DILocation(line: 83, column: 14, scope: !5705)
!5721 = !DILocation(line: 83, column: 19, scope: !5705)
!5722 = !DILocation(line: 83, column: 3, scope: !5705)
!5723 = !DILocation(line: 83, column: 9, scope: !5705)
!5724 = !DILocation(line: 83, column: 12, scope: !5705)
!5725 = !DILocation(line: 84, column: 10, scope: !5705)
!5726 = !DILocation(line: 84, column: 7, scope: !5705)
!5727 = !DILocation(line: 85, column: 7, scope: !5705)
!5728 = !DILocation(line: 86, column: 12, scope: !5705)
!5729 = distinct !{!5729, !5701, !5730}
!5730 = !DILocation(line: 87, column: 2, scope: !5688)
!5731 = !DILocation(line: 88, column: 1, scope: !5688)
!5732 = distinct !DISubprogram(name: "IS_ERR", scope: !5733, file: !5733, line: 34, type: !5734, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5733 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!564, !2250}
!5736 = !DILocalVariable(name: "ptr", arg: 1, scope: !5732, file: !5733, line: 34, type: !2250)
!5737 = !DILocation(line: 34, column: 60, scope: !5732)
!5738 = !DILocation(line: 36, column: 9, scope: !5732)
!5739 = !DILocation(line: 36, column: 2, scope: !5732)
!5740 = distinct !DISubprogram(name: "PTR_ERR", scope: !5733, file: !5733, line: 29, type: !5741, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!383, !2250}
!5743 = !DILocalVariable(name: "ptr", arg: 1, scope: !5740, file: !5733, line: 29, type: !2250)
!5744 = !DILocation(line: 29, column: 61, scope: !5740)
!5745 = !DILocation(line: 31, column: 16, scope: !5740)
!5746 = !DILocation(line: 31, column: 9, scope: !5740)
!5747 = !DILocation(line: 31, column: 2, scope: !5740)
!5748 = distinct !DISubprogram(name: "drm_atomic_state_put", scope: !4314, file: !4314, line: 435, type: !5186, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5749 = !DILocalVariable(name: "state", arg: 1, scope: !5748, file: !4314, line: 435, type: !4312)
!5750 = !DILocation(line: 435, column: 66, scope: !5748)
!5751 = !DILocation(line: 437, column: 12, scope: !5748)
!5752 = !DILocation(line: 437, column: 19, scope: !5748)
!5753 = !DILocation(line: 437, column: 2, scope: !5748)
!5754 = !DILocation(line: 438, column: 1, scope: !5748)
!5755 = distinct !DISubprogram(name: "drm_atomic_helper_damage_iter_init", scope: !1, file: !1, line: 276, type: !5756, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{null, !5758, !5342, !5342}
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_helper_damage_iter", file: !5760, line: 54, size: 320, elements: !5761)
!5760 = !DIFile(filename: "./include/drm/drm_damage_helper.h", directory: "/home/lizy2001/genbc/linux")
!5761 = !{!5762, !5763, !5766, !5767, !5768}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "plane_src", scope: !5759, file: !5760, line: 56, baseType: !5106, size: 128)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "clips", scope: !5759, file: !5760, line: 58, baseType: !5764, size: 64, offset: 128)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5765, size: 64)
!5765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5106)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "num_clips", scope: !5759, file: !5760, line: 60, baseType: !633, size: 32, offset: 192)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "curr_clip", scope: !5759, file: !5760, line: 62, baseType: !633, size: 32, offset: 224)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "full_update", scope: !5759, file: !5760, line: 64, baseType: !564, size: 8, offset: 256)
!5769 = !DILocalVariable(name: "iter", arg: 1, scope: !5755, file: !1, line: 276, type: !5758)
!5770 = !DILocation(line: 276, column: 74, scope: !5755)
!5771 = !DILocalVariable(name: "old_state", arg: 2, scope: !5755, file: !1, line: 277, type: !5342)
!5772 = !DILocation(line: 277, column: 38, scope: !5755)
!5773 = !DILocalVariable(name: "state", arg: 3, scope: !5755, file: !1, line: 278, type: !5342)
!5774 = !DILocation(line: 278, column: 38, scope: !5755)
!5775 = !DILocation(line: 280, column: 9, scope: !5755)
!5776 = !DILocation(line: 280, column: 2, scope: !5755)
!5777 = !DILocation(line: 282, column: 7, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5755, file: !1, line: 282, column: 6)
!5779 = !DILocation(line: 282, column: 13, scope: !5778)
!5780 = !DILocation(line: 282, column: 17, scope: !5778)
!5781 = !DILocation(line: 282, column: 24, scope: !5778)
!5782 = !DILocation(line: 282, column: 29, scope: !5778)
!5783 = !DILocation(line: 282, column: 33, scope: !5778)
!5784 = !DILocation(line: 282, column: 40, scope: !5778)
!5785 = !DILocation(line: 282, column: 43, scope: !5778)
!5786 = !DILocation(line: 282, column: 47, scope: !5778)
!5787 = !DILocation(line: 282, column: 54, scope: !5778)
!5788 = !DILocation(line: 282, column: 6, scope: !5755)
!5789 = !DILocation(line: 283, column: 3, scope: !5778)
!5790 = !DILocation(line: 285, column: 50, scope: !5755)
!5791 = !DILocation(line: 285, column: 16, scope: !5755)
!5792 = !DILocation(line: 285, column: 2, scope: !5755)
!5793 = !DILocation(line: 285, column: 8, scope: !5755)
!5794 = !DILocation(line: 285, column: 14, scope: !5755)
!5795 = !DILocation(line: 286, column: 53, scope: !5755)
!5796 = !DILocation(line: 286, column: 20, scope: !5755)
!5797 = !DILocation(line: 286, column: 2, scope: !5755)
!5798 = !DILocation(line: 286, column: 8, scope: !5755)
!5799 = !DILocation(line: 286, column: 18, scope: !5755)
!5800 = !DILocation(line: 289, column: 23, scope: !5755)
!5801 = !DILocation(line: 289, column: 30, scope: !5755)
!5802 = !DILocation(line: 289, column: 34, scope: !5755)
!5803 = !DILocation(line: 289, column: 37, scope: !5755)
!5804 = !DILocation(line: 289, column: 2, scope: !5755)
!5805 = !DILocation(line: 289, column: 8, scope: !5755)
!5806 = !DILocation(line: 289, column: 18, scope: !5755)
!5807 = !DILocation(line: 289, column: 21, scope: !5755)
!5808 = !DILocation(line: 290, column: 23, scope: !5755)
!5809 = !DILocation(line: 290, column: 30, scope: !5755)
!5810 = !DILocation(line: 290, column: 34, scope: !5755)
!5811 = !DILocation(line: 290, column: 37, scope: !5755)
!5812 = !DILocation(line: 290, column: 2, scope: !5755)
!5813 = !DILocation(line: 290, column: 8, scope: !5755)
!5814 = !DILocation(line: 290, column: 18, scope: !5755)
!5815 = !DILocation(line: 290, column: 21, scope: !5755)
!5816 = !DILocation(line: 291, column: 24, scope: !5755)
!5817 = !DILocation(line: 291, column: 31, scope: !5755)
!5818 = !DILocation(line: 291, column: 35, scope: !5755)
!5819 = !DILocation(line: 291, column: 38, scope: !5755)
!5820 = !DILocation(line: 291, column: 50, scope: !5755)
!5821 = !DILocation(line: 291, column: 57, scope: !5755)
!5822 = !DILocation(line: 291, column: 61, scope: !5755)
!5823 = !DILocation(line: 291, column: 64, scope: !5755)
!5824 = !DILocation(line: 291, column: 48, scope: !5755)
!5825 = !DILocation(line: 291, column: 47, scope: !5755)
!5826 = !DILocation(line: 291, column: 45, scope: !5755)
!5827 = !DILocation(line: 291, column: 2, scope: !5755)
!5828 = !DILocation(line: 291, column: 8, scope: !5755)
!5829 = !DILocation(line: 291, column: 18, scope: !5755)
!5830 = !DILocation(line: 291, column: 21, scope: !5755)
!5831 = !DILocation(line: 292, column: 24, scope: !5755)
!5832 = !DILocation(line: 292, column: 31, scope: !5755)
!5833 = !DILocation(line: 292, column: 35, scope: !5755)
!5834 = !DILocation(line: 292, column: 38, scope: !5755)
!5835 = !DILocation(line: 292, column: 50, scope: !5755)
!5836 = !DILocation(line: 292, column: 57, scope: !5755)
!5837 = !DILocation(line: 292, column: 61, scope: !5755)
!5838 = !DILocation(line: 292, column: 64, scope: !5755)
!5839 = !DILocation(line: 292, column: 48, scope: !5755)
!5840 = !DILocation(line: 292, column: 47, scope: !5755)
!5841 = !DILocation(line: 292, column: 45, scope: !5755)
!5842 = !DILocation(line: 292, column: 2, scope: !5755)
!5843 = !DILocation(line: 292, column: 8, scope: !5755)
!5844 = !DILocation(line: 292, column: 18, scope: !5755)
!5845 = !DILocation(line: 292, column: 21, scope: !5755)
!5846 = !DILocation(line: 294, column: 7, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5755, file: !1, line: 294, column: 6)
!5848 = !DILocation(line: 294, column: 13, scope: !5847)
!5849 = !DILocation(line: 294, column: 19, scope: !5847)
!5850 = !DILocation(line: 294, column: 40, scope: !5847)
!5851 = !DILocation(line: 294, column: 47, scope: !5847)
!5852 = !DILocation(line: 294, column: 53, scope: !5847)
!5853 = !DILocation(line: 294, column: 64, scope: !5847)
!5854 = !DILocation(line: 294, column: 23, scope: !5847)
!5855 = !DILocation(line: 294, column: 6, scope: !5755)
!5856 = !DILocation(line: 295, column: 3, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5847, file: !1, line: 294, column: 70)
!5858 = !DILocation(line: 295, column: 9, scope: !5857)
!5859 = !DILocation(line: 295, column: 15, scope: !5857)
!5860 = !DILocation(line: 296, column: 3, scope: !5857)
!5861 = !DILocation(line: 296, column: 9, scope: !5857)
!5862 = !DILocation(line: 296, column: 19, scope: !5857)
!5863 = !DILocation(line: 297, column: 3, scope: !5857)
!5864 = !DILocation(line: 297, column: 9, scope: !5857)
!5865 = !DILocation(line: 297, column: 21, scope: !5857)
!5866 = !DILocation(line: 298, column: 2, scope: !5857)
!5867 = !DILocation(line: 299, column: 1, scope: !5755)
!5868 = distinct !DISubprogram(name: "drm_helper_get_plane_damage_clips", scope: !5760, file: !5760, line: 97, type: !5869, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!5382, !5342}
!5871 = !DILocalVariable(name: "state", arg: 1, scope: !5868, file: !5760, line: 97, type: !5342)
!5872 = !DILocation(line: 97, column: 65, scope: !5868)
!5873 = !DILocation(line: 99, column: 55, scope: !5868)
!5874 = !DILocation(line: 99, column: 28, scope: !5868)
!5875 = !DILocation(line: 99, column: 9, scope: !5868)
!5876 = !DILocation(line: 99, column: 2, scope: !5868)
!5877 = distinct !DISubprogram(name: "drm_plane_get_damage_clips_count", scope: !230, file: !230, line: 842, type: !5878, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!5, !5342}
!5880 = !DILocalVariable(name: "state", arg: 1, scope: !5877, file: !230, line: 842, type: !5342)
!5881 = !DILocation(line: 842, column: 64, scope: !5877)
!5882 = !DILocation(line: 844, column: 10, scope: !5877)
!5883 = !DILocation(line: 844, column: 16, scope: !5877)
!5884 = !DILocation(line: 844, column: 19, scope: !5877)
!5885 = !DILocation(line: 844, column: 26, scope: !5877)
!5886 = !DILocation(line: 844, column: 9, scope: !5877)
!5887 = !DILocation(line: 845, column: 3, scope: !5877)
!5888 = !DILocation(line: 845, column: 10, scope: !5877)
!5889 = !DILocation(line: 845, column: 27, scope: !5877)
!5890 = !DILocation(line: 845, column: 33, scope: !5877)
!5891 = !DILocation(line: 844, column: 2, scope: !5877)
!5892 = distinct !DISubprogram(name: "drm_rect_equals", scope: !5107, file: !5107, line: 202, type: !5893, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!564, !5764, !5764}
!5895 = !DILocalVariable(name: "r1", arg: 1, scope: !5892, file: !5107, line: 202, type: !5764)
!5896 = !DILocation(line: 202, column: 59, scope: !5892)
!5897 = !DILocalVariable(name: "r2", arg: 2, scope: !5892, file: !5107, line: 203, type: !5764)
!5898 = !DILocation(line: 203, column: 31, scope: !5892)
!5899 = !DILocation(line: 205, column: 9, scope: !5892)
!5900 = !DILocation(line: 205, column: 13, scope: !5892)
!5901 = !DILocation(line: 205, column: 19, scope: !5892)
!5902 = !DILocation(line: 205, column: 23, scope: !5892)
!5903 = !DILocation(line: 205, column: 16, scope: !5892)
!5904 = !DILocation(line: 205, column: 26, scope: !5892)
!5905 = !DILocation(line: 205, column: 29, scope: !5892)
!5906 = !DILocation(line: 205, column: 33, scope: !5892)
!5907 = !DILocation(line: 205, column: 39, scope: !5892)
!5908 = !DILocation(line: 205, column: 43, scope: !5892)
!5909 = !DILocation(line: 205, column: 36, scope: !5892)
!5910 = !DILocation(line: 205, column: 46, scope: !5892)
!5911 = !DILocation(line: 206, column: 3, scope: !5892)
!5912 = !DILocation(line: 206, column: 7, scope: !5892)
!5913 = !DILocation(line: 206, column: 13, scope: !5892)
!5914 = !DILocation(line: 206, column: 17, scope: !5892)
!5915 = !DILocation(line: 206, column: 10, scope: !5892)
!5916 = !DILocation(line: 206, column: 20, scope: !5892)
!5917 = !DILocation(line: 206, column: 23, scope: !5892)
!5918 = !DILocation(line: 206, column: 27, scope: !5892)
!5919 = !DILocation(line: 206, column: 33, scope: !5892)
!5920 = !DILocation(line: 206, column: 37, scope: !5892)
!5921 = !DILocation(line: 206, column: 30, scope: !5892)
!5922 = !DILocation(line: 0, scope: !5892)
!5923 = !DILocation(line: 205, column: 2, scope: !5892)
!5924 = distinct !DISubprogram(name: "drm_atomic_helper_damage_iter_next", scope: !1, file: !1, line: 319, type: !5925, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{!564, !5758, !5382}
!5927 = !DILocalVariable(name: "iter", arg: 1, scope: !5924, file: !1, line: 319, type: !5758)
!5928 = !DILocation(line: 319, column: 74, scope: !5924)
!5929 = !DILocalVariable(name: "rect", arg: 2, scope: !5924, file: !1, line: 320, type: !5382)
!5930 = !DILocation(line: 320, column: 25, scope: !5924)
!5931 = !DILocalVariable(name: "ret", scope: !5924, file: !1, line: 322, type: !564)
!5932 = !DILocation(line: 322, column: 7, scope: !5924)
!5933 = !DILocation(line: 324, column: 6, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5924, file: !1, line: 324, column: 6)
!5935 = !DILocation(line: 324, column: 12, scope: !5934)
!5936 = !DILocation(line: 324, column: 6, scope: !5924)
!5937 = !DILocation(line: 325, column: 4, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5934, file: !1, line: 324, column: 25)
!5939 = !DILocation(line: 325, column: 11, scope: !5938)
!5940 = !DILocation(line: 325, column: 17, scope: !5938)
!5941 = !DILocation(line: 326, column: 3, scope: !5938)
!5942 = !DILocation(line: 326, column: 9, scope: !5938)
!5943 = !DILocation(line: 326, column: 21, scope: !5938)
!5944 = !DILocation(line: 327, column: 3, scope: !5938)
!5945 = !DILocation(line: 330, column: 2, scope: !5924)
!5946 = !DILocation(line: 330, column: 9, scope: !5924)
!5947 = !DILocation(line: 330, column: 15, scope: !5924)
!5948 = !DILocation(line: 330, column: 27, scope: !5924)
!5949 = !DILocation(line: 330, column: 33, scope: !5924)
!5950 = !DILocation(line: 330, column: 25, scope: !5924)
!5951 = !DILocation(line: 331, column: 4, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5924, file: !1, line: 330, column: 44)
!5953 = !DILocation(line: 331, column: 11, scope: !5952)
!5954 = !DILocation(line: 331, column: 17, scope: !5952)
!5955 = !DILocation(line: 331, column: 23, scope: !5952)
!5956 = !DILocation(line: 331, column: 29, scope: !5952)
!5957 = !DILocation(line: 332, column: 3, scope: !5952)
!5958 = !DILocation(line: 332, column: 9, scope: !5952)
!5959 = !DILocation(line: 332, column: 18, scope: !5952)
!5960 = !DILocation(line: 334, column: 26, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5952, file: !1, line: 334, column: 7)
!5962 = !DILocation(line: 334, column: 33, scope: !5961)
!5963 = !DILocation(line: 334, column: 39, scope: !5961)
!5964 = !DILocation(line: 334, column: 7, scope: !5961)
!5965 = !DILocation(line: 334, column: 7, scope: !5952)
!5966 = !DILocation(line: 335, column: 8, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5961, file: !1, line: 334, column: 51)
!5968 = !DILocation(line: 336, column: 4, scope: !5967)
!5969 = distinct !{!5969, !5945, !5970}
!5970 = !DILocation(line: 338, column: 2, scope: !5924)
!5971 = !DILocation(line: 340, column: 9, scope: !5924)
!5972 = !DILocation(line: 340, column: 2, scope: !5924)
!5973 = !DILocation(line: 341, column: 1, scope: !5924)
!5974 = distinct !DISubprogram(name: "drm_atomic_helper_damage_merged", scope: !1, file: !1, line: 359, type: !5975, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !321)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!564, !5342, !4328, !5382}
!5977 = !DILocalVariable(name: "old_state", arg: 1, scope: !5974, file: !1, line: 359, type: !5342)
!5978 = !DILocation(line: 359, column: 68, scope: !5974)
!5979 = !DILocalVariable(name: "state", arg: 2, scope: !5974, file: !1, line: 360, type: !4328)
!5980 = !DILocation(line: 360, column: 34, scope: !5974)
!5981 = !DILocalVariable(name: "rect", arg: 3, scope: !5974, file: !1, line: 361, type: !5382)
!5982 = !DILocation(line: 361, column: 27, scope: !5974)
!5983 = !DILocalVariable(name: "iter", scope: !5974, file: !1, line: 363, type: !5759)
!5984 = !DILocation(line: 363, column: 39, scope: !5974)
!5985 = !DILocalVariable(name: "clip", scope: !5974, file: !1, line: 364, type: !5106)
!5986 = !DILocation(line: 364, column: 18, scope: !5974)
!5987 = !DILocalVariable(name: "valid", scope: !5974, file: !1, line: 365, type: !564)
!5988 = !DILocation(line: 365, column: 7, scope: !5974)
!5989 = !DILocation(line: 367, column: 2, scope: !5974)
!5990 = !DILocation(line: 367, column: 8, scope: !5974)
!5991 = !DILocation(line: 367, column: 11, scope: !5974)
!5992 = !DILocation(line: 368, column: 2, scope: !5974)
!5993 = !DILocation(line: 368, column: 8, scope: !5974)
!5994 = !DILocation(line: 368, column: 11, scope: !5974)
!5995 = !DILocation(line: 369, column: 2, scope: !5974)
!5996 = !DILocation(line: 369, column: 8, scope: !5974)
!5997 = !DILocation(line: 369, column: 11, scope: !5974)
!5998 = !DILocation(line: 370, column: 2, scope: !5974)
!5999 = !DILocation(line: 370, column: 8, scope: !5974)
!6000 = !DILocation(line: 370, column: 11, scope: !5974)
!6001 = !DILocation(line: 372, column: 44, scope: !5974)
!6002 = !DILocation(line: 372, column: 55, scope: !5974)
!6003 = !DILocation(line: 372, column: 2, scope: !5974)
!6004 = !DILocation(line: 373, column: 2, scope: !5974)
!6005 = !DILocalVariable(name: "__UNIQUE_ID___x255", scope: !6006, file: !1, line: 374, type: !107)
!6006 = distinct !DILexicalBlock(scope: !6007, file: !1, line: 374, column: 14)
!6007 = distinct !DILexicalBlock(scope: !5974, file: !1, line: 373, column: 49)
!6008 = !DILocation(line: 374, column: 14, scope: !6006)
!6009 = !DILocalVariable(name: "__UNIQUE_ID___y256", scope: !6006, file: !1, line: 374, type: !107)
!6010 = !DILocation(line: 374, column: 3, scope: !6007)
!6011 = !DILocation(line: 374, column: 9, scope: !6007)
!6012 = !DILocation(line: 374, column: 12, scope: !6007)
!6013 = !DILocalVariable(name: "__UNIQUE_ID___x257", scope: !6014, file: !1, line: 375, type: !107)
!6014 = distinct !DILexicalBlock(scope: !6007, file: !1, line: 375, column: 14)
!6015 = !DILocation(line: 375, column: 14, scope: !6014)
!6016 = !DILocalVariable(name: "__UNIQUE_ID___y258", scope: !6014, file: !1, line: 375, type: !107)
!6017 = !DILocation(line: 375, column: 3, scope: !6007)
!6018 = !DILocation(line: 375, column: 9, scope: !6007)
!6019 = !DILocation(line: 375, column: 12, scope: !6007)
!6020 = !DILocalVariable(name: "__UNIQUE_ID___x259", scope: !6021, file: !1, line: 376, type: !107)
!6021 = distinct !DILexicalBlock(scope: !6007, file: !1, line: 376, column: 14)
!6022 = !DILocation(line: 376, column: 14, scope: !6021)
!6023 = !DILocalVariable(name: "__UNIQUE_ID___y260", scope: !6021, file: !1, line: 376, type: !107)
!6024 = !DILocation(line: 376, column: 3, scope: !6007)
!6025 = !DILocation(line: 376, column: 9, scope: !6007)
!6026 = !DILocation(line: 376, column: 12, scope: !6007)
!6027 = !DILocalVariable(name: "__UNIQUE_ID___x261", scope: !6028, file: !1, line: 377, type: !107)
!6028 = distinct !DILexicalBlock(scope: !6007, file: !1, line: 377, column: 14)
!6029 = !DILocation(line: 377, column: 14, scope: !6028)
!6030 = !DILocalVariable(name: "__UNIQUE_ID___y262", scope: !6028, file: !1, line: 377, type: !107)
!6031 = !DILocation(line: 377, column: 3, scope: !6007)
!6032 = !DILocation(line: 377, column: 9, scope: !6007)
!6033 = !DILocation(line: 377, column: 12, scope: !6007)
!6034 = !DILocation(line: 378, column: 9, scope: !6007)
!6035 = distinct !{!6035, !6004, !6036}
!6036 = !DILocation(line: 379, column: 2, scope: !5974)
!6037 = !DILocation(line: 381, column: 9, scope: !5974)
!6038 = !DILocation(line: 381, column: 2, scope: !5974)
!6039 = distinct !DISubprogram(name: "drm_crtc_index", scope: !4335, file: !4335, line: 1220, type: !6040, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{!5, !6042}
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6043, size: 64)
!6043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!6044 = !DILocalVariable(name: "crtc", arg: 1, scope: !6039, file: !4335, line: 1220, type: !6042)
!6045 = !DILocation(line: 1220, column: 66, scope: !6039)
!6046 = !DILocation(line: 1222, column: 9, scope: !6039)
!6047 = !DILocation(line: 1222, column: 15, scope: !6039)
!6048 = !DILocation(line: 1222, column: 2, scope: !6039)
!6049 = distinct !DISubprogram(name: "kmalloc_array", scope: !241, file: !241, line: 584, type: !5674, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6050 = !DILocalVariable(name: "s", arg: 1, scope: !6051, file: !241, line: 445, type: !1008)
!6051 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !241, file: !241, line: 445, type: !6052, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!258, !1008, !256, !395}
!6054 = !DILocation(line: 445, column: 72, scope: !6051, inlinedAt: !6055)
!6055 = distinct !DILocation(line: 552, column: 10, scope: !6056, inlinedAt: !6061)
!6056 = distinct !DILexicalBlock(scope: !6057, file: !241, line: 540, column: 34)
!6057 = distinct !DILexicalBlock(scope: !6058, file: !241, line: 540, column: 6)
!6058 = distinct !DISubprogram(name: "kmalloc", scope: !241, file: !241, line: 538, type: !6059, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!258, !395, !256}
!6061 = distinct !DILocation(line: 591, column: 10, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6049, file: !241, line: 590, column: 6)
!6063 = !DILocalVariable(name: "flags", arg: 2, scope: !6051, file: !241, line: 446, type: !256)
!6064 = !DILocation(line: 446, column: 9, scope: !6051, inlinedAt: !6055)
!6065 = !DILocalVariable(name: "size", arg: 3, scope: !6051, file: !241, line: 446, type: !395)
!6066 = !DILocation(line: 446, column: 23, scope: !6051, inlinedAt: !6055)
!6067 = !DILocalVariable(name: "ret", scope: !6051, file: !241, line: 448, type: !258)
!6068 = !DILocation(line: 448, column: 8, scope: !6051, inlinedAt: !6055)
!6069 = !DILocalVariable(name: "flags", arg: 1, scope: !6070, file: !241, line: 318, type: !256)
!6070 = distinct !DISubprogram(name: "kmalloc_type", scope: !241, file: !241, line: 318, type: !6071, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!240, !256}
!6073 = !DILocation(line: 318, column: 67, scope: !6070, inlinedAt: !6074)
!6074 = distinct !DILocation(line: 553, column: 20, scope: !6056, inlinedAt: !6061)
!6075 = !DILocalVariable(name: "size", arg: 1, scope: !6076, file: !241, line: 346, type: !395)
!6076 = distinct !DISubprogram(name: "kmalloc_index", scope: !241, file: !241, line: 346, type: !6077, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!5, !395}
!6079 = !DILocation(line: 346, column: 58, scope: !6076, inlinedAt: !6080)
!6080 = distinct !DILocation(line: 547, column: 11, scope: !6056, inlinedAt: !6061)
!6081 = !DILocalVariable(name: "size", arg: 1, scope: !6082, file: !241, line: 472, type: !395)
!6082 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !241, file: !241, line: 472, type: !6083, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{!258, !395, !256, !5}
!6085 = !DILocation(line: 472, column: 28, scope: !6082, inlinedAt: !6086)
!6086 = distinct !DILocation(line: 481, column: 9, scope: !6087, inlinedAt: !6088)
!6087 = distinct !DISubprogram(name: "kmalloc_large", scope: !241, file: !241, line: 478, type: !6059, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6088 = distinct !DILocation(line: 545, column: 11, scope: !6089, inlinedAt: !6061)
!6089 = distinct !DILexicalBlock(scope: !6056, file: !241, line: 544, column: 7)
!6090 = !DILocalVariable(name: "flags", arg: 2, scope: !6082, file: !241, line: 472, type: !256)
!6091 = !DILocation(line: 472, column: 40, scope: !6082, inlinedAt: !6086)
!6092 = !DILocalVariable(name: "order", arg: 3, scope: !6082, file: !241, line: 472, type: !5)
!6093 = !DILocation(line: 472, column: 60, scope: !6082, inlinedAt: !6086)
!6094 = !DILocalVariable(name: "size", arg: 1, scope: !6087, file: !241, line: 478, type: !395)
!6095 = !DILocation(line: 478, column: 51, scope: !6087, inlinedAt: !6088)
!6096 = !DILocalVariable(name: "flags", arg: 2, scope: !6087, file: !241, line: 478, type: !256)
!6097 = !DILocation(line: 478, column: 63, scope: !6087, inlinedAt: !6088)
!6098 = !DILocalVariable(name: "order", scope: !6087, file: !241, line: 480, type: !5)
!6099 = !DILocation(line: 480, column: 15, scope: !6087, inlinedAt: !6088)
!6100 = !DILocalVariable(name: "size", arg: 1, scope: !6058, file: !241, line: 538, type: !395)
!6101 = !DILocation(line: 538, column: 45, scope: !6058, inlinedAt: !6061)
!6102 = !DILocalVariable(name: "flags", arg: 2, scope: !6058, file: !241, line: 538, type: !256)
!6103 = !DILocation(line: 538, column: 57, scope: !6058, inlinedAt: !6061)
!6104 = !DILocalVariable(name: "index", scope: !6056, file: !241, line: 542, type: !5)
!6105 = !DILocation(line: 542, column: 16, scope: !6056, inlinedAt: !6061)
!6106 = !DILocalVariable(name: "n", arg: 1, scope: !6049, file: !241, line: 584, type: !395)
!6107 = !DILocation(line: 584, column: 42, scope: !6049)
!6108 = !DILocalVariable(name: "size", arg: 2, scope: !6049, file: !241, line: 584, type: !395)
!6109 = !DILocation(line: 584, column: 52, scope: !6049)
!6110 = !DILocalVariable(name: "flags", arg: 3, scope: !6049, file: !241, line: 584, type: !256)
!6111 = !DILocation(line: 584, column: 64, scope: !6049)
!6112 = !DILocalVariable(name: "bytes", scope: !6049, file: !241, line: 586, type: !395)
!6113 = !DILocation(line: 586, column: 9, scope: !6049)
!6114 = !DILocalVariable(name: "__a", scope: !6115, file: !241, line: 588, type: !395)
!6115 = distinct !DILexicalBlock(scope: !6116, file: !241, line: 588, column: 6)
!6116 = distinct !DILexicalBlock(scope: !6049, file: !241, line: 588, column: 6)
!6117 = !DILocation(line: 588, column: 6, scope: !6115)
!6118 = !DILocalVariable(name: "__b", scope: !6115, file: !241, line: 588, type: !395)
!6119 = !DILocalVariable(name: "__d", scope: !6115, file: !241, line: 588, type: !4981)
!6120 = !DILocation(line: 588, column: 6, scope: !6116)
!6121 = !DILocation(line: 588, column: 6, scope: !6049)
!6122 = !DILocation(line: 589, column: 3, scope: !6116)
!6123 = !DILocation(line: 590, column: 27, scope: !6062)
!6124 = !DILocation(line: 590, column: 6, scope: !6062)
!6125 = !DILocation(line: 590, column: 30, scope: !6062)
!6126 = !DILocation(line: 590, column: 54, scope: !6062)
!6127 = !DILocation(line: 590, column: 33, scope: !6062)
!6128 = !DILocation(line: 590, column: 6, scope: !6049)
!6129 = !DILocation(line: 591, column: 18, scope: !6062)
!6130 = !DILocation(line: 591, column: 25, scope: !6062)
!6131 = !DILocation(line: 540, column: 27, scope: !6057, inlinedAt: !6061)
!6132 = !DILocation(line: 540, column: 6, scope: !6057, inlinedAt: !6061)
!6133 = !DILocation(line: 540, column: 6, scope: !6058, inlinedAt: !6061)
!6134 = !DILocation(line: 544, column: 7, scope: !6089, inlinedAt: !6061)
!6135 = !DILocation(line: 544, column: 12, scope: !6089, inlinedAt: !6061)
!6136 = !DILocation(line: 544, column: 7, scope: !6056, inlinedAt: !6061)
!6137 = !DILocation(line: 545, column: 25, scope: !6089, inlinedAt: !6061)
!6138 = !DILocation(line: 545, column: 31, scope: !6089, inlinedAt: !6061)
!6139 = !DILocation(line: 480, column: 33, scope: !6087, inlinedAt: !6088)
!6140 = !DILocation(line: 480, column: 23, scope: !6087, inlinedAt: !6088)
!6141 = !DILocation(line: 481, column: 29, scope: !6087, inlinedAt: !6088)
!6142 = !DILocation(line: 481, column: 35, scope: !6087, inlinedAt: !6088)
!6143 = !DILocation(line: 481, column: 42, scope: !6087, inlinedAt: !6088)
!6144 = !DILocation(line: 474, column: 23, scope: !6082, inlinedAt: !6086)
!6145 = !DILocation(line: 474, column: 29, scope: !6082, inlinedAt: !6086)
!6146 = !DILocation(line: 474, column: 36, scope: !6082, inlinedAt: !6086)
!6147 = !DILocation(line: 474, column: 9, scope: !6082, inlinedAt: !6086)
!6148 = !DILocation(line: 545, column: 4, scope: !6089, inlinedAt: !6061)
!6149 = !DILocation(line: 547, column: 25, scope: !6056, inlinedAt: !6061)
!6150 = !DILocation(line: 348, column: 7, scope: !6151, inlinedAt: !6080)
!6151 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 348, column: 6)
!6152 = !DILocation(line: 348, column: 6, scope: !6076, inlinedAt: !6080)
!6153 = !DILocation(line: 349, column: 3, scope: !6151, inlinedAt: !6080)
!6154 = !DILocation(line: 351, column: 6, scope: !6155, inlinedAt: !6080)
!6155 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 351, column: 6)
!6156 = !DILocation(line: 351, column: 11, scope: !6155, inlinedAt: !6080)
!6157 = !DILocation(line: 351, column: 6, scope: !6076, inlinedAt: !6080)
!6158 = !DILocation(line: 352, column: 3, scope: !6155, inlinedAt: !6080)
!6159 = !DILocation(line: 354, column: 32, scope: !6160, inlinedAt: !6080)
!6160 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 354, column: 6)
!6161 = !DILocation(line: 354, column: 37, scope: !6160, inlinedAt: !6080)
!6162 = !DILocation(line: 354, column: 42, scope: !6160, inlinedAt: !6080)
!6163 = !DILocation(line: 354, column: 45, scope: !6160, inlinedAt: !6080)
!6164 = !DILocation(line: 354, column: 50, scope: !6160, inlinedAt: !6080)
!6165 = !DILocation(line: 354, column: 6, scope: !6076, inlinedAt: !6080)
!6166 = !DILocation(line: 355, column: 3, scope: !6160, inlinedAt: !6080)
!6167 = !DILocation(line: 356, column: 32, scope: !6168, inlinedAt: !6080)
!6168 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 356, column: 6)
!6169 = !DILocation(line: 356, column: 37, scope: !6168, inlinedAt: !6080)
!6170 = !DILocation(line: 356, column: 43, scope: !6168, inlinedAt: !6080)
!6171 = !DILocation(line: 356, column: 46, scope: !6168, inlinedAt: !6080)
!6172 = !DILocation(line: 356, column: 51, scope: !6168, inlinedAt: !6080)
!6173 = !DILocation(line: 356, column: 6, scope: !6076, inlinedAt: !6080)
!6174 = !DILocation(line: 357, column: 3, scope: !6168, inlinedAt: !6080)
!6175 = !DILocation(line: 358, column: 6, scope: !6176, inlinedAt: !6080)
!6176 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 358, column: 6)
!6177 = !DILocation(line: 358, column: 11, scope: !6176, inlinedAt: !6080)
!6178 = !DILocation(line: 358, column: 6, scope: !6076, inlinedAt: !6080)
!6179 = !DILocation(line: 358, column: 26, scope: !6176, inlinedAt: !6080)
!6180 = !DILocation(line: 359, column: 6, scope: !6181, inlinedAt: !6080)
!6181 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 359, column: 6)
!6182 = !DILocation(line: 359, column: 11, scope: !6181, inlinedAt: !6080)
!6183 = !DILocation(line: 359, column: 6, scope: !6076, inlinedAt: !6080)
!6184 = !DILocation(line: 359, column: 26, scope: !6181, inlinedAt: !6080)
!6185 = !DILocation(line: 360, column: 6, scope: !6186, inlinedAt: !6080)
!6186 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 360, column: 6)
!6187 = !DILocation(line: 360, column: 11, scope: !6186, inlinedAt: !6080)
!6188 = !DILocation(line: 360, column: 6, scope: !6076, inlinedAt: !6080)
!6189 = !DILocation(line: 360, column: 26, scope: !6186, inlinedAt: !6080)
!6190 = !DILocation(line: 361, column: 6, scope: !6191, inlinedAt: !6080)
!6191 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 361, column: 6)
!6192 = !DILocation(line: 361, column: 11, scope: !6191, inlinedAt: !6080)
!6193 = !DILocation(line: 361, column: 6, scope: !6076, inlinedAt: !6080)
!6194 = !DILocation(line: 361, column: 26, scope: !6191, inlinedAt: !6080)
!6195 = !DILocation(line: 362, column: 6, scope: !6196, inlinedAt: !6080)
!6196 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 362, column: 6)
!6197 = !DILocation(line: 362, column: 11, scope: !6196, inlinedAt: !6080)
!6198 = !DILocation(line: 362, column: 6, scope: !6076, inlinedAt: !6080)
!6199 = !DILocation(line: 362, column: 26, scope: !6196, inlinedAt: !6080)
!6200 = !DILocation(line: 363, column: 6, scope: !6201, inlinedAt: !6080)
!6201 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 363, column: 6)
!6202 = !DILocation(line: 363, column: 11, scope: !6201, inlinedAt: !6080)
!6203 = !DILocation(line: 363, column: 6, scope: !6076, inlinedAt: !6080)
!6204 = !DILocation(line: 363, column: 26, scope: !6201, inlinedAt: !6080)
!6205 = !DILocation(line: 364, column: 6, scope: !6206, inlinedAt: !6080)
!6206 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 364, column: 6)
!6207 = !DILocation(line: 364, column: 11, scope: !6206, inlinedAt: !6080)
!6208 = !DILocation(line: 364, column: 6, scope: !6076, inlinedAt: !6080)
!6209 = !DILocation(line: 364, column: 26, scope: !6206, inlinedAt: !6080)
!6210 = !DILocation(line: 365, column: 6, scope: !6211, inlinedAt: !6080)
!6211 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 365, column: 6)
!6212 = !DILocation(line: 365, column: 11, scope: !6211, inlinedAt: !6080)
!6213 = !DILocation(line: 365, column: 6, scope: !6076, inlinedAt: !6080)
!6214 = !DILocation(line: 365, column: 26, scope: !6211, inlinedAt: !6080)
!6215 = !DILocation(line: 366, column: 6, scope: !6216, inlinedAt: !6080)
!6216 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 366, column: 6)
!6217 = !DILocation(line: 366, column: 11, scope: !6216, inlinedAt: !6080)
!6218 = !DILocation(line: 366, column: 6, scope: !6076, inlinedAt: !6080)
!6219 = !DILocation(line: 366, column: 26, scope: !6216, inlinedAt: !6080)
!6220 = !DILocation(line: 367, column: 6, scope: !6221, inlinedAt: !6080)
!6221 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 367, column: 6)
!6222 = !DILocation(line: 367, column: 11, scope: !6221, inlinedAt: !6080)
!6223 = !DILocation(line: 367, column: 6, scope: !6076, inlinedAt: !6080)
!6224 = !DILocation(line: 367, column: 26, scope: !6221, inlinedAt: !6080)
!6225 = !DILocation(line: 368, column: 6, scope: !6226, inlinedAt: !6080)
!6226 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 368, column: 6)
!6227 = !DILocation(line: 368, column: 11, scope: !6226, inlinedAt: !6080)
!6228 = !DILocation(line: 368, column: 6, scope: !6076, inlinedAt: !6080)
!6229 = !DILocation(line: 368, column: 26, scope: !6226, inlinedAt: !6080)
!6230 = !DILocation(line: 369, column: 6, scope: !6231, inlinedAt: !6080)
!6231 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 369, column: 6)
!6232 = !DILocation(line: 369, column: 11, scope: !6231, inlinedAt: !6080)
!6233 = !DILocation(line: 369, column: 6, scope: !6076, inlinedAt: !6080)
!6234 = !DILocation(line: 369, column: 26, scope: !6231, inlinedAt: !6080)
!6235 = !DILocation(line: 370, column: 6, scope: !6236, inlinedAt: !6080)
!6236 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 370, column: 6)
!6237 = !DILocation(line: 370, column: 11, scope: !6236, inlinedAt: !6080)
!6238 = !DILocation(line: 370, column: 6, scope: !6076, inlinedAt: !6080)
!6239 = !DILocation(line: 370, column: 26, scope: !6236, inlinedAt: !6080)
!6240 = !DILocation(line: 371, column: 6, scope: !6241, inlinedAt: !6080)
!6241 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 371, column: 6)
!6242 = !DILocation(line: 371, column: 11, scope: !6241, inlinedAt: !6080)
!6243 = !DILocation(line: 371, column: 6, scope: !6076, inlinedAt: !6080)
!6244 = !DILocation(line: 371, column: 26, scope: !6241, inlinedAt: !6080)
!6245 = !DILocation(line: 372, column: 6, scope: !6246, inlinedAt: !6080)
!6246 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 372, column: 6)
!6247 = !DILocation(line: 372, column: 11, scope: !6246, inlinedAt: !6080)
!6248 = !DILocation(line: 372, column: 6, scope: !6076, inlinedAt: !6080)
!6249 = !DILocation(line: 372, column: 26, scope: !6246, inlinedAt: !6080)
!6250 = !DILocation(line: 373, column: 6, scope: !6251, inlinedAt: !6080)
!6251 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 373, column: 6)
!6252 = !DILocation(line: 373, column: 11, scope: !6251, inlinedAt: !6080)
!6253 = !DILocation(line: 373, column: 6, scope: !6076, inlinedAt: !6080)
!6254 = !DILocation(line: 373, column: 26, scope: !6251, inlinedAt: !6080)
!6255 = !DILocation(line: 374, column: 6, scope: !6256, inlinedAt: !6080)
!6256 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 374, column: 6)
!6257 = !DILocation(line: 374, column: 11, scope: !6256, inlinedAt: !6080)
!6258 = !DILocation(line: 374, column: 6, scope: !6076, inlinedAt: !6080)
!6259 = !DILocation(line: 374, column: 26, scope: !6256, inlinedAt: !6080)
!6260 = !DILocation(line: 375, column: 6, scope: !6261, inlinedAt: !6080)
!6261 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 375, column: 6)
!6262 = !DILocation(line: 375, column: 11, scope: !6261, inlinedAt: !6080)
!6263 = !DILocation(line: 375, column: 6, scope: !6076, inlinedAt: !6080)
!6264 = !DILocation(line: 375, column: 27, scope: !6261, inlinedAt: !6080)
!6265 = !DILocation(line: 376, column: 6, scope: !6266, inlinedAt: !6080)
!6266 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 376, column: 6)
!6267 = !DILocation(line: 376, column: 11, scope: !6266, inlinedAt: !6080)
!6268 = !DILocation(line: 376, column: 6, scope: !6076, inlinedAt: !6080)
!6269 = !DILocation(line: 376, column: 32, scope: !6266, inlinedAt: !6080)
!6270 = !DILocation(line: 377, column: 6, scope: !6271, inlinedAt: !6080)
!6271 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 377, column: 6)
!6272 = !DILocation(line: 377, column: 11, scope: !6271, inlinedAt: !6080)
!6273 = !DILocation(line: 377, column: 6, scope: !6076, inlinedAt: !6080)
!6274 = !DILocation(line: 377, column: 32, scope: !6271, inlinedAt: !6080)
!6275 = !DILocation(line: 378, column: 6, scope: !6276, inlinedAt: !6080)
!6276 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 378, column: 6)
!6277 = !DILocation(line: 378, column: 11, scope: !6276, inlinedAt: !6080)
!6278 = !DILocation(line: 378, column: 6, scope: !6076, inlinedAt: !6080)
!6279 = !DILocation(line: 378, column: 32, scope: !6276, inlinedAt: !6080)
!6280 = !DILocation(line: 379, column: 6, scope: !6281, inlinedAt: !6080)
!6281 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 379, column: 6)
!6282 = !DILocation(line: 379, column: 11, scope: !6281, inlinedAt: !6080)
!6283 = !DILocation(line: 379, column: 6, scope: !6076, inlinedAt: !6080)
!6284 = !DILocation(line: 379, column: 33, scope: !6281, inlinedAt: !6080)
!6285 = !DILocation(line: 380, column: 6, scope: !6286, inlinedAt: !6080)
!6286 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 380, column: 6)
!6287 = !DILocation(line: 380, column: 11, scope: !6286, inlinedAt: !6080)
!6288 = !DILocation(line: 380, column: 6, scope: !6076, inlinedAt: !6080)
!6289 = !DILocation(line: 380, column: 33, scope: !6286, inlinedAt: !6080)
!6290 = !DILocation(line: 381, column: 6, scope: !6291, inlinedAt: !6080)
!6291 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 381, column: 6)
!6292 = !DILocation(line: 381, column: 11, scope: !6291, inlinedAt: !6080)
!6293 = !DILocation(line: 381, column: 6, scope: !6076, inlinedAt: !6080)
!6294 = !DILocation(line: 381, column: 33, scope: !6291, inlinedAt: !6080)
!6295 = !DILocation(line: 382, column: 2, scope: !6296, inlinedAt: !6080)
!6296 = distinct !DILexicalBlock(scope: !6297, file: !241, line: 382, column: 2)
!6297 = distinct !DILexicalBlock(scope: !6076, file: !241, line: 382, column: 2)
!6298 = !{i32 -2144090434, i32 -2144090405, i32 -2144090359, i32 -2144090301, i32 -2144090247, i32 -2144090193, i32 -2144090138, i32 -2144090107}
!6299 = !DILocation(line: 382, column: 2, scope: !6300, inlinedAt: !6080)
!6300 = distinct !DILexicalBlock(scope: !6301, file: !241, line: 382, column: 2)
!6301 = distinct !DILexicalBlock(scope: !6297, file: !241, line: 382, column: 2)
!6302 = !{i32 -2144089664, i32 -2144089657, i32 -2144089603, i32 -2144089572, i32 -2144089542}
!6303 = !DILocation(line: 382, column: 2, scope: !6301, inlinedAt: !6080)
!6304 = !DILocation(line: 386, column: 1, scope: !6076, inlinedAt: !6080)
!6305 = !DILocation(line: 547, column: 9, scope: !6056, inlinedAt: !6061)
!6306 = !DILocation(line: 549, column: 8, scope: !6307, inlinedAt: !6061)
!6307 = distinct !DILexicalBlock(scope: !6056, file: !241, line: 549, column: 7)
!6308 = !DILocation(line: 549, column: 7, scope: !6056, inlinedAt: !6061)
!6309 = !DILocation(line: 550, column: 4, scope: !6307, inlinedAt: !6061)
!6310 = !DILocation(line: 553, column: 33, scope: !6056, inlinedAt: !6061)
!6311 = !DILocation(line: 325, column: 6, scope: !6312, inlinedAt: !6074)
!6312 = distinct !DILexicalBlock(scope: !6070, file: !241, line: 325, column: 6)
!6313 = !DILocation(line: 325, column: 6, scope: !6070, inlinedAt: !6074)
!6314 = !DILocation(line: 326, column: 3, scope: !6312, inlinedAt: !6074)
!6315 = !DILocation(line: 332, column: 9, scope: !6070, inlinedAt: !6074)
!6316 = !DILocation(line: 332, column: 15, scope: !6070, inlinedAt: !6074)
!6317 = !DILocation(line: 332, column: 2, scope: !6070, inlinedAt: !6074)
!6318 = !DILocation(line: 336, column: 1, scope: !6070, inlinedAt: !6074)
!6319 = !DILocation(line: 553, column: 5, scope: !6056, inlinedAt: !6061)
!6320 = !DILocation(line: 553, column: 41, scope: !6056, inlinedAt: !6061)
!6321 = !DILocation(line: 554, column: 5, scope: !6056, inlinedAt: !6061)
!6322 = !DILocation(line: 554, column: 12, scope: !6056, inlinedAt: !6061)
!6323 = !DILocation(line: 448, column: 31, scope: !6051, inlinedAt: !6055)
!6324 = !DILocation(line: 448, column: 34, scope: !6051, inlinedAt: !6055)
!6325 = !DILocation(line: 448, column: 14, scope: !6051, inlinedAt: !6055)
!6326 = !DILocation(line: 450, column: 22, scope: !6051, inlinedAt: !6055)
!6327 = !DILocation(line: 450, column: 25, scope: !6051, inlinedAt: !6055)
!6328 = !DILocation(line: 450, column: 30, scope: !6051, inlinedAt: !6055)
!6329 = !DILocation(line: 450, column: 36, scope: !6051, inlinedAt: !6055)
!6330 = !DILocation(line: 450, column: 8, scope: !6051, inlinedAt: !6055)
!6331 = !DILocation(line: 450, column: 6, scope: !6051, inlinedAt: !6055)
!6332 = !DILocation(line: 451, column: 9, scope: !6051, inlinedAt: !6055)
!6333 = !DILocation(line: 552, column: 3, scope: !6056, inlinedAt: !6061)
!6334 = !DILocation(line: 557, column: 19, scope: !6058, inlinedAt: !6061)
!6335 = !DILocation(line: 557, column: 25, scope: !6058, inlinedAt: !6061)
!6336 = !DILocation(line: 557, column: 9, scope: !6058, inlinedAt: !6061)
!6337 = !DILocation(line: 557, column: 2, scope: !6058, inlinedAt: !6061)
!6338 = !DILocation(line: 558, column: 1, scope: !6058, inlinedAt: !6061)
!6339 = !DILocation(line: 591, column: 3, scope: !6062)
!6340 = !DILocation(line: 592, column: 19, scope: !6049)
!6341 = !DILocation(line: 592, column: 26, scope: !6049)
!6342 = !DILocation(line: 592, column: 9, scope: !6049)
!6343 = !DILocation(line: 592, column: 2, scope: !6049)
!6344 = !DILocation(line: 593, column: 1, scope: !6049)
!6345 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6346, file: !6346, line: 52, type: !6347, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6346 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!564, !564}
!6349 = !DILocalVariable(name: "overflow", arg: 1, scope: !6345, file: !6346, line: 52, type: !564)
!6350 = !DILocation(line: 52, column: 60, scope: !6345)
!6351 = !DILocation(line: 54, column: 9, scope: !6345)
!6352 = !DILocation(line: 54, column: 2, scope: !6345)
!6353 = distinct !DISubprogram(name: "get_order", scope: !6354, file: !6354, line: 29, type: !6355, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6354 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6355 = !DISubroutineType(types: !6356)
!6356 = !{!107, !398}
!6357 = !DILocalVariable(name: "x", arg: 1, scope: !6358, file: !6359, line: 366, type: !496)
!6358 = distinct !DISubprogram(name: "fls64", scope: !6359, file: !6359, line: 366, type: !6360, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6359 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6360 = !DISubroutineType(types: !6361)
!6361 = !{!107, !496}
!6362 = !DILocation(line: 366, column: 40, scope: !6358, inlinedAt: !6363)
!6363 = distinct !DILocation(line: 46, column: 9, scope: !6353)
!6364 = !DILocalVariable(name: "bitpos", scope: !6358, file: !6359, line: 368, type: !107)
!6365 = !DILocation(line: 368, column: 6, scope: !6358, inlinedAt: !6363)
!6366 = !DILocalVariable(name: "size", arg: 1, scope: !6353, file: !6354, line: 29, type: !398)
!6367 = !DILocation(line: 29, column: 63, scope: !6353)
!6368 = !DILocation(line: 31, column: 27, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6353, file: !6354, line: 31, column: 6)
!6370 = !DILocation(line: 31, column: 6, scope: !6369)
!6371 = !DILocation(line: 31, column: 6, scope: !6353)
!6372 = !DILocation(line: 32, column: 8, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6374, file: !6354, line: 32, column: 7)
!6374 = distinct !DILexicalBlock(scope: !6369, file: !6354, line: 31, column: 34)
!6375 = !DILocation(line: 32, column: 7, scope: !6374)
!6376 = !DILocation(line: 33, column: 4, scope: !6373)
!6377 = !DILocation(line: 35, column: 7, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6374, file: !6354, line: 35, column: 7)
!6379 = !DILocation(line: 35, column: 12, scope: !6378)
!6380 = !DILocation(line: 35, column: 7, scope: !6374)
!6381 = !DILocation(line: 36, column: 4, scope: !6378)
!6382 = !DILocation(line: 38, column: 10, scope: !6374)
!6383 = !DILocation(line: 38, column: 28, scope: !6374)
!6384 = !DILocation(line: 38, column: 41, scope: !6374)
!6385 = !DILocation(line: 38, column: 3, scope: !6374)
!6386 = !DILocation(line: 41, column: 6, scope: !6353)
!6387 = !DILocation(line: 42, column: 7, scope: !6353)
!6388 = !DILocation(line: 46, column: 15, scope: !6353)
!6389 = !DILocation(line: 374, column: 2, scope: !6358, inlinedAt: !6363)
!6390 = !DILocation(line: 376, column: 14, scope: !6358, inlinedAt: !6363)
!6391 = !{i32 444678}
!6392 = !DILocation(line: 377, column: 9, scope: !6358, inlinedAt: !6363)
!6393 = !DILocation(line: 377, column: 16, scope: !6358, inlinedAt: !6363)
!6394 = !DILocation(line: 46, column: 2, scope: !6353)
!6395 = !DILocation(line: 48, column: 1, scope: !6353)
!6396 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6397, file: !6397, line: 30, type: !6398, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6397 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6398 = !DISubroutineType(types: !6399)
!6399 = !{!107, !495}
!6400 = !DILocation(line: 366, column: 40, scope: !6358, inlinedAt: !6401)
!6401 = distinct !DILocation(line: 32, column: 9, scope: !6396)
!6402 = !DILocation(line: 368, column: 6, scope: !6358, inlinedAt: !6401)
!6403 = !DILocalVariable(name: "n", arg: 1, scope: !6396, file: !6397, line: 30, type: !495)
!6404 = !DILocation(line: 30, column: 21, scope: !6396)
!6405 = !DILocation(line: 32, column: 15, scope: !6396)
!6406 = !DILocation(line: 374, column: 2, scope: !6358, inlinedAt: !6401)
!6407 = !DILocation(line: 376, column: 14, scope: !6358, inlinedAt: !6401)
!6408 = !DILocation(line: 377, column: 9, scope: !6358, inlinedAt: !6401)
!6409 = !DILocation(line: 377, column: 16, scope: !6358, inlinedAt: !6401)
!6410 = !DILocation(line: 32, column: 18, scope: !6396)
!6411 = !DILocation(line: 32, column: 2, scope: !6396)
!6412 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6413, file: !6413, line: 137, type: !6414, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6413 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6414 = !DISubroutineType(types: !6415)
!6415 = !{!258, !1008, !2250, !395, !256}
!6416 = !DILocalVariable(name: "s", arg: 1, scope: !6412, file: !6413, line: 137, type: !1008)
!6417 = !DILocation(line: 137, column: 54, scope: !6412)
!6418 = !DILocalVariable(name: "object", arg: 2, scope: !6412, file: !6413, line: 137, type: !2250)
!6419 = !DILocation(line: 137, column: 69, scope: !6412)
!6420 = !DILocalVariable(name: "size", arg: 3, scope: !6412, file: !6413, line: 138, type: !395)
!6421 = !DILocation(line: 138, column: 12, scope: !6412)
!6422 = !DILocalVariable(name: "flags", arg: 4, scope: !6412, file: !6413, line: 138, type: !256)
!6423 = !DILocation(line: 138, column: 24, scope: !6412)
!6424 = !DILocation(line: 140, column: 17, scope: !6412)
!6425 = !DILocation(line: 140, column: 2, scope: !6412)
!6426 = distinct !DISubprogram(name: "kref_put", scope: !275, file: !275, line: 62, type: !6427, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{!107, !4196, !4193}
!6429 = !DILocalVariable(name: "kref", arg: 1, scope: !6426, file: !275, line: 62, type: !4196)
!6430 = !DILocation(line: 62, column: 41, scope: !6426)
!6431 = !DILocalVariable(name: "release", arg: 2, scope: !6426, file: !275, line: 62, type: !4193)
!6432 = !DILocation(line: 62, column: 54, scope: !6426)
!6433 = !DILocation(line: 64, column: 29, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6426, file: !275, line: 64, column: 6)
!6435 = !DILocation(line: 64, column: 35, scope: !6434)
!6436 = !DILocation(line: 64, column: 6, scope: !6434)
!6437 = !DILocation(line: 64, column: 6, scope: !6426)
!6438 = !DILocation(line: 65, column: 3, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6434, file: !275, line: 64, column: 46)
!6440 = !DILocation(line: 65, column: 11, scope: !6439)
!6441 = !DILocation(line: 66, column: 3, scope: !6439)
!6442 = !DILocation(line: 68, column: 2, scope: !6426)
!6443 = !DILocation(line: 69, column: 1, scope: !6426)
!6444 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !248, file: !248, line: 331, type: !6445, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{!564, !6447}
!6447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!6448 = !DILocalVariable(name: "r", arg: 1, scope: !6444, file: !248, line: 331, type: !6447)
!6449 = !DILocation(line: 331, column: 67, scope: !6444)
!6450 = !DILocation(line: 333, column: 33, scope: !6444)
!6451 = !DILocation(line: 333, column: 9, scope: !6444)
!6452 = !DILocation(line: 333, column: 2, scope: !6444)
!6453 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !248, file: !248, line: 313, type: !6454, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!564, !6447, !782}
!6456 = !DILocalVariable(name: "r", arg: 1, scope: !6453, file: !248, line: 313, type: !6447)
!6457 = !DILocation(line: 313, column: 69, scope: !6453)
!6458 = !DILocalVariable(name: "oldp", arg: 2, scope: !6453, file: !248, line: 313, type: !782)
!6459 = !DILocation(line: 313, column: 77, scope: !6453)
!6460 = !DILocation(line: 315, column: 36, scope: !6453)
!6461 = !DILocation(line: 315, column: 39, scope: !6453)
!6462 = !DILocation(line: 315, column: 9, scope: !6453)
!6463 = !DILocation(line: 315, column: 2, scope: !6453)
!6464 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !248, file: !248, line: 270, type: !6465, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6465 = !DISubroutineType(types: !6466)
!6466 = !{!564, !107, !6447, !782}
!6467 = !DILocalVariable(name: "i", arg: 1, scope: !6468, file: !6469, line: 188, type: !107)
!6468 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6469, file: !6469, line: 188, type: !6470, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6469 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6470 = !DISubroutineType(types: !6471)
!6471 = !{!107, !107, !6472}
!6472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!6473 = !DILocation(line: 188, column: 54, scope: !6468, inlinedAt: !6474)
!6474 = distinct !DILocation(line: 221, column: 9, scope: !6475, inlinedAt: !6477)
!6475 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6476, file: !6476, line: 218, type: !6470, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6476 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6477 = distinct !DILocation(line: 272, column: 12, scope: !6464)
!6478 = !DILocalVariable(name: "v", arg: 2, scope: !6468, file: !6469, line: 188, type: !6472)
!6479 = !DILocation(line: 188, column: 67, scope: !6468, inlinedAt: !6474)
!6480 = !DILocalVariable(name: "__ret", scope: !6481, file: !6469, line: 190, type: !107)
!6481 = distinct !DILexicalBlock(scope: !6468, file: !6469, line: 190, column: 9)
!6482 = !DILocation(line: 190, column: 9, scope: !6481, inlinedAt: !6474)
!6483 = !DILocalVariable(name: "v", arg: 1, scope: !6484, file: !6485, line: 99, type: !6488)
!6484 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6485, file: !6485, line: 99, type: !6486, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6485 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6486 = !DISubroutineType(types: !6487)
!6487 = !{null, !6488, !395}
!6488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6489, size: 64)
!6489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6490)
!6490 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6491 = !DILocation(line: 99, column: 79, scope: !6484, inlinedAt: !6492)
!6492 = distinct !DILocation(line: 220, column: 2, scope: !6475, inlinedAt: !6477)
!6493 = !DILocalVariable(name: "size", arg: 2, scope: !6484, file: !6485, line: 99, type: !395)
!6494 = !DILocation(line: 99, column: 89, scope: !6484, inlinedAt: !6492)
!6495 = !DILocalVariable(name: "i", arg: 1, scope: !6475, file: !6476, line: 218, type: !107)
!6496 = !DILocation(line: 218, column: 30, scope: !6475, inlinedAt: !6477)
!6497 = !DILocalVariable(name: "v", arg: 2, scope: !6475, file: !6476, line: 218, type: !6472)
!6498 = !DILocation(line: 218, column: 43, scope: !6475, inlinedAt: !6477)
!6499 = !DILocalVariable(name: "i", arg: 1, scope: !6464, file: !248, line: 270, type: !107)
!6500 = !DILocation(line: 270, column: 61, scope: !6464)
!6501 = !DILocalVariable(name: "r", arg: 2, scope: !6464, file: !248, line: 270, type: !6447)
!6502 = !DILocation(line: 270, column: 76, scope: !6464)
!6503 = !DILocalVariable(name: "oldp", arg: 3, scope: !6464, file: !248, line: 270, type: !782)
!6504 = !DILocation(line: 270, column: 84, scope: !6464)
!6505 = !DILocalVariable(name: "old", scope: !6464, file: !248, line: 272, type: !107)
!6506 = !DILocation(line: 272, column: 6, scope: !6464)
!6507 = !DILocation(line: 272, column: 37, scope: !6464)
!6508 = !DILocation(line: 272, column: 41, scope: !6464)
!6509 = !DILocation(line: 272, column: 44, scope: !6464)
!6510 = !DILocation(line: 220, column: 31, scope: !6475, inlinedAt: !6477)
!6511 = !DILocation(line: 101, column: 20, scope: !6484, inlinedAt: !6492)
!6512 = !DILocation(line: 101, column: 23, scope: !6484, inlinedAt: !6492)
!6513 = !DILocation(line: 101, column: 2, scope: !6484, inlinedAt: !6492)
!6514 = !DILocation(line: 102, column: 2, scope: !6484, inlinedAt: !6492)
!6515 = !DILocation(line: 221, column: 39, scope: !6475, inlinedAt: !6477)
!6516 = !DILocation(line: 221, column: 42, scope: !6475, inlinedAt: !6477)
!6517 = !{i32 -2146406342}
!6518 = !DILocation(line: 274, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6464, file: !248, line: 274, column: 6)
!6520 = !DILocation(line: 274, column: 6, scope: !6464)
!6521 = !DILocation(line: 275, column: 11, scope: !6519)
!6522 = !DILocation(line: 275, column: 4, scope: !6519)
!6523 = !DILocation(line: 275, column: 9, scope: !6519)
!6524 = !DILocation(line: 275, column: 3, scope: !6519)
!6525 = !DILocation(line: 277, column: 6, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6464, file: !248, line: 277, column: 6)
!6527 = !DILocation(line: 277, column: 13, scope: !6526)
!6528 = !DILocation(line: 277, column: 10, scope: !6526)
!6529 = !DILocation(line: 277, column: 6, scope: !6464)
!6530 = !DILocation(line: 278, column: 3, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6526, file: !248, line: 277, column: 16)
!6532 = !{i32 -2144271151}
!6533 = !DILocation(line: 279, column: 3, scope: !6531)
!6534 = !DILocation(line: 282, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6464, file: !248, line: 282, column: 6)
!6536 = !DILocation(line: 282, column: 6, scope: !6464)
!6537 = !DILocation(line: 283, column: 26, scope: !6535)
!6538 = !DILocation(line: 283, column: 3, scope: !6535)
!6539 = !DILocation(line: 285, column: 2, scope: !6464)
!6540 = !DILocation(line: 286, column: 1, scope: !6464)
!6541 = distinct !DISubprogram(name: "kasan_check_write", scope: !6542, file: !6542, line: 38, type: !6543, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6542 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6543 = !DISubroutineType(types: !6544)
!6544 = !{!564, !6488, !5}
!6545 = !DILocalVariable(name: "p", arg: 1, scope: !6541, file: !6542, line: 38, type: !6488)
!6546 = !DILocation(line: 38, column: 59, scope: !6541)
!6547 = !DILocalVariable(name: "size", arg: 2, scope: !6541, file: !6542, line: 38, type: !5)
!6548 = !DILocation(line: 38, column: 75, scope: !6541)
!6549 = !DILocation(line: 40, column: 2, scope: !6541)
!6550 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6551, file: !6551, line: 178, type: !6552, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6551 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6552 = !DISubroutineType(types: !6553)
!6553 = !{null, !6488, !395, !107}
!6554 = !DILocalVariable(name: "ptr", arg: 1, scope: !6550, file: !6551, line: 178, type: !6488)
!6555 = !DILocation(line: 178, column: 60, scope: !6550)
!6556 = !DILocalVariable(name: "size", arg: 2, scope: !6550, file: !6551, line: 178, type: !395)
!6557 = !DILocation(line: 178, column: 72, scope: !6550)
!6558 = !DILocalVariable(name: "type", arg: 3, scope: !6550, file: !6551, line: 179, type: !107)
!6559 = !DILocation(line: 179, column: 15, scope: !6550)
!6560 = !DILocation(line: 179, column: 23, scope: !6550)
!6561 = distinct !DISubprogram(name: "drm_plane_get_damage_clips", scope: !230, file: !230, line: 859, type: !6562, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !321)
!6562 = !DISubroutineType(types: !6563)
!6563 = !{!5383, !5342}
!6564 = !DILocalVariable(name: "state", arg: 1, scope: !6561, file: !230, line: 859, type: !5342)
!6565 = !DILocation(line: 859, column: 58, scope: !6561)
!6566 = !DILocation(line: 861, column: 35, scope: !6561)
!6567 = !DILocation(line: 861, column: 41, scope: !6561)
!6568 = !DILocation(line: 861, column: 44, scope: !6561)
!6569 = !DILocation(line: 861, column: 51, scope: !6561)
!6570 = !DILocation(line: 861, column: 34, scope: !6561)
!6571 = !DILocation(line: 862, column: 6, scope: !6561)
!6572 = !DILocation(line: 862, column: 13, scope: !6561)
!6573 = !DILocation(line: 862, column: 30, scope: !6561)
!6574 = !DILocation(line: 861, column: 9, scope: !6561)
!6575 = !DILocation(line: 861, column: 2, scope: !6561)
