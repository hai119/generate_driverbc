; ModuleID = '../bcout/drivers/gpu/drm/drm_mode_object.llvm.bc'
source_filename = "drivers/gpu/drm/drm_mode_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.drm_driver = type { i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*)*, void (%struct.drm_device*)*, void (%struct.drm_device*)*, i32 (i32, i8*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*)*, void (%struct.drm_device*)*, void (%struct.drm_device*, %struct.drm_file*, i1)*, void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_minor*)*, void (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)*, void (%struct.drm_gem_object*, %struct.drm_file*)*, %struct.drm_gem_object* (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32*)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf*)*, i32 (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*)*, i8* (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)*, i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)*, i32 (%struct.drm_file*, %struct.drm_device*, i32, i64*)*, i32 (%struct.drm_file*, %struct.drm_device*, i32)*, %struct.vm_operations_struct*, i32, i32, i32, i8*, i8*, i8*, i32, %struct.drm_ioctl_desc*, i32, %struct.file_operations*, %struct.list_head, i32 (%struct.drm_device*)*, void (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, i8*, %struct.drm_file*)*, i32 (%struct.drm_device*)*, i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)*, void (%struct.drm_device*, i32)*, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.drm_master*, %struct.pid*, i32, %struct.list_head, %struct.drm_minor*, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, %struct.file*, i8*, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_gem_object = type opaque
%struct.dma_buf = type opaque
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.dma_buf_attachment = type opaque
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_ioctl_desc = type opaque
%struct.drm_minor = type { i32, i32, %struct.device*, %struct.drm_device*, %struct.dentry*, %struct.list_head, %struct.mutex }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.drm_mode_object = type { i32, i32, %struct.drm_object_properties*, %struct.kref, void (%struct.kref*)* }
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_format_info = type opaque
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, i64*, %struct.drm_device*, %struct.list_head }
%struct.drm_atomic_state = type { %struct.kref, %struct.drm_device*, i8, %struct.__drm_planes_state*, %struct.__drm_crtcs_state*, i32, %struct.__drm_connnectors_state*, i32, %struct.__drm_private_objs_state*, %struct.drm_modeset_acquire_ctx*, %struct.drm_crtc_commit*, %struct.work_struct }
%struct.__drm_planes_state = type { %struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_plane_state*, %struct.drm_plane_state* }
%struct.drm_plane = type { %struct.drm_device*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, i32*, i32, i8, i64*, i32, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_framebuffer*, %struct.drm_plane_funcs*, %struct.drm_object_properties, i32, i32, %struct.drm_plane_helper_funcs*, %struct.drm_plane_state*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_crtc = type { %struct.drm_device*, %struct.device_node*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, %struct.drm_plane*, %struct.drm_plane*, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, %struct.drm_crtc_funcs*, i32, i16*, %struct.drm_crtc_helper_funcs*, %struct.drm_object_properties, %struct.drm_crtc_state*, %struct.list_head, %struct.spinlock, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], %struct.drm_self_refresh_data* }
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
%struct.drm_connector_state = type { %struct.drm_connector*, %struct.drm_crtc*, %struct.drm_encoder*, i32, %struct.drm_atomic_state*, %struct.drm_crtc_commit*, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, %struct.drm_writeback_job*, i8, i8, %struct.drm_property_blob* }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type opaque
%struct.drm_property_blob = type { %struct.drm_mode_object, %struct.drm_device*, %struct.list_head, %struct.list_head, i64, i8* }
%struct.drm_tile_group = type { %struct.kref, %struct.drm_device*, i32, [8 x i8] }
%struct.hdr_sink_metadata = type { i32, %union.anon.66 }
%union.anon.66 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_pending_vblank_event = type opaque
%struct.drm_crtc_helper_funcs = type opaque
%struct.drm_crtc_state = type { %struct.drm_crtc*, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, i32, i8, i8, i8, %struct.drm_pending_vblank_event*, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.drm_crtc_crc = type { %struct.spinlock, i8*, i8, i8, %struct.drm_crtc_crc_entry*, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.drm_self_refresh_data = type opaque
%struct.drm_plane_funcs = type { i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_plane*)*, void (%struct.drm_plane*)*, i32 (%struct.drm_plane*, %struct.drm_property*, i64)*, %struct.drm_plane_state* (%struct.drm_plane*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_plane*)*, void (%struct.drm_plane*)*, void (%struct.drm_printer*, %struct.drm_plane_state*)*, i1 (%struct.drm_plane*, i32, i64)* }
%struct.drm_plane_helper_funcs = type opaque
%struct.drm_plane_state = type { %struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.dma_fence*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.drm_property_blob*, %struct.drm_rect, %struct.drm_rect, i8, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.dma_fence = type opaque
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { %struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_crtc_state*, %struct.drm_crtc_state*, %struct.drm_crtc_commit*, i32*, i64 }
%struct.__drm_connnectors_state = type { %struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_connector_state*, %struct.drm_connector_state*, i32* }
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
%struct.drm_mode_obj_get_properties = type { i64, i64, i32, i32, i32 }
%struct.drm_mode_obj_set_property = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_mode_object.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"OBJ ID: %d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [153 x i8] c"Failed to attach object property (type: 0x%x). Please increase DRM_OBJECT_MAX_PROPERTY by 1 for each time you see this message on the same object type.\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__drm_mode_object_add(%struct.drm_device* %dev, %struct.drm_mode_object* %obj, i32 %obj_type, i1 zeroext %register_obj, void (%struct.kref*)* %obj_free_cb) #0 !dbg !5530 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %obj_type.addr = alloca i32, align 4
  %register_obj.addr = alloca i8, align 1
  %obj_free_cb.addr = alloca void (%struct.kref*)*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i32 %obj_type, i32* %obj_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %obj_type.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  %frombool = zext i1 %register_obj to i8
  store i8 %frombool, i8* %register_obj.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %register_obj.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store void (%struct.kref*)* %obj_free_cb, void (%struct.kref*)** %obj_free_cb.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %obj_free_cb.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5544, metadata !DIExpression()), !dbg !5545
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5546, metadata !DIExpression()), !dbg !5548
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5548
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !5548
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5548
  %load = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 0, !dbg !5548
  %2 = load i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, i64)** %load, align 8, !dbg !5548
  %tobool = icmp ne i32 (%struct.drm_device*, i64)* %2, null, !dbg !5548
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5548

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5548
  %registered = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 9, !dbg !5548
  %4 = load i8, i8* %registered, align 8, !dbg !5548
  %tobool1 = trunc i8 %4 to i1, !dbg !5548
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5548

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load void (%struct.kref*)*, void (%struct.kref*)** %obj_free_cb.addr, align 8, !dbg !5548
  %tobool2 = icmp ne void (%struct.kref*)* %5, null, !dbg !5548
  %lnot = xor i1 %tobool2, true, !dbg !5548
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5549
  %lnot3 = xor i1 %6, true, !dbg !5548
  %lnot4 = xor i1 %lnot3, true, !dbg !5548
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5548
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5548
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5550
  %tobool5 = icmp ne i32 %7, 0, !dbg !5550
  %lnot6 = xor i1 %tobool5, true, !dbg !5550
  %lnot8 = xor i1 %lnot6, true, !dbg !5550
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5550
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5550
  %tobool10 = icmp ne i64 %conv, 0, !dbg !5550
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5548

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5550

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !5552

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !5554

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !5552

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 45, i32 2305, i64 12) #4, !dbg !5556, !srcloc !5558
  br label %do.end13, !dbg !5556

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 253) #4, !dbg !5559, !srcloc !5561
  br label %do.body14, !dbg !5552

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5562

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5552

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !5552

if.end:                                           ; preds = %do.end16, %land.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !5548
  %tobool17 = icmp ne i32 %8, 0, !dbg !5548
  %lnot18 = xor i1 %tobool17, true, !dbg !5548
  %lnot20 = xor i1 %lnot18, true, !dbg !5548
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5548
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5548
  store i64 %conv22, i64* %tmp, align 8, !dbg !5550
  %9 = load i64, i64* %tmp, align 8, !dbg !5548
  %10 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5564
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 35, !dbg !5565
  %idr_mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 3, !dbg !5566
  call void @mutex_lock(%struct.mutex* %idr_mutex) #5, !dbg !5567
  %11 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5568
  %mode_config23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 35, !dbg !5569
  %object_idr = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config23, i32 0, i32 4, !dbg !5570
  %12 = load i8, i8* %register_obj.addr, align 1, !dbg !5571
  %tobool24 = trunc i8 %12 to i1, !dbg !5571
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !5571

cond.true:                                        ; preds = %if.end
  %13 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5572
  br label %cond.end, !dbg !5571

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5571

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.drm_mode_object* [ %13, %cond.true ], [ null, %cond.false ], !dbg !5571
  %14 = bitcast %struct.drm_mode_object* %cond to i8*, !dbg !5571
  %call = call i32 @idr_alloc(%struct.idr* %object_idr, i8* %14, i32 1, i32 0, i32 3264) #5, !dbg !5573
  store i32 %call, i32* %ret, align 4, !dbg !5574
  %15 = load i32, i32* %ret, align 4, !dbg !5575
  %cmp = icmp sge i32 %15, 0, !dbg !5577
  br i1 %cmp, label %if.then27, label %if.end31, !dbg !5578

if.then27:                                        ; preds = %cond.end
  %16 = load i32, i32* %ret, align 4, !dbg !5579
  %17 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5581
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %17, i32 0, i32 0, !dbg !5582
  store i32 %16, i32* %id, align 8, !dbg !5583
  %18 = load i32, i32* %obj_type.addr, align 4, !dbg !5584
  %19 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5585
  %type = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %19, i32 0, i32 1, !dbg !5586
  store i32 %18, i32* %type, align 4, !dbg !5587
  %20 = load void (%struct.kref*)*, void (%struct.kref*)** %obj_free_cb.addr, align 8, !dbg !5588
  %tobool28 = icmp ne void (%struct.kref*)* %20, null, !dbg !5588
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5590

if.then29:                                        ; preds = %if.then27
  %21 = load void (%struct.kref*)*, void (%struct.kref*)** %obj_free_cb.addr, align 8, !dbg !5591
  %22 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5593
  %free_cb = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %22, i32 0, i32 4, !dbg !5594
  store void (%struct.kref*)* %21, void (%struct.kref*)** %free_cb, align 8, !dbg !5595
  %23 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5596
  %refcount = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %23, i32 0, i32 3, !dbg !5597
  call void @kref_init(%struct.kref* %refcount) #5, !dbg !5598
  br label %if.end30, !dbg !5599

if.end30:                                         ; preds = %if.then29, %if.then27
  br label %if.end31, !dbg !5600

if.end31:                                         ; preds = %if.end30, %cond.end
  %24 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5601
  %mode_config32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 35, !dbg !5602
  %idr_mutex33 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config32, i32 0, i32 3, !dbg !5603
  call void @mutex_unlock(%struct.mutex* %idr_mutex33) #5, !dbg !5604
  %25 = load i32, i32* %ret, align 4, !dbg !5605
  %cmp34 = icmp slt i32 %25, 0, !dbg !5606
  br i1 %cmp34, label %cond.true36, label %cond.false37, !dbg !5605

cond.true36:                                      ; preds = %if.end31
  %26 = load i32, i32* %ret, align 4, !dbg !5607
  br label %cond.end38, !dbg !5605

cond.false37:                                     ; preds = %if.end31
  br label %cond.end38, !dbg !5605

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i32 [ %26, %cond.true36 ], [ 0, %cond.false37 ], !dbg !5605
  ret i32 %cond39, !dbg !5608
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @idr_alloc(%struct.idr*, i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !5609 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5612
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5613
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #5, !dbg !5614
  ret void, !dbg !5615
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_object_add(%struct.drm_device* %dev, %struct.drm_mode_object* %obj, i32 %obj_type) #0 !dbg !5616 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %obj_type.addr = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  store i32 %obj_type, i32* %obj_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %obj_type.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5625
  %1 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5626
  %2 = load i32, i32* %obj_type.addr, align 4, !dbg !5627
  %call = call i32 @__drm_mode_object_add(%struct.drm_device* %0, %struct.drm_mode_object* %1, i32 %2, i1 zeroext true, void (%struct.kref*)* null) #5, !dbg !5628
  ret i32 %call, !dbg !5629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mode_object_register(%struct.drm_device* %dev, %struct.drm_mode_object* %obj) #0 !dbg !5630 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5637
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 35, !dbg !5638
  %idr_mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 3, !dbg !5639
  call void @mutex_lock(%struct.mutex* %idr_mutex) #5, !dbg !5640
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5641
  %mode_config1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 35, !dbg !5642
  %object_idr = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config1, i32 0, i32 4, !dbg !5643
  %2 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5644
  %3 = bitcast %struct.drm_mode_object* %2 to i8*, !dbg !5644
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5645
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %4, i32 0, i32 0, !dbg !5646
  %5 = load i32, i32* %id, align 8, !dbg !5646
  %conv = zext i32 %5 to i64, !dbg !5645
  %call = call i8* @idr_replace(%struct.idr* %object_idr, i8* %3, i64 %conv) #5, !dbg !5647
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5648
  %mode_config2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 35, !dbg !5649
  %idr_mutex3 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config2, i32 0, i32 3, !dbg !5650
  call void @mutex_unlock(%struct.mutex* %idr_mutex3) #5, !dbg !5651
  ret void, !dbg !5652
}

; Function Attrs: noredzone
declare dso_local i8* @idr_replace(%struct.idr*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mode_object_unregister(%struct.drm_device* %dev, %struct.drm_mode_object* %object) #0 !dbg !5653 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %object.addr = alloca %struct.drm_mode_object*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  store %struct.drm_mode_object* %object, %struct.drm_mode_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %object.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5658, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5660
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !5660
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5660
  %load = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 0, !dbg !5660
  %2 = load i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, i64)** %load, align 8, !dbg !5660
  %tobool = icmp ne i32 (%struct.drm_device*, i64)* %2, null, !dbg !5660
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5660

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5660
  %registered = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 9, !dbg !5660
  %4 = load i8, i8* %registered, align 8, !dbg !5660
  %tobool1 = trunc i8 %4 to i1, !dbg !5660
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5660

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.drm_mode_object*, %struct.drm_mode_object** %object.addr, align 8, !dbg !5660
  %free_cb = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %5, i32 0, i32 4, !dbg !5660
  %6 = load void (%struct.kref*)*, void (%struct.kref*)** %free_cb, align 8, !dbg !5660
  %tobool2 = icmp ne void (%struct.kref*)* %6, null, !dbg !5660
  %lnot = xor i1 %tobool2, true, !dbg !5660
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5661
  %lnot3 = xor i1 %7, true, !dbg !5660
  %lnot4 = xor i1 %lnot3, true, !dbg !5660
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5660
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5660
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !5662
  %tobool5 = icmp ne i32 %8, 0, !dbg !5662
  %lnot6 = xor i1 %tobool5, true, !dbg !5662
  %lnot8 = xor i1 %lnot6, true, !dbg !5662
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5662
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5662
  %tobool10 = icmp ne i64 %conv, 0, !dbg !5662
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5660

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5662

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !5664

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !5666

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !5664

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 107, i32 2305, i64 12) #4, !dbg !5668, !srcloc !5670
  br label %do.end13, !dbg !5668

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 254) #4, !dbg !5671, !srcloc !5673
  br label %do.body14, !dbg !5664

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5674

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5664

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !5664

if.end:                                           ; preds = %do.end16, %land.end
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !5660
  %tobool17 = icmp ne i32 %9, 0, !dbg !5660
  %lnot18 = xor i1 %tobool17, true, !dbg !5660
  %lnot20 = xor i1 %lnot18, true, !dbg !5660
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5660
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5660
  store i64 %conv22, i64* %tmp, align 8, !dbg !5662
  %10 = load i64, i64* %tmp, align 8, !dbg !5660
  %11 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5676
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 35, !dbg !5677
  %idr_mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 3, !dbg !5678
  call void @mutex_lock(%struct.mutex* %idr_mutex) #5, !dbg !5679
  %12 = load %struct.drm_mode_object*, %struct.drm_mode_object** %object.addr, align 8, !dbg !5680
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %12, i32 0, i32 0, !dbg !5682
  %13 = load i32, i32* %id, align 8, !dbg !5682
  %tobool23 = icmp ne i32 %13, 0, !dbg !5680
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !5683

if.then24:                                        ; preds = %if.end
  %14 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5684
  %mode_config25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 35, !dbg !5686
  %object_idr = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config25, i32 0, i32 4, !dbg !5687
  %15 = load %struct.drm_mode_object*, %struct.drm_mode_object** %object.addr, align 8, !dbg !5688
  %id26 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %15, i32 0, i32 0, !dbg !5689
  %16 = load i32, i32* %id26, align 8, !dbg !5689
  %conv27 = zext i32 %16 to i64, !dbg !5688
  %call = call i8* @idr_remove(%struct.idr* %object_idr, i64 %conv27) #5, !dbg !5690
  %17 = load %struct.drm_mode_object*, %struct.drm_mode_object** %object.addr, align 8, !dbg !5691
  %id28 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %17, i32 0, i32 0, !dbg !5692
  store i32 0, i32* %id28, align 8, !dbg !5693
  br label %if.end29, !dbg !5694

if.end29:                                         ; preds = %if.then24, %if.end
  %18 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5695
  %mode_config30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 35, !dbg !5696
  %idr_mutex31 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config30, i32 0, i32 3, !dbg !5697
  call void @mutex_unlock(%struct.mutex* %idr_mutex31) #5, !dbg !5698
  ret void, !dbg !5699
}

; Function Attrs: noredzone
declare dso_local i8* @idr_remove(%struct.idr*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_mode_object_lease_required(i32 %type) #0 !dbg !5700 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load i32, i32* %type.addr, align 4, !dbg !5705
  switch i32 %0, label %sw.default [
    i32 -858993460, label %sw.bb
    i32 -1061109568, label %sw.bb
    i32 -286331154, label %sw.bb
  ], !dbg !5706

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !5707
  br label %return, !dbg !5707

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5709
  br label %return, !dbg !5709

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1, !dbg !5710
  ret i1 %1, !dbg !5710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_mode_object* @__drm_mode_object_find(%struct.drm_device* %dev, %struct.drm_file* %file_priv, i32 %id, i32 %type) #0 !dbg !5711 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %id.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %obj = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5714, metadata !DIExpression()), !dbg !5715
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj, metadata !5722, metadata !DIExpression()), !dbg !5723
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %obj, align 8, !dbg !5723
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5724
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 35, !dbg !5725
  %idr_mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 3, !dbg !5726
  call void @mutex_lock(%struct.mutex* %idr_mutex) #5, !dbg !5727
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5728
  %mode_config1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 35, !dbg !5729
  %object_idr = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config1, i32 0, i32 4, !dbg !5730
  %2 = load i32, i32* %id.addr, align 4, !dbg !5731
  %conv = zext i32 %2 to i64, !dbg !5731
  %call = call i8* @idr_find(%struct.idr* %object_idr, i64 %conv) #5, !dbg !5732
  %3 = bitcast i8* %call to %struct.drm_mode_object*, !dbg !5732
  store %struct.drm_mode_object* %3, %struct.drm_mode_object** %obj, align 8, !dbg !5733
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5734
  %tobool = icmp ne %struct.drm_mode_object* %4, null, !dbg !5734
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5736

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %type.addr, align 4, !dbg !5737
  %cmp = icmp ne i32 %5, 0, !dbg !5738
  br i1 %cmp, label %land.lhs.true3, label %if.end, !dbg !5739

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5740
  %type4 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %6, i32 0, i32 1, !dbg !5741
  %7 = load i32, i32* %type4, align 4, !dbg !5741
  %8 = load i32, i32* %type.addr, align 4, !dbg !5742
  %cmp5 = icmp ne i32 %7, %8, !dbg !5743
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5744

if.then:                                          ; preds = %land.lhs.true3
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %obj, align 8, !dbg !5745
  br label %if.end, !dbg !5746

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %9 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5747
  %tobool7 = icmp ne %struct.drm_mode_object* %9, null, !dbg !5747
  br i1 %tobool7, label %land.lhs.true8, label %if.end13, !dbg !5749

land.lhs.true8:                                   ; preds = %if.end
  %10 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5750
  %id9 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %10, i32 0, i32 0, !dbg !5751
  %11 = load i32, i32* %id9, align 8, !dbg !5751
  %12 = load i32, i32* %id.addr, align 4, !dbg !5752
  %cmp10 = icmp ne i32 %11, %12, !dbg !5753
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5754

if.then12:                                        ; preds = %land.lhs.true8
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %obj, align 8, !dbg !5755
  br label %if.end13, !dbg !5756

if.end13:                                         ; preds = %if.then12, %land.lhs.true8, %if.end
  %13 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5757
  %tobool14 = icmp ne %struct.drm_mode_object* %13, null, !dbg !5757
  br i1 %tobool14, label %land.lhs.true15, label %if.end23, !dbg !5759

land.lhs.true15:                                  ; preds = %if.end13
  %14 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5760
  %type16 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %14, i32 0, i32 1, !dbg !5761
  %15 = load i32, i32* %type16, align 4, !dbg !5761
  %call17 = call zeroext i1 @drm_mode_object_lease_required(i32 %15) #5, !dbg !5762
  br i1 %call17, label %land.lhs.true19, label %if.end23, !dbg !5763

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %16 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5764
  %17 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5765
  %id20 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %17, i32 0, i32 0, !dbg !5766
  %18 = load i32, i32* %id20, align 8, !dbg !5766
  %call21 = call zeroext i1 @_drm_lease_held(%struct.drm_file* %16, i32 %18) #5, !dbg !5767
  br i1 %call21, label %if.end23, label %if.then22, !dbg !5768

if.then22:                                        ; preds = %land.lhs.true19
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %obj, align 8, !dbg !5769
  br label %if.end23, !dbg !5770

if.end23:                                         ; preds = %if.then22, %land.lhs.true19, %land.lhs.true15, %if.end13
  %19 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5771
  %tobool24 = icmp ne %struct.drm_mode_object* %19, null, !dbg !5771
  br i1 %tobool24, label %land.lhs.true25, label %if.end32, !dbg !5773

land.lhs.true25:                                  ; preds = %if.end23
  %20 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5774
  %free_cb = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %20, i32 0, i32 4, !dbg !5775
  %21 = load void (%struct.kref*)*, void (%struct.kref*)** %free_cb, align 8, !dbg !5775
  %tobool26 = icmp ne void (%struct.kref*)* %21, null, !dbg !5774
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !5776

if.then27:                                        ; preds = %land.lhs.true25
  %22 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5777
  %refcount = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %22, i32 0, i32 3, !dbg !5780
  %call28 = call i32 @kref_get_unless_zero(%struct.kref* %refcount) #5, !dbg !5781
  %tobool29 = icmp ne i32 %call28, 0, !dbg !5781
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5782

if.then30:                                        ; preds = %if.then27
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %obj, align 8, !dbg !5783
  br label %if.end31, !dbg !5784

if.end31:                                         ; preds = %if.then30, %if.then27
  br label %if.end32, !dbg !5785

if.end32:                                         ; preds = %if.end31, %land.lhs.true25, %if.end23
  %23 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5786
  %mode_config33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 35, !dbg !5787
  %idr_mutex34 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config33, i32 0, i32 3, !dbg !5788
  call void @mutex_unlock(%struct.mutex* %idr_mutex34) #5, !dbg !5789
  %24 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5790
  ret %struct.drm_mode_object* %24, !dbg !5791
}

; Function Attrs: noredzone
declare dso_local i8* @idr_find(%struct.idr*, i64) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @_drm_lease_held(%struct.drm_file*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_get_unless_zero(%struct.kref* %kref) #0 !dbg !5792 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5797
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5798
  %call = call zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %refcount) #5, !dbg !5799
  %conv = zext i1 %call to i32, !dbg !5799
  ret i32 %conv, !dbg !5800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %dev, %struct.drm_file* %file_priv, i32 %id, i32 %type) #0 !dbg !5801 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %id.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %obj = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj, metadata !5810, metadata !DIExpression()), !dbg !5811
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %obj, align 8, !dbg !5811
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5812
  %1 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5813
  %2 = load i32, i32* %id.addr, align 4, !dbg !5814
  %3 = load i32, i32* %type.addr, align 4, !dbg !5815
  %call = call %struct.drm_mode_object* @__drm_mode_object_find(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3) #5, !dbg !5816
  store %struct.drm_mode_object* %call, %struct.drm_mode_object** %obj, align 8, !dbg !5817
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !5818
  ret %struct.drm_mode_object* %4, !dbg !5819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mode_object_put(%struct.drm_mode_object* %obj) #0 !dbg !5820 {
entry:
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  %0 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5825
  %free_cb = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %0, i32 0, i32 4, !dbg !5827
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %free_cb, align 8, !dbg !5827
  %tobool = icmp ne void (%struct.kref*)* %1, null, !dbg !5825
  br i1 %tobool, label %if.then, label %if.end, !dbg !5828

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5829
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %2, i32 0, i32 0, !dbg !5829
  %3 = load i32, i32* %id, align 8, !dbg !5829
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5829
  %refcount = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %4, i32 0, i32 3, !dbg !5829
  %call = call i32 @kref_read(%struct.kref* %refcount) #5, !dbg !5829
  call void (i32, i8*, ...) @__drm_dbg(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %call) #5, !dbg !5829
  %5 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5831
  %refcount1 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %5, i32 0, i32 3, !dbg !5832
  %6 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5833
  %free_cb2 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %6, i32 0, i32 4, !dbg !5834
  %7 = load void (%struct.kref*)*, void (%struct.kref*)** %free_cb2, align 8, !dbg !5834
  %call3 = call i32 @kref_put(%struct.kref* %refcount1, void (%struct.kref*)* %7) #5, !dbg !5835
  br label %if.end, !dbg !5836

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5837
}

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_read(%struct.kref* %kref) #0 !dbg !5838 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5845
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5846
  %call = call i32 @refcount_read(%struct.refcount_struct* %refcount) #5, !dbg !5847
  ret i32 %call, !dbg !5848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !5849 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5856
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5858
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #5, !dbg !5859
  br i1 %call, label %if.then, label %if.end, !dbg !5860

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5861
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5863
  call void %1(%struct.kref* %2) #5, !dbg !5861
  store i32 1, i32* %retval, align 4, !dbg !5864
  br label %return, !dbg !5864

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5865
  br label %return, !dbg !5865

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5866
  ret i32 %3, !dbg !5866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mode_object_get(%struct.drm_mode_object* %obj) #0 !dbg !5867 {
entry:
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  %0 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5870
  %free_cb = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %0, i32 0, i32 4, !dbg !5872
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %free_cb, align 8, !dbg !5872
  %tobool = icmp ne void (%struct.kref*)* %1, null, !dbg !5870
  br i1 %tobool, label %if.then, label %if.end, !dbg !5873

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5874
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %2, i32 0, i32 0, !dbg !5874
  %3 = load i32, i32* %id, align 8, !dbg !5874
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5874
  %refcount = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %4, i32 0, i32 3, !dbg !5874
  %call = call i32 @kref_read(%struct.kref* %refcount) #5, !dbg !5874
  call void (i32, i8*, ...) @__drm_dbg(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %call) #5, !dbg !5874
  %5 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5876
  %refcount1 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %5, i32 0, i32 3, !dbg !5877
  call void @kref_get(%struct.kref* %refcount1) #5, !dbg !5878
  br label %if.end, !dbg !5879

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5881 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5884
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5885
  call void @refcount_inc(%struct.refcount_struct* %refcount) #5, !dbg !5886
  ret void, !dbg !5887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_object_attach_property(%struct.drm_mode_object* %obj, %struct.drm_property* %property, i64 %init_val) #0 !dbg !5888 {
entry:
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %property.addr = alloca %struct.drm_property*, align 8
  %init_val.addr = alloca i64, align 8
  %count = alloca i32, align 4
  %dev = alloca %struct.drm_device*, align 8
  %connector = alloca %struct.drm_connector*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_connector*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  %__ret_warn_on67 = alloca i32, align 4
  %tmp92 = alloca i64, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store %struct.drm_property* %property, %struct.drm_property** %property.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property** %property.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  store i64 %init_val, i64* %init_val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %init_val.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5897, metadata !DIExpression()), !dbg !5898
  %0 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5899
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %0, i32 0, i32 2, !dbg !5900
  %1 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !5900
  %count1 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %1, i32 0, i32 0, !dbg !5901
  %2 = load i32, i32* %count1, align 8, !dbg !5901
  store i32 %2, i32* %count, align 4, !dbg !5898
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5902, metadata !DIExpression()), !dbg !5903
  %3 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !5904
  %dev2 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %3, i32 0, i32 6, !dbg !5905
  %4 = load %struct.drm_device*, %struct.drm_device** %dev2, align 8, !dbg !5905
  store %struct.drm_device* %4, %struct.drm_device** %dev, align 8, !dbg !5903
  %5 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5906
  %type = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %5, i32 0, i32 1, !dbg !5908
  %6 = load i32, i32* %type, align 4, !dbg !5908
  %cmp = icmp eq i32 %6, -1061109568, !dbg !5909
  br i1 %cmp, label %if.then, label %if.else, !dbg !5910

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.drm_connector** %connector, metadata !5911, metadata !DIExpression()), !dbg !5913
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5914, metadata !DIExpression()), !dbg !5916
  %7 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5916
  %8 = bitcast %struct.drm_mode_object* %7 to i8*, !dbg !5916
  store i8* %8, i8** %__mptr, align 8, !dbg !5916
  br label %do.body, !dbg !5916

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5917

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !5916
  %add.ptr = getelementptr i8, i8* %9, i64 -40, !dbg !5916
  %10 = bitcast i8* %add.ptr to %struct.drm_connector*, !dbg !5916
  store %struct.drm_connector* %10, %struct.drm_connector** %tmp, align 8, !dbg !5917
  %11 = load %struct.drm_connector*, %struct.drm_connector** %tmp, align 8, !dbg !5916
  store %struct.drm_connector* %11, %struct.drm_connector** %connector, align 8, !dbg !5913
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5919, metadata !DIExpression()), !dbg !5921
  %12 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5921
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 5, !dbg !5921
  %13 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5921
  %load = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %13, i32 0, i32 0, !dbg !5921
  %14 = load i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, i64)** %load, align 8, !dbg !5921
  %tobool = icmp ne i32 (%struct.drm_device*, i64)* %14, null, !dbg !5921
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5921

land.rhs:                                         ; preds = %do.end
  %15 = load %struct.drm_connector*, %struct.drm_connector** %connector, align 8, !dbg !5921
  %registration_state = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 14, !dbg !5921
  %16 = load i32, i32* %registration_state, align 8, !dbg !5921
  %cmp3 = icmp eq i32 %16, 1, !dbg !5921
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %17 = phi i1 [ false, %do.end ], [ %cmp3, %land.rhs ], !dbg !5922
  %lnot = xor i1 %17, true, !dbg !5921
  %lnot4 = xor i1 %lnot, true, !dbg !5921
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5921
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5921
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !5923
  %tobool5 = icmp ne i32 %18, 0, !dbg !5923
  %lnot6 = xor i1 %tobool5, true, !dbg !5923
  %lnot8 = xor i1 %lnot6, true, !dbg !5923
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5923
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5923
  %tobool10 = icmp ne i64 %conv, 0, !dbg !5923
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !5921

if.then11:                                        ; preds = %land.end
  br label %do.body12, !dbg !5923

do.body12:                                        ; preds = %if.then11
  br label %do.body13, !dbg !5925

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5927

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !5925

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 243, i32 2305, i64 12) #4, !dbg !5929, !srcloc !5931
  br label %do.end16, !dbg !5929

do.end16:                                         ; preds = %do.body15
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 256) #4, !dbg !5932, !srcloc !5934
  br label %do.body17, !dbg !5925

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5935

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !5925

do.end19:                                         ; preds = %do.end18
  br label %if.end, !dbg !5925

if.end:                                           ; preds = %do.end19, %land.end
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !5921
  %tobool21 = icmp ne i32 %19, 0, !dbg !5921
  %lnot22 = xor i1 %tobool21, true, !dbg !5921
  %lnot24 = xor i1 %lnot22, true, !dbg !5921
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5921
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5921
  store i64 %conv26, i64* %tmp20, align 8, !dbg !5923
  %20 = load i64, i64* %tmp20, align 8, !dbg !5921
  br label %if.end63, !dbg !5937

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on27, metadata !5938, metadata !DIExpression()), !dbg !5941
  %21 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5941
  %driver28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 5, !dbg !5941
  %22 = load %struct.drm_driver*, %struct.drm_driver** %driver28, align 8, !dbg !5941
  %load29 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %22, i32 0, i32 0, !dbg !5941
  %23 = load i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, i64)** %load29, align 8, !dbg !5941
  %tobool30 = icmp ne i32 (%struct.drm_device*, i64)* %23, null, !dbg !5941
  br i1 %tobool30, label %land.end34, label %land.rhs31, !dbg !5941

land.rhs31:                                       ; preds = %if.else
  %24 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5941
  %registered = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 9, !dbg !5941
  %25 = load i8, i8* %registered, align 8, !dbg !5941
  %tobool32 = trunc i8 %25 to i1, !dbg !5941
  br label %land.end34

land.end34:                                       ; preds = %land.rhs31, %if.else
  %26 = phi i1 [ false, %if.else ], [ %tobool32, %land.rhs31 ], !dbg !5942
  %lnot35 = xor i1 %26, true, !dbg !5941
  %lnot37 = xor i1 %lnot35, true, !dbg !5941
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5941
  store i32 %lnot.ext38, i32* %__ret_warn_on27, align 4, !dbg !5941
  %27 = load i32, i32* %__ret_warn_on27, align 4, !dbg !5943
  %tobool39 = icmp ne i32 %27, 0, !dbg !5943
  %lnot40 = xor i1 %tobool39, true, !dbg !5943
  %lnot42 = xor i1 %lnot40, true, !dbg !5943
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !5943
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !5943
  %tobool45 = icmp ne i64 %conv44, 0, !dbg !5943
  br i1 %tobool45, label %if.then46, label %if.end55, !dbg !5941

if.then46:                                        ; preds = %land.end34
  br label %do.body47, !dbg !5943

do.body47:                                        ; preds = %if.then46
  br label %do.body48, !dbg !5945

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5947

do.end49:                                         ; preds = %do.body48
  br label %do.body50, !dbg !5945

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 245, i32 2305, i64 12) #4, !dbg !5949, !srcloc !5951
  br label %do.end51, !dbg !5949

do.end51:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 257) #4, !dbg !5952, !srcloc !5954
  br label %do.body52, !dbg !5945

do.body52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5955

do.end53:                                         ; preds = %do.body52
  br label %do.end54, !dbg !5945

do.end54:                                         ; preds = %do.end53
  br label %if.end55, !dbg !5945

if.end55:                                         ; preds = %do.end54, %land.end34
  %28 = load i32, i32* %__ret_warn_on27, align 4, !dbg !5941
  %tobool57 = icmp ne i32 %28, 0, !dbg !5941
  %lnot58 = xor i1 %tobool57, true, !dbg !5941
  %lnot60 = xor i1 %lnot58, true, !dbg !5941
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !5941
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !5941
  store i64 %conv62, i64* %tmp56, align 8, !dbg !5943
  %29 = load i64, i64* %tmp56, align 8, !dbg !5941
  br label %if.end63

if.end63:                                         ; preds = %if.end55, %if.end
  %30 = load i32, i32* %count, align 4, !dbg !5957
  %cmp64 = icmp eq i32 %30, 24, !dbg !5959
  br i1 %cmp64, label %if.then66, label %if.end99, !dbg !5960

if.then66:                                        ; preds = %if.end63
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on67, metadata !5961, metadata !DIExpression()), !dbg !5964
  store i32 1, i32* %__ret_warn_on67, align 4, !dbg !5964
  %31 = load i32, i32* %__ret_warn_on67, align 4, !dbg !5965
  %tobool68 = icmp ne i32 %31, 0, !dbg !5965
  %lnot69 = xor i1 %tobool68, true, !dbg !5965
  %lnot71 = xor i1 %lnot69, true, !dbg !5965
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !5965
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !5965
  %tobool74 = icmp ne i64 %conv73, 0, !dbg !5965
  br i1 %tobool74, label %if.then75, label %if.end91, !dbg !5964

if.then75:                                        ; preds = %if.then66
  br label %do.body76, !dbg !5965

do.body76:                                        ; preds = %if.then75
  br label %do.body77, !dbg !5967

do.body77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !5969

do.end78:                                         ; preds = %do.body77
  %32 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5967
  %type79 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %32, i32 0, i32 1, !dbg !5967
  %33 = load i32, i32* %type79, align 4, !dbg !5967
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.2, i64 0, i64 0), i32 %33) #5, !dbg !5967
  br label %do.body80, !dbg !5967

do.body80:                                        ; preds = %do.end78
  br label %do.body81, !dbg !5971

do.body81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !5973

do.end82:                                         ; preds = %do.body81
  br label %do.body83, !dbg !5971

do.body83:                                        ; preds = %do.end82
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 252, i32 2313, i64 12) #4, !dbg !5975, !srcloc !5977
  br label %do.end84, !dbg !5975

do.end84:                                         ; preds = %do.body83
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 258) #4, !dbg !5978, !srcloc !5980
  br label %do.body85, !dbg !5971

do.body85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !5981

do.end86:                                         ; preds = %do.body85
  br label %do.end87, !dbg !5971

do.end87:                                         ; preds = %do.end86
  br label %do.body88, !dbg !5967

do.body88:                                        ; preds = %do.end87
  br label %do.end89, !dbg !5983

do.end89:                                         ; preds = %do.body88
  br label %do.end90, !dbg !5967

do.end90:                                         ; preds = %do.end89
  br label %if.end91, !dbg !5967

if.end91:                                         ; preds = %do.end90, %if.then66
  %34 = load i32, i32* %__ret_warn_on67, align 4, !dbg !5964
  %tobool93 = icmp ne i32 %34, 0, !dbg !5964
  %lnot94 = xor i1 %tobool93, true, !dbg !5964
  %lnot96 = xor i1 %lnot94, true, !dbg !5964
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !5964
  %conv98 = sext i32 %lnot.ext97 to i64, !dbg !5964
  store i64 %conv98, i64* %tmp92, align 8, !dbg !5965
  %35 = load i64, i64* %tmp92, align 8, !dbg !5964
  br label %return, !dbg !5985

if.end99:                                         ; preds = %if.end63
  %36 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !5986
  %37 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5987
  %properties100 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %37, i32 0, i32 2, !dbg !5988
  %38 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties100, align 8, !dbg !5988
  %properties101 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %38, i32 0, i32 1, !dbg !5989
  %39 = load i32, i32* %count, align 4, !dbg !5990
  %idxprom = sext i32 %39 to i64, !dbg !5987
  %arrayidx = getelementptr [24 x %struct.drm_property*], [24 x %struct.drm_property*]* %properties101, i64 0, i64 %idxprom, !dbg !5987
  store %struct.drm_property* %36, %struct.drm_property** %arrayidx, align 8, !dbg !5991
  %40 = load i64, i64* %init_val.addr, align 8, !dbg !5992
  %41 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5993
  %properties102 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %41, i32 0, i32 2, !dbg !5994
  %42 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties102, align 8, !dbg !5994
  %values = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %42, i32 0, i32 2, !dbg !5995
  %43 = load i32, i32* %count, align 4, !dbg !5996
  %idxprom103 = sext i32 %43 to i64, !dbg !5993
  %arrayidx104 = getelementptr [24 x i64], [24 x i64]* %values, i64 0, i64 %idxprom103, !dbg !5993
  store i64 %40, i64* %arrayidx104, align 8, !dbg !5997
  %44 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !5998
  %properties105 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %44, i32 0, i32 2, !dbg !5999
  %45 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties105, align 8, !dbg !5999
  %count106 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %45, i32 0, i32 0, !dbg !6000
  %46 = load i32, i32* %count106, align 8, !dbg !6001
  %inc = add i32 %46, 1, !dbg !6001
  store i32 %inc, i32* %count106, align 8, !dbg !6001
  br label %return, !dbg !6002

return:                                           ; preds = %if.end99, %if.end91
  ret void, !dbg !6002
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_object_property_set_value(%struct.drm_mode_object* %obj, %struct.drm_property* %property, i64 %val) #0 !dbg !6003 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %property.addr = alloca %struct.drm_property*, align 8
  %val.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  store %struct.drm_property* %property, %struct.drm_property** %property.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property** %property.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6012, metadata !DIExpression()), !dbg !6013
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6014, metadata !DIExpression()), !dbg !6016
  %0 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6016
  %dev = getelementptr inbounds %struct.drm_property, %struct.drm_property* %0, i32 0, i32 6, !dbg !6016
  %1 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6016
  %call = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %1) #5, !dbg !6016
  br i1 %call, label %land.rhs, label %land.end, !dbg !6016

land.rhs:                                         ; preds = %entry
  %2 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6016
  %flags = getelementptr inbounds %struct.drm_property, %struct.drm_property* %2, i32 0, i32 2, !dbg !6016
  %3 = load i32, i32* %flags, align 8, !dbg !6016
  %and = and i32 %3, 4, !dbg !6016
  %tobool = icmp ne i32 %and, 0, !dbg !6016
  %lnot = xor i1 %tobool, true, !dbg !6016
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6017
  %lnot1 = xor i1 %4, true, !dbg !6016
  %lnot2 = xor i1 %lnot1, true, !dbg !6016
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6016
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6016
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !6018
  %tobool3 = icmp ne i32 %5, 0, !dbg !6018
  %lnot4 = xor i1 %tobool3, true, !dbg !6018
  %lnot6 = xor i1 %lnot4, true, !dbg !6018
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6018
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6018
  %tobool8 = icmp ne i64 %conv, 0, !dbg !6018
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6016

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !6018

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !6020

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !6022

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !6020

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 287, i32 2305, i64 12) #4, !dbg !6024, !srcloc !6026
  br label %do.end11, !dbg !6024

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 259) #4, !dbg !6027, !srcloc !6029
  br label %do.body12, !dbg !6020

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6030

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6020

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6020

if.end:                                           ; preds = %do.end14, %land.end
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !6016
  %tobool15 = icmp ne i32 %6, 0, !dbg !6016
  %lnot16 = xor i1 %tobool15, true, !dbg !6016
  %lnot18 = xor i1 %lnot16, true, !dbg !6016
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6016
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6016
  store i64 %conv20, i64* %tmp, align 8, !dbg !6018
  %7 = load i64, i64* %tmp, align 8, !dbg !6016
  store i32 0, i32* %i, align 4, !dbg !6032
  br label %for.cond, !dbg !6034

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !6035
  %9 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6037
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %9, i32 0, i32 2, !dbg !6038
  %10 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !6038
  %count = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %10, i32 0, i32 0, !dbg !6039
  %11 = load i32, i32* %count, align 8, !dbg !6039
  %cmp = icmp slt i32 %8, %11, !dbg !6040
  br i1 %cmp, label %for.body, label %for.end, !dbg !6041

for.body:                                         ; preds = %for.cond
  %12 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6042
  %properties22 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %12, i32 0, i32 2, !dbg !6045
  %13 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties22, align 8, !dbg !6045
  %properties23 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %13, i32 0, i32 1, !dbg !6046
  %14 = load i32, i32* %i, align 4, !dbg !6047
  %idxprom = sext i32 %14 to i64, !dbg !6042
  %arrayidx = getelementptr [24 x %struct.drm_property*], [24 x %struct.drm_property*]* %properties23, i64 0, i64 %idxprom, !dbg !6042
  %15 = load %struct.drm_property*, %struct.drm_property** %arrayidx, align 8, !dbg !6042
  %16 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6048
  %cmp24 = icmp eq %struct.drm_property* %15, %16, !dbg !6049
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !6050

if.then26:                                        ; preds = %for.body
  %17 = load i64, i64* %val.addr, align 8, !dbg !6051
  %18 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6053
  %properties27 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %18, i32 0, i32 2, !dbg !6054
  %19 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties27, align 8, !dbg !6054
  %values = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %19, i32 0, i32 2, !dbg !6055
  %20 = load i32, i32* %i, align 4, !dbg !6056
  %idxprom28 = sext i32 %20 to i64, !dbg !6053
  %arrayidx29 = getelementptr [24 x i64], [24 x i64]* %values, i64 0, i64 %idxprom28, !dbg !6053
  store i64 %17, i64* %arrayidx29, align 8, !dbg !6057
  store i32 0, i32* %retval, align 4, !dbg !6058
  br label %return, !dbg !6058

if.end30:                                         ; preds = %for.body
  br label %for.inc, !dbg !6059

for.inc:                                          ; preds = %if.end30
  %21 = load i32, i32* %i, align 4, !dbg !6060
  %inc = add i32 %21, 1, !dbg !6060
  store i32 %inc, i32* %i, align 4, !dbg !6060
  br label %for.cond, !dbg !6061, !llvm.loop !6062

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !6064
  br label %return, !dbg !6064

return:                                           ; preds = %for.end, %if.then26
  %22 = load i32, i32* %retval, align 4, !dbg !6065
  ret i32 %22, !dbg !6065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %dev) #0 !dbg !6066 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6069, metadata !DIExpression()), !dbg !6070
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6071
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %0, i32 16) #5, !dbg !6072
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !6073

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6074
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 35, !dbg !6075
  %funcs = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 27, !dbg !6076
  %2 = load %struct.drm_mode_config_funcs*, %struct.drm_mode_config_funcs** %funcs, align 8, !dbg !6076
  %tobool = icmp ne %struct.drm_mode_config_funcs* %2, null, !dbg !6074
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6077

land.rhs:                                         ; preds = %lor.rhs
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6078
  %mode_config1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 35, !dbg !6079
  %funcs2 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config1, i32 0, i32 27, !dbg !6080
  %4 = load %struct.drm_mode_config_funcs*, %struct.drm_mode_config_funcs** %funcs2, align 8, !dbg !6080
  %atomic_commit = getelementptr inbounds %struct.drm_mode_config_funcs, %struct.drm_mode_config_funcs* %4, i32 0, i32 5, !dbg !6081
  %5 = load i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)** %atomic_commit, align 8, !dbg !6081
  %cmp = icmp ne i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)* %5, null, !dbg !6082
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ], !dbg !6083
  br label %lor.end, !dbg !6073

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  ret i1 %7, !dbg !6084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_object_property_get_value(%struct.drm_mode_object* %obj, %struct.drm_property* %property, i64* %val) #0 !dbg !6085 {
entry:
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %property.addr = alloca %struct.drm_property*, align 8
  %val.addr = alloca i64*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  store %struct.drm_property* %property, %struct.drm_property** %property.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property** %property.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6094, metadata !DIExpression()), !dbg !6096
  %0 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6096
  %dev = getelementptr inbounds %struct.drm_property, %struct.drm_property* %0, i32 0, i32 6, !dbg !6096
  %1 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6096
  %call = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %1) #5, !dbg !6096
  %lnot = xor i1 %call, true, !dbg !6096
  %lnot1 = xor i1 %lnot, true, !dbg !6096
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6096
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6096
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6097
  %tobool = icmp ne i32 %2, 0, !dbg !6097
  %lnot2 = xor i1 %tobool, true, !dbg !6097
  %lnot4 = xor i1 %lnot2, true, !dbg !6097
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6097
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6097
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6097
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6096

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6097

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !6099

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6101

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6099

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 345, i32 2305, i64 12) #4, !dbg !6103, !srcloc !6105
  br label %do.end9, !dbg !6103

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 260) #4, !dbg !6106, !srcloc !6108
  br label %do.body10, !dbg !6099

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6109

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6099

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6099

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6096
  %tobool13 = icmp ne i32 %3, 0, !dbg !6096
  %lnot14 = xor i1 %tobool13, true, !dbg !6096
  %lnot16 = xor i1 %lnot14, true, !dbg !6096
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6096
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6096
  store i64 %conv18, i64* %tmp, align 8, !dbg !6097
  %4 = load i64, i64* %tmp, align 8, !dbg !6096
  %5 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6111
  %6 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6112
  %7 = load i64*, i64** %val.addr, align 8, !dbg !6113
  %call19 = call i32 @__drm_object_property_get_value(%struct.drm_mode_object* %5, %struct.drm_property* %6, i64* %7) #5, !dbg !6114
  ret i32 %call19, !dbg !6115
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__drm_object_property_get_value(%struct.drm_mode_object* %obj, %struct.drm_property* %property, i64* %val) #0 !dbg !6116 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %property.addr = alloca %struct.drm_property*, align 8
  %val.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  store %struct.drm_property* %property, %struct.drm_property** %property.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property** %property.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !6121, metadata !DIExpression()), !dbg !6122
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6123, metadata !DIExpression()), !dbg !6124
  %0 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6125
  %dev = getelementptr inbounds %struct.drm_property, %struct.drm_property* %0, i32 0, i32 6, !dbg !6127
  %1 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6127
  %call = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %1) #5, !dbg !6128
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !6129

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6130
  %flags = getelementptr inbounds %struct.drm_property, %struct.drm_property* %2, i32 0, i32 2, !dbg !6131
  %3 = load i32, i32* %flags, align 8, !dbg !6131
  %and = and i32 %3, 4, !dbg !6132
  %tobool = icmp ne i32 %and, 0, !dbg !6132
  br i1 %tobool, label %if.end, label %if.then, !dbg !6133

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6134
  %5 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6135
  %6 = load i64*, i64** %val.addr, align 8, !dbg !6136
  %call1 = call i32 @drm_atomic_get_property(%struct.drm_mode_object* %4, %struct.drm_property* %5, i64* %6) #5, !dbg !6137
  store i32 %call1, i32* %retval, align 4, !dbg !6138
  br label %return, !dbg !6138

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !dbg !6139
  br label %for.cond, !dbg !6141

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !6142
  %8 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6144
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %8, i32 0, i32 2, !dbg !6145
  %9 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !6145
  %count = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %9, i32 0, i32 0, !dbg !6146
  %10 = load i32, i32* %count, align 8, !dbg !6146
  %cmp = icmp slt i32 %7, %10, !dbg !6147
  br i1 %cmp, label %for.body, label %for.end, !dbg !6148

for.body:                                         ; preds = %for.cond
  %11 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6149
  %properties2 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %11, i32 0, i32 2, !dbg !6152
  %12 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties2, align 8, !dbg !6152
  %properties3 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %12, i32 0, i32 1, !dbg !6153
  %13 = load i32, i32* %i, align 4, !dbg !6154
  %idxprom = sext i32 %13 to i64, !dbg !6149
  %arrayidx = getelementptr [24 x %struct.drm_property*], [24 x %struct.drm_property*]* %properties3, i64 0, i64 %idxprom, !dbg !6149
  %14 = load %struct.drm_property*, %struct.drm_property** %arrayidx, align 8, !dbg !6149
  %15 = load %struct.drm_property*, %struct.drm_property** %property.addr, align 8, !dbg !6155
  %cmp4 = icmp eq %struct.drm_property* %14, %15, !dbg !6156
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !6157

if.then5:                                         ; preds = %for.body
  %16 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6158
  %properties6 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %16, i32 0, i32 2, !dbg !6160
  %17 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties6, align 8, !dbg !6160
  %values = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %17, i32 0, i32 2, !dbg !6161
  %18 = load i32, i32* %i, align 4, !dbg !6162
  %idxprom7 = sext i32 %18 to i64, !dbg !6158
  %arrayidx8 = getelementptr [24 x i64], [24 x i64]* %values, i64 0, i64 %idxprom7, !dbg !6158
  %19 = load i64, i64* %arrayidx8, align 8, !dbg !6158
  %20 = load i64*, i64** %val.addr, align 8, !dbg !6163
  store i64 %19, i64* %20, align 8, !dbg !6164
  store i32 0, i32* %retval, align 4, !dbg !6165
  br label %return, !dbg !6165

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !6166

for.inc:                                          ; preds = %if.end9
  %21 = load i32, i32* %i, align 4, !dbg !6167
  %inc = add i32 %21, 1, !dbg !6167
  store i32 %inc, i32* %i, align 4, !dbg !6167
  br label %for.cond, !dbg !6168, !llvm.loop !6169

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

return:                                           ; preds = %for.end, %if.then5, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !6172
  ret i32 %22, !dbg !6172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_object_get_properties(%struct.drm_mode_object* %obj, i1 zeroext %atomic, i32* %prop_ptr, i64* %prop_values, i32* %arg_count_props) #0 !dbg !6173 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %atomic.addr = alloca i8, align 1
  %prop_ptr.addr = alloca i32*, align 8
  %prop_values.addr = alloca i64*, align 8
  %arg_count_props.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %prop = alloca %struct.drm_property*, align 8
  %val = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp11 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %__ret_pu16 = alloca i32, align 4
  %__ptr_pu17 = alloca i8*, align 8
  %__val_pu18 = alloca i64, align 8
  %tmp23 = alloca i64, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  %frombool = zext i1 %atomic to i8
  store i8 %frombool, i8* %atomic.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %atomic.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  store i32* %prop_ptr, i32** %prop_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %prop_ptr.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  store i64* %prop_values, i64** %prop_values.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prop_values.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  store i32* %arg_count_props, i32** %arg_count_props.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg_count_props.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6186, metadata !DIExpression()), !dbg !6187
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6188, metadata !DIExpression()), !dbg !6189
  call void @llvm.dbg.declare(metadata i32* %count, metadata !6190, metadata !DIExpression()), !dbg !6191
  store i32 0, i32* %i, align 4, !dbg !6192
  store i32 0, i32* %count, align 4, !dbg !6194
  br label %for.cond, !dbg !6195

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6196
  %1 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6198
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %1, i32 0, i32 2, !dbg !6199
  %2 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !6199
  %count1 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %2, i32 0, i32 0, !dbg !6200
  %3 = load i32, i32* %count1, align 8, !dbg !6200
  %cmp = icmp slt i32 %0, %3, !dbg !6201
  br i1 %cmp, label %for.body, label %for.end, !dbg !6202

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop, metadata !6203, metadata !DIExpression()), !dbg !6205
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6206
  %properties2 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %4, i32 0, i32 2, !dbg !6207
  %5 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties2, align 8, !dbg !6207
  %properties3 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %5, i32 0, i32 1, !dbg !6208
  %6 = load i32, i32* %i, align 4, !dbg !6209
  %idxprom = sext i32 %6 to i64, !dbg !6206
  %arrayidx = getelementptr [24 x %struct.drm_property*], [24 x %struct.drm_property*]* %properties3, i64 0, i64 %idxprom, !dbg !6206
  %7 = load %struct.drm_property*, %struct.drm_property** %arrayidx, align 8, !dbg !6206
  store %struct.drm_property* %7, %struct.drm_property** %prop, align 8, !dbg !6205
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6210, metadata !DIExpression()), !dbg !6211
  %8 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6212
  %flags = getelementptr inbounds %struct.drm_property, %struct.drm_property* %8, i32 0, i32 2, !dbg !6214
  %9 = load i32, i32* %flags, align 8, !dbg !6214
  %and = and i32 %9, -2147483648, !dbg !6215
  %tobool = icmp ne i32 %and, 0, !dbg !6215
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6216

land.lhs.true:                                    ; preds = %for.body
  %10 = load i8, i8* %atomic.addr, align 1, !dbg !6217
  %tobool4 = trunc i8 %10 to i1, !dbg !6217
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6218

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !6219

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load i32*, i32** %arg_count_props.addr, align 8, !dbg !6220
  %12 = load i32, i32* %11, align 4, !dbg !6222
  %13 = load i32, i32* %count, align 4, !dbg !6223
  %cmp5 = icmp ugt i32 %12, %13, !dbg !6224
  br i1 %cmp5, label %if.then6, label %if.end28, !dbg !6225

if.then6:                                         ; preds = %if.end
  %14 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6226
  %15 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6228
  %call = call i32 @__drm_object_property_get_value(%struct.drm_mode_object* %14, %struct.drm_property* %15, i64* %val) #5, !dbg !6229
  store i32 %call, i32* %ret, align 4, !dbg !6230
  %16 = load i32, i32* %ret, align 4, !dbg !6231
  %tobool7 = icmp ne i32 %16, 0, !dbg !6231
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6233

if.then8:                                         ; preds = %if.then6
  %17 = load i32, i32* %ret, align 4, !dbg !6234
  store i32 %17, i32* %retval, align 4, !dbg !6235
  br label %return, !dbg !6235

if.end9:                                          ; preds = %if.then6
  call void @might_fault() #5, !dbg !6236
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !6239, metadata !DIExpression()), !dbg !6241
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !6242, metadata !DIExpression()), !dbg !6241
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !6243, metadata !DIExpression()), !dbg !6241
  %18 = load i32*, i32** %prop_ptr.addr, align 8, !dbg !6241
  %19 = load i32, i32* %count, align 4, !dbg !6241
  %idx.ext = sext i32 %19 to i64, !dbg !6241
  %add.ptr = getelementptr i32, i32* %18, i64 %idx.ext, !dbg !6241
  %20 = bitcast i32* %add.ptr to i8*, !dbg !6241
  store i8* %20, i8** %__ptr_pu, align 8, !dbg !6241
  %21 = load %struct.drm_property*, %struct.drm_property** %prop, align 8, !dbg !6241
  %base = getelementptr inbounds %struct.drm_property, %struct.drm_property* %21, i32 0, i32 1, !dbg !6241
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base, i32 0, i32 0, !dbg !6241
  %22 = load i32, i32* %id, align 8, !dbg !6241
  store i32 %22, i32* %__val_pu, align 4, !dbg !6241
  %23 = call i64 @llvm.read_register.i64(metadata !5524), !dbg !6241
  %24 = load i8*, i8** %__ptr_pu, align 8, !dbg !6241
  %25 = load i32, i32* %__val_pu, align 4, !dbg !6241
  %26 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %24, i32 %25, i64 4, i64 %23) #4, !dbg !6241, !srcloc !6244
  %asmresult = extractvalue { i8*, i64 } %26, 0, !dbg !6241
  %asmresult10 = extractvalue { i8*, i64 } %26, 1, !dbg !6241
  %27 = ptrtoint i8* %asmresult to i64, !dbg !6241
  %28 = trunc i64 %27 to i32, !dbg !6241
  store i32 %28, i32* %__ret_pu, align 4, !dbg !6241
  call void @llvm.write_register.i64(metadata !5524, i64 %asmresult10), !dbg !6241
  %29 = load i32, i32* %__ret_pu, align 4, !dbg !6241
  %conv = sext i32 %29 to i64, !dbg !6241
  store i64 %conv, i64* %tmp11, align 8, !dbg !6241
  %30 = load i64, i64* %tmp11, align 8, !dbg !6241
  store i64 %30, i64* %tmp, align 8, !dbg !6236
  %31 = load i64, i64* %tmp, align 8, !dbg !6236
  %tobool12 = icmp ne i64 %31, 0, !dbg !6245
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6246

if.then13:                                        ; preds = %if.end9
  store i32 -14, i32* %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

if.end14:                                         ; preds = %if.end9
  call void @might_fault() #5, !dbg !6248
  call void @llvm.dbg.declare(metadata i32* %__ret_pu16, metadata !6251, metadata !DIExpression()), !dbg !6253
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu17, metadata !6254, metadata !DIExpression()), !dbg !6253
  call void @llvm.dbg.declare(metadata i64* %__val_pu18, metadata !6255, metadata !DIExpression()), !dbg !6253
  %32 = load i64*, i64** %prop_values.addr, align 8, !dbg !6253
  %33 = load i32, i32* %count, align 4, !dbg !6253
  %idx.ext19 = sext i32 %33 to i64, !dbg !6253
  %add.ptr20 = getelementptr i64, i64* %32, i64 %idx.ext19, !dbg !6253
  %34 = bitcast i64* %add.ptr20 to i8*, !dbg !6253
  store i8* %34, i8** %__ptr_pu17, align 8, !dbg !6253
  %35 = load i64, i64* %val, align 8, !dbg !6253
  store i64 %35, i64* %__val_pu18, align 8, !dbg !6253
  %36 = call i64 @llvm.read_register.i64(metadata !5524), !dbg !6253
  %37 = load i8*, i8** %__ptr_pu17, align 8, !dbg !6253
  %38 = load i64, i64* %__val_pu18, align 8, !dbg !6253
  %39 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %37, i64 %38, i64 8, i64 %36) #4, !dbg !6253, !srcloc !6256
  %asmresult21 = extractvalue { i8*, i64 } %39, 0, !dbg !6253
  %asmresult22 = extractvalue { i8*, i64 } %39, 1, !dbg !6253
  %40 = ptrtoint i8* %asmresult21 to i64, !dbg !6253
  %41 = trunc i64 %40 to i32, !dbg !6253
  store i32 %41, i32* %__ret_pu16, align 4, !dbg !6253
  call void @llvm.write_register.i64(metadata !5524, i64 %asmresult22), !dbg !6253
  %42 = load i32, i32* %__ret_pu16, align 4, !dbg !6253
  %conv24 = sext i32 %42 to i64, !dbg !6253
  store i64 %conv24, i64* %tmp23, align 8, !dbg !6253
  %43 = load i64, i64* %tmp23, align 8, !dbg !6253
  store i64 %43, i64* %tmp15, align 8, !dbg !6248
  %44 = load i64, i64* %tmp15, align 8, !dbg !6248
  %tobool25 = icmp ne i64 %44, 0, !dbg !6257
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6258

if.then26:                                        ; preds = %if.end14
  store i32 -14, i32* %retval, align 4, !dbg !6259
  br label %return, !dbg !6259

if.end27:                                         ; preds = %if.end14
  br label %if.end28, !dbg !6260

if.end28:                                         ; preds = %if.end27, %if.end
  %45 = load i32, i32* %count, align 4, !dbg !6261
  %inc = add i32 %45, 1, !dbg !6261
  store i32 %inc, i32* %count, align 4, !dbg !6261
  br label %for.inc, !dbg !6262

for.inc:                                          ; preds = %if.end28, %if.then
  %46 = load i32, i32* %i, align 4, !dbg !6263
  %inc29 = add i32 %46, 1, !dbg !6263
  store i32 %inc29, i32* %i, align 4, !dbg !6263
  br label %for.cond, !dbg !6264, !llvm.loop !6265

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %count, align 4, !dbg !6267
  %48 = load i32*, i32** %arg_count_props.addr, align 8, !dbg !6268
  store i32 %47, i32* %48, align 4, !dbg !6269
  store i32 0, i32* %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

return:                                           ; preds = %for.end, %if.then26, %if.then13, %if.then8
  %49 = load i32, i32* %retval, align 4, !dbg !6271
  ret i32 %49, !dbg !6271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #0 !dbg !6272 {
entry:
  ret void, !dbg !6274
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_obj_get_properties_ioctl(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !6275 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %arg = alloca %struct.drm_mode_obj_get_properties*, align 8
  %obj = alloca %struct.drm_mode_object*, align 8
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  call void @llvm.dbg.declare(metadata %struct.drm_mode_obj_get_properties** %arg, metadata !6282, metadata !DIExpression()), !dbg !6291
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6292
  %1 = bitcast i8* %0 to %struct.drm_mode_obj_get_properties*, !dbg !6292
  store %struct.drm_mode_obj_get_properties* %1, %struct.drm_mode_obj_get_properties** %arg, align 8, !dbg !6291
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj, metadata !6293, metadata !DIExpression()), !dbg !6294
  call void @llvm.dbg.declare(metadata %struct.drm_modeset_acquire_ctx* %ctx, metadata !6295, metadata !DIExpression()), !dbg !6296
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6297, metadata !DIExpression()), !dbg !6298
  store i32 0, i32* %ret, align 4, !dbg !6298
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6299
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %2, i32 2) #5, !dbg !6301
  br i1 %call, label %if.end, label %if.then, !dbg !6302

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !6303
  br label %return, !dbg !6303

if.end:                                           ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6304
  %call1 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %3) #5, !dbg !6304
  br i1 %call1, label %if.end3, label %if.then2, !dbg !6306

if.then2:                                         ; preds = %if.end
  %4 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6304
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 35, !dbg !6304
  %mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 0, !dbg !6304
  call void @mutex_lock(%struct.mutex* %mutex) #5, !dbg !6304
  br label %if.end3, !dbg !6304

if.end3:                                          ; preds = %if.then2, %if.end
  call void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %ctx, i32 0) #5, !dbg !6306
  br label %modeset_lock_retry, !dbg !6306

modeset_lock_retry:                               ; preds = %if.then19, %if.end3
  call void @llvm.dbg.label(metadata !6307), !dbg !6306
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6306
  %call4 = call i32 @drm_modeset_lock_all_ctx(%struct.drm_device* %5, %struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6306
  store i32 %call4, i32* %ret, align 4, !dbg !6306
  %6 = load i32, i32* %ret, align 4, !dbg !6308
  %tobool = icmp ne i32 %6, 0, !dbg !6308
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !6306

if.then5:                                         ; preds = %modeset_lock_retry
  br label %modeset_lock_fail, !dbg !6308

if.end6:                                          ; preds = %modeset_lock_retry
  %7 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6310
  %8 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !6311
  %9 = load %struct.drm_mode_obj_get_properties*, %struct.drm_mode_obj_get_properties** %arg, align 8, !dbg !6312
  %obj_id = getelementptr inbounds %struct.drm_mode_obj_get_properties, %struct.drm_mode_obj_get_properties* %9, i32 0, i32 3, !dbg !6313
  %10 = load i32, i32* %obj_id, align 4, !dbg !6313
  %11 = load %struct.drm_mode_obj_get_properties*, %struct.drm_mode_obj_get_properties** %arg, align 8, !dbg !6314
  %obj_type = getelementptr inbounds %struct.drm_mode_obj_get_properties, %struct.drm_mode_obj_get_properties* %11, i32 0, i32 4, !dbg !6315
  %12 = load i32, i32* %obj_type, align 8, !dbg !6315
  %call7 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %7, %struct.drm_file* %8, i32 %10, i32 %12) #5, !dbg !6316
  store %struct.drm_mode_object* %call7, %struct.drm_mode_object** %obj, align 8, !dbg !6317
  %13 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !6318
  %tobool8 = icmp ne %struct.drm_mode_object* %13, null, !dbg !6318
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6320

if.then9:                                         ; preds = %if.end6
  store i32 -2, i32* %ret, align 4, !dbg !6321
  br label %out, !dbg !6323

if.end10:                                         ; preds = %if.end6
  %14 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !6324
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %14, i32 0, i32 2, !dbg !6326
  %15 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !6326
  %tobool11 = icmp ne %struct.drm_object_properties* %15, null, !dbg !6324
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6327

if.then12:                                        ; preds = %if.end10
  store i32 -22, i32* %ret, align 4, !dbg !6328
  br label %out_unref, !dbg !6330

if.end13:                                         ; preds = %if.end10
  %16 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !6331
  %17 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !6332
  %atomic = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 3, !dbg !6333
  %18 = load i8, i8* %atomic, align 1, !dbg !6333
  %tobool14 = trunc i8 %18 to i1, !dbg !6333
  %19 = load %struct.drm_mode_obj_get_properties*, %struct.drm_mode_obj_get_properties** %arg, align 8, !dbg !6334
  %props_ptr = getelementptr inbounds %struct.drm_mode_obj_get_properties, %struct.drm_mode_obj_get_properties* %19, i32 0, i32 0, !dbg !6335
  %20 = load i64, i64* %props_ptr, align 8, !dbg !6335
  %21 = inttoptr i64 %20 to i32*, !dbg !6336
  %22 = load %struct.drm_mode_obj_get_properties*, %struct.drm_mode_obj_get_properties** %arg, align 8, !dbg !6337
  %prop_values_ptr = getelementptr inbounds %struct.drm_mode_obj_get_properties, %struct.drm_mode_obj_get_properties* %22, i32 0, i32 1, !dbg !6338
  %23 = load i64, i64* %prop_values_ptr, align 8, !dbg !6338
  %24 = inttoptr i64 %23 to i64*, !dbg !6339
  %25 = load %struct.drm_mode_obj_get_properties*, %struct.drm_mode_obj_get_properties** %arg, align 8, !dbg !6340
  %count_props = getelementptr inbounds %struct.drm_mode_obj_get_properties, %struct.drm_mode_obj_get_properties* %25, i32 0, i32 2, !dbg !6341
  %call15 = call i32 @drm_mode_object_get_properties(%struct.drm_mode_object* %16, i1 zeroext %tobool14, i32* %21, i64* %24, i32* %count_props) #5, !dbg !6342
  store i32 %call15, i32* %ret, align 4, !dbg !6343
  br label %out_unref, !dbg !6344

out_unref:                                        ; preds = %if.end13, %if.then12
  call void @llvm.dbg.label(metadata !6345), !dbg !6346
  %26 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj, align 8, !dbg !6347
  call void @drm_mode_object_put(%struct.drm_mode_object* %26) #5, !dbg !6348
  br label %out, !dbg !6348

out:                                              ; preds = %out_unref, %if.then9
  call void @llvm.dbg.label(metadata !6349), !dbg !6350
  br label %modeset_lock_fail, !dbg !6348

modeset_lock_fail:                                ; preds = %out, %if.then5
  call void @llvm.dbg.label(metadata !6351), !dbg !6352
  %27 = load i32, i32* %ret, align 4, !dbg !6353
  %cmp = icmp eq i32 %27, -35, !dbg !6353
  br i1 %cmp, label %if.then16, label %if.end21, !dbg !6352

if.then16:                                        ; preds = %modeset_lock_fail
  %call17 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6355
  store i32 %call17, i32* %ret, align 4, !dbg !6355
  %28 = load i32, i32* %ret, align 4, !dbg !6357
  %tobool18 = icmp ne i32 %28, 0, !dbg !6357
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !6355

if.then19:                                        ; preds = %if.then16
  br label %modeset_lock_retry, !dbg !6357

if.end20:                                         ; preds = %if.then16
  br label %if.end21, !dbg !6355

if.end21:                                         ; preds = %if.end20, %modeset_lock_fail
  call void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6352
  call void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6352
  %29 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6359
  %call22 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %29) #5, !dbg !6359
  br i1 %call22, label %if.end26, label %if.then23, !dbg !6352

if.then23:                                        ; preds = %if.end21
  %30 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6359
  %mode_config24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 35, !dbg !6359
  %mutex25 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config24, i32 0, i32 0, !dbg !6359
  call void @mutex_unlock(%struct.mutex* %mutex25) #5, !dbg !6359
  br label %if.end26, !dbg !6359

if.end26:                                         ; preds = %if.then23, %if.end21
  %31 = load i32, i32* %ret, align 4, !dbg !6361
  store i32 %31, i32* %retval, align 4, !dbg !6362
  br label %return, !dbg !6362

return:                                           ; preds = %if.end26, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !6363
  ret i32 %32, !dbg !6363
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_feature(%struct.drm_device* %dev, i32 %feature) #0 !dbg !6364 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %feature.addr = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6369, metadata !DIExpression()), !dbg !6370
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !6371, metadata !DIExpression()), !dbg !6372
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6373
  %1 = load i32, i32* %feature.addr, align 4, !dbg !6374
  %call = call zeroext i1 @drm_core_check_all_features(%struct.drm_device* %0, i32 %1) #5, !dbg !6375
  ret i1 %call, !dbg !6376
}

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

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_property* @drm_mode_obj_find_prop_id(%struct.drm_mode_object* %obj, i32 %prop_id) #0 !dbg !6377 {
entry:
  %retval = alloca %struct.drm_property*, align 8
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %prop_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6380, metadata !DIExpression()), !dbg !6381
  store i32 %prop_id, i32* %prop_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prop_id.addr, metadata !6382, metadata !DIExpression()), !dbg !6383
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6384, metadata !DIExpression()), !dbg !6385
  store i32 0, i32* %i, align 4, !dbg !6386
  br label %for.cond, !dbg !6388

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6389
  %1 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6391
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %1, i32 0, i32 2, !dbg !6392
  %2 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !6392
  %count = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %2, i32 0, i32 0, !dbg !6393
  %3 = load i32, i32* %count, align 8, !dbg !6393
  %cmp = icmp slt i32 %0, %3, !dbg !6394
  br i1 %cmp, label %for.body, label %for.end, !dbg !6395

for.body:                                         ; preds = %for.cond
  %4 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6396
  %properties1 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %4, i32 0, i32 2, !dbg !6398
  %5 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties1, align 8, !dbg !6398
  %properties2 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %5, i32 0, i32 1, !dbg !6399
  %6 = load i32, i32* %i, align 4, !dbg !6400
  %idxprom = sext i32 %6 to i64, !dbg !6396
  %arrayidx = getelementptr [24 x %struct.drm_property*], [24 x %struct.drm_property*]* %properties2, i64 0, i64 %idxprom, !dbg !6396
  %7 = load %struct.drm_property*, %struct.drm_property** %arrayidx, align 8, !dbg !6396
  %base = getelementptr inbounds %struct.drm_property, %struct.drm_property* %7, i32 0, i32 1, !dbg !6401
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base, i32 0, i32 0, !dbg !6402
  %8 = load i32, i32* %id, align 8, !dbg !6402
  %9 = load i32, i32* %prop_id.addr, align 4, !dbg !6403
  %cmp3 = icmp eq i32 %8, %9, !dbg !6404
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6405

if.then:                                          ; preds = %for.body
  %10 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6406
  %properties4 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %10, i32 0, i32 2, !dbg !6407
  %11 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties4, align 8, !dbg !6407
  %properties5 = getelementptr inbounds %struct.drm_object_properties, %struct.drm_object_properties* %11, i32 0, i32 1, !dbg !6408
  %12 = load i32, i32* %i, align 4, !dbg !6409
  %idxprom6 = sext i32 %12 to i64, !dbg !6406
  %arrayidx7 = getelementptr [24 x %struct.drm_property*], [24 x %struct.drm_property*]* %properties5, i64 0, i64 %idxprom6, !dbg !6406
  %13 = load %struct.drm_property*, %struct.drm_property** %arrayidx7, align 8, !dbg !6406
  store %struct.drm_property* %13, %struct.drm_property** %retval, align 8, !dbg !6410
  br label %return, !dbg !6410

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6403

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !dbg !6411
  %inc = add i32 %14, 1, !dbg !6411
  store i32 %inc, i32* %i, align 4, !dbg !6411
  br label %for.cond, !dbg !6412, !llvm.loop !6413

for.end:                                          ; preds = %for.cond
  store %struct.drm_property* null, %struct.drm_property** %retval, align 8, !dbg !6415
  br label %return, !dbg !6415

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.drm_property*, %struct.drm_property** %retval, align 8, !dbg !6416
  ret %struct.drm_property* %15, !dbg !6416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_obj_set_property_ioctl(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !6417 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %arg = alloca %struct.drm_mode_obj_set_property*, align 8
  %arg_obj = alloca %struct.drm_mode_object*, align 8
  %property = alloca %struct.drm_property*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6418, metadata !DIExpression()), !dbg !6419
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  call void @llvm.dbg.declare(metadata %struct.drm_mode_obj_set_property** %arg, metadata !6424, metadata !DIExpression()), !dbg !6432
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6433
  %1 = bitcast i8* %0 to %struct.drm_mode_obj_set_property*, !dbg !6433
  store %struct.drm_mode_obj_set_property* %1, %struct.drm_mode_obj_set_property** %arg, align 8, !dbg !6432
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %arg_obj, metadata !6434, metadata !DIExpression()), !dbg !6435
  call void @llvm.dbg.declare(metadata %struct.drm_property** %property, metadata !6436, metadata !DIExpression()), !dbg !6437
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6438, metadata !DIExpression()), !dbg !6439
  store i32 -22, i32* %ret, align 4, !dbg !6439
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6440
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %2, i32 2) #5, !dbg !6442
  br i1 %call, label %if.end, label %if.then, !dbg !6443

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !6444
  br label %return, !dbg !6444

if.end:                                           ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6445
  %4 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !6446
  %5 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %arg, align 8, !dbg !6447
  %obj_id = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %5, i32 0, i32 2, !dbg !6448
  %6 = load i32, i32* %obj_id, align 4, !dbg !6448
  %7 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %arg, align 8, !dbg !6449
  %obj_type = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %7, i32 0, i32 3, !dbg !6450
  %8 = load i32, i32* %obj_type, align 8, !dbg !6450
  %call1 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %3, %struct.drm_file* %4, i32 %6, i32 %8) #5, !dbg !6451
  store %struct.drm_mode_object* %call1, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6452
  %9 = load %struct.drm_mode_object*, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6453
  %tobool = icmp ne %struct.drm_mode_object* %9, null, !dbg !6453
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6455

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

if.end3:                                          ; preds = %if.end
  %10 = load %struct.drm_mode_object*, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6457
  %properties = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %10, i32 0, i32 2, !dbg !6459
  %11 = load %struct.drm_object_properties*, %struct.drm_object_properties** %properties, align 8, !dbg !6459
  %tobool4 = icmp ne %struct.drm_object_properties* %11, null, !dbg !6457
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6460

if.then5:                                         ; preds = %if.end3
  br label %out_unref, !dbg !6461

if.end6:                                          ; preds = %if.end3
  %12 = load %struct.drm_mode_object*, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6462
  %13 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %arg, align 8, !dbg !6463
  %prop_id = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %13, i32 0, i32 1, !dbg !6464
  %14 = load i32, i32* %prop_id, align 8, !dbg !6464
  %call7 = call %struct.drm_property* @drm_mode_obj_find_prop_id(%struct.drm_mode_object* %12, i32 %14) #5, !dbg !6465
  store %struct.drm_property* %call7, %struct.drm_property** %property, align 8, !dbg !6466
  %15 = load %struct.drm_property*, %struct.drm_property** %property, align 8, !dbg !6467
  %tobool8 = icmp ne %struct.drm_property* %15, null, !dbg !6467
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6469

if.then9:                                         ; preds = %if.end6
  br label %out_unref, !dbg !6470

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.drm_property*, %struct.drm_property** %property, align 8, !dbg !6471
  %dev11 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %16, i32 0, i32 6, !dbg !6473
  %17 = load %struct.drm_device*, %struct.drm_device** %dev11, align 8, !dbg !6473
  %call12 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %17) #5, !dbg !6474
  br i1 %call12, label %if.then13, label %if.else, !dbg !6475

if.then13:                                        ; preds = %if.end10
  %18 = load %struct.drm_mode_object*, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6476
  %19 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !6477
  %20 = load %struct.drm_property*, %struct.drm_property** %property, align 8, !dbg !6478
  %21 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %arg, align 8, !dbg !6479
  %value = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %21, i32 0, i32 0, !dbg !6480
  %22 = load i64, i64* %value, align 8, !dbg !6480
  %call14 = call i32 @set_property_atomic(%struct.drm_mode_object* %18, %struct.drm_file* %19, %struct.drm_property* %20, i64 %22) #5, !dbg !6481
  store i32 %call14, i32* %ret, align 4, !dbg !6482
  br label %if.end17, !dbg !6483

if.else:                                          ; preds = %if.end10
  %23 = load %struct.drm_mode_object*, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6484
  %24 = load %struct.drm_property*, %struct.drm_property** %property, align 8, !dbg !6485
  %25 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %arg, align 8, !dbg !6486
  %value15 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %25, i32 0, i32 0, !dbg !6487
  %26 = load i64, i64* %value15, align 8, !dbg !6487
  %call16 = call i32 @set_property_legacy(%struct.drm_mode_object* %23, %struct.drm_property* %24, i64 %26) #5, !dbg !6488
  store i32 %call16, i32* %ret, align 4, !dbg !6489
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  br label %out_unref, !dbg !6490

out_unref:                                        ; preds = %if.end17, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !6491), !dbg !6492
  %27 = load %struct.drm_mode_object*, %struct.drm_mode_object** %arg_obj, align 8, !dbg !6493
  call void @drm_mode_object_put(%struct.drm_mode_object* %27) #5, !dbg !6494
  %28 = load i32, i32* %ret, align 4, !dbg !6495
  store i32 %28, i32* %retval, align 4, !dbg !6496
  br label %return, !dbg !6496

return:                                           ; preds = %out_unref, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !6497
  ret i32 %29, !dbg !6497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_property_atomic(%struct.drm_mode_object* %obj, %struct.drm_file* %file_priv, %struct.drm_property* %prop, i64 %prop_value) #0 !dbg !6498 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %prop.addr = alloca %struct.drm_property*, align 8
  %prop_value.addr = alloca i64, align 8
  %dev = alloca %struct.drm_device*, align 8
  %state = alloca %struct.drm_atomic_state*, align 8
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_connector*, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !6503, metadata !DIExpression()), !dbg !6504
  store %struct.drm_property* %prop, %struct.drm_property** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop.addr, metadata !6505, metadata !DIExpression()), !dbg !6506
  store i64 %prop_value, i64* %prop_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %prop_value.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !6509, metadata !DIExpression()), !dbg !6510
  %0 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6511
  %dev1 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %0, i32 0, i32 6, !dbg !6512
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !6512
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !6510
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state, metadata !6513, metadata !DIExpression()), !dbg !6514
  call void @llvm.dbg.declare(metadata %struct.drm_modeset_acquire_ctx* %ctx, metadata !6515, metadata !DIExpression()), !dbg !6516
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6517, metadata !DIExpression()), !dbg !6518
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6519
  %call = call %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device* %2) #5, !dbg !6520
  store %struct.drm_atomic_state* %call, %struct.drm_atomic_state** %state, align 8, !dbg !6521
  %3 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6522
  %tobool = icmp ne %struct.drm_atomic_state* %3, null, !dbg !6522
  br i1 %tobool, label %if.end, label %if.then, !dbg !6524

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6525
  br label %return, !dbg !6525

if.end:                                           ; preds = %entry
  call void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %ctx, i32 0) #5, !dbg !6526
  %4 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6527
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %4, i32 0, i32 9, !dbg !6528
  store %struct.drm_modeset_acquire_ctx* %ctx, %struct.drm_modeset_acquire_ctx** %acquire_ctx, align 8, !dbg !6529
  br label %retry, !dbg !6527

retry:                                            ; preds = %if.then16, %if.end
  call void @llvm.dbg.label(metadata !6530), !dbg !6531
  %5 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6532
  %6 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6534
  %dev2 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %6, i32 0, i32 1, !dbg !6535
  %7 = load %struct.drm_device*, %struct.drm_device** %dev2, align 8, !dbg !6535
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 35, !dbg !6536
  %dpms_property = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 36, !dbg !6537
  %8 = load %struct.drm_property*, %struct.drm_property** %dpms_property, align 8, !dbg !6537
  %cmp = icmp eq %struct.drm_property* %5, %8, !dbg !6538
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6539

if.then3:                                         ; preds = %retry
  %9 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6540
  %type = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %9, i32 0, i32 1, !dbg !6543
  %10 = load i32, i32* %type, align 4, !dbg !6543
  %cmp4 = icmp ne i32 %10, -1061109568, !dbg !6544
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6545

if.then5:                                         ; preds = %if.then3
  store i32 -22, i32* %ret, align 4, !dbg !6546
  br label %out, !dbg !6548

if.end6:                                          ; preds = %if.then3
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6549
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6550, metadata !DIExpression()), !dbg !6552
  %12 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6552
  %13 = bitcast %struct.drm_mode_object* %12 to i8*, !dbg !6552
  store i8* %13, i8** %__mptr, align 8, !dbg !6552
  br label %do.body, !dbg !6552

do.body:                                          ; preds = %if.end6
  br label %do.end, !dbg !6553

do.end:                                           ; preds = %do.body
  %14 = load i8*, i8** %__mptr, align 8, !dbg !6552
  %add.ptr = getelementptr i8, i8* %14, i64 -40, !dbg !6552
  %15 = bitcast i8* %add.ptr to %struct.drm_connector*, !dbg !6552
  store %struct.drm_connector* %15, %struct.drm_connector** %tmp, align 8, !dbg !6553
  %16 = load %struct.drm_connector*, %struct.drm_connector** %tmp, align 8, !dbg !6552
  %17 = load i64, i64* %prop_value.addr, align 8, !dbg !6555
  %conv = trunc i64 %17 to i32, !dbg !6555
  %call7 = call i32 @drm_atomic_connector_commit_dpms(%struct.drm_atomic_state* %11, %struct.drm_connector* %16, i32 %conv) #5, !dbg !6556
  store i32 %call7, i32* %ret, align 4, !dbg !6557
  br label %if.end13, !dbg !6558

if.else:                                          ; preds = %retry
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6559
  %19 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !6561
  %20 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6562
  %21 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6563
  %22 = load i64, i64* %prop_value.addr, align 8, !dbg !6564
  %call8 = call i32 @drm_atomic_set_property(%struct.drm_atomic_state* %18, %struct.drm_file* %19, %struct.drm_mode_object* %20, %struct.drm_property* %21, i64 %22) #5, !dbg !6565
  store i32 %call8, i32* %ret, align 4, !dbg !6566
  %23 = load i32, i32* %ret, align 4, !dbg !6567
  %tobool9 = icmp ne i32 %23, 0, !dbg !6567
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6569

if.then10:                                        ; preds = %if.else
  br label %out, !dbg !6570

if.end11:                                         ; preds = %if.else
  %24 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6571
  %call12 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %24) #5, !dbg !6572
  store i32 %call12, i32* %ret, align 4, !dbg !6573
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %do.end
  br label %out, !dbg !6537

out:                                              ; preds = %if.end13, %if.then10, %if.then5
  call void @llvm.dbg.label(metadata !6574), !dbg !6575
  %25 = load i32, i32* %ret, align 4, !dbg !6576
  %cmp14 = icmp eq i32 %25, -35, !dbg !6578
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !6579

if.then16:                                        ; preds = %out
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6580
  call void @drm_atomic_state_clear(%struct.drm_atomic_state* %26) #5, !dbg !6582
  %call17 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6583
  br label %retry, !dbg !6584

if.end18:                                         ; preds = %out
  %27 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state, align 8, !dbg !6585
  call void @drm_atomic_state_put(%struct.drm_atomic_state* %27) #5, !dbg !6586
  call void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6587
  call void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6588
  %28 = load i32, i32* %ret, align 4, !dbg !6589
  store i32 %28, i32* %retval, align 4, !dbg !6590
  br label %return, !dbg !6590

return:                                           ; preds = %if.end18, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !6591
  ret i32 %29, !dbg !6591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_property_legacy(%struct.drm_mode_object* %obj, %struct.drm_property* %prop, i64 %prop_value) #0 !dbg !6592 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.drm_mode_object*, align 8
  %prop.addr = alloca %struct.drm_property*, align 8
  %prop_value.addr = alloca i64, align 8
  %dev = alloca %struct.drm_device*, align 8
  %ref = alloca %struct.drm_mode_object*, align 8
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_plane*, align 8
  store %struct.drm_mode_object* %obj, %struct.drm_mode_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %obj.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  store %struct.drm_property* %prop, %struct.drm_property** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_property** %prop.addr, metadata !6595, metadata !DIExpression()), !dbg !6596
  store i64 %prop_value, i64* %prop_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %prop_value.addr, metadata !6597, metadata !DIExpression()), !dbg !6598
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !6599, metadata !DIExpression()), !dbg !6600
  %0 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6601
  %dev1 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %0, i32 0, i32 6, !dbg !6602
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !6602
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !6600
  call void @llvm.dbg.declare(metadata %struct.drm_mode_object** %ref, metadata !6603, metadata !DIExpression()), !dbg !6604
  call void @llvm.dbg.declare(metadata %struct.drm_modeset_acquire_ctx* %ctx, metadata !6605, metadata !DIExpression()), !dbg !6606
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6607, metadata !DIExpression()), !dbg !6608
  store i32 -22, i32* %ret, align 4, !dbg !6608
  %2 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6609
  %3 = load i64, i64* %prop_value.addr, align 8, !dbg !6611
  %call = call zeroext i1 @drm_property_change_valid_get(%struct.drm_property* %2, i64 %3, %struct.drm_mode_object** %ref) #5, !dbg !6612
  br i1 %call, label %if.end, label %if.then, !dbg !6613

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6614
  br label %return, !dbg !6614

if.end:                                           ; preds = %entry
  %4 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6615
  %call2 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %4) #5, !dbg !6615
  br i1 %call2, label %if.end4, label %if.then3, !dbg !6617

if.then3:                                         ; preds = %if.end
  %5 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6615
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 35, !dbg !6615
  %mutex = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 0, !dbg !6615
  call void @mutex_lock(%struct.mutex* %mutex) #5, !dbg !6615
  br label %if.end4, !dbg !6615

if.end4:                                          ; preds = %if.then3, %if.end
  call void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %ctx, i32 0) #5, !dbg !6617
  br label %modeset_lock_retry, !dbg !6617

modeset_lock_retry:                               ; preds = %if.then16, %if.end4
  call void @llvm.dbg.label(metadata !6618), !dbg !6617
  %6 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6617
  %call5 = call i32 @drm_modeset_lock_all_ctx(%struct.drm_device* %6, %struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6617
  store i32 %call5, i32* %ret, align 4, !dbg !6617
  %7 = load i32, i32* %ret, align 4, !dbg !6619
  %tobool = icmp ne i32 %7, 0, !dbg !6619
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !6617

if.then6:                                         ; preds = %modeset_lock_retry
  br label %modeset_lock_fail, !dbg !6619

if.end7:                                          ; preds = %modeset_lock_retry
  %8 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6621
  %type = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %8, i32 0, i32 1, !dbg !6622
  %9 = load i32, i32* %type, align 4, !dbg !6622
  switch i32 %9, label %sw.epilog [
    i32 -1061109568, label %sw.bb
    i32 -858993460, label %sw.bb9
    i32 -286331154, label %sw.bb11
  ], !dbg !6623

sw.bb:                                            ; preds = %if.end7
  %10 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6624
  %11 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6626
  %12 = load i64, i64* %prop_value.addr, align 8, !dbg !6627
  %call8 = call i32 @drm_connector_set_obj_prop(%struct.drm_mode_object* %10, %struct.drm_property* %11, i64 %12) #5, !dbg !6628
  store i32 %call8, i32* %ret, align 4, !dbg !6629
  br label %sw.epilog, !dbg !6630

sw.bb9:                                           ; preds = %if.end7
  %13 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6631
  %14 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6632
  %15 = load i64, i64* %prop_value.addr, align 8, !dbg !6633
  %call10 = call i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object* %13, %struct.drm_property* %14, i64 %15) #5, !dbg !6634
  store i32 %call10, i32* %ret, align 4, !dbg !6635
  br label %sw.epilog, !dbg !6636

sw.bb11:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6637, metadata !DIExpression()), !dbg !6639
  %16 = load %struct.drm_mode_object*, %struct.drm_mode_object** %obj.addr, align 8, !dbg !6639
  %17 = bitcast %struct.drm_mode_object* %16 to i8*, !dbg !6639
  store i8* %17, i8** %__mptr, align 8, !dbg !6639
  br label %do.body, !dbg !6639

do.body:                                          ; preds = %sw.bb11
  br label %do.end, !dbg !6640

do.end:                                           ; preds = %do.body
  %18 = load i8*, i8** %__mptr, align 8, !dbg !6639
  %add.ptr = getelementptr i8, i8* %18, i64 -80, !dbg !6639
  %19 = bitcast i8* %add.ptr to %struct.drm_plane*, !dbg !6639
  store %struct.drm_plane* %19, %struct.drm_plane** %tmp, align 8, !dbg !6640
  %20 = load %struct.drm_plane*, %struct.drm_plane** %tmp, align 8, !dbg !6639
  %21 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6642
  %22 = load i64, i64* %prop_value.addr, align 8, !dbg !6643
  %call12 = call i32 @drm_mode_plane_set_obj_prop(%struct.drm_plane* %20, %struct.drm_property* %21, i64 %22) #5, !dbg !6644
  store i32 %call12, i32* %ret, align 4, !dbg !6645
  br label %sw.epilog, !dbg !6646

sw.epilog:                                        ; preds = %if.end7, %do.end, %sw.bb9, %sw.bb
  %23 = load %struct.drm_property*, %struct.drm_property** %prop.addr, align 8, !dbg !6647
  %24 = load %struct.drm_mode_object*, %struct.drm_mode_object** %ref, align 8, !dbg !6648
  call void @drm_property_change_valid_put(%struct.drm_property* %23, %struct.drm_mode_object* %24) #5, !dbg !6649
  br label %modeset_lock_fail, !dbg !6649

modeset_lock_fail:                                ; preds = %sw.epilog, %if.then6
  call void @llvm.dbg.label(metadata !6650), !dbg !6651
  %25 = load i32, i32* %ret, align 4, !dbg !6652
  %cmp = icmp eq i32 %25, -35, !dbg !6652
  br i1 %cmp, label %if.then13, label %if.end18, !dbg !6651

if.then13:                                        ; preds = %modeset_lock_fail
  %call14 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6654
  store i32 %call14, i32* %ret, align 4, !dbg !6654
  %26 = load i32, i32* %ret, align 4, !dbg !6656
  %tobool15 = icmp ne i32 %26, 0, !dbg !6656
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6654

if.then16:                                        ; preds = %if.then13
  br label %modeset_lock_retry, !dbg !6656

if.end17:                                         ; preds = %if.then13
  br label %if.end18, !dbg !6654

if.end18:                                         ; preds = %if.end17, %modeset_lock_fail
  call void @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6651
  call void @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %ctx) #5, !dbg !6651
  %27 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6658
  %call19 = call zeroext i1 @drm_drv_uses_atomic_modeset(%struct.drm_device* %27) #5, !dbg !6658
  br i1 %call19, label %if.end23, label %if.then20, !dbg !6651

if.then20:                                        ; preds = %if.end18
  %28 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6658
  %mode_config21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 35, !dbg !6658
  %mutex22 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config21, i32 0, i32 0, !dbg !6658
  call void @mutex_unlock(%struct.mutex* %mutex22) #5, !dbg !6658
  br label %if.end23, !dbg !6658

if.end23:                                         ; preds = %if.then20, %if.end18
  %29 = load i32, i32* %ret, align 4, !dbg !6660
  store i32 %29, i32* %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

return:                                           ; preds = %if.end23, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !6662
  ret i32 %30, !dbg !6662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !6663 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6667, metadata !DIExpression()), !dbg !6673
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6678, metadata !DIExpression()), !dbg !6679
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6680, metadata !DIExpression()), !dbg !6688
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6690, metadata !DIExpression()), !dbg !6691
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6692, metadata !DIExpression()), !dbg !6693
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6694, metadata !DIExpression()), !dbg !6695
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6696, metadata !DIExpression()), !dbg !6697
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !6698, metadata !DIExpression()), !dbg !6699
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6700
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6701
  %1 = load i32, i32* %n.addr, align 4, !dbg !6702
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6703
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6703
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6704
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6705
  %conv.i.i = trunc i64 %5 to i32, !dbg !6705
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !6706
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6707
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6707
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #6, !dbg !6707
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6708
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !6709
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6710
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6710
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !6710
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !6710
  ret void, !dbg !6712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6713 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6717, metadata !DIExpression()), !dbg !6718
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6719, metadata !DIExpression()), !dbg !6720
  ret i1 true, !dbg !6721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6722 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6726, metadata !DIExpression()), !dbg !6727
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6728, metadata !DIExpression()), !dbg !6729
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  ret void, !dbg !6732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %r) #0 !dbg !6733 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6736, metadata !DIExpression()), !dbg !6737
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6738
  %call = call zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %0, i32* null) #5, !dbg !6739
  ret i1 %call, !dbg !6740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6741 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6744, metadata !DIExpression()), !dbg !6745
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6746, metadata !DIExpression()), !dbg !6747
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6748
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6749
  %call = call zeroext i1 @__refcount_add_not_zero(i32 1, %struct.refcount_struct* %0, i32* %1) #5, !dbg !6750
  ret i1 %call, !dbg !6751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6752 {
entry:
  %v.addr.i5.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i, metadata !6755, metadata !DIExpression()), !dbg !6759
  %old.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i, metadata !6763, metadata !DIExpression()), !dbg !6764
  %new.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i, metadata !6765, metadata !DIExpression()), !dbg !6766
  %success.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i, metadata !6767, metadata !DIExpression()), !dbg !6769
  %_old.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i, metadata !6770, metadata !DIExpression()), !dbg !6769
  %__old.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i, metadata !6771, metadata !DIExpression()), !dbg !6769
  %__new.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i, metadata !6772, metadata !DIExpression()), !dbg !6769
  %__ptr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i, metadata !6773, metadata !DIExpression()), !dbg !6769
  %tmp.i.i = alloca i64, align 8
  %v.addr.i1.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i, metadata !6774, metadata !DIExpression()), !dbg !6776
  %size.addr.i2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i, metadata !6778, metadata !DIExpression()), !dbg !6779
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6774, metadata !DIExpression()), !dbg !6780
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6778, metadata !DIExpression()), !dbg !6782
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6783, metadata !DIExpression()), !dbg !6784
  %old.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i, metadata !6785, metadata !DIExpression()), !dbg !6786
  %new.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i, metadata !6787, metadata !DIExpression()), !dbg !6788
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6789, metadata !DIExpression()), !dbg !6790
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6791, metadata !DIExpression()), !dbg !6792
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6793, metadata !DIExpression()), !dbg !6794
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6795, metadata !DIExpression()), !dbg !6796
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6797
  %call = call i32 @refcount_read(%struct.refcount_struct* %0) #5, !dbg !6798
  store i32 %call, i32* %old, align 4, !dbg !6796
  br label %do.body, !dbg !6799

do.body:                                          ; preds = %atomic_try_cmpxchg_relaxed.exit, %entry
  %1 = load i32, i32* %old, align 4, !dbg !6800
  %tobool = icmp ne i32 %1, 0, !dbg !6800
  br i1 %tobool, label %if.end, label %if.then, !dbg !6803

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6804

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6805

do.cond:                                          ; preds = %if.end
  %2 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6806
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %2, i32 0, i32 0, !dbg !6807
  %3 = load i32, i32* %old, align 4, !dbg !6808
  %4 = load i32, i32* %i.addr, align 4, !dbg !6809
  %add = add i32 %3, %4, !dbg !6810
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32* %old, i32** %old.addr.i, align 8
  store i32 %add, i32* %new.addr.i, align 4
  %5 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6811
  %6 = bitcast %struct.atomic_t* %5 to i8*, !dbg !6811
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6812
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6813
  %conv.i.i = trunc i64 %8 to i32, !dbg !6813
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #6, !dbg !6814
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6815
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6815
  call void @kcsan_check_access(i8* %9, i64 %10, i32 7) #6, !dbg !6815
  %11 = load i32*, i32** %old.addr.i, align 8, !dbg !6816
  %12 = bitcast i32* %11 to i8*, !dbg !6816
  store i8* %12, i8** %v.addr.i1.i, align 8
  store i64 4, i64* %size.addr.i2.i, align 8
  %13 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !6817
  %14 = load i64, i64* %size.addr.i2.i, align 8, !dbg !6818
  %conv.i3.i = trunc i64 %14 to i32, !dbg !6818
  %call.i4.i = call zeroext i1 @kasan_check_write(i8* %13, i32 %conv.i3.i) #6, !dbg !6819
  %15 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !6820
  %16 = load i64, i64* %size.addr.i2.i, align 8, !dbg !6820
  call void @kcsan_check_access(i8* %15, i64 %16, i32 7) #6, !dbg !6820
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6821
  %18 = load i32*, i32** %old.addr.i, align 8, !dbg !6822
  %19 = load i32, i32* %new.addr.i, align 4, !dbg !6823
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i5.i, align 8
  store i32* %18, i32** %old.addr.i.i, align 8
  store i32 %19, i32* %new.addr.i.i, align 4
  %20 = load i32*, i32** %old.addr.i.i, align 8, !dbg !6769
  store i32* %20, i32** %_old.i.i, align 8, !dbg !6769
  %21 = load i32*, i32** %_old.i.i, align 8, !dbg !6769
  %22 = load i32, i32* %21, align 4, !dbg !6769
  store i32 %22, i32* %__old.i.i, align 4, !dbg !6769
  %23 = load i32, i32* %new.addr.i.i, align 4, !dbg !6769
  store i32 %23, i32* %__new.i.i, align 4, !dbg !6769
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i, align 8, !dbg !6769
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %24, i32 0, i32 0, !dbg !6769
  store i32* %counter.i.i, i32** %__ptr.i.i, align 8, !dbg !6769
  %25 = load i32*, i32** %__ptr.i.i, align 8, !dbg !6769
  %26 = load i32, i32* %__old.i.i, align 4, !dbg !6769
  %27 = load i32, i32* %__new.i.i, align 4, !dbg !6769
  %28 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %25, i32 %27, i32* %25, i32 %26) #4, !dbg !6769, !srcloc !6824
  %asmresult.i.i = extractvalue { i8, i32 } %28, 0, !dbg !6769
  %asmresult1.i.i = extractvalue { i8, i32 } %28, 1, !dbg !6769
  store i8 %asmresult.i.i, i8* %success.i.i, align 1, !dbg !6769
  store i32 %asmresult1.i.i, i32* %__old.i.i, align 4, !dbg !6769
  %29 = load i8, i8* %success.i.i, align 1, !dbg !6825
  %tobool.i.i = trunc i8 %29 to i1, !dbg !6825
  %lnot.i.i = xor i1 %tobool.i.i, true, !dbg !6825
  %lnot3.i.i = xor i1 %tobool.i.i, true, !dbg !6825
  %lnot.ext.i.i = zext i1 %lnot3.i.i to i32, !dbg !6825
  %conv.i6.i = sext i32 %lnot.ext.i.i to i64, !dbg !6825
  br i1 %lnot3.i.i, label %if.then.i.i, label %atomic_try_cmpxchg_relaxed.exit, !dbg !6769

if.then.i.i:                                      ; preds = %do.cond
  %30 = load i32, i32* %__old.i.i, align 4, !dbg !6825
  %31 = load i32*, i32** %_old.i.i, align 8, !dbg !6825
  store i32 %30, i32* %31, align 4, !dbg !6825
  br label %atomic_try_cmpxchg_relaxed.exit, !dbg !6825

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond, %if.then.i.i
  %32 = load i8, i8* %success.i.i, align 1, !dbg !6769
  %tobool5.i.i = trunc i8 %32 to i1, !dbg !6769
  %lnot6.i.i = xor i1 %tobool5.i.i, true, !dbg !6769
  %lnot.ext9.i.i = zext i1 %tobool5.i.i to i32, !dbg !6769
  %conv10.i.i = sext i32 %lnot.ext9.i.i to i64, !dbg !6769
  store i64 %conv10.i.i, i64* %tmp.i.i, align 8, !dbg !6825
  %33 = load i64, i64* %tmp.i.i, align 8, !dbg !6769
  %tobool11.i.i = icmp ne i64 %33, 0, !dbg !6827
  %lnot = xor i1 %tobool11.i.i, true, !dbg !6828
  br i1 %lnot, label %do.body, label %do.end, !dbg !6805, !llvm.loop !6829

do.end:                                           ; preds = %atomic_try_cmpxchg_relaxed.exit, %if.then
  %34 = load i32*, i32** %oldp.addr, align 8, !dbg !6831
  %tobool2 = icmp ne i32* %34, null, !dbg !6831
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6833

if.then3:                                         ; preds = %do.end
  %35 = load i32, i32* %old, align 4, !dbg !6834
  %36 = load i32*, i32** %oldp.addr, align 8, !dbg !6835
  store i32 %35, i32* %36, align 4, !dbg !6836
  br label %if.end4, !dbg !6837

if.end4:                                          ; preds = %if.then3, %do.end
  %37 = load i32, i32* %old, align 4, !dbg !6838
  %cmp = icmp slt i32 %37, 0, !dbg !6838
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6838

lor.rhs:                                          ; preds = %if.end4
  %38 = load i32, i32* %old, align 4, !dbg !6838
  %39 = load i32, i32* %i.addr, align 4, !dbg !6838
  %add5 = add i32 %38, %39, !dbg !6838
  %cmp6 = icmp slt i32 %add5, 0, !dbg !6838
  br label %lor.end, !dbg !6838

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %40 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %40, true, !dbg !6838
  %lnot8 = xor i1 %lnot7, true, !dbg !6838
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6838
  %conv = sext i32 %lnot.ext to i64, !dbg !6838
  %tobool9 = icmp ne i64 %conv, 0, !dbg !6838
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6840

if.then10:                                        ; preds = %lor.end
  %41 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6841
  call void @refcount_warn_saturate(%struct.refcount_struct* %41, i32 0) #5, !dbg !6842
  br label %if.end11, !dbg !6842

if.end11:                                         ; preds = %if.then10, %lor.end
  %42 = load i32, i32* %old, align 4, !dbg !6843
  %tobool12 = icmp ne i32 %42, 0, !dbg !6843
  ret i1 %tobool12, !dbg !6844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !6845 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6850, metadata !DIExpression()), !dbg !6856
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6860, metadata !DIExpression()), !dbg !6862
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6864, metadata !DIExpression()), !dbg !6865
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6866, metadata !DIExpression()), !dbg !6867
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6868, metadata !DIExpression()), !dbg !6869
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6870
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6871
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6872
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !6872
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6873
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !6874
  %conv.i.i = trunc i64 %4 to i32, !dbg !6874
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #6, !dbg !6875
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6876
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6876
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #6, !dbg !6876
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6877
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6878
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !6878
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !6878
  ret i32 %9, !dbg !6879
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6880 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6881, metadata !DIExpression()), !dbg !6882
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6883, metadata !DIExpression()), !dbg !6884
  ret i1 true, !dbg !6885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !6886 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6887, metadata !DIExpression()), !dbg !6888
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6889
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #5, !dbg !6890
  ret i1 %call, !dbg !6891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6892 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6893, metadata !DIExpression()), !dbg !6894
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6895, metadata !DIExpression()), !dbg !6896
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6897
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6898
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #5, !dbg !6899
  ret i1 %call, !dbg !6900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6901 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6902, metadata !DIExpression()), !dbg !6906
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6910, metadata !DIExpression()), !dbg !6911
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6912, metadata !DIExpression()), !dbg !6914
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6774, metadata !DIExpression()), !dbg !6915
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6778, metadata !DIExpression()), !dbg !6917
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6918, metadata !DIExpression()), !dbg !6919
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6920, metadata !DIExpression()), !dbg !6921
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6922, metadata !DIExpression()), !dbg !6923
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6924, metadata !DIExpression()), !dbg !6925
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6926, metadata !DIExpression()), !dbg !6927
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6928, metadata !DIExpression()), !dbg !6929
  %0 = load i32, i32* %i.addr, align 4, !dbg !6930
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6931
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !6932
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6933
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6933
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6934
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6935
  %conv.i.i = trunc i64 %5 to i32, !dbg !6935
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !6936
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6937
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6937
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #6, !dbg !6937
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !6938
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6939
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6914
  %sub.i.i = sub i32 0, %10, !dbg !6914
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !6914
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6914
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6914
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6914
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #4, !dbg !6914, !srcloc !6940
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6914
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6914
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6914
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6914
  store i32 %15, i32* %old, align 4, !dbg !6929
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !6941
  %tobool = icmp ne i32* %16, null, !dbg !6941
  br i1 %tobool, label %if.then, label %if.end, !dbg !6943

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6944
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6945
  store i32 %17, i32* %18, align 4, !dbg !6946
  br label %if.end, !dbg !6947

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6948
  %20 = load i32, i32* %i.addr, align 4, !dbg !6950
  %cmp = icmp eq i32 %19, %20, !dbg !6951
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6952

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6953, !srcloc !6955
  store i1 true, i1* %retval, align 1, !dbg !6956
  br label %return, !dbg !6956

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6957
  %cmp3 = icmp slt i32 %21, 0, !dbg !6957
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !6957

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !6957
  %23 = load i32, i32* %i.addr, align 4, !dbg !6957
  %sub = sub i32 %22, %23, !dbg !6957
  %cmp4 = icmp slt i32 %sub, 0, !dbg !6957
  br label %lor.end, !dbg !6957

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !6957
  %lnot5 = xor i1 %lnot, true, !dbg !6957
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6957
  %conv = sext i32 %lnot.ext to i64, !dbg !6957
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6957
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6959

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6960
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #5, !dbg !6961
  br label %if.end8, !dbg !6961

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !6962
  br label %return, !dbg !6962

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !6963
  ret i1 %26, !dbg !6963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !6964 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6967, metadata !DIExpression()), !dbg !6968
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6969
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #5, !dbg !6970
  ret void, !dbg !6971
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6972 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6975, metadata !DIExpression()), !dbg !6976
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6977, metadata !DIExpression()), !dbg !6978
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6979
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6980
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #5, !dbg !6981
  ret void, !dbg !6982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6983 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6986, metadata !DIExpression()), !dbg !6988
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6992, metadata !DIExpression()), !dbg !6993
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6994, metadata !DIExpression()), !dbg !6996
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6774, metadata !DIExpression()), !dbg !6997
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6778, metadata !DIExpression()), !dbg !6999
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !7000, metadata !DIExpression()), !dbg !7001
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !7002, metadata !DIExpression()), !dbg !7003
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !7004, metadata !DIExpression()), !dbg !7005
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !7006, metadata !DIExpression()), !dbg !7007
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !7008, metadata !DIExpression()), !dbg !7009
  call void @llvm.dbg.declare(metadata i32* %old, metadata !7010, metadata !DIExpression()), !dbg !7011
  %0 = load i32, i32* %i.addr, align 4, !dbg !7012
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7013
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !7014
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7015
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !7015
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7016
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !7017
  %conv.i.i = trunc i64 %5 to i32, !dbg !7017
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !7018
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7019
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !7019
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #6, !dbg !7019
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !7020
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7021
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6996
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !6996
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6996
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6996
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6996
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #4, !dbg !6996, !srcloc !7022
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6996
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6996
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6996
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6996
  store i32 %15, i32* %old, align 4, !dbg !7011
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !7023
  %tobool = icmp ne i32* %16, null, !dbg !7023
  br i1 %tobool, label %if.then, label %if.end, !dbg !7025

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !7026
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !7027
  store i32 %17, i32* %18, align 4, !dbg !7028
  br label %if.end, !dbg !7029

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !7030
  %tobool1 = icmp ne i32 %19, 0, !dbg !7030
  %lnot = xor i1 %tobool1, true, !dbg !7030
  %lnot2 = xor i1 %lnot, true, !dbg !7030
  %lnot3 = xor i1 %lnot2, true, !dbg !7030
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7030
  %conv = sext i32 %lnot.ext to i64, !dbg !7030
  %tobool4 = icmp ne i64 %conv, 0, !dbg !7030
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !7032

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7033
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #5, !dbg !7034
  br label %if.end17, !dbg !7034

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !7035
  %cmp = icmp slt i32 %21, 0, !dbg !7035
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7035

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !7035
  %23 = load i32, i32* %i.addr, align 4, !dbg !7035
  %add = add i32 %22, %23, !dbg !7035
  %cmp7 = icmp slt i32 %add, 0, !dbg !7035
  br label %lor.end, !dbg !7035

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !7035
  %lnot11 = xor i1 %lnot9, true, !dbg !7035
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !7035
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !7035
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !7035
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !7037

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7038
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #5, !dbg !7039
  br label %if.end16, !dbg !7039

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !7040
}

; Function Attrs: noredzone
declare dso_local i32 @drm_atomic_get_property(%struct.drm_mode_object*, %struct.drm_property*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_all_features(%struct.drm_device* %dev, i32 %features) #0 !dbg !7041 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !7044, metadata !DIExpression()), !dbg !7045
  store i32 %features, i32* %features.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %features.addr, metadata !7046, metadata !DIExpression()), !dbg !7047
  call void @llvm.dbg.declare(metadata i32* %supported, metadata !7048, metadata !DIExpression()), !dbg !7049
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !7050
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !7051
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !7051
  %driver_features = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 38, !dbg !7052
  %2 = load i32, i32* %driver_features, align 8, !dbg !7052
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !7053
  %driver_features1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 11, !dbg !7054
  %4 = load i32, i32* %driver_features1, align 8, !dbg !7054
  %and = and i32 %2, %4, !dbg !7055
  store i32 %and, i32* %supported, align 4, !dbg !7049
  %5 = load i32, i32* %features.addr, align 4, !dbg !7056
  %tobool = icmp ne i32 %5, 0, !dbg !7056
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7057

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %supported, align 4, !dbg !7058
  %7 = load i32, i32* %features.addr, align 4, !dbg !7059
  %and2 = and i32 %6, %7, !dbg !7060
  %8 = load i32, i32* %features.addr, align 4, !dbg !7061
  %cmp = icmp eq i32 %and2, %8, !dbg !7062
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7063
  ret i1 %9, !dbg !7064
}

; Function Attrs: noredzone
declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_atomic_connector_commit_dpms(%struct.drm_atomic_state*, %struct.drm_connector*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_atomic_set_property(%struct.drm_atomic_state*, %struct.drm_file*, %struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #2

; Function Attrs: noredzone
declare dso_local void @drm_atomic_state_clear(%struct.drm_atomic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_atomic_state_put(%struct.drm_atomic_state* %state) #0 !dbg !7065 {
entry:
  %state.addr = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_atomic_state* %state, %struct.drm_atomic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_atomic_state** %state.addr, metadata !7066, metadata !DIExpression()), !dbg !7067
  %0 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %state.addr, align 8, !dbg !7068
  %ref = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %0, i32 0, i32 0, !dbg !7069
  %call = call i32 @kref_put(%struct.kref* %ref, void (%struct.kref*)* @__drm_atomic_state_free) #5, !dbg !7070
  ret void, !dbg !7071
}

; Function Attrs: noredzone
declare dso_local void @__drm_atomic_state_free(%struct.kref*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @drm_property_change_valid_get(%struct.drm_property*, i64, %struct.drm_mode_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_connector_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_mode_plane_set_obj_prop(%struct.drm_plane*, %struct.drm_property*, i64) #2

; Function Attrs: noredzone
declare dso_local void @drm_property_change_valid_put(%struct.drm_property*, %struct.drm_mode_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!5524}
!llvm.module.flags = !{!5525, !5526, !5527, !5528}
!llvm.ident = !{!5529}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !283, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_mode_object.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !105, !111, !155, !164, !170, !175, !183, !187, !203, !209, !216, !223, !228, !234, !241, !246, !259, !275}
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
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !106, line: 11, baseType: !5, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !112, line: 91, baseType: !113, size: 32, elements: !114)
!112 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!115 = !DIEnumerator(name: "MODE_OK", value: 0)
!116 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!117 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!118 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!119 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!120 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!121 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!122 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!123 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!124 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!125 = !DIEnumerator(name: "MODE_MEM", value: 10)
!126 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!127 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!128 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!129 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!130 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!131 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!132 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!133 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!134 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!135 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!136 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!137 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!138 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!139 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!140 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!141 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!142 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!143 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!144 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!145 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!146 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!147 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!148 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!149 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!150 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!151 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!152 = !DIEnumerator(name: "MODE_STALE", value: -3)
!153 = !DIEnumerator(name: "MODE_BAD", value: -2)
!154 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !156, line: 96, baseType: !5, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161, !162, !163}
!158 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!163 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !165, line: 94, baseType: !5, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !165, line: 59, baseType: !5, size: 32, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "connector_status_connected", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "connector_status_disconnected", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "connector_status_unknown", value: 3, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !165, line: 133, baseType: !5, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIEnumerator(name: "SubPixelUnknown", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3, isUnsigned: true)
!181 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4, isUnsigned: true)
!182 = !DIEnumerator(name: "SubPixelNone", value: 5, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !165, line: 223, baseType: !5, size: 32, elements: !184)
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1, isUnsigned: true)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !188, line: 334, baseType: !5, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!190 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0, isUnsigned: true)
!191 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3, isUnsigned: true)
!194 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4, isUnsigned: true)
!195 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5, isUnsigned: true)
!196 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6, isUnsigned: true)
!197 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8, isUnsigned: true)
!198 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9, isUnsigned: true)
!199 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10, isUnsigned: true)
!200 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11, isUnsigned: true)
!201 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15, isUnsigned: true)
!202 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18, isUnsigned: true)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !165, line: 46, baseType: !5, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208}
!205 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0, isUnsigned: true)
!206 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1, isUnsigned: true)
!207 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2, isUnsigned: true)
!208 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3, isUnsigned: true)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !165, line: 249, baseType: !113, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215}
!211 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!212 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!213 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!214 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!215 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !217, line: 77, baseType: !5, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !220, !221, !222}
!219 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3, isUnsigned: true)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !217, line: 84, baseType: !5, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0, isUnsigned: true)
!226 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1, isUnsigned: true)
!227 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2, isUnsigned: true)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !229, line: 536, baseType: !5, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0, isUnsigned: true)
!232 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1, isUnsigned: true)
!233 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2, isUnsigned: true)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !235, line: 33, baseType: !5, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 10, baseType: !5, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !245}
!244 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !247, line: 277, baseType: !5, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!249 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!250 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!251 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!252 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!253 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!254 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!255 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!256 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!257 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!258 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !260, line: 50, baseType: !5, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!262 = !DIEnumerator(name: "DRIVER_GEM", value: 1, isUnsigned: true)
!263 = !DIEnumerator(name: "DRIVER_MODESET", value: 2, isUnsigned: true)
!264 = !DIEnumerator(name: "DRIVER_RENDER", value: 8, isUnsigned: true)
!265 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16, isUnsigned: true)
!266 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32, isUnsigned: true)
!267 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64, isUnsigned: true)
!268 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432, isUnsigned: true)
!269 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864, isUnsigned: true)
!270 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728, isUnsigned: true)
!271 = !DIEnumerator(name: "DRIVER_SG", value: 268435456, isUnsigned: true)
!272 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912, isUnsigned: true)
!273 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824, isUnsigned: true)
!274 = !DIEnumerator(name: "DRIVER_KMS_LEGACY_CONTEXT", value: 2147483648, isUnsigned: true)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !276, line: 119, baseType: !5, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!279 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!280 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!281 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!282 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!283 = !{!284, !286, !287, !4211, !426, !4282, !5518, !5520, !810, !5522, !4598}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !285, line: 148, baseType: !5)
!285 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !165, line: 1170, size: 9280, elements: !289)
!289 = !{!290, !5184, !5185, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5256, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5319, !5320, !5324, !5343, !5344, !5345, !5346, !5347, !5348, !5350, !5352, !5354, !5355, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !288, file: !165, line: 1172, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !235, line: 53, size: 11840, elements: !293)
!293 = !{!294, !300, !301, !314, !4083, !4089, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4350, !4351, !4352, !4353, !4354, !4355, !4358, !4362, !4363, !5172, !5173, !5174, !5177, !5180, !5181}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !292, file: !235, line: 59, baseType: !295, size: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !285, line: 178, size: 128, elements: !296)
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !285, line: 179, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !295, file: !285, line: 179, baseType: !298, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !292, file: !235, line: 62, baseType: !113, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !292, file: !235, line: 65, baseType: !302, size: 32, offset: 160)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !303, line: 19, size: 32, elements: !304)
!303 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !302, file: !303, line: 20, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !276, line: 113, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !276, line: 111, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !307, file: !276, line: 112, baseType: !310, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !285, line: 168, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 166, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !311, file: !285, line: 167, baseType: !113, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !292, file: !235, line: 68, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !317)
!317 = !{!318, !3537, !3538, !3541, !3542, !3593, !3684, !3685, !3686, !3687, !3688, !3697, !3802, !3815, !4010, !4011, !4015, !4017, !4018, !4019, !4023, !4029, !4030, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4071, !4072, !4073, !4076, !4079, !4080, !4081, !4082}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !316, file: !71, line: 462, baseType: !319, size: 512)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !320, line: 64, size: 512, elements: !321)
!320 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !326, !327, !329, !389, !3410, !3531, !3532, !3533, !3534, !3535, !3536}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !320, line: 65, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !319, file: !320, line: 66, baseType: !295, size: 128, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !319, file: !320, line: 67, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !319, file: !320, line: 68, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !320, line: 192, size: 704, elements: !332)
!332 = !{!333, !334, !350, !351}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !331, file: !320, line: 193, baseType: !295, size: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !331, file: !320, line: 194, baseType: !335, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !336, line: 83, baseType: !337)
!336 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !336, line: 71, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !336, line: 72, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !336, line: 72, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !340, file: !336, line: 73, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !336, line: 20, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !343, file: !336, line: 21, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !347, line: 25, baseType: !348)
!347 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 25, elements: !349)
!349 = !{}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !331, file: !320, line: 195, baseType: !319, size: 512, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !331, file: !320, line: 196, baseType: !352, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !320, line: 156, size: 192, elements: !355)
!355 = !{!356, !361, !366}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !354, file: !320, line: 157, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!113, !330, !328}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !320, line: 158, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!323, !330, !328}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !354, file: !320, line: 159, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!113, !330, !328, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !320, line: 148, size: 20736, elements: !373)
!373 = !{!374, !379, !383, !384, !388}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !372, file: !320, line: 149, baseType: !375, size: 192)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 192, elements: !377)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!377 = !{!378}
!378 = !DISubrange(count: 3)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !372, file: !320, line: 150, baseType: !380, size: 4096, offset: 192)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 4096, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !372, file: !320, line: 151, baseType: !113, size: 32, offset: 4288)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !372, file: !320, line: 152, baseType: !385, size: 16384, offset: 4320)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 16384, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 2048)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !372, file: !320, line: 153, baseType: !113, size: 32, offset: 20704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !319, file: !320, line: 69, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !320, line: 138, size: 448, elements: !392)
!392 = !{!393, !397, !427, !429, !3372, !3400, !3404}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !391, file: !320, line: 139, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !328}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !391, file: !320, line: 140, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !401, line: 230, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !419}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !400, file: !401, line: 231, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !328, !412, !376}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !285, line: 60, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !409, line: 73, baseType: !410)
!409 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !409, line: 15, baseType: !411)
!411 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !401, line: 30, size: 128, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !413, file: !401, line: 31, baseType: !323, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !413, file: !401, line: 32, baseType: !417, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !285, line: 19, baseType: !418)
!418 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !400, file: !401, line: 232, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!407, !328, !412, !323, !423}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !285, line: 55, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !409, line: 72, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !409, line: 16, baseType: !426)
!426 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !391, file: !320, line: 141, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !391, file: !320, line: 142, baseType: !430, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !401, line: 84, size: 320, elements: !434)
!434 = !{!435, !436, !440, !3369, !3370}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !401, line: 85, baseType: !323, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !433, file: !401, line: 86, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!417, !328, !412, !113}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !433, file: !401, line: 88, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!417, !328, !444, !113}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !401, line: 168, size: 448, elements: !446)
!446 = !{!447, !448, !449, !450, !3364, !3365}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !445, file: !401, line: 169, baseType: !413, size: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !445, file: !401, line: 170, baseType: !423, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !445, file: !401, line: 171, baseType: !286, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !445, file: !401, line: 172, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!407, !454, !328, !444, !376, !633, !423}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !456)
!456 = !{!457, !475, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3347, !3348, !3357, !3358, !3359, !3360, !3361, !3362, !3363}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !455, file: !42, line: 920, baseType: !458, size: 128)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !42, line: 917, size: 128, elements: !459)
!459 = !{!460, !466}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !458, file: !42, line: 918, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !462, line: 58, size: 64, elements: !463)
!462 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !462, line: 59, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !458, file: !42, line: 919, baseType: !467, size: 128, align: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !285, line: 216, size: 128, align: 64, elements: !468)
!468 = !{!469, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !285, line: 217, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !467, file: !285, line: 218, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !470}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !455, file: !42, line: 921, baseType: !476, size: 128, offset: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !477, line: 8, size: 128, elements: !478)
!477 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!478 = !{!479, !483}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !476, file: !477, line: 9, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !482, line: 18, flags: DIFlagFwdDecl)
!482 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !476, file: !477, line: 10, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !482, line: 89, size: 1536, elements: !486)
!486 = !{!487, !488, !498, !506, !507, !530, !3297, !3299, !3311, !3312, !3313, !3314, !3315, !3321, !3322, !3323}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !485, file: !482, line: 91, baseType: !5, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !485, file: !482, line: 92, baseType: !489, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !490, line: 277, baseType: !491)
!490 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !490, line: 277, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !491, file: !490, line: 277, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !490, line: 70, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !490, line: 65, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !495, file: !490, line: 66, baseType: !5, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !485, file: !482, line: 93, baseType: !499, size: 128, offset: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !500, line: 38, size: 128, elements: !501)
!500 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !504}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !500, line: 39, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !499, file: !500, line: 39, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !485, file: !482, line: 94, baseType: !484, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !485, file: !482, line: 95, baseType: !508, size: 128, offset: 256)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !482, line: 47, size: 128, elements: !509)
!509 = !{!510, !526}
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !482, line: 48, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !482, line: 48, size: 64, elements: !512)
!512 = !{!513, !522}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !482, line: 49, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !511, file: !482, line: 49, size: 64, elements: !515)
!515 = !{!516, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !514, file: !482, line: 50, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !518, line: 21, baseType: !519)
!518 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !520, line: 27, baseType: !5)
!520 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!521 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !514, file: !482, line: 50, baseType: !517, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !511, file: !482, line: 52, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !518, line: 23, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !520, line: 31, baseType: !525)
!525 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !482, line: 54, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !485, file: !482, line: 96, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !533)
!533 = !{!534, !535, !536, !544, !551, !552, !700, !3009, !3010, !3011, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3273, !3281, !3282, !3283, !3293, !3294, !3295, !3296}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !532, file: !42, line: 611, baseType: !417, size: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !532, file: !42, line: 612, baseType: !418, size: 16, offset: 16)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !532, file: !42, line: 613, baseType: !537, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !538, line: 23, baseType: !539)
!538 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !538, line: 21, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !539, file: !538, line: 22, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !285, line: 32, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !409, line: 49, baseType: !5)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !532, file: !42, line: 614, baseType: !545, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !538, line: 28, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !538, line: 26, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !538, line: 27, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !285, line: 33, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !409, line: 50, baseType: !5)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !532, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !532, file: !42, line: 622, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !556)
!556 = !{!557, !561, !574, !578, !584, !588, !594, !598, !602, !606, !610, !611, !617, !621, !647, !676, !680, !686, !691, !695, !696}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !555, file: !42, line: 1865, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!484, !531, !484, !5}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !555, file: !42, line: 1866, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!323, !484, !531, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !567, line: 10, size: 128, elements: !568)
!567 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!568 = !{!569, !573}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !566, file: !567, line: 11, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !286}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !566, file: !567, line: 12, baseType: !286, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !555, file: !42, line: 1867, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!113, !531, !113}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !555, file: !42, line: 1868, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!582, !531, !113}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !555, file: !42, line: 1870, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!113, !484, !376, !113}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !555, file: !42, line: 1872, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!113, !531, !484, !417, !592}
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !285, line: 30, baseType: !593)
!593 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !555, file: !42, line: 1873, baseType: !595, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!113, !484, !531, !484}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !555, file: !42, line: 1874, baseType: !599, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!113, !531, !484}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !555, file: !42, line: 1875, baseType: !603, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!113, !531, !484, !323}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !555, file: !42, line: 1876, baseType: !607, size: 64, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!113, !531, !484, !417}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !555, file: !42, line: 1877, baseType: !599, size: 64, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !555, file: !42, line: 1878, baseType: !612, size: 64, offset: 704)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!113, !531, !484, !417, !615}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !285, line: 16, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !285, line: 13, baseType: !517)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !555, file: !42, line: 1879, baseType: !618, size: 64, offset: 768)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!113, !531, !484, !531, !484, !5}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !555, file: !42, line: 1881, baseType: !622, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!113, !484, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !636, !644, !645, !646}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !626, file: !42, line: 220, baseType: !5, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !626, file: !42, line: 221, baseType: !417, size: 16, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !626, file: !42, line: 222, baseType: !537, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !626, file: !42, line: 223, baseType: !545, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !626, file: !42, line: 224, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !285, line: 46, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !409, line: 88, baseType: !635)
!635 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !626, file: !42, line: 225, baseType: !637, size: 128, offset: 192)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !638, line: 13, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !643}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !637, file: !638, line: 14, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !638, line: 8, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !520, line: 30, baseType: !635)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !637, file: !638, line: 15, baseType: !411, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !626, file: !42, line: 226, baseType: !637, size: 128, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !626, file: !42, line: 227, baseType: !637, size: 128, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !626, file: !42, line: 234, baseType: !454, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !555, file: !42, line: 1882, baseType: !648, size: 64, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!113, !651, !653, !517, !5}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !655, line: 22, size: 1152, elements: !656)
!655 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!656 = !{!657, !658, !659, !660, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !654, file: !655, line: 23, baseType: !517, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !654, file: !655, line: 24, baseType: !417, size: 16, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !654, file: !655, line: 25, baseType: !5, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !654, file: !655, line: 26, baseType: !661, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !285, line: 104, baseType: !517)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !654, file: !655, line: 27, baseType: !523, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !654, file: !655, line: 28, baseType: !523, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !654, file: !655, line: 37, baseType: !523, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !654, file: !655, line: 38, baseType: !615, size: 32, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !654, file: !655, line: 39, baseType: !615, size: 32, offset: 352)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !654, file: !655, line: 40, baseType: !537, size: 32, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !654, file: !655, line: 41, baseType: !545, size: 32, offset: 416)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !654, file: !655, line: 42, baseType: !633, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !654, file: !655, line: 43, baseType: !637, size: 128, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !654, file: !655, line: 44, baseType: !637, size: 128, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !654, file: !655, line: 45, baseType: !637, size: 128, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !654, file: !655, line: 46, baseType: !637, size: 128, offset: 896)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !654, file: !655, line: 47, baseType: !523, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !654, file: !655, line: 48, baseType: !523, size: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !555, file: !42, line: 1883, baseType: !677, size: 64, offset: 960)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!407, !484, !376, !423}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !555, file: !42, line: 1884, baseType: !681, size: 64, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!113, !531, !684, !523, !523}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !555, file: !42, line: 1886, baseType: !687, size: 64, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!113, !531, !690, !113}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !555, file: !42, line: 1887, baseType: !692, size: 64, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!113, !531, !484, !454, !5, !417}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !555, file: !42, line: 1890, baseType: !607, size: 64, offset: 1216)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !555, file: !42, line: 1891, baseType: !697, size: 64, offset: 1280)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!113, !531, !582, !113}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !532, file: !42, line: 623, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !759, !2616, !2698, !2781, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2797, !2801, !2802, !2805, !2806, !2809, !2810, !2811, !2852, !2879, !2880, !2881, !2882, !2883, !2884, !2887, !2889, !2896, !2897, !2899, !2900, !2901, !2960, !2961, !2976, !2977, !2978, !2979, !2980, !2983, !2984, !2985, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !702, file: !42, line: 1417, baseType: !295, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !702, file: !42, line: 1418, baseType: !615, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !702, file: !42, line: 1419, baseType: !529, size: 8, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !702, file: !42, line: 1420, baseType: !426, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !702, file: !42, line: 1421, baseType: !633, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !702, file: !42, line: 1422, baseType: !710, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !712)
!712 = !{!713, !714, !715, !722, !726, !730, !734, !738, !739, !749, !752, !753, !754, !756, !757, !758}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !711, file: !42, line: 2229, baseType: !323, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !711, file: !42, line: 2230, baseType: !113, size: 32, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !711, file: !42, line: 2238, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!113, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !721, line: 28, flags: DIFlagFwdDecl)
!721 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!722 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !711, file: !42, line: 2239, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !711, file: !42, line: 2240, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!484, !710, !113, !323, !286}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !711, file: !42, line: 2242, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !701}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !711, file: !42, line: 2243, baseType: !735, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !737, line: 76, flags: DIFlagFwdDecl)
!737 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !42, line: 2244, baseType: !710, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !711, file: !42, line: 2245, baseType: !740, size: 64, offset: 512)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !285, line: 182, size: 64, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !740, file: !285, line: 183, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !285, line: 186, size: 128, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !285, line: 187, baseType: !743, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !744, file: !285, line: 187, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !711, file: !42, line: 2247, baseType: !750, offset: 576)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !751, line: 187, elements: !349)
!751 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !711, file: !42, line: 2248, baseType: !750, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !711, file: !42, line: 2249, baseType: !750, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !711, file: !42, line: 2250, baseType: !755, offset: 576)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, elements: !377)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !711, file: !42, line: 2252, baseType: !750, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !711, file: !42, line: 2253, baseType: !750, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !711, file: !42, line: 2254, baseType: !750, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !702, file: !42, line: 1423, baseType: !760, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !763)
!763 = !{!764, !768, !772, !773, !777, !783, !787, !788, !789, !793, !797, !798, !799, !800, !806, !811, !812, !868, !869, !870, !871, !2600, !2615}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !762, file: !42, line: 1936, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!531, !701}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !762, file: !42, line: 1937, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !531}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !762, file: !42, line: 1938, baseType: !769, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !762, file: !42, line: 1940, baseType: !774, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !531, !113}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !762, file: !42, line: 1941, baseType: !778, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!113, !531, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !762, file: !42, line: 1942, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!113, !531}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !762, file: !42, line: 1943, baseType: !769, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !762, file: !42, line: 1944, baseType: !731, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !762, file: !42, line: 1945, baseType: !790, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!113, !701, !113}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !762, file: !42, line: 1946, baseType: !794, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!113, !701}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !762, file: !42, line: 1947, baseType: !794, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !762, file: !42, line: 1948, baseType: !794, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !762, file: !42, line: 1949, baseType: !794, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !762, file: !42, line: 1950, baseType: !801, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!113, !484, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !762, file: !42, line: 1951, baseType: !807, size: 64, offset: 896)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!113, !701, !810, !376}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !762, file: !42, line: 1952, baseType: !731, size: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !762, file: !42, line: 1954, baseType: !813, size: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!113, !816, !484}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !818, line: 16, size: 896, elements: !819)
!818 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !841, !863, !864, !867}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !817, file: !818, line: 17, baseType: !376, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !817, file: !818, line: 18, baseType: !423, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !817, file: !818, line: 19, baseType: !423, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !817, file: !818, line: 20, baseType: !423, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !817, file: !818, line: 21, baseType: !423, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !817, file: !818, line: 22, baseType: !633, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !817, file: !818, line: 23, baseType: !633, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !818, line: 24, baseType: !828, size: 192, offset: 448)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !829, line: 53, size: 192, elements: !830)
!829 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !839, !840}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !828, file: !829, line: 54, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !833, line: 13, baseType: !834)
!833 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !285, line: 175, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 173, size: 64, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !835, file: !285, line: 174, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !518, line: 22, baseType: !642)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !828, file: !829, line: 55, baseType: !335, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !828, file: !829, line: 59, baseType: !295, size: 128, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !817, file: !818, line: 25, baseType: !842, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !818, line: 31, size: 256, elements: !845)
!845 = !{!846, !851, !855, !859}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !844, file: !818, line: 32, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!286, !816, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !844, file: !818, line: 33, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !816, !286}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !818, line: 34, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!286, !816, !286, !850}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !844, file: !818, line: 35, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!113, !816, !286}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !817, file: !818, line: 26, baseType: !113, size: 32, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !817, file: !818, line: 27, baseType: !865, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !817, file: !818, line: 28, baseType: !286, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !762, file: !42, line: 1955, baseType: !813, size: 64, offset: 1088)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !762, file: !42, line: 1956, baseType: !813, size: 64, offset: 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !762, file: !42, line: 1957, baseType: !813, size: 64, offset: 1216)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !762, file: !42, line: 1963, baseType: !872, size: 64, offset: 1280)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!113, !701, !875, !284}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !877, line: 68, size: 512, align: 128, elements: !878)
!877 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!878 = !{!879, !880, !2592, !2599}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 69, baseType: !426, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !877, line: 77, baseType: !881, size: 320, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !877, line: 77, size: 320, elements: !882)
!882 = !{!883, !1059, !1064, !1092, !1100, !1106, !2523, !2591}
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 78, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 78, size: 320, elements: !885)
!885 = !{!886, !887, !1057, !1058}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !884, file: !877, line: 84, baseType: !295, size: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !884, file: !877, line: 86, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !890)
!890 = !{!891, !892, !899, !900, !901, !916, !925, !926, !927, !928, !1050, !1051, !1054, !1055, !1056}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !889, file: !42, line: 452, baseType: !531, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !889, file: !42, line: 453, baseType: !893, size: 128, offset: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !894, line: 292, size: 128, elements: !895)
!894 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !893, file: !894, line: 293, baseType: !335)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !893, file: !894, line: 295, baseType: !284, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !893, file: !894, line: 296, baseType: !286, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !889, file: !42, line: 454, baseType: !284, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !889, file: !42, line: 455, baseType: !310, size: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !889, file: !42, line: 460, baseType: !902, size: 128, offset: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !903, line: 125, size: 128, elements: !904)
!903 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !915}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !902, file: !903, line: 126, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !903, line: 31, size: 64, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !906, file: !903, line: 32, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !903, line: 24, size: 192, align: 64, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !910, file: !903, line: 25, baseType: !426, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !910, file: !903, line: 26, baseType: !909, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !910, file: !903, line: 27, baseType: !909, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !902, file: !903, line: 127, baseType: !909, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !889, file: !42, line: 461, baseType: !917, size: 256, offset: 384)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !918, line: 35, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!919 = !{!920, !921, !922, !924}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !917, file: !918, line: 36, baseType: !832, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !917, file: !918, line: 42, baseType: !832, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !917, file: !918, line: 46, baseType: !923, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !336, line: 29, baseType: !343)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !917, file: !918, line: 47, baseType: !295, size: 128, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !889, file: !42, line: 462, baseType: !426, size: 64, offset: 640)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !889, file: !42, line: 463, baseType: !426, size: 64, offset: 704)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !889, file: !42, line: 464, baseType: !426, size: 64, offset: 768)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !889, file: !42, line: 465, baseType: !929, size: 64, offset: 832)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !932)
!932 = !{!933, !937, !941, !945, !949, !953, !959, !965, !969, !974, !978, !982, !986, !1014, !1018, !1024, !1025, !1026, !1030, !1035, !1039, !1046}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !931, file: !42, line: 368, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!113, !875, !781}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !931, file: !42, line: 369, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!113, !454, !875}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !931, file: !42, line: 372, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!113, !888, !781}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !931, file: !42, line: 375, baseType: !946, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!113, !875}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !931, file: !42, line: 381, baseType: !950, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!113, !454, !888, !298, !5}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !931, file: !42, line: 383, baseType: !954, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !931, file: !42, line: 385, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!113, !454, !888, !633, !5, !5, !963, !964}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !931, file: !42, line: 388, baseType: !966, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!113, !454, !888, !633, !5, !5, !875, !286}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !931, file: !42, line: 393, baseType: !970, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!973, !888, !973}
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !285, line: 125, baseType: !523)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !931, file: !42, line: 394, baseType: !975, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !875, !5, !5}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !931, file: !42, line: 395, baseType: !979, size: 64, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!113, !875, !284}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !931, file: !42, line: 396, baseType: !983, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !875}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !931, file: !42, line: 397, baseType: !987, size: 64, offset: 768)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!407, !990, !1012}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !992)
!992 = !{!993, !994, !995, !999, !1000, !1001, !1004, !1005}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !991, file: !42, line: 321, baseType: !454, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !991, file: !42, line: 326, baseType: !633, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !991, file: !42, line: 327, baseType: !996, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !990, !411, !411}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !991, file: !42, line: 328, baseType: !286, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !991, file: !42, line: 329, baseType: !113, size: 32, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !991, file: !42, line: 330, baseType: !1002, size: 16, offset: 288)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !518, line: 19, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !520, line: 24, baseType: !418)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !991, file: !42, line: 331, baseType: !1002, size: 16, offset: 304)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !42, line: 332, baseType: !1006, size: 64, offset: 320)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !42, line: 332, size: 64, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1006, file: !42, line: 333, baseType: !5, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1006, file: !42, line: 334, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !931, file: !42, line: 402, baseType: !1015, size: 64, offset: 832)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!113, !888, !875, !875, !3}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !931, file: !42, line: 404, baseType: !1019, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!592, !875, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1023, line: 305, baseType: !5)
!1023 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !931, file: !42, line: 405, baseType: !983, size: 64, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !931, file: !42, line: 406, baseType: !946, size: 64, offset: 1024)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !931, file: !42, line: 407, baseType: !1027, size: 64, offset: 1088)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!113, !875, !426, !426}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !931, file: !42, line: 409, baseType: !1031, size: 64, offset: 1152)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !875, !1034, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !931, file: !42, line: 410, baseType: !1036, size: 64, offset: 1216)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!113, !888, !875}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !931, file: !42, line: 413, baseType: !1040, size: 64, offset: 1280)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!113, !1043, !454, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !931, file: !42, line: 415, baseType: !1047, size: 64, offset: 1344)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !454}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !889, file: !42, line: 466, baseType: !426, size: 64, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !889, file: !42, line: 467, baseType: !1052, size: 32, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1053, line: 8, baseType: !517)
!1053 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !889, file: !42, line: 468, baseType: !335, offset: 992)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !889, file: !42, line: 469, baseType: !295, size: 128, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !889, file: !42, line: 470, baseType: !286, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !884, file: !877, line: 87, baseType: !426, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !884, file: !877, line: 94, baseType: !426, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 96, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 96, size: 64, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1060, file: !877, line: 101, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !285, line: 143, baseType: !523)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 103, baseType: !1065, size: 320)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 103, size: 320, elements: !1066)
!1066 = !{!1067, !1077, !1080, !1081}
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !877, line: 104, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !877, line: 104, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1068, file: !877, line: 105, baseType: !295, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !877, line: 106, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !877, line: 106, size: 128, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1072, file: !877, line: 107, baseType: !875, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1072, file: !877, line: 109, baseType: !113, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1072, file: !877, line: 110, baseType: !113, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1065, file: !877, line: 117, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !877, line: 117, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1065, file: !877, line: 119, baseType: !286, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !877, line: 120, baseType: !1082, size: 64, offset: 256)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !877, line: 120, size: 64, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1082, file: !877, line: 121, baseType: !286, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1082, file: !877, line: 122, baseType: !426, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !877, line: 123, baseType: !1087, size: 32)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !877, line: 123, size: 32, elements: !1088)
!1088 = !{!1089, !1090, !1091}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1087, file: !877, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1087, file: !877, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1087, file: !877, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 130, baseType: !1093, size: 192)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 130, size: 192, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1093, file: !877, line: 131, baseType: !426, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1093, file: !877, line: 134, baseType: !529, size: 8, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1093, file: !877, line: 135, baseType: !529, size: 8, offset: 72)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1093, file: !877, line: 136, baseType: !310, size: 32, offset: 96)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1093, file: !877, line: 137, baseType: !5, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 139, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 139, size: 256, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1101, file: !877, line: 140, baseType: !426, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1101, file: !877, line: 141, baseType: !310, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1101, file: !877, line: 143, baseType: !295, size: 128, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 145, baseType: !1107, size: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 145, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1113, !1114, !2522}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1107, file: !877, line: 146, baseType: !426, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1107, file: !877, line: 147, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1112, line: 509, baseType: !875)
!1112 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1107, file: !877, line: 148, baseType: !426, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !877, line: 149, baseType: !1115, size: 64, offset: 192)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1107, file: !877, line: 149, size: 64, elements: !1116)
!1116 = !{!1117, !2521}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1115, file: !877, line: 150, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !877, line: 388, size: 7296, elements: !1120)
!1120 = !{!1121, !2517}
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !877, line: 389, baseType: !1122, size: 7296)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !877, line: 389, size: 7296, elements: !1123)
!1123 = !{!1124, !1242, !1243, !1244, !1248, !1249, !1250, !1251, !1252, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1293, !1301, !1304, !1344, !1345, !2501, !2502, !2505, !2506, !2507, !2510, !2511, !2512, !2515, !2516}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1122, file: !877, line: 390, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !877, line: 305, size: 1472, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1142, !1143, !1148, !1149, !1152, !1236, !1237, !1238, !1239, !1240}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1126, file: !877, line: 308, baseType: !426, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1126, file: !877, line: 309, baseType: !426, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1126, file: !877, line: 313, baseType: !1125, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1126, file: !877, line: 313, baseType: !1125, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1126, file: !877, line: 315, baseType: !910, size: 192, align: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1126, file: !877, line: 323, baseType: !426, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1126, file: !877, line: 327, baseType: !1118, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1126, file: !877, line: 333, baseType: !1136, size: 64, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1112, line: 284, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1112, line: 284, size: 64, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1137, file: !1112, line: 284, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1141, line: 19, baseType: !426)
!1141 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1126, file: !877, line: 334, baseType: !426, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1126, file: !877, line: 343, baseType: !1144, size: 256, offset: 704)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !877, line: 340, size: 256, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1144, file: !877, line: 341, baseType: !910, size: 192, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1144, file: !877, line: 342, baseType: !426, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1126, file: !877, line: 351, baseType: !295, size: 128, offset: 960)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1126, file: !877, line: 353, baseType: !1150, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !877, line: 353, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1126, file: !877, line: 356, baseType: !1153, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1156)
!1156 = !{!1157, !1161, !1162, !1166, !1170, !1210, !1214, !1218, !1222, !1223, !1224, !1228, !1232}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1155, file: !12, line: 558, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1125}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1155, file: !12, line: 559, baseType: !1158, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1155, file: !12, line: 560, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!113, !1125, !426}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1155, file: !12, line: 561, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!113, !1125}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1155, file: !12, line: 562, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !877, line: 682, baseType: !5)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1190, !1197, !1203, !1204, !1205, !1207, !1209}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1176, file: !12, line: 509, baseType: !1125, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1176, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1176, file: !12, line: 511, baseType: !284, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1176, file: !12, line: 512, baseType: !426, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1176, file: !12, line: 513, baseType: !426, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1176, file: !12, line: 514, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1112, line: 385, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1112, line: 385, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1186, file: !1112, line: 385, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1141, line: 15, baseType: !426)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1176, file: !12, line: 516, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1112, line: 359, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1112, line: 359, size: 64, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1193, file: !1112, line: 359, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1141, line: 16, baseType: !426)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1176, file: !12, line: 519, baseType: !1198, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1141, line: 21, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1141, line: 21, size: 64, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1199, file: !1141, line: 21, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1141, line: 14, baseType: !426)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1176, file: !12, line: 521, baseType: !875, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1176, file: !12, line: 522, baseType: !875, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1176, file: !12, line: 528, baseType: !1206, size: 64, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1176, file: !12, line: 532, baseType: !1208, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1176, file: !12, line: 536, baseType: !1111, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1155, file: !12, line: 563, baseType: !1211, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!1174, !1175, !11}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1155, file: !12, line: 565, baseType: !1215, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1175, !426, !426}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1155, file: !12, line: 567, baseType: !1219, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!426, !1125}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1155, file: !12, line: 571, baseType: !1171, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1155, file: !12, line: 574, baseType: !1171, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1155, file: !12, line: 579, baseType: !1225, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!113, !1125, !426, !286, !113, !113}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1155, file: !12, line: 585, baseType: !1229, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!323, !1125}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1155, file: !12, line: 615, baseType: !1233, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!875, !1125, !426}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1126, file: !877, line: 359, baseType: !426, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1126, file: !877, line: 361, baseType: !454, size: 64, offset: 1280)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1126, file: !877, line: 362, baseType: !286, size: 64, offset: 1344)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1126, file: !877, line: 365, baseType: !832, size: 64, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1126, file: !877, line: 373, baseType: !1241, offset: 1472)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !877, line: 296, elements: !349)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1122, file: !877, line: 391, baseType: !906, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1122, file: !877, line: 392, baseType: !523, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1122, file: !877, line: 394, baseType: !1245, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!426, !454, !426, !426, !426, !426}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1122, file: !877, line: 398, baseType: !426, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1122, file: !877, line: 399, baseType: !426, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1122, file: !877, line: 405, baseType: !426, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1122, file: !877, line: 406, baseType: !426, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1122, file: !877, line: 407, baseType: !1253, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1112, line: 286, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1112, line: 286, size: 64, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1255, file: !1112, line: 286, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1141, line: 18, baseType: !426)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1122, file: !877, line: 416, baseType: !310, size: 32, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1122, file: !877, line: 428, baseType: !310, size: 32, offset: 608)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1122, file: !877, line: 437, baseType: !310, size: 32, offset: 640)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1122, file: !877, line: 447, baseType: !310, size: 32, offset: 672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1122, file: !877, line: 450, baseType: !832, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1122, file: !877, line: 452, baseType: !113, size: 32, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1122, file: !877, line: 454, baseType: !335, offset: 800)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1122, file: !877, line: 457, baseType: !917, size: 256, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1122, file: !877, line: 459, baseType: !295, size: 128, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1122, file: !877, line: 466, baseType: !426, size: 64, offset: 1216)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1122, file: !877, line: 467, baseType: !426, size: 64, offset: 1280)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1122, file: !877, line: 469, baseType: !426, size: 64, offset: 1344)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1122, file: !877, line: 470, baseType: !426, size: 64, offset: 1408)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1122, file: !877, line: 471, baseType: !834, size: 64, offset: 1472)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1122, file: !877, line: 472, baseType: !426, size: 64, offset: 1536)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1122, file: !877, line: 473, baseType: !426, size: 64, offset: 1600)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1122, file: !877, line: 474, baseType: !426, size: 64, offset: 1664)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1122, file: !877, line: 475, baseType: !426, size: 64, offset: 1728)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1122, file: !877, line: 477, baseType: !335, offset: 1792)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1122, file: !877, line: 478, baseType: !426, size: 64, offset: 1792)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1122, file: !877, line: 478, baseType: !426, size: 64, offset: 1856)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1122, file: !877, line: 478, baseType: !426, size: 64, offset: 1920)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1122, file: !877, line: 478, baseType: !426, size: 64, offset: 1984)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1122, file: !877, line: 479, baseType: !426, size: 64, offset: 2048)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1122, file: !877, line: 479, baseType: !426, size: 64, offset: 2112)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1122, file: !877, line: 479, baseType: !426, size: 64, offset: 2176)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1122, file: !877, line: 480, baseType: !426, size: 64, offset: 2240)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1122, file: !877, line: 480, baseType: !426, size: 64, offset: 2304)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1122, file: !877, line: 480, baseType: !426, size: 64, offset: 2368)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1122, file: !877, line: 480, baseType: !426, size: 64, offset: 2432)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1122, file: !877, line: 482, baseType: !1290, size: 2816, offset: 2496)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 2816, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 44)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1122, file: !877, line: 488, baseType: !1294, size: 256, offset: 5312)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1295, line: 60, size: 256, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1294, file: !1295, line: 61, baseType: !1298, size: 256)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 256, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 4)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1122, file: !877, line: 490, baseType: !1302, size: 64, offset: 5568)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !877, line: 490, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1122, file: !877, line: 493, baseType: !1305, size: 896, offset: 5632)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1306, line: 53, baseType: !1307)
!1306 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1306, line: 13, size: 896, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1315, !1316, !1317, !1318, !1338, !1339, !1340}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1307, file: !1306, line: 18, baseType: !523, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1307, file: !1306, line: 28, baseType: !834, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1307, file: !1306, line: 31, baseType: !917, size: 256, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1307, file: !1306, line: 32, baseType: !1313, size: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1306, line: 32, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1307, file: !1306, line: 37, baseType: !418, size: 16, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1307, file: !1306, line: 40, baseType: !828, size: 192, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1307, file: !1306, line: 41, baseType: !286, size: 64, offset: 704)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1307, file: !1306, line: 42, baseType: !1319, size: 64, offset: 768)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1322, line: 13, size: 896, elements: !1323)
!1322 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1321, file: !1322, line: 14, baseType: !286, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1321, file: !1322, line: 15, baseType: !426, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1321, file: !1322, line: 17, baseType: !426, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1321, file: !1322, line: 17, baseType: !426, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1321, file: !1322, line: 19, baseType: !411, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1321, file: !1322, line: 21, baseType: !411, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1321, file: !1322, line: 22, baseType: !411, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1321, file: !1322, line: 23, baseType: !411, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1321, file: !1322, line: 24, baseType: !411, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1321, file: !1322, line: 25, baseType: !411, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1321, file: !1322, line: 26, baseType: !411, size: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1321, file: !1322, line: 27, baseType: !411, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1321, file: !1322, line: 28, baseType: !411, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1321, file: !1322, line: 29, baseType: !411, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1307, file: !1306, line: 44, baseType: !310, size: 32, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1307, file: !1306, line: 50, baseType: !1002, size: 16, offset: 864)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1307, file: !1306, line: 51, baseType: !1341, size: 16, offset: 880)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !518, line: 18, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !520, line: 23, baseType: !1343)
!1343 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1122, file: !877, line: 495, baseType: !426, size: 64, offset: 6528)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1122, file: !877, line: 497, baseType: !1346, size: 64, offset: 6592)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !877, line: 381, size: 384, elements: !1348)
!1348 = !{!1349, !1350, !2500}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1347, file: !877, line: 382, baseType: !310, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1347, file: !877, line: 383, baseType: !1351, size: 128, offset: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !877, line: 376, size: 128, elements: !1352)
!1352 = !{!1353, !2498}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1351, file: !877, line: 377, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1356, line: 640, size: 48640, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1357 = !{!1358, !1364, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1379, !1397, !1408, !1493, !1494, !1495, !1506, !1507, !1509, !1510, !1511, !1512, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1591, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1662, !1664, !1665, !1666, !1678, !1679, !1680, !1681, !1682, !1683, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1707, !1712, !1894, !1895, !1896, !1897, !1901, !1904, !1907, !1910, !1913, !1939, !2040, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2086, !2087, !2088, !2089, !2090, !2095, !2096, !2097, !2100, !2101, !2104, !2107, !2110, !2113, !2156, !2159, !2160, !2239, !2240, !2243, !2244, !2247, !2248, !2249, !2253, !2254, !2255, !2268, !2269, !2270, !2280, !2285, !2288, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1355, file: !1356, line: 646, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1360, line: 56, size: 128, elements: !1361)
!1360 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 57, baseType: !426, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1359, file: !1360, line: 58, baseType: !517, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1355, file: !1356, line: 649, baseType: !1365, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !411)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1355, file: !1356, line: 657, baseType: !286, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1355, file: !1356, line: 658, baseType: !306, size: 32, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1355, file: !1356, line: 660, baseType: !5, size: 32, offset: 288)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1355, file: !1356, line: 661, baseType: !5, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1355, file: !1356, line: 684, baseType: !113, size: 32, offset: 352)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1355, file: !1356, line: 686, baseType: !113, size: 32, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1355, file: !1356, line: 687, baseType: !113, size: 32, offset: 416)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1355, file: !1356, line: 688, baseType: !113, size: 32, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1355, file: !1356, line: 689, baseType: !5, size: 32, offset: 480)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1355, file: !1356, line: 691, baseType: !1376, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1356, line: 691, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1355, file: !1356, line: 692, baseType: !1380, size: 832, offset: 576)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1356, line: 451, size: 832, elements: !1381)
!1381 = !{!1382, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1380, file: !1356, line: 453, baseType: !1383, size: 128)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1356, line: 325, size: 128, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1383, file: !1356, line: 326, baseType: !426, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1383, file: !1356, line: 327, baseType: !517, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1380, file: !1356, line: 454, baseType: !910, size: 192, align: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1380, file: !1356, line: 455, baseType: !295, size: 128, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1380, file: !1356, line: 456, baseType: !5, size: 32, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1380, file: !1356, line: 458, baseType: !523, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1380, file: !1356, line: 459, baseType: !523, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1380, file: !1356, line: 460, baseType: !523, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1380, file: !1356, line: 461, baseType: !523, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1380, file: !1356, line: 463, baseType: !523, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1380, file: !1356, line: 465, baseType: !1396, offset: 832)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1356, line: 415, elements: !349)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1355, file: !1356, line: 693, baseType: !1398, size: 384, offset: 1408)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1356, line: 489, size: 384, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1398, file: !1356, line: 490, baseType: !295, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1398, file: !1356, line: 491, baseType: !426, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1398, file: !1356, line: 492, baseType: !426, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1398, file: !1356, line: 493, baseType: !5, size: 32, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1398, file: !1356, line: 494, baseType: !418, size: 16, offset: 288)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1398, file: !1356, line: 495, baseType: !418, size: 16, offset: 304)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1398, file: !1356, line: 497, baseType: !1407, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1355, file: !1356, line: 697, baseType: !1409, size: 1792, offset: 1792)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1356, line: 507, size: 1792, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1490, !1491}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1409, file: !1356, line: 508, baseType: !910, size: 192, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1409, file: !1356, line: 515, baseType: !523, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1409, file: !1356, line: 516, baseType: !523, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1409, file: !1356, line: 517, baseType: !523, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1409, file: !1356, line: 518, baseType: !523, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1409, file: !1356, line: 519, baseType: !523, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1409, file: !1356, line: 526, baseType: !838, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1409, file: !1356, line: 527, baseType: !523, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1409, file: !1356, line: 528, baseType: !5, size: 32, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1409, file: !1356, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1409, file: !1356, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1409, file: !1356, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1409, file: !1356, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1409, file: !1356, line: 563, baseType: !1425, size: 512, offset: 704)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1426)
!1426 = !{!1427, !1435, !1436, !1441, !1484, !1487, !1488, !1489}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1425, file: !18, line: 119, baseType: !1428, size: 256)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1429, line: 9, size: 256, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1428, file: !1429, line: 10, baseType: !910, size: 192, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1428, file: !1429, line: 11, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1434, line: 29, baseType: !838)
!1434 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1425, file: !18, line: 120, baseType: !1433, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1425, file: !18, line: 121, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!17, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1425, file: !18, line: 122, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1444)
!1444 = !{!1445, !1465, !1466, !1469, !1474, !1475, !1479, !1483}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1443, file: !18, line: 160, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1447, file: !18, line: 215, baseType: !923)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1447, file: !18, line: 216, baseType: !5, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1447, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1447, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1447, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1447, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1447, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1447, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1447, file: !18, line: 233, baseType: !1433, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1447, file: !18, line: 234, baseType: !1440, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1447, file: !18, line: 235, baseType: !1433, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1447, file: !18, line: 236, baseType: !1440, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1447, file: !18, line: 237, baseType: !1462, size: 4096, offset: 512)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 4096, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 8)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1443, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1443, file: !18, line: 162, baseType: !1467, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !285, line: 27, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !409, line: 96, baseType: !113)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1443, file: !18, line: 163, baseType: !1470, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !490, line: 276, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !490, line: 276, size: 32, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1471, file: !490, line: 276, baseType: !494, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1443, file: !18, line: 164, baseType: !1440, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1443, file: !18, line: 165, baseType: !1476, size: 128, offset: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1429, line: 14, size: 128, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1476, file: !1429, line: 15, baseType: !902, size: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1443, file: !18, line: 166, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1433}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1443, file: !18, line: 167, baseType: !1433, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1425, file: !18, line: 123, baseType: !1485, size: 8, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !518, line: 17, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !520, line: 21, baseType: !529)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1425, file: !18, line: 124, baseType: !1485, size: 8, offset: 456)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1425, file: !18, line: 125, baseType: !1485, size: 8, offset: 464)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1425, file: !18, line: 126, baseType: !1485, size: 8, offset: 472)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1409, file: !1356, line: 572, baseType: !1425, size: 512, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1409, file: !1356, line: 580, baseType: !1492, size: 64, offset: 1728)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1355, file: !1356, line: 721, baseType: !5, size: 32, offset: 3584)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1355, file: !1356, line: 722, baseType: !113, size: 32, offset: 3616)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1355, file: !1356, line: 723, baseType: !1496, size: 64, offset: 3648)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1499, line: 17, baseType: !1500)
!1499 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1499, line: 17, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1500, file: !1499, line: 17, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 64, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 1)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1355, file: !1356, line: 724, baseType: !1498, size: 64, offset: 3712)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1355, file: !1356, line: 749, baseType: !1508, offset: 3776)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1356, line: 290, elements: !349)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1355, file: !1356, line: 751, baseType: !295, size: 128, offset: 3776)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1355, file: !1356, line: 757, baseType: !1118, size: 64, offset: 3904)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1355, file: !1356, line: 758, baseType: !1118, size: 64, offset: 3968)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1355, file: !1356, line: 761, baseType: !1513, size: 320, offset: 4032)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1295, line: 34, size: 320, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1513, file: !1295, line: 35, baseType: !523, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1513, file: !1295, line: 36, baseType: !1517, size: 256, offset: 64)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 256, elements: !1299)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1355, file: !1356, line: 766, baseType: !113, size: 32, offset: 4352)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1355, file: !1356, line: 767, baseType: !113, size: 32, offset: 4384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1355, file: !1356, line: 768, baseType: !113, size: 32, offset: 4416)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1355, file: !1356, line: 770, baseType: !113, size: 32, offset: 4448)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1355, file: !1356, line: 772, baseType: !426, size: 64, offset: 4480)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1355, file: !1356, line: 775, baseType: !5, size: 32, offset: 4544)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1355, file: !1356, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1355, file: !1356, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1355, file: !1356, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1355, file: !1356, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1355, file: !1356, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1355, file: !1356, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1355, file: !1356, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1355, file: !1356, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1355, file: !1356, line: 831, baseType: !426, size: 64, offset: 4672)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1355, file: !1356, line: 833, baseType: !1534, size: 384, offset: 4736)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1535)
!1535 = !{!1536, !1541}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1534, file: !23, line: 26, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!411, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !23, line: 27, baseType: !1542, size: 320, offset: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !23, line: 27, size: 320, elements: !1543)
!1543 = !{!1544, !1554, !1581}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1542, file: !23, line: 36, baseType: !1545, size: 320)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !23, line: 29, size: 320, elements: !1546)
!1546 = !{!1547, !1549, !1550, !1551, !1552, !1553}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1545, file: !23, line: 30, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1545, file: !23, line: 31, baseType: !517, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !23, line: 32, baseType: !517, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1545, file: !23, line: 33, baseType: !517, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1545, file: !23, line: 34, baseType: !523, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1545, file: !23, line: 35, baseType: !1548, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1542, file: !23, line: 46, baseType: !1555, size: 192)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !23, line: 38, size: 192, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1580}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1555, file: !23, line: 39, baseType: !1467, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1555, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !23, line: 41, baseType: !1560, size: 64, offset: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !23, line: 41, size: 64, elements: !1561)
!1561 = !{!1562, !1570}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1560, file: !23, line: 42, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1565, line: 7, size: 128, elements: !1566)
!1565 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1564, file: !1565, line: 8, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !409, line: 93, baseType: !635)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1564, file: !1565, line: 9, baseType: !635, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1560, file: !23, line: 43, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1573, line: 7, size: 64, elements: !1574)
!1573 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1579}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1572, file: !1573, line: 8, baseType: !1576, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1573, line: 5, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !518, line: 20, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !520, line: 26, baseType: !113)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1572, file: !1573, line: 9, baseType: !1577, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1555, file: !23, line: 45, baseType: !523, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1542, file: !23, line: 54, baseType: !1582, size: 256)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !23, line: 48, size: 256, elements: !1583)
!1583 = !{!1584, !1587, !1588, !1589, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1582, file: !23, line: 49, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1582, file: !23, line: 50, baseType: !113, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1582, file: !23, line: 51, baseType: !113, size: 32, offset: 96)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1582, file: !23, line: 52, baseType: !426, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1582, file: !23, line: 53, baseType: !426, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1355, file: !1356, line: 835, baseType: !1592, size: 32, offset: 5120)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !285, line: 22, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !409, line: 28, baseType: !113)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1355, file: !1356, line: 836, baseType: !1592, size: 32, offset: 5152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1355, file: !1356, line: 840, baseType: !426, size: 64, offset: 5184)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1355, file: !1356, line: 849, baseType: !1354, size: 64, offset: 5248)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1355, file: !1356, line: 852, baseType: !1354, size: 64, offset: 5312)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1355, file: !1356, line: 857, baseType: !295, size: 128, offset: 5376)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1355, file: !1356, line: 858, baseType: !295, size: 128, offset: 5504)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1355, file: !1356, line: 859, baseType: !1354, size: 64, offset: 5632)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1355, file: !1356, line: 867, baseType: !295, size: 128, offset: 5696)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1355, file: !1356, line: 868, baseType: !295, size: 128, offset: 5824)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1355, file: !1356, line: 871, baseType: !1604, size: 64, offset: 5952)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1612, !1613, !1620, !1621}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1605, file: !51, line: 61, baseType: !306, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1605, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !51, line: 63, baseType: !335, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1605, file: !51, line: 65, baseType: !1611, size: 256, offset: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !1299)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1605, file: !51, line: 66, baseType: !740, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1605, file: !51, line: 68, baseType: !1614, size: 128, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1615, line: 40, baseType: !1616)
!1615 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1615, line: 36, size: 128, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !1615, line: 37, baseType: !335)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1616, file: !1615, line: 38, baseType: !295, size: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1605, file: !51, line: 69, baseType: !467, size: 128, align: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1605, file: !51, line: 70, baseType: !1622, size: 128, offset: 640)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, size: 128, elements: !1504)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1623, file: !51, line: 55, baseType: !113, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1623, file: !51, line: 56, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1629, line: 20, size: 1088, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !{!1631, !1632, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1648, !1651, !1652}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1628, file: !1629, line: 21, baseType: !302, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1628, file: !1629, line: 22, baseType: !1633, size: 192, offset: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1634, line: 19, size: 192, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1635 = !{!1636, !1637, !1638}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1633, file: !1634, line: 20, baseType: !893, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1633, file: !1634, line: 21, baseType: !5, size: 32, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1633, file: !1634, line: 22, baseType: !5, size: 32, offset: 160)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1629, line: 23, baseType: !467, size: 128, align: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1628, file: !1629, line: 24, baseType: !5, size: 32, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1628, file: !1629, line: 25, baseType: !1354, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1628, file: !1629, line: 26, baseType: !1078, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1628, file: !1629, line: 27, baseType: !5, size: 32, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1628, file: !1629, line: 28, baseType: !1627, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1628, file: !1629, line: 32, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !538, line: 18, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1628, file: !1629, line: 33, baseType: !1649, size: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1629, line: 33, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1628, file: !1629, line: 34, baseType: !113, size: 32, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1628, file: !1629, line: 35, baseType: !1653, size: 192, offset: 896)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1654, line: 7, size: 192, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657, !1661}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1653, file: !1654, line: 8, baseType: !832, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1653, file: !1654, line: 9, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1654, line: 5, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1653, file: !1654, line: 10, baseType: !5, size: 32, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1355, file: !1356, line: 872, baseType: !1663, size: 512, offset: 6016)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 512, elements: !1299)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1355, file: !1356, line: 873, baseType: !295, size: 128, offset: 6528)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1355, file: !1356, line: 874, baseType: !295, size: 128, offset: 6656)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1355, file: !1356, line: 876, baseType: !1667, size: 64, offset: 6784)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1669, line: 26, size: 192, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1668, file: !1669, line: 27, baseType: !5, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1668, file: !1669, line: 28, baseType: !1673, size: 128, offset: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1674, line: 43, size: 128, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !1674, line: 44, baseType: !923)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1673, file: !1674, line: 45, baseType: !295, size: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1355, file: !1356, line: 879, baseType: !810, size: 64, offset: 6848)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1355, file: !1356, line: 882, baseType: !810, size: 64, offset: 6912)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1355, file: !1356, line: 884, baseType: !523, size: 64, offset: 6976)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1355, file: !1356, line: 885, baseType: !523, size: 64, offset: 7040)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1355, file: !1356, line: 890, baseType: !523, size: 64, offset: 7104)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1355, file: !1356, line: 891, baseType: !1684, size: 128, offset: 7168)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1356, line: 242, size: 128, elements: !1685)
!1685 = !{!1686, !1687, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1684, file: !1356, line: 244, baseType: !523, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1684, file: !1356, line: 245, baseType: !523, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !1356, line: 246, baseType: !923, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1355, file: !1356, line: 900, baseType: !426, size: 64, offset: 7296)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1355, file: !1356, line: 901, baseType: !426, size: 64, offset: 7360)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1355, file: !1356, line: 904, baseType: !523, size: 64, offset: 7424)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1355, file: !1356, line: 907, baseType: !523, size: 64, offset: 7488)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1355, file: !1356, line: 910, baseType: !426, size: 64, offset: 7552)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1355, file: !1356, line: 911, baseType: !426, size: 64, offset: 7616)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1355, file: !1356, line: 914, baseType: !1696, size: 640, offset: 7680)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1697, line: 123, size: 640, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1705, !1706}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1696, file: !1697, line: 124, baseType: !1700, size: 576)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 576, elements: !377)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1697, line: 108, size: 192, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1701, file: !1697, line: 109, baseType: !523, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1701, file: !1697, line: 110, baseType: !1476, size: 128, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1696, file: !1697, line: 125, baseType: !5, size: 32, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1696, file: !1697, line: 126, baseType: !5, size: 32, offset: 608)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1355, file: !1356, line: 917, baseType: !1708, size: 192, offset: 8320)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1697, line: 134, size: 192, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1708, file: !1697, line: 135, baseType: !467, size: 128, align: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1708, file: !1697, line: 136, baseType: !5, size: 32, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1355, file: !1356, line: 923, baseType: !1713, size: 64, offset: 8512)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1716, line: 111, size: 1280, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1737, !1738, !1739, !1740, !1741, !1742, !1849, !1850, !1851, !1852, !1878, !1879, !1889}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1715, file: !1716, line: 112, baseType: !310, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1715, file: !1716, line: 120, baseType: !537, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1715, file: !1716, line: 121, baseType: !545, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1715, file: !1716, line: 122, baseType: !537, size: 32, offset: 96)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1715, file: !1716, line: 123, baseType: !545, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1715, file: !1716, line: 124, baseType: !537, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1715, file: !1716, line: 125, baseType: !545, size: 32, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1715, file: !1716, line: 126, baseType: !537, size: 32, offset: 224)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1715, file: !1716, line: 127, baseType: !545, size: 32, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1715, file: !1716, line: 128, baseType: !5, size: 32, offset: 288)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1715, file: !1716, line: 129, baseType: !1729, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1730, line: 26, baseType: !1731)
!1730 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1730, line: 24, size: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1731, file: !1730, line: 25, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 2)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1715, file: !1716, line: 130, baseType: !1729, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1715, file: !1716, line: 131, baseType: !1729, size: 64, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1715, file: !1716, line: 132, baseType: !1729, size: 64, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1715, file: !1716, line: 133, baseType: !1729, size: 64, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1715, file: !1716, line: 135, baseType: !529, size: 8, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1715, file: !1716, line: 137, baseType: !1743, size: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1745, line: 189, size: 1664, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1751, !1756, !1757, !1760, !1761, !1766, !1767, !1768, !1769, !1771, !1772, !1773, !1774, !1775, !1813, !1834}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1745, line: 190, baseType: !306, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1744, file: !1745, line: 191, baseType: !1749, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1745, line: 28, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !285, line: 98, baseType: !1577)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 192, baseType: !1752, size: 192, offset: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 192, size: 192, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1752, file: !1745, line: 193, baseType: !295, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1752, file: !1745, line: 194, baseType: !910, size: 192, align: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1744, file: !1745, line: 199, baseType: !917, size: 256, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1744, file: !1745, line: 200, baseType: !1758, size: 64, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1745, line: 200, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1744, file: !1745, line: 201, baseType: !286, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 202, baseType: !1762, size: 64, offset: 640)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 202, size: 64, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1762, file: !1745, line: 203, baseType: !641, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1762, file: !1745, line: 204, baseType: !641, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1744, file: !1745, line: 206, baseType: !641, size: 64, offset: 704)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1744, file: !1745, line: 207, baseType: !537, size: 32, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1745, line: 208, baseType: !545, size: 32, offset: 800)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1744, file: !1745, line: 209, baseType: !1770, size: 32, offset: 832)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1745, line: 31, baseType: !661)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1744, file: !1745, line: 210, baseType: !418, size: 16, offset: 864)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1744, file: !1745, line: 211, baseType: !418, size: 16, offset: 880)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1744, file: !1745, line: 215, baseType: !1343, size: 16, offset: 896)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !1745, line: 222, baseType: !426, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 239, baseType: !1776, size: 320, offset: 1024)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 239, size: 320, elements: !1777)
!1777 = !{!1778, !1805}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1776, file: !1745, line: 240, baseType: !1779, size: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1745, line: 108, size: 320, elements: !1780)
!1780 = !{!1781, !1782, !1794, !1797, !1804}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1779, file: !1745, line: 110, baseType: !426, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !1745, line: 111, baseType: !1783, size: 64, offset: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !1745, line: 111, size: 64, elements: !1784)
!1784 = !{!1785, !1793}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1745, line: 112, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !1745, line: 112, size: 64, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1786, file: !1745, line: 114, baseType: !1002, size: 16)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1786, file: !1745, line: 115, baseType: !1790, size: 48, offset: 16)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 48, elements: !1791)
!1791 = !{!1792}
!1792 = !DISubrange(count: 6)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1783, file: !1745, line: 121, baseType: !426, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1779, file: !1745, line: 123, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1745, line: 96, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1779, file: !1745, line: 124, baseType: !1798, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1745, line: 102, size: 192, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1799, file: !1745, line: 103, baseType: !467, size: 128, align: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1745, line: 104, baseType: !306, size: 32, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1799, file: !1745, line: 105, baseType: !592, size: 8, offset: 160)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1779, file: !1745, line: 125, baseType: !323, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1745, line: 241, baseType: !1806, size: 320)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1745, line: 241, size: 320, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1806, file: !1745, line: 242, baseType: !426, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1806, file: !1745, line: 243, baseType: !426, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !1745, line: 244, baseType: !1795, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1806, file: !1745, line: 245, baseType: !1798, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1806, file: !1745, line: 246, baseType: !376, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 254, baseType: !1814, size: 256, offset: 1344)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 254, size: 256, elements: !1815)
!1815 = !{!1816, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1814, file: !1745, line: 255, baseType: !1817, size: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1745, line: 128, size: 256, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1817, file: !1745, line: 129, baseType: !286, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1817, file: !1745, line: 130, baseType: !1821, size: 256)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !1299)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !1745, line: 256, baseType: !1823, size: 256)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !1745, line: 256, size: 256, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1823, file: !1745, line: 258, baseType: !295, size: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1823, file: !1745, line: 259, baseType: !1827, size: 128, offset: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1828, line: 22, size: 128, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1833}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1827, file: !1828, line: 23, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1828, line: 23, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1827, file: !1828, line: 24, baseType: !426, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1744, file: !1745, line: 274, baseType: !1835, size: 64, offset: 1600)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1745, line: 170, size: 192, elements: !1837)
!1837 = !{!1838, !1847, !1848}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1836, file: !1745, line: 171, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1745, line: 165, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!113, !1743, !1843, !1845, !1743}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1836, file: !1745, line: 172, baseType: !1743, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1836, file: !1745, line: 173, baseType: !1795, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1715, file: !1716, line: 138, baseType: !1743, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1715, file: !1716, line: 139, baseType: !1743, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1715, file: !1716, line: 140, baseType: !1743, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1715, file: !1716, line: 145, baseType: !1853, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1855, line: 13, size: 896, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1854, file: !1855, line: 14, baseType: !306, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1854, file: !1855, line: 15, baseType: !310, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1854, file: !1855, line: 16, baseType: !310, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1854, file: !1855, line: 21, baseType: !832, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1854, file: !1855, line: 27, baseType: !426, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1854, file: !1855, line: 28, baseType: !426, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1854, file: !1855, line: 29, baseType: !832, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1854, file: !1855, line: 32, baseType: !744, size: 128, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1854, file: !1855, line: 33, baseType: !537, size: 32, offset: 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1854, file: !1855, line: 37, baseType: !832, size: 64, offset: 576)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1854, file: !1855, line: 44, baseType: !1868, size: 256, offset: 640)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1869, line: 15, size: 256, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1868, file: !1869, line: 16, baseType: !923)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1868, file: !1869, line: 18, baseType: !113, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1868, file: !1869, line: 19, baseType: !113, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1868, file: !1869, line: 20, baseType: !113, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1868, file: !1869, line: 21, baseType: !113, size: 32, offset: 96)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1868, file: !1869, line: 22, baseType: !426, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1869, line: 23, baseType: !426, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1715, file: !1716, line: 146, baseType: !1646, size: 64, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1715, file: !1716, line: 147, baseType: !1880, size: 64, offset: 1088)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1716, line: 25, size: 64, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1881, file: !1716, line: 26, baseType: !310, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1881, file: !1716, line: 27, baseType: !113, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1881, file: !1716, line: 28, baseType: !1886, offset: 64)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !1887)
!1887 = !{!1888}
!1888 = !DISubrange(count: 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !1716, line: 149, baseType: !1890, size: 128, offset: 1152)
!1890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !1716, line: 149, size: 128, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1890, file: !1716, line: 150, baseType: !113, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1890, file: !1716, line: 151, baseType: !467, size: 128, align: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1355, file: !1356, line: 926, baseType: !1713, size: 64, offset: 8576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1355, file: !1356, line: 929, baseType: !1713, size: 64, offset: 8640)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1355, file: !1356, line: 933, baseType: !1743, size: 64, offset: 8704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1355, file: !1356, line: 943, baseType: !1898, size: 128, offset: 8768)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !1899)
!1899 = !{!1900}
!1900 = !DISubrange(count: 16)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1355, file: !1356, line: 945, baseType: !1902, size: 64, offset: 8896)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1356, line: 49, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1355, file: !1356, line: 956, baseType: !1905, size: 64, offset: 8960)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1356, line: 45, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1355, file: !1356, line: 959, baseType: !1908, size: 64, offset: 9024)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1356, line: 959, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1355, file: !1356, line: 962, baseType: !1911, size: 64, offset: 9088)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1356, line: 66, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1355, file: !1356, line: 966, baseType: !1914, size: 64, offset: 9152)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1916, line: 31, size: 576, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !{!1918, !1919, !1922, !1925, !1928, !1929, !1932, !1935, !1936}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1915, file: !1916, line: 32, baseType: !310, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1915, file: !1916, line: 33, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1916, line: 9, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1915, file: !1916, line: 34, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1916, line: 10, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1915, file: !1916, line: 35, baseType: !1926, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1916, line: 8, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1915, file: !1916, line: 36, baseType: !1627, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1915, file: !1916, line: 37, baseType: !1930, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1745, line: 34, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1915, file: !1916, line: 38, baseType: !1933, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1916, line: 38, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1915, file: !1916, line: 39, baseType: !1933, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1915, file: !1916, line: 40, baseType: !1937, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1916, line: 12, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1355, file: !1356, line: 969, baseType: !1940, size: 64, offset: 9216)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1942, line: 82, size: 7296, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1979, !1988, !1989, !1991, !1992, !1993, !1996, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2026, !2027, !2034, !2035, !2036, !2037, !2038, !2039}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1941, file: !1942, line: 83, baseType: !306, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1941, file: !1942, line: 84, baseType: !310, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1941, file: !1942, line: 85, baseType: !113, size: 32, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1941, file: !1942, line: 86, baseType: !295, size: 128, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1941, file: !1942, line: 88, baseType: !1614, size: 128, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1941, file: !1942, line: 91, baseType: !1354, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1941, file: !1942, line: 94, baseType: !1951, size: 192, offset: 448)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1952, line: 30, size: 192, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !{!1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1951, file: !1952, line: 31, baseType: !295, size: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1951, file: !1952, line: 32, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1957, line: 25, baseType: !1958)
!1957 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1957, line: 23, size: 64, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1958, file: !1957, line: 24, baseType: !1503, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1941, file: !1942, line: 97, baseType: !740, size: 64, offset: 640)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1941, file: !1942, line: 100, baseType: !113, size: 32, offset: 704)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1941, file: !1942, line: 106, baseType: !113, size: 32, offset: 736)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1941, file: !1942, line: 107, baseType: !1354, size: 64, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1941, file: !1942, line: 110, baseType: !113, size: 32, offset: 832)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1942, line: 111, baseType: !5, size: 32, offset: 864)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1941, file: !1942, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1941, file: !1942, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1941, file: !1942, line: 128, baseType: !113, size: 32, offset: 928)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1941, file: !1942, line: 129, baseType: !295, size: 128, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1941, file: !1942, line: 132, baseType: !1425, size: 512, offset: 1088)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1941, file: !1942, line: 133, baseType: !1433, size: 64, offset: 1600)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1941, file: !1942, line: 140, baseType: !1974, size: 256, offset: 1664)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 256, elements: !1735)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1942, line: 38, size: 128, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1975, file: !1942, line: 39, baseType: !523, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1975, file: !1942, line: 40, baseType: !523, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1941, file: !1942, line: 146, baseType: !1980, size: 192, offset: 1920)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1942, line: 66, size: 192, elements: !1981)
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1980, file: !1942, line: 67, baseType: !1983, size: 192)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1942, line: 47, size: 192, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1983, file: !1942, line: 48, baseType: !834, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1983, file: !1942, line: 49, baseType: !834, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1983, file: !1942, line: 50, baseType: !834, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1941, file: !1942, line: 150, baseType: !1696, size: 640, offset: 2112)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1941, file: !1942, line: 153, baseType: !1990, size: 256, offset: 2752)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 256, elements: !1299)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1941, file: !1942, line: 159, baseType: !1604, size: 64, offset: 3008)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1941, file: !1942, line: 162, baseType: !113, size: 32, offset: 3072)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1941, file: !1942, line: 164, baseType: !1994, size: 64, offset: 3136)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1942, line: 164, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1941, file: !1942, line: 175, baseType: !1997, size: 32, offset: 3200)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !490, line: 805, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 798, size: 32, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1998, file: !490, line: 803, baseType: !489, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1998, file: !490, line: 804, baseType: !335, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1941, file: !1942, line: 176, baseType: !523, size: 64, offset: 3264)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1941, file: !1942, line: 176, baseType: !523, size: 64, offset: 3328)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1941, file: !1942, line: 176, baseType: !523, size: 64, offset: 3392)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1941, file: !1942, line: 176, baseType: !523, size: 64, offset: 3456)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1941, file: !1942, line: 177, baseType: !523, size: 64, offset: 3520)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1941, file: !1942, line: 178, baseType: !523, size: 64, offset: 3584)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1941, file: !1942, line: 179, baseType: !1684, size: 128, offset: 3648)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1941, file: !1942, line: 180, baseType: !426, size: 64, offset: 3776)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1941, file: !1942, line: 180, baseType: !426, size: 64, offset: 3840)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1941, file: !1942, line: 180, baseType: !426, size: 64, offset: 3904)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1941, file: !1942, line: 180, baseType: !426, size: 64, offset: 3968)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1941, file: !1942, line: 181, baseType: !426, size: 64, offset: 4032)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1941, file: !1942, line: 181, baseType: !426, size: 64, offset: 4096)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1941, file: !1942, line: 181, baseType: !426, size: 64, offset: 4160)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1941, file: !1942, line: 181, baseType: !426, size: 64, offset: 4224)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1941, file: !1942, line: 182, baseType: !426, size: 64, offset: 4288)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1941, file: !1942, line: 182, baseType: !426, size: 64, offset: 4352)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1941, file: !1942, line: 182, baseType: !426, size: 64, offset: 4416)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1941, file: !1942, line: 182, baseType: !426, size: 64, offset: 4480)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1941, file: !1942, line: 183, baseType: !426, size: 64, offset: 4544)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1941, file: !1942, line: 183, baseType: !426, size: 64, offset: 4608)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1941, file: !1942, line: 184, baseType: !2024, offset: 4672)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2025, line: 12, elements: !349)
!2025 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1941, file: !1942, line: 192, baseType: !525, size: 64, offset: 4672)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1941, file: !1942, line: 203, baseType: !2028, size: 2048, offset: 4736)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2029, size: 2048, elements: !1899)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2030, line: 43, size: 128, elements: !2031)
!2030 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2029, file: !2030, line: 44, baseType: !425, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2029, file: !2030, line: 45, baseType: !425, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1941, file: !1942, line: 220, baseType: !592, size: 8, offset: 6784)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1941, file: !1942, line: 221, baseType: !1343, size: 16, offset: 6800)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1941, file: !1942, line: 222, baseType: !1343, size: 16, offset: 6816)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1941, file: !1942, line: 224, baseType: !1118, size: 64, offset: 6848)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1941, file: !1942, line: 227, baseType: !828, size: 192, offset: 6912)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1941, file: !1942, line: 233, baseType: !828, size: 192, offset: 7104)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1355, file: !1356, line: 970, baseType: !2041, size: 64, offset: 9280)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1942, line: 20, size: 16576, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2042, file: !1942, line: 21, baseType: !335)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2042, file: !1942, line: 22, baseType: !306, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2042, file: !1942, line: 23, baseType: !1614, size: 128, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2042, file: !1942, line: 24, baseType: !2048, size: 16384, offset: 192)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2049, size: 16384, elements: !381)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1952, line: 49, size: 256, elements: !2050)
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2049, file: !1952, line: 50, baseType: !2052, size: 256)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1952, line: 35, size: 256, elements: !2053)
!2053 = !{!2054, !2061, !2062, !2068}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2052, file: !1952, line: 37, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2056, line: 19, baseType: !2057)
!2056 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2056, line: 18, baseType: !2059)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !113}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2052, file: !1952, line: 38, baseType: !426, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2052, file: !1952, line: 44, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2056, line: 22, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2056, line: 21, baseType: !2066)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2052, file: !1952, line: 46, baseType: !1956, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1355, file: !1356, line: 971, baseType: !1956, size: 64, offset: 9344)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1355, file: !1356, line: 972, baseType: !1956, size: 64, offset: 9408)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1355, file: !1356, line: 974, baseType: !1956, size: 64, offset: 9472)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1355, file: !1356, line: 975, baseType: !1951, size: 192, offset: 9536)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1355, file: !1356, line: 976, baseType: !426, size: 64, offset: 9728)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1355, file: !1356, line: 977, baseType: !423, size: 64, offset: 9792)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1355, file: !1356, line: 978, baseType: !5, size: 32, offset: 9856)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1355, file: !1356, line: 980, baseType: !470, size: 64, offset: 9920)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1355, file: !1356, line: 989, baseType: !2078, size: 128, offset: 9984)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2079, line: 35, size: 128, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2080 = !{!2081, !2082, !2083}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2078, file: !2079, line: 36, baseType: !113, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2078, file: !2079, line: 37, baseType: !310, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2078, file: !2079, line: 38, baseType: !2084, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2079, line: 23, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1355, file: !1356, line: 992, baseType: !523, size: 64, offset: 10112)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1355, file: !1356, line: 993, baseType: !523, size: 64, offset: 10176)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1355, file: !1356, line: 996, baseType: !335, offset: 10240)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1355, file: !1356, line: 999, baseType: !923, offset: 10240)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1355, file: !1356, line: 1001, baseType: !2091, size: 64, offset: 10240)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1356, line: 636, size: 64, elements: !2092)
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2091, file: !1356, line: 637, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1355, file: !1356, line: 1005, baseType: !902, size: 128, offset: 10304)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1355, file: !1356, line: 1007, baseType: !1354, size: 64, offset: 10432)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1355, file: !1356, line: 1009, baseType: !2098, size: 64, offset: 10496)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1356, line: 1009, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1355, file: !1356, line: 1043, baseType: !286, size: 64, offset: 10560)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1355, file: !1356, line: 1046, baseType: !2102, size: 64, offset: 10624)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1356, line: 41, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1355, file: !1356, line: 1050, baseType: !2105, size: 64, offset: 10688)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1356, line: 42, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1355, file: !1356, line: 1054, baseType: !2108, size: 64, offset: 10752)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1356, line: 55, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1355, file: !1356, line: 1056, baseType: !2111, size: 64, offset: 10816)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1356, line: 40, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1355, file: !1356, line: 1058, baseType: !2114, size: 64, offset: 10880)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2116, line: 99, size: 704, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2143, !2144}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2115, file: !2116, line: 100, baseType: !832, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2115, file: !2116, line: 101, baseType: !310, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2115, file: !2116, line: 102, baseType: !310, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2115, file: !2116, line: 105, baseType: !335, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2115, file: !2116, line: 107, baseType: !418, size: 16, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2115, file: !2116, line: 109, baseType: !893, size: 128, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2115, file: !2116, line: 110, baseType: !2125, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2116, line: 73, size: 448, elements: !2127)
!2127 = !{!2128, !2131, !2132, !2137, !2142}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2126, file: !2116, line: 74, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2116, line: 74, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2126, file: !2116, line: 75, baseType: !2114, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2116, line: 83, baseType: !2133, size: 128, offset: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !2116, line: 83, size: 128, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2133, file: !2116, line: 84, baseType: !295, size: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2133, file: !2116, line: 85, baseType: !1078, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2116, line: 87, baseType: !2138, size: 128, offset: 256)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !2116, line: 87, size: 128, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2138, file: !2116, line: 88, baseType: !744, size: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2138, file: !2116, line: 89, baseType: !467, size: 128, align: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !2116, line: 92, baseType: !5, size: 32, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2115, file: !2116, line: 111, baseType: !740, size: 64, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2115, file: !2116, line: 113, baseType: !2145, size: 256, offset: 448)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2146, line: 102, size: 256, elements: !2147)
!2146 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2149, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2145, file: !2146, line: 103, baseType: !832, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2145, file: !2146, line: 104, baseType: !295, size: 128, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2145, file: !2146, line: 105, baseType: !2151, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2146, line: 21, baseType: !2152)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1355, file: !1356, line: 1061, baseType: !2157, size: 64, offset: 10944)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1356, line: 43, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1355, file: !1356, line: 1064, baseType: !426, size: 64, offset: 11008)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1355, file: !1356, line: 1065, baseType: !2161, size: 64, offset: 11072)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1952, line: 14, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1952, line: 12, size: 384, elements: !2164)
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !1952, line: 13, baseType: !2166, size: 384)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2163, file: !1952, line: 13, size: 384, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2166, file: !1952, line: 13, baseType: !113, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2166, file: !1952, line: 13, baseType: !113, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2166, file: !1952, line: 13, baseType: !113, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2166, file: !1952, line: 13, baseType: !2172, size: 256, offset: 128)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2173, line: 32, size: 256, elements: !2174)
!2173 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2180, !2193, !2199, !2208, !2228, !2233}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2172, file: !2173, line: 37, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 34, size: 64, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2176, file: !2173, line: 35, baseType: !1593, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2176, file: !2173, line: 36, baseType: !543, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2172, file: !2173, line: 45, baseType: !2181, size: 192)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 40, size: 192, elements: !2182)
!2182 = !{!2183, !2185, !2186, !2192}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2181, file: !2173, line: 41, baseType: !2184, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !409, line: 95, baseType: !113)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2181, file: !2173, line: 42, baseType: !113, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2181, file: !2173, line: 43, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2173, line: 11, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2173, line: 8, size: 64, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2188, file: !2173, line: 9, baseType: !113, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2188, file: !2173, line: 10, baseType: !286, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2181, file: !2173, line: 44, baseType: !113, size: 32, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2172, file: !2173, line: 52, baseType: !2194, size: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 48, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2194, file: !2173, line: 49, baseType: !1593, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2194, file: !2173, line: 50, baseType: !543, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2194, file: !2173, line: 51, baseType: !2187, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2172, file: !2173, line: 61, baseType: !2200, size: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 55, size: 256, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2207}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2200, file: !2173, line: 56, baseType: !1593, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2200, file: !2173, line: 57, baseType: !543, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2200, file: !2173, line: 58, baseType: !113, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2200, file: !2173, line: 59, baseType: !2206, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !409, line: 94, baseType: !410)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2200, file: !2173, line: 60, baseType: !2206, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2172, file: !2173, line: 95, baseType: !2209, size: 256)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 64, size: 256, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2209, file: !2173, line: 65, baseType: !286, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !2173, line: 77, baseType: !2213, size: 192, offset: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2209, file: !2173, line: 77, size: 192, elements: !2214)
!2214 = !{!2215, !2216, !2223}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2213, file: !2173, line: 82, baseType: !1343, size: 16)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2213, file: !2173, line: 88, baseType: !2217, size: 192)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !2173, line: 84, size: 192, elements: !2218)
!2218 = !{!2219, !2221, !2222}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2217, file: !2173, line: 85, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 64, elements: !1463)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2217, file: !2173, line: 86, baseType: !286, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2217, file: !2173, line: 87, baseType: !286, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2213, file: !2173, line: 93, baseType: !2224, size: 96)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !2173, line: 90, size: 96, elements: !2225)
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2224, file: !2173, line: 91, baseType: !2220, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2224, file: !2173, line: 92, baseType: !519, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2172, file: !2173, line: 101, baseType: !2229, size: 128)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 98, size: 128, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2229, file: !2173, line: 99, baseType: !411, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2229, file: !2173, line: 100, baseType: !113, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2172, file: !2173, line: 108, baseType: !2234, size: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !2173, line: 104, size: 128, elements: !2235)
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2234, file: !2173, line: 105, baseType: !286, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2234, file: !2173, line: 106, baseType: !113, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2234, file: !2173, line: 107, baseType: !5, size: 32, offset: 96)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1355, file: !1356, line: 1067, baseType: !2024, offset: 11136)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1355, file: !1356, line: 1099, baseType: !2241, size: 64, offset: 11136)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1356, line: 56, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1355, file: !1356, line: 1103, baseType: !295, size: 128, offset: 11200)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1355, file: !1356, line: 1104, baseType: !2245, size: 64, offset: 11328)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1356, line: 46, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1355, file: !1356, line: 1105, baseType: !828, size: 192, offset: 11392)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1355, file: !1356, line: 1106, baseType: !5, size: 32, offset: 11584)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1355, file: !1356, line: 1109, baseType: !2250, size: 128, offset: 11648)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2251, size: 128, elements: !1735)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1356, line: 51, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1355, file: !1356, line: 1110, baseType: !828, size: 192, offset: 11776)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1355, file: !1356, line: 1111, baseType: !295, size: 128, offset: 11968)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1355, file: !1356, line: 1173, baseType: !2256, size: 64, offset: 12096)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2258, line: 62, size: 256, align: 256, elements: !2259)
!2258 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2259 = !{!2260, !2261, !2262, !2267}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2257, file: !2258, line: 75, baseType: !519, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2257, file: !2258, line: 90, baseType: !519, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2257, file: !2258, line: 124, baseType: !2263, size: 64, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !2258, line: 109, size: 64, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2263, file: !2258, line: 110, baseType: !524, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2263, file: !2258, line: 112, baseType: !524, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !2258, line: 144, baseType: !519, size: 32, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1355, file: !1356, line: 1174, baseType: !517, size: 32, offset: 12160)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1355, file: !1356, line: 1179, baseType: !426, size: 64, offset: 12224)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1355, file: !1356, line: 1182, baseType: !2271, size: 128, offset: 12288)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1295, line: 76, size: 128, elements: !2272)
!2272 = !{!2273, !2278, !2279}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2271, file: !1295, line: 85, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2275, line: 7, size: 64, elements: !2276)
!2275 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2274, file: !2275, line: 12, baseType: !1500, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2271, file: !1295, line: 88, baseType: !592, size: 8, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2271, file: !1295, line: 95, baseType: !592, size: 8, offset: 72)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !1356, line: 1184, baseType: !2281, size: 128, offset: 12416)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1355, file: !1356, line: 1184, size: 128, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2281, file: !1356, line: 1185, baseType: !306, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2281, file: !1356, line: 1186, baseType: !467, size: 128, align: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1355, file: !1356, line: 1190, baseType: !2286, size: 64, offset: 12544)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1356, line: 53, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1355, file: !1356, line: 1192, baseType: !2289, size: 128, offset: 12608)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1295, line: 64, size: 128, elements: !2290)
!2290 = !{!2291, !2292, !2293}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2289, file: !1295, line: 65, baseType: !875, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2289, file: !1295, line: 67, baseType: !519, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2289, file: !1295, line: 68, baseType: !519, size: 32, offset: 96)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1355, file: !1356, line: 1206, baseType: !113, size: 32, offset: 12736)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1355, file: !1356, line: 1207, baseType: !113, size: 32, offset: 12768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1355, file: !1356, line: 1209, baseType: !426, size: 64, offset: 12800)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1355, file: !1356, line: 1219, baseType: !523, size: 64, offset: 12864)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1355, file: !1356, line: 1220, baseType: !523, size: 64, offset: 12928)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1355, file: !1356, line: 1317, baseType: !113, size: 32, offset: 12992)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1355, file: !1356, line: 1319, baseType: !1354, size: 64, offset: 13056)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1355, file: !1356, line: 1322, baseType: !2302, size: 64, offset: 13120)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2304, line: 56, size: 512, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2311, !2312, !2314}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2303, file: !2304, line: 57, baseType: !2302, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2303, file: !2304, line: 58, baseType: !286, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2303, file: !2304, line: 59, baseType: !426, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2303, file: !2304, line: 60, baseType: !426, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2303, file: !2304, line: 61, baseType: !963, size: 64, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2303, file: !2304, line: 62, baseType: !5, size: 32, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2303, file: !2304, line: 63, baseType: !2313, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !285, line: 153, baseType: !523)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2303, file: !2304, line: 64, baseType: !2315, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1355, file: !1356, line: 1326, baseType: !306, size: 32, offset: 13184)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1355, file: !1356, line: 1342, baseType: !286, size: 64, offset: 13248)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1355, file: !1356, line: 1343, baseType: !524, size: 64, offset: 13312)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1355, file: !1356, line: 1344, baseType: !523, size: 64, offset: 13376)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1355, file: !1356, line: 1345, baseType: !524, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1355, file: !1356, line: 1346, baseType: !524, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1355, file: !1356, line: 1347, baseType: !524, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1355, file: !1356, line: 1348, baseType: !467, size: 128, align: 64, offset: 13504)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1355, file: !1356, line: 1358, baseType: !2326, size: 34816, offset: 13824)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2327, line: 485, size: 34816, elements: !2328)
!2327 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2358, !2359, !2360, !2361, !2362, !2363, !2366, !2367, !2368}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2326, file: !2327, line: 487, baseType: !2330, size: 192)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2331, size: 192, elements: !377)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2332, line: 16, size: 64, elements: !2333)
!2332 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2331, file: !2332, line: 17, baseType: !1002, size: 16)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2331, file: !2332, line: 18, baseType: !1002, size: 16, offset: 16)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2331, file: !2332, line: 19, baseType: !1002, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2331, file: !2332, line: 19, baseType: !1002, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2331, file: !2332, line: 19, baseType: !1002, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2331, file: !2332, line: 19, baseType: !1002, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2331, file: !2332, line: 19, baseType: !1002, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2331, file: !2332, line: 20, baseType: !1002, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2331, file: !2332, line: 20, baseType: !1002, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2331, file: !2332, line: 20, baseType: !1002, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2331, file: !2332, line: 20, baseType: !1002, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2331, file: !2332, line: 20, baseType: !1002, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2331, file: !2332, line: 20, baseType: !1002, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2326, file: !2327, line: 491, baseType: !426, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2326, file: !2327, line: 495, baseType: !418, size: 16, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2326, file: !2327, line: 496, baseType: !418, size: 16, offset: 272)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2326, file: !2327, line: 497, baseType: !418, size: 16, offset: 288)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2326, file: !2327, line: 498, baseType: !418, size: 16, offset: 304)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2326, file: !2327, line: 502, baseType: !426, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2326, file: !2327, line: 503, baseType: !426, size: 64, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2326, file: !2327, line: 514, baseType: !2355, size: 256, offset: 448)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2356, size: 256, elements: !1299)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2327, line: 483, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2326, file: !2327, line: 516, baseType: !426, size: 64, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2326, file: !2327, line: 518, baseType: !426, size: 64, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2326, file: !2327, line: 520, baseType: !426, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2326, file: !2327, line: 521, baseType: !426, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2326, file: !2327, line: 522, baseType: !426, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2326, file: !2327, line: 528, baseType: !2364, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2327, line: 10, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2326, file: !2327, line: 535, baseType: !426, size: 64, offset: 1088)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2326, file: !2327, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2326, file: !2327, line: 540, baseType: !2369, size: 33280, offset: 1536)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2370, line: 317, size: 33280, elements: !2371)
!2370 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !{!2372, !2373, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2369, file: !2370, line: 330, baseType: !5, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2369, file: !2370, line: 337, baseType: !426, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2369, file: !2370, line: 348, baseType: !2375, size: 32768, offset: 512)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2370, line: 304, size: 32768, elements: !2376)
!2376 = !{!2377, !2392, !2431, !2481, !2494}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2375, file: !2370, line: 305, baseType: !2378, size: 896)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2370, line: 12, size: 896, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2391}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2378, file: !2370, line: 13, baseType: !517, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2378, file: !2370, line: 14, baseType: !517, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2378, file: !2370, line: 15, baseType: !517, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2378, file: !2370, line: 16, baseType: !517, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2378, file: !2370, line: 17, baseType: !517, size: 32, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2378, file: !2370, line: 18, baseType: !517, size: 32, offset: 160)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2378, file: !2370, line: 19, baseType: !517, size: 32, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2378, file: !2370, line: 22, baseType: !2388, size: 640, offset: 224)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 640, elements: !2389)
!2389 = !{!2390}
!2390 = !DISubrange(count: 20)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2378, file: !2370, line: 25, baseType: !517, size: 32, offset: 864)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2375, file: !2370, line: 306, baseType: !2393, size: 4096, align: 128)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2370, line: 34, size: 4096, align: 128, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2414, !2415, !2416, !2420, !2422, !2426}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2393, file: !2370, line: 35, baseType: !1002, size: 16)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2393, file: !2370, line: 36, baseType: !1002, size: 16, offset: 16)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2393, file: !2370, line: 37, baseType: !1002, size: 16, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2393, file: !2370, line: 38, baseType: !1002, size: 16, offset: 48)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !2370, line: 39, baseType: !2400, size: 128, offset: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !2370, line: 39, size: 128, elements: !2401)
!2401 = !{!2402, !2407}
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2370, line: 40, baseType: !2403, size: 128)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !2370, line: 40, size: 128, elements: !2404)
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2403, file: !2370, line: 41, baseType: !523, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2403, file: !2370, line: 42, baseType: !523, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2370, line: 44, baseType: !2408, size: 128)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !2370, line: 44, size: 128, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2408, file: !2370, line: 45, baseType: !517, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2408, file: !2370, line: 46, baseType: !517, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2408, file: !2370, line: 47, baseType: !517, size: 32, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2408, file: !2370, line: 48, baseType: !517, size: 32, offset: 96)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2393, file: !2370, line: 51, baseType: !517, size: 32, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2393, file: !2370, line: 52, baseType: !517, size: 32, offset: 224)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2393, file: !2370, line: 55, baseType: !2417, size: 1024, offset: 256)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 1024, elements: !2418)
!2418 = !{!2419}
!2419 = !DISubrange(count: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2393, file: !2370, line: 58, baseType: !2421, size: 2048, offset: 1280)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 2048, elements: !381)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2393, file: !2370, line: 60, baseType: !2423, size: 384, offset: 3328)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 384, elements: !2424)
!2424 = !{!2425}
!2425 = !DISubrange(count: 12)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !2370, line: 62, baseType: !2427, size: 384, offset: 3712)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !2370, line: 62, size: 384, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2427, file: !2370, line: 63, baseType: !2423, size: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2427, file: !2370, line: 64, baseType: !2423, size: 384)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2375, file: !2370, line: 307, baseType: !2432, size: 1088)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2370, line: 79, size: 1088, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2480}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2432, file: !2370, line: 80, baseType: !517, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2432, file: !2370, line: 81, baseType: !517, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2432, file: !2370, line: 82, baseType: !517, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2432, file: !2370, line: 83, baseType: !517, size: 32, offset: 96)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2432, file: !2370, line: 84, baseType: !517, size: 32, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2432, file: !2370, line: 85, baseType: !517, size: 32, offset: 160)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2432, file: !2370, line: 86, baseType: !517, size: 32, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2432, file: !2370, line: 88, baseType: !2388, size: 640, offset: 224)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2432, file: !2370, line: 89, baseType: !1485, size: 8, offset: 864)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2432, file: !2370, line: 90, baseType: !1485, size: 8, offset: 872)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2432, file: !2370, line: 91, baseType: !1485, size: 8, offset: 880)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2432, file: !2370, line: 92, baseType: !1485, size: 8, offset: 888)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2432, file: !2370, line: 93, baseType: !1485, size: 8, offset: 896)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2432, file: !2370, line: 94, baseType: !1485, size: 8, offset: 904)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2432, file: !2370, line: 95, baseType: !2449, size: 64, offset: 960)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2451, line: 11, size: 128, elements: !2452)
!2451 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2450, file: !2451, line: 12, baseType: !411, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2450, file: !2451, line: 13, baseType: !2455, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2457, line: 56, size: 1344, elements: !2458)
!2457 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2456, file: !2457, line: 61, baseType: !426, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2456, file: !2457, line: 62, baseType: !426, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2456, file: !2457, line: 63, baseType: !426, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2456, file: !2457, line: 64, baseType: !426, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2456, file: !2457, line: 65, baseType: !426, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2456, file: !2457, line: 66, baseType: !426, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2456, file: !2457, line: 68, baseType: !426, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2456, file: !2457, line: 69, baseType: !426, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2456, file: !2457, line: 70, baseType: !426, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2456, file: !2457, line: 71, baseType: !426, size: 64, offset: 576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2456, file: !2457, line: 72, baseType: !426, size: 64, offset: 640)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2456, file: !2457, line: 73, baseType: !426, size: 64, offset: 704)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2456, file: !2457, line: 74, baseType: !426, size: 64, offset: 768)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2456, file: !2457, line: 75, baseType: !426, size: 64, offset: 832)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2456, file: !2457, line: 76, baseType: !426, size: 64, offset: 896)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2456, file: !2457, line: 81, baseType: !426, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2456, file: !2457, line: 83, baseType: !426, size: 64, offset: 1024)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2456, file: !2457, line: 84, baseType: !426, size: 64, offset: 1088)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !2457, line: 85, baseType: !426, size: 64, offset: 1152)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2456, file: !2457, line: 86, baseType: !426, size: 64, offset: 1216)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2456, file: !2457, line: 87, baseType: !426, size: 64, offset: 1280)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2432, file: !2370, line: 96, baseType: !517, size: 32, offset: 1024)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2375, file: !2370, line: 308, baseType: !2482, size: 4608, align: 512)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2370, line: 289, size: 4608, align: 512, elements: !2483)
!2483 = !{!2484, !2485, !2492}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2482, file: !2370, line: 290, baseType: !2393, size: 4096, align: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2482, file: !2370, line: 291, baseType: !2486, size: 512, offset: 4096)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2370, line: 268, size: 512, elements: !2487)
!2487 = !{!2488, !2489, !2490}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2486, file: !2370, line: 269, baseType: !523, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2486, file: !2370, line: 270, baseType: !523, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2486, file: !2370, line: 271, baseType: !2491, size: 384, offset: 128)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 384, elements: !1791)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2482, file: !2370, line: 292, baseType: !2493, offset: 4608)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, elements: !1887)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2375, file: !2370, line: 309, baseType: !2495, size: 32768)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 32768, elements: !2496)
!2496 = !{!2497}
!2497 = !DISubrange(count: 4096)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1351, file: !877, line: 378, baseType: !2499, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1347, file: !877, line: 384, baseType: !1668, size: 192, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1122, file: !877, line: 500, baseType: !335, offset: 6656)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1122, file: !877, line: 501, baseType: !2503, size: 64, offset: 6656)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !877, line: 387, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1122, file: !877, line: 516, baseType: !1646, size: 64, offset: 6720)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1122, file: !877, line: 519, baseType: !454, size: 64, offset: 6784)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1122, file: !877, line: 521, baseType: !2508, size: 64, offset: 6848)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !877, line: 521, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1122, file: !877, line: 545, baseType: !310, size: 32, offset: 6912)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1122, file: !877, line: 548, baseType: !592, size: 8, offset: 6944)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1122, file: !877, line: 550, baseType: !2513, offset: 6952)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2514, line: 142, elements: !349)
!2514 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1122, file: !877, line: 554, baseType: !2145, size: 256, offset: 6976)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1122, file: !877, line: 557, baseType: !517, size: 32, offset: 7232)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1119, file: !877, line: 565, baseType: !2518, offset: 7296)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !2519)
!2519 = !{!2520}
!2520 = !DISubrange(count: -1)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1115, file: !877, line: 151, baseType: !310, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1107, file: !877, line: 156, baseType: !335, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !877, line: 159, baseType: !2524, size: 128)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !877, line: 159, size: 128, elements: !2525)
!2525 = !{!2526, !2590}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2524, file: !877, line: 161, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2529)
!2529 = !{!2530, !2540, !2561, !2562, !2563, !2564, !2565, !2577, !2578, !2579}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2528, file: !29, line: 111, baseType: !2531, size: 384)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2532)
!2532 = !{!2533, !2535, !2536, !2537, !2538, !2539}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2531, file: !29, line: 20, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2531, file: !29, line: 21, baseType: !2534, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2531, file: !29, line: 22, baseType: !2534, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2531, file: !29, line: 23, baseType: !426, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2531, file: !29, line: 24, baseType: !426, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2531, file: !29, line: 25, baseType: !426, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2528, file: !29, line: 112, baseType: !2541, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2543, line: 105, size: 128, elements: !2544)
!2543 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2542, file: !2543, line: 110, baseType: !426, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2542, file: !2543, line: 118, baseType: !2547, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2543, line: 95, size: 448, elements: !2549)
!2549 = !{!2550, !2551, !2556, !2557, !2558, !2559, !2560}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2548, file: !2543, line: 96, baseType: !832, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2548, file: !2543, line: 97, baseType: !2552, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2543, line: 60, baseType: !2554)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !2541}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2548, file: !2543, line: 98, baseType: !2552, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2548, file: !2543, line: 99, baseType: !592, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2548, file: !2543, line: 100, baseType: !592, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2548, file: !2543, line: 101, baseType: !467, size: 128, align: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2548, file: !2543, line: 102, baseType: !2541, size: 64, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2528, file: !29, line: 113, baseType: !2542, size: 128, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2528, file: !29, line: 114, baseType: !1668, size: 192, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2528, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2528, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2528, file: !29, line: 117, baseType: !2566, size: 64, offset: 832)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2569)
!2569 = !{!2570, !2571, !2575, !2576}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2568, file: !29, line: 73, baseType: !983, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2568, file: !29, line: 78, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2527}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2568, file: !29, line: 83, baseType: !2572, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2568, file: !29, line: 89, baseType: !1171, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2528, file: !29, line: 118, baseType: !286, size: 64, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2528, file: !29, line: 119, baseType: !113, size: 32, offset: 960)
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !2528, file: !29, line: 120, baseType: !2580, size: 128, offset: 1024)
!2580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2528, file: !29, line: 120, size: 128, elements: !2581)
!2581 = !{!2582, !2588}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2580, file: !29, line: 121, baseType: !2583, size: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2584, line: 6, size: 128, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2583, file: !2584, line: 7, baseType: !523, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2583, file: !2584, line: 8, baseType: !523, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2580, file: !29, line: 122, baseType: !2589)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2583, elements: !1887)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2524, file: !877, line: 162, baseType: !286, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !881, file: !877, line: 176, baseType: !467, size: 128, align: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !877, line: 179, baseType: !2593, size: 32, offset: 384)
!2593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !877, line: 179, size: 32, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2593, file: !877, line: 184, baseType: !310, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2593, file: !877, line: 192, baseType: !5, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2593, file: !877, line: 194, baseType: !5, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2593, file: !877, line: 195, baseType: !113, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !876, file: !877, line: 199, baseType: !310, size: 32, offset: 416)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !762, file: !42, line: 1964, baseType: !2601, size: 64, offset: 1344)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!411, !701, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2606, line: 12, size: 256, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608, !2609, !2610, !2611, !2612}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2605, file: !2606, line: 13, baseType: !284, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2605, file: !2606, line: 16, baseType: !113, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2605, file: !2606, line: 23, baseType: !426, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2605, file: !2606, line: 30, baseType: !426, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2605, file: !2606, line: 33, baseType: !2613, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !877, line: 27, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !762, file: !42, line: 1966, baseType: !2601, size: 64, offset: 1408)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !702, file: !42, line: 1424, baseType: !2617, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2620)
!2620 = !{!2621, !2667, !2671, !2675, !2676, !2677, !2678, !2679, !2684, !2689, !2693}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2619, file: !36, line: 323, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!113, !2625}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2652, !2653, !2654}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2626, file: !36, line: 295, baseType: !744, size: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2626, file: !36, line: 296, baseType: !295, size: 128, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2626, file: !36, line: 297, baseType: !295, size: 128, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2626, file: !36, line: 298, baseType: !295, size: 128, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2626, file: !36, line: 299, baseType: !828, size: 192, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2626, file: !36, line: 300, baseType: !335, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2626, file: !36, line: 301, baseType: !310, size: 32, offset: 704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2626, file: !36, line: 302, baseType: !701, size: 64, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2626, file: !36, line: 303, baseType: !2637, size: 64, offset: 832)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2638)
!2638 = !{!2639, !2651}
!2639 = !DIDerivedType(tag: DW_TAG_member, scope: !2637, file: !36, line: 69, baseType: !2640, size: 32)
!2640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2637, file: !36, line: 69, size: 32, elements: !2641)
!2641 = !{!2642, !2643, !2644}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2640, file: !36, line: 70, baseType: !537, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2640, file: !36, line: 71, baseType: !545, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2640, file: !36, line: 72, baseType: !2645, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2646, line: 24, baseType: !2647)
!2646 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2646, line: 22, size: 32, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2647, file: !2646, line: 23, baseType: !2650, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2646, line: 20, baseType: !543)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2637, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2626, file: !36, line: 304, baseType: !633, size: 64, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2626, file: !36, line: 305, baseType: !426, size: 64, offset: 960)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2626, file: !36, line: 306, baseType: !2655, size: 576, offset: 1024)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2656)
!2656 = !{!2657, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2655, file: !36, line: 206, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !635)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2655, file: !36, line: 207, baseType: !2658, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2655, file: !36, line: 208, baseType: !2658, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2655, file: !36, line: 209, baseType: !2658, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2655, file: !36, line: 210, baseType: !2658, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2655, file: !36, line: 211, baseType: !2658, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2655, file: !36, line: 212, baseType: !2658, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2655, file: !36, line: 213, baseType: !641, size: 64, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2655, file: !36, line: 214, baseType: !641, size: 64, offset: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2619, file: !36, line: 324, baseType: !2668, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!2625, !701, !113}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2619, file: !36, line: 325, baseType: !2672, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !2625}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2619, file: !36, line: 326, baseType: !2622, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2619, file: !36, line: 327, baseType: !2622, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2619, file: !36, line: 328, baseType: !2622, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2619, file: !36, line: 329, baseType: !790, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2619, file: !36, line: 332, baseType: !2680, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!2683, !531}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2619, file: !36, line: 333, baseType: !2685, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!113, !531, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2619, file: !36, line: 335, baseType: !2690, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!113, !531, !2683}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2619, file: !36, line: 337, baseType: !2694, size: 64, offset: 640)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!113, !701, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !702, file: !42, line: 1425, baseType: !2699, size: 64, offset: 512)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2702)
!2702 = !{!2703, !2707, !2708, !2712, !2713, !2714, !2729, !2752, !2756, !2757, !2780}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2701, file: !36, line: 429, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!113, !701, !113, !113, !651}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2701, file: !36, line: 430, baseType: !790, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2701, file: !36, line: 431, baseType: !2709, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!113, !701, !5}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2701, file: !36, line: 432, baseType: !2709, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2701, file: !36, line: 433, baseType: !790, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2701, file: !36, line: 434, baseType: !2715, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!113, !701, !113, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2719, file: !36, line: 416, baseType: !113, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2719, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2719, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2719, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2719, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2719, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2719, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2719, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2701, file: !36, line: 435, baseType: !2730, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!113, !701, !2637, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2734, file: !36, line: 344, baseType: !113, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2734, file: !36, line: 345, baseType: !523, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2734, file: !36, line: 346, baseType: !523, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2734, file: !36, line: 347, baseType: !523, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2734, file: !36, line: 348, baseType: !523, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2734, file: !36, line: 349, baseType: !523, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2734, file: !36, line: 350, baseType: !523, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2734, file: !36, line: 351, baseType: !838, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2734, file: !36, line: 353, baseType: !838, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2734, file: !36, line: 354, baseType: !113, size: 32, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2734, file: !36, line: 355, baseType: !113, size: 32, offset: 608)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2734, file: !36, line: 356, baseType: !523, size: 64, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2734, file: !36, line: 357, baseType: !523, size: 64, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2734, file: !36, line: 358, baseType: !523, size: 64, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2734, file: !36, line: 359, baseType: !838, size: 64, offset: 832)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2734, file: !36, line: 360, baseType: !113, size: 32, offset: 896)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2701, file: !36, line: 436, baseType: !2753, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!113, !701, !2697, !2733}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2701, file: !36, line: 438, baseType: !2730, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2701, file: !36, line: 439, baseType: !2758, size: 64, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!113, !701, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2762, file: !36, line: 410, baseType: !5, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2762, file: !36, line: 411, baseType: !2766, size: 1344, offset: 64)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2767, size: 1344, elements: !377)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2779}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2767, file: !36, line: 396, baseType: !5, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2767, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2767, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2767, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2767, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2767, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2767, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2767, file: !36, line: 404, baseType: !525, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2767, file: !36, line: 405, baseType: !2778, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !285, line: 126, baseType: !523)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2767, file: !36, line: 406, baseType: !2778, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2701, file: !36, line: 440, baseType: !2709, size: 64, offset: 640)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !702, file: !42, line: 1426, baseType: !2782, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !702, file: !42, line: 1427, baseType: !426, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !702, file: !42, line: 1428, baseType: !426, size: 64, offset: 704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !702, file: !42, line: 1429, baseType: !426, size: 64, offset: 768)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !702, file: !42, line: 1430, baseType: !484, size: 64, offset: 832)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !702, file: !42, line: 1431, baseType: !917, size: 256, offset: 896)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !702, file: !42, line: 1432, baseType: !113, size: 32, offset: 1152)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !702, file: !42, line: 1433, baseType: !310, size: 32, offset: 1184)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !702, file: !42, line: 1437, baseType: !2793, size: 64, offset: 1216)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2796)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !702, file: !42, line: 1449, baseType: !2798, size: 64, offset: 1280)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !500, line: 34, size: 64, elements: !2799)
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2798, file: !500, line: 35, baseType: !503, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !702, file: !42, line: 1450, baseType: !295, size: 128, offset: 1344)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !702, file: !42, line: 1451, baseType: !2803, size: 64, offset: 1472)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !702, file: !42, line: 1452, baseType: !2111, size: 64, offset: 1536)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !702, file: !42, line: 1453, baseType: !2807, size: 64, offset: 1600)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !702, file: !42, line: 1454, baseType: !744, size: 128, offset: 1664)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !702, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !702, file: !42, line: 1456, baseType: !2812, size: 2432, offset: 1856)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2813)
!2813 = !{!2814, !2815, !2816, !2818, !2850}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !36, line: 519, baseType: !5, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2812, file: !36, line: 520, baseType: !917, size: 256, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2812, file: !36, line: 521, baseType: !2817, size: 192, offset: 320)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 192, elements: !377)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2812, file: !36, line: 522, baseType: !2819, size: 1728, offset: 512)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, size: 1728, elements: !377)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2821)
!2821 = !{!2822, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2820, file: !36, line: 223, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2825)
!2825 = !{!2826, !2827, !2840, !2841}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2824, file: !36, line: 444, baseType: !113, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2824, file: !36, line: 445, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2830)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2830, file: !36, line: 311, baseType: !790, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2830, file: !36, line: 312, baseType: !790, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2830, file: !36, line: 313, baseType: !790, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2830, file: !36, line: 314, baseType: !790, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2830, file: !36, line: 315, baseType: !2622, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2830, file: !36, line: 316, baseType: !2622, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2830, file: !36, line: 317, baseType: !2622, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2830, file: !36, line: 318, baseType: !2694, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2824, file: !36, line: 446, baseType: !735, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2824, file: !36, line: 447, baseType: !2823, size: 64, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2820, file: !36, line: 224, baseType: !113, size: 32, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2820, file: !36, line: 226, baseType: !295, size: 128, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2820, file: !36, line: 227, baseType: !426, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2820, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2820, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2820, file: !36, line: 230, baseType: !2658, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2820, file: !36, line: 231, baseType: !2658, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2820, file: !36, line: 232, baseType: !286, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2812, file: !36, line: 523, baseType: !2851, size: 192, offset: 2240)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2828, size: 192, elements: !377)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !702, file: !42, line: 1458, baseType: !2853, size: 2112, offset: 4288)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2853, file: !42, line: 1411, baseType: !113, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2853, file: !42, line: 1412, baseType: !1614, size: 128, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2853, file: !42, line: 1413, baseType: !2858, size: 1920, offset: 192)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2859, size: 1920, elements: !377)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2860, line: 12, size: 640, elements: !2861)
!2860 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2861 = !{!2862, !2870, !2872, !2877, !2878}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2859, file: !2860, line: 13, baseType: !2863, size: 320)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2864, line: 17, size: 320, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2863, file: !2864, line: 18, baseType: !113, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2863, file: !2864, line: 19, baseType: !113, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2863, file: !2864, line: 20, baseType: !1614, size: 128, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2863, file: !2864, line: 22, baseType: !467, size: 128, align: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2859, file: !2860, line: 14, baseType: !2871, size: 64, offset: 320)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2859, file: !2860, line: 15, baseType: !2873, size: 64, offset: 384)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2874, line: 16, size: 64, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2873, file: !2874, line: 17, baseType: !1354, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2859, file: !2860, line: 16, baseType: !1614, size: 128, offset: 448)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2859, file: !2860, line: 17, baseType: !310, size: 32, offset: 576)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !702, file: !42, line: 1465, baseType: !286, size: 64, offset: 6400)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !702, file: !42, line: 1468, baseType: !517, size: 32, offset: 6464)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !702, file: !42, line: 1470, baseType: !641, size: 64, offset: 6528)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !702, file: !42, line: 1471, baseType: !641, size: 64, offset: 6592)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !702, file: !42, line: 1473, baseType: !519, size: 32, offset: 6656)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !702, file: !42, line: 1474, baseType: !2885, size: 64, offset: 6720)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !702, file: !42, line: 1477, baseType: !2888, size: 256, offset: 6784)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !2418)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !702, file: !42, line: 1478, baseType: !2890, size: 128, offset: 7040)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2891, line: 18, baseType: !2892)
!2891 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2891, line: 16, size: 128, elements: !2893)
!2893 = !{!2894}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2892, file: !2891, line: 17, baseType: !2895, size: 128)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 128, elements: !1899)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !702, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !702, file: !42, line: 1481, baseType: !2898, size: 32, offset: 7200)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !285, line: 150, baseType: !5)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !702, file: !42, line: 1487, baseType: !828, size: 192, offset: 7232)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !702, file: !42, line: 1493, baseType: !323, size: 64, offset: 7424)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !702, file: !42, line: 1495, baseType: !2902, size: 64, offset: 7488)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !482, line: 135, size: 1024, align: 512, elements: !2905)
!2905 = !{!2906, !2910, !2911, !2918, !2924, !2928, !2932, !2936, !2937, !2941, !2945, !2950, !2954}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2904, file: !482, line: 136, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!113, !484, !5}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2904, file: !482, line: 137, baseType: !2907, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2904, file: !482, line: 138, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!113, !2915, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2904, file: !482, line: 139, baseType: !2919, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!113, !2915, !5, !323, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2904, file: !482, line: 141, baseType: !2925, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!113, !2915}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2904, file: !482, line: 142, baseType: !2929, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!113, !484}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2904, file: !482, line: 143, baseType: !2933, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !484}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2904, file: !482, line: 144, baseType: !2933, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2904, file: !482, line: 145, baseType: !2938, size: 64, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !484, !531}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2904, file: !482, line: 146, baseType: !2942, size: 64, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!376, !484, !376, !113}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2904, file: !482, line: 147, baseType: !2946, size: 64, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!480, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2904, file: !482, line: 148, baseType: !2951, size: 64, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!113, !651, !592}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2904, file: !482, line: 149, baseType: !2955, size: 64, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!484, !484, !2958}
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !702, file: !42, line: 1500, baseType: !113, size: 32, offset: 7552)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !702, file: !42, line: 1502, baseType: !2962, size: 448, offset: 7616)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2606, line: 60, size: 448, elements: !2963)
!2963 = !{!2964, !2969, !2970, !2971, !2972, !2973, !2974}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2962, file: !2606, line: 61, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!426, !2968, !2604}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2962, file: !2606, line: 63, baseType: !2965, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2962, file: !2606, line: 66, baseType: !411, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2962, file: !2606, line: 67, baseType: !113, size: 32, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2962, file: !2606, line: 68, baseType: !5, size: 32, offset: 224)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2962, file: !2606, line: 71, baseType: !295, size: 128, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2962, file: !2606, line: 77, baseType: !2975, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !702, file: !42, line: 1505, baseType: !832, size: 64, offset: 8064)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !702, file: !42, line: 1508, baseType: !832, size: 64, offset: 8128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !702, file: !42, line: 1511, baseType: !113, size: 32, offset: 8192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !702, file: !42, line: 1514, baseType: !1052, size: 32, offset: 8224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !702, file: !42, line: 1517, baseType: !2981, size: 64, offset: 8256)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2146, line: 18, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !702, file: !42, line: 1518, baseType: !740, size: 64, offset: 8320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !702, file: !42, line: 1525, baseType: !1646, size: 64, offset: 8384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !702, file: !42, line: 1532, baseType: !2986, size: 64, offset: 8448)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2987, line: 52, size: 64, elements: !2988)
!2987 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2986, file: !2987, line: 53, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2987, line: 40, size: 256, elements: !2992)
!2992 = !{!2993, !2994, !2999}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2991, file: !2987, line: 42, baseType: !335)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2991, file: !2987, line: 44, baseType: !2995, size: 192)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2987, line: 28, size: 192, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2995, file: !2987, line: 29, baseType: !295, size: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2995, file: !2987, line: 31, baseType: !411, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2991, file: !2987, line: 49, baseType: !411, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !702, file: !42, line: 1533, baseType: !2986, size: 64, offset: 8512)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !702, file: !42, line: 1534, baseType: !467, size: 128, align: 64, offset: 8576)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !702, file: !42, line: 1535, baseType: !2145, size: 256, offset: 8704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !702, file: !42, line: 1537, baseType: !828, size: 192, offset: 8960)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !702, file: !42, line: 1542, baseType: !113, size: 32, offset: 9152)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !702, file: !42, line: 1545, baseType: !335, offset: 9184)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !702, file: !42, line: 1546, baseType: !295, size: 128, offset: 9216)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !702, file: !42, line: 1548, baseType: !335, offset: 9344)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !702, file: !42, line: 1549, baseType: !295, size: 128, offset: 9344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !532, file: !42, line: 624, baseType: !888, size: 64, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !532, file: !42, line: 631, baseType: !426, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !42, line: 639, baseType: !3012, size: 32, offset: 384)
!3012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !42, line: 639, size: 32, elements: !3013)
!3013 = !{!3014, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3012, file: !42, line: 640, baseType: !3015, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3012, file: !42, line: 641, baseType: !5, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !532, file: !42, line: 643, baseType: !615, size: 32, offset: 416)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !532, file: !42, line: 644, baseType: !633, size: 64, offset: 448)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !532, file: !42, line: 645, baseType: !637, size: 128, offset: 512)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !532, file: !42, line: 646, baseType: !637, size: 128, offset: 640)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !532, file: !42, line: 647, baseType: !637, size: 128, offset: 768)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !532, file: !42, line: 648, baseType: !335, offset: 896)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !532, file: !42, line: 649, baseType: !418, size: 16, offset: 896)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !532, file: !42, line: 650, baseType: !1485, size: 8, offset: 912)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !532, file: !42, line: 651, baseType: !1485, size: 8, offset: 920)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !532, file: !42, line: 652, baseType: !2778, size: 64, offset: 960)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !532, file: !42, line: 659, baseType: !426, size: 64, offset: 1024)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !532, file: !42, line: 660, baseType: !917, size: 256, offset: 1088)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !532, file: !42, line: 662, baseType: !426, size: 64, offset: 1344)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !532, file: !42, line: 663, baseType: !426, size: 64, offset: 1408)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !532, file: !42, line: 665, baseType: !744, size: 128, offset: 1472)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !532, file: !42, line: 666, baseType: !295, size: 128, offset: 1600)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !532, file: !42, line: 675, baseType: !295, size: 128, offset: 1728)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !532, file: !42, line: 676, baseType: !295, size: 128, offset: 1856)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !532, file: !42, line: 677, baseType: !295, size: 128, offset: 1984)
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !42, line: 678, baseType: !3037, size: 128, offset: 2112)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !42, line: 678, size: 128, elements: !3038)
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3037, file: !42, line: 679, baseType: !740, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3037, file: !42, line: 680, baseType: !467, size: 128, align: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !532, file: !42, line: 682, baseType: !834, size: 64, offset: 2240)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !532, file: !42, line: 683, baseType: !834, size: 64, offset: 2304)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !532, file: !42, line: 684, baseType: !310, size: 32, offset: 2368)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !532, file: !42, line: 685, baseType: !310, size: 32, offset: 2400)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !532, file: !42, line: 686, baseType: !310, size: 32, offset: 2432)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !532, file: !42, line: 688, baseType: !310, size: 32, offset: 2464)
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !42, line: 690, baseType: !3048, size: 64, offset: 2496)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !42, line: 690, size: 64, elements: !3049)
!3049 = !{!3050, !3272}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3048, file: !42, line: 691, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3053)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !3054)
!3054 = !{!3055, !3056, !3060, !3064, !3068, !3069, !3070, !3074, !3087, !3088, !3096, !3100, !3101, !3105, !3106, !3110, !3115, !3116, !3120, !3124, !3232, !3236, !3237, !3241, !3242, !3246, !3250, !3255, !3259, !3263, !3267, !3271}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3053, file: !42, line: 1823, baseType: !735, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3053, file: !42, line: 1824, baseType: !3057, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!633, !454, !633, !113}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3053, file: !42, line: 1825, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!407, !454, !376, !423, !850}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3053, file: !42, line: 1826, baseType: !3065, size: 64, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!407, !454, !323, !423, !850}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3053, file: !42, line: 1827, baseType: !987, size: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3053, file: !42, line: 1828, baseType: !987, size: 64, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3053, file: !42, line: 1829, baseType: !3071, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!113, !990, !592}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3053, file: !42, line: 1830, baseType: !3075, size: 64, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!113, !454, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !3080)
!3080 = !{!3081, !3086}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3079, file: !42, line: 1777, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !3083)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!113, !3078, !323, !113, !633, !523, !5}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3079, file: !42, line: 1778, baseType: !633, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3053, file: !42, line: 1831, baseType: !3075, size: 64, offset: 512)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3053, file: !42, line: 1832, baseType: !3089, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!3092, !454, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3093, line: 52, baseType: !5)
!3093 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !721, line: 27, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3053, file: !42, line: 1833, baseType: !3097, size: 64, offset: 640)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!411, !454, !5, !426}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3053, file: !42, line: 1834, baseType: !3097, size: 64, offset: 704)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3053, file: !42, line: 1835, baseType: !3102, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!113, !454, !1125}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3053, file: !42, line: 1836, baseType: !426, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3053, file: !42, line: 1837, baseType: !3107, size: 64, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!113, !531, !454}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3053, file: !42, line: 1838, baseType: !3111, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!113, !454, !3114}
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !286)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3053, file: !42, line: 1839, baseType: !3107, size: 64, offset: 1024)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3053, file: !42, line: 1840, baseType: !3117, size: 64, offset: 1088)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!113, !454, !633, !633, !113}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3053, file: !42, line: 1841, baseType: !3121, size: 64, offset: 1152)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!113, !113, !454, !113}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3053, file: !42, line: 1842, baseType: !3125, size: 64, offset: 1216)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!113, !454, !113, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3162, !3163, !3164, !3177, !3208}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3129, file: !42, line: 1063, baseType: !3128, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3129, file: !42, line: 1064, baseType: !295, size: 128, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3129, file: !42, line: 1065, baseType: !744, size: 128, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3129, file: !42, line: 1066, baseType: !295, size: 128, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3129, file: !42, line: 1069, baseType: !295, size: 128, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3129, file: !42, line: 1072, baseType: !3114, size: 64, offset: 576)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3129, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3129, file: !42, line: 1074, baseType: !529, size: 8, offset: 672)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3129, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3129, file: !42, line: 1076, baseType: !113, size: 32, offset: 736)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3129, file: !42, line: 1077, baseType: !1614, size: 128, offset: 768)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3129, file: !42, line: 1078, baseType: !454, size: 64, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3129, file: !42, line: 1079, baseType: !633, size: 64, offset: 960)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3129, file: !42, line: 1080, baseType: !633, size: 64, offset: 1024)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3129, file: !42, line: 1082, baseType: !3146, size: 64, offset: 1088)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !3148)
!3148 = !{!3149, !3157, !3158, !3159, !3160, !3161}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3147, file: !42, line: 1315, baseType: !3150)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3151, line: 20, baseType: !3152)
!3151 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3151, line: 11, elements: !3153)
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3152, file: !3151, line: 12, baseType: !3155)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !347, line: 33, baseType: !3156)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 31, elements: !349)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3147, file: !42, line: 1316, baseType: !113, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3147, file: !42, line: 1317, baseType: !113, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3147, file: !42, line: 1318, baseType: !3146, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3147, file: !42, line: 1319, baseType: !454, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3147, file: !42, line: 1320, baseType: !467, size: 128, align: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3129, file: !42, line: 1084, baseType: !426, size: 64, offset: 1152)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3129, file: !42, line: 1085, baseType: !426, size: 64, offset: 1216)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3129, file: !42, line: 1087, baseType: !3165, size: 64, offset: 1280)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3167)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3168)
!3168 = !{!3169, !3173}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3167, file: !42, line: 1012, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !3128, !3128}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3167, file: !42, line: 1013, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !3128}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3129, file: !42, line: 1088, baseType: !3178, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3181)
!3181 = !{!3182, !3186, !3190, !3191, !3195, !3199, !3203, !3207}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3180, file: !42, line: 1017, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3114, !3114}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3180, file: !42, line: 1018, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !3114}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3180, file: !42, line: 1019, baseType: !3174, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3180, file: !42, line: 1020, baseType: !3192, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!113, !3128, !113}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3180, file: !42, line: 1021, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!592, !3128}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3180, file: !42, line: 1022, baseType: !3200, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!113, !3128, !113, !298}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3180, file: !42, line: 1023, baseType: !3204, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !3128, !964}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3180, file: !42, line: 1024, baseType: !3196, size: 64, offset: 448)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3129, file: !42, line: 1097, baseType: !3209, size: 256, offset: 1408)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !42, line: 1089, size: 256, elements: !3210)
!3210 = !{!3211, !3220, !3226}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3209, file: !42, line: 1090, baseType: !3212, size: 256)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3213, line: 10, size: 256, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3214 = !{!3215, !3216, !3219}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3212, file: !3213, line: 11, baseType: !517, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3212, file: !3213, line: 12, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3213, line: 5, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3212, file: !3213, line: 13, baseType: !295, size: 128, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3209, file: !42, line: 1091, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3213, line: 17, size: 64, elements: !3222)
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3221, file: !3213, line: 18, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3213, line: 16, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3209, file: !42, line: 1096, baseType: !3227, size: 192)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !42, line: 1092, size: 192, elements: !3228)
!3228 = !{!3229, !3230, !3231}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3227, file: !42, line: 1093, baseType: !295, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3227, file: !42, line: 1094, baseType: !113, size: 32, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3227, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3053, file: !42, line: 1843, baseType: !3233, size: 64, offset: 1280)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!407, !454, !875, !113, !423, !850, !113}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3053, file: !42, line: 1844, baseType: !1245, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3053, file: !42, line: 1845, baseType: !3238, size: 64, offset: 1408)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!113, !113}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3053, file: !42, line: 1846, baseType: !3125, size: 64, offset: 1472)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3053, file: !42, line: 1847, baseType: !3243, size: 64, offset: 1536)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!407, !2286, !454, !850, !423, !5}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3053, file: !42, line: 1848, baseType: !3247, size: 64, offset: 1600)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!407, !454, !850, !2286, !423, !5}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3053, file: !42, line: 1849, baseType: !3251, size: 64, offset: 1664)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!113, !454, !411, !3254, !964}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3053, file: !42, line: 1850, baseType: !3256, size: 64, offset: 1728)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!411, !454, !113, !633, !633}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3053, file: !42, line: 1852, baseType: !3260, size: 64, offset: 1792)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !816, !454}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3053, file: !42, line: 1856, baseType: !3264, size: 64, offset: 1856)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!407, !454, !633, !454, !633, !423, !5}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3053, file: !42, line: 1858, baseType: !3268, size: 64, offset: 1920)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!633, !454, !633, !454, !633, !633, !5}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3053, file: !42, line: 1861, baseType: !3117, size: 64, offset: 1984)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3048, file: !42, line: 692, baseType: !769, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !532, file: !42, line: 694, baseType: !3274, size: 64, offset: 2560)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3275, file: !42, line: 1101, baseType: !335)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3275, file: !42, line: 1102, baseType: !295, size: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3275, file: !42, line: 1103, baseType: !295, size: 128, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3275, file: !42, line: 1104, baseType: !295, size: 128, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !532, file: !42, line: 695, baseType: !889, size: 1216, align: 64, offset: 2624)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !532, file: !42, line: 696, baseType: !295, size: 128, offset: 3840)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !42, line: 697, baseType: !3284, size: 64, offset: 3968)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !42, line: 697, size: 64, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3291, !3292}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3284, file: !42, line: 698, baseType: !2286, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3284, file: !42, line: 699, baseType: !2803, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3284, file: !42, line: 700, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3284, file: !42, line: 701, baseType: !376, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3284, file: !42, line: 702, baseType: !5, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !532, file: !42, line: 705, baseType: !519, size: 32, offset: 4032)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !532, file: !42, line: 708, baseType: !519, size: 32, offset: 4064)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !532, file: !42, line: 709, baseType: !2885, size: 64, offset: 4096)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !532, file: !42, line: 720, baseType: !286, size: 64, offset: 4160)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !485, file: !482, line: 98, baseType: !3298, size: 256, offset: 448)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 256, elements: !2418)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !485, file: !482, line: 101, baseType: !3300, size: 32, offset: 704)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3301, line: 25, size: 32, elements: !3302)
!3301 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3302 = !{!3303}
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3300, file: !3301, line: 26, baseType: !3304, size: 32)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3300, file: !3301, line: 26, size: 32, elements: !3305)
!3305 = !{!3306}
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !3301, line: 30, baseType: !3307, size: 32)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3304, file: !3301, line: 30, size: 32, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3307, file: !3301, line: 31, baseType: !335)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3307, file: !3301, line: 32, baseType: !113, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !485, file: !482, line: 102, baseType: !2902, size: 64, offset: 768)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !485, file: !482, line: 103, baseType: !701, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !485, file: !482, line: 104, baseType: !426, size: 64, offset: 896)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !485, file: !482, line: 105, baseType: !286, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !482, line: 107, baseType: !3316, size: 128, offset: 1024)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !482, line: 107, size: 128, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3316, file: !482, line: 108, baseType: !295, size: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3316, file: !482, line: 109, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !485, file: !482, line: 111, baseType: !295, size: 128, offset: 1152)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !485, file: !482, line: 112, baseType: !295, size: 128, offset: 1280)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !485, file: !482, line: 120, baseType: !3324, size: 128, offset: 1408)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !482, line: 116, size: 128, elements: !3325)
!3325 = !{!3326, !3327, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3324, file: !482, line: 117, baseType: !744, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3324, file: !482, line: 118, baseType: !499, size: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3324, file: !482, line: 119, baseType: !467, size: 128, align: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !455, file: !42, line: 922, baseType: !531, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !455, file: !42, line: 923, baseType: !3051, size: 64, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !455, file: !42, line: 929, baseType: !335, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !455, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !455, file: !42, line: 931, baseType: !832, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !455, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !455, file: !42, line: 933, baseType: !2898, size: 32, offset: 544)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !455, file: !42, line: 934, baseType: !828, size: 192, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !455, file: !42, line: 935, baseType: !633, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !455, file: !42, line: 936, baseType: !3339, size: 192, offset: 832)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3339, file: !42, line: 886, baseType: !3150)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3339, file: !42, line: 887, baseType: !1604, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3339, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3339, file: !42, line: 889, baseType: !537, size: 32, offset: 96)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3339, file: !42, line: 889, baseType: !537, size: 32, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3339, file: !42, line: 890, baseType: !113, size: 32, offset: 160)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !455, file: !42, line: 937, baseType: !1713, size: 64, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !455, file: !42, line: 938, baseType: !3349, size: 256, offset: 1088)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3349, file: !42, line: 897, baseType: !426, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3349, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3349, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3349, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3349, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3349, file: !42, line: 904, baseType: !633, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !455, file: !42, line: 940, baseType: !523, size: 64, offset: 1344)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !455, file: !42, line: 945, baseType: !286, size: 64, offset: 1408)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !455, file: !42, line: 949, baseType: !295, size: 128, offset: 1472)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !455, file: !42, line: 950, baseType: !295, size: 128, offset: 1600)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !455, file: !42, line: 952, baseType: !888, size: 64, offset: 1728)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !455, file: !42, line: 953, baseType: !1052, size: 32, offset: 1792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !455, file: !42, line: 954, baseType: !1052, size: 32, offset: 1824)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !445, file: !401, line: 174, baseType: !451, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !445, file: !401, line: 176, baseType: !3366, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!113, !454, !328, !444, !1125}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !433, file: !401, line: 90, baseType: !428, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !433, file: !401, line: 91, baseType: !3371, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !391, file: !320, line: 143, baseType: !3373, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!3376, !328}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3378)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3379)
!3379 = !{!3380, !3381, !3385, !3389, !3395, !3399}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3378, file: !59, line: 40, baseType: !58, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3378, file: !59, line: 41, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!592}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3378, file: !59, line: 42, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!286}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3378, file: !59, line: 43, baseType: !3390, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!2315, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3378, file: !59, line: 44, baseType: !3396, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!2315}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3378, file: !59, line: 45, baseType: !570, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !391, file: !320, line: 144, baseType: !3401, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!2315, !328}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !391, file: !320, line: 145, baseType: !3405, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !328, !3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !319, file: !320, line: 70, baseType: !3411, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !721, line: 123, size: 1024, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3524, !3525, !3526, !3527, !3528}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3412, file: !721, line: 124, baseType: !310, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3412, file: !721, line: 125, baseType: !310, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3412, file: !721, line: 135, baseType: !3411, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3412, file: !721, line: 136, baseType: !323, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3412, file: !721, line: 138, baseType: !910, size: 192, align: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3412, file: !721, line: 140, baseType: !2315, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3412, file: !721, line: 141, baseType: !5, size: 32, offset: 448)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !721, line: 142, baseType: !3422, size: 256, offset: 512)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !721, line: 142, size: 256, elements: !3423)
!3423 = !{!3424, !3464, !3468}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3422, file: !721, line: 143, baseType: !3425, size: 192)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !721, line: 91, size: 192, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3425, file: !721, line: 92, baseType: !426, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3425, file: !721, line: 94, baseType: !906, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3425, file: !721, line: 100, baseType: !3430, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !721, line: 180, size: 704, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3462, !3463}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3431, file: !721, line: 182, baseType: !3411, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3431, file: !721, line: 183, baseType: !5, size: 32, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3431, file: !721, line: 186, baseType: !1633, size: 192, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3431, file: !721, line: 187, baseType: !517, size: 32, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3431, file: !721, line: 188, baseType: !517, size: 32, offset: 352)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3431, file: !721, line: 189, baseType: !3439, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !721, line: 168, size: 320, elements: !3441)
!3441 = !{!3442, !3446, !3450, !3454, !3458}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3440, file: !721, line: 169, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!113, !816, !3430}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3440, file: !721, line: 171, baseType: !3447, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!113, !3411, !323, !417}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3440, file: !721, line: 173, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!113, !3411}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3440, file: !721, line: 174, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!113, !3411, !3411, !323}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3440, file: !721, line: 176, baseType: !3459, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!113, !816, !3411, !3430}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3431, file: !721, line: 192, baseType: !295, size: 128, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3431, file: !721, line: 194, baseType: !1614, size: 128, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3422, file: !721, line: 144, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !721, line: 103, size: 64, elements: !3466)
!3466 = !{!3467}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3465, file: !721, line: 104, baseType: !3411, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3422, file: !721, line: 145, baseType: !3469, size: 256)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !721, line: 107, size: 256, elements: !3470)
!3470 = !{!3471, !3519, !3522, !3523}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3469, file: !721, line: 108, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !721, line: 217, size: 768, elements: !3475)
!3475 = !{!3476, !3496, !3500, !3501, !3502, !3503, !3504, !3508, !3509, !3510, !3511, !3515}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3474, file: !721, line: 222, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!113, !3480}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !721, line: 197, size: 1088, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3481, file: !721, line: 199, baseType: !3411, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3481, file: !721, line: 200, baseType: !454, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3481, file: !721, line: 201, baseType: !816, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3481, file: !721, line: 202, baseType: !286, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3481, file: !721, line: 205, baseType: !828, size: 192, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3481, file: !721, line: 206, baseType: !828, size: 192, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3481, file: !721, line: 207, baseType: !113, size: 32, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3481, file: !721, line: 208, baseType: !295, size: 128, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3481, file: !721, line: 209, baseType: !376, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3481, file: !721, line: 211, baseType: !423, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3481, file: !721, line: 212, baseType: !592, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3481, file: !721, line: 213, baseType: !592, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3481, file: !721, line: 214, baseType: !1153, size: 64, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3474, file: !721, line: 223, baseType: !3497, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !3480}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3474, file: !721, line: 236, baseType: !860, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3474, file: !721, line: 238, baseType: !847, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3474, file: !721, line: 239, baseType: !856, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3474, file: !721, line: 240, baseType: !852, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3474, file: !721, line: 242, baseType: !3505, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!407, !3480, !376, !423, !633}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3474, file: !721, line: 252, baseType: !423, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3474, file: !721, line: 259, baseType: !592, size: 8, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3474, file: !721, line: 260, baseType: !3505, size: 64, offset: 576)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3474, file: !721, line: 263, baseType: !3512, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3092, !3480, !3094}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3474, file: !721, line: 266, baseType: !3516, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!113, !3480, !1125}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3469, file: !721, line: 109, baseType: !3520, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !721, line: 31, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3469, file: !721, line: 110, baseType: !633, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3469, file: !721, line: 111, baseType: !3411, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3412, file: !721, line: 148, baseType: !286, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3412, file: !721, line: 154, baseType: !523, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3412, file: !721, line: 156, baseType: !418, size: 16, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3412, file: !721, line: 157, baseType: !417, size: 16, offset: 912)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3412, file: !721, line: 158, baseType: !3529, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !721, line: 32, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !319, file: !320, line: 71, baseType: !302, size: 32, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !319, file: !320, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !319, file: !320, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !319, file: !320, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !319, file: !320, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !319, file: !320, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !316, file: !71, line: 463, baseType: !315, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !316, file: !71, line: 465, baseType: !3539, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !316, file: !71, line: 467, baseType: !323, size: 64, offset: 640)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !71, line: 468, baseType: !3543, size: 64, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3553, !3558, !3562}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3545, file: !71, line: 88, baseType: !323, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3545, file: !71, line: 89, baseType: !430, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3545, file: !71, line: 90, baseType: !3550, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!113, !315, !371}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3545, file: !71, line: 91, baseType: !3554, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!376, !315, !3557, !3408, !3409}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3545, file: !71, line: 93, baseType: !3559, size: 64, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !315}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3545, file: !71, line: 95, baseType: !3563, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3566)
!3566 = !{!3567, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3565, file: !78, line: 279, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!113, !315}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3565, file: !78, line: 280, baseType: !3559, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3565, file: !78, line: 281, baseType: !3568, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3565, file: !78, line: 282, baseType: !3568, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3565, file: !78, line: 283, baseType: !3568, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3565, file: !78, line: 284, baseType: !3568, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3565, file: !78, line: 285, baseType: !3568, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3565, file: !78, line: 286, baseType: !3568, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3565, file: !78, line: 287, baseType: !3568, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3565, file: !78, line: 288, baseType: !3568, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3565, file: !78, line: 289, baseType: !3568, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3565, file: !78, line: 290, baseType: !3568, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3565, file: !78, line: 291, baseType: !3568, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3565, file: !78, line: 292, baseType: !3568, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3565, file: !78, line: 293, baseType: !3568, size: 64, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3565, file: !78, line: 294, baseType: !3568, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3565, file: !78, line: 295, baseType: !3568, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3565, file: !78, line: 296, baseType: !3568, size: 64, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3565, file: !78, line: 297, baseType: !3568, size: 64, offset: 1152)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3565, file: !78, line: 298, baseType: !3568, size: 64, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3565, file: !78, line: 299, baseType: !3568, size: 64, offset: 1280)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3565, file: !78, line: 300, baseType: !3568, size: 64, offset: 1344)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3565, file: !78, line: 301, baseType: !3568, size: 64, offset: 1408)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !316, file: !71, line: 470, baseType: !3594, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3596, line: 82, size: 1408, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603, !3604, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3679, !3682, !3683}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3595, file: !3596, line: 83, baseType: !323, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3595, file: !3596, line: 84, baseType: !323, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3595, file: !3596, line: 85, baseType: !315, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3595, file: !3596, line: 86, baseType: !430, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3595, file: !3596, line: 87, baseType: !430, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3595, file: !3596, line: 88, baseType: !430, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3595, file: !3596, line: 90, baseType: !3605, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!113, !315, !3608}
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617, !3630, !3643, !3644, !3645, !3646, !3647, !3655, !3656, !3657, !3658, !3659, !3660}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3609, file: !65, line: 96, baseType: !323, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3609, file: !65, line: 97, baseType: !3594, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3609, file: !65, line: 99, baseType: !735, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3609, file: !65, line: 100, baseType: !323, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3609, file: !65, line: 102, baseType: !592, size: 8, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3609, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3609, file: !65, line: 105, baseType: !3618, size: 64, offset: 320)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3621, line: 262, size: 1600, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3622 = !{!3623, !3624, !3625, !3629}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3620, file: !3621, line: 263, baseType: !2888, size: 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3620, file: !3621, line: 264, baseType: !2888, size: 256, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3620, file: !3621, line: 265, baseType: !3626, size: 1024, offset: 512)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 1024, elements: !3627)
!3627 = !{!3628}
!3628 = !DISubrange(count: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3620, file: !3621, line: 266, baseType: !2315, size: 64, offset: 1536)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3609, file: !65, line: 106, baseType: !3631, size: 64, offset: 384)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3633)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3621, line: 210, size: 256, elements: !3634)
!3634 = !{!3635, !3639, !3641, !3642}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3633, file: !3621, line: 211, baseType: !3636, size: 72)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 72, elements: !3637)
!3637 = !{!3638}
!3638 = !DISubrange(count: 9)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3633, file: !3621, line: 212, baseType: !3640, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3621, line: 14, baseType: !426)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3633, file: !3621, line: 213, baseType: !519, size: 32, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3633, file: !3621, line: 214, baseType: !519, size: 32, offset: 224)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3609, file: !65, line: 108, baseType: !3568, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3609, file: !65, line: 109, baseType: !3559, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3609, file: !65, line: 110, baseType: !3568, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3609, file: !65, line: 111, baseType: !3559, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3609, file: !65, line: 112, baseType: !3648, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!113, !315, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3653)
!3653 = !{!3654}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3652, file: !78, line: 51, baseType: !113, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3609, file: !65, line: 113, baseType: !3568, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3609, file: !65, line: 114, baseType: !430, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3609, file: !65, line: 115, baseType: !430, size: 64, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3609, file: !65, line: 117, baseType: !3563, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3609, file: !65, line: 118, baseType: !3559, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3609, file: !65, line: 120, baseType: !3661, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3595, file: !3596, line: 91, baseType: !3550, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3595, file: !3596, line: 92, baseType: !3568, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3595, file: !3596, line: 93, baseType: !3559, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3595, file: !3596, line: 94, baseType: !3568, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3595, file: !3596, line: 95, baseType: !3559, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3595, file: !3596, line: 97, baseType: !3568, size: 64, offset: 768)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3595, file: !3596, line: 98, baseType: !3568, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3595, file: !3596, line: 100, baseType: !3648, size: 64, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3595, file: !3596, line: 101, baseType: !3568, size: 64, offset: 960)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3595, file: !3596, line: 103, baseType: !3568, size: 64, offset: 1024)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3595, file: !3596, line: 105, baseType: !3568, size: 64, offset: 1088)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3595, file: !3596, line: 107, baseType: !3563, size: 64, offset: 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3595, file: !3596, line: 109, baseType: !3676, size: 64, offset: 1216)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3596, line: 109, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3595, file: !3596, line: 111, baseType: !3680, size: 64, offset: 1280)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3596, line: 111, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3595, file: !3596, line: 112, baseType: !750, offset: 1344)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3595, file: !3596, line: 114, baseType: !592, size: 8, offset: 1344)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !316, file: !71, line: 471, baseType: !3608, size: 64, offset: 832)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !316, file: !71, line: 473, baseType: !286, size: 64, offset: 896)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !316, file: !71, line: 475, baseType: !286, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !316, file: !71, line: 480, baseType: !828, size: 192, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !316, file: !71, line: 484, baseType: !3689, size: 576, offset: 1216)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3689, file: !71, line: 362, baseType: !295, size: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3689, file: !71, line: 363, baseType: !295, size: 128, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3689, file: !71, line: 364, baseType: !295, size: 128, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3689, file: !71, line: 365, baseType: !295, size: 128, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3689, file: !71, line: 366, baseType: !592, size: 8, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3689, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !316, file: !71, line: 485, baseType: !3698, size: 2304, offset: 1792)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3795, !3799}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3698, file: !78, line: 566, baseType: !3651, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3698, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3698, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3698, file: !78, line: 569, baseType: !592, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3698, file: !78, line: 570, baseType: !592, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3698, file: !78, line: 571, baseType: !592, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3698, file: !78, line: 572, baseType: !592, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3698, file: !78, line: 573, baseType: !592, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3698, file: !78, line: 574, baseType: !592, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3698, file: !78, line: 575, baseType: !592, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3698, file: !78, line: 576, baseType: !592, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3698, file: !78, line: 577, baseType: !517, size: 32, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3698, file: !78, line: 578, baseType: !335, offset: 96)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3698, file: !78, line: 580, baseType: !295, size: 128, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3698, file: !78, line: 581, baseType: !1668, size: 192, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3698, file: !78, line: 582, baseType: !3716, size: 64, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3718, line: 43, size: 1472, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3727, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3717, file: !3718, line: 44, baseType: !323, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3717, file: !3718, line: 45, baseType: !113, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3717, file: !3718, line: 46, baseType: !295, size: 128, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3717, file: !3718, line: 47, baseType: !335, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3717, file: !3718, line: 48, baseType: !3725, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3717, file: !3718, line: 49, baseType: !3728, size: 320, offset: 320)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3729, line: 11, size: 320, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3730 = !{!3731, !3732, !3733, !3738}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3728, file: !3729, line: 16, baseType: !744, size: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3728, file: !3729, line: 17, baseType: !426, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3728, file: !3729, line: 18, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3728, file: !3729, line: 19, baseType: !517, size: 32, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3717, file: !3718, line: 50, baseType: !426, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3717, file: !3718, line: 51, baseType: !1433, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3717, file: !3718, line: 52, baseType: !1433, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3717, file: !3718, line: 53, baseType: !1433, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3717, file: !3718, line: 54, baseType: !1433, size: 64, offset: 896)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3717, file: !3718, line: 55, baseType: !1433, size: 64, offset: 960)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3717, file: !3718, line: 56, baseType: !426, size: 64, offset: 1024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3717, file: !3718, line: 57, baseType: !426, size: 64, offset: 1088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3717, file: !3718, line: 58, baseType: !426, size: 64, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3717, file: !3718, line: 59, baseType: !426, size: 64, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3717, file: !3718, line: 60, baseType: !426, size: 64, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3717, file: !3718, line: 61, baseType: !315, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3717, file: !3718, line: 62, baseType: !592, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3717, file: !3718, line: 63, baseType: !592, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3698, file: !78, line: 583, baseType: !592, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3698, file: !78, line: 584, baseType: !592, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3698, file: !78, line: 585, baseType: !592, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3698, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3698, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3698, file: !78, line: 592, baseType: !1425, size: 512, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3698, file: !78, line: 593, baseType: !523, size: 64, offset: 1088)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3698, file: !78, line: 594, baseType: !2145, size: 256, offset: 1152)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3698, file: !78, line: 595, baseType: !1614, size: 128, offset: 1408)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3698, file: !78, line: 596, baseType: !3725, size: 64, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3698, file: !78, line: 597, baseType: !310, size: 32, offset: 1600)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3698, file: !78, line: 598, baseType: !310, size: 32, offset: 1632)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3698, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3698, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3698, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3698, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3698, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3698, file: !78, line: 604, baseType: !592, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3698, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3698, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3698, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3698, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3698, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3698, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3698, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3698, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3698, file: !78, line: 613, baseType: !113, size: 32, offset: 1792)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3698, file: !78, line: 614, baseType: !113, size: 32, offset: 1824)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3698, file: !78, line: 615, baseType: !523, size: 64, offset: 1856)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3698, file: !78, line: 616, baseType: !523, size: 64, offset: 1920)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3698, file: !78, line: 617, baseType: !523, size: 64, offset: 1984)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3698, file: !78, line: 618, baseType: !523, size: 64, offset: 2048)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3698, file: !78, line: 620, baseType: !3786, size: 64, offset: 2112)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3787, file: !78, line: 537, baseType: !335)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3787, file: !78, line: 538, baseType: !5, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3787, file: !78, line: 540, baseType: !295, size: 128, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3787, file: !78, line: 543, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3698, file: !78, line: 621, baseType: !3796, size: 64, offset: 2176)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !315, !1577}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3698, file: !78, line: 622, baseType: !3800, size: 64, offset: 2240)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !316, file: !71, line: 486, baseType: !3803, size: 64, offset: 4096)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3812, !3813, !3814}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3804, file: !78, line: 643, baseType: !3565, size: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3804, file: !78, line: 644, baseType: !3568, size: 64, offset: 1472)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3804, file: !78, line: 645, baseType: !3809, size: 64, offset: 1536)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !315, !592}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3804, file: !78, line: 646, baseType: !3568, size: 64, offset: 1600)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3804, file: !78, line: 647, baseType: !3559, size: 64, offset: 1664)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3804, file: !78, line: 648, baseType: !3559, size: 64, offset: 1728)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !316, file: !71, line: 493, baseType: !3816, size: 64, offset: 4160)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !92, line: 162, size: 1088, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3994, !3995, !3996, !3997, !3998, !3999, !4002, !4003, !4004, !4005, !4006, !4007, !4008}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3817, file: !92, line: 163, baseType: !295, size: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3817, file: !92, line: 164, baseType: !323, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3817, file: !92, line: 165, baseType: !3822, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !92, line: 105, size: 640, elements: !3825)
!3825 = !{!3826, !3944, !3955, !3960, !3964, !3971, !3975, !3979, !3986, !3990}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3824, file: !92, line: 106, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!113, !3816, !3830, !91}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3832, line: 51, size: 1344, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3833 = !{!3834, !3835, !3837, !3838, !3928, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3831, file: !3832, line: 52, baseType: !323, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3831, file: !3832, line: 53, baseType: !3836, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3832, line: 28, baseType: !517)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3831, file: !3832, line: 54, baseType: !323, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3831, file: !3832, line: 55, baseType: !3839, size: 192, offset: 192)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3840, line: 17, size: 192, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3841 = !{!3842, !3844, !3927}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3839, file: !3840, line: 18, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3839, file: !3840, line: 19, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3840, line: 110, size: 1152, elements: !3848)
!3848 = !{!3849, !3853, !3857, !3863, !3869, !3873, !3877, !3882, !3886, !3887, !3891, !3895, !3899, !3910, !3911, !3912, !3913, !3923}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3847, file: !3840, line: 111, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!3843, !3843}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3847, file: !3840, line: 112, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3843}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3847, file: !3840, line: 113, baseType: !3858, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!592, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3847, file: !3840, line: 114, baseType: !3864, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!2315, !3861, !3867}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3847, file: !3840, line: 116, baseType: !3870, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!592, !3861, !323}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3847, file: !3840, line: 118, baseType: !3874, size: 64, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!113, !3861, !323, !5, !286, !423}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3847, file: !3840, line: 123, baseType: !3878, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!113, !3861, !323, !3881, !423}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3847, file: !3840, line: 126, baseType: !3883, size: 64, offset: 448)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!323, !3861}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3847, file: !3840, line: 127, baseType: !3883, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3847, file: !3840, line: 128, baseType: !3888, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!3843, !3861}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3847, file: !3840, line: 130, baseType: !3892, size: 64, offset: 640)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3843, !3861, !3843}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3847, file: !3840, line: 133, baseType: !3896, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!3843, !3861, !323}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3847, file: !3840, line: 135, baseType: !3900, size: 64, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!113, !3861, !323, !323, !5, !5, !3903}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3840, line: 43, size: 640, elements: !3905)
!3905 = !{!3906, !3907, !3908}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3904, file: !3840, line: 44, baseType: !3843, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3904, file: !3840, line: 45, baseType: !5, size: 32, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3904, file: !3840, line: 46, baseType: !3909, size: 512, offset: 128)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 512, elements: !1463)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3847, file: !3840, line: 140, baseType: !3892, size: 64, offset: 832)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3847, file: !3840, line: 143, baseType: !3888, size: 64, offset: 896)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3847, file: !3840, line: 145, baseType: !3850, size: 64, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3847, file: !3840, line: 146, baseType: !3914, size: 64, offset: 1024)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!113, !3861, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3840, line: 29, size: 128, elements: !3919)
!3919 = !{!3920, !3921, !3922}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3918, file: !3840, line: 30, baseType: !5, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3918, file: !3840, line: 31, baseType: !5, size: 32, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3918, file: !3840, line: 32, baseType: !3861, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3847, file: !3840, line: 148, baseType: !3924, size: 64, offset: 1088)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!113, !3861, !315}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3839, file: !3840, line: 20, baseType: !315, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3831, file: !3832, line: 57, baseType: !3929, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3832, line: 31, size: 704, elements: !3931)
!3931 = !{!3932, !3933, !3934, !3935, !3936}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3930, file: !3832, line: 32, baseType: !376, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3930, file: !3832, line: 33, baseType: !113, size: 32, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3930, file: !3832, line: 34, baseType: !286, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3930, file: !3832, line: 35, baseType: !3929, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3930, file: !3832, line: 43, baseType: !445, size: 448, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3831, file: !3832, line: 58, baseType: !3929, size: 64, offset: 448)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3831, file: !3832, line: 59, baseType: !3830, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3831, file: !3832, line: 60, baseType: !3830, size: 64, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3831, file: !3832, line: 61, baseType: !3830, size: 64, offset: 640)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3831, file: !3832, line: 63, baseType: !319, size: 512, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3831, file: !3832, line: 65, baseType: !426, size: 64, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3831, file: !3832, line: 66, baseType: !286, size: 64, offset: 1280)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3824, file: !92, line: 108, baseType: !3945, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!113, !3816, !3948, !91}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !92, line: 63, size: 640, elements: !3950)
!3950 = !{!3951, !3952, !3953}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3949, file: !92, line: 64, baseType: !3843, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3949, file: !92, line: 65, baseType: !113, size: 32, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3949, file: !92, line: 66, baseType: !3954, size: 512, offset: 96)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 512, elements: !1899)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3824, file: !92, line: 110, baseType: !3956, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!113, !3816, !5, !3959}
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !285, line: 164, baseType: !426)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3824, file: !92, line: 111, baseType: !3961, size: 64, offset: 192)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !3816, !5}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3824, file: !92, line: 112, baseType: !3965, size: 64, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!113, !3816, !3830, !3968, !5, !3970, !2871}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3824, file: !92, line: 117, baseType: !3972, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!113, !3816, !5, !5, !286}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3824, file: !92, line: 119, baseType: !3976, size: 64, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3816, !5, !5}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3824, file: !92, line: 121, baseType: !3980, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!113, !3816, !3983, !592}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3985, line: 11, flags: DIFlagFwdDecl)
!3985 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3824, file: !92, line: 122, baseType: !3987, size: 64, offset: 512)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !3816, !3983}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3824, file: !92, line: 123, baseType: !3991, size: 64, offset: 576)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!113, !3816, !3948, !3970, !2871}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3817, file: !92, line: 166, baseType: !286, size: 64, offset: 256)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3817, file: !92, line: 167, baseType: !5, size: 32, offset: 320)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3817, file: !92, line: 168, baseType: !5, size: 32, offset: 352)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3817, file: !92, line: 171, baseType: !3843, size: 64, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3817, file: !92, line: 172, baseType: !91, size: 32, offset: 448)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3817, file: !92, line: 173, baseType: !4000, size: 64, offset: 512)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !92, line: 134, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3817, file: !92, line: 175, baseType: !3816, size: 64, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3817, file: !92, line: 182, baseType: !3959, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3817, file: !92, line: 183, baseType: !5, size: 32, offset: 704)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3817, file: !92, line: 184, baseType: !5, size: 32, offset: 736)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3817, file: !92, line: 185, baseType: !893, size: 128, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3817, file: !92, line: 186, baseType: !828, size: 192, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3817, file: !92, line: 187, baseType: !4009, offset: 1088)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !2519)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !316, file: !71, line: 499, baseType: !295, size: 128, offset: 4224)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !316, file: !71, line: 502, baseType: !4012, size: 64, offset: 4352)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4014)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !316, file: !71, line: 504, baseType: !4016, size: 64, offset: 4416)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !316, file: !71, line: 505, baseType: !523, size: 64, offset: 4480)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !316, file: !71, line: 510, baseType: !523, size: 64, offset: 4544)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !316, file: !71, line: 511, baseType: !4020, size: 64, offset: 4608)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !316, file: !71, line: 513, baseType: !4024, size: 64, offset: 4672)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4025, file: !71, line: 293, baseType: !5, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4025, file: !71, line: 294, baseType: !426, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !316, file: !71, line: 515, baseType: !295, size: 128, offset: 4736)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !316, file: !71, line: 526, baseType: !4031, offset: 4864)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4032, line: 5, elements: !349)
!4032 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !316, file: !71, line: 528, baseType: !3830, size: 64, offset: 4864)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !316, file: !71, line: 529, baseType: !3843, size: 64, offset: 4928)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !316, file: !71, line: 534, baseType: !615, size: 32, offset: 4992)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !316, file: !71, line: 535, baseType: !517, size: 32, offset: 5024)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !316, file: !71, line: 537, baseType: !335, offset: 5056)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !316, file: !71, line: 538, baseType: !295, size: 128, offset: 5056)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !316, file: !71, line: 540, baseType: !4040, size: 64, offset: 5184)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4042, line: 54, size: 960, elements: !4043)
!4042 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4054, !4058, !4059, !4060, !4061, !4065, !4069, !4070}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4041, file: !4042, line: 55, baseType: !323, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4041, file: !4042, line: 56, baseType: !735, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4041, file: !4042, line: 58, baseType: !430, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4041, file: !4042, line: 59, baseType: !430, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4041, file: !4042, line: 60, baseType: !328, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4041, file: !4042, line: 62, baseType: !3550, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4041, file: !4042, line: 63, baseType: !4051, size: 64, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!376, !315, !3557}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4041, file: !4042, line: 65, baseType: !4055, size: 64, offset: 448)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !4040}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4041, file: !4042, line: 66, baseType: !3559, size: 64, offset: 512)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4041, file: !4042, line: 68, baseType: !3568, size: 64, offset: 576)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4041, file: !4042, line: 70, baseType: !3376, size: 64, offset: 640)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4041, file: !4042, line: 71, baseType: !4062, size: 64, offset: 704)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!2315, !315}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4041, file: !4042, line: 73, baseType: !4066, size: 64, offset: 768)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !315, !3408, !3409}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4041, file: !4042, line: 75, baseType: !3563, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4041, file: !4042, line: 77, baseType: !3680, size: 64, offset: 896)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !316, file: !71, line: 541, baseType: !430, size: 64, offset: 5248)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !316, file: !71, line: 543, baseType: !3559, size: 64, offset: 5312)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !316, file: !71, line: 544, baseType: !4074, size: 64, offset: 5376)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !316, file: !71, line: 545, baseType: !4077, size: 64, offset: 5440)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !316, file: !71, line: 547, baseType: !592, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !316, file: !71, line: 548, baseType: !592, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !316, file: !71, line: 549, baseType: !592, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !316, file: !71, line: 550, baseType: !592, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !292, file: !235, line: 83, baseType: !4084, size: 192, offset: 256)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !235, line: 76, size: 192, elements: !4085)
!4085 = !{!4086, !4087, !4088}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4084, file: !235, line: 78, baseType: !295, size: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4084, file: !235, line: 80, baseType: !286, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4084, file: !235, line: 82, baseType: !335, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !292, file: !235, line: 86, baseType: !4090, size: 64, offset: 448)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !260, line: 162, size: 3328, elements: !4092)
!4092 = !{!4093, !4097, !4154, !4158, !4162, !4163, !4164, !4169, !4170, !4174, !4175, !4179, !4180, !4184, !4191, !4195, !4199, !4203, !4207, !4212, !4218, !4222, !4226, !4227, !4246, !4252, !4256, !4260, !4264, !4278, !4284, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4300, !4301, !4302, !4303, !4304, !4305, !4309, !4310, !4314, !4318, !4322, !4326}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4091, file: !260, line: 179, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!113, !291, !426}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4091, file: !260, line: 199, baseType: !4098, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!113, !291, !4101}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4103, line: 159, size: 2368, elements: !4104)
!4103 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/lizy2001/genbc/linux")
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4117, !4118, !4121, !4122, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4102, file: !4103, line: 169, baseType: !592, size: 8)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4102, file: !4103, line: 176, baseType: !592, size: 8, offset: 8)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4102, file: !4103, line: 184, baseType: !592, size: 8, offset: 16)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4102, file: !4103, line: 187, baseType: !592, size: 8, offset: 24)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4102, file: !4103, line: 195, baseType: !592, size: 8, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4102, file: !4103, line: 202, baseType: !592, size: 8, offset: 40)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4102, file: !4103, line: 213, baseType: !592, size: 8, offset: 48)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4102, file: !4103, line: 224, baseType: !592, size: 8, offset: 56)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4102, file: !4103, line: 236, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4116, line: 11, flags: DIFlagFwdDecl)
!4116 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4102, file: !4103, line: 239, baseType: !1604, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4102, file: !4103, line: 242, baseType: !4119, size: 32, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4120, line: 86, baseType: !5)
!4120 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4102, file: !4103, line: 250, baseType: !295, size: 128, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4102, file: !4103, line: 253, baseType: !4123, size: 64, offset: 384)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4103, line: 70, size: 576, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4124, file: !4103, line: 72, baseType: !113, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4124, file: !4103, line: 73, baseType: !113, size: 32, offset: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4124, file: !4103, line: 74, baseType: !315, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4124, file: !4103, line: 75, baseType: !291, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4124, file: !4103, line: 77, baseType: !484, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4124, file: !4103, line: 79, baseType: !295, size: 128, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4124, file: !4103, line: 80, baseType: !828, size: 192, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4102, file: !4103, line: 261, baseType: !1633, size: 192, offset: 448)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4102, file: !4103, line: 264, baseType: !335, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4102, file: !4103, line: 267, baseType: !1633, size: 192, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4102, file: !4103, line: 269, baseType: !335, offset: 832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4102, file: !4103, line: 272, baseType: !454, size: 64, offset: 832)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4102, file: !4103, line: 280, baseType: !286, size: 64, offset: 896)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4102, file: !4103, line: 291, baseType: !295, size: 128, offset: 960)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4102, file: !4103, line: 294, baseType: !828, size: 192, offset: 1088)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4102, file: !4103, line: 304, baseType: !295, size: 128, offset: 1280)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4102, file: !4103, line: 307, baseType: !1614, size: 128, offset: 1408)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4102, file: !4103, line: 318, baseType: !295, size: 128, offset: 1536)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4102, file: !4103, line: 328, baseType: !295, size: 128, offset: 1664)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4102, file: !4103, line: 337, baseType: !113, size: 32, offset: 1792)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4102, file: !4103, line: 340, baseType: !828, size: 192, offset: 1856)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4102, file: !4103, line: 347, baseType: !4148, size: 320, offset: 2048)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4149, line: 45, size: 320, elements: !4150)
!4149 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/lizy2001/genbc/linux")
!4150 = !{!4151, !4152, !4153}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4148, file: !4149, line: 47, baseType: !828, size: 192)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4148, file: !4149, line: 48, baseType: !906, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4148, file: !4149, line: 49, baseType: !906, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4091, file: !260, line: 213, baseType: !4155, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !291, !4101}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4091, file: !260, line: 241, baseType: !4159, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !291}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4091, file: !260, line: 258, baseType: !4159, size: 64, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4091, file: !260, line: 270, baseType: !4159, size: 64, offset: 320)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !4091, file: !260, line: 278, baseType: !4165, size: 64, offset: 384)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!4168, !113, !286}
!4168 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !106, line: 17, baseType: !105)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "irq_preinstall", scope: !4091, file: !260, line: 288, baseType: !4159, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "irq_postinstall", scope: !4091, file: !260, line: 297, baseType: !4171, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!113, !291}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "irq_uninstall", scope: !4091, file: !260, line: 306, baseType: !4159, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4091, file: !260, line: 313, baseType: !4176, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !291, !4101, !592}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4091, file: !260, line: 320, baseType: !4155, size: 64, offset: 704)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4091, file: !260, line: 327, baseType: !4181, size: 64, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !4123}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "gem_free_object_unlocked", scope: !4091, file: !260, line: 335, baseType: !4185, size: 64, offset: 832)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4190, line: 37, flags: DIFlagFwdDecl)
!4190 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "gem_open_object", scope: !4091, file: !260, line: 344, baseType: !4192, size: 64, offset: 896)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!113, !4188, !4101}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "gem_close_object", scope: !4091, file: !260, line: 353, baseType: !4196, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4188, !4101}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4091, file: !260, line: 361, baseType: !4200, size: 64, offset: 1024)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!4188, !291, !423}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4091, file: !260, line: 372, baseType: !4204, size: 64, offset: 1088)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!113, !291, !4101, !661, !661, !810}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4091, file: !260, line: 383, baseType: !4208, size: 64, offset: 1152)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!113, !291, !4101, !113, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_export", scope: !4091, file: !260, line: 391, baseType: !4213, size: 64, offset: 1216)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!4216, !4188, !113}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !260, line: 391, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4091, file: !260, line: 400, baseType: !4219, size: 64, offset: 1280)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!4188, !291, !4216}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_pin", scope: !4091, file: !260, line: 408, baseType: !4223, size: 64, offset: 1344)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!113, !4188}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_unpin", scope: !4091, file: !260, line: 415, baseType: !4185, size: 64, offset: 1408)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_get_sg_table", scope: !4091, file: !260, line: 423, baseType: !4228, size: 64, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!4231, !4188}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4233, line: 42, size: 128, elements: !4234)
!4233 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4234 = !{!4235, !4244, !4245}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4232, file: !4233, line: 43, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4233, line: 11, size: 256, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4237, file: !4233, line: 12, baseType: !426, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4237, file: !4233, line: 13, baseType: !5, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4237, file: !4233, line: 14, baseType: !5, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4237, file: !4233, line: 15, baseType: !1063, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4237, file: !4233, line: 17, baseType: !5, size: 32, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4232, file: !4233, line: 44, baseType: !5, size: 32, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4232, file: !4233, line: 45, baseType: !5, size: 32, offset: 96)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4091, file: !260, line: 431, baseType: !4247, size: 64, offset: 1536)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!4188, !291, !4250, !4231}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !260, line: 39, flags: DIFlagFwdDecl)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vmap", scope: !4091, file: !260, line: 441, baseType: !4253, size: 64, offset: 1600)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!286, !4188}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vunmap", scope: !4091, file: !260, line: 449, baseType: !4257, size: 64, offset: 1664)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4188, !286}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_mmap", scope: !4091, file: !260, line: 460, baseType: !4261, size: 64, offset: 1728)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!113, !4188, !1125}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4091, file: !260, line: 484, baseType: !4265, size: 64, offset: 1792)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!113, !4101, !291, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !188, line: 805, size: 256, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4269, file: !188, line: 806, baseType: !519, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4269, file: !188, line: 807, baseType: !519, size: 32, offset: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4269, file: !188, line: 808, baseType: !519, size: 32, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4269, file: !188, line: 809, baseType: !519, size: 32, offset: 96)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4269, file: !188, line: 811, baseType: !519, size: 32, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4269, file: !188, line: 812, baseType: !519, size: 32, offset: 160)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4269, file: !188, line: 813, baseType: !524, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4091, file: !260, line: 502, baseType: !4279, size: 64, offset: 1856)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!113, !4101, !291, !661, !4282}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !285, line: 107, baseType: !523)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_destroy", scope: !4091, file: !260, line: 521, baseType: !4285, size: 64, offset: 1920)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!113, !4101, !291, !661}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "gem_vm_ops", scope: !4091, file: !260, line: 531, baseType: !1153, size: 64, offset: 1984)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4091, file: !260, line: 534, baseType: !113, size: 32, offset: 2048)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4091, file: !260, line: 536, baseType: !113, size: 32, offset: 2080)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4091, file: !260, line: 538, baseType: !113, size: 32, offset: 2112)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4091, file: !260, line: 540, baseType: !376, size: 64, offset: 2176)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4091, file: !260, line: 542, baseType: !376, size: 64, offset: 2240)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4091, file: !260, line: 544, baseType: !376, size: 64, offset: 2304)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4091, file: !260, line: 552, baseType: !517, size: 32, offset: 2368)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4091, file: !260, line: 562, baseType: !4297, size: 64, offset: 2432)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4299)
!4299 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !260, line: 562, flags: DIFlagFwdDecl)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4091, file: !260, line: 564, baseType: !113, size: 32, offset: 2496)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4091, file: !260, line: 573, baseType: !3051, size: 64, offset: 2560)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !4091, file: !260, line: 579, baseType: !295, size: 128, offset: 2624)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "firstopen", scope: !4091, file: !260, line: 580, baseType: !4171, size: 64, offset: 2752)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "preclose", scope: !4091, file: !260, line: 581, baseType: !4155, size: 64, offset: 2816)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ioctl", scope: !4091, file: !260, line: 582, baseType: !4306, size: 64, offset: 2880)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!113, !291, !286, !4101}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_quiescent", scope: !4091, file: !260, line: 583, baseType: !4171, size: 64, offset: 2944)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "context_dtor", scope: !4091, file: !260, line: 584, baseType: !4311, size: 64, offset: 3008)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!113, !291, !113}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4091, file: !260, line: 585, baseType: !4315, size: 64, offset: 3072)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!517, !291, !5}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4091, file: !260, line: 586, baseType: !4319, size: 64, offset: 3136)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!113, !291, !5}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4091, file: !260, line: 587, baseType: !4323, size: 64, offset: 3200)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !291, !5}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv_size", scope: !4091, file: !260, line: 588, baseType: !113, size: 32, offset: 3264)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !292, file: !235, line: 98, baseType: !286, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !292, file: !235, line: 101, baseType: !4123, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !292, file: !235, line: 104, baseType: !4123, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !292, file: !235, line: 111, baseType: !592, size: 8, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !292, file: !235, line: 119, baseType: !4114, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !292, file: !235, line: 129, baseType: !517, size: 32, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !292, file: !235, line: 137, baseType: !592, size: 8, offset: 864)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !292, file: !235, line: 140, baseType: !531, size: 64, offset: 896)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !292, file: !235, line: 143, baseType: !376, size: 64, offset: 960)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !292, file: !235, line: 153, baseType: !828, size: 192, offset: 1024)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !292, file: !235, line: 160, baseType: !828, size: 192, offset: 1216)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !292, file: !235, line: 168, baseType: !310, size: 32, offset: 1408)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !292, file: !235, line: 171, baseType: !828, size: 192, offset: 1472)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !292, file: !235, line: 177, baseType: !295, size: 128, offset: 1664)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !292, file: !235, line: 185, baseType: !295, size: 128, offset: 1792)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !292, file: !235, line: 192, baseType: !828, size: 192, offset: 1920)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !292, file: !235, line: 199, baseType: !295, size: 128, offset: 2112)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !292, file: !235, line: 208, baseType: !592, size: 8, offset: 2240)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !292, file: !235, line: 213, baseType: !113, size: 32, offset: 2272)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !292, file: !235, line: 228, baseType: !592, size: 8, offset: 2304)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !292, file: !235, line: 238, baseType: !4348, size: 64, offset: 2368)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !235, line: 16, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !292, file: !235, line: 245, baseType: !335, offset: 2432)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !292, file: !235, line: 250, baseType: !335, offset: 2432)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !292, file: !235, line: 273, baseType: !517, size: 32, offset: 2432)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !292, file: !235, line: 276, baseType: !295, size: 128, offset: 2496)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !292, file: !235, line: 284, baseType: !335, offset: 2624)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !292, file: !235, line: 287, baseType: !4356, size: 64, offset: 2624)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !235, line: 287, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !292, file: !235, line: 290, baseType: !4359, size: 64, offset: 2688)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4361, line: 79, flags: DIFlagFwdDecl)
!4361 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/lizy2001/genbc/linux")
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !292, file: !235, line: 297, baseType: !5, size: 32, offset: 2752)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !292, file: !235, line: 300, baseType: !4364, size: 8384, offset: 2816)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4365, line: 358, size: 8384, elements: !4366)
!4365 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4366 = !{!4367, !4368, !4387, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4409, !4410, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !5085, !5087, !5088, !5089, !5090, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4364, file: !4365, line: 369, baseType: !828, size: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4364, file: !4365, line: 379, baseType: !4369, size: 384, offset: 192)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4370, line: 76, size: 384, elements: !4371)
!4370 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4371 = !{!4372, !4386}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4369, file: !4370, line: 80, baseType: !4373, size: 256)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !829, line: 71, size: 256, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4373, file: !829, line: 72, baseType: !828, size: 192)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4373, file: !829, line: 73, baseType: !4377, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4379, line: 31, size: 192, elements: !4380)
!4379 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4380 = !{!4381, !4382, !4383, !4384, !4385}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4378, file: !4379, line: 32, baseType: !1354, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4378, file: !4379, line: 33, baseType: !426, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4378, file: !4379, line: 34, baseType: !5, size: 32, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4378, file: !4379, line: 35, baseType: !418, size: 16, offset: 160)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4378, file: !4379, line: 36, baseType: !418, size: 16, offset: 176)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4369, file: !4370, line: 86, baseType: !295, size: 128, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4364, file: !4365, line: 389, baseType: !4388, size: 64, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4370, line: 43, size: 448, elements: !4390)
!4390 = !{!4391, !4392, !4394, !4395, !4396}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4389, file: !4370, line: 45, baseType: !4378, size: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4389, file: !4370, line: 52, baseType: !4393, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4389, file: !4370, line: 57, baseType: !295, size: 128, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4389, file: !4370, line: 62, baseType: !592, size: 8, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4389, file: !4370, line: 65, baseType: !592, size: 8, offset: 392)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4364, file: !4365, line: 397, baseType: !828, size: 192, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4364, file: !4365, line: 405, baseType: !1633, size: 192, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4364, file: !4365, line: 413, baseType: !1633, size: 192, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4364, file: !4365, line: 416, baseType: !828, size: 192, offset: 1216)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4364, file: !4365, line: 418, baseType: !113, size: 32, offset: 1408)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4364, file: !4365, line: 420, baseType: !295, size: 128, offset: 1472)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4364, file: !4365, line: 426, baseType: !335, offset: 1600)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4364, file: !4365, line: 431, baseType: !113, size: 32, offset: 1600)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4364, file: !4365, line: 435, baseType: !4406, size: 128, offset: 1664)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1634, line: 244, size: 128, elements: !4407)
!4407 = !{!4408}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4406, file: !1634, line: 245, baseType: !893, size: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4364, file: !4365, line: 443, baseType: !295, size: 128, offset: 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4364, file: !4365, line: 453, baseType: !4411, size: 64, offset: 1920)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !462, line: 54, size: 64, elements: !4412)
!4412 = !{!4413}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4411, file: !462, line: 55, baseType: !465, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4364, file: !4365, line: 457, baseType: !2145, size: 256, offset: 1984)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4364, file: !4365, line: 465, baseType: !113, size: 32, offset: 2240)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4364, file: !4365, line: 473, baseType: !295, size: 128, offset: 2304)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4364, file: !4365, line: 482, baseType: !113, size: 32, offset: 2432)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4364, file: !4365, line: 489, baseType: !295, size: 128, offset: 2496)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4364, file: !4365, line: 497, baseType: !113, size: 32, offset: 2624)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4364, file: !4365, line: 504, baseType: !295, size: 128, offset: 2688)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4364, file: !4365, line: 513, baseType: !295, size: 128, offset: 2816)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4364, file: !4365, line: 522, baseType: !295, size: 128, offset: 2944)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4364, file: !4365, line: 524, baseType: !113, size: 32, offset: 3072)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4364, file: !4365, line: 524, baseType: !113, size: 32, offset: 3104)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4364, file: !4365, line: 525, baseType: !113, size: 32, offset: 3136)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4364, file: !4365, line: 525, baseType: !113, size: 32, offset: 3168)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4364, file: !4365, line: 526, baseType: !4428, size: 64, offset: 3200)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4430)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4365, line: 47, size: 576, elements: !4431)
!4431 = !{!4432, !4532, !4536, !4537, !4579, !5072, !5076, !5080, !5084}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4430, file: !4365, line: 77, baseType: !4433, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!4436, !291, !4101, !4517}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4190, line: 117, size: 1600, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4476, !4477, !4481, !4505, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4437, file: !4190, line: 121, baseType: !291, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4437, file: !4190, line: 126, baseType: !295, size: 128, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4437, file: !4190, line: 131, baseType: !4442, size: 256, offset: 192)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4443, line: 55, size: 256, elements: !4444)
!4443 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!4444 = !{!4445, !4446, !4447, !4470, !4471}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4442, file: !4443, line: 56, baseType: !661, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4442, file: !4443, line: 57, baseType: !661, size: 32, offset: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4442, file: !4443, line: 58, baseType: !4448, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4443, line: 67, size: 3136, elements: !4450)
!4450 = !{!4451, !4452, !4468}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4449, file: !4443, line: 73, baseType: !113, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4449, file: !4443, line: 82, baseType: !4453, size: 1536, offset: 64)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4454, size: 1536, elements: !4466)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4456, line: 73, size: 960, elements: !4457)
!4456 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/lizy2001/genbc/linux")
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4455, file: !4456, line: 77, baseType: !295, size: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4455, file: !4456, line: 82, baseType: !4442, size: 256, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4455, file: !4456, line: 159, baseType: !661, size: 32, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4455, file: !4456, line: 164, baseType: !2888, size: 256, offset: 416)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4455, file: !4456, line: 169, baseType: !661, size: 32, offset: 672)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4455, file: !4456, line: 177, baseType: !4282, size: 64, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4455, file: !4456, line: 182, baseType: !291, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4455, file: !4456, line: 190, baseType: !295, size: 128, offset: 832)
!4466 = !{!4467}
!4467 = !DISubrange(count: 24)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4449, file: !4443, line: 102, baseType: !4469, size: 1536, offset: 1600)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4283, size: 1536, elements: !4466)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4442, file: !4443, line: 59, baseType: !302, size: 32, offset: 128)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4442, file: !4443, line: 60, baseType: !4472, size: 64, offset: 192)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4437, file: !4190, line: 136, baseType: !1898, size: 128, offset: 448)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4437, file: !4190, line: 141, baseType: !4478, size: 64, offset: 576)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4190, line: 35, flags: DIFlagFwdDecl)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4437, file: !4190, line: 145, baseType: !4482, size: 64, offset: 640)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4484)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4190, line: 42, size: 192, elements: !4485)
!4485 = !{!4486, !4490, !4494}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4484, file: !4190, line: 53, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4436}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4484, file: !4190, line: 73, baseType: !4491, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!113, !4436, !4101, !2871}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4484, file: !4190, line: 97, baseType: !4495, size: 64, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!113, !4436, !4101, !5, !5, !4498, !5}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4120, line: 97, size: 64, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4504}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4499, file: !4120, line: 98, baseType: !418, size: 16)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4499, file: !4120, line: 99, baseType: !418, size: 16, offset: 16)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4499, file: !4120, line: 100, baseType: !418, size: 16, offset: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4499, file: !4120, line: 101, baseType: !418, size: 16, offset: 48)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4437, file: !4190, line: 150, baseType: !4506, size: 128, offset: 704)
!4506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !1299)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4437, file: !4190, line: 168, baseType: !4506, size: 128, offset: 832)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4437, file: !4190, line: 175, baseType: !4283, size: 64, offset: 960)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4437, file: !4190, line: 180, baseType: !5, size: 32, offset: 1024)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4437, file: !4190, line: 185, baseType: !5, size: 32, offset: 1056)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4437, file: !4190, line: 190, baseType: !113, size: 32, offset: 1088)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4437, file: !4190, line: 196, baseType: !113, size: 32, offset: 1120)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4437, file: !4190, line: 202, baseType: !113, size: 32, offset: 1152)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4437, file: !4190, line: 206, baseType: !295, size: 128, offset: 1216)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4437, file: !4190, line: 213, baseType: !4516, size: 256, offset: 1344)
!4516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4188, size: 256, elements: !1299)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4519)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !188, line: 494, size: 832, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525, !4526, !4528, !4529, !4530}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4519, file: !188, line: 495, baseType: !519, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4519, file: !188, line: 496, baseType: !519, size: 32, offset: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4519, file: !188, line: 497, baseType: !519, size: 32, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4519, file: !188, line: 498, baseType: !519, size: 32, offset: 96)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4519, file: !188, line: 499, baseType: !519, size: 32, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4519, file: !188, line: 525, baseType: !4527, size: 128, offset: 160)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 128, elements: !1299)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4519, file: !188, line: 526, baseType: !4527, size: 128, offset: 288)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4519, file: !188, line: 527, baseType: !4527, size: 128, offset: 416)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4519, file: !188, line: 528, baseType: !4531, size: 256, offset: 576)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 256, elements: !1299)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4430, file: !4365, line: 92, baseType: !4533, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4478, !4517}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4430, file: !4365, line: 109, baseType: !4159, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4430, file: !4365, line: 119, baseType: !4538, size: 64, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!111, !291, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !112, line: 224, size: 960, elements: !4544)
!4544 = !{!4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4543, file: !112, line: 230, baseType: !113, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4543, file: !112, line: 231, baseType: !1002, size: 16, offset: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4543, file: !112, line: 232, baseType: !1002, size: 16, offset: 48)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4543, file: !112, line: 233, baseType: !1002, size: 16, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4543, file: !112, line: 234, baseType: !1002, size: 16, offset: 80)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4543, file: !112, line: 235, baseType: !1002, size: 16, offset: 96)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4543, file: !112, line: 236, baseType: !1002, size: 16, offset: 112)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4543, file: !112, line: 237, baseType: !1002, size: 16, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4543, file: !112, line: 238, baseType: !1002, size: 16, offset: 144)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4543, file: !112, line: 239, baseType: !1002, size: 16, offset: 160)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4543, file: !112, line: 240, baseType: !1002, size: 16, offset: 176)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4543, file: !112, line: 275, baseType: !517, size: 32, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4543, file: !112, line: 292, baseType: !113, size: 32, offset: 224)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4543, file: !112, line: 293, baseType: !1002, size: 16, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4543, file: !112, line: 294, baseType: !1002, size: 16, offset: 272)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4543, file: !112, line: 295, baseType: !1002, size: 16, offset: 288)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4543, file: !112, line: 296, baseType: !1002, size: 16, offset: 304)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4543, file: !112, line: 297, baseType: !1002, size: 16, offset: 320)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4543, file: !112, line: 298, baseType: !1002, size: 16, offset: 336)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4543, file: !112, line: 299, baseType: !1002, size: 16, offset: 352)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4543, file: !112, line: 300, baseType: !1002, size: 16, offset: 368)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4543, file: !112, line: 301, baseType: !1002, size: 16, offset: 384)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4543, file: !112, line: 302, baseType: !1002, size: 16, offset: 400)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4543, file: !112, line: 303, baseType: !1002, size: 16, offset: 416)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4543, file: !112, line: 304, baseType: !1002, size: 16, offset: 432)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4543, file: !112, line: 305, baseType: !1002, size: 16, offset: 448)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4543, file: !112, line: 313, baseType: !1002, size: 16, offset: 464)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4543, file: !112, line: 321, baseType: !1002, size: 16, offset: 480)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4543, file: !112, line: 350, baseType: !1485, size: 8, offset: 496)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4543, file: !112, line: 361, baseType: !592, size: 8, offset: 504)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4543, file: !112, line: 368, baseType: !295, size: 128, offset: 512)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4543, file: !112, line: 375, baseType: !2888, size: 256, offset: 640)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4543, file: !112, line: 383, baseType: !111, size: 32, offset: 896)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4543, file: !112, line: 390, baseType: !155, size: 32, offset: 928)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4430, file: !4365, line: 196, baseType: !4580, size: 64, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!113, !291, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4585, line: 325, size: 960, elements: !4586)
!4585 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/lizy2001/genbc/linux")
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593, !4973, !4985, !4986, !5037, !5038, !5069, !5070, !5071}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4584, file: !4585, line: 326, baseType: !302, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4584, file: !4585, line: 328, baseType: !291, size: 64, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4584, file: !4585, line: 338, baseType: !592, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4584, file: !4585, line: 339, baseType: !592, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4584, file: !4585, line: 340, baseType: !592, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4584, file: !4585, line: 349, baseType: !592, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4584, file: !4585, line: 350, baseType: !4594, size: 64, offset: 192)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !4585, line: 158, size: 256, elements: !4596)
!4596 = !{!4597, !4970, !4971, !4972}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4595, file: !4585, line: 159, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !229, line: 575, size: 5184, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4864, !4865, !4866, !4956, !4957, !4958, !4959, !4963, !4964, !4965, !4966, !4967, !4968, !4969}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4599, file: !229, line: 577, baseType: !291, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4599, file: !229, line: 586, baseType: !295, size: 128, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4599, file: !229, line: 589, baseType: !376, size: 64, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4599, file: !229, line: 600, baseType: !4369, size: 384, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4599, file: !229, line: 603, baseType: !4442, size: 256, offset: 640)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !4599, file: !229, line: 609, baseType: !661, size: 32, offset: 896)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !4599, file: !229, line: 611, baseType: !4211, size: 64, offset: 960)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !4599, file: !229, line: 613, baseType: !5, size: 32, offset: 1024)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !4599, file: !229, line: 618, baseType: !592, size: 8, offset: 1056)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !4599, file: !229, line: 621, baseType: !4282, size: 64, offset: 1088)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !4599, file: !229, line: 623, baseType: !5, size: 32, offset: 1152)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4599, file: !229, line: 632, baseType: !4613, size: 64, offset: 1216)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4615, line: 939, size: 7680, elements: !4616)
!4615 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/lizy2001/genbc/linux")
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4823, !4824, !4827, !4831, !4832, !4833, !4834, !4835, !4857, !4858, !4859, !4860, !4861}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4614, file: !4615, line: 941, baseType: !291, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4614, file: !4615, line: 943, baseType: !3830, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4614, file: !4615, line: 951, baseType: !295, size: 128, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4614, file: !4615, line: 954, baseType: !376, size: 64, offset: 256)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4614, file: !4615, line: 966, baseType: !4369, size: 384, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4614, file: !4615, line: 969, baseType: !4442, size: 256, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4614, file: !4615, line: 978, baseType: !4598, size: 64, offset: 960)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4614, file: !4615, line: 987, baseType: !4598, size: 64, offset: 1024)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4614, file: !4615, line: 993, baseType: !5, size: 32, offset: 1088)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4614, file: !4615, line: 1002, baseType: !113, size: 32, offset: 1120)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4614, file: !4615, line: 1010, baseType: !113, size: 32, offset: 1152)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4614, file: !4615, line: 1020, baseType: !592, size: 8, offset: 1184)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4614, file: !4615, line: 1030, baseType: !4543, size: 960, offset: 1216)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4614, file: !4615, line: 1046, baseType: !4543, size: 960, offset: 2176)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4614, file: !4615, line: 1055, baseType: !113, size: 32, offset: 3136)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4614, file: !4615, line: 1063, baseType: !113, size: 32, offset: 3168)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4614, file: !4615, line: 1066, baseType: !4634, size: 64, offset: 3200)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4636)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4615, line: 409, size: 1536, elements: !4637)
!4637 = !{!4638, !4642, !4646, !4650, !4654, !4659, !4660, !4676, !4682, !4686, !4690, !4743, !4747, !4751, !4757, !4761, !4762, !4766, !4771, !4777, !4812, !4816, !4817, !4818}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4636, file: !4615, line: 420, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4613}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !4636, file: !4615, line: 443, baseType: !4643, size: 64, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!113, !4613, !4101, !661, !661, !661}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !4636, file: !4615, line: 465, baseType: !4647, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!113, !4613, !4101, !661, !661, !661, !1750, !1750}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !4636, file: !4615, line: 485, baseType: !4651, size: 64, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!113, !4613, !113, !113}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !4636, file: !4615, line: 500, baseType: !4655, size: 64, offset: 256)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!113, !4613, !4658, !4658, !4658, !661, !4388}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4636, file: !4615, line: 511, baseType: !4639, size: 64, offset: 320)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4636, file: !4615, line: 527, baseType: !4661, size: 64, offset: 384)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!113, !4664, !4388}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4615, line: 1190, size: 384, elements: !4666)
!4666 = !{!4667, !4668, !4669, !4671, !4672, !4673, !4675}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4665, file: !4615, line: 1191, baseType: !4436, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4665, file: !4615, line: 1192, baseType: !4613, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4665, file: !4615, line: 1193, baseType: !4670, size: 64, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4665, file: !4615, line: 1195, baseType: !661, size: 32, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4665, file: !4615, line: 1196, baseType: !661, size: 32, offset: 224)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4665, file: !4615, line: 1198, baseType: !4674, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !4665, file: !4615, line: 1199, baseType: !423, size: 64, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !4636, file: !4615, line: 583, baseType: !4677, size: 64, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!113, !4613, !4436, !4680, !661, !4388}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4615, line: 71, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !4636, file: !4615, line: 602, baseType: !4683, size: 64, offset: 512)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!113, !4613, !4436, !4680, !661, !661, !4388}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4636, file: !4615, line: 622, baseType: !4687, size: 64, offset: 576)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!113, !4613, !4454, !4283}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4636, file: !4615, line: 656, baseType: !4691, size: 64, offset: 640)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!4694, !4613}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4615, line: 99, size: 2624, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4742}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4695, file: !4615, line: 101, baseType: !4613, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4695, file: !4615, line: 108, baseType: !592, size: 8, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4695, file: !4615, line: 123, baseType: !592, size: 8, offset: 72)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !4695, file: !4615, line: 129, baseType: !592, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !4695, file: !4615, line: 141, baseType: !592, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !4695, file: !4615, line: 148, baseType: !592, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !4695, file: !4615, line: 159, baseType: !592, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !4695, file: !4615, line: 165, baseType: !592, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !4695, file: !4615, line: 171, baseType: !592, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !4695, file: !4615, line: 207, baseType: !592, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !4695, file: !4615, line: 213, baseType: !517, size: 32, offset: 96)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !4695, file: !4615, line: 219, baseType: !517, size: 32, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !4695, file: !4615, line: 225, baseType: !517, size: 32, offset: 160)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !4695, file: !4615, line: 240, baseType: !4543, size: 960, offset: 192)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4695, file: !4615, line: 257, baseType: !4543, size: 960, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !4695, file: !4615, line: 263, baseType: !4713, size: 64, offset: 2112)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4456, line: 209, size: 704, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719, !4720, !4721}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4714, file: !4456, line: 210, baseType: !4442, size: 256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4714, file: !4456, line: 211, baseType: !291, size: 64, offset: 256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !4714, file: !4456, line: 212, baseType: !295, size: 128, offset: 320)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !4714, file: !4456, line: 213, baseType: !295, size: 128, offset: 448)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4714, file: !4456, line: 214, baseType: !423, size: 64, offset: 576)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4714, file: !4456, line: 215, baseType: !286, size: 64, offset: 640)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !4695, file: !4615, line: 272, baseType: !4713, size: 64, offset: 2176)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !4695, file: !4615, line: 280, baseType: !4713, size: 64, offset: 2240)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !4695, file: !4615, line: 289, baseType: !4713, size: 64, offset: 2304)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !4695, file: !4615, line: 297, baseType: !517, size: 32, offset: 2368)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !4695, file: !4615, line: 305, baseType: !592, size: 8, offset: 2400)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !4695, file: !4615, line: 314, baseType: !592, size: 8, offset: 2408)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !4695, file: !4615, line: 325, baseType: !592, size: 8, offset: 2416)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4695, file: !4615, line: 382, baseType: !4680, size: 64, offset: 2432)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4695, file: !4615, line: 391, baseType: !4731, size: 64, offset: 2496)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !4585, line: 70, size: 960, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4732, file: !4585, line: 76, baseType: !4613, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4732, file: !4585, line: 85, baseType: !302, size: 32, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !4732, file: !4585, line: 99, baseType: !1668, size: 192, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !4732, file: !4585, line: 117, baseType: !1668, size: 192, offset: 320)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !4732, file: !4585, line: 131, baseType: !1668, size: 192, offset: 512)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !4732, file: !4585, line: 139, baseType: !295, size: 128, offset: 704)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4732, file: !4585, line: 146, baseType: !4680, size: 64, offset: 832)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !4732, file: !4585, line: 155, baseType: !592, size: 8, offset: 896)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4695, file: !4615, line: 394, baseType: !4583, size: 64, offset: 2560)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4636, file: !4615, line: 666, baseType: !4744, size: 64, offset: 704)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !4613, !4694}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4636, file: !4615, line: 711, baseType: !4748, size: 64, offset: 768)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!113, !4613, !4694, !4454, !4283}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4636, file: !4615, line: 733, baseType: !4752, size: 64, offset: 832)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!113, !4613, !4755, !4454, !4282}
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4695)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4636, file: !4615, line: 751, baseType: !4758, size: 64, offset: 896)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!113, !4613}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4636, file: !4615, line: 762, baseType: !4639, size: 64, offset: 960)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !4636, file: !4615, line: 791, baseType: !4763, size: 64, offset: 1024)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!113, !4613, !323}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !4636, file: !4615, line: 807, baseType: !4767, size: 64, offset: 1088)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!113, !4613, !323, !4770}
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !4636, file: !4615, line: 829, baseType: !4772, size: 64, offset: 1152)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!4775, !4613, !4770}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4636, file: !4615, line: 841, baseType: !4778, size: 64, offset: 1216)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{null, !4781, !4755}
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !247, line: 75, size: 256, elements: !4783)
!4783 = !{!4784, !4806, !4810, !4811}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4782, file: !247, line: 77, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{null, !4781, !4788}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4790, line: 90, size: 128, elements: !4791)
!4790 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!4791 = !{!4792, !4793}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4789, file: !4790, line: 91, baseType: !323, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4789, file: !4790, line: 92, baseType: !4794, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4796, line: 99, baseType: !4797)
!4796 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4796, line: 40, baseType: !4798)
!4798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !4799)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4800, size: 192, elements: !1504)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !4801)
!4801 = !{!4802, !4803, !4804, !4805}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4800, file: !1, baseType: !5, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4800, file: !1, baseType: !5, size: 32, offset: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4800, file: !1, baseType: !286, size: 64, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4800, file: !1, baseType: !286, size: 64, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4782, file: !247, line: 78, baseType: !4807, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{null, !4781, !323}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4782, file: !247, line: 79, baseType: !286, size: 64, offset: 128)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4782, file: !247, line: 80, baseType: !323, size: 64, offset: 192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4636, file: !4615, line: 868, baseType: !4813, size: 64, offset: 1280)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!517, !4613}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4636, file: !4615, line: 881, baseType: !4758, size: 64, offset: 1344)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4636, file: !4615, line: 889, baseType: !4639, size: 64, offset: 1408)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !4636, file: !4615, line: 927, baseType: !4819, size: 64, offset: 1472)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!592, !4613, !810, !4822, !592}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4614, file: !4615, line: 1072, baseType: !661, size: 32, offset: 3264)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4614, file: !4615, line: 1078, baseType: !4825, size: 64, offset: 3328)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !285, line: 103, baseType: !1002)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4614, file: !4615, line: 1081, baseType: !4828, size: 64, offset: 3392)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4830)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4615, line: 76, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4614, file: !4615, line: 1084, baseType: !4449, size: 3136, offset: 3456)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4614, file: !4615, line: 1099, baseType: !4694, size: 64, offset: 6592)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4614, file: !4615, line: 1116, baseType: !295, size: 128, offset: 6656)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4614, file: !4615, line: 1123, baseType: !335, offset: 6784)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4614, file: !4615, line: 1139, baseType: !4836, size: 448, offset: 6784)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !4837, line: 53, size: 448, elements: !4838)
!4837 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/lizy2001/genbc/linux")
!4838 = !{!4839, !4840, !4841, !4842, !4843, !4853, !4854, !4855, !4856}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4836, file: !4837, line: 54, baseType: !335)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4836, file: !4837, line: 55, baseType: !323, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !4836, file: !4837, line: 56, baseType: !592, size: 8, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !4836, file: !4837, line: 56, baseType: !592, size: 8, offset: 72)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4836, file: !4837, line: 57, baseType: !4844, size: 64, offset: 128)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !4837, line: 33, size: 384, elements: !4846)
!4846 = !{!4847, !4848, !4849}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !4845, file: !4837, line: 34, baseType: !592, size: 8)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4845, file: !4837, line: 35, baseType: !661, size: 32, offset: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !4845, file: !4837, line: 36, baseType: !4850, size: 320, offset: 64)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 320, elements: !4851)
!4851 = !{!4852}
!4852 = !DISubrange(count: 10)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4836, file: !4837, line: 58, baseType: !113, size: 32, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4836, file: !4837, line: 58, baseType: !113, size: 32, offset: 224)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !4836, file: !4837, line: 59, baseType: !423, size: 64, offset: 256)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4836, file: !4837, line: 60, baseType: !1614, size: 128, offset: 320)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4614, file: !4615, line: 1146, baseType: !5, size: 32, offset: 7232)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4614, file: !4615, line: 1153, baseType: !335, offset: 7264)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4614, file: !4615, line: 1160, baseType: !426, size: 64, offset: 7296)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4614, file: !4615, line: 1167, baseType: !2888, size: 256, offset: 7360)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4614, file: !4615, line: 1174, baseType: !4862, size: 64, offset: 7616)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4615, line: 56, flags: DIFlagFwdDecl)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4599, file: !229, line: 641, baseType: !4436, size: 64, offset: 1280)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !4599, file: !229, line: 649, baseType: !4436, size: 64, offset: 1344)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4599, file: !229, line: 652, baseType: !4867, size: 64, offset: 1408)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !229, line: 256, size: 832, elements: !4870)
!4870 = !{!4871, !4875, !4879, !4883, !4884, !4888, !4929, !4933, !4937, !4943, !4947, !4948, !4952}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !4869, file: !229, line: 283, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!113, !4598, !4613, !4436, !113, !113, !5, !5, !661, !661, !661, !661, !4388}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !4869, file: !229, line: 306, baseType: !4876, size: 64, offset: 64)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!113, !4598, !4388}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4869, file: !229, line: 316, baseType: !4880, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{null, !4598}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4869, file: !229, line: 328, baseType: !4880, size: 64, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4869, file: !229, line: 344, baseType: !4885, size: 64, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!113, !4598, !4454, !4283}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4869, file: !229, line: 378, baseType: !4889, size: 64, offset: 320)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!4892, !4598}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !229, line: 47, size: 1216, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4925, !4926, !4927, !4928}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4893, file: !229, line: 49, baseType: !4598, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4893, file: !229, line: 57, baseType: !4613, size: 64, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4893, file: !229, line: 65, baseType: !4436, size: 64, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4893, file: !229, line: 80, baseType: !4899, size: 64, offset: 192)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !229, line: 80, flags: DIFlagFwdDecl)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !4893, file: !229, line: 89, baseType: !1750, size: 32, offset: 256)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !4893, file: !229, line: 96, baseType: !1750, size: 32, offset: 288)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !4893, file: !229, line: 100, baseType: !661, size: 32, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !4893, file: !229, line: 100, baseType: !661, size: 32, offset: 352)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !4893, file: !229, line: 106, baseType: !661, size: 32, offset: 384)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !4893, file: !229, line: 111, baseType: !661, size: 32, offset: 416)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !4893, file: !229, line: 114, baseType: !661, size: 32, offset: 448)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !4893, file: !229, line: 114, baseType: !661, size: 32, offset: 480)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4893, file: !229, line: 122, baseType: !1002, size: 16, offset: 512)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !4893, file: !229, line: 130, baseType: !4826, size: 16, offset: 528)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !4893, file: !229, line: 137, baseType: !5, size: 32, offset: 544)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !4893, file: !229, line: 152, baseType: !5, size: 32, offset: 576)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !4893, file: !229, line: 161, baseType: !5, size: 32, offset: 608)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !4893, file: !229, line: 168, baseType: !216, size: 32, offset: 640)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !4893, file: !229, line: 175, baseType: !223, size: 32, offset: 672)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !4893, file: !229, line: 185, baseType: !4713, size: 64, offset: 704)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4893, file: !229, line: 207, baseType: !4918, size: 128, offset: 768)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !4919, line: 43, size: 128, elements: !4920)
!4919 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!4920 = !{!4921, !4922, !4923, !4924}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4918, file: !4919, line: 44, baseType: !113, size: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4918, file: !4919, line: 44, baseType: !113, size: 32, offset: 32)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4918, file: !4919, line: 44, baseType: !113, size: 32, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4918, file: !4919, line: 44, baseType: !113, size: 32, offset: 96)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4893, file: !229, line: 207, baseType: !4918, size: 128, offset: 896)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !4893, file: !229, line: 215, baseType: !592, size: 8, offset: 1024)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4893, file: !229, line: 223, baseType: !4731, size: 64, offset: 1088)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4893, file: !229, line: 226, baseType: !4583, size: 64, offset: 1152)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4869, file: !229, line: 388, baseType: !4930, size: 64, offset: 384)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{null, !4598, !4892}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4869, file: !229, line: 433, baseType: !4934, size: 64, offset: 448)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!113, !4598, !4892, !4454, !4283}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4869, file: !229, line: 456, baseType: !4938, size: 64, offset: 512)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!113, !4598, !4941, !4454, !4282}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4893)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4869, file: !229, line: 473, baseType: !4944, size: 64, offset: 576)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!113, !4598}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4869, file: !229, line: 484, baseType: !4880, size: 64, offset: 640)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4869, file: !229, line: 495, baseType: !4949, size: 64, offset: 704)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !4781, !4941}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !4869, file: !229, line: 514, baseType: !4953, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!592, !4598, !661, !4283}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4599, file: !229, line: 655, baseType: !4449, size: 3136, offset: 1472)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4599, file: !229, line: 658, baseType: !228, size: 32, offset: 4608)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4599, file: !229, line: 664, baseType: !5, size: 32, offset: 4640)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4599, file: !229, line: 667, baseType: !4960, size: 64, offset: 4672)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4962)
!4962 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !229, line: 667, flags: DIFlagFwdDecl)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4599, file: !229, line: 682, baseType: !4892, size: 64, offset: 4736)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !4599, file: !229, line: 689, baseType: !4454, size: 64, offset: 4800)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !4599, file: !229, line: 695, baseType: !4454, size: 64, offset: 4864)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !4599, file: !229, line: 701, baseType: !4454, size: 64, offset: 4928)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !4599, file: !229, line: 709, baseType: !4454, size: 64, offset: 4992)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !4599, file: !229, line: 718, baseType: !4454, size: 64, offset: 5056)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !4599, file: !229, line: 726, baseType: !4454, size: 64, offset: 5120)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4595, file: !4585, line: 160, baseType: !4892, size: 64, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4595, file: !4585, line: 160, baseType: !4892, size: 64, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4595, file: !4585, line: 160, baseType: !4892, size: 64, offset: 192)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4584, file: !4585, line: 351, baseType: !4974, size: 64, offset: 256)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !4585, line: 163, size: 448, elements: !4976)
!4976 = !{!4977, !4978, !4979, !4980, !4981, !4982, !4984}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4975, file: !4585, line: 164, baseType: !4613, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4975, file: !4585, line: 165, baseType: !4694, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4975, file: !4585, line: 165, baseType: !4694, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4975, file: !4585, line: 165, baseType: !4694, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4975, file: !4585, line: 175, baseType: !4731, size: 64, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !4975, file: !4585, line: 177, baseType: !4983, size: 64, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !4975, file: !4585, line: 178, baseType: !523, size: 64, offset: 384)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4584, file: !4585, line: 352, baseType: !113, size: 32, offset: 320)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4584, file: !4585, line: 353, baseType: !4987, size: 64, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !4585, line: 181, size: 320, elements: !4989)
!4989 = !{!4990, !4991, !5034, !5035, !5036}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4988, file: !4585, line: 182, baseType: !287, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4988, file: !4585, line: 183, baseType: !4992, size: 64, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !165, line: 605, size: 1216, elements: !4994)
!4994 = !{!4995, !4996, !4997, !5000, !5001, !5002, !5003, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5031, !5032, !5033}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4993, file: !165, line: 607, baseType: !287, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4993, file: !165, line: 615, baseType: !4613, size: 64, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !4993, file: !165, line: 633, baseType: !4998, size: 64, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !165, line: 39, flags: DIFlagFwdDecl)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !4993, file: !165, line: 639, baseType: !183, size: 32, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4993, file: !165, line: 642, baseType: !4583, size: 64, offset: 256)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4993, file: !165, line: 649, baseType: !4731, size: 64, offset: 320)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !4993, file: !165, line: 652, baseType: !5004, size: 384, offset: 384)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !165, line: 590, size: 384, elements: !5005)
!5005 = !{!5006, !5007, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5004, file: !165, line: 591, baseType: !187, size: 32)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5004, file: !165, line: 592, baseType: !5008, size: 128, offset: 32)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !165, line: 556, size: 128, elements: !5009)
!5009 = !{!5010, !5011, !5012, !5013}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5008, file: !165, line: 560, baseType: !5, size: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5008, file: !165, line: 565, baseType: !5, size: 32, offset: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5008, file: !165, line: 570, baseType: !5, size: 32, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5008, file: !165, line: 575, baseType: !5, size: 32, offset: 96)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5004, file: !165, line: 593, baseType: !5, size: 32, offset: 160)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5004, file: !165, line: 594, baseType: !5, size: 32, offset: 192)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5004, file: !165, line: 595, baseType: !5, size: 32, offset: 224)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5004, file: !165, line: 596, baseType: !5, size: 32, offset: 256)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5004, file: !165, line: 597, baseType: !5, size: 32, offset: 288)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5004, file: !165, line: 598, baseType: !5, size: 32, offset: 320)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5004, file: !165, line: 599, baseType: !5, size: 32, offset: 352)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !4993, file: !165, line: 666, baseType: !592, size: 8, offset: 768)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4993, file: !165, line: 675, baseType: !155, size: 32, offset: 800)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !4993, file: !165, line: 683, baseType: !5, size: 32, offset: 832)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !4993, file: !165, line: 689, baseType: !5, size: 32, offset: 864)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !4993, file: !165, line: 695, baseType: !5, size: 32, offset: 896)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !4993, file: !165, line: 701, baseType: !5, size: 32, offset: 928)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4993, file: !165, line: 708, baseType: !517, size: 32, offset: 960)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !4993, file: !165, line: 721, baseType: !5029, size: 64, offset: 1024)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !165, line: 721, flags: DIFlagFwdDecl)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !4993, file: !165, line: 727, baseType: !1485, size: 8, offset: 1088)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !4993, file: !165, line: 733, baseType: !1485, size: 8, offset: 1096)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !4993, file: !165, line: 739, baseType: !4713, size: 64, offset: 1152)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4988, file: !4585, line: 183, baseType: !4992, size: 64, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4988, file: !4585, line: 183, baseType: !4992, size: 64, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !4988, file: !4585, line: 191, baseType: !4983, size: 64, offset: 256)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4584, file: !4585, line: 354, baseType: !113, size: 32, offset: 448)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4584, file: !4585, line: 355, baseType: !5039, size: 64, offset: 512)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !4585, line: 302, size: 256, elements: !5041)
!5041 = !{!5042, !5066, !5067, !5068}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5040, file: !4585, line: 303, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !4585, line: 252, size: 640, elements: !5045)
!5045 = !{!5046, !5047, !5048, !5053}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5044, file: !4585, line: 257, baseType: !295, size: 128)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5044, file: !4585, line: 262, baseType: !4369, size: 384, offset: 128)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5044, file: !4585, line: 267, baseType: !5049, size: 64, offset: 512)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !4585, line: 298, size: 64, elements: !5051)
!5051 = !{!5052}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5050, file: !4585, line: 299, baseType: !4583, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5044, file: !4585, line: 275, baseType: !5054, size: 64, offset: 576)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5056)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !4585, line: 207, size: 128, elements: !5057)
!5057 = !{!5058, !5062}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5056, file: !4585, line: 219, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!5049, !5043}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5056, file: !4585, line: 226, baseType: !5063, size: 64, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{null, !5043, !5049}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5040, file: !4585, line: 304, baseType: !5049, size: 64, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5040, file: !4585, line: 304, baseType: !5049, size: 64, offset: 128)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5040, file: !4585, line: 304, baseType: !5049, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4584, file: !4585, line: 357, baseType: !4388, size: 64, offset: 576)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4584, file: !4585, line: 369, baseType: !4731, size: 64, offset: 640)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4584, file: !4585, line: 377, baseType: !2145, size: 256, offset: 704)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4430, file: !4365, line: 278, baseType: !5073, size: 64, offset: 320)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!113, !291, !4583, !592}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4430, file: !4365, line: 297, baseType: !5077, size: 64, offset: 384)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!4583, !291}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4430, file: !4365, line: 318, baseType: !5081, size: 64, offset: 448)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !4583}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4430, file: !4365, line: 333, baseType: !5081, size: 64, offset: 512)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4364, file: !4365, line: 527, baseType: !5086, size: 64, offset: 3264)
!5086 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !285, line: 158, baseType: !2313)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4364, file: !4365, line: 530, baseType: !592, size: 8, offset: 3328)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4364, file: !4365, line: 531, baseType: !592, size: 8, offset: 3336)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4364, file: !4365, line: 532, baseType: !592, size: 8, offset: 3344)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4364, file: !4365, line: 533, baseType: !5091, size: 704, offset: 3392)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2146, line: 115, size: 704, elements: !5092)
!5092 = !{!5093, !5094, !5095, !5096}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5091, file: !2146, line: 116, baseType: !2145, size: 256)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5091, file: !2146, line: 117, baseType: !3728, size: 320, offset: 256)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5091, file: !2146, line: 120, baseType: !2981, size: 64, offset: 576)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5091, file: !2146, line: 121, baseType: !113, size: 32, offset: 640)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4364, file: !4365, line: 541, baseType: !828, size: 192, offset: 4096)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4364, file: !4365, line: 549, baseType: !295, size: 128, offset: 4288)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4364, file: !4365, line: 557, baseType: !4454, size: 64, offset: 4416)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4364, file: !4365, line: 562, baseType: !4454, size: 64, offset: 4480)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4364, file: !4365, line: 567, baseType: !4454, size: 64, offset: 4544)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4364, file: !4365, line: 573, baseType: !4454, size: 64, offset: 4608)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4364, file: !4365, line: 578, baseType: !4454, size: 64, offset: 4672)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4364, file: !4365, line: 583, baseType: !4454, size: 64, offset: 4736)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4364, file: !4365, line: 588, baseType: !4454, size: 64, offset: 4800)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4364, file: !4365, line: 593, baseType: !4454, size: 64, offset: 4864)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4364, file: !4365, line: 598, baseType: !4454, size: 64, offset: 4928)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4364, file: !4365, line: 603, baseType: !4454, size: 64, offset: 4992)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4364, file: !4365, line: 608, baseType: !4454, size: 64, offset: 5056)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4364, file: !4365, line: 613, baseType: !4454, size: 64, offset: 5120)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4364, file: !4365, line: 618, baseType: !4454, size: 64, offset: 5184)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4364, file: !4365, line: 623, baseType: !4454, size: 64, offset: 5248)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4364, file: !4365, line: 628, baseType: !4454, size: 64, offset: 5312)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4364, file: !4365, line: 633, baseType: !4454, size: 64, offset: 5376)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4364, file: !4365, line: 639, baseType: !4454, size: 64, offset: 5440)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4364, file: !4365, line: 644, baseType: !4454, size: 64, offset: 5504)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4364, file: !4365, line: 653, baseType: !4454, size: 64, offset: 5568)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4364, file: !4365, line: 659, baseType: !4454, size: 64, offset: 5632)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4364, file: !4365, line: 665, baseType: !4454, size: 64, offset: 5696)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4364, file: !4365, line: 670, baseType: !4454, size: 64, offset: 5760)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4364, file: !4365, line: 676, baseType: !4454, size: 64, offset: 5824)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4364, file: !4365, line: 681, baseType: !4454, size: 64, offset: 5888)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4364, file: !4365, line: 687, baseType: !4454, size: 64, offset: 5952)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4364, file: !4365, line: 693, baseType: !4454, size: 64, offset: 6016)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4364, file: !4365, line: 698, baseType: !4454, size: 64, offset: 6080)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4364, file: !4365, line: 703, baseType: !4454, size: 64, offset: 6144)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4364, file: !4365, line: 708, baseType: !4454, size: 64, offset: 6208)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4364, file: !4365, line: 713, baseType: !4454, size: 64, offset: 6272)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4364, file: !4365, line: 718, baseType: !4454, size: 64, offset: 6336)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4364, file: !4365, line: 723, baseType: !4454, size: 64, offset: 6400)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4364, file: !4365, line: 728, baseType: !4454, size: 64, offset: 6464)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4364, file: !4365, line: 733, baseType: !4454, size: 64, offset: 6528)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4364, file: !4365, line: 738, baseType: !4454, size: 64, offset: 6592)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4364, file: !4365, line: 743, baseType: !4454, size: 64, offset: 6656)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4364, file: !4365, line: 748, baseType: !4454, size: 64, offset: 6720)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4364, file: !4365, line: 752, baseType: !4454, size: 64, offset: 6784)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4364, file: !4365, line: 758, baseType: !4454, size: 64, offset: 6848)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4364, file: !4365, line: 763, baseType: !4454, size: 64, offset: 6912)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4364, file: !4365, line: 768, baseType: !4454, size: 64, offset: 6976)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4364, file: !4365, line: 773, baseType: !4454, size: 64, offset: 7040)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4364, file: !4365, line: 778, baseType: !4454, size: 64, offset: 7104)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4364, file: !4365, line: 784, baseType: !4454, size: 64, offset: 7168)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4364, file: !4365, line: 790, baseType: !4454, size: 64, offset: 7232)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4364, file: !4365, line: 795, baseType: !4454, size: 64, offset: 7296)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4364, file: !4365, line: 801, baseType: !4454, size: 64, offset: 7360)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4364, file: !4365, line: 806, baseType: !4454, size: 64, offset: 7424)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4364, file: !4365, line: 813, baseType: !4454, size: 64, offset: 7488)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4364, file: !4365, line: 820, baseType: !4454, size: 64, offset: 7552)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4364, file: !4365, line: 827, baseType: !4454, size: 64, offset: 7616)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4364, file: !4365, line: 835, baseType: !4454, size: 64, offset: 7680)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4364, file: !4365, line: 843, baseType: !4454, size: 64, offset: 7744)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4364, file: !4365, line: 850, baseType: !4454, size: 64, offset: 7808)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4364, file: !4365, line: 856, baseType: !4454, size: 64, offset: 7872)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4364, file: !4365, line: 862, baseType: !4454, size: 64, offset: 7936)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4364, file: !4365, line: 865, baseType: !661, size: 32, offset: 8000)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4364, file: !4365, line: 865, baseType: !661, size: 32, offset: 8032)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4364, file: !4365, line: 872, baseType: !592, size: 8, offset: 8064)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4364, file: !4365, line: 884, baseType: !592, size: 8, offset: 8072)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4364, file: !4365, line: 892, baseType: !592, size: 8, offset: 8080)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4364, file: !4365, line: 906, baseType: !592, size: 8, offset: 8088)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4364, file: !4365, line: 912, baseType: !592, size: 8, offset: 8096)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4364, file: !4365, line: 919, baseType: !592, size: 8, offset: 8104)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4364, file: !4365, line: 927, baseType: !592, size: 8, offset: 8112)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4364, file: !4365, line: 933, baseType: !4454, size: 64, offset: 8128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4364, file: !4365, line: 936, baseType: !661, size: 32, offset: 8192)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4364, file: !4365, line: 936, baseType: !661, size: 32, offset: 8224)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4364, file: !4365, line: 945, baseType: !4583, size: 64, offset: 8256)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4364, file: !4365, line: 947, baseType: !5169, size: 64, offset: 8320)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5171)
!5171 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4365, line: 947, flags: DIFlagFwdDecl)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !292, file: !235, line: 303, baseType: !828, size: 192, offset: 11200)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !292, file: !235, line: 306, baseType: !1633, size: 192, offset: 11392)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !292, file: !235, line: 309, baseType: !5175, size: 64, offset: 11584)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !235, line: 19, flags: DIFlagFwdDecl)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !292, file: !235, line: 312, baseType: !5178, size: 64, offset: 11648)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !235, line: 20, flags: DIFlagFwdDecl)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !292, file: !235, line: 322, baseType: !234, size: 32, offset: 11712)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !292, file: !235, line: 330, baseType: !5182, size: 64, offset: 11776)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !235, line: 21, flags: DIFlagFwdDecl)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !288, file: !165, line: 1174, baseType: !315, size: 64, offset: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !288, file: !165, line: 1176, baseType: !5186, size: 64, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !71, line: 99, size: 256, elements: !5188)
!5188 = !{!5189, !5190, !5194}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5187, file: !71, line: 100, baseType: !413, size: 128)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5187, file: !71, line: 101, baseType: !5191, size: 64, offset: 128)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!407, !315, !5186, !376}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5187, file: !71, line: 103, baseType: !5195, size: 64, offset: 192)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!407, !315, !5186, !323, !423}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !288, file: !165, line: 1186, baseType: !295, size: 128, offset: 192)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !288, file: !165, line: 1189, baseType: !4442, size: 256, offset: 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !165, line: 1192, baseType: !376, size: 64, offset: 576)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !288, file: !165, line: 1199, baseType: !828, size: 192, offset: 640)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !288, file: !165, line: 1207, baseType: !5, size: 32, offset: 832)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !288, file: !165, line: 1213, baseType: !113, size: 32, offset: 864)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !288, file: !165, line: 1215, baseType: !113, size: 32, offset: 896)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !288, file: !165, line: 1221, baseType: !592, size: 8, offset: 928)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !288, file: !165, line: 1227, baseType: !592, size: 8, offset: 936)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !288, file: !165, line: 1233, baseType: !592, size: 8, offset: 944)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !288, file: !165, line: 1241, baseType: !592, size: 8, offset: 952)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !288, file: !165, line: 1249, baseType: !164, size: 32, offset: 960)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !288, file: !165, line: 1256, baseType: !295, size: 128, offset: 1024)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !288, file: !165, line: 1263, baseType: !170, size: 32, offset: 1152)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !288, file: !165, line: 1271, baseType: !295, size: 128, offset: 1216)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !288, file: !165, line: 1282, baseType: !5214, size: 1216, offset: 1344)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !165, line: 428, size: 1216, elements: !5215)
!5215 = !{!5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5250, !5251}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5214, file: !165, line: 432, baseType: !5, size: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5214, file: !165, line: 437, baseType: !5, size: 32, offset: 32)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5214, file: !165, line: 442, baseType: !5, size: 32, offset: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5214, file: !165, line: 447, baseType: !175, size: 32, offset: 96)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5214, file: !165, line: 461, baseType: !113, size: 32, offset: 128)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5214, file: !165, line: 469, baseType: !517, size: 32, offset: 160)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5214, file: !165, line: 476, baseType: !3968, size: 64, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5214, file: !165, line: 480, baseType: !5, size: 32, offset: 256)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5214, file: !165, line: 487, baseType: !517, size: 32, offset: 288)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5214, file: !165, line: 493, baseType: !113, size: 32, offset: 320)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5214, file: !165, line: 498, baseType: !592, size: 8, offset: 352)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5214, file: !165, line: 506, baseType: !592, size: 8, offset: 360)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5214, file: !165, line: 511, baseType: !592, size: 8, offset: 368)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5214, file: !165, line: 517, baseType: !592, size: 8, offset: 376)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_dc_modes", scope: !5214, file: !165, line: 523, baseType: !1485, size: 8, offset: 384)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5214, file: !165, line: 528, baseType: !1485, size: 8, offset: 392)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5214, file: !165, line: 533, baseType: !5233, size: 704, offset: 448)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !165, line: 185, size: 704, elements: !5234)
!5234 = !{!5235, !5245, !5247, !5248, !5249}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5233, file: !165, line: 187, baseType: !5236, size: 32)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !165, line: 163, size: 32, elements: !5237)
!5237 = !{!5238, !5239, !5240}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5236, file: !165, line: 167, baseType: !592, size: 8)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5236, file: !165, line: 171, baseType: !592, size: 8, offset: 8)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5236, file: !165, line: 175, baseType: !5241, size: 16, offset: 16)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !165, line: 146, size: 16, elements: !5242)
!5242 = !{!5243, !5244}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5241, file: !165, line: 150, baseType: !592, size: 8)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5241, file: !165, line: 154, baseType: !592, size: 8, offset: 8)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5233, file: !165, line: 195, baseType: !5246, size: 256, offset: 64)
!5246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 256, elements: !1299)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5233, file: !165, line: 203, baseType: !5246, size: 256, offset: 320)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_map", scope: !5233, file: !165, line: 206, baseType: !523, size: 64, offset: 576)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5233, file: !165, line: 209, baseType: !1485, size: 8, offset: 640)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5214, file: !165, line: 538, baseType: !592, size: 8, offset: 1152)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5214, file: !165, line: 543, baseType: !5252, size: 16, offset: 1160)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !165, line: 269, size: 16, elements: !5253)
!5253 = !{!5254, !5255}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5252, file: !165, line: 270, baseType: !1485, size: 8)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5252, file: !165, line: 271, baseType: !1485, size: 8, offset: 8)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !288, file: !165, line: 1285, baseType: !5257, size: 64, offset: 2560)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5259)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !165, line: 749, size: 896, elements: !5260)
!5260 = !{!5261, !5265, !5269, !5273, !5274, !5278, !5282, !5286, !5287, !5288, !5292, !5296, !5300, !5306}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5259, file: !165, line: 766, baseType: !5262, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!113, !287, !113}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5259, file: !165, line: 778, baseType: !5266, size: 64, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !287}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5259, file: !165, line: 806, baseType: !5270, size: 64, offset: 128)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!170, !287, !592}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5259, file: !165, line: 823, baseType: !5266, size: 64, offset: 192)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5259, file: !165, line: 848, baseType: !5275, size: 64, offset: 256)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!113, !287, !661, !661}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5259, file: !165, line: 864, baseType: !5279, size: 64, offset: 320)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!113, !287, !4454, !4283}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5259, file: !165, line: 883, baseType: !5283, size: 64, offset: 384)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!113, !287}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5259, file: !165, line: 896, baseType: !5266, size: 64, offset: 448)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5259, file: !165, line: 906, baseType: !5266, size: 64, offset: 512)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5259, file: !165, line: 939, baseType: !5289, size: 64, offset: 576)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!4992, !287}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5259, file: !165, line: 949, baseType: !5293, size: 64, offset: 640)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !287, !4992}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5259, file: !165, line: 994, baseType: !5297, size: 64, offset: 704)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!113, !287, !4992, !4454, !4283}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5259, file: !165, line: 1017, baseType: !5301, size: 64, offset: 768)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!113, !287, !5304, !4454, !4282}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4993)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5259, file: !165, line: 1031, baseType: !5307, size: 64, offset: 832)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{null, !4781, !5304}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !288, file: !165, line: 1292, baseType: !4713, size: 64, offset: 2624)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !288, file: !165, line: 1295, baseType: !4449, size: 3136, offset: 2688)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !288, file: !165, line: 1301, baseType: !4454, size: 64, offset: 5824)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !288, file: !165, line: 1312, baseType: !4454, size: 64, offset: 5888)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !288, file: !165, line: 1318, baseType: !4454, size: 64, offset: 5952)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !288, file: !165, line: 1326, baseType: !4713, size: 64, offset: 6016)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !288, file: !165, line: 1332, baseType: !4454, size: 64, offset: 6080)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !288, file: !165, line: 1359, baseType: !5318, size: 8, offset: 6144)
!5318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !285, line: 102, baseType: !1485)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !288, file: !165, line: 1367, baseType: !113, size: 32, offset: 6176)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !288, file: !165, line: 1370, baseType: !5321, size: 64, offset: 6208)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5323)
!5323 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !165, line: 35, flags: DIFlagFwdDecl)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !288, file: !165, line: 1373, baseType: !5325, size: 672, offset: 6272)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !165, line: 1043, size: 672, elements: !5326)
!5326 = !{!5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5325, file: !165, line: 1049, baseType: !2888, size: 256)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5325, file: !165, line: 1056, baseType: !592, size: 8, offset: 256)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5325, file: !165, line: 1063, baseType: !592, size: 8, offset: 264)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5325, file: !165, line: 1070, baseType: !592, size: 8, offset: 272)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5325, file: !165, line: 1077, baseType: !113, size: 32, offset: 288)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5325, file: !165, line: 1084, baseType: !113, size: 32, offset: 320)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5325, file: !165, line: 1091, baseType: !113, size: 32, offset: 352)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5325, file: !165, line: 1098, baseType: !113, size: 32, offset: 384)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5325, file: !165, line: 1105, baseType: !592, size: 8, offset: 416)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5325, file: !165, line: 1112, baseType: !592, size: 8, offset: 424)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5325, file: !165, line: 1120, baseType: !592, size: 8, offset: 432)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5325, file: !165, line: 1128, baseType: !592, size: 8, offset: 440)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5325, file: !165, line: 1136, baseType: !203, size: 32, offset: 448)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5325, file: !165, line: 1146, baseType: !5, size: 32, offset: 480)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5325, file: !165, line: 1154, baseType: !209, size: 32, offset: 512)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5325, file: !165, line: 1159, baseType: !5008, size: 128, offset: 544)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !288, file: !165, line: 1375, baseType: !203, size: 32, offset: 6944)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "override_edid", scope: !288, file: !165, line: 1377, baseType: !592, size: 8, offset: 6976)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !288, file: !165, line: 1379, baseType: !523, size: 64, offset: 7040)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !288, file: !165, line: 1386, baseType: !517, size: 32, offset: 7104)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !288, file: !165, line: 1394, baseType: !4998, size: 64, offset: 7168)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !288, file: !165, line: 1398, baseType: !5349, size: 1024, offset: 7232)
!5349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5318, size: 1024, elements: !3627)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !288, file: !165, line: 1400, baseType: !5351, size: 16, offset: 8256)
!5351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 16, elements: !1735)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !288, file: !165, line: 1405, baseType: !5353, size: 64, offset: 8288)
!5353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !1735)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !288, file: !165, line: 1410, baseType: !5353, size: 64, offset: 8352)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !288, file: !165, line: 1421, baseType: !5356, size: 64, offset: 8448)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !5358, line: 695, size: 7552, elements: !5359)
!5358 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5359 = !{!5360, !5361, !5362, !5399, !5400, !5414, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5431, !5432, !5433, !5434, !5466, !5477}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5357, file: !5358, line: 696, baseType: !735, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5357, file: !5358, line: 697, baseType: !5, size: 32, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5357, file: !5358, line: 698, baseType: !5363, size: 64, offset: 128)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5365)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !5358, line: 519, size: 320, elements: !5366)
!5366 = !{!5367, !5380, !5381, !5394, !5395}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5365, file: !5358, line: 529, baseType: !5368, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!113, !5356, !5371, !113}
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5373, line: 69, size: 128, elements: !5374)
!5373 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5374 = !{!5375, !5376, !5377, !5378}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5372, file: !5373, line: 70, baseType: !1003, size: 16)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5372, file: !5373, line: 71, baseType: !1003, size: 16, offset: 16)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5372, file: !5373, line: 84, baseType: !1003, size: 16, offset: 32)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5372, file: !5373, line: 85, baseType: !5379, size: 64, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5365, file: !5358, line: 531, baseType: !5368, size: 64, offset: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5365, file: !5358, line: 533, baseType: !5382, size: 64, offset: 128)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!113, !5356, !1002, !418, !325, !1485, !113, !5385}
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5373, line: 135, size: 272, elements: !5387)
!5387 = !{!5388, !5389, !5390}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5386, file: !5373, line: 136, baseType: !1486, size: 8)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5386, file: !5373, line: 137, baseType: !1003, size: 16)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5386, file: !5373, line: 138, baseType: !5391, size: 272)
!5391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 272, elements: !5392)
!5392 = !{!5393}
!5393 = !DISubrange(count: 34)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5365, file: !5358, line: 536, baseType: !5382, size: 64, offset: 192)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5365, file: !5358, line: 541, baseType: !5396, size: 64, offset: 256)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!517, !5356}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5357, file: !5358, line: 699, baseType: !286, size: 64, offset: 192)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5357, file: !5358, line: 702, baseType: !5401, size: 64, offset: 256)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5403)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !5358, line: 557, size: 192, elements: !5404)
!5404 = !{!5405, !5409, !5413}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5403, file: !5358, line: 558, baseType: !5406, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{null, !5356, !5}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5403, file: !5358, line: 559, baseType: !5410, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!113, !5356, !5}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5403, file: !5358, line: 560, baseType: !5406, size: 64, offset: 128)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5357, file: !5358, line: 703, baseType: !5415, size: 192, offset: 320)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5416, line: 30, size: 192, elements: !5417)
!5416 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!5417 = !{!5418, !5419, !5420}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5415, file: !5416, line: 31, baseType: !923)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5415, file: !5416, line: 32, baseType: !902, size: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5415, file: !5416, line: 33, baseType: !1354, size: 64, offset: 128)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5357, file: !5358, line: 704, baseType: !5415, size: 192, offset: 512)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5357, file: !5358, line: 706, baseType: !113, size: 32, offset: 704)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5357, file: !5358, line: 707, baseType: !113, size: 32, offset: 736)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5357, file: !5358, line: 708, baseType: !316, size: 5568, offset: 768)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5357, file: !5358, line: 709, baseType: !426, size: 64, offset: 6336)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5357, file: !5358, line: 713, baseType: !113, size: 32, offset: 6400)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5357, file: !5358, line: 714, baseType: !5428, size: 384, offset: 6432)
!5428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 384, elements: !5429)
!5429 = !{!5430}
!5430 = !DISubrange(count: 48)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5357, file: !5358, line: 715, baseType: !1668, size: 192, offset: 6848)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5357, file: !5358, line: 717, baseType: !828, size: 192, offset: 7040)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5357, file: !5358, line: 718, baseType: !295, size: 128, offset: 7232)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5357, file: !5358, line: 720, baseType: !5435, size: 64, offset: 7360)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !5358, line: 618, size: 832, elements: !5437)
!5437 = !{!5438, !5442, !5443, !5447, !5448, !5449, !5450, !5454, !5455, !5458, !5459, !5462, !5465}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5436, file: !5358, line: 619, baseType: !5439, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!113, !5356}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5436, file: !5358, line: 621, baseType: !5439, size: 64, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5436, file: !5358, line: 622, baseType: !5444, size: 64, offset: 128)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{null, !5356, !113}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5436, file: !5358, line: 623, baseType: !5439, size: 64, offset: 192)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5436, file: !5358, line: 624, baseType: !5444, size: 64, offset: 256)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5436, file: !5358, line: 625, baseType: !5439, size: 64, offset: 320)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5436, file: !5358, line: 627, baseType: !5451, size: 64, offset: 384)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !5356}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5436, file: !5358, line: 628, baseType: !5451, size: 64, offset: 448)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5436, file: !5358, line: 631, baseType: !5456, size: 64, offset: 512)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !5358, line: 631, flags: DIFlagFwdDecl)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5436, file: !5358, line: 632, baseType: !5456, size: 64, offset: 576)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5436, file: !5358, line: 633, baseType: !5460, size: 64, offset: 640)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5358, line: 633, flags: DIFlagFwdDecl)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5436, file: !5358, line: 634, baseType: !5463, size: 64, offset: 704)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5358, line: 634, flags: DIFlagFwdDecl)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5436, file: !5358, line: 635, baseType: !5463, size: 64, offset: 768)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5357, file: !5358, line: 721, baseType: !5467, size: 64, offset: 7424)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5469)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !5358, line: 664, size: 192, elements: !5470)
!5470 = !{!5471, !5472, !5473, !5474, !5475, !5476}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5469, file: !5358, line: 665, baseType: !523, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5469, file: !5358, line: 666, baseType: !113, size: 32, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5469, file: !5358, line: 667, baseType: !1002, size: 16, offset: 96)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5469, file: !5358, line: 668, baseType: !1002, size: 16, offset: 112)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5469, file: !5358, line: 669, baseType: !1002, size: 16, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5469, file: !5358, line: 670, baseType: !1002, size: 16, offset: 144)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5357, file: !5358, line: 723, baseType: !3816, size: 64, offset: 7488)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !288, file: !165, line: 1427, baseType: !113, size: 32, offset: 8512)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !288, file: !165, line: 1430, baseType: !5, size: 32, offset: 8544)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !288, file: !165, line: 1437, baseType: !592, size: 8, offset: 8576)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !288, file: !165, line: 1443, baseType: !1485, size: 8, offset: 8584)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !288, file: !165, line: 1446, baseType: !484, size: 64, offset: 8640)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !165, line: 1462, baseType: !4992, size: 64, offset: 8704)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !288, file: !165, line: 1479, baseType: !4713, size: 64, offset: 8768)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !288, file: !165, line: 1482, baseType: !592, size: 8, offset: 8832)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !288, file: !165, line: 1484, baseType: !5487, size: 64, offset: 8896)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !165, line: 1663, size: 256, elements: !5489)
!5489 = !{!5490, !5491, !5492, !5493}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5488, file: !165, line: 1664, baseType: !302, size: 32)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5488, file: !165, line: 1665, baseType: !291, size: 64, offset: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5488, file: !165, line: 1666, baseType: !113, size: 32, offset: 128)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5488, file: !165, line: 1667, baseType: !5494, size: 64, offset: 160)
!5494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 64, elements: !1463)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !288, file: !165, line: 1486, baseType: !592, size: 8, offset: 8960)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !288, file: !165, line: 1490, baseType: !5318, size: 8, offset: 8968)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !288, file: !165, line: 1490, baseType: !5318, size: 8, offset: 8976)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !288, file: !165, line: 1493, baseType: !5318, size: 8, offset: 8984)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !288, file: !165, line: 1493, baseType: !5318, size: 8, offset: 8992)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !288, file: !165, line: 1496, baseType: !4826, size: 16, offset: 9008)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !288, file: !165, line: 1496, baseType: !4826, size: 16, offset: 9024)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !288, file: !165, line: 1505, baseType: !461, size: 64, offset: 9088)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !288, file: !165, line: 1508, baseType: !5504, size: 96, offset: 9152)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !156, line: 378, size: 96, elements: !5505)
!5505 = !{!5506, !5507}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5504, file: !156, line: 382, baseType: !519, size: 32)
!5507 = !DIDerivedType(tag: DW_TAG_member, scope: !5504, file: !156, line: 386, baseType: !5508, size: 64, offset: 32)
!5508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5504, file: !156, line: 386, size: 64, elements: !5509)
!5509 = !{!5510}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5508, file: !156, line: 387, baseType: !5511, size: 64)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !156, line: 365, size: 64, elements: !5512)
!5512 = !{!5513, !5514, !5515, !5516, !5517}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5511, file: !156, line: 366, baseType: !1486, size: 8)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5511, file: !156, line: 367, baseType: !1486, size: 8, offset: 8)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5511, file: !156, line: 368, baseType: !1003, size: 16, offset: 16)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5511, file: !156, line: 369, baseType: !1003, size: 16, offset: 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5511, file: !156, line: 370, baseType: !1003, size: 16, offset: 48)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5519)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !517)
!5524 = !{!"rsp"}
!5525 = !{i32 7, !"Dwarf Version", i32 4}
!5526 = !{i32 2, !"Debug Info Version", i32 3}
!5527 = !{i32 1, !"wchar_size", i32 2}
!5528 = !{i32 1, !"Code Model", i32 2}
!5529 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5530 = distinct !DISubprogram(name: "__drm_mode_object_add", scope: !1, file: !1, line: 39, type: !5531, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5531 = !DISubroutineType(types: !5532)
!5532 = !{!113, !291, !5533, !661, !592, !4472}
!5533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!5534 = !DILocalVariable(name: "dev", arg: 1, scope: !5530, file: !1, line: 39, type: !291)
!5535 = !DILocation(line: 39, column: 46, scope: !5530)
!5536 = !DILocalVariable(name: "obj", arg: 2, scope: !5530, file: !1, line: 39, type: !5533)
!5537 = !DILocation(line: 39, column: 75, scope: !5530)
!5538 = !DILocalVariable(name: "obj_type", arg: 3, scope: !5530, file: !1, line: 40, type: !661)
!5539 = !DILocation(line: 40, column: 15, scope: !5530)
!5540 = !DILocalVariable(name: "register_obj", arg: 4, scope: !5530, file: !1, line: 40, type: !592)
!5541 = !DILocation(line: 40, column: 30, scope: !5530)
!5542 = !DILocalVariable(name: "obj_free_cb", arg: 5, scope: !5530, file: !1, line: 41, type: !4472)
!5543 = !DILocation(line: 41, column: 13, scope: !5530)
!5544 = !DILocalVariable(name: "ret", scope: !5530, file: !1, line: 43, type: !113)
!5545 = !DILocation(line: 43, column: 6, scope: !5530)
!5546 = !DILocalVariable(name: "__ret_warn_on", scope: !5547, file: !1, line: 45, type: !113)
!5547 = distinct !DILexicalBlock(scope: !5530, file: !1, line: 45, column: 2)
!5548 = !DILocation(line: 45, column: 2, scope: !5547)
!5549 = !DILocation(line: 0, scope: !5547)
!5550 = !DILocation(line: 45, column: 2, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5547, file: !1, line: 45, column: 2)
!5552 = !DILocation(line: 45, column: 2, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5551, file: !1, line: 45, column: 2)
!5554 = !DILocation(line: 45, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5553, file: !1, line: 45, column: 2)
!5556 = !DILocation(line: 45, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5553, file: !1, line: 45, column: 2)
!5558 = !{i32 -2140617948, i32 -2140617919, i32 -2140617873, i32 -2140617815, i32 -2140617761, i32 -2140617707, i32 -2140617652, i32 -2140617621}
!5559 = !DILocation(line: 45, column: 2, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5553, file: !1, line: 45, column: 2)
!5561 = !{i32 -2140617207, i32 -2140617200, i32 -2140617148, i32 -2140617117, i32 -2140617087}
!5562 = !DILocation(line: 45, column: 2, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5553, file: !1, line: 45, column: 2)
!5564 = !DILocation(line: 47, column: 14, scope: !5530)
!5565 = !DILocation(line: 47, column: 19, scope: !5530)
!5566 = !DILocation(line: 47, column: 31, scope: !5530)
!5567 = !DILocation(line: 47, column: 2, scope: !5530)
!5568 = !DILocation(line: 48, column: 19, scope: !5530)
!5569 = !DILocation(line: 48, column: 24, scope: !5530)
!5570 = !DILocation(line: 48, column: 36, scope: !5530)
!5571 = !DILocation(line: 48, column: 48, scope: !5530)
!5572 = !DILocation(line: 48, column: 63, scope: !5530)
!5573 = !DILocation(line: 48, column: 8, scope: !5530)
!5574 = !DILocation(line: 48, column: 6, scope: !5530)
!5575 = !DILocation(line: 50, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5530, file: !1, line: 50, column: 6)
!5577 = !DILocation(line: 50, column: 10, scope: !5576)
!5578 = !DILocation(line: 50, column: 6, scope: !5530)
!5579 = !DILocation(line: 55, column: 13, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5576, file: !1, line: 50, column: 16)
!5581 = !DILocation(line: 55, column: 3, scope: !5580)
!5582 = !DILocation(line: 55, column: 8, scope: !5580)
!5583 = !DILocation(line: 55, column: 11, scope: !5580)
!5584 = !DILocation(line: 56, column: 15, scope: !5580)
!5585 = !DILocation(line: 56, column: 3, scope: !5580)
!5586 = !DILocation(line: 56, column: 8, scope: !5580)
!5587 = !DILocation(line: 56, column: 13, scope: !5580)
!5588 = !DILocation(line: 57, column: 7, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5580, file: !1, line: 57, column: 7)
!5590 = !DILocation(line: 57, column: 7, scope: !5580)
!5591 = !DILocation(line: 58, column: 19, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5589, file: !1, line: 57, column: 20)
!5593 = !DILocation(line: 58, column: 4, scope: !5592)
!5594 = !DILocation(line: 58, column: 9, scope: !5592)
!5595 = !DILocation(line: 58, column: 17, scope: !5592)
!5596 = !DILocation(line: 59, column: 15, scope: !5592)
!5597 = !DILocation(line: 59, column: 20, scope: !5592)
!5598 = !DILocation(line: 59, column: 4, scope: !5592)
!5599 = !DILocation(line: 60, column: 3, scope: !5592)
!5600 = !DILocation(line: 61, column: 2, scope: !5580)
!5601 = !DILocation(line: 62, column: 16, scope: !5530)
!5602 = !DILocation(line: 62, column: 21, scope: !5530)
!5603 = !DILocation(line: 62, column: 33, scope: !5530)
!5604 = !DILocation(line: 62, column: 2, scope: !5530)
!5605 = !DILocation(line: 64, column: 9, scope: !5530)
!5606 = !DILocation(line: 64, column: 13, scope: !5530)
!5607 = !DILocation(line: 64, column: 19, scope: !5530)
!5608 = !DILocation(line: 64, column: 2, scope: !5530)
!5609 = distinct !DISubprogram(name: "kref_init", scope: !303, file: !303, line: 29, type: !4473, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5610 = !DILocalVariable(name: "kref", arg: 1, scope: !5609, file: !303, line: 29, type: !4475)
!5611 = !DILocation(line: 29, column: 43, scope: !5609)
!5612 = !DILocation(line: 31, column: 16, scope: !5609)
!5613 = !DILocation(line: 31, column: 22, scope: !5609)
!5614 = !DILocation(line: 31, column: 2, scope: !5609)
!5615 = !DILocation(line: 32, column: 1, scope: !5609)
!5616 = distinct !DISubprogram(name: "drm_mode_object_add", scope: !1, file: !1, line: 79, type: !5617, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!113, !291, !5533, !661}
!5619 = !DILocalVariable(name: "dev", arg: 1, scope: !5616, file: !1, line: 79, type: !291)
!5620 = !DILocation(line: 79, column: 44, scope: !5616)
!5621 = !DILocalVariable(name: "obj", arg: 2, scope: !5616, file: !1, line: 80, type: !5533)
!5622 = !DILocation(line: 80, column: 28, scope: !5616)
!5623 = !DILocalVariable(name: "obj_type", arg: 3, scope: !5616, file: !1, line: 80, type: !661)
!5624 = !DILocation(line: 80, column: 42, scope: !5616)
!5625 = !DILocation(line: 82, column: 31, scope: !5616)
!5626 = !DILocation(line: 82, column: 36, scope: !5616)
!5627 = !DILocation(line: 82, column: 41, scope: !5616)
!5628 = !DILocation(line: 82, column: 9, scope: !5616)
!5629 = !DILocation(line: 82, column: 2, scope: !5616)
!5630 = distinct !DISubprogram(name: "drm_mode_object_register", scope: !1, file: !1, line: 85, type: !5631, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !291, !5533}
!5633 = !DILocalVariable(name: "dev", arg: 1, scope: !5630, file: !1, line: 85, type: !291)
!5634 = !DILocation(line: 85, column: 50, scope: !5630)
!5635 = !DILocalVariable(name: "obj", arg: 2, scope: !5630, file: !1, line: 86, type: !5533)
!5636 = !DILocation(line: 86, column: 34, scope: !5630)
!5637 = !DILocation(line: 88, column: 14, scope: !5630)
!5638 = !DILocation(line: 88, column: 19, scope: !5630)
!5639 = !DILocation(line: 88, column: 31, scope: !5630)
!5640 = !DILocation(line: 88, column: 2, scope: !5630)
!5641 = !DILocation(line: 89, column: 15, scope: !5630)
!5642 = !DILocation(line: 89, column: 20, scope: !5630)
!5643 = !DILocation(line: 89, column: 32, scope: !5630)
!5644 = !DILocation(line: 89, column: 44, scope: !5630)
!5645 = !DILocation(line: 89, column: 49, scope: !5630)
!5646 = !DILocation(line: 89, column: 54, scope: !5630)
!5647 = !DILocation(line: 89, column: 2, scope: !5630)
!5648 = !DILocation(line: 90, column: 16, scope: !5630)
!5649 = !DILocation(line: 90, column: 21, scope: !5630)
!5650 = !DILocation(line: 90, column: 33, scope: !5630)
!5651 = !DILocation(line: 90, column: 2, scope: !5630)
!5652 = !DILocation(line: 91, column: 1, scope: !5630)
!5653 = distinct !DISubprogram(name: "drm_mode_object_unregister", scope: !1, file: !1, line: 104, type: !5631, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5654 = !DILocalVariable(name: "dev", arg: 1, scope: !5653, file: !1, line: 104, type: !291)
!5655 = !DILocation(line: 104, column: 52, scope: !5653)
!5656 = !DILocalVariable(name: "object", arg: 2, scope: !5653, file: !1, line: 105, type: !5533)
!5657 = !DILocation(line: 105, column: 29, scope: !5653)
!5658 = !DILocalVariable(name: "__ret_warn_on", scope: !5659, file: !1, line: 107, type: !113)
!5659 = distinct !DILexicalBlock(scope: !5653, file: !1, line: 107, column: 2)
!5660 = !DILocation(line: 107, column: 2, scope: !5659)
!5661 = !DILocation(line: 0, scope: !5659)
!5662 = !DILocation(line: 107, column: 2, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5659, file: !1, line: 107, column: 2)
!5664 = !DILocation(line: 107, column: 2, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5663, file: !1, line: 107, column: 2)
!5666 = !DILocation(line: 107, column: 2, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 107, column: 2)
!5668 = !DILocation(line: 107, column: 2, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 107, column: 2)
!5670 = !{i32 -2140616253, i32 -2140616224, i32 -2140616178, i32 -2140616120, i32 -2140616066, i32 -2140616012, i32 -2140615957, i32 -2140615926}
!5671 = !DILocation(line: 107, column: 2, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 107, column: 2)
!5673 = !{i32 -2140615511, i32 -2140615504, i32 -2140615452, i32 -2140615421, i32 -2140615391}
!5674 = !DILocation(line: 107, column: 2, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 107, column: 2)
!5676 = !DILocation(line: 109, column: 14, scope: !5653)
!5677 = !DILocation(line: 109, column: 19, scope: !5653)
!5678 = !DILocation(line: 109, column: 31, scope: !5653)
!5679 = !DILocation(line: 109, column: 2, scope: !5653)
!5680 = !DILocation(line: 110, column: 6, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5653, file: !1, line: 110, column: 6)
!5682 = !DILocation(line: 110, column: 14, scope: !5681)
!5683 = !DILocation(line: 110, column: 6, scope: !5653)
!5684 = !DILocation(line: 111, column: 15, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5681, file: !1, line: 110, column: 18)
!5686 = !DILocation(line: 111, column: 20, scope: !5685)
!5687 = !DILocation(line: 111, column: 32, scope: !5685)
!5688 = !DILocation(line: 111, column: 44, scope: !5685)
!5689 = !DILocation(line: 111, column: 52, scope: !5685)
!5690 = !DILocation(line: 111, column: 3, scope: !5685)
!5691 = !DILocation(line: 112, column: 3, scope: !5685)
!5692 = !DILocation(line: 112, column: 11, scope: !5685)
!5693 = !DILocation(line: 112, column: 14, scope: !5685)
!5694 = !DILocation(line: 113, column: 2, scope: !5685)
!5695 = !DILocation(line: 114, column: 16, scope: !5653)
!5696 = !DILocation(line: 114, column: 21, scope: !5653)
!5697 = !DILocation(line: 114, column: 33, scope: !5653)
!5698 = !DILocation(line: 114, column: 2, scope: !5653)
!5699 = !DILocation(line: 115, column: 1, scope: !5653)
!5700 = distinct !DISubprogram(name: "drm_mode_object_lease_required", scope: !1, file: !1, line: 124, type: !5701, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!592, !661}
!5703 = !DILocalVariable(name: "type", arg: 1, scope: !5700, file: !1, line: 124, type: !661)
!5704 = !DILocation(line: 124, column: 46, scope: !5700)
!5705 = !DILocation(line: 126, column: 9, scope: !5700)
!5706 = !DILocation(line: 126, column: 2, scope: !5700)
!5707 = !DILocation(line: 130, column: 3, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5700, file: !1, line: 126, column: 15)
!5709 = !DILocation(line: 132, column: 3, scope: !5708)
!5710 = !DILocation(line: 134, column: 1, scope: !5700)
!5711 = distinct !DISubprogram(name: "__drm_mode_object_find", scope: !1, file: !1, line: 136, type: !5712, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!5533, !291, !4101, !661, !661}
!5714 = !DILocalVariable(name: "dev", arg: 1, scope: !5711, file: !1, line: 136, type: !291)
!5715 = !DILocation(line: 136, column: 67, scope: !5711)
!5716 = !DILocalVariable(name: "file_priv", arg: 2, scope: !5711, file: !1, line: 137, type: !4101)
!5717 = !DILocation(line: 137, column: 30, scope: !5711)
!5718 = !DILocalVariable(name: "id", arg: 3, scope: !5711, file: !1, line: 138, type: !661)
!5719 = !DILocation(line: 138, column: 22, scope: !5711)
!5720 = !DILocalVariable(name: "type", arg: 4, scope: !5711, file: !1, line: 138, type: !661)
!5721 = !DILocation(line: 138, column: 35, scope: !5711)
!5722 = !DILocalVariable(name: "obj", scope: !5711, file: !1, line: 140, type: !5533)
!5723 = !DILocation(line: 140, column: 26, scope: !5711)
!5724 = !DILocation(line: 142, column: 14, scope: !5711)
!5725 = !DILocation(line: 142, column: 19, scope: !5711)
!5726 = !DILocation(line: 142, column: 31, scope: !5711)
!5727 = !DILocation(line: 142, column: 2, scope: !5711)
!5728 = !DILocation(line: 143, column: 18, scope: !5711)
!5729 = !DILocation(line: 143, column: 23, scope: !5711)
!5730 = !DILocation(line: 143, column: 35, scope: !5711)
!5731 = !DILocation(line: 143, column: 47, scope: !5711)
!5732 = !DILocation(line: 143, column: 8, scope: !5711)
!5733 = !DILocation(line: 143, column: 6, scope: !5711)
!5734 = !DILocation(line: 144, column: 6, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5711, file: !1, line: 144, column: 6)
!5736 = !DILocation(line: 144, column: 10, scope: !5735)
!5737 = !DILocation(line: 144, column: 13, scope: !5735)
!5738 = !DILocation(line: 144, column: 18, scope: !5735)
!5739 = !DILocation(line: 144, column: 41, scope: !5735)
!5740 = !DILocation(line: 144, column: 44, scope: !5735)
!5741 = !DILocation(line: 144, column: 49, scope: !5735)
!5742 = !DILocation(line: 144, column: 57, scope: !5735)
!5743 = !DILocation(line: 144, column: 54, scope: !5735)
!5744 = !DILocation(line: 144, column: 6, scope: !5711)
!5745 = !DILocation(line: 145, column: 7, scope: !5735)
!5746 = !DILocation(line: 145, column: 3, scope: !5735)
!5747 = !DILocation(line: 146, column: 6, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5711, file: !1, line: 146, column: 6)
!5749 = !DILocation(line: 146, column: 10, scope: !5748)
!5750 = !DILocation(line: 146, column: 13, scope: !5748)
!5751 = !DILocation(line: 146, column: 18, scope: !5748)
!5752 = !DILocation(line: 146, column: 24, scope: !5748)
!5753 = !DILocation(line: 146, column: 21, scope: !5748)
!5754 = !DILocation(line: 146, column: 6, scope: !5711)
!5755 = !DILocation(line: 147, column: 7, scope: !5748)
!5756 = !DILocation(line: 147, column: 3, scope: !5748)
!5757 = !DILocation(line: 149, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5711, file: !1, line: 149, column: 6)
!5759 = !DILocation(line: 149, column: 10, scope: !5758)
!5760 = !DILocation(line: 149, column: 44, scope: !5758)
!5761 = !DILocation(line: 149, column: 49, scope: !5758)
!5762 = !DILocation(line: 149, column: 13, scope: !5758)
!5763 = !DILocation(line: 149, column: 55, scope: !5758)
!5764 = !DILocation(line: 150, column: 23, scope: !5758)
!5765 = !DILocation(line: 150, column: 34, scope: !5758)
!5766 = !DILocation(line: 150, column: 39, scope: !5758)
!5767 = !DILocation(line: 150, column: 7, scope: !5758)
!5768 = !DILocation(line: 149, column: 6, scope: !5711)
!5769 = !DILocation(line: 151, column: 7, scope: !5758)
!5770 = !DILocation(line: 151, column: 3, scope: !5758)
!5771 = !DILocation(line: 153, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5711, file: !1, line: 153, column: 6)
!5773 = !DILocation(line: 153, column: 10, scope: !5772)
!5774 = !DILocation(line: 153, column: 13, scope: !5772)
!5775 = !DILocation(line: 153, column: 18, scope: !5772)
!5776 = !DILocation(line: 153, column: 6, scope: !5711)
!5777 = !DILocation(line: 154, column: 30, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5779, file: !1, line: 154, column: 7)
!5779 = distinct !DILexicalBlock(scope: !5772, file: !1, line: 153, column: 27)
!5780 = !DILocation(line: 154, column: 35, scope: !5778)
!5781 = !DILocation(line: 154, column: 8, scope: !5778)
!5782 = !DILocation(line: 154, column: 7, scope: !5779)
!5783 = !DILocation(line: 155, column: 8, scope: !5778)
!5784 = !DILocation(line: 155, column: 4, scope: !5778)
!5785 = !DILocation(line: 156, column: 2, scope: !5779)
!5786 = !DILocation(line: 157, column: 16, scope: !5711)
!5787 = !DILocation(line: 157, column: 21, scope: !5711)
!5788 = !DILocation(line: 157, column: 33, scope: !5711)
!5789 = !DILocation(line: 157, column: 2, scope: !5711)
!5790 = !DILocation(line: 159, column: 9, scope: !5711)
!5791 = !DILocation(line: 159, column: 2, scope: !5711)
!5792 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !303, file: !303, line: 109, type: !5793, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!113, !4475}
!5795 = !DILocalVariable(name: "kref", arg: 1, scope: !5792, file: !303, line: 109, type: !4475)
!5796 = !DILocation(line: 109, column: 66, scope: !5792)
!5797 = !DILocation(line: 111, column: 32, scope: !5792)
!5798 = !DILocation(line: 111, column: 38, scope: !5792)
!5799 = !DILocation(line: 111, column: 9, scope: !5792)
!5800 = !DILocation(line: 111, column: 2, scope: !5792)
!5801 = distinct !DISubprogram(name: "drm_mode_object_find", scope: !1, file: !1, line: 173, type: !5712, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5802 = !DILocalVariable(name: "dev", arg: 1, scope: !5801, file: !1, line: 173, type: !291)
!5803 = !DILocation(line: 173, column: 65, scope: !5801)
!5804 = !DILocalVariable(name: "file_priv", arg: 2, scope: !5801, file: !1, line: 174, type: !4101)
!5805 = !DILocation(line: 174, column: 20, scope: !5801)
!5806 = !DILocalVariable(name: "id", arg: 3, scope: !5801, file: !1, line: 175, type: !661)
!5807 = !DILocation(line: 175, column: 12, scope: !5801)
!5808 = !DILocalVariable(name: "type", arg: 4, scope: !5801, file: !1, line: 175, type: !661)
!5809 = !DILocation(line: 175, column: 25, scope: !5801)
!5810 = !DILocalVariable(name: "obj", scope: !5801, file: !1, line: 177, type: !5533)
!5811 = !DILocation(line: 177, column: 26, scope: !5801)
!5812 = !DILocation(line: 179, column: 31, scope: !5801)
!5813 = !DILocation(line: 179, column: 36, scope: !5801)
!5814 = !DILocation(line: 179, column: 47, scope: !5801)
!5815 = !DILocation(line: 179, column: 51, scope: !5801)
!5816 = !DILocation(line: 179, column: 8, scope: !5801)
!5817 = !DILocation(line: 179, column: 6, scope: !5801)
!5818 = !DILocation(line: 180, column: 9, scope: !5801)
!5819 = !DILocation(line: 180, column: 2, scope: !5801)
!5820 = distinct !DISubprogram(name: "drm_mode_object_put", scope: !1, file: !1, line: 192, type: !5821, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{null, !5533}
!5823 = !DILocalVariable(name: "obj", arg: 1, scope: !5820, file: !1, line: 192, type: !5533)
!5824 = !DILocation(line: 192, column: 50, scope: !5820)
!5825 = !DILocation(line: 194, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5820, file: !1, line: 194, column: 6)
!5827 = !DILocation(line: 194, column: 11, scope: !5826)
!5828 = !DILocation(line: 194, column: 6, scope: !5820)
!5829 = !DILocation(line: 195, column: 3, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5826, file: !1, line: 194, column: 20)
!5831 = !DILocation(line: 196, column: 13, scope: !5830)
!5832 = !DILocation(line: 196, column: 18, scope: !5830)
!5833 = !DILocation(line: 196, column: 28, scope: !5830)
!5834 = !DILocation(line: 196, column: 33, scope: !5830)
!5835 = !DILocation(line: 196, column: 3, scope: !5830)
!5836 = !DILocation(line: 197, column: 2, scope: !5830)
!5837 = !DILocation(line: 198, column: 1, scope: !5820)
!5838 = distinct !DISubprogram(name: "kref_read", scope: !303, file: !303, line: 34, type: !5839, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!5, !5841}
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!5843 = !DILocalVariable(name: "kref", arg: 1, scope: !5838, file: !303, line: 34, type: !5841)
!5844 = !DILocation(line: 34, column: 57, scope: !5838)
!5845 = !DILocation(line: 36, column: 24, scope: !5838)
!5846 = !DILocation(line: 36, column: 30, scope: !5838)
!5847 = !DILocation(line: 36, column: 9, scope: !5838)
!5848 = !DILocation(line: 36, column: 2, scope: !5838)
!5849 = distinct !DISubprogram(name: "kref_put", scope: !303, file: !303, line: 62, type: !5850, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!113, !4475, !4472}
!5852 = !DILocalVariable(name: "kref", arg: 1, scope: !5849, file: !303, line: 62, type: !4475)
!5853 = !DILocation(line: 62, column: 41, scope: !5849)
!5854 = !DILocalVariable(name: "release", arg: 2, scope: !5849, file: !303, line: 62, type: !4472)
!5855 = !DILocation(line: 62, column: 54, scope: !5849)
!5856 = !DILocation(line: 64, column: 29, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5849, file: !303, line: 64, column: 6)
!5858 = !DILocation(line: 64, column: 35, scope: !5857)
!5859 = !DILocation(line: 64, column: 6, scope: !5857)
!5860 = !DILocation(line: 64, column: 6, scope: !5849)
!5861 = !DILocation(line: 65, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5857, file: !303, line: 64, column: 46)
!5863 = !DILocation(line: 65, column: 11, scope: !5862)
!5864 = !DILocation(line: 66, column: 3, scope: !5862)
!5865 = !DILocation(line: 68, column: 2, scope: !5849)
!5866 = !DILocation(line: 69, column: 1, scope: !5849)
!5867 = distinct !DISubprogram(name: "drm_mode_object_get", scope: !1, file: !1, line: 209, type: !5821, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5868 = !DILocalVariable(name: "obj", arg: 1, scope: !5867, file: !1, line: 209, type: !5533)
!5869 = !DILocation(line: 209, column: 50, scope: !5867)
!5870 = !DILocation(line: 211, column: 6, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5867, file: !1, line: 211, column: 6)
!5872 = !DILocation(line: 211, column: 11, scope: !5871)
!5873 = !DILocation(line: 211, column: 6, scope: !5867)
!5874 = !DILocation(line: 212, column: 3, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5871, file: !1, line: 211, column: 20)
!5876 = !DILocation(line: 213, column: 13, scope: !5875)
!5877 = !DILocation(line: 213, column: 18, scope: !5875)
!5878 = !DILocation(line: 213, column: 3, scope: !5875)
!5879 = !DILocation(line: 214, column: 2, scope: !5875)
!5880 = !DILocation(line: 215, column: 1, scope: !5867)
!5881 = distinct !DISubprogram(name: "kref_get", scope: !303, file: !303, line: 43, type: !4473, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5882 = !DILocalVariable(name: "kref", arg: 1, scope: !5881, file: !303, line: 43, type: !4475)
!5883 = !DILocation(line: 43, column: 42, scope: !5881)
!5884 = !DILocation(line: 45, column: 16, scope: !5881)
!5885 = !DILocation(line: 45, column: 22, scope: !5881)
!5886 = !DILocation(line: 45, column: 2, scope: !5881)
!5887 = !DILocation(line: 46, column: 1, scope: !5881)
!5888 = distinct !DISubprogram(name: "drm_object_attach_property", scope: !1, file: !1, line: 231, type: !5889, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{null, !5533, !4454, !4283}
!5891 = !DILocalVariable(name: "obj", arg: 1, scope: !5888, file: !1, line: 231, type: !5533)
!5892 = !DILocation(line: 231, column: 57, scope: !5888)
!5893 = !DILocalVariable(name: "property", arg: 2, scope: !5888, file: !1, line: 232, type: !4454)
!5894 = !DILocation(line: 232, column: 26, scope: !5888)
!5895 = !DILocalVariable(name: "init_val", arg: 3, scope: !5888, file: !1, line: 233, type: !4283)
!5896 = !DILocation(line: 233, column: 14, scope: !5888)
!5897 = !DILocalVariable(name: "count", scope: !5888, file: !1, line: 235, type: !113)
!5898 = !DILocation(line: 235, column: 6, scope: !5888)
!5899 = !DILocation(line: 235, column: 14, scope: !5888)
!5900 = !DILocation(line: 235, column: 19, scope: !5888)
!5901 = !DILocation(line: 235, column: 31, scope: !5888)
!5902 = !DILocalVariable(name: "dev", scope: !5888, file: !1, line: 236, type: !291)
!5903 = !DILocation(line: 236, column: 21, scope: !5888)
!5904 = !DILocation(line: 236, column: 27, scope: !5888)
!5905 = !DILocation(line: 236, column: 37, scope: !5888)
!5906 = !DILocation(line: 239, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5888, file: !1, line: 239, column: 6)
!5908 = !DILocation(line: 239, column: 11, scope: !5907)
!5909 = !DILocation(line: 239, column: 16, scope: !5907)
!5910 = !DILocation(line: 239, column: 6, scope: !5888)
!5911 = !DILocalVariable(name: "connector", scope: !5912, file: !1, line: 240, type: !287)
!5912 = distinct !DILexicalBlock(scope: !5907, file: !1, line: 239, column: 46)
!5913 = !DILocation(line: 240, column: 25, scope: !5912)
!5914 = !DILocalVariable(name: "__mptr", scope: !5915, file: !1, line: 240, type: !286)
!5915 = distinct !DILexicalBlock(scope: !5912, file: !1, line: 240, column: 37)
!5916 = !DILocation(line: 240, column: 37, scope: !5915)
!5917 = !DILocation(line: 240, column: 37, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5915, file: !1, line: 240, column: 37)
!5919 = !DILocalVariable(name: "__ret_warn_on", scope: !5920, file: !1, line: 242, type: !113)
!5920 = distinct !DILexicalBlock(scope: !5912, file: !1, line: 242, column: 3)
!5921 = !DILocation(line: 242, column: 3, scope: !5920)
!5922 = !DILocation(line: 0, scope: !5920)
!5923 = !DILocation(line: 242, column: 3, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5920, file: !1, line: 242, column: 3)
!5925 = !DILocation(line: 242, column: 3, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5924, file: !1, line: 242, column: 3)
!5927 = !DILocation(line: 242, column: 3, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5926, file: !1, line: 242, column: 3)
!5929 = !DILocation(line: 242, column: 3, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5926, file: !1, line: 242, column: 3)
!5931 = !{i32 -2140612617, i32 -2140612588, i32 -2140612542, i32 -2140612484, i32 -2140612430, i32 -2140612376, i32 -2140612321, i32 -2140612290}
!5932 = !DILocation(line: 242, column: 3, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5926, file: !1, line: 242, column: 3)
!5934 = !{i32 -2140611875, i32 -2140611868, i32 -2140611816, i32 -2140611785, i32 -2140611755}
!5935 = !DILocation(line: 242, column: 3, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5926, file: !1, line: 242, column: 3)
!5937 = !DILocation(line: 244, column: 2, scope: !5912)
!5938 = !DILocalVariable(name: "__ret_warn_on", scope: !5939, file: !1, line: 245, type: !113)
!5939 = distinct !DILexicalBlock(scope: !5940, file: !1, line: 245, column: 3)
!5940 = distinct !DILexicalBlock(scope: !5907, file: !1, line: 244, column: 9)
!5941 = !DILocation(line: 245, column: 3, scope: !5939)
!5942 = !DILocation(line: 0, scope: !5939)
!5943 = !DILocation(line: 245, column: 3, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5939, file: !1, line: 245, column: 3)
!5945 = !DILocation(line: 245, column: 3, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5944, file: !1, line: 245, column: 3)
!5947 = !DILocation(line: 245, column: 3, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5946, file: !1, line: 245, column: 3)
!5949 = !DILocation(line: 245, column: 3, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5946, file: !1, line: 245, column: 3)
!5951 = !{i32 -2140611146, i32 -2140611117, i32 -2140611071, i32 -2140611013, i32 -2140610959, i32 -2140610905, i32 -2140610850, i32 -2140610819}
!5952 = !DILocation(line: 245, column: 3, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5946, file: !1, line: 245, column: 3)
!5954 = !{i32 -2140610404, i32 -2140610397, i32 -2140610345, i32 -2140610314, i32 -2140610284}
!5955 = !DILocation(line: 245, column: 3, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5946, file: !1, line: 245, column: 3)
!5957 = !DILocation(line: 248, column: 6, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5888, file: !1, line: 248, column: 6)
!5959 = !DILocation(line: 248, column: 12, scope: !5958)
!5960 = !DILocation(line: 248, column: 6, scope: !5888)
!5961 = !DILocalVariable(name: "__ret_warn_on", scope: !5962, file: !1, line: 249, type: !113)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !1, line: 249, column: 3)
!5963 = distinct !DILexicalBlock(scope: !5958, file: !1, line: 248, column: 40)
!5964 = !DILocation(line: 249, column: 3, scope: !5962)
!5965 = !DILocation(line: 249, column: 3, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5962, file: !1, line: 249, column: 3)
!5967 = !DILocation(line: 249, column: 3, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5966, file: !1, line: 249, column: 3)
!5969 = !DILocation(line: 249, column: 3, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5968, file: !1, line: 249, column: 3)
!5971 = !DILocation(line: 249, column: 3, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5968, file: !1, line: 249, column: 3)
!5973 = !DILocation(line: 249, column: 3, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 249, column: 3)
!5975 = !DILocation(line: 249, column: 3, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 249, column: 3)
!5977 = !{i32 -2140609162, i32 -2140609133, i32 -2140609087, i32 -2140609029, i32 -2140608975, i32 -2140608921, i32 -2140608866, i32 -2140608835}
!5978 = !DILocation(line: 249, column: 3, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 249, column: 3)
!5980 = !{i32 -2140608409, i32 -2140608402, i32 -2140608350, i32 -2140608319, i32 -2140608289}
!5981 = !DILocation(line: 249, column: 3, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 249, column: 3)
!5983 = !DILocation(line: 249, column: 3, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5968, file: !1, line: 249, column: 3)
!5985 = !DILocation(line: 253, column: 3, scope: !5963)
!5986 = !DILocation(line: 256, column: 39, scope: !5888)
!5987 = !DILocation(line: 256, column: 2, scope: !5888)
!5988 = !DILocation(line: 256, column: 7, scope: !5888)
!5989 = !DILocation(line: 256, column: 19, scope: !5888)
!5990 = !DILocation(line: 256, column: 30, scope: !5888)
!5991 = !DILocation(line: 256, column: 37, scope: !5888)
!5992 = !DILocation(line: 257, column: 35, scope: !5888)
!5993 = !DILocation(line: 257, column: 2, scope: !5888)
!5994 = !DILocation(line: 257, column: 7, scope: !5888)
!5995 = !DILocation(line: 257, column: 19, scope: !5888)
!5996 = !DILocation(line: 257, column: 26, scope: !5888)
!5997 = !DILocation(line: 257, column: 33, scope: !5888)
!5998 = !DILocation(line: 258, column: 2, scope: !5888)
!5999 = !DILocation(line: 258, column: 7, scope: !5888)
!6000 = !DILocation(line: 258, column: 19, scope: !5888)
!6001 = !DILocation(line: 258, column: 24, scope: !5888)
!6002 = !DILocation(line: 259, column: 1, scope: !5888)
!6003 = distinct !DISubprogram(name: "drm_object_property_set_value", scope: !1, file: !1, line: 281, type: !6004, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!113, !5533, !4454, !4283}
!6006 = !DILocalVariable(name: "obj", arg: 1, scope: !6003, file: !1, line: 281, type: !5533)
!6007 = !DILocation(line: 281, column: 59, scope: !6003)
!6008 = !DILocalVariable(name: "property", arg: 2, scope: !6003, file: !1, line: 282, type: !4454)
!6009 = !DILocation(line: 282, column: 28, scope: !6003)
!6010 = !DILocalVariable(name: "val", arg: 3, scope: !6003, file: !1, line: 282, type: !4283)
!6011 = !DILocation(line: 282, column: 47, scope: !6003)
!6012 = !DILocalVariable(name: "i", scope: !6003, file: !1, line: 284, type: !113)
!6013 = !DILocation(line: 284, column: 6, scope: !6003)
!6014 = !DILocalVariable(name: "__ret_warn_on", scope: !6015, file: !1, line: 286, type: !113)
!6015 = distinct !DILexicalBlock(scope: !6003, file: !1, line: 286, column: 2)
!6016 = !DILocation(line: 286, column: 2, scope: !6015)
!6017 = !DILocation(line: 0, scope: !6015)
!6018 = !DILocation(line: 286, column: 2, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6015, file: !1, line: 286, column: 2)
!6020 = !DILocation(line: 286, column: 2, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6019, file: !1, line: 286, column: 2)
!6022 = !DILocation(line: 286, column: 2, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6021, file: !1, line: 286, column: 2)
!6024 = !DILocation(line: 286, column: 2, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6021, file: !1, line: 286, column: 2)
!6026 = !{i32 -2140607507, i32 -2140607478, i32 -2140607432, i32 -2140607374, i32 -2140607320, i32 -2140607266, i32 -2140607211, i32 -2140607180}
!6027 = !DILocation(line: 286, column: 2, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6021, file: !1, line: 286, column: 2)
!6029 = !{i32 -2140606765, i32 -2140606758, i32 -2140606706, i32 -2140606675, i32 -2140606645}
!6030 = !DILocation(line: 286, column: 2, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6021, file: !1, line: 286, column: 2)
!6032 = !DILocation(line: 289, column: 9, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6003, file: !1, line: 289, column: 2)
!6034 = !DILocation(line: 289, column: 7, scope: !6033)
!6035 = !DILocation(line: 289, column: 14, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6033, file: !1, line: 289, column: 2)
!6037 = !DILocation(line: 289, column: 18, scope: !6036)
!6038 = !DILocation(line: 289, column: 23, scope: !6036)
!6039 = !DILocation(line: 289, column: 35, scope: !6036)
!6040 = !DILocation(line: 289, column: 16, scope: !6036)
!6041 = !DILocation(line: 289, column: 2, scope: !6033)
!6042 = !DILocation(line: 290, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !1, line: 290, column: 7)
!6044 = distinct !DILexicalBlock(scope: !6036, file: !1, line: 289, column: 47)
!6045 = !DILocation(line: 290, column: 12, scope: !6043)
!6046 = !DILocation(line: 290, column: 24, scope: !6043)
!6047 = !DILocation(line: 290, column: 35, scope: !6043)
!6048 = !DILocation(line: 290, column: 41, scope: !6043)
!6049 = !DILocation(line: 290, column: 38, scope: !6043)
!6050 = !DILocation(line: 290, column: 7, scope: !6044)
!6051 = !DILocation(line: 291, column: 33, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6043, file: !1, line: 290, column: 51)
!6053 = !DILocation(line: 291, column: 4, scope: !6052)
!6054 = !DILocation(line: 291, column: 9, scope: !6052)
!6055 = !DILocation(line: 291, column: 21, scope: !6052)
!6056 = !DILocation(line: 291, column: 28, scope: !6052)
!6057 = !DILocation(line: 291, column: 31, scope: !6052)
!6058 = !DILocation(line: 292, column: 4, scope: !6052)
!6059 = !DILocation(line: 294, column: 2, scope: !6044)
!6060 = !DILocation(line: 289, column: 43, scope: !6036)
!6061 = !DILocation(line: 289, column: 2, scope: !6036)
!6062 = distinct !{!6062, !6041, !6063}
!6063 = !DILocation(line: 294, column: 2, scope: !6033)
!6064 = !DILocation(line: 296, column: 2, scope: !6003)
!6065 = !DILocation(line: 297, column: 1, scope: !6003)
!6066 = distinct !DISubprogram(name: "drm_drv_uses_atomic_modeset", scope: !260, file: !260, line: 704, type: !6067, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{!592, !291}
!6069 = !DILocalVariable(name: "dev", arg: 1, scope: !6066, file: !260, line: 704, type: !291)
!6070 = !DILocation(line: 704, column: 67, scope: !6066)
!6071 = !DILocation(line: 706, column: 32, scope: !6066)
!6072 = !DILocation(line: 706, column: 9, scope: !6066)
!6073 = !DILocation(line: 706, column: 52, scope: !6066)
!6074 = !DILocation(line: 707, column: 4, scope: !6066)
!6075 = !DILocation(line: 707, column: 9, scope: !6066)
!6076 = !DILocation(line: 707, column: 21, scope: !6066)
!6077 = !DILocation(line: 707, column: 27, scope: !6066)
!6078 = !DILocation(line: 707, column: 30, scope: !6066)
!6079 = !DILocation(line: 707, column: 35, scope: !6066)
!6080 = !DILocation(line: 707, column: 47, scope: !6066)
!6081 = !DILocation(line: 707, column: 54, scope: !6066)
!6082 = !DILocation(line: 707, column: 68, scope: !6066)
!6083 = !DILocation(line: 0, scope: !6066)
!6084 = !DILocation(line: 706, column: 2, scope: !6066)
!6085 = distinct !DISubprogram(name: "drm_object_property_get_value", scope: !1, file: !1, line: 342, type: !6086, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!113, !5533, !4454, !4282}
!6088 = !DILocalVariable(name: "obj", arg: 1, scope: !6085, file: !1, line: 342, type: !5533)
!6089 = !DILocation(line: 342, column: 59, scope: !6085)
!6090 = !DILocalVariable(name: "property", arg: 2, scope: !6085, file: !1, line: 343, type: !4454)
!6091 = !DILocation(line: 343, column: 28, scope: !6085)
!6092 = !DILocalVariable(name: "val", arg: 3, scope: !6085, file: !1, line: 343, type: !4282)
!6093 = !DILocation(line: 343, column: 48, scope: !6085)
!6094 = !DILocalVariable(name: "__ret_warn_on", scope: !6095, file: !1, line: 345, type: !113)
!6095 = distinct !DILexicalBlock(scope: !6085, file: !1, line: 345, column: 2)
!6096 = !DILocation(line: 345, column: 2, scope: !6095)
!6097 = !DILocation(line: 345, column: 2, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6095, file: !1, line: 345, column: 2)
!6099 = !DILocation(line: 345, column: 2, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6098, file: !1, line: 345, column: 2)
!6101 = !DILocation(line: 345, column: 2, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6100, file: !1, line: 345, column: 2)
!6103 = !DILocation(line: 345, column: 2, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6100, file: !1, line: 345, column: 2)
!6105 = !{i32 -2140605901, i32 -2140605872, i32 -2140605826, i32 -2140605768, i32 -2140605714, i32 -2140605660, i32 -2140605605, i32 -2140605574}
!6106 = !DILocation(line: 345, column: 2, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6100, file: !1, line: 345, column: 2)
!6108 = !{i32 -2140605159, i32 -2140605152, i32 -2140605100, i32 -2140605069, i32 -2140605039}
!6109 = !DILocation(line: 345, column: 2, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6100, file: !1, line: 345, column: 2)
!6111 = !DILocation(line: 347, column: 41, scope: !6085)
!6112 = !DILocation(line: 347, column: 46, scope: !6085)
!6113 = !DILocation(line: 347, column: 56, scope: !6085)
!6114 = !DILocation(line: 347, column: 9, scope: !6085)
!6115 = !DILocation(line: 347, column: 2, scope: !6085)
!6116 = distinct !DISubprogram(name: "__drm_object_property_get_value", scope: !1, file: !1, line: 300, type: !6086, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6117 = !DILocalVariable(name: "obj", arg: 1, scope: !6116, file: !1, line: 300, type: !5533)
!6118 = !DILocation(line: 300, column: 68, scope: !6116)
!6119 = !DILocalVariable(name: "property", arg: 2, scope: !6116, file: !1, line: 301, type: !4454)
!6120 = !DILocation(line: 301, column: 30, scope: !6116)
!6121 = !DILocalVariable(name: "val", arg: 3, scope: !6116, file: !1, line: 302, type: !4282)
!6122 = !DILocation(line: 302, column: 19, scope: !6116)
!6123 = !DILocalVariable(name: "i", scope: !6116, file: !1, line: 304, type: !113)
!6124 = !DILocation(line: 304, column: 6, scope: !6116)
!6125 = !DILocation(line: 310, column: 34, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6116, file: !1, line: 310, column: 6)
!6127 = !DILocation(line: 310, column: 44, scope: !6126)
!6128 = !DILocation(line: 310, column: 6, scope: !6126)
!6129 = !DILocation(line: 310, column: 49, scope: !6126)
!6130 = !DILocation(line: 311, column: 6, scope: !6126)
!6131 = !DILocation(line: 311, column: 16, scope: !6126)
!6132 = !DILocation(line: 311, column: 22, scope: !6126)
!6133 = !DILocation(line: 310, column: 6, scope: !6116)
!6134 = !DILocation(line: 312, column: 34, scope: !6126)
!6135 = !DILocation(line: 312, column: 39, scope: !6126)
!6136 = !DILocation(line: 312, column: 49, scope: !6126)
!6137 = !DILocation(line: 312, column: 10, scope: !6126)
!6138 = !DILocation(line: 312, column: 3, scope: !6126)
!6139 = !DILocation(line: 314, column: 9, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6116, file: !1, line: 314, column: 2)
!6141 = !DILocation(line: 314, column: 7, scope: !6140)
!6142 = !DILocation(line: 314, column: 14, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6140, file: !1, line: 314, column: 2)
!6144 = !DILocation(line: 314, column: 18, scope: !6143)
!6145 = !DILocation(line: 314, column: 23, scope: !6143)
!6146 = !DILocation(line: 314, column: 35, scope: !6143)
!6147 = !DILocation(line: 314, column: 16, scope: !6143)
!6148 = !DILocation(line: 314, column: 2, scope: !6140)
!6149 = !DILocation(line: 315, column: 7, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6151, file: !1, line: 315, column: 7)
!6151 = distinct !DILexicalBlock(scope: !6143, file: !1, line: 314, column: 47)
!6152 = !DILocation(line: 315, column: 12, scope: !6150)
!6153 = !DILocation(line: 315, column: 24, scope: !6150)
!6154 = !DILocation(line: 315, column: 35, scope: !6150)
!6155 = !DILocation(line: 315, column: 41, scope: !6150)
!6156 = !DILocation(line: 315, column: 38, scope: !6150)
!6157 = !DILocation(line: 315, column: 7, scope: !6151)
!6158 = !DILocation(line: 316, column: 11, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6150, file: !1, line: 315, column: 51)
!6160 = !DILocation(line: 316, column: 16, scope: !6159)
!6161 = !DILocation(line: 316, column: 28, scope: !6159)
!6162 = !DILocation(line: 316, column: 35, scope: !6159)
!6163 = !DILocation(line: 316, column: 5, scope: !6159)
!6164 = !DILocation(line: 316, column: 9, scope: !6159)
!6165 = !DILocation(line: 317, column: 4, scope: !6159)
!6166 = !DILocation(line: 320, column: 2, scope: !6151)
!6167 = !DILocation(line: 314, column: 43, scope: !6143)
!6168 = !DILocation(line: 314, column: 2, scope: !6143)
!6169 = distinct !{!6169, !6148, !6170}
!6170 = !DILocation(line: 320, column: 2, scope: !6140)
!6171 = !DILocation(line: 322, column: 2, scope: !6116)
!6172 = !DILocation(line: 323, column: 1, scope: !6116)
!6173 = distinct !DISubprogram(name: "drm_mode_object_get_properties", scope: !1, file: !1, line: 352, type: !6174, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!113, !5533, !592, !4211, !4282, !4211}
!6176 = !DILocalVariable(name: "obj", arg: 1, scope: !6173, file: !1, line: 352, type: !5533)
!6177 = !DILocation(line: 352, column: 60, scope: !6173)
!6178 = !DILocalVariable(name: "atomic", arg: 2, scope: !6173, file: !1, line: 352, type: !592)
!6179 = !DILocation(line: 352, column: 70, scope: !6173)
!6180 = !DILocalVariable(name: "prop_ptr", arg: 3, scope: !6173, file: !1, line: 353, type: !4211)
!6181 = !DILocation(line: 353, column: 25, scope: !6173)
!6182 = !DILocalVariable(name: "prop_values", arg: 4, scope: !6173, file: !1, line: 354, type: !4282)
!6183 = !DILocation(line: 354, column: 25, scope: !6173)
!6184 = !DILocalVariable(name: "arg_count_props", arg: 5, scope: !6173, file: !1, line: 355, type: !4211)
!6185 = !DILocation(line: 355, column: 18, scope: !6173)
!6186 = !DILocalVariable(name: "i", scope: !6173, file: !1, line: 357, type: !113)
!6187 = !DILocation(line: 357, column: 6, scope: !6173)
!6188 = !DILocalVariable(name: "ret", scope: !6173, file: !1, line: 357, type: !113)
!6189 = !DILocation(line: 357, column: 9, scope: !6173)
!6190 = !DILocalVariable(name: "count", scope: !6173, file: !1, line: 357, type: !113)
!6191 = !DILocation(line: 357, column: 14, scope: !6173)
!6192 = !DILocation(line: 359, column: 9, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6173, file: !1, line: 359, column: 2)
!6194 = !DILocation(line: 359, column: 20, scope: !6193)
!6195 = !DILocation(line: 359, column: 7, scope: !6193)
!6196 = !DILocation(line: 359, column: 25, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6193, file: !1, line: 359, column: 2)
!6198 = !DILocation(line: 359, column: 29, scope: !6197)
!6199 = !DILocation(line: 359, column: 34, scope: !6197)
!6200 = !DILocation(line: 359, column: 46, scope: !6197)
!6201 = !DILocation(line: 359, column: 27, scope: !6197)
!6202 = !DILocation(line: 359, column: 2, scope: !6193)
!6203 = !DILocalVariable(name: "prop", scope: !6204, file: !1, line: 360, type: !4454)
!6204 = distinct !DILexicalBlock(scope: !6197, file: !1, line: 359, column: 58)
!6205 = !DILocation(line: 360, column: 24, scope: !6204)
!6206 = !DILocation(line: 360, column: 31, scope: !6204)
!6207 = !DILocation(line: 360, column: 36, scope: !6204)
!6208 = !DILocation(line: 360, column: 48, scope: !6204)
!6209 = !DILocation(line: 360, column: 59, scope: !6204)
!6210 = !DILocalVariable(name: "val", scope: !6204, file: !1, line: 361, type: !4283)
!6211 = !DILocation(line: 361, column: 12, scope: !6204)
!6212 = !DILocation(line: 363, column: 8, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6204, file: !1, line: 363, column: 7)
!6214 = !DILocation(line: 363, column: 14, scope: !6213)
!6215 = !DILocation(line: 363, column: 20, scope: !6213)
!6216 = !DILocation(line: 363, column: 44, scope: !6213)
!6217 = !DILocation(line: 363, column: 48, scope: !6213)
!6218 = !DILocation(line: 363, column: 7, scope: !6204)
!6219 = !DILocation(line: 364, column: 4, scope: !6213)
!6220 = !DILocation(line: 366, column: 8, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6204, file: !1, line: 366, column: 7)
!6222 = !DILocation(line: 366, column: 7, scope: !6221)
!6223 = !DILocation(line: 366, column: 26, scope: !6221)
!6224 = !DILocation(line: 366, column: 24, scope: !6221)
!6225 = !DILocation(line: 366, column: 7, scope: !6204)
!6226 = !DILocation(line: 367, column: 42, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6221, file: !1, line: 366, column: 33)
!6228 = !DILocation(line: 367, column: 47, scope: !6227)
!6229 = !DILocation(line: 367, column: 10, scope: !6227)
!6230 = !DILocation(line: 367, column: 8, scope: !6227)
!6231 = !DILocation(line: 368, column: 8, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6227, file: !1, line: 368, column: 8)
!6233 = !DILocation(line: 368, column: 8, scope: !6227)
!6234 = !DILocation(line: 369, column: 12, scope: !6232)
!6235 = !DILocation(line: 369, column: 5, scope: !6232)
!6236 = !DILocation(line: 371, column: 8, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !1, line: 371, column: 8)
!6238 = distinct !DILexicalBlock(scope: !6227, file: !1, line: 371, column: 8)
!6239 = !DILocalVariable(name: "__ret_pu", scope: !6240, file: !1, line: 371, type: !113)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !1, line: 371, column: 8)
!6241 = !DILocation(line: 371, column: 8, scope: !6240)
!6242 = !DILocalVariable(name: "__ptr_pu", scope: !6240, file: !1, line: 371, type: !286)
!6243 = !DILocalVariable(name: "__val_pu", scope: !6240, file: !1, line: 371, type: !661)
!6244 = !{i32 -2140604509}
!6245 = !DILocation(line: 371, column: 8, scope: !6238)
!6246 = !DILocation(line: 371, column: 8, scope: !6227)
!6247 = !DILocation(line: 372, column: 5, scope: !6238)
!6248 = !DILocation(line: 374, column: 8, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6250, file: !1, line: 374, column: 8)
!6250 = distinct !DILexicalBlock(scope: !6227, file: !1, line: 374, column: 8)
!6251 = !DILocalVariable(name: "__ret_pu", scope: !6252, file: !1, line: 374, type: !113)
!6252 = distinct !DILexicalBlock(scope: !6249, file: !1, line: 374, column: 8)
!6253 = !DILocation(line: 374, column: 8, scope: !6252)
!6254 = !DILocalVariable(name: "__ptr_pu", scope: !6252, file: !1, line: 374, type: !286)
!6255 = !DILocalVariable(name: "__val_pu", scope: !6252, file: !1, line: 374, type: !4283)
!6256 = !{i32 -2140603689}
!6257 = !DILocation(line: 374, column: 8, scope: !6250)
!6258 = !DILocation(line: 374, column: 8, scope: !6227)
!6259 = !DILocation(line: 375, column: 5, scope: !6250)
!6260 = !DILocation(line: 376, column: 3, scope: !6227)
!6261 = !DILocation(line: 378, column: 8, scope: !6204)
!6262 = !DILocation(line: 379, column: 2, scope: !6204)
!6263 = !DILocation(line: 359, column: 54, scope: !6197)
!6264 = !DILocation(line: 359, column: 2, scope: !6197)
!6265 = distinct !{!6265, !6202, !6266}
!6266 = !DILocation(line: 379, column: 2, scope: !6193)
!6267 = !DILocation(line: 380, column: 21, scope: !6173)
!6268 = !DILocation(line: 380, column: 3, scope: !6173)
!6269 = !DILocation(line: 380, column: 19, scope: !6173)
!6270 = !DILocation(line: 382, column: 2, scope: !6173)
!6271 = !DILocation(line: 383, column: 1, scope: !6173)
!6272 = distinct !DISubprogram(name: "might_fault", scope: !6273, file: !6273, line: 315, type: !2066, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6273 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!6274 = !DILocation(line: 315, column: 40, scope: !6272)
!6275 = distinct !DISubprogram(name: "drm_mode_obj_get_properties_ioctl", scope: !1, file: !1, line: 400, type: !4307, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6276 = !DILocalVariable(name: "dev", arg: 1, scope: !6275, file: !1, line: 400, type: !291)
!6277 = !DILocation(line: 400, column: 58, scope: !6275)
!6278 = !DILocalVariable(name: "data", arg: 2, scope: !6275, file: !1, line: 400, type: !286)
!6279 = !DILocation(line: 400, column: 69, scope: !6275)
!6280 = !DILocalVariable(name: "file_priv", arg: 3, scope: !6275, file: !1, line: 401, type: !4101)
!6281 = !DILocation(line: 401, column: 28, scope: !6275)
!6282 = !DILocalVariable(name: "arg", scope: !6275, file: !1, line: 403, type: !6283)
!6283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6284, size: 64)
!6284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_obj_get_properties", file: !188, line: 459, size: 256, elements: !6285)
!6285 = !{!6286, !6287, !6288, !6289, !6290}
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "props_ptr", scope: !6284, file: !188, line: 460, baseType: !524, size: 64)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "prop_values_ptr", scope: !6284, file: !188, line: 461, baseType: !524, size: 64, offset: 64)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "count_props", scope: !6284, file: !188, line: 462, baseType: !519, size: 32, offset: 128)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "obj_id", scope: !6284, file: !188, line: 463, baseType: !519, size: 32, offset: 160)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !6284, file: !188, line: 464, baseType: !519, size: 32, offset: 192)
!6291 = !DILocation(line: 403, column: 38, scope: !6275)
!6292 = !DILocation(line: 403, column: 44, scope: !6275)
!6293 = !DILocalVariable(name: "obj", scope: !6275, file: !1, line: 404, type: !5533)
!6294 = !DILocation(line: 404, column: 26, scope: !6275)
!6295 = !DILocalVariable(name: "ctx", scope: !6275, file: !1, line: 405, type: !4389)
!6296 = !DILocation(line: 405, column: 33, scope: !6275)
!6297 = !DILocalVariable(name: "ret", scope: !6275, file: !1, line: 406, type: !113)
!6298 = !DILocation(line: 406, column: 6, scope: !6275)
!6299 = !DILocation(line: 408, column: 30, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 408, column: 6)
!6301 = !DILocation(line: 408, column: 7, scope: !6300)
!6302 = !DILocation(line: 408, column: 6, scope: !6275)
!6303 = !DILocation(line: 409, column: 3, scope: !6300)
!6304 = !DILocation(line: 411, column: 2, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 411, column: 2)
!6306 = !DILocation(line: 411, column: 2, scope: !6275)
!6307 = !DILabel(scope: !6275, name: "modeset_lock_retry", file: !1, line: 411)
!6308 = !DILocation(line: 411, column: 2, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 411, column: 2)
!6310 = !DILocation(line: 413, column: 29, scope: !6275)
!6311 = !DILocation(line: 413, column: 34, scope: !6275)
!6312 = !DILocation(line: 413, column: 45, scope: !6275)
!6313 = !DILocation(line: 413, column: 50, scope: !6275)
!6314 = !DILocation(line: 413, column: 58, scope: !6275)
!6315 = !DILocation(line: 413, column: 63, scope: !6275)
!6316 = !DILocation(line: 413, column: 8, scope: !6275)
!6317 = !DILocation(line: 413, column: 6, scope: !6275)
!6318 = !DILocation(line: 414, column: 7, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 414, column: 6)
!6320 = !DILocation(line: 414, column: 6, scope: !6275)
!6321 = !DILocation(line: 415, column: 7, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6319, file: !1, line: 414, column: 12)
!6323 = !DILocation(line: 416, column: 3, scope: !6322)
!6324 = !DILocation(line: 418, column: 7, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 418, column: 6)
!6326 = !DILocation(line: 418, column: 12, scope: !6325)
!6327 = !DILocation(line: 418, column: 6, scope: !6275)
!6328 = !DILocation(line: 419, column: 7, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6325, file: !1, line: 418, column: 24)
!6330 = !DILocation(line: 420, column: 3, scope: !6329)
!6331 = !DILocation(line: 423, column: 39, scope: !6275)
!6332 = !DILocation(line: 423, column: 44, scope: !6275)
!6333 = !DILocation(line: 423, column: 55, scope: !6275)
!6334 = !DILocation(line: 424, column: 39, scope: !6275)
!6335 = !DILocation(line: 424, column: 44, scope: !6275)
!6336 = !DILocation(line: 424, column: 4, scope: !6275)
!6337 = !DILocation(line: 425, column: 39, scope: !6275)
!6338 = !DILocation(line: 425, column: 44, scope: !6275)
!6339 = !DILocation(line: 425, column: 4, scope: !6275)
!6340 = !DILocation(line: 426, column: 5, scope: !6275)
!6341 = !DILocation(line: 426, column: 10, scope: !6275)
!6342 = !DILocation(line: 423, column: 8, scope: !6275)
!6343 = !DILocation(line: 423, column: 6, scope: !6275)
!6344 = !DILocation(line: 423, column: 2, scope: !6275)
!6345 = !DILabel(scope: !6275, name: "out_unref", file: !1, line: 428)
!6346 = !DILocation(line: 428, column: 1, scope: !6275)
!6347 = !DILocation(line: 429, column: 22, scope: !6275)
!6348 = !DILocation(line: 429, column: 2, scope: !6275)
!6349 = !DILabel(scope: !6275, name: "out", file: !1, line: 430)
!6350 = !DILocation(line: 430, column: 1, scope: !6275)
!6351 = !DILabel(scope: !6275, name: "modeset_lock_fail", file: !1, line: 431)
!6352 = !DILocation(line: 431, column: 2, scope: !6275)
!6353 = !DILocation(line: 431, column: 2, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 431, column: 2)
!6355 = !DILocation(line: 431, column: 2, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6354, file: !1, line: 431, column: 2)
!6357 = !DILocation(line: 431, column: 2, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6356, file: !1, line: 431, column: 2)
!6359 = !DILocation(line: 431, column: 2, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6275, file: !1, line: 431, column: 2)
!6361 = !DILocation(line: 432, column: 9, scope: !6275)
!6362 = !DILocation(line: 432, column: 2, scope: !6275)
!6363 = !DILocation(line: 433, column: 1, scope: !6275)
!6364 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !260, file: !260, line: 690, type: !6365, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6365 = !DISubroutineType(types: !6366)
!6366 = !{!592, !6367, !259}
!6367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6368, size: 64)
!6368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!6369 = !DILocalVariable(name: "dev", arg: 1, scope: !6364, file: !260, line: 690, type: !6367)
!6370 = !DILocation(line: 690, column: 68, scope: !6364)
!6371 = !DILocalVariable(name: "feature", arg: 2, scope: !6364, file: !260, line: 691, type: !259)
!6372 = !DILocation(line: 691, column: 32, scope: !6364)
!6373 = !DILocation(line: 693, column: 37, scope: !6364)
!6374 = !DILocation(line: 693, column: 42, scope: !6364)
!6375 = !DILocation(line: 693, column: 9, scope: !6364)
!6376 = !DILocation(line: 693, column: 2, scope: !6364)
!6377 = distinct !DISubprogram(name: "drm_mode_obj_find_prop_id", scope: !1, file: !1, line: 435, type: !6378, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!4454, !5533, !661}
!6380 = !DILocalVariable(name: "obj", arg: 1, scope: !6377, file: !1, line: 435, type: !5533)
!6381 = !DILocation(line: 435, column: 72, scope: !6377)
!6382 = !DILocalVariable(name: "prop_id", arg: 2, scope: !6377, file: !1, line: 436, type: !661)
!6383 = !DILocation(line: 436, column: 22, scope: !6377)
!6384 = !DILocalVariable(name: "i", scope: !6377, file: !1, line: 438, type: !113)
!6385 = !DILocation(line: 438, column: 6, scope: !6377)
!6386 = !DILocation(line: 440, column: 9, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6377, file: !1, line: 440, column: 2)
!6388 = !DILocation(line: 440, column: 7, scope: !6387)
!6389 = !DILocation(line: 440, column: 14, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6387, file: !1, line: 440, column: 2)
!6391 = !DILocation(line: 440, column: 18, scope: !6390)
!6392 = !DILocation(line: 440, column: 23, scope: !6390)
!6393 = !DILocation(line: 440, column: 35, scope: !6390)
!6394 = !DILocation(line: 440, column: 16, scope: !6390)
!6395 = !DILocation(line: 440, column: 2, scope: !6387)
!6396 = !DILocation(line: 441, column: 7, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6390, file: !1, line: 441, column: 7)
!6398 = !DILocation(line: 441, column: 12, scope: !6397)
!6399 = !DILocation(line: 441, column: 24, scope: !6397)
!6400 = !DILocation(line: 441, column: 35, scope: !6397)
!6401 = !DILocation(line: 441, column: 39, scope: !6397)
!6402 = !DILocation(line: 441, column: 44, scope: !6397)
!6403 = !DILocation(line: 441, column: 50, scope: !6397)
!6404 = !DILocation(line: 441, column: 47, scope: !6397)
!6405 = !DILocation(line: 441, column: 7, scope: !6390)
!6406 = !DILocation(line: 442, column: 11, scope: !6397)
!6407 = !DILocation(line: 442, column: 16, scope: !6397)
!6408 = !DILocation(line: 442, column: 28, scope: !6397)
!6409 = !DILocation(line: 442, column: 39, scope: !6397)
!6410 = !DILocation(line: 442, column: 4, scope: !6397)
!6411 = !DILocation(line: 440, column: 43, scope: !6390)
!6412 = !DILocation(line: 440, column: 2, scope: !6390)
!6413 = distinct !{!6413, !6395, !6414}
!6414 = !DILocation(line: 442, column: 40, scope: !6387)
!6415 = !DILocation(line: 444, column: 2, scope: !6377)
!6416 = !DILocation(line: 445, column: 1, scope: !6377)
!6417 = distinct !DISubprogram(name: "drm_mode_obj_set_property_ioctl", scope: !1, file: !1, line: 526, type: !4307, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6418 = !DILocalVariable(name: "dev", arg: 1, scope: !6417, file: !1, line: 526, type: !291)
!6419 = !DILocation(line: 526, column: 56, scope: !6417)
!6420 = !DILocalVariable(name: "data", arg: 2, scope: !6417, file: !1, line: 526, type: !286)
!6421 = !DILocation(line: 526, column: 67, scope: !6417)
!6422 = !DILocalVariable(name: "file_priv", arg: 3, scope: !6417, file: !1, line: 527, type: !4101)
!6423 = !DILocation(line: 527, column: 26, scope: !6417)
!6424 = !DILocalVariable(name: "arg", scope: !6417, file: !1, line: 529, type: !6425)
!6425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6426, size: 64)
!6426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_obj_set_property", file: !188, line: 467, size: 192, elements: !6427)
!6427 = !{!6428, !6429, !6430, !6431}
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6426, file: !188, line: 468, baseType: !524, size: 64)
!6429 = !DIDerivedType(tag: DW_TAG_member, name: "prop_id", scope: !6426, file: !188, line: 469, baseType: !519, size: 32, offset: 64)
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "obj_id", scope: !6426, file: !188, line: 470, baseType: !519, size: 32, offset: 96)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !6426, file: !188, line: 471, baseType: !519, size: 32, offset: 128)
!6432 = !DILocation(line: 529, column: 36, scope: !6417)
!6433 = !DILocation(line: 529, column: 42, scope: !6417)
!6434 = !DILocalVariable(name: "arg_obj", scope: !6417, file: !1, line: 530, type: !5533)
!6435 = !DILocation(line: 530, column: 26, scope: !6417)
!6436 = !DILocalVariable(name: "property", scope: !6417, file: !1, line: 531, type: !4454)
!6437 = !DILocation(line: 531, column: 23, scope: !6417)
!6438 = !DILocalVariable(name: "ret", scope: !6417, file: !1, line: 532, type: !113)
!6439 = !DILocation(line: 532, column: 6, scope: !6417)
!6440 = !DILocation(line: 534, column: 30, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6417, file: !1, line: 534, column: 6)
!6442 = !DILocation(line: 534, column: 7, scope: !6441)
!6443 = !DILocation(line: 534, column: 6, scope: !6417)
!6444 = !DILocation(line: 535, column: 3, scope: !6441)
!6445 = !DILocation(line: 537, column: 33, scope: !6417)
!6446 = !DILocation(line: 537, column: 38, scope: !6417)
!6447 = !DILocation(line: 537, column: 49, scope: !6417)
!6448 = !DILocation(line: 537, column: 54, scope: !6417)
!6449 = !DILocation(line: 537, column: 62, scope: !6417)
!6450 = !DILocation(line: 537, column: 67, scope: !6417)
!6451 = !DILocation(line: 537, column: 12, scope: !6417)
!6452 = !DILocation(line: 537, column: 10, scope: !6417)
!6453 = !DILocation(line: 538, column: 7, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6417, file: !1, line: 538, column: 6)
!6455 = !DILocation(line: 538, column: 6, scope: !6417)
!6456 = !DILocation(line: 539, column: 3, scope: !6454)
!6457 = !DILocation(line: 541, column: 7, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6417, file: !1, line: 541, column: 6)
!6459 = !DILocation(line: 541, column: 16, scope: !6458)
!6460 = !DILocation(line: 541, column: 6, scope: !6417)
!6461 = !DILocation(line: 542, column: 3, scope: !6458)
!6462 = !DILocation(line: 544, column: 39, scope: !6417)
!6463 = !DILocation(line: 544, column: 48, scope: !6417)
!6464 = !DILocation(line: 544, column: 53, scope: !6417)
!6465 = !DILocation(line: 544, column: 13, scope: !6417)
!6466 = !DILocation(line: 544, column: 11, scope: !6417)
!6467 = !DILocation(line: 545, column: 7, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6417, file: !1, line: 545, column: 6)
!6469 = !DILocation(line: 545, column: 6, scope: !6417)
!6470 = !DILocation(line: 546, column: 3, scope: !6468)
!6471 = !DILocation(line: 548, column: 34, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6417, file: !1, line: 548, column: 6)
!6473 = !DILocation(line: 548, column: 44, scope: !6472)
!6474 = !DILocation(line: 548, column: 6, scope: !6472)
!6475 = !DILocation(line: 548, column: 6, scope: !6417)
!6476 = !DILocation(line: 549, column: 29, scope: !6472)
!6477 = !DILocation(line: 549, column: 38, scope: !6472)
!6478 = !DILocation(line: 549, column: 49, scope: !6472)
!6479 = !DILocation(line: 549, column: 59, scope: !6472)
!6480 = !DILocation(line: 549, column: 64, scope: !6472)
!6481 = !DILocation(line: 549, column: 9, scope: !6472)
!6482 = !DILocation(line: 549, column: 7, scope: !6472)
!6483 = !DILocation(line: 549, column: 3, scope: !6472)
!6484 = !DILocation(line: 551, column: 29, scope: !6472)
!6485 = !DILocation(line: 551, column: 38, scope: !6472)
!6486 = !DILocation(line: 551, column: 48, scope: !6472)
!6487 = !DILocation(line: 551, column: 53, scope: !6472)
!6488 = !DILocation(line: 551, column: 9, scope: !6472)
!6489 = !DILocation(line: 551, column: 7, scope: !6472)
!6490 = !DILocation(line: 548, column: 47, scope: !6472)
!6491 = !DILabel(scope: !6417, name: "out_unref", file: !1, line: 553)
!6492 = !DILocation(line: 553, column: 1, scope: !6417)
!6493 = !DILocation(line: 554, column: 22, scope: !6417)
!6494 = !DILocation(line: 554, column: 2, scope: !6417)
!6495 = !DILocation(line: 555, column: 9, scope: !6417)
!6496 = !DILocation(line: 555, column: 2, scope: !6417)
!6497 = !DILocation(line: 556, column: 1, scope: !6417)
!6498 = distinct !DISubprogram(name: "set_property_atomic", scope: !1, file: !1, line: 478, type: !6499, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6499 = !DISubroutineType(types: !6500)
!6500 = !{!113, !5533, !4101, !4454, !4283}
!6501 = !DILocalVariable(name: "obj", arg: 1, scope: !6498, file: !1, line: 478, type: !5533)
!6502 = !DILocation(line: 478, column: 56, scope: !6498)
!6503 = !DILocalVariable(name: "file_priv", arg: 2, scope: !6498, file: !1, line: 479, type: !4101)
!6504 = !DILocation(line: 479, column: 28, scope: !6498)
!6505 = !DILocalVariable(name: "prop", arg: 3, scope: !6498, file: !1, line: 480, type: !4454)
!6506 = !DILocation(line: 480, column: 32, scope: !6498)
!6507 = !DILocalVariable(name: "prop_value", arg: 4, scope: !6498, file: !1, line: 481, type: !4283)
!6508 = !DILocation(line: 481, column: 20, scope: !6498)
!6509 = !DILocalVariable(name: "dev", scope: !6498, file: !1, line: 483, type: !291)
!6510 = !DILocation(line: 483, column: 21, scope: !6498)
!6511 = !DILocation(line: 483, column: 27, scope: !6498)
!6512 = !DILocation(line: 483, column: 33, scope: !6498)
!6513 = !DILocalVariable(name: "state", scope: !6498, file: !1, line: 484, type: !4583)
!6514 = !DILocation(line: 484, column: 27, scope: !6498)
!6515 = !DILocalVariable(name: "ctx", scope: !6498, file: !1, line: 485, type: !4389)
!6516 = !DILocation(line: 485, column: 33, scope: !6498)
!6517 = !DILocalVariable(name: "ret", scope: !6498, file: !1, line: 486, type: !113)
!6518 = !DILocation(line: 486, column: 6, scope: !6498)
!6519 = !DILocation(line: 488, column: 33, scope: !6498)
!6520 = !DILocation(line: 488, column: 10, scope: !6498)
!6521 = !DILocation(line: 488, column: 8, scope: !6498)
!6522 = !DILocation(line: 489, column: 7, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6498, file: !1, line: 489, column: 6)
!6524 = !DILocation(line: 489, column: 6, scope: !6498)
!6525 = !DILocation(line: 490, column: 3, scope: !6523)
!6526 = !DILocation(line: 492, column: 2, scope: !6498)
!6527 = !DILocation(line: 493, column: 2, scope: !6498)
!6528 = !DILocation(line: 493, column: 9, scope: !6498)
!6529 = !DILocation(line: 493, column: 21, scope: !6498)
!6530 = !DILabel(scope: !6498, name: "retry", file: !1, line: 495)
!6531 = !DILocation(line: 495, column: 1, scope: !6498)
!6532 = !DILocation(line: 496, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6498, file: !1, line: 496, column: 6)
!6534 = !DILocation(line: 496, column: 14, scope: !6533)
!6535 = !DILocation(line: 496, column: 21, scope: !6533)
!6536 = !DILocation(line: 496, column: 26, scope: !6533)
!6537 = !DILocation(line: 496, column: 38, scope: !6533)
!6538 = !DILocation(line: 496, column: 11, scope: !6533)
!6539 = !DILocation(line: 496, column: 6, scope: !6498)
!6540 = !DILocation(line: 497, column: 7, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6542, file: !1, line: 497, column: 7)
!6542 = distinct !DILexicalBlock(scope: !6533, file: !1, line: 496, column: 53)
!6543 = !DILocation(line: 497, column: 12, scope: !6541)
!6544 = !DILocation(line: 497, column: 17, scope: !6541)
!6545 = !DILocation(line: 497, column: 7, scope: !6542)
!6546 = !DILocation(line: 498, column: 8, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6541, file: !1, line: 497, column: 47)
!6548 = !DILocation(line: 499, column: 4, scope: !6547)
!6549 = !DILocation(line: 502, column: 42, scope: !6542)
!6550 = !DILocalVariable(name: "__mptr", scope: !6551, file: !1, line: 503, type: !286)
!6551 = distinct !DILexicalBlock(scope: !6542, file: !1, line: 503, column: 14)
!6552 = !DILocation(line: 503, column: 14, scope: !6551)
!6553 = !DILocation(line: 503, column: 14, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6551, file: !1, line: 503, column: 14)
!6555 = !DILocation(line: 504, column: 14, scope: !6542)
!6556 = !DILocation(line: 502, column: 9, scope: !6542)
!6557 = !DILocation(line: 502, column: 7, scope: !6542)
!6558 = !DILocation(line: 505, column: 2, scope: !6542)
!6559 = !DILocation(line: 506, column: 33, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6533, file: !1, line: 505, column: 9)
!6561 = !DILocation(line: 506, column: 40, scope: !6560)
!6562 = !DILocation(line: 506, column: 51, scope: !6560)
!6563 = !DILocation(line: 506, column: 56, scope: !6560)
!6564 = !DILocation(line: 506, column: 62, scope: !6560)
!6565 = !DILocation(line: 506, column: 9, scope: !6560)
!6566 = !DILocation(line: 506, column: 7, scope: !6560)
!6567 = !DILocation(line: 507, column: 7, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6560, file: !1, line: 507, column: 7)
!6569 = !DILocation(line: 507, column: 7, scope: !6560)
!6570 = !DILocation(line: 508, column: 4, scope: !6568)
!6571 = !DILocation(line: 509, column: 27, scope: !6560)
!6572 = !DILocation(line: 509, column: 9, scope: !6560)
!6573 = !DILocation(line: 509, column: 7, scope: !6560)
!6574 = !DILabel(scope: !6498, name: "out", file: !1, line: 511)
!6575 = !DILocation(line: 511, column: 1, scope: !6498)
!6576 = !DILocation(line: 512, column: 6, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6498, file: !1, line: 512, column: 6)
!6578 = !DILocation(line: 512, column: 10, scope: !6577)
!6579 = !DILocation(line: 512, column: 6, scope: !6498)
!6580 = !DILocation(line: 513, column: 26, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6577, file: !1, line: 512, column: 23)
!6582 = !DILocation(line: 513, column: 3, scope: !6581)
!6583 = !DILocation(line: 514, column: 3, scope: !6581)
!6584 = !DILocation(line: 515, column: 3, scope: !6581)
!6585 = !DILocation(line: 518, column: 23, scope: !6498)
!6586 = !DILocation(line: 518, column: 2, scope: !6498)
!6587 = !DILocation(line: 520, column: 2, scope: !6498)
!6588 = !DILocation(line: 521, column: 2, scope: !6498)
!6589 = !DILocation(line: 523, column: 9, scope: !6498)
!6590 = !DILocation(line: 523, column: 2, scope: !6498)
!6591 = !DILocation(line: 524, column: 1, scope: !6498)
!6592 = distinct !DISubprogram(name: "set_property_legacy", scope: !1, file: !1, line: 447, type: !6004, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6593 = !DILocalVariable(name: "obj", arg: 1, scope: !6592, file: !1, line: 447, type: !5533)
!6594 = !DILocation(line: 447, column: 56, scope: !6592)
!6595 = !DILocalVariable(name: "prop", arg: 2, scope: !6592, file: !1, line: 448, type: !4454)
!6596 = !DILocation(line: 448, column: 32, scope: !6592)
!6597 = !DILocalVariable(name: "prop_value", arg: 3, scope: !6592, file: !1, line: 449, type: !4283)
!6598 = !DILocation(line: 449, column: 20, scope: !6592)
!6599 = !DILocalVariable(name: "dev", scope: !6592, file: !1, line: 451, type: !291)
!6600 = !DILocation(line: 451, column: 21, scope: !6592)
!6601 = !DILocation(line: 451, column: 27, scope: !6592)
!6602 = !DILocation(line: 451, column: 33, scope: !6592)
!6603 = !DILocalVariable(name: "ref", scope: !6592, file: !1, line: 452, type: !5533)
!6604 = !DILocation(line: 452, column: 26, scope: !6592)
!6605 = !DILocalVariable(name: "ctx", scope: !6592, file: !1, line: 453, type: !4389)
!6606 = !DILocation(line: 453, column: 33, scope: !6592)
!6607 = !DILocalVariable(name: "ret", scope: !6592, file: !1, line: 454, type: !113)
!6608 = !DILocation(line: 454, column: 6, scope: !6592)
!6609 = !DILocation(line: 456, column: 37, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6592, file: !1, line: 456, column: 6)
!6611 = !DILocation(line: 456, column: 43, scope: !6610)
!6612 = !DILocation(line: 456, column: 7, scope: !6610)
!6613 = !DILocation(line: 456, column: 6, scope: !6592)
!6614 = !DILocation(line: 457, column: 3, scope: !6610)
!6615 = !DILocation(line: 459, column: 2, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6592, file: !1, line: 459, column: 2)
!6617 = !DILocation(line: 459, column: 2, scope: !6592)
!6618 = !DILabel(scope: !6592, name: "modeset_lock_retry", file: !1, line: 459)
!6619 = !DILocation(line: 459, column: 2, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6592, file: !1, line: 459, column: 2)
!6621 = !DILocation(line: 460, column: 10, scope: !6592)
!6622 = !DILocation(line: 460, column: 15, scope: !6592)
!6623 = !DILocation(line: 460, column: 2, scope: !6592)
!6624 = !DILocation(line: 462, column: 36, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6592, file: !1, line: 460, column: 21)
!6626 = !DILocation(line: 462, column: 41, scope: !6625)
!6627 = !DILocation(line: 462, column: 47, scope: !6625)
!6628 = !DILocation(line: 462, column: 9, scope: !6625)
!6629 = !DILocation(line: 462, column: 7, scope: !6625)
!6630 = !DILocation(line: 463, column: 3, scope: !6625)
!6631 = !DILocation(line: 465, column: 36, scope: !6625)
!6632 = !DILocation(line: 465, column: 41, scope: !6625)
!6633 = !DILocation(line: 465, column: 47, scope: !6625)
!6634 = !DILocation(line: 465, column: 9, scope: !6625)
!6635 = !DILocation(line: 465, column: 7, scope: !6625)
!6636 = !DILocation(line: 466, column: 3, scope: !6625)
!6637 = !DILocalVariable(name: "__mptr", scope: !6638, file: !1, line: 468, type: !286)
!6638 = distinct !DILexicalBlock(scope: !6625, file: !1, line: 468, column: 37)
!6639 = !DILocation(line: 468, column: 37, scope: !6638)
!6640 = !DILocation(line: 468, column: 37, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6638, file: !1, line: 468, column: 37)
!6642 = !DILocation(line: 469, column: 9, scope: !6625)
!6643 = !DILocation(line: 469, column: 15, scope: !6625)
!6644 = !DILocation(line: 468, column: 9, scope: !6625)
!6645 = !DILocation(line: 468, column: 7, scope: !6625)
!6646 = !DILocation(line: 470, column: 3, scope: !6625)
!6647 = !DILocation(line: 472, column: 32, scope: !6592)
!6648 = !DILocation(line: 472, column: 38, scope: !6592)
!6649 = !DILocation(line: 472, column: 2, scope: !6592)
!6650 = !DILabel(scope: !6592, name: "modeset_lock_fail", file: !1, line: 473)
!6651 = !DILocation(line: 473, column: 2, scope: !6592)
!6652 = !DILocation(line: 473, column: 2, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6592, file: !1, line: 473, column: 2)
!6654 = !DILocation(line: 473, column: 2, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6653, file: !1, line: 473, column: 2)
!6656 = !DILocation(line: 473, column: 2, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6655, file: !1, line: 473, column: 2)
!6658 = !DILocation(line: 473, column: 2, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6592, file: !1, line: 473, column: 2)
!6660 = !DILocation(line: 475, column: 9, scope: !6592)
!6661 = !DILocation(line: 475, column: 2, scope: !6592)
!6662 = !DILocation(line: 476, column: 1, scope: !6592)
!6663 = distinct !DISubprogram(name: "refcount_set", scope: !276, file: !276, line: 134, type: !6664, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6664 = !DISubroutineType(types: !6665)
!6665 = !{null, !6666, !113}
!6666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!6667 = !DILocalVariable(name: "v", arg: 1, scope: !6668, file: !6669, line: 39, type: !6672)
!6668 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6669, file: !6669, line: 39, type: !6670, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6669 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6670 = !DISubroutineType(types: !6671)
!6671 = !{null, !6672, !113}
!6672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!6673 = !DILocation(line: 39, column: 55, scope: !6668, inlinedAt: !6674)
!6674 = distinct !DILocation(line: 46, column: 2, scope: !6675, inlinedAt: !6677)
!6675 = distinct !DISubprogram(name: "atomic_set", scope: !6676, file: !6676, line: 43, type: !6670, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6676 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6677 = distinct !DILocation(line: 136, column: 2, scope: !6663)
!6678 = !DILocalVariable(name: "i", arg: 2, scope: !6668, file: !6669, line: 39, type: !113)
!6679 = !DILocation(line: 39, column: 62, scope: !6668, inlinedAt: !6674)
!6680 = !DILocalVariable(name: "v", arg: 1, scope: !6681, file: !6682, line: 84, type: !6685)
!6681 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6682, file: !6682, line: 84, type: !6683, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6682 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6683 = !DISubroutineType(types: !6684)
!6684 = !{null, !6685, !423}
!6685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6686, size: 64)
!6686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6687)
!6687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6688 = !DILocation(line: 84, column: 74, scope: !6681, inlinedAt: !6689)
!6689 = distinct !DILocation(line: 45, column: 2, scope: !6675, inlinedAt: !6677)
!6690 = !DILocalVariable(name: "size", arg: 2, scope: !6681, file: !6682, line: 84, type: !423)
!6691 = !DILocation(line: 84, column: 84, scope: !6681, inlinedAt: !6689)
!6692 = !DILocalVariable(name: "v", arg: 1, scope: !6675, file: !6676, line: 43, type: !6672)
!6693 = !DILocation(line: 43, column: 22, scope: !6675, inlinedAt: !6677)
!6694 = !DILocalVariable(name: "i", arg: 2, scope: !6675, file: !6676, line: 43, type: !113)
!6695 = !DILocation(line: 43, column: 29, scope: !6675, inlinedAt: !6677)
!6696 = !DILocalVariable(name: "r", arg: 1, scope: !6663, file: !276, line: 134, type: !6666)
!6697 = !DILocation(line: 134, column: 45, scope: !6663)
!6698 = !DILocalVariable(name: "n", arg: 2, scope: !6663, file: !276, line: 134, type: !113)
!6699 = !DILocation(line: 134, column: 52, scope: !6663)
!6700 = !DILocation(line: 136, column: 14, scope: !6663)
!6701 = !DILocation(line: 136, column: 17, scope: !6663)
!6702 = !DILocation(line: 136, column: 23, scope: !6663)
!6703 = !DILocation(line: 45, column: 26, scope: !6675, inlinedAt: !6677)
!6704 = !DILocation(line: 86, column: 20, scope: !6681, inlinedAt: !6689)
!6705 = !DILocation(line: 86, column: 23, scope: !6681, inlinedAt: !6689)
!6706 = !DILocation(line: 86, column: 2, scope: !6681, inlinedAt: !6689)
!6707 = !DILocation(line: 87, column: 2, scope: !6681, inlinedAt: !6689)
!6708 = !DILocation(line: 46, column: 18, scope: !6675, inlinedAt: !6677)
!6709 = !DILocation(line: 46, column: 21, scope: !6675, inlinedAt: !6677)
!6710 = !DILocation(line: 41, column: 2, scope: !6711, inlinedAt: !6674)
!6711 = distinct !DILexicalBlock(scope: !6668, file: !6669, line: 41, column: 2)
!6712 = !DILocation(line: 137, column: 1, scope: !6663)
!6713 = distinct !DISubprogram(name: "kasan_check_write", scope: !6714, file: !6714, line: 38, type: !6715, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6714 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6715 = !DISubroutineType(types: !6716)
!6716 = !{!592, !6685, !5}
!6717 = !DILocalVariable(name: "p", arg: 1, scope: !6713, file: !6714, line: 38, type: !6685)
!6718 = !DILocation(line: 38, column: 59, scope: !6713)
!6719 = !DILocalVariable(name: "size", arg: 2, scope: !6713, file: !6714, line: 38, type: !5)
!6720 = !DILocation(line: 38, column: 75, scope: !6713)
!6721 = !DILocation(line: 40, column: 2, scope: !6713)
!6722 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6723, file: !6723, line: 178, type: !6724, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6723 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6724 = !DISubroutineType(types: !6725)
!6725 = !{null, !6685, !423, !113}
!6726 = !DILocalVariable(name: "ptr", arg: 1, scope: !6722, file: !6723, line: 178, type: !6685)
!6727 = !DILocation(line: 178, column: 60, scope: !6722)
!6728 = !DILocalVariable(name: "size", arg: 2, scope: !6722, file: !6723, line: 178, type: !423)
!6729 = !DILocation(line: 178, column: 72, scope: !6722)
!6730 = !DILocalVariable(name: "type", arg: 3, scope: !6722, file: !6723, line: 179, type: !113)
!6731 = !DILocation(line: 179, column: 15, scope: !6722)
!6732 = !DILocation(line: 179, column: 23, scope: !6722)
!6733 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !276, file: !276, line: 243, type: !6734, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!592, !6666}
!6736 = !DILocalVariable(name: "r", arg: 1, scope: !6733, file: !276, line: 243, type: !6666)
!6737 = !DILocation(line: 243, column: 67, scope: !6733)
!6738 = !DILocation(line: 245, column: 33, scope: !6733)
!6739 = !DILocation(line: 245, column: 9, scope: !6733)
!6740 = !DILocation(line: 245, column: 2, scope: !6733)
!6741 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !276, file: !276, line: 225, type: !6742, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6742 = !DISubroutineType(types: !6743)
!6743 = !{!592, !6666, !810}
!6744 = !DILocalVariable(name: "r", arg: 1, scope: !6741, file: !276, line: 225, type: !6666)
!6745 = !DILocation(line: 225, column: 69, scope: !6741)
!6746 = !DILocalVariable(name: "oldp", arg: 2, scope: !6741, file: !276, line: 225, type: !810)
!6747 = !DILocation(line: 225, column: 77, scope: !6741)
!6748 = !DILocation(line: 227, column: 36, scope: !6741)
!6749 = !DILocation(line: 227, column: 39, scope: !6741)
!6750 = !DILocation(line: 227, column: 9, scope: !6741)
!6751 = !DILocation(line: 227, column: 2, scope: !6741)
!6752 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !276, file: !276, line: 150, type: !6753, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6753 = !DISubroutineType(types: !6754)
!6754 = !{!592, !113, !6666, !810}
!6755 = !DILocalVariable(name: "v", arg: 1, scope: !6756, file: !6669, line: 200, type: !6672)
!6756 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6669, file: !6669, line: 200, type: !6757, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{!592, !6672, !810, !113}
!6759 = !DILocation(line: 200, column: 63, scope: !6756, inlinedAt: !6760)
!6760 = distinct !DILocation(line: 729, column: 9, scope: !6761, inlinedAt: !6762)
!6761 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !6676, file: !6676, line: 725, type: !6757, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6762 = distinct !DILocation(line: 157, column: 12, scope: !6752)
!6763 = !DILocalVariable(name: "old", arg: 2, scope: !6756, file: !6669, line: 200, type: !810)
!6764 = !DILocation(line: 200, column: 71, scope: !6756, inlinedAt: !6760)
!6765 = !DILocalVariable(name: "new", arg: 3, scope: !6756, file: !6669, line: 200, type: !113)
!6766 = !DILocation(line: 200, column: 80, scope: !6756, inlinedAt: !6760)
!6767 = !DILocalVariable(name: "success", scope: !6768, file: !6669, line: 202, type: !592)
!6768 = distinct !DILexicalBlock(scope: !6756, file: !6669, line: 202, column: 9)
!6769 = !DILocation(line: 202, column: 9, scope: !6768, inlinedAt: !6760)
!6770 = !DILocalVariable(name: "_old", scope: !6768, file: !6669, line: 202, type: !810)
!6771 = !DILocalVariable(name: "__old", scope: !6768, file: !6669, line: 202, type: !113)
!6772 = !DILocalVariable(name: "__new", scope: !6768, file: !6669, line: 202, type: !113)
!6773 = !DILocalVariable(name: "__ptr", scope: !6768, file: !6669, line: 202, type: !5522)
!6774 = !DILocalVariable(name: "v", arg: 1, scope: !6775, file: !6682, line: 99, type: !6685)
!6775 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6682, file: !6682, line: 99, type: !6683, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6776 = !DILocation(line: 99, column: 79, scope: !6775, inlinedAt: !6777)
!6777 = distinct !DILocation(line: 728, column: 2, scope: !6761, inlinedAt: !6762)
!6778 = !DILocalVariable(name: "size", arg: 2, scope: !6775, file: !6682, line: 99, type: !423)
!6779 = !DILocation(line: 99, column: 89, scope: !6775, inlinedAt: !6777)
!6780 = !DILocation(line: 99, column: 79, scope: !6775, inlinedAt: !6781)
!6781 = distinct !DILocation(line: 727, column: 2, scope: !6761, inlinedAt: !6762)
!6782 = !DILocation(line: 99, column: 89, scope: !6775, inlinedAt: !6781)
!6783 = !DILocalVariable(name: "v", arg: 1, scope: !6761, file: !6676, line: 725, type: !6672)
!6784 = !DILocation(line: 725, column: 38, scope: !6761, inlinedAt: !6762)
!6785 = !DILocalVariable(name: "old", arg: 2, scope: !6761, file: !6676, line: 725, type: !810)
!6786 = !DILocation(line: 725, column: 46, scope: !6761, inlinedAt: !6762)
!6787 = !DILocalVariable(name: "new", arg: 3, scope: !6761, file: !6676, line: 725, type: !113)
!6788 = !DILocation(line: 725, column: 55, scope: !6761, inlinedAt: !6762)
!6789 = !DILocalVariable(name: "i", arg: 1, scope: !6752, file: !276, line: 150, type: !113)
!6790 = !DILocation(line: 150, column: 61, scope: !6752)
!6791 = !DILocalVariable(name: "r", arg: 2, scope: !6752, file: !276, line: 150, type: !6666)
!6792 = !DILocation(line: 150, column: 76, scope: !6752)
!6793 = !DILocalVariable(name: "oldp", arg: 3, scope: !6752, file: !276, line: 150, type: !810)
!6794 = !DILocation(line: 150, column: 84, scope: !6752)
!6795 = !DILocalVariable(name: "old", scope: !6752, file: !276, line: 152, type: !113)
!6796 = !DILocation(line: 152, column: 6, scope: !6752)
!6797 = !DILocation(line: 152, column: 26, scope: !6752)
!6798 = !DILocation(line: 152, column: 12, scope: !6752)
!6799 = !DILocation(line: 154, column: 2, scope: !6752)
!6800 = !DILocation(line: 155, column: 8, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6802, file: !276, line: 155, column: 7)
!6802 = distinct !DILexicalBlock(scope: !6752, file: !276, line: 154, column: 5)
!6803 = !DILocation(line: 155, column: 7, scope: !6802)
!6804 = !DILocation(line: 156, column: 4, scope: !6801)
!6805 = !DILocation(line: 157, column: 2, scope: !6802)
!6806 = !DILocation(line: 157, column: 40, scope: !6752)
!6807 = !DILocation(line: 157, column: 43, scope: !6752)
!6808 = !DILocation(line: 157, column: 55, scope: !6752)
!6809 = !DILocation(line: 157, column: 61, scope: !6752)
!6810 = !DILocation(line: 157, column: 59, scope: !6752)
!6811 = !DILocation(line: 727, column: 31, scope: !6761, inlinedAt: !6762)
!6812 = !DILocation(line: 101, column: 20, scope: !6775, inlinedAt: !6781)
!6813 = !DILocation(line: 101, column: 23, scope: !6775, inlinedAt: !6781)
!6814 = !DILocation(line: 101, column: 2, scope: !6775, inlinedAt: !6781)
!6815 = !DILocation(line: 102, column: 2, scope: !6775, inlinedAt: !6781)
!6816 = !DILocation(line: 728, column: 31, scope: !6761, inlinedAt: !6762)
!6817 = !DILocation(line: 101, column: 20, scope: !6775, inlinedAt: !6777)
!6818 = !DILocation(line: 101, column: 23, scope: !6775, inlinedAt: !6777)
!6819 = !DILocation(line: 101, column: 2, scope: !6775, inlinedAt: !6777)
!6820 = !DILocation(line: 102, column: 2, scope: !6775, inlinedAt: !6777)
!6821 = !DILocation(line: 729, column: 41, scope: !6761, inlinedAt: !6762)
!6822 = !DILocation(line: 729, column: 44, scope: !6761, inlinedAt: !6762)
!6823 = !DILocation(line: 729, column: 49, scope: !6761, inlinedAt: !6762)
!6824 = !{i32 -2146660354, i32 -2146660199}
!6825 = !DILocation(line: 202, column: 9, scope: !6826, inlinedAt: !6760)
!6826 = distinct !DILexicalBlock(scope: !6768, file: !6669, line: 202, column: 9)
!6827 = !DILocation(line: 202, column: 9, scope: !6756, inlinedAt: !6760)
!6828 = !DILocation(line: 157, column: 11, scope: !6752)
!6829 = distinct !{!6829, !6799, !6830}
!6830 = !DILocation(line: 157, column: 63, scope: !6752)
!6831 = !DILocation(line: 159, column: 6, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6752, file: !276, line: 159, column: 6)
!6833 = !DILocation(line: 159, column: 6, scope: !6752)
!6834 = !DILocation(line: 160, column: 11, scope: !6832)
!6835 = !DILocation(line: 160, column: 4, scope: !6832)
!6836 = !DILocation(line: 160, column: 9, scope: !6832)
!6837 = !DILocation(line: 160, column: 3, scope: !6832)
!6838 = !DILocation(line: 162, column: 6, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6752, file: !276, line: 162, column: 6)
!6840 = !DILocation(line: 162, column: 6, scope: !6752)
!6841 = !DILocation(line: 163, column: 26, scope: !6839)
!6842 = !DILocation(line: 163, column: 3, scope: !6839)
!6843 = !DILocation(line: 165, column: 9, scope: !6752)
!6844 = !DILocation(line: 165, column: 2, scope: !6752)
!6845 = distinct !DISubprogram(name: "refcount_read", scope: !276, file: !276, line: 145, type: !6846, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6846 = !DISubroutineType(types: !6847)
!6847 = !{!5, !6848}
!6848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6849, size: 64)
!6849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!6850 = !DILocalVariable(name: "v", arg: 1, scope: !6851, file: !6669, line: 23, type: !6854)
!6851 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6669, file: !6669, line: 23, type: !6852, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6852 = !DISubroutineType(types: !6853)
!6853 = !{!113, !6854}
!6854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6855, size: 64)
!6855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!6856 = !DILocation(line: 23, column: 61, scope: !6851, inlinedAt: !6857)
!6857 = distinct !DILocation(line: 28, column: 9, scope: !6858, inlinedAt: !6859)
!6858 = distinct !DISubprogram(name: "atomic_read", scope: !6676, file: !6676, line: 25, type: !6852, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6859 = distinct !DILocation(line: 147, column: 9, scope: !6845)
!6860 = !DILocalVariable(name: "v", arg: 1, scope: !6861, file: !6682, line: 69, type: !6685)
!6861 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6682, file: !6682, line: 69, type: !6683, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6862 = !DILocation(line: 69, column: 73, scope: !6861, inlinedAt: !6863)
!6863 = distinct !DILocation(line: 27, column: 2, scope: !6858, inlinedAt: !6859)
!6864 = !DILocalVariable(name: "size", arg: 2, scope: !6861, file: !6682, line: 69, type: !423)
!6865 = !DILocation(line: 69, column: 83, scope: !6861, inlinedAt: !6863)
!6866 = !DILocalVariable(name: "v", arg: 1, scope: !6858, file: !6676, line: 25, type: !6854)
!6867 = !DILocation(line: 25, column: 29, scope: !6858, inlinedAt: !6859)
!6868 = !DILocalVariable(name: "r", arg: 1, scope: !6845, file: !276, line: 145, type: !6848)
!6869 = !DILocation(line: 145, column: 60, scope: !6845)
!6870 = !DILocation(line: 147, column: 22, scope: !6845)
!6871 = !DILocation(line: 147, column: 25, scope: !6845)
!6872 = !DILocation(line: 27, column: 25, scope: !6858, inlinedAt: !6859)
!6873 = !DILocation(line: 71, column: 19, scope: !6861, inlinedAt: !6863)
!6874 = !DILocation(line: 71, column: 22, scope: !6861, inlinedAt: !6863)
!6875 = !DILocation(line: 71, column: 2, scope: !6861, inlinedAt: !6863)
!6876 = !DILocation(line: 72, column: 2, scope: !6861, inlinedAt: !6863)
!6877 = !DILocation(line: 28, column: 26, scope: !6858, inlinedAt: !6859)
!6878 = !DILocation(line: 29, column: 9, scope: !6851, inlinedAt: !6857)
!6879 = !DILocation(line: 147, column: 2, scope: !6845)
!6880 = distinct !DISubprogram(name: "kasan_check_read", scope: !6714, file: !6714, line: 34, type: !6715, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6881 = !DILocalVariable(name: "p", arg: 1, scope: !6880, file: !6714, line: 34, type: !6685)
!6882 = !DILocation(line: 34, column: 58, scope: !6880)
!6883 = !DILocalVariable(name: "size", arg: 2, scope: !6880, file: !6714, line: 34, type: !5)
!6884 = !DILocation(line: 34, column: 74, scope: !6880)
!6885 = !DILocation(line: 36, column: 2, scope: !6880)
!6886 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !276, file: !276, line: 331, type: !6734, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6887 = !DILocalVariable(name: "r", arg: 1, scope: !6886, file: !276, line: 331, type: !6666)
!6888 = !DILocation(line: 331, column: 67, scope: !6886)
!6889 = !DILocation(line: 333, column: 33, scope: !6886)
!6890 = !DILocation(line: 333, column: 9, scope: !6886)
!6891 = !DILocation(line: 333, column: 2, scope: !6886)
!6892 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !276, file: !276, line: 313, type: !6742, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6893 = !DILocalVariable(name: "r", arg: 1, scope: !6892, file: !276, line: 313, type: !6666)
!6894 = !DILocation(line: 313, column: 69, scope: !6892)
!6895 = !DILocalVariable(name: "oldp", arg: 2, scope: !6892, file: !276, line: 313, type: !810)
!6896 = !DILocation(line: 313, column: 77, scope: !6892)
!6897 = !DILocation(line: 315, column: 36, scope: !6892)
!6898 = !DILocation(line: 315, column: 39, scope: !6892)
!6899 = !DILocation(line: 315, column: 9, scope: !6892)
!6900 = !DILocation(line: 315, column: 2, scope: !6892)
!6901 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !276, file: !276, line: 270, type: !6753, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6902 = !DILocalVariable(name: "i", arg: 1, scope: !6903, file: !6669, line: 188, type: !113)
!6903 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6669, file: !6669, line: 188, type: !6904, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6904 = !DISubroutineType(types: !6905)
!6905 = !{!113, !113, !6672}
!6906 = !DILocation(line: 188, column: 54, scope: !6903, inlinedAt: !6907)
!6907 = distinct !DILocation(line: 221, column: 9, scope: !6908, inlinedAt: !6909)
!6908 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6676, file: !6676, line: 218, type: !6904, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6909 = distinct !DILocation(line: 272, column: 12, scope: !6901)
!6910 = !DILocalVariable(name: "v", arg: 2, scope: !6903, file: !6669, line: 188, type: !6672)
!6911 = !DILocation(line: 188, column: 67, scope: !6903, inlinedAt: !6907)
!6912 = !DILocalVariable(name: "__ret", scope: !6913, file: !6669, line: 190, type: !113)
!6913 = distinct !DILexicalBlock(scope: !6903, file: !6669, line: 190, column: 9)
!6914 = !DILocation(line: 190, column: 9, scope: !6913, inlinedAt: !6907)
!6915 = !DILocation(line: 99, column: 79, scope: !6775, inlinedAt: !6916)
!6916 = distinct !DILocation(line: 220, column: 2, scope: !6908, inlinedAt: !6909)
!6917 = !DILocation(line: 99, column: 89, scope: !6775, inlinedAt: !6916)
!6918 = !DILocalVariable(name: "i", arg: 1, scope: !6908, file: !6676, line: 218, type: !113)
!6919 = !DILocation(line: 218, column: 30, scope: !6908, inlinedAt: !6909)
!6920 = !DILocalVariable(name: "v", arg: 2, scope: !6908, file: !6676, line: 218, type: !6672)
!6921 = !DILocation(line: 218, column: 43, scope: !6908, inlinedAt: !6909)
!6922 = !DILocalVariable(name: "i", arg: 1, scope: !6901, file: !276, line: 270, type: !113)
!6923 = !DILocation(line: 270, column: 61, scope: !6901)
!6924 = !DILocalVariable(name: "r", arg: 2, scope: !6901, file: !276, line: 270, type: !6666)
!6925 = !DILocation(line: 270, column: 76, scope: !6901)
!6926 = !DILocalVariable(name: "oldp", arg: 3, scope: !6901, file: !276, line: 270, type: !810)
!6927 = !DILocation(line: 270, column: 84, scope: !6901)
!6928 = !DILocalVariable(name: "old", scope: !6901, file: !276, line: 272, type: !113)
!6929 = !DILocation(line: 272, column: 6, scope: !6901)
!6930 = !DILocation(line: 272, column: 37, scope: !6901)
!6931 = !DILocation(line: 272, column: 41, scope: !6901)
!6932 = !DILocation(line: 272, column: 44, scope: !6901)
!6933 = !DILocation(line: 220, column: 31, scope: !6908, inlinedAt: !6909)
!6934 = !DILocation(line: 101, column: 20, scope: !6775, inlinedAt: !6916)
!6935 = !DILocation(line: 101, column: 23, scope: !6775, inlinedAt: !6916)
!6936 = !DILocation(line: 101, column: 2, scope: !6775, inlinedAt: !6916)
!6937 = !DILocation(line: 102, column: 2, scope: !6775, inlinedAt: !6916)
!6938 = !DILocation(line: 221, column: 39, scope: !6908, inlinedAt: !6909)
!6939 = !DILocation(line: 221, column: 42, scope: !6908, inlinedAt: !6909)
!6940 = !{i32 -2146664667}
!6941 = !DILocation(line: 274, column: 6, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6901, file: !276, line: 274, column: 6)
!6943 = !DILocation(line: 274, column: 6, scope: !6901)
!6944 = !DILocation(line: 275, column: 11, scope: !6942)
!6945 = !DILocation(line: 275, column: 4, scope: !6942)
!6946 = !DILocation(line: 275, column: 9, scope: !6942)
!6947 = !DILocation(line: 275, column: 3, scope: !6942)
!6948 = !DILocation(line: 277, column: 6, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6901, file: !276, line: 277, column: 6)
!6950 = !DILocation(line: 277, column: 13, scope: !6949)
!6951 = !DILocation(line: 277, column: 10, scope: !6949)
!6952 = !DILocation(line: 277, column: 6, scope: !6901)
!6953 = !DILocation(line: 278, column: 3, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6949, file: !276, line: 277, column: 16)
!6955 = !{i32 -2145290412}
!6956 = !DILocation(line: 279, column: 3, scope: !6954)
!6957 = !DILocation(line: 282, column: 6, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6901, file: !276, line: 282, column: 6)
!6959 = !DILocation(line: 282, column: 6, scope: !6901)
!6960 = !DILocation(line: 283, column: 26, scope: !6958)
!6961 = !DILocation(line: 283, column: 3, scope: !6958)
!6962 = !DILocation(line: 285, column: 2, scope: !6901)
!6963 = !DILocation(line: 286, column: 1, scope: !6901)
!6964 = distinct !DISubprogram(name: "refcount_inc", scope: !276, file: !276, line: 265, type: !6965, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6965 = !DISubroutineType(types: !6966)
!6966 = !{null, !6666}
!6967 = !DILocalVariable(name: "r", arg: 1, scope: !6964, file: !276, line: 265, type: !6666)
!6968 = !DILocation(line: 265, column: 45, scope: !6964)
!6969 = !DILocation(line: 267, column: 17, scope: !6964)
!6970 = !DILocation(line: 267, column: 2, scope: !6964)
!6971 = !DILocation(line: 268, column: 1, scope: !6964)
!6972 = distinct !DISubprogram(name: "__refcount_inc", scope: !276, file: !276, line: 248, type: !6973, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6973 = !DISubroutineType(types: !6974)
!6974 = !{null, !6666, !810}
!6975 = !DILocalVariable(name: "r", arg: 1, scope: !6972, file: !276, line: 248, type: !6666)
!6976 = !DILocation(line: 248, column: 47, scope: !6972)
!6977 = !DILocalVariable(name: "oldp", arg: 2, scope: !6972, file: !276, line: 248, type: !810)
!6978 = !DILocation(line: 248, column: 55, scope: !6972)
!6979 = !DILocation(line: 250, column: 20, scope: !6972)
!6980 = !DILocation(line: 250, column: 23, scope: !6972)
!6981 = !DILocation(line: 250, column: 2, scope: !6972)
!6982 = !DILocation(line: 251, column: 1, scope: !6972)
!6983 = distinct !DISubprogram(name: "__refcount_add", scope: !276, file: !276, line: 191, type: !6984, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6984 = !DISubroutineType(types: !6985)
!6985 = !{null, !113, !6666, !810}
!6986 = !DILocalVariable(name: "i", arg: 1, scope: !6987, file: !6669, line: 182, type: !113)
!6987 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6669, file: !6669, line: 182, type: !6904, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6988 = !DILocation(line: 182, column: 54, scope: !6987, inlinedAt: !6989)
!6989 = distinct !DILocation(line: 143, column: 9, scope: !6990, inlinedAt: !6991)
!6990 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6676, file: !6676, line: 140, type: !6904, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!6991 = distinct !DILocation(line: 193, column: 12, scope: !6983)
!6992 = !DILocalVariable(name: "v", arg: 2, scope: !6987, file: !6669, line: 182, type: !6672)
!6993 = !DILocation(line: 182, column: 67, scope: !6987, inlinedAt: !6989)
!6994 = !DILocalVariable(name: "__ret", scope: !6995, file: !6669, line: 184, type: !113)
!6995 = distinct !DILexicalBlock(scope: !6987, file: !6669, line: 184, column: 9)
!6996 = !DILocation(line: 184, column: 9, scope: !6995, inlinedAt: !6989)
!6997 = !DILocation(line: 99, column: 79, scope: !6775, inlinedAt: !6998)
!6998 = distinct !DILocation(line: 142, column: 2, scope: !6990, inlinedAt: !6991)
!6999 = !DILocation(line: 99, column: 89, scope: !6775, inlinedAt: !6998)
!7000 = !DILocalVariable(name: "i", arg: 1, scope: !6990, file: !6676, line: 140, type: !113)
!7001 = !DILocation(line: 140, column: 30, scope: !6990, inlinedAt: !6991)
!7002 = !DILocalVariable(name: "v", arg: 2, scope: !6990, file: !6676, line: 140, type: !6672)
!7003 = !DILocation(line: 140, column: 43, scope: !6990, inlinedAt: !6991)
!7004 = !DILocalVariable(name: "i", arg: 1, scope: !6983, file: !276, line: 191, type: !113)
!7005 = !DILocation(line: 191, column: 39, scope: !6983)
!7006 = !DILocalVariable(name: "r", arg: 2, scope: !6983, file: !276, line: 191, type: !6666)
!7007 = !DILocation(line: 191, column: 54, scope: !6983)
!7008 = !DILocalVariable(name: "oldp", arg: 3, scope: !6983, file: !276, line: 191, type: !810)
!7009 = !DILocation(line: 191, column: 62, scope: !6983)
!7010 = !DILocalVariable(name: "old", scope: !6983, file: !276, line: 193, type: !113)
!7011 = !DILocation(line: 193, column: 6, scope: !6983)
!7012 = !DILocation(line: 193, column: 37, scope: !6983)
!7013 = !DILocation(line: 193, column: 41, scope: !6983)
!7014 = !DILocation(line: 193, column: 44, scope: !6983)
!7015 = !DILocation(line: 142, column: 31, scope: !6990, inlinedAt: !6991)
!7016 = !DILocation(line: 101, column: 20, scope: !6775, inlinedAt: !6998)
!7017 = !DILocation(line: 101, column: 23, scope: !6775, inlinedAt: !6998)
!7018 = !DILocation(line: 101, column: 2, scope: !6775, inlinedAt: !6998)
!7019 = !DILocation(line: 102, column: 2, scope: !6775, inlinedAt: !6998)
!7020 = !DILocation(line: 143, column: 39, scope: !6990, inlinedAt: !6991)
!7021 = !DILocation(line: 143, column: 42, scope: !6990, inlinedAt: !6991)
!7022 = !{i32 -2146666019}
!7023 = !DILocation(line: 195, column: 6, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !6983, file: !276, line: 195, column: 6)
!7025 = !DILocation(line: 195, column: 6, scope: !6983)
!7026 = !DILocation(line: 196, column: 11, scope: !7024)
!7027 = !DILocation(line: 196, column: 4, scope: !7024)
!7028 = !DILocation(line: 196, column: 9, scope: !7024)
!7029 = !DILocation(line: 196, column: 3, scope: !7024)
!7030 = !DILocation(line: 198, column: 6, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !6983, file: !276, line: 198, column: 6)
!7032 = !DILocation(line: 198, column: 6, scope: !6983)
!7033 = !DILocation(line: 199, column: 26, scope: !7031)
!7034 = !DILocation(line: 199, column: 3, scope: !7031)
!7035 = !DILocation(line: 200, column: 11, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !7031, file: !276, line: 200, column: 11)
!7037 = !DILocation(line: 200, column: 11, scope: !7031)
!7038 = !DILocation(line: 201, column: 26, scope: !7036)
!7039 = !DILocation(line: 201, column: 3, scope: !7036)
!7040 = !DILocation(line: 202, column: 1, scope: !6983)
!7041 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !260, file: !260, line: 672, type: !7042, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!7042 = !DISubroutineType(types: !7043)
!7043 = !{!592, !6367, !517}
!7044 = !DILocalVariable(name: "dev", arg: 1, scope: !7041, file: !260, line: 672, type: !6367)
!7045 = !DILocation(line: 672, column: 73, scope: !7041)
!7046 = !DILocalVariable(name: "features", arg: 2, scope: !7041, file: !260, line: 673, type: !517)
!7047 = !DILocation(line: 673, column: 17, scope: !7041)
!7048 = !DILocalVariable(name: "supported", scope: !7041, file: !260, line: 675, type: !517)
!7049 = !DILocation(line: 675, column: 6, scope: !7041)
!7050 = !DILocation(line: 675, column: 18, scope: !7041)
!7051 = !DILocation(line: 675, column: 23, scope: !7041)
!7052 = !DILocation(line: 675, column: 31, scope: !7041)
!7053 = !DILocation(line: 675, column: 49, scope: !7041)
!7054 = !DILocation(line: 675, column: 54, scope: !7041)
!7055 = !DILocation(line: 675, column: 47, scope: !7041)
!7056 = !DILocation(line: 677, column: 9, scope: !7041)
!7057 = !DILocation(line: 677, column: 18, scope: !7041)
!7058 = !DILocation(line: 677, column: 22, scope: !7041)
!7059 = !DILocation(line: 677, column: 34, scope: !7041)
!7060 = !DILocation(line: 677, column: 32, scope: !7041)
!7061 = !DILocation(line: 677, column: 47, scope: !7041)
!7062 = !DILocation(line: 677, column: 44, scope: !7041)
!7063 = !DILocation(line: 0, scope: !7041)
!7064 = !DILocation(line: 677, column: 2, scope: !7041)
!7065 = distinct !DISubprogram(name: "drm_atomic_state_put", scope: !4585, file: !4585, line: 435, type: !5082, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !349)
!7066 = !DILocalVariable(name: "state", arg: 1, scope: !7065, file: !4585, line: 435, type: !4583)
!7067 = !DILocation(line: 435, column: 66, scope: !7065)
!7068 = !DILocation(line: 437, column: 12, scope: !7065)
!7069 = !DILocation(line: 437, column: 19, scope: !7065)
!7070 = !DILocation(line: 437, column: 2, scope: !7065)
!7071 = !DILocation(line: 438, column: 1, scope: !7065)
