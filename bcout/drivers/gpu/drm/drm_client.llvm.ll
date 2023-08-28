; ModuleID = '../bcout/drivers/gpu/drm/drm_client.llvm.bc'
source_filename = "drivers/gpu/drm/drm_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.drm_gem_object = type { %struct.kref, i32, %struct.drm_device*, %struct.file*, %struct.drm_vma_offset_node, i64, i32, %struct.dma_buf*, %struct.dma_buf_attachment*, %struct.dma_resv*, %struct.dma_resv, %struct.drm_gem_object_funcs* }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, i8 }
%struct.drm_mm_node = type { i64, i64, i64, %struct.drm_mm*, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.drm_mm = type { void (%struct.drm_mm_node*, i64, i64*, i64*)*, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.dma_buf = type opaque
%struct.dma_buf_attachment = type opaque
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, %struct.dma_fence*, %struct.dma_resv_list* }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.66, i64, i64, i64, %struct.kref, i32 }
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.66 = type { %struct.list_head }
%struct.dma_resv_list = type { %struct.callback_head, i32, i32, [0 x %struct.dma_fence*] }
%struct.drm_gem_object_funcs = type { {}*, i32 (%struct.drm_gem_object*, %struct.drm_file*)*, void (%struct.drm_gem_object*, %struct.drm_file*)*, void (%struct.drm_printer*, i32, %struct.drm_gem_object*)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)*, i32 (%struct.drm_gem_object*)*, {}*, %struct.sg_table* (%struct.drm_gem_object*)*, i8* (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)*, %struct.vm_operations_struct* }
%struct.drm_printer = type { void (%struct.drm_printer*, %struct.va_format*)*, void (%struct.drm_printer*, i8*)*, i8*, i8* }
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_ioctl_desc = type { i32, i32, i32 (%struct.drm_device*, i8*, %struct.drm_file*)*, i8* }
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
%struct.drm_vblank_crtc = type { %struct.drm_device*, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, %struct.kthread_worker*, %struct.list_head, %struct.wait_queue_head }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, [16 x i8], %struct.drm_format_info*, %struct.drm_framebuffer_funcs*, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x %struct.drm_gem_object*] }
%struct.drm_mode_object = type { i32, i32, %struct.drm_object_properties*, %struct.kref, void (%struct.kref*)* }
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.67, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.67 = type { [4 x i8] }
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, i64*, %struct.drm_device*, %struct.list_head }
%struct.drm_atomic_state = type opaque
%struct.drm_mode_config_helper_funcs = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.drm_client_dev = type { %struct.drm_device*, i8*, %struct.list_head, %struct.drm_client_funcs*, %struct.drm_file*, %struct.mutex, %struct.drm_mode_set* }
%struct.drm_mode_set = type { %struct.drm_framebuffer*, %struct.drm_crtc*, %struct.drm_display_mode*, i32, i32, %struct.drm_connector**, i64 }
%struct.drm_crtc = type { %struct.drm_device*, %struct.device_node*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, %struct.drm_plane*, %struct.drm_plane*, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, %struct.drm_crtc_funcs*, i32, i16*, %struct.drm_crtc_helper_funcs*, %struct.drm_object_properties, %struct.drm_crtc_state*, %struct.list_head, %struct.spinlock, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], %struct.drm_self_refresh_data* }
%struct.drm_plane = type { %struct.drm_device*, %struct.list_head, i8*, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, i32*, i32, i8, i64*, i32, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_framebuffer*, %struct.drm_plane_funcs*, %struct.drm_object_properties, i32, i32, %struct.drm_plane_helper_funcs*, %struct.drm_plane_state*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_plane_funcs = type { i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_plane*)*, void (%struct.drm_plane*)*, i32 (%struct.drm_plane*, %struct.drm_property*, i64)*, %struct.drm_plane_state* (%struct.drm_plane*)*, void (%struct.drm_plane*, %struct.drm_plane_state*)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_plane*)*, void (%struct.drm_plane*)*, void (%struct.drm_printer*, %struct.drm_plane_state*)*, i1 (%struct.drm_plane*, i32, i64)* }
%struct.drm_plane_helper_funcs = type opaque
%struct.drm_plane_state = type { %struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.dma_fence*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.drm_property_blob*, %struct.drm_rect, %struct.drm_rect, i8, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.drm_property_blob = type { %struct.drm_mode_object, %struct.drm_device*, %struct.list_head, %struct.list_head, i64, i8* }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_commit = type opaque
%struct.drm_crtc_funcs = type { void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)*, i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32, i32)*, i32 (%struct.drm_crtc*, i16*, i16*, i16*, i32, %struct.drm_modeset_acquire_ctx*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_crtc*, %struct.drm_property*, i64)*, %struct.drm_crtc_state* (%struct.drm_crtc*)*, void (%struct.drm_crtc*, %struct.drm_crtc_state*)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i64)*, i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i64*)*, i32 (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*, i8*)*, i32 (%struct.drm_crtc*, i8*, i64*)*, i8** (%struct.drm_crtc*, i64*)*, void (%struct.drm_printer*, %struct.drm_crtc_state*)*, i32 (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*)*, void (%struct.drm_crtc*)*, i1 (%struct.drm_crtc*, i32*, i64*, i1)* }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.68 }
%struct.drm_pending_event = type { %struct.completion*, void (%struct.completion*)*, %struct.drm_event*, %struct.dma_fence*, %struct.drm_file*, %struct.list_head, %struct.list_head }
%struct.drm_event = type { i32, i32 }
%union.anon.68 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_crtc_helper_funcs = type opaque
%struct.drm_crtc_state = type { %struct.drm_crtc*, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.drm_property_blob*, i32, i8, i8, i8, %struct.drm_pending_vblank_event*, %struct.drm_crtc_commit*, %struct.drm_atomic_state* }
%struct.drm_crtc_crc = type { %struct.spinlock, i8*, i8, i8, %struct.drm_crtc_crc_entry*, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.drm_self_refresh_data = type opaque
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
%struct.hdr_sink_metadata = type { i32, %union.anon.69 }
%union.anon.69 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_client_funcs = type { %struct.module*, void (%struct.drm_client_dev*)*, i32 (%struct.drm_client_dev*)*, i32 (%struct.drm_client_dev*)* }
%struct.drm_client_buffer = type { %struct.drm_client_dev*, i32, i32, %struct.drm_gem_object*, i8*, %struct.drm_framebuffer* }
%struct.drm_mode_fb_cmd = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: ret=%d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/drm_client.c\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"[drm] *ERROR* Error removing FB:%u (%d)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_client_init(%struct.drm_device* %dev, %struct.drm_client_dev* %client, i8* %name, %struct.drm_client_funcs* %funcs) #0 !dbg !5741 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %name.addr = alloca i8*, align 8
  %funcs.addr = alloca %struct.drm_client_funcs*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  store %struct.drm_client_funcs* %funcs, %struct.drm_client_funcs** %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_funcs** %funcs.addr, metadata !5750, metadata !DIExpression()), !dbg !5751
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5752, metadata !DIExpression()), !dbg !5753
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5754
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %0, i32 2) #8, !dbg !5756
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !5757

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5758
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 5, !dbg !5759
  %2 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5759
  %dumb_create = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %2, i32 0, i32 28, !dbg !5760
  %3 = load i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)*, i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)** %dumb_create, align 8, !dbg !5760
  %tobool = icmp ne i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* %3, null, !dbg !5758
  br i1 %tobool, label %if.end, label %if.then, !dbg !5761

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -95, i32* %retval, align 4, !dbg !5762
  br label %return, !dbg !5762

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs.addr, align 8, !dbg !5763
  %tobool1 = icmp ne %struct.drm_client_funcs* %4, null, !dbg !5763
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !5765

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs.addr, align 8, !dbg !5766
  %owner = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %5, i32 0, i32 0, !dbg !5767
  %6 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5767
  %call2 = call zeroext i1 @try_module_get(%struct.module* %6) #8, !dbg !5768
  br i1 %call2, label %if.end4, label %if.then3, !dbg !5769

if.then3:                                         ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !5770
  br label %return, !dbg !5770

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %7 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5771
  %8 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5772
  %dev5 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %8, i32 0, i32 0, !dbg !5773
  store %struct.drm_device* %7, %struct.drm_device** %dev5, align 8, !dbg !5774
  %9 = load i8*, i8** %name.addr, align 8, !dbg !5775
  %10 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5776
  %name6 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %10, i32 0, i32 1, !dbg !5777
  store i8* %9, i8** %name6, align 8, !dbg !5778
  %11 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs.addr, align 8, !dbg !5779
  %12 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5780
  %funcs7 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %12, i32 0, i32 3, !dbg !5781
  store %struct.drm_client_funcs* %11, %struct.drm_client_funcs** %funcs7, align 8, !dbg !5782
  %13 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5783
  %call8 = call i32 @drm_client_modeset_create(%struct.drm_client_dev* %13) #8, !dbg !5784
  store i32 %call8, i32* %ret, align 4, !dbg !5785
  %14 = load i32, i32* %ret, align 4, !dbg !5786
  %tobool9 = icmp ne i32 %14, 0, !dbg !5786
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5788

if.then10:                                        ; preds = %if.end4
  br label %err_put_module, !dbg !5789

if.end11:                                         ; preds = %if.end4
  %15 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5790
  %call12 = call i32 @drm_client_open(%struct.drm_client_dev* %15) #8, !dbg !5791
  store i32 %call12, i32* %ret, align 4, !dbg !5792
  %16 = load i32, i32* %ret, align 4, !dbg !5793
  %tobool13 = icmp ne i32 %16, 0, !dbg !5793
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5795

if.then14:                                        ; preds = %if.end11
  br label %err_free, !dbg !5796

if.end15:                                         ; preds = %if.end11
  %17 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5797
  call void @drm_dev_get(%struct.drm_device* %17) #8, !dbg !5798
  store i32 0, i32* %retval, align 4, !dbg !5799
  br label %return, !dbg !5799

err_free:                                         ; preds = %if.then14
  call void @llvm.dbg.label(metadata !5800), !dbg !5801
  %18 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5802
  call void @drm_client_modeset_free(%struct.drm_client_dev* %18) #8, !dbg !5803
  br label %err_put_module, !dbg !5803

err_put_module:                                   ; preds = %err_free, %if.then10
  call void @llvm.dbg.label(metadata !5804), !dbg !5805
  %19 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs.addr, align 8, !dbg !5806
  %tobool16 = icmp ne %struct.drm_client_funcs* %19, null, !dbg !5806
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5808

if.then17:                                        ; preds = %err_put_module
  %20 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs.addr, align 8, !dbg !5809
  %owner18 = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %20, i32 0, i32 0, !dbg !5810
  %21 = load %struct.module*, %struct.module** %owner18, align 8, !dbg !5810
  call void @module_put(%struct.module* %21) #8, !dbg !5811
  br label %if.end19, !dbg !5811

if.end19:                                         ; preds = %if.then17, %err_put_module
  %22 = load i32, i32* %ret, align 4, !dbg !5812
  store i32 %22, i32* %retval, align 4, !dbg !5813
  br label %return, !dbg !5813

return:                                           ; preds = %if.end19, %if.end15, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5814
  ret i32 %23, !dbg !5814
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_feature(%struct.drm_device* %dev, i32 %feature) #0 !dbg !5815 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %feature.addr = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5824
  %1 = load i32, i32* %feature.addr, align 4, !dbg !5825
  %call = call zeroext i1 @drm_core_check_all_features(%struct.drm_device* %0, i32 %1) #8, !dbg !5826
  ret i1 %call, !dbg !5827
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !5828 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  ret i1 true, !dbg !5834
}

; Function Attrs: noredzone
declare dso_local i32 @drm_client_modeset_create(%struct.drm_client_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_client_open(%struct.drm_client_dev* %client) #0 !dbg !5835 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %dev = alloca %struct.drm_device*, align 8
  %file = alloca %struct.drm_file*, align 8
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5838, metadata !DIExpression()), !dbg !5839
  %0 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5840
  %dev1 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %0, i32 0, i32 0, !dbg !5841
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5841
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5839
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file, metadata !5842, metadata !DIExpression()), !dbg !5843
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5844
  %primary = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 7, !dbg !5845
  %3 = load %struct.drm_minor*, %struct.drm_minor** %primary, align 8, !dbg !5845
  %call = call %struct.drm_file* @drm_file_alloc(%struct.drm_minor* %3) #8, !dbg !5846
  store %struct.drm_file* %call, %struct.drm_file** %file, align 8, !dbg !5847
  %4 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !5848
  %5 = bitcast %struct.drm_file* %4 to i8*, !dbg !5848
  %call2 = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !5850
  br i1 %call2, label %if.then, label %if.end, !dbg !5851

if.then:                                          ; preds = %entry
  %6 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !5852
  %7 = bitcast %struct.drm_file* %6 to i8*, !dbg !5852
  %call3 = call i64 @PTR_ERR(i8* %7) #8, !dbg !5853
  %conv = trunc i64 %call3 to i32, !dbg !5853
  store i32 %conv, i32* %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

if.end:                                           ; preds = %entry
  %8 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5855
  %filelist_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 18, !dbg !5856
  call void @mutex_lock(%struct.mutex* %filelist_mutex) #8, !dbg !5857
  %9 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !5858
  %lhead = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 11, !dbg !5859
  %10 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5860
  %filelist_internal = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 20, !dbg !5861
  call void @list_add(%struct.list_head* %lhead, %struct.list_head* %filelist_internal) #8, !dbg !5862
  %11 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5863
  %filelist_mutex4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 18, !dbg !5864
  call void @mutex_unlock(%struct.mutex* %filelist_mutex4) #8, !dbg !5865
  %12 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !5866
  %13 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5867
  %file5 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %13, i32 0, i32 4, !dbg !5868
  store %struct.drm_file* %12, %struct.drm_file** %file5, align 8, !dbg !5869
  store i32 0, i32* %retval, align 4, !dbg !5870
  br label %return, !dbg !5870

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5871
  ret i32 %14, !dbg !5871
}

; Function Attrs: noredzone
declare dso_local void @drm_dev_get(%struct.drm_device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @drm_client_modeset_free(%struct.drm_client_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !5872 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  ret void, !dbg !5877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_register(%struct.drm_client_dev* %client) #0 !dbg !5878 {
entry:
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %dev = alloca %struct.drm_device*, align 8
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5881, metadata !DIExpression()), !dbg !5882
  %0 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5883
  %dev1 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %0, i32 0, i32 0, !dbg !5884
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5884
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5882
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5885
  %clientlist_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 21, !dbg !5886
  call void @mutex_lock(%struct.mutex* %clientlist_mutex) #8, !dbg !5887
  %3 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5888
  %list = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %3, i32 0, i32 2, !dbg !5889
  %4 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5890
  %clientlist = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 22, !dbg !5891
  call void @list_add(%struct.list_head* %list, %struct.list_head* %clientlist) #8, !dbg !5892
  %5 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5893
  %clientlist_mutex2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 21, !dbg !5894
  call void @mutex_unlock(%struct.mutex* %clientlist_mutex2) #8, !dbg !5895
  ret void, !dbg !5896
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5897 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5903, metadata !DIExpression()), !dbg !5904
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5905
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5906
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5907
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5908
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5908
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !5909
  ret void, !dbg !5910
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_release(%struct.drm_client_dev* %client) #0 !dbg !5911 {
entry:
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %dev = alloca %struct.drm_device*, align 8
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5914, metadata !DIExpression()), !dbg !5915
  %0 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5916
  %dev1 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %0, i32 0, i32 0, !dbg !5917
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5917
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5915
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5918
  %dev2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 3, !dbg !5918
  %3 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !5918
  %4 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5918
  %name = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %4, i32 0, i32 1, !dbg !5918
  %5 = load i8*, i8** %name, align 8, !dbg !5918
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %3, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %5) #8, !dbg !5918
  %6 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5919
  call void @drm_client_modeset_free(%struct.drm_client_dev* %6) #8, !dbg !5920
  %7 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5921
  call void @drm_client_close(%struct.drm_client_dev* %7) #8, !dbg !5922
  %8 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5923
  call void @drm_dev_put(%struct.drm_device* %8) #8, !dbg !5924
  %9 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5925
  %funcs = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %9, i32 0, i32 3, !dbg !5927
  %10 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs, align 8, !dbg !5927
  %tobool = icmp ne %struct.drm_client_funcs* %10, null, !dbg !5925
  br i1 %tobool, label %if.then, label %if.end, !dbg !5928

if.then:                                          ; preds = %entry
  %11 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5929
  %funcs3 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %11, i32 0, i32 3, !dbg !5930
  %12 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs3, align 8, !dbg !5930
  %owner = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %12, i32 0, i32 0, !dbg !5931
  %13 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5931
  call void @module_put(%struct.module* %13) #8, !dbg !5932
  br label %if.end, !dbg !5932

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5933
}

; Function Attrs: noredzone
declare dso_local void @drm_dev_dbg(%struct.device*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_client_close(%struct.drm_client_dev* %client) #0 !dbg !5934 {
entry:
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %dev = alloca %struct.drm_device*, align 8
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5937, metadata !DIExpression()), !dbg !5938
  %0 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5939
  %dev1 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %0, i32 0, i32 0, !dbg !5940
  %1 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5940
  store %struct.drm_device* %1, %struct.drm_device** %dev, align 8, !dbg !5938
  %2 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5941
  %filelist_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 18, !dbg !5942
  call void @mutex_lock(%struct.mutex* %filelist_mutex) #8, !dbg !5943
  %3 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5944
  %file = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %3, i32 0, i32 4, !dbg !5945
  %4 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !5945
  %lhead = getelementptr inbounds %struct.drm_file, %struct.drm_file* %4, i32 0, i32 11, !dbg !5946
  call void @list_del(%struct.list_head* %lhead) #8, !dbg !5947
  %5 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5948
  %filelist_mutex2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 18, !dbg !5949
  call void @mutex_unlock(%struct.mutex* %filelist_mutex2) #8, !dbg !5950
  %6 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !5951
  %file3 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %6, i32 0, i32 4, !dbg !5952
  %7 = load %struct.drm_file*, %struct.drm_file** %file3, align 8, !dbg !5952
  call void @drm_file_free(%struct.drm_file* %7) #8, !dbg !5953
  ret void, !dbg !5954
}

; Function Attrs: noredzone
declare dso_local void @drm_dev_put(%struct.drm_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_dev_unregister(%struct.drm_device* %dev) #0 !dbg !5955 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %client = alloca %struct.drm_client_dev*, align 8
  %tmp = alloca %struct.drm_client_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.drm_client_dev*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.drm_client_dev*, align 8
  %__mptr17 = alloca i8*, align 8
  %tmp22 = alloca %struct.drm_client_dev*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client, metadata !5958, metadata !DIExpression()), !dbg !5959
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %tmp, metadata !5960, metadata !DIExpression()), !dbg !5961
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5962
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %0, i32 2) #8, !dbg !5964
  br i1 %call, label %if.end, label %if.then, !dbg !5965

if.then:                                          ; preds = %entry
  br label %return, !dbg !5966

if.end:                                           ; preds = %entry
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5967
  %clientlist_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 21, !dbg !5968
  call void @mutex_lock(%struct.mutex* %clientlist_mutex) #8, !dbg !5969
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5970, metadata !DIExpression()), !dbg !5973
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5973
  %clientlist = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 22, !dbg !5973
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %clientlist, i32 0, i32 0, !dbg !5973
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5973
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !5973
  store i8* %4, i8** %__mptr, align 8, !dbg !5973
  br label %do.body, !dbg !5973

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5974

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5973
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !5973
  %6 = bitcast i8* %add.ptr to %struct.drm_client_dev*, !dbg !5973
  store %struct.drm_client_dev* %6, %struct.drm_client_dev** %tmp1, align 8, !dbg !5974
  %7 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp1, align 8, !dbg !5973
  store %struct.drm_client_dev* %7, %struct.drm_client_dev** %client, align 8, !dbg !5976
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5977, metadata !DIExpression()), !dbg !5979
  %8 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !5979
  %list = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %8, i32 0, i32 2, !dbg !5979
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !5979
  %9 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !5979
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !5979
  store i8* %10, i8** %__mptr2, align 8, !dbg !5979
  br label %do.body4, !dbg !5979

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5980

do.end5:                                          ; preds = %do.body4
  %11 = load i8*, i8** %__mptr2, align 8, !dbg !5979
  %add.ptr7 = getelementptr i8, i8* %11, i64 -16, !dbg !5979
  %12 = bitcast i8* %add.ptr7 to %struct.drm_client_dev*, !dbg !5979
  store %struct.drm_client_dev* %12, %struct.drm_client_dev** %tmp6, align 8, !dbg !5980
  %13 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp6, align 8, !dbg !5979
  store %struct.drm_client_dev* %13, %struct.drm_client_dev** %tmp, align 8, !dbg !5976
  br label %for.cond, !dbg !5976

for.cond:                                         ; preds = %do.end21, %do.end5
  %14 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !5982
  %list8 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %14, i32 0, i32 2, !dbg !5982
  %15 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5982
  %clientlist9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 22, !dbg !5982
  %cmp = icmp eq %struct.list_head* %list8, %clientlist9, !dbg !5982
  %lnot = xor i1 %cmp, true, !dbg !5982
  br i1 %lnot, label %for.body, label %for.end, !dbg !5976

for.body:                                         ; preds = %for.cond
  %16 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !5984
  %list10 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %16, i32 0, i32 2, !dbg !5986
  call void @list_del(%struct.list_head* %list10) #8, !dbg !5987
  %17 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !5988
  %funcs = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %17, i32 0, i32 3, !dbg !5990
  %18 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs, align 8, !dbg !5990
  %tobool = icmp ne %struct.drm_client_funcs* %18, null, !dbg !5988
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5991

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !5992
  %funcs11 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %19, i32 0, i32 3, !dbg !5993
  %20 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs11, align 8, !dbg !5993
  %unregister = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %20, i32 0, i32 1, !dbg !5994
  %21 = load void (%struct.drm_client_dev*)*, void (%struct.drm_client_dev*)** %unregister, align 8, !dbg !5994
  %tobool12 = icmp ne void (%struct.drm_client_dev*)* %21, null, !dbg !5992
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5995

if.then13:                                        ; preds = %land.lhs.true
  %22 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !5996
  %funcs14 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %22, i32 0, i32 3, !dbg !5998
  %23 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs14, align 8, !dbg !5998
  %unregister15 = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %23, i32 0, i32 1, !dbg !5999
  %24 = load void (%struct.drm_client_dev*)*, void (%struct.drm_client_dev*)** %unregister15, align 8, !dbg !5999
  %25 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6000
  call void %24(%struct.drm_client_dev* %25) #8, !dbg !5996
  br label %if.end16, !dbg !6001

if.else:                                          ; preds = %land.lhs.true, %for.body
  %26 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6002
  call void @drm_client_release(%struct.drm_client_dev* %26) #8, !dbg !6004
  %27 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6005
  %28 = bitcast %struct.drm_client_dev* %27 to i8*, !dbg !6005
  call void @kfree(i8* %28) #8, !dbg !6006
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  br label %for.inc, !dbg !6007

for.inc:                                          ; preds = %if.end16
  %29 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp, align 8, !dbg !5982
  store %struct.drm_client_dev* %29, %struct.drm_client_dev** %client, align 8, !dbg !5982
  call void @llvm.dbg.declare(metadata i8** %__mptr17, metadata !6008, metadata !DIExpression()), !dbg !6010
  %30 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp, align 8, !dbg !6010
  %list18 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %30, i32 0, i32 2, !dbg !6010
  %next19 = getelementptr inbounds %struct.list_head, %struct.list_head* %list18, i32 0, i32 0, !dbg !6010
  %31 = load %struct.list_head*, %struct.list_head** %next19, align 8, !dbg !6010
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !6010
  store i8* %32, i8** %__mptr17, align 8, !dbg !6010
  br label %do.body20, !dbg !6010

do.body20:                                        ; preds = %for.inc
  br label %do.end21, !dbg !6011

do.end21:                                         ; preds = %do.body20
  %33 = load i8*, i8** %__mptr17, align 8, !dbg !6010
  %add.ptr23 = getelementptr i8, i8* %33, i64 -16, !dbg !6010
  %34 = bitcast i8* %add.ptr23 to %struct.drm_client_dev*, !dbg !6010
  store %struct.drm_client_dev* %34, %struct.drm_client_dev** %tmp22, align 8, !dbg !6011
  %35 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp22, align 8, !dbg !6010
  store %struct.drm_client_dev* %35, %struct.drm_client_dev** %tmp, align 8, !dbg !5982
  br label %for.cond, !dbg !5982, !llvm.loop !6013

for.end:                                          ; preds = %for.cond
  %36 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6015
  %clientlist_mutex24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 21, !dbg !6016
  call void @mutex_unlock(%struct.mutex* %clientlist_mutex24) #8, !dbg !6017
  br label %return, !dbg !6018

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !6018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !6019 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6024
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !6025
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6026
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6027
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6028
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6029
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6030
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6031
  ret void, !dbg !6032
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_dev_hotplug(%struct.drm_device* %dev) #0 !dbg !6033 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %client = alloca %struct.drm_client_dev*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_client_dev*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.drm_client_dev*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client, metadata !6036, metadata !DIExpression()), !dbg !6037
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6038, metadata !DIExpression()), !dbg !6039
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6040
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %0, i32 2) #8, !dbg !6042
  br i1 %call, label %if.end, label %if.then, !dbg !6043

if.then:                                          ; preds = %entry
  br label %return, !dbg !6044

if.end:                                           ; preds = %entry
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6045
  %clientlist_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 21, !dbg !6046
  call void @mutex_lock(%struct.mutex* %clientlist_mutex) #8, !dbg !6047
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6048, metadata !DIExpression()), !dbg !6051
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6051
  %clientlist = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 22, !dbg !6051
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %clientlist, i32 0, i32 0, !dbg !6051
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6051
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !6051
  store i8* %4, i8** %__mptr, align 8, !dbg !6051
  br label %do.body, !dbg !6051

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6052

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6051
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6051
  %6 = bitcast i8* %add.ptr to %struct.drm_client_dev*, !dbg !6051
  store %struct.drm_client_dev* %6, %struct.drm_client_dev** %tmp, align 8, !dbg !6052
  %7 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp, align 8, !dbg !6051
  store %struct.drm_client_dev* %7, %struct.drm_client_dev** %client, align 8, !dbg !6054
  br label %for.cond, !dbg !6054

for.cond:                                         ; preds = %do.end14, %do.end
  %8 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6055
  %list = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %8, i32 0, i32 2, !dbg !6055
  %9 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6055
  %clientlist1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 22, !dbg !6055
  %cmp = icmp eq %struct.list_head* %list, %clientlist1, !dbg !6055
  %lnot = xor i1 %cmp, true, !dbg !6055
  br i1 %lnot, label %for.body, label %for.end, !dbg !6054

for.body:                                         ; preds = %for.cond
  %10 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6057
  %funcs = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %10, i32 0, i32 3, !dbg !6060
  %11 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs, align 8, !dbg !6060
  %tobool = icmp ne %struct.drm_client_funcs* %11, null, !dbg !6057
  br i1 %tobool, label %lor.lhs.false, label %if.then4, !dbg !6061

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6062
  %funcs2 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %12, i32 0, i32 3, !dbg !6063
  %13 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs2, align 8, !dbg !6063
  %hotplug = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %13, i32 0, i32 3, !dbg !6064
  %14 = load i32 (%struct.drm_client_dev*)*, i32 (%struct.drm_client_dev*)** %hotplug, align 8, !dbg !6064
  %tobool3 = icmp ne i32 (%struct.drm_client_dev*)* %14, null, !dbg !6062
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6065

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !6066

if.end5:                                          ; preds = %lor.lhs.false
  %15 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6067
  %funcs6 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %15, i32 0, i32 3, !dbg !6068
  %16 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs6, align 8, !dbg !6068
  %hotplug7 = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %16, i32 0, i32 3, !dbg !6069
  %17 = load i32 (%struct.drm_client_dev*)*, i32 (%struct.drm_client_dev*)** %hotplug7, align 8, !dbg !6069
  %18 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6070
  %call8 = call i32 %17(%struct.drm_client_dev* %18) #8, !dbg !6067
  store i32 %call8, i32* %ret, align 4, !dbg !6071
  %19 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6072
  %dev9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 3, !dbg !6072
  %20 = load %struct.device*, %struct.device** %dev9, align 8, !dbg !6072
  %21 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6072
  %name = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %21, i32 0, i32 1, !dbg !6072
  %22 = load i8*, i8** %name, align 8, !dbg !6072
  %23 = load i32, i32* %ret, align 4, !dbg !6072
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %20, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23) #8, !dbg !6072
  br label %for.inc, !dbg !6073

for.inc:                                          ; preds = %if.end5, %if.then4
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !6074, metadata !DIExpression()), !dbg !6076
  %24 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6076
  %list11 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %24, i32 0, i32 2, !dbg !6076
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %list11, i32 0, i32 0, !dbg !6076
  %25 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !6076
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !6076
  store i8* %26, i8** %__mptr10, align 8, !dbg !6076
  br label %do.body13, !dbg !6076

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !6077

do.end14:                                         ; preds = %do.body13
  %27 = load i8*, i8** %__mptr10, align 8, !dbg !6076
  %add.ptr16 = getelementptr i8, i8* %27, i64 -16, !dbg !6076
  %28 = bitcast i8* %add.ptr16 to %struct.drm_client_dev*, !dbg !6076
  store %struct.drm_client_dev* %28, %struct.drm_client_dev** %tmp15, align 8, !dbg !6077
  %29 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp15, align 8, !dbg !6076
  store %struct.drm_client_dev* %29, %struct.drm_client_dev** %client, align 8, !dbg !6055
  br label %for.cond, !dbg !6055, !llvm.loop !6079

for.end:                                          ; preds = %for.cond
  %30 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6081
  %clientlist_mutex17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 21, !dbg !6082
  call void @mutex_unlock(%struct.mutex* %clientlist_mutex17) #8, !dbg !6083
  br label %return, !dbg !6084

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !6084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_dev_restore(%struct.drm_device* %dev) #0 !dbg !6085 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %client = alloca %struct.drm_client_dev*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_client_dev*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.drm_client_dev*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client, metadata !6088, metadata !DIExpression()), !dbg !6089
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6090, metadata !DIExpression()), !dbg !6091
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6092
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %0, i32 2) #8, !dbg !6094
  br i1 %call, label %if.end, label %if.then, !dbg !6095

if.then:                                          ; preds = %entry
  br label %return, !dbg !6096

if.end:                                           ; preds = %entry
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6097
  %clientlist_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 21, !dbg !6098
  call void @mutex_lock(%struct.mutex* %clientlist_mutex) #8, !dbg !6099
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6100, metadata !DIExpression()), !dbg !6103
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6103
  %clientlist = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 22, !dbg !6103
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %clientlist, i32 0, i32 0, !dbg !6103
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6103
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !6103
  store i8* %4, i8** %__mptr, align 8, !dbg !6103
  br label %do.body, !dbg !6103

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6104

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6103
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6103
  %6 = bitcast i8* %add.ptr to %struct.drm_client_dev*, !dbg !6103
  store %struct.drm_client_dev* %6, %struct.drm_client_dev** %tmp, align 8, !dbg !6104
  %7 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp, align 8, !dbg !6103
  store %struct.drm_client_dev* %7, %struct.drm_client_dev** %client, align 8, !dbg !6106
  br label %for.cond, !dbg !6106

for.cond:                                         ; preds = %do.end17, %do.end
  %8 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6107
  %list = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %8, i32 0, i32 2, !dbg !6107
  %9 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6107
  %clientlist1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 22, !dbg !6107
  %cmp = icmp eq %struct.list_head* %list, %clientlist1, !dbg !6107
  %lnot = xor i1 %cmp, true, !dbg !6107
  br i1 %lnot, label %for.body, label %for.end, !dbg !6106

for.body:                                         ; preds = %for.cond
  %10 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6109
  %funcs = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %10, i32 0, i32 3, !dbg !6112
  %11 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs, align 8, !dbg !6112
  %tobool = icmp ne %struct.drm_client_funcs* %11, null, !dbg !6109
  br i1 %tobool, label %lor.lhs.false, label %if.then4, !dbg !6113

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6114
  %funcs2 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %12, i32 0, i32 3, !dbg !6115
  %13 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs2, align 8, !dbg !6115
  %restore = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %13, i32 0, i32 2, !dbg !6116
  %14 = load i32 (%struct.drm_client_dev*)*, i32 (%struct.drm_client_dev*)** %restore, align 8, !dbg !6116
  %tobool3 = icmp ne i32 (%struct.drm_client_dev*)* %14, null, !dbg !6114
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6117

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !6118

if.end5:                                          ; preds = %lor.lhs.false
  %15 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6119
  %funcs6 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %15, i32 0, i32 3, !dbg !6120
  %16 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %funcs6, align 8, !dbg !6120
  %restore7 = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %16, i32 0, i32 2, !dbg !6121
  %17 = load i32 (%struct.drm_client_dev*)*, i32 (%struct.drm_client_dev*)** %restore7, align 8, !dbg !6121
  %18 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6122
  %call8 = call i32 %17(%struct.drm_client_dev* %18) #8, !dbg !6119
  store i32 %call8, i32* %ret, align 4, !dbg !6123
  %19 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6124
  %dev9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 3, !dbg !6124
  %20 = load %struct.device*, %struct.device** %dev9, align 8, !dbg !6124
  %21 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6124
  %name = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %21, i32 0, i32 1, !dbg !6124
  %22 = load i8*, i8** %name, align 8, !dbg !6124
  %23 = load i32, i32* %ret, align 4, !dbg !6124
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %20, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23) #8, !dbg !6124
  %24 = load i32, i32* %ret, align 4, !dbg !6125
  %tobool10 = icmp ne i32 %24, 0, !dbg !6125
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6127

if.then11:                                        ; preds = %if.end5
  br label %for.end, !dbg !6128

if.end12:                                         ; preds = %if.end5
  br label %for.inc, !dbg !6129

for.inc:                                          ; preds = %if.end12, %if.then4
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !6130, metadata !DIExpression()), !dbg !6132
  %25 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6132
  %list14 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %25, i32 0, i32 2, !dbg !6132
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %list14, i32 0, i32 0, !dbg !6132
  %26 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !6132
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !6132
  store i8* %27, i8** %__mptr13, align 8, !dbg !6132
  br label %do.body16, !dbg !6132

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !6133

do.end17:                                         ; preds = %do.body16
  %28 = load i8*, i8** %__mptr13, align 8, !dbg !6132
  %add.ptr19 = getelementptr i8, i8* %28, i64 -16, !dbg !6132
  %29 = bitcast i8* %add.ptr19 to %struct.drm_client_dev*, !dbg !6132
  store %struct.drm_client_dev* %29, %struct.drm_client_dev** %tmp18, align 8, !dbg !6133
  %30 = load %struct.drm_client_dev*, %struct.drm_client_dev** %tmp18, align 8, !dbg !6132
  store %struct.drm_client_dev* %30, %struct.drm_client_dev** %client, align 8, !dbg !6107
  br label %for.cond, !dbg !6107, !llvm.loop !6135

for.end:                                          ; preds = %if.then11, %for.cond
  %31 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6137
  %clientlist_mutex20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 21, !dbg !6138
  call void @mutex_unlock(%struct.mutex* %clientlist_mutex20) #8, !dbg !6139
  br label %return, !dbg !6140

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !6140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @drm_client_buffer_vmap(%struct.drm_client_buffer* %buffer) #0 !dbg !6141 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  %vaddr = alloca i8*, align 8
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  call void @llvm.dbg.declare(metadata i8** %vaddr, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6157
  %vaddr1 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %0, i32 0, i32 4, !dbg !6159
  %1 = load i8*, i8** %vaddr1, align 8, !dbg !6159
  %tobool = icmp ne i8* %1, null, !dbg !6157
  br i1 %tobool, label %if.then, label %if.end, !dbg !6160

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6161
  %vaddr2 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %2, i32 0, i32 4, !dbg !6162
  %3 = load i8*, i8** %vaddr2, align 8, !dbg !6162
  store i8* %3, i8** %retval, align 8, !dbg !6163
  br label %return, !dbg !6163

if.end:                                           ; preds = %entry
  %4 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6164
  %gem = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %4, i32 0, i32 3, !dbg !6165
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %gem, align 8, !dbg !6165
  %call = call i8* @drm_gem_vmap(%struct.drm_gem_object* %5) #8, !dbg !6166
  store i8* %call, i8** %vaddr, align 8, !dbg !6167
  %6 = load i8*, i8** %vaddr, align 8, !dbg !6168
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #8, !dbg !6170
  br i1 %call3, label %if.then4, label %if.end5, !dbg !6171

if.then4:                                         ; preds = %if.end
  %7 = load i8*, i8** %vaddr, align 8, !dbg !6172
  store i8* %7, i8** %retval, align 8, !dbg !6173
  br label %return, !dbg !6173

if.end5:                                          ; preds = %if.end
  %8 = load i8*, i8** %vaddr, align 8, !dbg !6174
  %9 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6175
  %vaddr6 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %9, i32 0, i32 4, !dbg !6176
  store i8* %8, i8** %vaddr6, align 8, !dbg !6177
  %10 = load i8*, i8** %vaddr, align 8, !dbg !6178
  store i8* %10, i8** %retval, align 8, !dbg !6179
  br label %return, !dbg !6179

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load i8*, i8** %retval, align 8, !dbg !6180
  ret i8* %11, !dbg !6180
}

; Function Attrs: noredzone
declare dso_local i8* @drm_gem_vmap(%struct.drm_gem_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !6181 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6187
  %1 = ptrtoint i8* %0 to i64, !dbg !6187
  %2 = inttoptr i64 %1 to i8*, !dbg !6187
  %3 = ptrtoint i8* %2 to i64, !dbg !6187
  %cmp = icmp uge i64 %3, -4095, !dbg !6187
  %lnot = xor i1 %cmp, true, !dbg !6187
  %lnot1 = xor i1 %lnot, true, !dbg !6187
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6187
  %conv = sext i32 %lnot.ext to i64, !dbg !6187
  %tobool = icmp ne i64 %conv, 0, !dbg !6187
  ret i1 %tobool, !dbg !6188
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_buffer_vunmap(%struct.drm_client_buffer* %buffer) #0 !dbg !6189 {
entry:
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6194
  %gem = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %0, i32 0, i32 3, !dbg !6195
  %1 = load %struct.drm_gem_object*, %struct.drm_gem_object** %gem, align 8, !dbg !6195
  %2 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6196
  %vaddr = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %2, i32 0, i32 4, !dbg !6197
  %3 = load i8*, i8** %vaddr, align 8, !dbg !6197
  call void @drm_gem_vunmap(%struct.drm_gem_object* %1, i8* %3) #8, !dbg !6198
  %4 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6199
  %vaddr1 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %4, i32 0, i32 4, !dbg !6200
  store i8* null, i8** %vaddr1, align 8, !dbg !6201
  ret void, !dbg !6202
}

; Function Attrs: noredzone
declare dso_local void @drm_gem_vunmap(%struct.drm_gem_object*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_client_buffer* @drm_client_framebuffer_create(%struct.drm_client_dev* %client, i32 %width, i32 %height, i32 %format) #0 !dbg !6203 {
entry:
  %retval = alloca %struct.drm_client_buffer*, align 8
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %buffer = alloca %struct.drm_client_buffer*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !6206, metadata !DIExpression()), !dbg !6207
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !6210, metadata !DIExpression()), !dbg !6211
  store i32 %format, i32* %format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %format.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer, metadata !6214, metadata !DIExpression()), !dbg !6215
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6216, metadata !DIExpression()), !dbg !6217
  %0 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !6218
  %1 = load i32, i32* %width.addr, align 4, !dbg !6219
  %2 = load i32, i32* %height.addr, align 4, !dbg !6220
  %3 = load i32, i32* %format.addr, align 4, !dbg !6221
  %call = call %struct.drm_client_buffer* @drm_client_buffer_create(%struct.drm_client_dev* %0, i32 %1, i32 %2, i32 %3) #8, !dbg !6222
  store %struct.drm_client_buffer* %call, %struct.drm_client_buffer** %buffer, align 8, !dbg !6223
  %4 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6224
  %5 = bitcast %struct.drm_client_buffer* %4 to i8*, !dbg !6224
  %call1 = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !6226
  br i1 %call1, label %if.then, label %if.end, !dbg !6227

if.then:                                          ; preds = %entry
  %6 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6228
  store %struct.drm_client_buffer* %6, %struct.drm_client_buffer** %retval, align 8, !dbg !6229
  br label %return, !dbg !6229

if.end:                                           ; preds = %entry
  %7 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6230
  %8 = load i32, i32* %width.addr, align 4, !dbg !6231
  %9 = load i32, i32* %height.addr, align 4, !dbg !6232
  %10 = load i32, i32* %format.addr, align 4, !dbg !6233
  %call2 = call i32 @drm_client_buffer_addfb(%struct.drm_client_buffer* %7, i32 %8, i32 %9, i32 %10) #8, !dbg !6234
  store i32 %call2, i32* %ret, align 4, !dbg !6235
  %11 = load i32, i32* %ret, align 4, !dbg !6236
  %tobool = icmp ne i32 %11, 0, !dbg !6236
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !6238

if.then3:                                         ; preds = %if.end
  %12 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6239
  call void @drm_client_buffer_delete(%struct.drm_client_buffer* %12) #8, !dbg !6241
  %13 = load i32, i32* %ret, align 4, !dbg !6242
  %conv = sext i32 %13 to i64, !dbg !6242
  %call4 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !6243
  %14 = bitcast i8* %call4 to %struct.drm_client_buffer*, !dbg !6243
  store %struct.drm_client_buffer* %14, %struct.drm_client_buffer** %retval, align 8, !dbg !6244
  br label %return, !dbg !6244

if.end5:                                          ; preds = %if.end
  %15 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6245
  store %struct.drm_client_buffer* %15, %struct.drm_client_buffer** %retval, align 8, !dbg !6246
  br label %return, !dbg !6246

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %16 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %retval, align 8, !dbg !6247
  ret %struct.drm_client_buffer* %16, !dbg !6247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_client_buffer* @drm_client_buffer_create(%struct.drm_client_dev* %client, i32 %width, i32 %height, i32 %format) #0 !dbg !6248 {
entry:
  %retval = alloca %struct.drm_client_buffer*, align 8
  %client.addr = alloca %struct.drm_client_dev*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %info = alloca %struct.drm_format_info*, align 8
  %dumb_args = alloca %struct.drm_mode_create_dumb, align 8
  %dev = alloca %struct.drm_device*, align 8
  %buffer = alloca %struct.drm_client_buffer*, align 8
  %obj = alloca %struct.drm_gem_object*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_client_dev* %client, %struct.drm_client_dev** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client.addr, metadata !6249, metadata !DIExpression()), !dbg !6250
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  store i32 %format, i32* %format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %format.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info, metadata !6257, metadata !DIExpression()), !dbg !6258
  %0 = load i32, i32* %format.addr, align 4, !dbg !6259
  %call = call %struct.drm_format_info* @drm_format_info(i32 %0) #8, !dbg !6260
  store %struct.drm_format_info* %call, %struct.drm_format_info** %info, align 8, !dbg !6258
  call void @llvm.dbg.declare(metadata %struct.drm_mode_create_dumb* %dumb_args, metadata !6261, metadata !DIExpression()), !dbg !6262
  %1 = bitcast %struct.drm_mode_create_dumb* %dumb_args to i8*, !dbg !6262
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 32, i1 false), !dbg !6262
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !6263, metadata !DIExpression()), !dbg !6264
  %2 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !6265
  %dev1 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %2, i32 0, i32 0, !dbg !6266
  %3 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !6266
  store %struct.drm_device* %3, %struct.drm_device** %dev, align 8, !dbg !6264
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer, metadata !6267, metadata !DIExpression()), !dbg !6268
  call void @llvm.dbg.declare(metadata %struct.drm_gem_object** %obj, metadata !6269, metadata !DIExpression()), !dbg !6270
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6271, metadata !DIExpression()), !dbg !6272
  %call2 = call i8* @kzalloc(i64 40, i32 3264) #8, !dbg !6273
  %4 = bitcast i8* %call2 to %struct.drm_client_buffer*, !dbg !6273
  store %struct.drm_client_buffer* %4, %struct.drm_client_buffer** %buffer, align 8, !dbg !6274
  %5 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6275
  %tobool = icmp ne %struct.drm_client_buffer* %5, null, !dbg !6275
  br i1 %tobool, label %if.end, label %if.then, !dbg !6277

if.then:                                          ; preds = %entry
  %call3 = call i8* @ERR_PTR(i64 -12) #8, !dbg !6278
  %6 = bitcast i8* %call3 to %struct.drm_client_buffer*, !dbg !6278
  store %struct.drm_client_buffer* %6, %struct.drm_client_buffer** %retval, align 8, !dbg !6279
  br label %return, !dbg !6279

if.end:                                           ; preds = %entry
  %7 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !6280
  %8 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6281
  %client4 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %8, i32 0, i32 0, !dbg !6282
  store %struct.drm_client_dev* %7, %struct.drm_client_dev** %client4, align 8, !dbg !6283
  %9 = load i32, i32* %width.addr, align 4, !dbg !6284
  %width5 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %dumb_args, i32 0, i32 1, !dbg !6285
  store i32 %9, i32* %width5, align 4, !dbg !6286
  %10 = load i32, i32* %height.addr, align 4, !dbg !6287
  %height6 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %dumb_args, i32 0, i32 0, !dbg !6288
  store i32 %10, i32* %height6, align 8, !dbg !6289
  %11 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !6290
  %12 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %11, i32 0, i32 3, !dbg !6291
  %cpp = bitcast %union.anon.67* %12 to [4 x i8]*, !dbg !6291
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %cpp, i64 0, i64 0, !dbg !6290
  %13 = load i8, i8* %arrayidx, align 2, !dbg !6290
  %conv = zext i8 %13 to i32, !dbg !6290
  %mul = mul i32 %conv, 8, !dbg !6292
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %dumb_args, i32 0, i32 2, !dbg !6293
  store i32 %mul, i32* %bpp, align 8, !dbg !6294
  %14 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6295
  %15 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !6296
  %file = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %15, i32 0, i32 4, !dbg !6297
  %16 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !6297
  %call7 = call i32 @drm_mode_create_dumb(%struct.drm_device* %14, %struct.drm_mode_create_dumb* %dumb_args, %struct.drm_file* %16) #8, !dbg !6298
  store i32 %call7, i32* %ret, align 4, !dbg !6299
  %17 = load i32, i32* %ret, align 4, !dbg !6300
  %tobool8 = icmp ne i32 %17, 0, !dbg !6300
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6302

if.then9:                                         ; preds = %if.end
  br label %err_delete, !dbg !6303

if.end10:                                         ; preds = %if.end
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %dumb_args, i32 0, i32 4, !dbg !6304
  %18 = load i32, i32* %handle, align 8, !dbg !6304
  %19 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6305
  %handle11 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %19, i32 0, i32 1, !dbg !6306
  store i32 %18, i32* %handle11, align 8, !dbg !6307
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %dumb_args, i32 0, i32 5, !dbg !6308
  %20 = load i32, i32* %pitch, align 4, !dbg !6308
  %21 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6309
  %pitch12 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %21, i32 0, i32 2, !dbg !6310
  store i32 %20, i32* %pitch12, align 4, !dbg !6311
  %22 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client.addr, align 8, !dbg !6312
  %file13 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %22, i32 0, i32 4, !dbg !6313
  %23 = load %struct.drm_file*, %struct.drm_file** %file13, align 8, !dbg !6313
  %handle14 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %dumb_args, i32 0, i32 4, !dbg !6314
  %24 = load i32, i32* %handle14, align 8, !dbg !6314
  %call15 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %23, i32 %24) #8, !dbg !6315
  store %struct.drm_gem_object* %call15, %struct.drm_gem_object** %obj, align 8, !dbg !6316
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %obj, align 8, !dbg !6317
  %tobool16 = icmp ne %struct.drm_gem_object* %25, null, !dbg !6317
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6319

if.then17:                                        ; preds = %if.end10
  store i32 -2, i32* %ret, align 4, !dbg !6320
  br label %err_delete, !dbg !6322

if.end18:                                         ; preds = %if.end10
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %obj, align 8, !dbg !6323
  %27 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6324
  %gem = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %27, i32 0, i32 3, !dbg !6325
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %gem, align 8, !dbg !6326
  %28 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6327
  store %struct.drm_client_buffer* %28, %struct.drm_client_buffer** %retval, align 8, !dbg !6328
  br label %return, !dbg !6328

err_delete:                                       ; preds = %if.then17, %if.then9
  call void @llvm.dbg.label(metadata !6329), !dbg !6330
  %29 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer, align 8, !dbg !6331
  call void @drm_client_buffer_delete(%struct.drm_client_buffer* %29) #8, !dbg !6332
  %30 = load i32, i32* %ret, align 4, !dbg !6333
  %conv19 = sext i32 %30 to i64, !dbg !6333
  %call20 = call i8* @ERR_PTR(i64 %conv19) #8, !dbg !6334
  %31 = bitcast i8* %call20 to %struct.drm_client_buffer*, !dbg !6334
  store %struct.drm_client_buffer* %31, %struct.drm_client_buffer** %retval, align 8, !dbg !6335
  br label %return, !dbg !6335

return:                                           ; preds = %err_delete, %if.end18, %if.then
  %32 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %retval, align 8, !dbg !6336
  ret %struct.drm_client_buffer* %32, !dbg !6336
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_client_buffer_addfb(%struct.drm_client_buffer* %buffer, i32 %width, i32 %height, i32 %format) #0 !dbg !6337 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %client = alloca %struct.drm_client_dev*, align 8
  %fb_req = alloca %struct.drm_mode_fb_cmd, align 4
  %info = alloca %struct.drm_format_info*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !6344, metadata !DIExpression()), !dbg !6345
  store i32 %format, i32* %format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %format.addr, metadata !6346, metadata !DIExpression()), !dbg !6347
  call void @llvm.dbg.declare(metadata %struct.drm_client_dev** %client, metadata !6348, metadata !DIExpression()), !dbg !6349
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6350
  %client1 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %0, i32 0, i32 0, !dbg !6351
  %1 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client1, align 8, !dbg !6351
  store %struct.drm_client_dev* %1, %struct.drm_client_dev** %client, align 8, !dbg !6349
  call void @llvm.dbg.declare(metadata %struct.drm_mode_fb_cmd* %fb_req, metadata !6352, metadata !DIExpression()), !dbg !6362
  %2 = bitcast %struct.drm_mode_fb_cmd* %fb_req to i8*, !dbg !6362
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 28, i1 false), !dbg !6362
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info, metadata !6363, metadata !DIExpression()), !dbg !6364
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6365, metadata !DIExpression()), !dbg !6366
  %3 = load i32, i32* %format.addr, align 4, !dbg !6367
  %call = call %struct.drm_format_info* @drm_format_info(i32 %3) #8, !dbg !6368
  store %struct.drm_format_info* %call, %struct.drm_format_info** %info, align 8, !dbg !6369
  %4 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !6370
  %5 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %4, i32 0, i32 3, !dbg !6371
  %cpp = bitcast %union.anon.67* %5 to [4 x i8]*, !dbg !6371
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %cpp, i64 0, i64 0, !dbg !6370
  %6 = load i8, i8* %arrayidx, align 2, !dbg !6370
  %conv = zext i8 %6 to i32, !dbg !6370
  %mul = mul i32 %conv, 8, !dbg !6372
  %bpp = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 4, !dbg !6373
  store i32 %mul, i32* %bpp, align 4, !dbg !6374
  %7 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !6375
  %depth = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %7, i32 0, i32 1, !dbg !6376
  %8 = load i8, i8* %depth, align 4, !dbg !6376
  %conv2 = zext i8 %8 to i32, !dbg !6375
  %depth3 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 5, !dbg !6377
  store i32 %conv2, i32* %depth3, align 4, !dbg !6378
  %9 = load i32, i32* %width.addr, align 4, !dbg !6379
  %width4 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 1, !dbg !6380
  store i32 %9, i32* %width4, align 4, !dbg !6381
  %10 = load i32, i32* %height.addr, align 4, !dbg !6382
  %height5 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 2, !dbg !6383
  store i32 %10, i32* %height5, align 4, !dbg !6384
  %11 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6385
  %handle = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %11, i32 0, i32 1, !dbg !6386
  %12 = load i32, i32* %handle, align 8, !dbg !6386
  %handle6 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 6, !dbg !6387
  store i32 %12, i32* %handle6, align 4, !dbg !6388
  %13 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6389
  %pitch = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %13, i32 0, i32 2, !dbg !6390
  %14 = load i32, i32* %pitch, align 4, !dbg !6390
  %pitch7 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 3, !dbg !6391
  store i32 %14, i32* %pitch7, align 4, !dbg !6392
  %15 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6393
  %dev = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %15, i32 0, i32 0, !dbg !6394
  %16 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6394
  %17 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6395
  %file = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %17, i32 0, i32 4, !dbg !6396
  %18 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !6396
  %call8 = call i32 @drm_mode_addfb(%struct.drm_device* %16, %struct.drm_mode_fb_cmd* %fb_req, %struct.drm_file* %18) #8, !dbg !6397
  store i32 %call8, i32* %ret, align 4, !dbg !6398
  %19 = load i32, i32* %ret, align 4, !dbg !6399
  %tobool = icmp ne i32 %19, 0, !dbg !6399
  br i1 %tobool, label %if.then, label %if.end, !dbg !6401

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %ret, align 4, !dbg !6402
  store i32 %20, i32* %retval, align 4, !dbg !6403
  br label %return, !dbg !6403

if.end:                                           ; preds = %entry
  %21 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6404
  %dev9 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %21, i32 0, i32 0, !dbg !6405
  %22 = load %struct.drm_device*, %struct.drm_device** %dev9, align 8, !dbg !6405
  %23 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6406
  %client10 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %23, i32 0, i32 0, !dbg !6407
  %24 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client10, align 8, !dbg !6407
  %file11 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %24, i32 0, i32 4, !dbg !6408
  %25 = load %struct.drm_file*, %struct.drm_file** %file11, align 8, !dbg !6408
  %fb_id = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %fb_req, i32 0, i32 0, !dbg !6409
  %26 = load i32, i32* %fb_id, align 4, !dbg !6409
  %call12 = call %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device* %22, %struct.drm_file* %25, i32 %26) #8, !dbg !6410
  %27 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6411
  %fb = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %27, i32 0, i32 5, !dbg !6412
  store %struct.drm_framebuffer* %call12, %struct.drm_framebuffer** %fb, align 8, !dbg !6413
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6414, metadata !DIExpression()), !dbg !6417
  %28 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6417
  %fb13 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %28, i32 0, i32 5, !dbg !6417
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb13, align 8, !dbg !6417
  %tobool14 = icmp ne %struct.drm_framebuffer* %29, null, !dbg !6417
  %lnot = xor i1 %tobool14, true, !dbg !6417
  %lnot15 = xor i1 %lnot, true, !dbg !6417
  %lnot16 = xor i1 %lnot15, true, !dbg !6417
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !6417
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6417
  %30 = load i32, i32* %__ret_warn_on, align 4, !dbg !6418
  %tobool17 = icmp ne i32 %30, 0, !dbg !6418
  %lnot18 = xor i1 %tobool17, true, !dbg !6418
  %lnot20 = xor i1 %lnot18, true, !dbg !6418
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6418
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6418
  %tobool23 = icmp ne i64 %conv22, 0, !dbg !6418
  br i1 %tobool23, label %if.then24, label %if.end31, !dbg !6417

if.then24:                                        ; preds = %if.end
  br label %do.body, !dbg !6418

do.body:                                          ; preds = %if.then24
  br label %do.body25, !dbg !6420

do.body25:                                        ; preds = %do.body
  br label %do.end, !dbg !6422

do.end:                                           ; preds = %do.body25
  br label %do.body26, !dbg !6420

do.body26:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 381, i32 2305, i64 12) #9, !dbg !6424, !srcloc !6426
  br label %do.end27, !dbg !6424

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 269) #9, !dbg !6427, !srcloc !6429
  br label %do.body28, !dbg !6420

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !6430

do.end29:                                         ; preds = %do.body28
  br label %do.end30, !dbg !6420

do.end30:                                         ; preds = %do.end29
  br label %if.end31, !dbg !6420

if.end31:                                         ; preds = %do.end30, %if.end
  %31 = load i32, i32* %__ret_warn_on, align 4, !dbg !6417
  %tobool32 = icmp ne i32 %31, 0, !dbg !6417
  %lnot33 = xor i1 %tobool32, true, !dbg !6417
  %lnot35 = xor i1 %lnot33, true, !dbg !6417
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !6417
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !6417
  store i64 %conv37, i64* %tmp, align 8, !dbg !6418
  %32 = load i64, i64* %tmp, align 8, !dbg !6417
  %tobool38 = icmp ne i64 %32, 0, !dbg !6432
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !6433

if.then39:                                        ; preds = %if.end31
  store i32 -2, i32* %retval, align 4, !dbg !6434
  br label %return, !dbg !6434

if.end40:                                         ; preds = %if.end31
  %33 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6435
  %fb41 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %33, i32 0, i32 5, !dbg !6436
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb41, align 8, !dbg !6436
  call void @drm_framebuffer_put(%struct.drm_framebuffer* %34) #8, !dbg !6437
  %35 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6438
  %fb42 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %35, i32 0, i32 5, !dbg !6439
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb42, align 8, !dbg !6439
  %comm = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 3, !dbg !6440
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0, !dbg !6438
  %37 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6441
  %name = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %37, i32 0, i32 1, !dbg !6442
  %38 = load i8*, i8** %name, align 8, !dbg !6442
  %call43 = call i64 @strscpy(i8* %arraydecay, i8* %38, i64 16) #8, !dbg !6443
  store i32 0, i32* %retval, align 4, !dbg !6444
  br label %return, !dbg !6444

return:                                           ; preds = %if.end40, %if.then39, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !6445
  ret i32 %39, !dbg !6445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_client_buffer_delete(%struct.drm_client_buffer* %buffer) #0 !dbg !6446 {
entry:
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  %dev = alloca %struct.drm_device*, align 8
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6447, metadata !DIExpression()), !dbg !6448
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !6449, metadata !DIExpression()), !dbg !6450
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6451
  %client = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %0, i32 0, i32 0, !dbg !6452
  %1 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6452
  %dev1 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %1, i32 0, i32 0, !dbg !6453
  %2 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !6453
  store %struct.drm_device* %2, %struct.drm_device** %dev, align 8, !dbg !6450
  %3 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6454
  %gem = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %3, i32 0, i32 3, !dbg !6455
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %gem, align 8, !dbg !6455
  %5 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6456
  %vaddr = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %5, i32 0, i32 4, !dbg !6457
  %6 = load i8*, i8** %vaddr, align 8, !dbg !6457
  call void @drm_gem_vunmap(%struct.drm_gem_object* %4, i8* %6) #8, !dbg !6458
  %7 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6459
  %gem2 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %7, i32 0, i32 3, !dbg !6461
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %gem2, align 8, !dbg !6461
  %tobool = icmp ne %struct.drm_gem_object* %8, null, !dbg !6459
  br i1 %tobool, label %if.then, label %if.end, !dbg !6462

if.then:                                          ; preds = %entry
  %9 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6463
  %gem3 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %9, i32 0, i32 3, !dbg !6464
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %gem3, align 8, !dbg !6464
  call void @drm_gem_object_put(%struct.drm_gem_object* %10) #8, !dbg !6465
  br label %if.end, !dbg !6465

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6466
  %handle = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %11, i32 0, i32 1, !dbg !6468
  %12 = load i32, i32* %handle, align 8, !dbg !6468
  %tobool4 = icmp ne i32 %12, 0, !dbg !6466
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !6469

if.then5:                                         ; preds = %if.end
  %13 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6470
  %14 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6471
  %handle6 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %14, i32 0, i32 1, !dbg !6472
  %15 = load i32, i32* %handle6, align 8, !dbg !6472
  %16 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6473
  %client7 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %16, i32 0, i32 0, !dbg !6474
  %17 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client7, align 8, !dbg !6474
  %file = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %17, i32 0, i32 4, !dbg !6475
  %18 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !6475
  %call = call i32 @drm_mode_destroy_dumb(%struct.drm_device* %13, i32 %15, %struct.drm_file* %18) #8, !dbg !6476
  br label %if.end8, !dbg !6476

if.end8:                                          ; preds = %if.then5, %if.end
  %19 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6477
  %20 = bitcast %struct.drm_client_buffer* %19 to i8*, !dbg !6477
  call void @kfree(i8* %20) #8, !dbg !6478
  ret void, !dbg !6479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !6480 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !6483, metadata !DIExpression()), !dbg !6484
  %0 = load i64, i64* %error.addr, align 8, !dbg !6485
  %1 = inttoptr i64 %0 to i8*, !dbg !6486
  ret i8* %1, !dbg !6487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_client_framebuffer_delete(%struct.drm_client_buffer* %buffer) #0 !dbg !6488 {
entry:
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6489, metadata !DIExpression()), !dbg !6490
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6491
  %tobool = icmp ne %struct.drm_client_buffer* %0, null, !dbg !6491
  br i1 %tobool, label %if.end, label %if.then, !dbg !6493

if.then:                                          ; preds = %entry
  br label %return, !dbg !6494

if.end:                                           ; preds = %entry
  %1 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6495
  call void @drm_client_buffer_rmfb(%struct.drm_client_buffer* %1) #8, !dbg !6496
  %2 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6497
  call void @drm_client_buffer_delete(%struct.drm_client_buffer* %2) #8, !dbg !6498
  br label %return, !dbg !6499

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6499
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_client_buffer_rmfb(%struct.drm_client_buffer* %buffer) #0 !dbg !6500 {
entry:
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6503, metadata !DIExpression()), !dbg !6504
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6505
  %fb = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %0, i32 0, i32 5, !dbg !6507
  %1 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb, align 8, !dbg !6507
  %tobool = icmp ne %struct.drm_framebuffer* %1, null, !dbg !6505
  br i1 %tobool, label %if.end, label %if.then, !dbg !6508

if.then:                                          ; preds = %entry
  br label %return, !dbg !6509

if.end:                                           ; preds = %entry
  %2 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6510
  %client = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %2, i32 0, i32 0, !dbg !6511
  %3 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6511
  %dev = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %3, i32 0, i32 0, !dbg !6512
  %4 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !6512
  %5 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6513
  %fb1 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %5, i32 0, i32 5, !dbg !6514
  %6 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb1, align 8, !dbg !6514
  %base = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %6, i32 0, i32 2, !dbg !6515
  %id = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base, i32 0, i32 0, !dbg !6516
  %7 = load i32, i32* %id, align 8, !dbg !6516
  %8 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6517
  %client2 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %8, i32 0, i32 0, !dbg !6518
  %9 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client2, align 8, !dbg !6518
  %file = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %9, i32 0, i32 4, !dbg !6519
  %10 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !6519
  %call = call i32 @drm_mode_rmfb(%struct.drm_device* %4, i32 %7, %struct.drm_file* %10) #8, !dbg !6520
  store i32 %call, i32* %ret, align 4, !dbg !6521
  %11 = load i32, i32* %ret, align 4, !dbg !6522
  %tobool3 = icmp ne i32 %11, 0, !dbg !6522
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !6524

if.then4:                                         ; preds = %if.end
  %12 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6525
  %client5 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %12, i32 0, i32 0, !dbg !6525
  %13 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client5, align 8, !dbg !6525
  %dev6 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %13, i32 0, i32 0, !dbg !6525
  %14 = load %struct.drm_device*, %struct.drm_device** %dev6, align 8, !dbg !6525
  %dev7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 3, !dbg !6525
  %15 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !6525
  %16 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6525
  %fb8 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %16, i32 0, i32 5, !dbg !6525
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb8, align 8, !dbg !6525
  %base9 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %17, i32 0, i32 2, !dbg !6525
  %id10 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %base9, i32 0, i32 0, !dbg !6525
  %18 = load i32, i32* %id10, align 8, !dbg !6525
  %19 = load i32, i32* %ret, align 4, !dbg !6525
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %19) #10, !dbg !6525
  br label %if.end11, !dbg !6525

if.end11:                                         ; preds = %if.then4, %if.end
  %20 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6526
  %fb12 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %20, i32 0, i32 5, !dbg !6527
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %fb12, align 8, !dbg !6528
  br label %return, !dbg !6529

return:                                           ; preds = %if.end11, %if.then
  ret void, !dbg !6529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_client_framebuffer_flush(%struct.drm_client_buffer* %buffer, %struct.drm_rect* %rect) #0 !dbg !6530 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.drm_client_buffer*, align 8
  %rect.addr = alloca %struct.drm_rect*, align 8
  %clip = alloca %struct.drm_clip_rect, align 2
  store %struct.drm_client_buffer* %buffer, %struct.drm_client_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_client_buffer** %buffer.addr, metadata !6534, metadata !DIExpression()), !dbg !6535
  store %struct.drm_rect* %rect, %struct.drm_rect** %rect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %rect.addr, metadata !6536, metadata !DIExpression()), !dbg !6537
  %0 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6538
  %tobool = icmp ne %struct.drm_client_buffer* %0, null, !dbg !6538
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6540

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6541
  %fb = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %1, i32 0, i32 5, !dbg !6542
  %2 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb, align 8, !dbg !6542
  %tobool1 = icmp ne %struct.drm_framebuffer* %2, null, !dbg !6541
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !6543

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6544
  %fb3 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %3, i32 0, i32 5, !dbg !6545
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb3, align 8, !dbg !6545
  %funcs = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %4, i32 0, i32 5, !dbg !6546
  %5 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %funcs, align 8, !dbg !6546
  %dirty = getelementptr inbounds %struct.drm_framebuffer_funcs, %struct.drm_framebuffer_funcs* %5, i32 0, i32 2, !dbg !6547
  %6 = load i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)** %dirty, align 8, !dbg !6547
  %tobool4 = icmp ne i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* %6, null, !dbg !6544
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6548

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !6549
  br label %return, !dbg !6549

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6550
  %tobool5 = icmp ne %struct.drm_rect* %7, null, !dbg !6550
  br i1 %tobool5, label %if.then6, label %if.end18, !dbg !6552

if.then6:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.drm_clip_rect* %clip, metadata !6553, metadata !DIExpression()), !dbg !6555
  %x1 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %clip, i32 0, i32 0, !dbg !6556
  %8 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6557
  %x17 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 0, !dbg !6558
  %9 = load i32, i32* %x17, align 4, !dbg !6558
  %conv = trunc i32 %9 to i16, !dbg !6557
  store i16 %conv, i16* %x1, align 2, !dbg !6556
  %y1 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %clip, i32 0, i32 1, !dbg !6556
  %10 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6559
  %y18 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 1, !dbg !6560
  %11 = load i32, i32* %y18, align 4, !dbg !6560
  %conv9 = trunc i32 %11 to i16, !dbg !6559
  store i16 %conv9, i16* %y1, align 2, !dbg !6556
  %x2 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %clip, i32 0, i32 2, !dbg !6556
  %12 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6561
  %x210 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 2, !dbg !6562
  %13 = load i32, i32* %x210, align 4, !dbg !6562
  %conv11 = trunc i32 %13 to i16, !dbg !6561
  store i16 %conv11, i16* %x2, align 2, !dbg !6556
  %y2 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %clip, i32 0, i32 3, !dbg !6556
  %14 = load %struct.drm_rect*, %struct.drm_rect** %rect.addr, align 8, !dbg !6563
  %y212 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 3, !dbg !6564
  %15 = load i32, i32* %y212, align 4, !dbg !6564
  %conv13 = trunc i32 %15 to i16, !dbg !6563
  store i16 %conv13, i16* %y2, align 2, !dbg !6556
  %16 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6565
  %fb14 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %16, i32 0, i32 5, !dbg !6566
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb14, align 8, !dbg !6566
  %funcs15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %17, i32 0, i32 5, !dbg !6567
  %18 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %funcs15, align 8, !dbg !6567
  %dirty16 = getelementptr inbounds %struct.drm_framebuffer_funcs, %struct.drm_framebuffer_funcs* %18, i32 0, i32 2, !dbg !6568
  %19 = load i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)** %dirty16, align 8, !dbg !6568
  %20 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6569
  %fb17 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %20, i32 0, i32 5, !dbg !6570
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb17, align 8, !dbg !6570
  %22 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6571
  %client = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %22, i32 0, i32 0, !dbg !6572
  %23 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client, align 8, !dbg !6572
  %file = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %23, i32 0, i32 4, !dbg !6573
  %24 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !6573
  %call = call i32 %19(%struct.drm_framebuffer* %21, %struct.drm_file* %24, i32 0, i32 0, %struct.drm_clip_rect* %clip, i32 1) #8, !dbg !6565
  store i32 %call, i32* %retval, align 4, !dbg !6574
  br label %return, !dbg !6574

if.end18:                                         ; preds = %if.end
  %25 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6575
  %fb19 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %25, i32 0, i32 5, !dbg !6576
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb19, align 8, !dbg !6576
  %funcs20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 5, !dbg !6577
  %27 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %funcs20, align 8, !dbg !6577
  %dirty21 = getelementptr inbounds %struct.drm_framebuffer_funcs, %struct.drm_framebuffer_funcs* %27, i32 0, i32 2, !dbg !6578
  %28 = load i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)** %dirty21, align 8, !dbg !6578
  %29 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6579
  %fb22 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %29, i32 0, i32 5, !dbg !6580
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb22, align 8, !dbg !6580
  %31 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %buffer.addr, align 8, !dbg !6581
  %client23 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %31, i32 0, i32 0, !dbg !6582
  %32 = load %struct.drm_client_dev*, %struct.drm_client_dev** %client23, align 8, !dbg !6582
  %file24 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %32, i32 0, i32 4, !dbg !6583
  %33 = load %struct.drm_file*, %struct.drm_file** %file24, align 8, !dbg !6583
  %call25 = call i32 %28(%struct.drm_framebuffer* %30, %struct.drm_file* %33, i32 0, i32 0, %struct.drm_clip_rect* null, i32 0) #8, !dbg !6575
  store i32 %call25, i32* %retval, align 4, !dbg !6584
  br label %return, !dbg !6584

return:                                           ; preds = %if.end18, %if.then6, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !6585
  ret i32 %34, !dbg !6585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_all_features(%struct.drm_device* %dev, i32 %features) #0 !dbg !6586 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !6589, metadata !DIExpression()), !dbg !6590
  store i32 %features, i32* %features.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %features.addr, metadata !6591, metadata !DIExpression()), !dbg !6592
  call void @llvm.dbg.declare(metadata i32* %supported, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6595
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !6596
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !6596
  %driver_features = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 38, !dbg !6597
  %2 = load i32, i32* %driver_features, align 8, !dbg !6597
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !6598
  %driver_features1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 11, !dbg !6599
  %4 = load i32, i32* %driver_features1, align 8, !dbg !6599
  %and = and i32 %2, %4, !dbg !6600
  store i32 %and, i32* %supported, align 4, !dbg !6594
  %5 = load i32, i32* %features.addr, align 4, !dbg !6601
  %tobool = icmp ne i32 %5, 0, !dbg !6601
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6602

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %supported, align 4, !dbg !6603
  %7 = load i32, i32* %features.addr, align 4, !dbg !6604
  %and2 = and i32 %6, %7, !dbg !6605
  %8 = load i32, i32* %features.addr, align 4, !dbg !6606
  %cmp = icmp eq i32 %and2, %8, !dbg !6607
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6608
  ret i1 %9, !dbg !6609
}

; Function Attrs: noredzone
declare dso_local %struct.drm_file* @drm_file_alloc(%struct.drm_minor*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6610 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6613, metadata !DIExpression()), !dbg !6614
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6615
  %1 = ptrtoint i8* %0 to i64, !dbg !6616
  ret i64 %1, !dbg !6617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6618 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6621, metadata !DIExpression()), !dbg !6622
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6627
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6629
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6630
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !6631
  br i1 %call, label %if.end, label %if.then, !dbg !6632

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6633

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6634
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6635
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6636
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6637
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6638
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6639
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6640
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6641
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6642
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6643
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6644
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6645
  br label %do.body, !dbg !6646

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6647

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6649

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6647

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6651
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6651
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6651
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6651
  br label %do.end7, !dbg !6651

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6647

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6654 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6657, metadata !DIExpression()), !dbg !6658
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6659, metadata !DIExpression()), !dbg !6660
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6661, metadata !DIExpression()), !dbg !6662
  ret i1 true, !dbg !6663
}

; Function Attrs: noredzone
declare dso_local void @drm_file_free(%struct.drm_file*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6664 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6665, metadata !DIExpression()), !dbg !6666
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6667
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !6669
  br i1 %call, label %if.end, label %if.then, !dbg !6670

if.then:                                          ; preds = %entry
  br label %return, !dbg !6671

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6672
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6673
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6673
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6674
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6675
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6675
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !6676
  br label %return, !dbg !6677

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6678 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6681, metadata !DIExpression()), !dbg !6682
  ret i1 true, !dbg !6683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6684 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6685, metadata !DIExpression()), !dbg !6686
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6687, metadata !DIExpression()), !dbg !6688
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6689
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6690
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6691
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6692
  br label %do.body, !dbg !6693

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6694

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6696

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6694

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6698
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6698
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6698
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6698
  br label %do.end5, !dbg !6698

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6694

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6700
}

; Function Attrs: noredzone
declare dso_local %struct.drm_format_info* @drm_format_info(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !6701 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !6704, metadata !DIExpression()), !dbg !6708
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !6714, metadata !DIExpression()), !dbg !6715
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !6716, metadata !DIExpression()), !dbg !6717
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !6718, metadata !DIExpression()), !dbg !6719
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !6720, metadata !DIExpression()), !dbg !6724
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !6726, metadata !DIExpression()), !dbg !6730
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6732, metadata !DIExpression()), !dbg !6736
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6741, metadata !DIExpression()), !dbg !6742
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6743, metadata !DIExpression()), !dbg !6744
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6745, metadata !DIExpression()), !dbg !6746
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6747, metadata !DIExpression()), !dbg !6748
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6749, metadata !DIExpression()), !dbg !6750
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6751, metadata !DIExpression()), !dbg !6752
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6753, metadata !DIExpression()), !dbg !6754
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6755, metadata !DIExpression()), !dbg !6756
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6757, metadata !DIExpression()), !dbg !6758
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6759, metadata !DIExpression()), !dbg !6760
  %0 = load i64, i64* %size.addr, align 8, !dbg !6761
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6762
  %or = or i32 %1, 256, !dbg !6763
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6764
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !6765
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6766

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6767
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6768
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6769

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6770
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6771
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6772
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !6773
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6750
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6774
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6775
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6776
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6777
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6778
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6779
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !6780
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6780
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6780
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6780
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !6780
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6781
  br label %kmalloc.exit, !dbg !6781

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6782
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6783
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6783
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6785

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6786
  br label %kmalloc_index.exit.i, !dbg !6786

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6787
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6789
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6790

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6791
  br label %kmalloc_index.exit.i, !dbg !6791

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6792
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6794
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6795

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6796
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6797
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6798

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6799
  br label %kmalloc_index.exit.i, !dbg !6799

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6800
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6802
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6803

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6804
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6805
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6806

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6807
  br label %kmalloc_index.exit.i, !dbg !6807

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6808
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6810
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6811

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6812
  br label %kmalloc_index.exit.i, !dbg !6812

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6813
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6815
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6816

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6817
  br label %kmalloc_index.exit.i, !dbg !6817

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6818
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6820
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6821

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6822
  br label %kmalloc_index.exit.i, !dbg !6822

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6823
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6825
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6826

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6827
  br label %kmalloc_index.exit.i, !dbg !6827

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6828
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6830
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6831

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6832
  br label %kmalloc_index.exit.i, !dbg !6832

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6833
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6835
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6836

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6837
  br label %kmalloc_index.exit.i, !dbg !6837

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6838
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6840
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6841

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6842
  br label %kmalloc_index.exit.i, !dbg !6842

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6843
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6845
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6846

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6847
  br label %kmalloc_index.exit.i, !dbg !6847

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6848
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6850
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6851

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6852
  br label %kmalloc_index.exit.i, !dbg !6852

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6853
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6855
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6856

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6857
  br label %kmalloc_index.exit.i, !dbg !6857

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6858
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6860
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6861

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6862
  br label %kmalloc_index.exit.i, !dbg !6862

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6863
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6865
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6866

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6867
  br label %kmalloc_index.exit.i, !dbg !6867

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6868
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6870
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6871

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6872
  br label %kmalloc_index.exit.i, !dbg !6872

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6873
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6875
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6876

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6877
  br label %kmalloc_index.exit.i, !dbg !6877

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6878
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6880
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6881

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6882
  br label %kmalloc_index.exit.i, !dbg !6882

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6883
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6885
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6886

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6887
  br label %kmalloc_index.exit.i, !dbg !6887

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6888
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6890
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6891

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6892
  br label %kmalloc_index.exit.i, !dbg !6892

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6893
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6895
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6896

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6897
  br label %kmalloc_index.exit.i, !dbg !6897

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6898
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6900
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6901

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6902
  br label %kmalloc_index.exit.i, !dbg !6902

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6903
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6905
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6906

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6907
  br label %kmalloc_index.exit.i, !dbg !6907

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6908
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6910
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6911

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6912
  br label %kmalloc_index.exit.i, !dbg !6912

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6913
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6915
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6916

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6917
  br label %kmalloc_index.exit.i, !dbg !6917

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6918
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6920
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6921

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6922
  br label %kmalloc_index.exit.i, !dbg !6922

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6923
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6925
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6926

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6927
  br label %kmalloc_index.exit.i, !dbg !6927

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !6928, !srcloc !6931
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #9, !dbg !6932, !srcloc !6935
  unreachable, !dbg !6936

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6937
  store i32 %45, i32* %index.i, align 4, !dbg !6938
  %46 = load i32, i32* %index.i, align 4, !dbg !6939
  %tobool.i = icmp ne i32 %46, 0, !dbg !6939
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6941

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6942
  br label %kmalloc.exit, !dbg !6942

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6943
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6944
  %and.i.i = and i32 %48, 17, !dbg !6944
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6944
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6944
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6944
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6944
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6946

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6947
  br label %kmalloc_type.exit.i, !dbg !6947

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6948
  %and2.i.i = and i32 %49, 1, !dbg !6949
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6948
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6948
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6948
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6950
  br label %kmalloc_type.exit.i, !dbg !6950

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6951
  %idxprom.i = zext i32 %51 to i64, !dbg !6952
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6952
  %52 = load i32, i32* %index.i, align 4, !dbg !6953
  %idxprom6.i = zext i32 %52 to i64, !dbg !6952
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6952
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6952
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6954
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6955
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6956
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6957
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !6958
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6958
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6958
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6958
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !6958
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6719
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6959
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6960
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6961
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6962
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !6963
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6964
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6965
  store i8* %62, i8** %retval.i, align 8, !dbg !6966
  br label %kmalloc.exit, !dbg !6966

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6967
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6968
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !6969
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6969
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6969
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6969
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !6969
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6970
  br label %kmalloc.exit, !dbg !6970

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6971
  ret i8* %65, !dbg !6972
}

; Function Attrs: noredzone
declare dso_local i32 @drm_mode_create_dumb(%struct.drm_device*, %struct.drm_mode_create_dumb*, %struct.drm_file*) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !6973 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6977, metadata !DIExpression()), !dbg !6982
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6984, metadata !DIExpression()), !dbg !6985
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6986, metadata !DIExpression()), !dbg !6987
  %0 = load i64, i64* %size.addr, align 8, !dbg !6988
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6990
  br i1 %1, label %if.then, label %if.end447, !dbg !6991

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6992
  %tobool = icmp ne i64 %2, 0, !dbg !6992
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6995

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6996
  br label %return, !dbg !6996

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6997
  %cmp = icmp ult i64 %3, 4096, !dbg !6999
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !7000

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !7001
  br label %return, !dbg !7001

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub = sub i64 %4, 1, !dbg !7002
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !7002
  br i1 %5, label %cond.true, label %cond.false442, !dbg !7002

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub4 = sub i64 %6, 1, !dbg !7002
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !7002
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !7002

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub6 = sub i64 %8, 1, !dbg !7002
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !7002
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !7002

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !7002

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub9 = sub i64 %9, 1, !dbg !7002
  %and = and i64 %sub9, -9223372036854775808, !dbg !7002
  %tobool10 = icmp ne i64 %and, 0, !dbg !7002
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !7002

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !7002

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub13 = sub i64 %10, 1, !dbg !7002
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !7002
  %tobool15 = icmp ne i64 %and14, 0, !dbg !7002
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !7002

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !7002

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub18 = sub i64 %11, 1, !dbg !7002
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !7002
  %tobool20 = icmp ne i64 %and19, 0, !dbg !7002
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !7002

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !7002

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub23 = sub i64 %12, 1, !dbg !7002
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !7002
  %tobool25 = icmp ne i64 %and24, 0, !dbg !7002
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !7002

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !7002

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub28 = sub i64 %13, 1, !dbg !7002
  %and29 = and i64 %sub28, 576460752303423488, !dbg !7002
  %tobool30 = icmp ne i64 %and29, 0, !dbg !7002
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !7002

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !7002

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub33 = sub i64 %14, 1, !dbg !7002
  %and34 = and i64 %sub33, 288230376151711744, !dbg !7002
  %tobool35 = icmp ne i64 %and34, 0, !dbg !7002
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !7002

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !7002

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub38 = sub i64 %15, 1, !dbg !7002
  %and39 = and i64 %sub38, 144115188075855872, !dbg !7002
  %tobool40 = icmp ne i64 %and39, 0, !dbg !7002
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !7002

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !7002

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub43 = sub i64 %16, 1, !dbg !7002
  %and44 = and i64 %sub43, 72057594037927936, !dbg !7002
  %tobool45 = icmp ne i64 %and44, 0, !dbg !7002
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !7002

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !7002

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub48 = sub i64 %17, 1, !dbg !7002
  %and49 = and i64 %sub48, 36028797018963968, !dbg !7002
  %tobool50 = icmp ne i64 %and49, 0, !dbg !7002
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !7002

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !7002

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub53 = sub i64 %18, 1, !dbg !7002
  %and54 = and i64 %sub53, 18014398509481984, !dbg !7002
  %tobool55 = icmp ne i64 %and54, 0, !dbg !7002
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !7002

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !7002

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub58 = sub i64 %19, 1, !dbg !7002
  %and59 = and i64 %sub58, 9007199254740992, !dbg !7002
  %tobool60 = icmp ne i64 %and59, 0, !dbg !7002
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !7002

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !7002

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub63 = sub i64 %20, 1, !dbg !7002
  %and64 = and i64 %sub63, 4503599627370496, !dbg !7002
  %tobool65 = icmp ne i64 %and64, 0, !dbg !7002
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !7002

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !7002

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub68 = sub i64 %21, 1, !dbg !7002
  %and69 = and i64 %sub68, 2251799813685248, !dbg !7002
  %tobool70 = icmp ne i64 %and69, 0, !dbg !7002
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !7002

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !7002

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub73 = sub i64 %22, 1, !dbg !7002
  %and74 = and i64 %sub73, 1125899906842624, !dbg !7002
  %tobool75 = icmp ne i64 %and74, 0, !dbg !7002
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !7002

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !7002

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub78 = sub i64 %23, 1, !dbg !7002
  %and79 = and i64 %sub78, 562949953421312, !dbg !7002
  %tobool80 = icmp ne i64 %and79, 0, !dbg !7002
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !7002

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !7002

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub83 = sub i64 %24, 1, !dbg !7002
  %and84 = and i64 %sub83, 281474976710656, !dbg !7002
  %tobool85 = icmp ne i64 %and84, 0, !dbg !7002
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !7002

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !7002

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub88 = sub i64 %25, 1, !dbg !7002
  %and89 = and i64 %sub88, 140737488355328, !dbg !7002
  %tobool90 = icmp ne i64 %and89, 0, !dbg !7002
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !7002

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !7002

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub93 = sub i64 %26, 1, !dbg !7002
  %and94 = and i64 %sub93, 70368744177664, !dbg !7002
  %tobool95 = icmp ne i64 %and94, 0, !dbg !7002
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !7002

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !7002

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub98 = sub i64 %27, 1, !dbg !7002
  %and99 = and i64 %sub98, 35184372088832, !dbg !7002
  %tobool100 = icmp ne i64 %and99, 0, !dbg !7002
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !7002

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !7002

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub103 = sub i64 %28, 1, !dbg !7002
  %and104 = and i64 %sub103, 17592186044416, !dbg !7002
  %tobool105 = icmp ne i64 %and104, 0, !dbg !7002
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !7002

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !7002

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub108 = sub i64 %29, 1, !dbg !7002
  %and109 = and i64 %sub108, 8796093022208, !dbg !7002
  %tobool110 = icmp ne i64 %and109, 0, !dbg !7002
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !7002

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !7002

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub113 = sub i64 %30, 1, !dbg !7002
  %and114 = and i64 %sub113, 4398046511104, !dbg !7002
  %tobool115 = icmp ne i64 %and114, 0, !dbg !7002
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !7002

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !7002

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub118 = sub i64 %31, 1, !dbg !7002
  %and119 = and i64 %sub118, 2199023255552, !dbg !7002
  %tobool120 = icmp ne i64 %and119, 0, !dbg !7002
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !7002

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !7002

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub123 = sub i64 %32, 1, !dbg !7002
  %and124 = and i64 %sub123, 1099511627776, !dbg !7002
  %tobool125 = icmp ne i64 %and124, 0, !dbg !7002
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !7002

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !7002

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub128 = sub i64 %33, 1, !dbg !7002
  %and129 = and i64 %sub128, 549755813888, !dbg !7002
  %tobool130 = icmp ne i64 %and129, 0, !dbg !7002
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !7002

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !7002

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub133 = sub i64 %34, 1, !dbg !7002
  %and134 = and i64 %sub133, 274877906944, !dbg !7002
  %tobool135 = icmp ne i64 %and134, 0, !dbg !7002
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !7002

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !7002

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub138 = sub i64 %35, 1, !dbg !7002
  %and139 = and i64 %sub138, 137438953472, !dbg !7002
  %tobool140 = icmp ne i64 %and139, 0, !dbg !7002
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !7002

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !7002

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub143 = sub i64 %36, 1, !dbg !7002
  %and144 = and i64 %sub143, 68719476736, !dbg !7002
  %tobool145 = icmp ne i64 %and144, 0, !dbg !7002
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !7002

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !7002

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub148 = sub i64 %37, 1, !dbg !7002
  %and149 = and i64 %sub148, 34359738368, !dbg !7002
  %tobool150 = icmp ne i64 %and149, 0, !dbg !7002
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !7002

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !7002

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub153 = sub i64 %38, 1, !dbg !7002
  %and154 = and i64 %sub153, 17179869184, !dbg !7002
  %tobool155 = icmp ne i64 %and154, 0, !dbg !7002
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !7002

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !7002

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub158 = sub i64 %39, 1, !dbg !7002
  %and159 = and i64 %sub158, 8589934592, !dbg !7002
  %tobool160 = icmp ne i64 %and159, 0, !dbg !7002
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !7002

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !7002

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub163 = sub i64 %40, 1, !dbg !7002
  %and164 = and i64 %sub163, 4294967296, !dbg !7002
  %tobool165 = icmp ne i64 %and164, 0, !dbg !7002
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !7002

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !7002

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub168 = sub i64 %41, 1, !dbg !7002
  %and169 = and i64 %sub168, 2147483648, !dbg !7002
  %tobool170 = icmp ne i64 %and169, 0, !dbg !7002
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !7002

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !7002

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub173 = sub i64 %42, 1, !dbg !7002
  %and174 = and i64 %sub173, 1073741824, !dbg !7002
  %tobool175 = icmp ne i64 %and174, 0, !dbg !7002
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !7002

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !7002

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub178 = sub i64 %43, 1, !dbg !7002
  %and179 = and i64 %sub178, 536870912, !dbg !7002
  %tobool180 = icmp ne i64 %and179, 0, !dbg !7002
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !7002

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !7002

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub183 = sub i64 %44, 1, !dbg !7002
  %and184 = and i64 %sub183, 268435456, !dbg !7002
  %tobool185 = icmp ne i64 %and184, 0, !dbg !7002
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !7002

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !7002

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub188 = sub i64 %45, 1, !dbg !7002
  %and189 = and i64 %sub188, 134217728, !dbg !7002
  %tobool190 = icmp ne i64 %and189, 0, !dbg !7002
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !7002

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !7002

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub193 = sub i64 %46, 1, !dbg !7002
  %and194 = and i64 %sub193, 67108864, !dbg !7002
  %tobool195 = icmp ne i64 %and194, 0, !dbg !7002
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !7002

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !7002

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub198 = sub i64 %47, 1, !dbg !7002
  %and199 = and i64 %sub198, 33554432, !dbg !7002
  %tobool200 = icmp ne i64 %and199, 0, !dbg !7002
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !7002

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !7002

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub203 = sub i64 %48, 1, !dbg !7002
  %and204 = and i64 %sub203, 16777216, !dbg !7002
  %tobool205 = icmp ne i64 %and204, 0, !dbg !7002
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !7002

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !7002

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub208 = sub i64 %49, 1, !dbg !7002
  %and209 = and i64 %sub208, 8388608, !dbg !7002
  %tobool210 = icmp ne i64 %and209, 0, !dbg !7002
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !7002

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !7002

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub213 = sub i64 %50, 1, !dbg !7002
  %and214 = and i64 %sub213, 4194304, !dbg !7002
  %tobool215 = icmp ne i64 %and214, 0, !dbg !7002
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !7002

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !7002

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub218 = sub i64 %51, 1, !dbg !7002
  %and219 = and i64 %sub218, 2097152, !dbg !7002
  %tobool220 = icmp ne i64 %and219, 0, !dbg !7002
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !7002

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !7002

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub223 = sub i64 %52, 1, !dbg !7002
  %and224 = and i64 %sub223, 1048576, !dbg !7002
  %tobool225 = icmp ne i64 %and224, 0, !dbg !7002
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !7002

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !7002

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub228 = sub i64 %53, 1, !dbg !7002
  %and229 = and i64 %sub228, 524288, !dbg !7002
  %tobool230 = icmp ne i64 %and229, 0, !dbg !7002
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !7002

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !7002

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub233 = sub i64 %54, 1, !dbg !7002
  %and234 = and i64 %sub233, 262144, !dbg !7002
  %tobool235 = icmp ne i64 %and234, 0, !dbg !7002
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !7002

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !7002

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub238 = sub i64 %55, 1, !dbg !7002
  %and239 = and i64 %sub238, 131072, !dbg !7002
  %tobool240 = icmp ne i64 %and239, 0, !dbg !7002
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !7002

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !7002

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub243 = sub i64 %56, 1, !dbg !7002
  %and244 = and i64 %sub243, 65536, !dbg !7002
  %tobool245 = icmp ne i64 %and244, 0, !dbg !7002
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !7002

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !7002

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub248 = sub i64 %57, 1, !dbg !7002
  %and249 = and i64 %sub248, 32768, !dbg !7002
  %tobool250 = icmp ne i64 %and249, 0, !dbg !7002
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !7002

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !7002

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub253 = sub i64 %58, 1, !dbg !7002
  %and254 = and i64 %sub253, 16384, !dbg !7002
  %tobool255 = icmp ne i64 %and254, 0, !dbg !7002
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !7002

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !7002

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub258 = sub i64 %59, 1, !dbg !7002
  %and259 = and i64 %sub258, 8192, !dbg !7002
  %tobool260 = icmp ne i64 %and259, 0, !dbg !7002
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !7002

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !7002

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub263 = sub i64 %60, 1, !dbg !7002
  %and264 = and i64 %sub263, 4096, !dbg !7002
  %tobool265 = icmp ne i64 %and264, 0, !dbg !7002
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !7002

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !7002

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub268 = sub i64 %61, 1, !dbg !7002
  %and269 = and i64 %sub268, 2048, !dbg !7002
  %tobool270 = icmp ne i64 %and269, 0, !dbg !7002
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !7002

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !7002

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub273 = sub i64 %62, 1, !dbg !7002
  %and274 = and i64 %sub273, 1024, !dbg !7002
  %tobool275 = icmp ne i64 %and274, 0, !dbg !7002
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !7002

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !7002

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub278 = sub i64 %63, 1, !dbg !7002
  %and279 = and i64 %sub278, 512, !dbg !7002
  %tobool280 = icmp ne i64 %and279, 0, !dbg !7002
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !7002

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !7002

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub283 = sub i64 %64, 1, !dbg !7002
  %and284 = and i64 %sub283, 256, !dbg !7002
  %tobool285 = icmp ne i64 %and284, 0, !dbg !7002
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !7002

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !7002

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub288 = sub i64 %65, 1, !dbg !7002
  %and289 = and i64 %sub288, 128, !dbg !7002
  %tobool290 = icmp ne i64 %and289, 0, !dbg !7002
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !7002

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !7002

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub293 = sub i64 %66, 1, !dbg !7002
  %and294 = and i64 %sub293, 64, !dbg !7002
  %tobool295 = icmp ne i64 %and294, 0, !dbg !7002
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !7002

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !7002

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub298 = sub i64 %67, 1, !dbg !7002
  %and299 = and i64 %sub298, 32, !dbg !7002
  %tobool300 = icmp ne i64 %and299, 0, !dbg !7002
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !7002

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !7002

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub303 = sub i64 %68, 1, !dbg !7002
  %and304 = and i64 %sub303, 16, !dbg !7002
  %tobool305 = icmp ne i64 %and304, 0, !dbg !7002
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !7002

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !7002

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub308 = sub i64 %69, 1, !dbg !7002
  %and309 = and i64 %sub308, 8, !dbg !7002
  %tobool310 = icmp ne i64 %and309, 0, !dbg !7002
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !7002

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !7002

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub313 = sub i64 %70, 1, !dbg !7002
  %and314 = and i64 %sub313, 4, !dbg !7002
  %tobool315 = icmp ne i64 %and314, 0, !dbg !7002
  %71 = zext i1 %tobool315 to i64, !dbg !7002
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !7002
  br label %cond.end, !dbg !7002

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !7002
  br label %cond.end317, !dbg !7002

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !7002
  br label %cond.end319, !dbg !7002

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !7002
  br label %cond.end321, !dbg !7002

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !7002
  br label %cond.end323, !dbg !7002

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !7002
  br label %cond.end325, !dbg !7002

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !7002
  br label %cond.end327, !dbg !7002

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !7002
  br label %cond.end329, !dbg !7002

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !7002
  br label %cond.end331, !dbg !7002

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !7002
  br label %cond.end333, !dbg !7002

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !7002
  br label %cond.end335, !dbg !7002

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !7002
  br label %cond.end337, !dbg !7002

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !7002
  br label %cond.end339, !dbg !7002

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !7002
  br label %cond.end341, !dbg !7002

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !7002
  br label %cond.end343, !dbg !7002

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !7002
  br label %cond.end345, !dbg !7002

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !7002
  br label %cond.end347, !dbg !7002

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !7002
  br label %cond.end349, !dbg !7002

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !7002
  br label %cond.end351, !dbg !7002

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !7002
  br label %cond.end353, !dbg !7002

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !7002
  br label %cond.end355, !dbg !7002

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !7002
  br label %cond.end357, !dbg !7002

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !7002
  br label %cond.end359, !dbg !7002

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !7002
  br label %cond.end361, !dbg !7002

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !7002
  br label %cond.end363, !dbg !7002

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !7002
  br label %cond.end365, !dbg !7002

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !7002
  br label %cond.end367, !dbg !7002

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !7002
  br label %cond.end369, !dbg !7002

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !7002
  br label %cond.end371, !dbg !7002

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !7002
  br label %cond.end373, !dbg !7002

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !7002
  br label %cond.end375, !dbg !7002

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !7002
  br label %cond.end377, !dbg !7002

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !7002
  br label %cond.end379, !dbg !7002

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !7002
  br label %cond.end381, !dbg !7002

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !7002
  br label %cond.end383, !dbg !7002

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !7002
  br label %cond.end385, !dbg !7002

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !7002
  br label %cond.end387, !dbg !7002

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !7002
  br label %cond.end389, !dbg !7002

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !7002
  br label %cond.end391, !dbg !7002

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !7002
  br label %cond.end393, !dbg !7002

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !7002
  br label %cond.end395, !dbg !7002

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !7002
  br label %cond.end397, !dbg !7002

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !7002
  br label %cond.end399, !dbg !7002

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !7002
  br label %cond.end401, !dbg !7002

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !7002
  br label %cond.end403, !dbg !7002

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !7002
  br label %cond.end405, !dbg !7002

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !7002
  br label %cond.end407, !dbg !7002

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !7002
  br label %cond.end409, !dbg !7002

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !7002
  br label %cond.end411, !dbg !7002

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !7002
  br label %cond.end413, !dbg !7002

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !7002
  br label %cond.end415, !dbg !7002

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !7002
  br label %cond.end417, !dbg !7002

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !7002
  br label %cond.end419, !dbg !7002

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !7002
  br label %cond.end421, !dbg !7002

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !7002
  br label %cond.end423, !dbg !7002

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !7002
  br label %cond.end425, !dbg !7002

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !7002
  br label %cond.end427, !dbg !7002

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !7002
  br label %cond.end429, !dbg !7002

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !7002
  br label %cond.end431, !dbg !7002

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !7002
  br label %cond.end433, !dbg !7002

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !7002
  br label %cond.end435, !dbg !7002

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !7002
  br label %cond.end437, !dbg !7002

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !7002
  br label %cond.end440, !dbg !7002

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !7002

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !7002
  br label %cond.end444, !dbg !7002

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !7002
  %sub443 = sub i64 %72, 1, !dbg !7002
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !7002
  br label %cond.end444, !dbg !7002

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !7002
  %sub446 = sub i32 %cond445, 12, !dbg !7003
  %add = add i32 %sub446, 1, !dbg !7004
  store i32 %add, i32* %retval, align 4, !dbg !7005
  br label %return, !dbg !7005

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !7006
  %dec = add i64 %73, -1, !dbg !7006
  store i64 %dec, i64* %size.addr, align 8, !dbg !7006
  %74 = load i64, i64* %size.addr, align 8, !dbg !7007
  %shr = lshr i64 %74, 12, !dbg !7007
  store i64 %shr, i64* %size.addr, align 8, !dbg !7007
  %75 = load i64, i64* %size.addr, align 8, !dbg !7008
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6985
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !7009
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !7010
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !7009, !srcloc !7011
  store i32 %78, i32* %bitpos.i, align 4, !dbg !7009
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !7012
  %add.i = add i32 %79, 1, !dbg !7013
  store i32 %add.i, i32* %retval, align 4, !dbg !7014
  br label %return, !dbg !7014

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !7015
  ret i32 %80, !dbg !7015
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !7016 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6977, metadata !DIExpression()), !dbg !7020
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6984, metadata !DIExpression()), !dbg !7022
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !7023, metadata !DIExpression()), !dbg !7024
  %0 = load i64, i64* %n.addr, align 8, !dbg !7025
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !7022
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !7026
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !7027
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !7026, !srcloc !7011
  store i32 %3, i32* %bitpos.i, align 4, !dbg !7026
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !7028
  %add.i = add i32 %4, 1, !dbg !7029
  %sub = sub i32 %add.i, 1, !dbg !7030
  ret i32 %sub, !dbg !7031
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !7032 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !7036, metadata !DIExpression()), !dbg !7037
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !7038, metadata !DIExpression()), !dbg !7039
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7040, metadata !DIExpression()), !dbg !7041
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !7042, metadata !DIExpression()), !dbg !7043
  %0 = load i8*, i8** %object.addr, align 8, !dbg !7044
  ret i8* %0, !dbg !7045
}

; Function Attrs: noredzone
declare dso_local i32 @drm_mode_addfb(%struct.drm_device*, %struct.drm_mode_fb_cmd*, %struct.drm_file*) #2

; Function Attrs: noredzone
declare dso_local %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device*, %struct.drm_file*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_framebuffer_put(%struct.drm_framebuffer* %fb) #0 !dbg !7046 {
entry:
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !7047, metadata !DIExpression()), !dbg !7048
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !7049
  %base = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %0, i32 0, i32 2, !dbg !7050
  call void @drm_mode_object_put(%struct.drm_mode_object* %base) #8, !dbg !7051
  ret void, !dbg !7052
}

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @drm_mode_object_put(%struct.drm_mode_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_gem_object_put(%struct.drm_gem_object* %obj) #0 !dbg !7053 {
entry:
  %obj.addr = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_gem_object* %obj, %struct.drm_gem_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_gem_object** %obj.addr, metadata !7054, metadata !DIExpression()), !dbg !7055
  %0 = load %struct.drm_gem_object*, %struct.drm_gem_object** %obj.addr, align 8, !dbg !7056
  %tobool = icmp ne %struct.drm_gem_object* %0, null, !dbg !7056
  br i1 %tobool, label %if.then, label %if.end, !dbg !7058

if.then:                                          ; preds = %entry
  %1 = load %struct.drm_gem_object*, %struct.drm_gem_object** %obj.addr, align 8, !dbg !7059
  call void @__drm_gem_object_put(%struct.drm_gem_object* %1) #8, !dbg !7060
  br label %if.end, !dbg !7060

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7061
}

; Function Attrs: noredzone
declare dso_local i32 @drm_mode_destroy_dumb(%struct.drm_device*, i32, %struct.drm_file*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__drm_gem_object_put(%struct.drm_gem_object* %obj) #0 !dbg !7062 {
entry:
  %obj.addr = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_gem_object* %obj, %struct.drm_gem_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_gem_object** %obj.addr, metadata !7063, metadata !DIExpression()), !dbg !7064
  %0 = load %struct.drm_gem_object*, %struct.drm_gem_object** %obj.addr, align 8, !dbg !7065
  %refcount = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %0, i32 0, i32 0, !dbg !7066
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @drm_gem_object_free) #8, !dbg !7067
  ret void, !dbg !7068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !7069 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !7072, metadata !DIExpression()), !dbg !7073
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !7074, metadata !DIExpression()), !dbg !7075
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !7076
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !7078
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #8, !dbg !7079
  br i1 %call, label %if.then, label %if.end, !dbg !7080

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !7081
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !7083
  call void %1(%struct.kref* %2) #8, !dbg !7081
  store i32 1, i32* %retval, align 4, !dbg !7084
  br label %return, !dbg !7084

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7085
  br label %return, !dbg !7085

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !7086
  ret i32 %3, !dbg !7086
}

; Function Attrs: noredzone
declare dso_local void @drm_gem_object_free(%struct.kref*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !7087 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !7091, metadata !DIExpression()), !dbg !7092
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7093
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #8, !dbg !7094
  ret i1 %call, !dbg !7095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !7096 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !7099, metadata !DIExpression()), !dbg !7100
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !7101, metadata !DIExpression()), !dbg !7102
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7103
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !7104
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !7105
  ret i1 %call, !dbg !7106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !7107 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !7110, metadata !DIExpression()), !dbg !7116
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !7121, metadata !DIExpression()), !dbg !7122
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !7123, metadata !DIExpression()), !dbg !7125
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !7126, metadata !DIExpression()), !dbg !7134
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !7136, metadata !DIExpression()), !dbg !7137
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !7138, metadata !DIExpression()), !dbg !7139
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !7140, metadata !DIExpression()), !dbg !7141
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !7142, metadata !DIExpression()), !dbg !7143
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !7144, metadata !DIExpression()), !dbg !7145
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !7146, metadata !DIExpression()), !dbg !7147
  call void @llvm.dbg.declare(metadata i32* %old, metadata !7148, metadata !DIExpression()), !dbg !7149
  %0 = load i32, i32* %i.addr, align 4, !dbg !7150
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7151
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !7152
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7153
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !7153
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7154
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !7155
  %conv.i.i = trunc i64 %5 to i32, !dbg !7155
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !7156
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7157
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !7157
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !7157
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !7158
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7159
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !7125
  %sub.i.i = sub i32 0, %10, !dbg !7125
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !7125
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !7125
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !7125
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !7125
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !7125, !srcloc !7160
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !7125
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !7125
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !7125
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !7125
  store i32 %15, i32* %old, align 4, !dbg !7149
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !7161
  %tobool = icmp ne i32* %16, null, !dbg !7161
  br i1 %tobool, label %if.then, label %if.end, !dbg !7163

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !7164
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !7165
  store i32 %17, i32* %18, align 4, !dbg !7166
  br label %if.end, !dbg !7167

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !7168
  %20 = load i32, i32* %i.addr, align 4, !dbg !7170
  %cmp = icmp eq i32 %19, %20, !dbg !7171
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7172

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !7173, !srcloc !7175
  store i1 true, i1* %retval, align 1, !dbg !7176
  br label %return, !dbg !7176

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !7177
  %cmp3 = icmp slt i32 %21, 0, !dbg !7177
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !7177

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !7177
  %23 = load i32, i32* %i.addr, align 4, !dbg !7177
  %sub = sub i32 %22, %23, !dbg !7177
  %cmp4 = icmp slt i32 %sub, 0, !dbg !7177
  br label %lor.end, !dbg !7177

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !7177
  %lnot5 = xor i1 %lnot, true, !dbg !7177
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7177
  %conv = sext i32 %lnot.ext to i64, !dbg !7177
  %tobool6 = icmp ne i64 %conv, 0, !dbg !7177
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !7179

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !7180
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #8, !dbg !7181
  br label %if.end8, !dbg !7181

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !7182
  br label %return, !dbg !7182

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !7183
  ret i1 %26, !dbg !7183
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !7184 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !7188, metadata !DIExpression()), !dbg !7189
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7190, metadata !DIExpression()), !dbg !7191
  ret i1 true, !dbg !7192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !7193 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7197, metadata !DIExpression()), !dbg !7198
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7199, metadata !DIExpression()), !dbg !7200
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !7201, metadata !DIExpression()), !dbg !7202
  ret void, !dbg !7203
}

; Function Attrs: noredzone
declare dso_local i32 @drm_mode_rmfb(%struct.drm_device*, i32, %struct.drm_file*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #7

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5736, !5737, !5738, !5739}
!llvm.ident = !{!5740}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_client.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !105, !111, !119, !163, !172, !179, !186, !191, !197, !203, !208, !216, !220, !236, !242, !249, !265, !278, !283, !290}
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
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !112, line: 79, baseType: !5, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118}
!114 = !DIEnumerator(name: "DRM_AUTH", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "DRM_MASTER", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4, isUnsigned: true)
!117 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16, isUnsigned: true)
!118 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !120, line: 91, baseType: !121, size: 32, elements: !122)
!120 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!123 = !DIEnumerator(name: "MODE_OK", value: 0)
!124 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!125 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!126 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!127 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!128 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!129 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!130 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!131 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!132 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!133 = !DIEnumerator(name: "MODE_MEM", value: 10)
!134 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!135 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!136 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!137 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!138 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!139 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!140 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!141 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!142 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!143 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!144 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!145 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!146 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!147 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!148 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!149 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!150 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!151 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!152 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!153 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!154 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!155 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!156 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!157 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!158 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!159 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!160 = !DIEnumerator(name: "MODE_STALE", value: -3)
!161 = !DIEnumerator(name: "MODE_BAD", value: -2)
!162 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !164, line: 96, baseType: !5, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169, !170, !171}
!166 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !173, line: 33, baseType: !5, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !176, !177, !178}
!175 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!176 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !180, line: 77, baseType: !5, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/lizy2001/genbc/linux")
!181 = !{!182, !183, !184, !185}
!182 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0, isUnsigned: true)
!183 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1, isUnsigned: true)
!184 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2, isUnsigned: true)
!185 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3, isUnsigned: true)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !180, line: 84, baseType: !5, size: 32, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !192, line: 536, baseType: !5, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0, isUnsigned: true)
!195 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1, isUnsigned: true)
!196 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2, isUnsigned: true)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !198, line: 94, baseType: !5, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0, isUnsigned: true)
!201 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1, isUnsigned: true)
!202 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2, isUnsigned: true)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !198, line: 59, baseType: !5, size: 32, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIEnumerator(name: "connector_status_connected", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "connector_status_disconnected", value: 2, isUnsigned: true)
!207 = !DIEnumerator(name: "connector_status_unknown", value: 3, isUnsigned: true)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !198, line: 133, baseType: !5, size: 32, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIEnumerator(name: "SubPixelUnknown", value: 0, isUnsigned: true)
!211 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1, isUnsigned: true)
!212 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2, isUnsigned: true)
!213 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3, isUnsigned: true)
!214 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4, isUnsigned: true)
!215 = !DIEnumerator(name: "SubPixelNone", value: 5, isUnsigned: true)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !198, line: 223, baseType: !5, size: 32, elements: !217)
!217 = !{!218, !219}
!218 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0, isUnsigned: true)
!219 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1, isUnsigned: true)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !221, line: 334, baseType: !5, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!223 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0, isUnsigned: true)
!225 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1, isUnsigned: true)
!226 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3, isUnsigned: true)
!227 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4, isUnsigned: true)
!228 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5, isUnsigned: true)
!229 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6, isUnsigned: true)
!230 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8, isUnsigned: true)
!231 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9, isUnsigned: true)
!232 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10, isUnsigned: true)
!233 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11, isUnsigned: true)
!234 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15, isUnsigned: true)
!235 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18, isUnsigned: true)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !198, line: 46, baseType: !5, size: 32, elements: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0, isUnsigned: true)
!239 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1, isUnsigned: true)
!240 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2, isUnsigned: true)
!241 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !198, line: 249, baseType: !121, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!245 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!246 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!247 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!248 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !250, line: 50, baseType: !5, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!252 = !DIEnumerator(name: "DRIVER_GEM", value: 1, isUnsigned: true)
!253 = !DIEnumerator(name: "DRIVER_MODESET", value: 2, isUnsigned: true)
!254 = !DIEnumerator(name: "DRIVER_RENDER", value: 8, isUnsigned: true)
!255 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16, isUnsigned: true)
!256 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32, isUnsigned: true)
!257 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64, isUnsigned: true)
!258 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432, isUnsigned: true)
!259 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864, isUnsigned: true)
!260 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728, isUnsigned: true)
!261 = !DIEnumerator(name: "DRIVER_SG", value: 268435456, isUnsigned: true)
!262 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912, isUnsigned: true)
!263 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824, isUnsigned: true)
!264 = !DIEnumerator(name: "DRIVER_KMS_LEGACY_CONTEXT", value: 2147483648, isUnsigned: true)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !266, line: 277, baseType: !5, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!268 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!269 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!270 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!271 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!272 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!273 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!274 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!275 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!276 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!277 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !279, line: 10, baseType: !5, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !282}
!281 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!282 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !284, line: 305, baseType: !5, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !291, line: 119, baseType: !5, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!294 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!295 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!296 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!297 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!298 = !{!299, !300, !426, !5734, !441, !913}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_client_dev", file: !302, line: 70, size: 640, elements: !303)
!302 = !DIFile(filename: "./include/drm/drm_client.h", directory: "/home/lizy2001/genbc/linux")
!303 = !{!304, !4963, !4964, !4965, !4980, !4981, !4982}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !301, file: !302, line: 74, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !173, line: 53, size: 11840, elements: !307)
!307 = !{!308, !315, !316, !329, !4112, !4118, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4644, !4645, !4646, !4647, !4648, !4649, !4652, !4656, !4657, !4948, !4949, !4950, !4956, !4959, !4960}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !306, file: !173, line: 59, baseType: !309, size: 128)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !310, line: 178, size: 128, elements: !311)
!310 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !310, line: 179, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !309, file: !310, line: 179, baseType: !313, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !306, file: !173, line: 62, baseType: !121, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !306, file: !173, line: 65, baseType: !317, size: 32, offset: 160)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !318, line: 19, size: 32, elements: !319)
!318 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !317, file: !318, line: 20, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !291, line: 113, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !291, line: 111, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !322, file: !291, line: 112, baseType: !325, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !310, line: 168, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 166, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !326, file: !310, line: 167, baseType: !121, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !306, file: !173, line: 68, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !332)
!332 = !{!333, !3566, !3567, !3570, !3571, !3622, !3713, !3714, !3715, !3716, !3717, !3726, !3831, !3844, !4039, !4040, !4044, !4046, !4047, !4048, !4052, !4058, !4059, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4100, !4101, !4102, !4105, !4108, !4109, !4110, !4111}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !331, file: !71, line: 462, baseType: !334, size: 512)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !335, line: 64, size: 512, elements: !336)
!335 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337, !341, !342, !344, !404, !3439, !3560, !3561, !3562, !3563, !3564, !3565}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !335, line: 65, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !334, file: !335, line: 66, baseType: !309, size: 128, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !334, file: !335, line: 67, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !334, file: !335, line: 68, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !335, line: 192, size: 704, elements: !347)
!347 = !{!348, !349, !365, !366}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !346, file: !335, line: 193, baseType: !309, size: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !346, file: !335, line: 194, baseType: !350, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !351, line: 83, baseType: !352)
!351 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !351, line: 71, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !351, line: 72, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !351, line: 72, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !355, file: !351, line: 73, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !351, line: 20, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !358, file: !351, line: 21, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !362, line: 25, baseType: !363)
!362 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 25, elements: !364)
!364 = !{}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !346, file: !335, line: 195, baseType: !334, size: 512, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !346, file: !335, line: 196, baseType: !367, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !335, line: 156, size: 192, elements: !370)
!370 = !{!371, !376, !381}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !369, file: !335, line: 157, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!121, !345, !343}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !335, line: 158, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!338, !345, !343}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !369, file: !335, line: 159, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!121, !345, !343, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !335, line: 148, size: 20736, elements: !388)
!388 = !{!389, !394, !398, !399, !403}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !387, file: !335, line: 149, baseType: !390, size: 192)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 192, elements: !392)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!392 = !{!393}
!393 = !DISubrange(count: 3)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !387, file: !335, line: 150, baseType: !395, size: 4096, offset: 192)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 4096, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !387, file: !335, line: 151, baseType: !121, size: 32, offset: 4288)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !387, file: !335, line: 152, baseType: !400, size: 16384, offset: 4320)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 16384, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 2048)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !387, file: !335, line: 153, baseType: !121, size: 32, offset: 20704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !334, file: !335, line: 69, baseType: !405, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !335, line: 138, size: 448, elements: !407)
!407 = !{!408, !412, !442, !444, !3401, !3429, !3433}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !406, file: !335, line: 139, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !343}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !406, file: !335, line: 140, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !416, line: 230, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !434}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !415, file: !416, line: 231, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !343, !427, !391}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !310, line: 60, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !424, line: 73, baseType: !425)
!424 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !424, line: 15, baseType: !426)
!426 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !416, line: 30, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !428, file: !416, line: 31, baseType: !338, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !428, file: !416, line: 32, baseType: !432, size: 16, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !310, line: 19, baseType: !433)
!433 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !415, file: !416, line: 232, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!422, !343, !427, !338, !438}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !310, line: 55, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !424, line: 72, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !424, line: 16, baseType: !441)
!441 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !406, file: !335, line: 141, baseType: !443, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !406, file: !335, line: 142, baseType: !445, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !416, line: 84, size: 320, elements: !449)
!449 = !{!450, !451, !455, !3398, !3399}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !416, line: 85, baseType: !338, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !448, file: !416, line: 86, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!432, !343, !427, !121}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !448, file: !416, line: 88, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!432, !343, !459, !121}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !416, line: 168, size: 448, elements: !461)
!461 = !{!462, !463, !464, !465, !3393, !3394}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !460, file: !416, line: 169, baseType: !428, size: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !460, file: !416, line: 170, baseType: !438, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !460, file: !416, line: 171, baseType: !299, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !460, file: !416, line: 172, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!422, !469, !343, !459, !391, !648, !438}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !471)
!471 = !{!472, !490, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3376, !3377, !3386, !3387, !3388, !3389, !3390, !3391, !3392}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !470, file: !42, line: 920, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !42, line: 917, size: 128, elements: !474)
!474 = !{!475, !481}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !473, file: !42, line: 918, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !477, line: 58, size: 64, elements: !478)
!477 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !477, line: 59, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !473, file: !42, line: 919, baseType: !482, size: 128, align: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !310, line: 216, size: 128, align: 64, elements: !483)
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !310, line: 217, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !482, file: !310, line: 218, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !485}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !470, file: !42, line: 921, baseType: !491, size: 128, offset: 128)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !492, line: 8, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !498}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !491, file: !492, line: 9, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !497, line: 18, flags: DIFlagFwdDecl)
!497 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !491, file: !492, line: 10, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !497, line: 89, size: 1536, elements: !501)
!501 = !{!502, !503, !513, !521, !522, !545, !3327, !3329, !3341, !3342, !3343, !3344, !3345, !3350, !3351, !3352}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !500, file: !497, line: 91, baseType: !5, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !500, file: !497, line: 92, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !505, line: 277, baseType: !506)
!505 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !505, line: 277, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !506, file: !505, line: 277, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !505, line: 70, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !505, line: 65, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !510, file: !505, line: 66, baseType: !5, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !500, file: !497, line: 93, baseType: !514, size: 128, offset: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !515, line: 38, size: 128, elements: !516)
!515 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !515, line: 39, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !514, file: !515, line: 39, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !500, file: !497, line: 94, baseType: !499, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !500, file: !497, line: 95, baseType: !523, size: 128, offset: 256)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !497, line: 47, size: 128, elements: !524)
!524 = !{!525, !541}
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !497, line: 48, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !497, line: 48, size: 64, elements: !527)
!527 = !{!528, !537}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !497, line: 49, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !497, line: 49, size: 64, elements: !530)
!530 = !{!531, !536}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !529, file: !497, line: 50, baseType: !532, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !533, line: 21, baseType: !534)
!533 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !535, line: 27, baseType: !5)
!535 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !529, file: !497, line: 50, baseType: !532, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !526, file: !497, line: 52, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !533, line: 23, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !535, line: 31, baseType: !540)
!540 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !497, line: 54, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !500, file: !497, line: 96, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !548)
!548 = !{!549, !550, !551, !559, !566, !567, !715, !3030, !3031, !3032, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3303, !3311, !3312, !3313, !3323, !3324, !3325, !3326}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !547, file: !42, line: 611, baseType: !432, size: 16)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !547, file: !42, line: 612, baseType: !433, size: 16, offset: 16)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !547, file: !42, line: 613, baseType: !552, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !553, line: 23, baseType: !554)
!553 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 21, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !554, file: !553, line: 22, baseType: !557, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !310, line: 32, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !424, line: 49, baseType: !5)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !547, file: !42, line: 614, baseType: !560, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !553, line: 28, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 26, size: 32, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !561, file: !553, line: 27, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !310, line: 33, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !424, line: 50, baseType: !5)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !547, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !547, file: !42, line: 622, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !571)
!571 = !{!572, !576, !589, !593, !599, !603, !609, !613, !617, !621, !625, !626, !632, !636, !662, !691, !695, !701, !706, !710, !711}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !570, file: !42, line: 1865, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!499, !546, !499, !5}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !570, file: !42, line: 1866, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!338, !499, !546, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !582, line: 10, size: 128, elements: !583)
!582 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!583 = !{!584, !588}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !581, file: !582, line: 11, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !299}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !581, file: !582, line: 12, baseType: !299, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !570, file: !42, line: 1867, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!121, !546, !121}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !570, file: !42, line: 1868, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !546, !121}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !570, file: !42, line: 1870, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!121, !499, !391, !121}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !570, file: !42, line: 1872, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!121, !546, !499, !432, !607}
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !310, line: 30, baseType: !608)
!608 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !570, file: !42, line: 1873, baseType: !610, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!121, !499, !546, !499}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !570, file: !42, line: 1874, baseType: !614, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!121, !546, !499}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !570, file: !42, line: 1875, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!121, !546, !499, !338}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !570, file: !42, line: 1876, baseType: !622, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!121, !546, !499, !432}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !570, file: !42, line: 1877, baseType: !614, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !570, file: !42, line: 1878, baseType: !627, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!121, !546, !499, !432, !630}
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !310, line: 16, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !310, line: 13, baseType: !532)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !570, file: !42, line: 1879, baseType: !633, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!121, !546, !499, !546, !499, !5}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !570, file: !42, line: 1881, baseType: !637, size: 64, offset: 832)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!121, !499, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !651, !659, !660, !661}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !641, file: !42, line: 220, baseType: !5, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !641, file: !42, line: 221, baseType: !432, size: 16, offset: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !641, file: !42, line: 222, baseType: !552, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !641, file: !42, line: 223, baseType: !560, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !641, file: !42, line: 224, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !310, line: 46, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !424, line: 88, baseType: !650)
!650 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !641, file: !42, line: 225, baseType: !652, size: 128, offset: 192)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !653, line: 13, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!654 = !{!655, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !652, file: !653, line: 14, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !653, line: 8, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !535, line: 30, baseType: !650)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !652, file: !653, line: 15, baseType: !426, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !641, file: !42, line: 226, baseType: !652, size: 128, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !641, file: !42, line: 227, baseType: !652, size: 128, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !641, file: !42, line: 234, baseType: !469, size: 64, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !570, file: !42, line: 1882, baseType: !663, size: 64, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!121, !666, !668, !532, !5}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !670, line: 22, size: 1152, elements: !671)
!670 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!671 = !{!672, !673, !674, !675, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !669, file: !670, line: 23, baseType: !532, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !669, file: !670, line: 24, baseType: !432, size: 16, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !669, file: !670, line: 25, baseType: !5, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !669, file: !670, line: 26, baseType: !676, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !310, line: 104, baseType: !532)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !669, file: !670, line: 27, baseType: !538, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !669, file: !670, line: 28, baseType: !538, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !669, file: !670, line: 37, baseType: !538, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !669, file: !670, line: 38, baseType: !630, size: 32, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !669, file: !670, line: 39, baseType: !630, size: 32, offset: 352)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !669, file: !670, line: 40, baseType: !552, size: 32, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !669, file: !670, line: 41, baseType: !560, size: 32, offset: 416)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !669, file: !670, line: 42, baseType: !648, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !669, file: !670, line: 43, baseType: !652, size: 128, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !669, file: !670, line: 44, baseType: !652, size: 128, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !669, file: !670, line: 45, baseType: !652, size: 128, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !669, file: !670, line: 46, baseType: !652, size: 128, offset: 896)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !669, file: !670, line: 47, baseType: !538, size: 64, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !669, file: !670, line: 48, baseType: !538, size: 64, offset: 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !570, file: !42, line: 1883, baseType: !692, size: 64, offset: 960)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!422, !499, !391, !438}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !570, file: !42, line: 1884, baseType: !696, size: 64, offset: 1024)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!121, !546, !699, !538, !538}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !570, file: !42, line: 1886, baseType: !702, size: 64, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!121, !546, !705, !121}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !570, file: !42, line: 1887, baseType: !707, size: 64, offset: 1152)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!121, !546, !499, !469, !5, !432}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !570, file: !42, line: 1890, baseType: !622, size: 64, offset: 1216)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !570, file: !42, line: 1891, baseType: !712, size: 64, offset: 1280)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!121, !546, !597, !121}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !547, file: !42, line: 623, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !774, !2637, !2719, !2802, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2818, !2822, !2823, !2826, !2827, !2830, !2831, !2832, !2873, !2900, !2901, !2902, !2903, !2904, !2905, !2908, !2910, !2917, !2918, !2920, !2921, !2922, !2981, !2982, !2997, !2998, !2999, !3000, !3001, !3004, !3005, !3006, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !717, file: !42, line: 1417, baseType: !309, size: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !717, file: !42, line: 1418, baseType: !630, size: 32, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !717, file: !42, line: 1419, baseType: !544, size: 8, offset: 160)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !717, file: !42, line: 1420, baseType: !441, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !717, file: !42, line: 1421, baseType: !648, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !717, file: !42, line: 1422, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !727)
!727 = !{!728, !729, !730, !737, !741, !745, !749, !753, !754, !764, !767, !768, !769, !771, !772, !773}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !726, file: !42, line: 2229, baseType: !338, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !726, file: !42, line: 2230, baseType: !121, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !726, file: !42, line: 2238, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!121, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !736, line: 28, flags: DIFlagFwdDecl)
!736 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !726, file: !42, line: 2239, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !726, file: !42, line: 2240, baseType: !742, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!499, !725, !121, !338, !299}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !726, file: !42, line: 2242, baseType: !746, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !716}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !726, file: !42, line: 2243, baseType: !750, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !752, line: 76, flags: DIFlagFwdDecl)
!752 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !42, line: 2244, baseType: !725, size: 64, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !726, file: !42, line: 2245, baseType: !755, size: 64, offset: 512)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !310, line: 182, size: 64, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !755, file: !310, line: 183, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !310, line: 186, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !310, line: 187, baseType: !758, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !759, file: !310, line: 187, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !726, file: !42, line: 2247, baseType: !765, offset: 576)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !766, line: 187, elements: !364)
!766 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !726, file: !42, line: 2248, baseType: !765, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !726, file: !42, line: 2249, baseType: !765, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !726, file: !42, line: 2250, baseType: !770, offset: 576)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, elements: !392)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !726, file: !42, line: 2252, baseType: !765, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !726, file: !42, line: 2253, baseType: !765, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !726, file: !42, line: 2254, baseType: !765, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !717, file: !42, line: 1423, baseType: !775, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !778)
!778 = !{!779, !783, !787, !788, !792, !798, !802, !803, !804, !808, !812, !813, !814, !815, !821, !826, !827, !883, !884, !885, !886, !2621, !2636}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !777, file: !42, line: 1936, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!546, !716}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !777, file: !42, line: 1937, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !546}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !777, file: !42, line: 1938, baseType: !784, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !777, file: !42, line: 1940, baseType: !789, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !546, !121}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !777, file: !42, line: 1941, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!121, !546, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !42, line: 289, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !777, file: !42, line: 1942, baseType: !799, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!121, !546}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !777, file: !42, line: 1943, baseType: !784, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !777, file: !42, line: 1944, baseType: !746, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !777, file: !42, line: 1945, baseType: !805, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!121, !716, !121}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !777, file: !42, line: 1946, baseType: !809, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!121, !716}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !777, file: !42, line: 1947, baseType: !809, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !777, file: !42, line: 1948, baseType: !809, size: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !777, file: !42, line: 1949, baseType: !809, size: 64, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !777, file: !42, line: 1950, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!121, !499, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !777, file: !42, line: 1951, baseType: !822, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!121, !716, !825, !391}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !777, file: !42, line: 1952, baseType: !746, size: 64, offset: 960)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !777, file: !42, line: 1954, baseType: !828, size: 64, offset: 1024)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!121, !831, !499}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !833, line: 16, size: 896, elements: !834)
!833 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !856, !878, !879, !882}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !832, file: !833, line: 17, baseType: !391, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !832, file: !833, line: 18, baseType: !438, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !832, file: !833, line: 19, baseType: !438, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !832, file: !833, line: 20, baseType: !438, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !832, file: !833, line: 21, baseType: !438, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !832, file: !833, line: 22, baseType: !648, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !832, file: !833, line: 23, baseType: !648, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !832, file: !833, line: 24, baseType: !843, size: 192, offset: 448)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !844, line: 53, size: 192, elements: !845)
!844 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !854, !855}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !843, file: !844, line: 54, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !848, line: 13, baseType: !849)
!848 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !310, line: 175, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 173, size: 64, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !850, file: !310, line: 174, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !533, line: 22, baseType: !657)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !843, file: !844, line: 55, baseType: !350, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !843, file: !844, line: 59, baseType: !309, size: 128, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !832, file: !833, line: 25, baseType: !857, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !833, line: 31, size: 256, elements: !860)
!860 = !{!861, !866, !870, !874}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !859, file: !833, line: 32, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!299, !831, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !859, file: !833, line: 33, baseType: !867, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !831, !299}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !859, file: !833, line: 34, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!299, !831, !299, !865}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !859, file: !833, line: 35, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!121, !831, !299}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !832, file: !833, line: 26, baseType: !121, size: 32, offset: 704)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !832, file: !833, line: 27, baseType: !880, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !832, file: !833, line: 28, baseType: !299, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !777, file: !42, line: 1955, baseType: !828, size: 64, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !777, file: !42, line: 1956, baseType: !828, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !777, file: !42, line: 1957, baseType: !828, size: 64, offset: 1216)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !777, file: !42, line: 1963, baseType: !887, size: 64, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!121, !716, !890, !913}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !892, line: 68, size: 512, align: 128, elements: !893)
!892 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895, !2613, !2620}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !892, line: 69, baseType: !441, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !892, line: 77, baseType: !896, size: 320, offset: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !892, line: 77, size: 320, elements: !897)
!897 = !{!898, !1075, !1080, !1108, !1116, !1122, !2544, !2612}
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 78, baseType: !899, size: 320)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 78, size: 320, elements: !900)
!900 = !{!901, !902, !1073, !1074}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !899, file: !892, line: 84, baseType: !309, size: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !899, file: !892, line: 86, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !905)
!905 = !{!906, !907, !915, !916, !917, !932, !941, !942, !943, !944, !1066, !1067, !1070, !1071, !1072}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !904, file: !42, line: 452, baseType: !546, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !904, file: !42, line: 453, baseType: !908, size: 128, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !909, line: 292, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !912, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !908, file: !909, line: 293, baseType: !350)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !908, file: !909, line: 295, baseType: !913, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !310, line: 148, baseType: !5)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !908, file: !909, line: 296, baseType: !299, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !904, file: !42, line: 454, baseType: !913, size: 32, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !904, file: !42, line: 455, baseType: !325, size: 32, offset: 224)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !904, file: !42, line: 460, baseType: !918, size: 128, offset: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !919, line: 125, size: 128, elements: !920)
!919 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !931}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !918, file: !919, line: 126, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !919, line: 31, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !922, file: !919, line: 32, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !919, line: 24, size: 192, align: 64, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !926, file: !919, line: 25, baseType: !441, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !926, file: !919, line: 26, baseType: !925, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !926, file: !919, line: 27, baseType: !925, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !918, file: !919, line: 127, baseType: !925, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !904, file: !42, line: 461, baseType: !933, size: 256, offset: 384)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !934, line: 35, size: 256, elements: !935)
!934 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!935 = !{!936, !937, !938, !940}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !933, file: !934, line: 36, baseType: !847, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !933, file: !934, line: 42, baseType: !847, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !933, file: !934, line: 46, baseType: !939, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !351, line: 29, baseType: !358)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !933, file: !934, line: 47, baseType: !309, size: 128, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !904, file: !42, line: 462, baseType: !441, size: 64, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !904, file: !42, line: 463, baseType: !441, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !904, file: !42, line: 464, baseType: !441, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !904, file: !42, line: 465, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !948)
!948 = !{!949, !953, !957, !961, !965, !969, !975, !981, !985, !990, !994, !998, !1002, !1030, !1034, !1040, !1041, !1042, !1046, !1051, !1055, !1062}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !947, file: !42, line: 368, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!121, !890, !796}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !947, file: !42, line: 369, baseType: !954, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!121, !469, !890}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !947, file: !42, line: 372, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!121, !903, !796}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !947, file: !42, line: 375, baseType: !962, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!121, !890}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !947, file: !42, line: 381, baseType: !966, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!121, !469, !903, !313, !5}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !947, file: !42, line: 383, baseType: !970, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !947, file: !42, line: 385, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!121, !469, !903, !648, !5, !5, !979, !980}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !947, file: !42, line: 388, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!121, !469, !903, !648, !5, !5, !890, !299}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !947, file: !42, line: 393, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!989, !903, !989}
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !310, line: 125, baseType: !538)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !947, file: !42, line: 394, baseType: !991, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !890, !5, !5}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !947, file: !42, line: 395, baseType: !995, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!121, !890, !913}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !947, file: !42, line: 396, baseType: !999, size: 64, offset: 704)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !890}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !947, file: !42, line: 397, baseType: !1003, size: 64, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!422, !1006, !1028}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1015, !1016, !1017, !1020, !1021}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1007, file: !42, line: 321, baseType: !469, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1007, file: !42, line: 326, baseType: !648, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1007, file: !42, line: 327, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !1006, !426, !426}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1007, file: !42, line: 328, baseType: !299, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1007, file: !42, line: 329, baseType: !121, size: 32, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1007, file: !42, line: 330, baseType: !1018, size: 16, offset: 288)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !533, line: 19, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !535, line: 24, baseType: !433)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1007, file: !42, line: 331, baseType: !1018, size: 16, offset: 304)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !42, line: 332, baseType: !1022, size: 64, offset: 320)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !42, line: 332, size: 64, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1022, file: !42, line: 333, baseType: !5, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1022, file: !42, line: 334, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !947, file: !42, line: 402, baseType: !1031, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!121, !903, !890, !890, !3}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !947, file: !42, line: 404, baseType: !1035, size: 64, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!607, !890, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1039, line: 305, baseType: !5)
!1039 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !947, file: !42, line: 405, baseType: !999, size: 64, offset: 960)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !947, file: !42, line: 406, baseType: !962, size: 64, offset: 1024)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !947, file: !42, line: 407, baseType: !1043, size: 64, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!121, !890, !441, !441}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !947, file: !42, line: 409, baseType: !1047, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !890, !1050, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !947, file: !42, line: 410, baseType: !1052, size: 64, offset: 1216)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!121, !903, !890}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !947, file: !42, line: 413, baseType: !1056, size: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!121, !1059, !469, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !947, file: !42, line: 415, baseType: !1063, size: 64, offset: 1344)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !469}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !42, line: 466, baseType: !441, size: 64, offset: 896)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !904, file: !42, line: 467, baseType: !1068, size: 32, offset: 960)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1069, line: 8, baseType: !532)
!1069 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !904, file: !42, line: 468, baseType: !350, offset: 992)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !904, file: !42, line: 469, baseType: !309, size: 128, offset: 1024)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !904, file: !42, line: 470, baseType: !299, size: 64, offset: 1152)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !899, file: !892, line: 87, baseType: !441, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !899, file: !892, line: 94, baseType: !441, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 96, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 96, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1076, file: !892, line: 101, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !310, line: 143, baseType: !538)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 103, baseType: !1081, size: 320)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 103, size: 320, elements: !1082)
!1082 = !{!1083, !1093, !1096, !1097}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !892, line: 104, baseType: !1084, size: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !892, line: 104, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1084, file: !892, line: 105, baseType: !309, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !892, line: 106, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !892, line: 106, size: 128, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1088, file: !892, line: 107, baseType: !890, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1088, file: !892, line: 109, baseType: !121, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1088, file: !892, line: 110, baseType: !121, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1081, file: !892, line: 117, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !892, line: 117, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1081, file: !892, line: 119, baseType: !299, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !892, line: 120, baseType: !1098, size: 64, offset: 256)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !892, line: 120, size: 64, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1098, file: !892, line: 121, baseType: !299, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1098, file: !892, line: 122, baseType: !441, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !892, line: 123, baseType: !1103, size: 32)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !892, line: 123, size: 32, elements: !1104)
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1103, file: !892, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1103, file: !892, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1103, file: !892, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 130, baseType: !1109, size: 192)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 130, size: 192, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1109, file: !892, line: 131, baseType: !441, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1109, file: !892, line: 134, baseType: !544, size: 8, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1109, file: !892, line: 135, baseType: !544, size: 8, offset: 72)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1109, file: !892, line: 136, baseType: !325, size: 32, offset: 96)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1109, file: !892, line: 137, baseType: !5, size: 32, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 139, baseType: !1117, size: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 139, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1117, file: !892, line: 140, baseType: !441, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1117, file: !892, line: 141, baseType: !325, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1117, file: !892, line: 143, baseType: !309, size: 128, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 145, baseType: !1123, size: 256)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 145, size: 256, elements: !1124)
!1124 = !{!1125, !1126, !1129, !1130, !2543}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1123, file: !892, line: 146, baseType: !441, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1123, file: !892, line: 147, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1128, line: 509, baseType: !890)
!1128 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1123, file: !892, line: 148, baseType: !441, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !892, line: 149, baseType: !1131, size: 64, offset: 192)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !892, line: 149, size: 64, elements: !1132)
!1132 = !{!1133, !2542}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1131, file: !892, line: 150, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !892, line: 388, size: 7296, elements: !1136)
!1136 = !{!1137, !2538}
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !892, line: 389, baseType: !1138, size: 7296)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !892, line: 389, size: 7296, elements: !1139)
!1139 = !{!1140, !1258, !1259, !1260, !1264, !1265, !1266, !1267, !1268, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1309, !1317, !1320, !1360, !1361, !2522, !2523, !2526, !2527, !2528, !2531, !2532, !2533, !2536, !2537}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1138, file: !892, line: 390, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !892, line: 305, size: 1472, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1158, !1159, !1164, !1165, !1168, !1252, !1253, !1254, !1255, !1256}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1142, file: !892, line: 308, baseType: !441, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1142, file: !892, line: 309, baseType: !441, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1142, file: !892, line: 313, baseType: !1141, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1142, file: !892, line: 313, baseType: !1141, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1142, file: !892, line: 315, baseType: !926, size: 192, align: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1142, file: !892, line: 323, baseType: !441, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1142, file: !892, line: 327, baseType: !1134, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1142, file: !892, line: 333, baseType: !1152, size: 64, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1128, line: 284, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1128, line: 284, size: 64, elements: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1153, file: !1128, line: 284, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1157, line: 19, baseType: !441)
!1157 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1142, file: !892, line: 334, baseType: !441, size: 64, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1142, file: !892, line: 343, baseType: !1160, size: 256, offset: 704)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !892, line: 340, size: 256, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1160, file: !892, line: 341, baseType: !926, size: 192, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1160, file: !892, line: 342, baseType: !441, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1142, file: !892, line: 351, baseType: !309, size: 128, offset: 960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1142, file: !892, line: 353, baseType: !1166, size: 64, offset: 1088)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !892, line: 353, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1142, file: !892, line: 356, baseType: !1169, size: 64, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1172)
!1172 = !{!1173, !1177, !1178, !1182, !1186, !1226, !1230, !1234, !1238, !1239, !1240, !1244, !1248}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1171, file: !12, line: 558, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !1141}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1171, file: !12, line: 559, baseType: !1174, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1171, file: !12, line: 560, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!121, !1141, !441}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1171, file: !12, line: 561, baseType: !1183, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!121, !1141}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1171, file: !12, line: 562, baseType: !1187, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !892, line: 682, baseType: !5)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1206, !1213, !1219, !1220, !1221, !1223, !1225}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1192, file: !12, line: 509, baseType: !1141, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1192, file: !12, line: 511, baseType: !913, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1192, file: !12, line: 512, baseType: !441, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1192, file: !12, line: 513, baseType: !441, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1192, file: !12, line: 514, baseType: !1200, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1128, line: 385, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 385, size: 64, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1202, file: !1128, line: 385, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1157, line: 15, baseType: !441)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1192, file: !12, line: 516, baseType: !1207, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1128, line: 359, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 359, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1209, file: !1128, line: 359, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1157, line: 16, baseType: !441)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1192, file: !12, line: 519, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1157, line: 21, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 21, size: 64, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1215, file: !1157, line: 21, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1157, line: 14, baseType: !441)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1192, file: !12, line: 521, baseType: !890, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1192, file: !12, line: 522, baseType: !890, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1192, file: !12, line: 528, baseType: !1222, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1192, file: !12, line: 532, baseType: !1224, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1192, file: !12, line: 536, baseType: !1127, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1171, file: !12, line: 563, baseType: !1227, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1190, !1191, !11}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1171, file: !12, line: 565, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1191, !441, !441}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1171, file: !12, line: 567, baseType: !1235, size: 64, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!441, !1141}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1171, file: !12, line: 571, baseType: !1187, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1171, file: !12, line: 574, baseType: !1187, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1171, file: !12, line: 579, baseType: !1241, size: 64, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!121, !1141, !441, !299, !121, !121}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1171, file: !12, line: 585, baseType: !1245, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!338, !1141}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1171, file: !12, line: 615, baseType: !1249, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!890, !1141, !441}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1142, file: !892, line: 359, baseType: !441, size: 64, offset: 1216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1142, file: !892, line: 361, baseType: !469, size: 64, offset: 1280)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1142, file: !892, line: 362, baseType: !299, size: 64, offset: 1344)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1142, file: !892, line: 365, baseType: !847, size: 64, offset: 1408)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1142, file: !892, line: 373, baseType: !1257, offset: 1472)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !892, line: 296, elements: !364)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1138, file: !892, line: 391, baseType: !922, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1138, file: !892, line: 392, baseType: !538, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1138, file: !892, line: 394, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!441, !469, !441, !441, !441, !441}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1138, file: !892, line: 398, baseType: !441, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1138, file: !892, line: 399, baseType: !441, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1138, file: !892, line: 405, baseType: !441, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1138, file: !892, line: 406, baseType: !441, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1138, file: !892, line: 407, baseType: !1269, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1128, line: 286, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 286, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1271, file: !1128, line: 286, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1157, line: 18, baseType: !441)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1138, file: !892, line: 416, baseType: !325, size: 32, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1138, file: !892, line: 428, baseType: !325, size: 32, offset: 608)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1138, file: !892, line: 437, baseType: !325, size: 32, offset: 640)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1138, file: !892, line: 447, baseType: !325, size: 32, offset: 672)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1138, file: !892, line: 450, baseType: !847, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1138, file: !892, line: 452, baseType: !121, size: 32, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1138, file: !892, line: 454, baseType: !350, offset: 800)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1138, file: !892, line: 457, baseType: !933, size: 256, offset: 832)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1138, file: !892, line: 459, baseType: !309, size: 128, offset: 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1138, file: !892, line: 466, baseType: !441, size: 64, offset: 1216)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1138, file: !892, line: 467, baseType: !441, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1138, file: !892, line: 469, baseType: !441, size: 64, offset: 1344)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1138, file: !892, line: 470, baseType: !441, size: 64, offset: 1408)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1138, file: !892, line: 471, baseType: !849, size: 64, offset: 1472)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1138, file: !892, line: 472, baseType: !441, size: 64, offset: 1536)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1138, file: !892, line: 473, baseType: !441, size: 64, offset: 1600)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1138, file: !892, line: 474, baseType: !441, size: 64, offset: 1664)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1138, file: !892, line: 475, baseType: !441, size: 64, offset: 1728)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1138, file: !892, line: 477, baseType: !350, offset: 1792)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1138, file: !892, line: 478, baseType: !441, size: 64, offset: 1792)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1138, file: !892, line: 478, baseType: !441, size: 64, offset: 1856)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1138, file: !892, line: 478, baseType: !441, size: 64, offset: 1920)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1138, file: !892, line: 478, baseType: !441, size: 64, offset: 1984)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1138, file: !892, line: 479, baseType: !441, size: 64, offset: 2048)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1138, file: !892, line: 479, baseType: !441, size: 64, offset: 2112)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1138, file: !892, line: 479, baseType: !441, size: 64, offset: 2176)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1138, file: !892, line: 480, baseType: !441, size: 64, offset: 2240)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1138, file: !892, line: 480, baseType: !441, size: 64, offset: 2304)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1138, file: !892, line: 480, baseType: !441, size: 64, offset: 2368)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1138, file: !892, line: 480, baseType: !441, size: 64, offset: 2432)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1138, file: !892, line: 482, baseType: !1306, size: 2816, offset: 2496)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 2816, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 44)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1138, file: !892, line: 488, baseType: !1310, size: 256, offset: 5312)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1311, line: 60, size: 256, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1310, file: !1311, line: 61, baseType: !1314, size: 256)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 256, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 4)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1138, file: !892, line: 490, baseType: !1318, size: 64, offset: 5568)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !892, line: 490, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1138, file: !892, line: 493, baseType: !1321, size: 896, offset: 5632)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1322, line: 53, baseType: !1323)
!1322 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 13, size: 896, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1331, !1332, !1333, !1334, !1354, !1355, !1356}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1323, file: !1322, line: 18, baseType: !538, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1323, file: !1322, line: 28, baseType: !849, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1323, file: !1322, line: 31, baseType: !933, size: 256, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1323, file: !1322, line: 32, baseType: !1329, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1322, line: 32, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1323, file: !1322, line: 37, baseType: !433, size: 16, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1323, file: !1322, line: 40, baseType: !843, size: 192, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1323, file: !1322, line: 41, baseType: !299, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1323, file: !1322, line: 42, baseType: !1335, size: 64, offset: 768)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1338, line: 13, size: 896, elements: !1339)
!1338 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1337, file: !1338, line: 14, baseType: !299, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1337, file: !1338, line: 15, baseType: !441, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1337, file: !1338, line: 17, baseType: !441, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1337, file: !1338, line: 17, baseType: !441, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1337, file: !1338, line: 19, baseType: !426, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1337, file: !1338, line: 21, baseType: !426, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1337, file: !1338, line: 22, baseType: !426, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1337, file: !1338, line: 23, baseType: !426, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1337, file: !1338, line: 24, baseType: !426, size: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1337, file: !1338, line: 25, baseType: !426, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1337, file: !1338, line: 26, baseType: !426, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1337, file: !1338, line: 27, baseType: !426, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1337, file: !1338, line: 28, baseType: !426, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1337, file: !1338, line: 29, baseType: !426, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1323, file: !1322, line: 44, baseType: !325, size: 32, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1323, file: !1322, line: 50, baseType: !1018, size: 16, offset: 864)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1323, file: !1322, line: 51, baseType: !1357, size: 16, offset: 880)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !533, line: 18, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !535, line: 23, baseType: !1359)
!1359 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !892, line: 495, baseType: !441, size: 64, offset: 6528)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1138, file: !892, line: 497, baseType: !1362, size: 64, offset: 6592)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !892, line: 381, size: 384, elements: !1364)
!1364 = !{!1365, !1366, !2521}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1363, file: !892, line: 382, baseType: !325, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1363, file: !892, line: 383, baseType: !1367, size: 128, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !892, line: 376, size: 128, elements: !1368)
!1368 = !{!1369, !2519}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1367, file: !892, line: 377, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1372, line: 640, size: 48640, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1373 = !{!1374, !1380, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1395, !1413, !1424, !1509, !1510, !1511, !1522, !1523, !1525, !1526, !1527, !1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1612, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1683, !1685, !1686, !1687, !1699, !1700, !1701, !1702, !1703, !1704, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1728, !1733, !1915, !1916, !1917, !1918, !1922, !1925, !1928, !1931, !1934, !1960, !2061, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2107, !2108, !2109, !2110, !2111, !2116, !2117, !2118, !2121, !2122, !2125, !2128, !2131, !2134, !2177, !2180, !2181, !2260, !2261, !2264, !2265, !2268, !2269, !2270, !2274, !2275, !2276, !2289, !2290, !2291, !2301, !2306, !2309, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1371, file: !1372, line: 646, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1376, line: 56, size: 128, elements: !1377)
!1376 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !1376, line: 57, baseType: !441, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1375, file: !1376, line: 58, baseType: !532, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1371, file: !1372, line: 649, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !426)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1371, file: !1372, line: 657, baseType: !299, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1371, file: !1372, line: 658, baseType: !321, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1372, line: 660, baseType: !5, size: 32, offset: 288)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1371, file: !1372, line: 661, baseType: !5, size: 32, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1371, file: !1372, line: 684, baseType: !121, size: 32, offset: 352)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1371, file: !1372, line: 686, baseType: !121, size: 32, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1371, file: !1372, line: 687, baseType: !121, size: 32, offset: 416)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1371, file: !1372, line: 688, baseType: !121, size: 32, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1371, file: !1372, line: 689, baseType: !5, size: 32, offset: 480)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1371, file: !1372, line: 691, baseType: !1392, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1372, line: 691, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1371, file: !1372, line: 692, baseType: !1396, size: 832, offset: 576)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1372, line: 451, size: 832, elements: !1397)
!1397 = !{!1398, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1396, file: !1372, line: 453, baseType: !1399, size: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1372, line: 325, size: 128, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1399, file: !1372, line: 326, baseType: !441, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1399, file: !1372, line: 327, baseType: !532, size: 32, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1396, file: !1372, line: 454, baseType: !926, size: 192, align: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1396, file: !1372, line: 455, baseType: !309, size: 128, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1396, file: !1372, line: 456, baseType: !5, size: 32, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1396, file: !1372, line: 458, baseType: !538, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1396, file: !1372, line: 459, baseType: !538, size: 64, offset: 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1396, file: !1372, line: 460, baseType: !538, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1396, file: !1372, line: 461, baseType: !538, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1396, file: !1372, line: 463, baseType: !538, size: 64, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1396, file: !1372, line: 465, baseType: !1412, offset: 832)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1372, line: 415, elements: !364)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1371, file: !1372, line: 693, baseType: !1414, size: 384, offset: 1408)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1372, line: 489, size: 384, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1414, file: !1372, line: 490, baseType: !309, size: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1414, file: !1372, line: 491, baseType: !441, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1414, file: !1372, line: 492, baseType: !441, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1414, file: !1372, line: 493, baseType: !5, size: 32, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1414, file: !1372, line: 494, baseType: !433, size: 16, offset: 288)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1414, file: !1372, line: 495, baseType: !433, size: 16, offset: 304)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1414, file: !1372, line: 497, baseType: !1423, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1371, file: !1372, line: 697, baseType: !1425, size: 1792, offset: 1792)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1372, line: 507, size: 1792, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1506, !1507}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1425, file: !1372, line: 508, baseType: !926, size: 192, align: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1425, file: !1372, line: 515, baseType: !538, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1425, file: !1372, line: 516, baseType: !538, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1425, file: !1372, line: 517, baseType: !538, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1425, file: !1372, line: 518, baseType: !538, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1425, file: !1372, line: 519, baseType: !538, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1425, file: !1372, line: 526, baseType: !853, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1425, file: !1372, line: 527, baseType: !538, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1425, file: !1372, line: 528, baseType: !5, size: 32, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1425, file: !1372, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1425, file: !1372, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1425, file: !1372, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1425, file: !1372, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1425, file: !1372, line: 563, baseType: !1441, size: 512, offset: 704)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1442)
!1442 = !{!1443, !1451, !1452, !1457, !1500, !1503, !1504, !1505}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1441, file: !18, line: 119, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1445, line: 9, size: 256, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1444, file: !1445, line: 10, baseType: !926, size: 192, align: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1444, file: !1445, line: 11, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1450, line: 29, baseType: !853)
!1450 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1441, file: !18, line: 120, baseType: !1449, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1441, file: !18, line: 121, baseType: !1453, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!17, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1441, file: !18, line: 122, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1460)
!1460 = !{!1461, !1481, !1482, !1485, !1490, !1491, !1495, !1499}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1459, file: !18, line: 160, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1463, file: !18, line: 215, baseType: !939)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1463, file: !18, line: 216, baseType: !5, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1463, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1463, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1463, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1463, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1463, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1463, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1463, file: !18, line: 233, baseType: !1449, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1463, file: !18, line: 234, baseType: !1456, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1463, file: !18, line: 235, baseType: !1449, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1463, file: !18, line: 236, baseType: !1456, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1463, file: !18, line: 237, baseType: !1478, size: 4096, offset: 512)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 4096, elements: !1479)
!1479 = !{!1480}
!1480 = !DISubrange(count: 8)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1459, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1459, file: !18, line: 162, baseType: !1483, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !310, line: 27, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !424, line: 96, baseType: !121)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1459, file: !18, line: 163, baseType: !1486, size: 32, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !505, line: 276, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !505, line: 276, size: 32, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1487, file: !505, line: 276, baseType: !509, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1459, file: !18, line: 164, baseType: !1456, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1459, file: !18, line: 165, baseType: !1492, size: 128, offset: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1445, line: 14, size: 128, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1492, file: !1445, line: 15, baseType: !918, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1459, file: !18, line: 166, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1449}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1459, file: !18, line: 167, baseType: !1449, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !18, line: 123, baseType: !1501, size: 8, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !533, line: 17, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !535, line: 21, baseType: !544)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1441, file: !18, line: 124, baseType: !1501, size: 8, offset: 456)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1441, file: !18, line: 125, baseType: !1501, size: 8, offset: 464)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1441, file: !18, line: 126, baseType: !1501, size: 8, offset: 472)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1425, file: !1372, line: 572, baseType: !1441, size: 512, offset: 1216)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1425, file: !1372, line: 580, baseType: !1508, size: 64, offset: 1728)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1371, file: !1372, line: 721, baseType: !5, size: 32, offset: 3584)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1371, file: !1372, line: 722, baseType: !121, size: 32, offset: 3616)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1371, file: !1372, line: 723, baseType: !1512, size: 64, offset: 3648)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1515, line: 17, baseType: !1516)
!1515 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1515, line: 17, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1516, file: !1515, line: 17, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !1520)
!1520 = !{!1521}
!1521 = !DISubrange(count: 1)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1371, file: !1372, line: 724, baseType: !1514, size: 64, offset: 3712)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1371, file: !1372, line: 749, baseType: !1524, offset: 3776)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1372, line: 290, elements: !364)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1371, file: !1372, line: 751, baseType: !309, size: 128, offset: 3776)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1371, file: !1372, line: 757, baseType: !1134, size: 64, offset: 3904)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1371, file: !1372, line: 758, baseType: !1134, size: 64, offset: 3968)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1371, file: !1372, line: 761, baseType: !1529, size: 320, offset: 4032)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1311, line: 34, size: 320, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1529, file: !1311, line: 35, baseType: !538, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1529, file: !1311, line: 36, baseType: !1533, size: 256, offset: 64)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 256, elements: !1315)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1371, file: !1372, line: 766, baseType: !121, size: 32, offset: 4352)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1371, file: !1372, line: 767, baseType: !121, size: 32, offset: 4384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1371, file: !1372, line: 768, baseType: !121, size: 32, offset: 4416)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1371, file: !1372, line: 770, baseType: !121, size: 32, offset: 4448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1371, file: !1372, line: 772, baseType: !441, size: 64, offset: 4480)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1371, file: !1372, line: 775, baseType: !5, size: 32, offset: 4544)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1371, file: !1372, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1371, file: !1372, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1371, file: !1372, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1371, file: !1372, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1371, file: !1372, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1371, file: !1372, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1371, file: !1372, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1371, file: !1372, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1371, file: !1372, line: 831, baseType: !441, size: 64, offset: 4672)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1371, file: !1372, line: 833, baseType: !1550, size: 384, offset: 4736)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1551)
!1551 = !{!1552, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1550, file: !23, line: 26, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!426, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !23, line: 27, baseType: !1558, size: 320, offset: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1550, file: !23, line: 27, size: 320, elements: !1559)
!1559 = !{!1560, !1570, !1597}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1558, file: !23, line: 36, baseType: !1561, size: 320)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !23, line: 29, size: 320, elements: !1562)
!1562 = !{!1563, !1565, !1566, !1567, !1568, !1569}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1561, file: !23, line: 30, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1561, file: !23, line: 31, baseType: !532, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !23, line: 32, baseType: !532, size: 32, offset: 96)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1561, file: !23, line: 33, baseType: !532, size: 32, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1561, file: !23, line: 34, baseType: !538, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1561, file: !23, line: 35, baseType: !1564, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1558, file: !23, line: 46, baseType: !1571, size: 192)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !23, line: 38, size: 192, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1596}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1571, file: !23, line: 39, baseType: !1483, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1571, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !23, line: 41, baseType: !1576, size: 64, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !23, line: 41, size: 64, elements: !1577)
!1577 = !{!1578, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1576, file: !23, line: 42, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1581, line: 7, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1580, file: !1581, line: 8, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !424, line: 93, baseType: !650)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1580, file: !1581, line: 9, baseType: !650, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1576, file: !23, line: 43, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1589, line: 7, size: 64, elements: !1590)
!1589 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1595}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1588, file: !1589, line: 8, baseType: !1592, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1589, line: 5, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !533, line: 20, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !535, line: 26, baseType: !121)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1588, file: !1589, line: 9, baseType: !1593, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1571, file: !23, line: 45, baseType: !538, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1558, file: !23, line: 54, baseType: !1598, size: 256)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !23, line: 48, size: 256, elements: !1599)
!1599 = !{!1600, !1608, !1609, !1610, !1611}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1598, file: !23, line: 49, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1603, line: 36, size: 64, elements: !1604)
!1603 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1602, file: !1603, line: 37, baseType: !121, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1602, file: !1603, line: 38, baseType: !1359, size: 16, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1602, file: !1603, line: 39, baseType: !1359, size: 16, offset: 48)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1598, file: !23, line: 50, baseType: !121, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1598, file: !23, line: 51, baseType: !121, size: 32, offset: 96)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1598, file: !23, line: 52, baseType: !441, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1598, file: !23, line: 53, baseType: !441, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1371, file: !1372, line: 835, baseType: !1613, size: 32, offset: 5120)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !310, line: 22, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !424, line: 28, baseType: !121)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1371, file: !1372, line: 836, baseType: !1613, size: 32, offset: 5152)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1371, file: !1372, line: 840, baseType: !441, size: 64, offset: 5184)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1371, file: !1372, line: 849, baseType: !1370, size: 64, offset: 5248)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1371, file: !1372, line: 852, baseType: !1370, size: 64, offset: 5312)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1371, file: !1372, line: 857, baseType: !309, size: 128, offset: 5376)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1371, file: !1372, line: 858, baseType: !309, size: 128, offset: 5504)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1371, file: !1372, line: 859, baseType: !1370, size: 64, offset: 5632)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1371, file: !1372, line: 867, baseType: !309, size: 128, offset: 5696)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1371, file: !1372, line: 868, baseType: !309, size: 128, offset: 5824)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1371, file: !1372, line: 871, baseType: !1625, size: 64, offset: 5952)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1633, !1634, !1641, !1642}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1626, file: !51, line: 61, baseType: !321, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1626, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1626, file: !51, line: 63, baseType: !350, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1626, file: !51, line: 65, baseType: !1632, size: 256, offset: 64)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 256, elements: !1315)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1626, file: !51, line: 66, baseType: !755, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1626, file: !51, line: 68, baseType: !1635, size: 128, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1636, line: 40, baseType: !1637)
!1636 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1636, line: 36, size: 128, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1637, file: !1636, line: 37, baseType: !350)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1637, file: !1636, line: 38, baseType: !309, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1626, file: !51, line: 69, baseType: !482, size: 128, align: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1626, file: !51, line: 70, baseType: !1643, size: 128, offset: 640)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 128, elements: !1520)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1644, file: !51, line: 55, baseType: !121, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1644, file: !51, line: 56, baseType: !1648, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1650, line: 20, size: 1088, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !{!1652, !1653, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1669, !1672, !1673}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1649, file: !1650, line: 21, baseType: !317, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1649, file: !1650, line: 22, baseType: !1654, size: 192, offset: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1655, line: 19, size: 192, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1654, file: !1655, line: 20, baseType: !908, size: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1654, file: !1655, line: 21, baseType: !5, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1654, file: !1655, line: 22, baseType: !5, size: 32, offset: 160)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1649, file: !1650, line: 23, baseType: !482, size: 128, align: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1649, file: !1650, line: 24, baseType: !5, size: 32, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1649, file: !1650, line: 25, baseType: !1370, size: 64, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1649, file: !1650, line: 26, baseType: !1094, size: 64, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1649, file: !1650, line: 27, baseType: !5, size: 32, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1649, file: !1650, line: 28, baseType: !1648, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1649, file: !1650, line: 32, baseType: !1667, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !553, line: 18, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1649, file: !1650, line: 33, baseType: !1670, size: 64, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1650, line: 33, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1649, file: !1650, line: 34, baseType: !121, size: 32, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1649, file: !1650, line: 35, baseType: !1674, size: 192, offset: 896)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1675, line: 7, size: 192, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1676 = !{!1677, !1678, !1682}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1674, file: !1675, line: 8, baseType: !847, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1674, file: !1675, line: 9, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1675, line: 5, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1674, file: !1675, line: 10, baseType: !5, size: 32, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1371, file: !1372, line: 872, baseType: !1684, size: 512, offset: 6016)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 512, elements: !1315)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1371, file: !1372, line: 873, baseType: !309, size: 128, offset: 6528)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1371, file: !1372, line: 874, baseType: !309, size: 128, offset: 6656)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1371, file: !1372, line: 876, baseType: !1688, size: 64, offset: 6784)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1690, line: 26, size: 192, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1689, file: !1690, line: 27, baseType: !5, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1689, file: !1690, line: 28, baseType: !1694, size: 128, offset: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1695, line: 43, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !1695, line: 44, baseType: !939)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1694, file: !1695, line: 45, baseType: !309, size: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1371, file: !1372, line: 879, baseType: !825, size: 64, offset: 6848)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1371, file: !1372, line: 882, baseType: !825, size: 64, offset: 6912)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1371, file: !1372, line: 884, baseType: !538, size: 64, offset: 6976)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1371, file: !1372, line: 885, baseType: !538, size: 64, offset: 7040)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1371, file: !1372, line: 890, baseType: !538, size: 64, offset: 7104)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1371, file: !1372, line: 891, baseType: !1705, size: 128, offset: 7168)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1372, line: 242, size: 128, elements: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1705, file: !1372, line: 244, baseType: !538, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1705, file: !1372, line: 245, baseType: !538, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !1372, line: 246, baseType: !939, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1371, file: !1372, line: 900, baseType: !441, size: 64, offset: 7296)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1371, file: !1372, line: 901, baseType: !441, size: 64, offset: 7360)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1371, file: !1372, line: 904, baseType: !538, size: 64, offset: 7424)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1371, file: !1372, line: 907, baseType: !538, size: 64, offset: 7488)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1371, file: !1372, line: 910, baseType: !441, size: 64, offset: 7552)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1371, file: !1372, line: 911, baseType: !441, size: 64, offset: 7616)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1371, file: !1372, line: 914, baseType: !1717, size: 640, offset: 7680)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1718, line: 123, size: 640, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1719 = !{!1720, !1726, !1727}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1717, file: !1718, line: 124, baseType: !1721, size: 576)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 576, elements: !392)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1718, line: 108, size: 192, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1722, file: !1718, line: 109, baseType: !538, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1722, file: !1718, line: 110, baseType: !1492, size: 128, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1717, file: !1718, line: 125, baseType: !5, size: 32, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1717, file: !1718, line: 126, baseType: !5, size: 32, offset: 608)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1371, file: !1372, line: 917, baseType: !1729, size: 192, offset: 8320)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1718, line: 134, size: 192, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1729, file: !1718, line: 135, baseType: !482, size: 128, align: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1729, file: !1718, line: 136, baseType: !5, size: 32, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1371, file: !1372, line: 923, baseType: !1734, size: 64, offset: 8512)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1737, line: 111, size: 1280, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1758, !1759, !1760, !1761, !1762, !1763, !1870, !1871, !1872, !1873, !1899, !1900, !1910}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1736, file: !1737, line: 112, baseType: !325, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1736, file: !1737, line: 120, baseType: !552, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1736, file: !1737, line: 121, baseType: !560, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1736, file: !1737, line: 122, baseType: !552, size: 32, offset: 96)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1736, file: !1737, line: 123, baseType: !560, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1736, file: !1737, line: 124, baseType: !552, size: 32, offset: 160)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1736, file: !1737, line: 125, baseType: !560, size: 32, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1736, file: !1737, line: 126, baseType: !552, size: 32, offset: 224)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1736, file: !1737, line: 127, baseType: !560, size: 32, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1736, file: !1737, line: 128, baseType: !5, size: 32, offset: 288)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1736, file: !1737, line: 129, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1751, line: 26, baseType: !1752)
!1751 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1751, line: 24, size: 64, elements: !1753)
!1753 = !{!1754}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1752, file: !1751, line: 25, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 2)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1736, file: !1737, line: 130, baseType: !1750, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1736, file: !1737, line: 131, baseType: !1750, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1736, file: !1737, line: 132, baseType: !1750, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1736, file: !1737, line: 133, baseType: !1750, size: 64, offset: 576)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1736, file: !1737, line: 135, baseType: !544, size: 8, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1736, file: !1737, line: 137, baseType: !1764, size: 64, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1766, line: 189, size: 1664, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1772, !1777, !1778, !1781, !1782, !1787, !1788, !1789, !1790, !1792, !1793, !1794, !1795, !1796, !1834, !1855}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1765, file: !1766, line: 190, baseType: !321, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1765, file: !1766, line: 191, baseType: !1770, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1766, line: 28, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !310, line: 98, baseType: !1593)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1766, line: 192, baseType: !1773, size: 192, offset: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !1766, line: 192, size: 192, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1773, file: !1766, line: 193, baseType: !309, size: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1773, file: !1766, line: 194, baseType: !926, size: 192, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1765, file: !1766, line: 199, baseType: !933, size: 256, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1765, file: !1766, line: 200, baseType: !1779, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1766, line: 200, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1765, file: !1766, line: 201, baseType: !299, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1766, line: 202, baseType: !1783, size: 64, offset: 640)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !1766, line: 202, size: 64, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1783, file: !1766, line: 203, baseType: !656, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1783, file: !1766, line: 204, baseType: !656, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1765, file: !1766, line: 206, baseType: !656, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1765, file: !1766, line: 207, baseType: !552, size: 32, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1765, file: !1766, line: 208, baseType: !560, size: 32, offset: 800)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1765, file: !1766, line: 209, baseType: !1791, size: 32, offset: 832)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1766, line: 31, baseType: !676)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1765, file: !1766, line: 210, baseType: !433, size: 16, offset: 864)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1765, file: !1766, line: 211, baseType: !433, size: 16, offset: 880)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1765, file: !1766, line: 215, baseType: !1359, size: 16, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1765, file: !1766, line: 222, baseType: !441, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1766, line: 239, baseType: !1797, size: 320, offset: 1024)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !1766, line: 239, size: 320, elements: !1798)
!1798 = !{!1799, !1826}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1797, file: !1766, line: 240, baseType: !1800, size: 320)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1766, line: 108, size: 320, elements: !1801)
!1801 = !{!1802, !1803, !1815, !1818, !1825}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1800, file: !1766, line: 110, baseType: !441, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1766, line: 111, baseType: !1804, size: 64, offset: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !1766, line: 111, size: 64, elements: !1805)
!1805 = !{!1806, !1814}
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1766, line: 112, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !1766, line: 112, size: 64, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1807, file: !1766, line: 114, baseType: !1018, size: 16)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1807, file: !1766, line: 115, baseType: !1811, size: 48, offset: 16)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 48, elements: !1812)
!1812 = !{!1813}
!1813 = !DISubrange(count: 6)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1804, file: !1766, line: 121, baseType: !441, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1800, file: !1766, line: 123, baseType: !1816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1766, line: 96, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1800, file: !1766, line: 124, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1766, line: 102, size: 192, elements: !1821)
!1821 = !{!1822, !1823, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1820, file: !1766, line: 103, baseType: !482, size: 128, align: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1820, file: !1766, line: 104, baseType: !321, size: 32, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1820, file: !1766, line: 105, baseType: !607, size: 8, offset: 160)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1800, file: !1766, line: 125, baseType: !338, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !1766, line: 241, baseType: !1827, size: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1797, file: !1766, line: 241, size: 320, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1832, !1833}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1827, file: !1766, line: 242, baseType: !441, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1827, file: !1766, line: 243, baseType: !441, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1827, file: !1766, line: 244, baseType: !1816, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1827, file: !1766, line: 245, baseType: !1819, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1827, file: !1766, line: 246, baseType: !391, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1766, line: 254, baseType: !1835, size: 256, offset: 1344)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !1766, line: 254, size: 256, elements: !1836)
!1836 = !{!1837, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1835, file: !1766, line: 255, baseType: !1838, size: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1766, line: 128, size: 256, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1838, file: !1766, line: 129, baseType: !299, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1838, file: !1766, line: 130, baseType: !1842, size: 256)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !1315)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1766, line: 256, baseType: !1844, size: 256)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1835, file: !1766, line: 256, size: 256, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1844, file: !1766, line: 258, baseType: !309, size: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1844, file: !1766, line: 259, baseType: !1848, size: 128, offset: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1849, line: 22, size: 128, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1848, file: !1849, line: 23, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1849, line: 23, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1848, file: !1849, line: 24, baseType: !441, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1765, file: !1766, line: 274, baseType: !1856, size: 64, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1766, line: 170, size: 192, elements: !1858)
!1858 = !{!1859, !1868, !1869}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1857, file: !1766, line: 171, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1766, line: 165, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!121, !1764, !1864, !1866, !1764}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1857, file: !1766, line: 172, baseType: !1764, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1857, file: !1766, line: 173, baseType: !1816, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1736, file: !1737, line: 138, baseType: !1764, size: 64, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1736, file: !1737, line: 139, baseType: !1764, size: 64, offset: 832)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1736, file: !1737, line: 140, baseType: !1764, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1736, file: !1737, line: 145, baseType: !1874, size: 64, offset: 960)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1876, line: 13, size: 896, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1875, file: !1876, line: 14, baseType: !321, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1875, file: !1876, line: 15, baseType: !325, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1875, file: !1876, line: 16, baseType: !325, size: 32, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1875, file: !1876, line: 21, baseType: !847, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1875, file: !1876, line: 27, baseType: !441, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1875, file: !1876, line: 28, baseType: !441, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1875, file: !1876, line: 29, baseType: !847, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1875, file: !1876, line: 32, baseType: !759, size: 128, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1875, file: !1876, line: 33, baseType: !552, size: 32, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1875, file: !1876, line: 37, baseType: !847, size: 64, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1875, file: !1876, line: 44, baseType: !1889, size: 256, offset: 640)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1890, line: 15, size: 256, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1889, file: !1890, line: 16, baseType: !939)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1889, file: !1890, line: 18, baseType: !121, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1889, file: !1890, line: 19, baseType: !121, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1889, file: !1890, line: 20, baseType: !121, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1889, file: !1890, line: 21, baseType: !121, size: 32, offset: 96)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1889, file: !1890, line: 22, baseType: !441, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1889, file: !1890, line: 23, baseType: !441, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1736, file: !1737, line: 146, baseType: !1667, size: 64, offset: 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1736, file: !1737, line: 147, baseType: !1901, size: 64, offset: 1088)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1737, line: 25, size: 64, elements: !1903)
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1902, file: !1737, line: 26, baseType: !325, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1902, file: !1737, line: 27, baseType: !121, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1902, file: !1737, line: 28, baseType: !1907, offset: 64)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 0)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !1737, line: 149, baseType: !1911, size: 128, offset: 1152)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !1737, line: 149, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1911, file: !1737, line: 150, baseType: !121, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1911, file: !1737, line: 151, baseType: !482, size: 128, align: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1371, file: !1372, line: 926, baseType: !1734, size: 64, offset: 8576)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1371, file: !1372, line: 929, baseType: !1734, size: 64, offset: 8640)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1371, file: !1372, line: 933, baseType: !1764, size: 64, offset: 8704)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1371, file: !1372, line: 943, baseType: !1919, size: 128, offset: 8768)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !1920)
!1920 = !{!1921}
!1921 = !DISubrange(count: 16)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1371, file: !1372, line: 945, baseType: !1923, size: 64, offset: 8896)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1372, line: 49, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1371, file: !1372, line: 956, baseType: !1926, size: 64, offset: 8960)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1372, line: 45, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1371, file: !1372, line: 959, baseType: !1929, size: 64, offset: 9024)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1372, line: 959, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1371, file: !1372, line: 962, baseType: !1932, size: 64, offset: 9088)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1372, line: 66, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1371, file: !1372, line: 966, baseType: !1935, size: 64, offset: 9152)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1937, line: 31, size: 576, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1938 = !{!1939, !1940, !1943, !1946, !1949, !1950, !1953, !1956, !1957}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1936, file: !1937, line: 32, baseType: !325, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1936, file: !1937, line: 33, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1937, line: 9, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1936, file: !1937, line: 34, baseType: !1944, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1937, line: 10, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1936, file: !1937, line: 35, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1937, line: 8, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1936, file: !1937, line: 36, baseType: !1648, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1936, file: !1937, line: 37, baseType: !1951, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1766, line: 34, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1936, file: !1937, line: 38, baseType: !1954, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1937, line: 38, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1936, file: !1937, line: 39, baseType: !1954, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1936, file: !1937, line: 40, baseType: !1958, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1937, line: 12, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1371, file: !1372, line: 969, baseType: !1961, size: 64, offset: 9216)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1963, line: 82, size: 7296, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !2000, !2009, !2010, !2012, !2013, !2014, !2017, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2047, !2048, !2055, !2056, !2057, !2058, !2059, !2060}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1962, file: !1963, line: 83, baseType: !321, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1962, file: !1963, line: 84, baseType: !325, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1962, file: !1963, line: 85, baseType: !121, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1962, file: !1963, line: 86, baseType: !309, size: 128, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1962, file: !1963, line: 88, baseType: !1635, size: 128, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1962, file: !1963, line: 91, baseType: !1370, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1962, file: !1963, line: 94, baseType: !1972, size: 192, offset: 448)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1973, line: 30, size: 192, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1972, file: !1973, line: 31, baseType: !309, size: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1972, file: !1973, line: 32, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1978, line: 25, baseType: !1979)
!1978 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1978, line: 23, size: 64, elements: !1980)
!1980 = !{!1981}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1979, file: !1978, line: 24, baseType: !1519, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1962, file: !1963, line: 97, baseType: !755, size: 64, offset: 640)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1962, file: !1963, line: 100, baseType: !121, size: 32, offset: 704)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1962, file: !1963, line: 106, baseType: !121, size: 32, offset: 736)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1962, file: !1963, line: 107, baseType: !1370, size: 64, offset: 768)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1962, file: !1963, line: 110, baseType: !121, size: 32, offset: 832)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1962, file: !1963, line: 111, baseType: !5, size: 32, offset: 864)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1962, file: !1963, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1962, file: !1963, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1962, file: !1963, line: 128, baseType: !121, size: 32, offset: 928)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1962, file: !1963, line: 129, baseType: !309, size: 128, offset: 960)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1962, file: !1963, line: 132, baseType: !1441, size: 512, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1962, file: !1963, line: 133, baseType: !1449, size: 64, offset: 1600)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1962, file: !1963, line: 140, baseType: !1995, size: 256, offset: 1664)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1996, size: 256, elements: !1756)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1963, line: 38, size: 128, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1996, file: !1963, line: 39, baseType: !538, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1996, file: !1963, line: 40, baseType: !538, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1962, file: !1963, line: 146, baseType: !2001, size: 192, offset: 1920)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1963, line: 66, size: 192, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2001, file: !1963, line: 67, baseType: !2004, size: 192)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1963, line: 47, size: 192, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2004, file: !1963, line: 48, baseType: !849, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2004, file: !1963, line: 49, baseType: !849, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2004, file: !1963, line: 50, baseType: !849, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1962, file: !1963, line: 150, baseType: !1717, size: 640, offset: 2112)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1962, file: !1963, line: 153, baseType: !2011, size: 256, offset: 2752)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 256, elements: !1315)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1962, file: !1963, line: 159, baseType: !1625, size: 64, offset: 3008)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1962, file: !1963, line: 162, baseType: !121, size: 32, offset: 3072)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1962, file: !1963, line: 164, baseType: !2015, size: 64, offset: 3136)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1963, line: 164, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1962, file: !1963, line: 175, baseType: !2018, size: 32, offset: 3200)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !505, line: 805, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 798, size: 32, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2019, file: !505, line: 803, baseType: !504, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !505, line: 804, baseType: !350, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1962, file: !1963, line: 176, baseType: !538, size: 64, offset: 3264)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1962, file: !1963, line: 176, baseType: !538, size: 64, offset: 3328)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1962, file: !1963, line: 176, baseType: !538, size: 64, offset: 3392)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1962, file: !1963, line: 176, baseType: !538, size: 64, offset: 3456)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1962, file: !1963, line: 177, baseType: !538, size: 64, offset: 3520)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1962, file: !1963, line: 178, baseType: !538, size: 64, offset: 3584)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1962, file: !1963, line: 179, baseType: !1705, size: 128, offset: 3648)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1962, file: !1963, line: 180, baseType: !441, size: 64, offset: 3776)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1962, file: !1963, line: 180, baseType: !441, size: 64, offset: 3840)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1962, file: !1963, line: 180, baseType: !441, size: 64, offset: 3904)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1962, file: !1963, line: 180, baseType: !441, size: 64, offset: 3968)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1962, file: !1963, line: 181, baseType: !441, size: 64, offset: 4032)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1962, file: !1963, line: 181, baseType: !441, size: 64, offset: 4096)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1962, file: !1963, line: 181, baseType: !441, size: 64, offset: 4160)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1962, file: !1963, line: 181, baseType: !441, size: 64, offset: 4224)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1962, file: !1963, line: 182, baseType: !441, size: 64, offset: 4288)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1962, file: !1963, line: 182, baseType: !441, size: 64, offset: 4352)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1962, file: !1963, line: 182, baseType: !441, size: 64, offset: 4416)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1962, file: !1963, line: 182, baseType: !441, size: 64, offset: 4480)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1962, file: !1963, line: 183, baseType: !441, size: 64, offset: 4544)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1962, file: !1963, line: 183, baseType: !441, size: 64, offset: 4608)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1962, file: !1963, line: 184, baseType: !2045, offset: 4672)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2046, line: 12, elements: !364)
!2046 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1962, file: !1963, line: 192, baseType: !540, size: 64, offset: 4672)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1962, file: !1963, line: 203, baseType: !2049, size: 2048, offset: 4736)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2050, size: 2048, elements: !1920)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2051, line: 43, size: 128, elements: !2052)
!2051 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2050, file: !2051, line: 44, baseType: !440, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2050, file: !2051, line: 45, baseType: !440, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1962, file: !1963, line: 220, baseType: !607, size: 8, offset: 6784)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1962, file: !1963, line: 221, baseType: !1359, size: 16, offset: 6800)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1962, file: !1963, line: 222, baseType: !1359, size: 16, offset: 6816)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1962, file: !1963, line: 224, baseType: !1134, size: 64, offset: 6848)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1962, file: !1963, line: 227, baseType: !843, size: 192, offset: 6912)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1962, file: !1963, line: 233, baseType: !843, size: 192, offset: 7104)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1371, file: !1372, line: 970, baseType: !2062, size: 64, offset: 9280)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1963, line: 20, size: 16576, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2063, file: !1963, line: 21, baseType: !350)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2063, file: !1963, line: 22, baseType: !321, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2063, file: !1963, line: 23, baseType: !1635, size: 128, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2063, file: !1963, line: 24, baseType: !2069, size: 16384, offset: 192)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 16384, elements: !396)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1973, line: 49, size: 256, elements: !2071)
!2071 = !{!2072}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2070, file: !1973, line: 50, baseType: !2073, size: 256)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1973, line: 35, size: 256, elements: !2074)
!2074 = !{!2075, !2082, !2083, !2089}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2073, file: !1973, line: 37, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2077, line: 19, baseType: !2078)
!2077 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2077, line: 18, baseType: !2080)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !121}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2073, file: !1973, line: 38, baseType: !441, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2073, file: !1973, line: 44, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2077, line: 22, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2077, line: 21, baseType: !2087)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2073, file: !1973, line: 46, baseType: !1977, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1371, file: !1372, line: 971, baseType: !1977, size: 64, offset: 9344)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1371, file: !1372, line: 972, baseType: !1977, size: 64, offset: 9408)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1371, file: !1372, line: 974, baseType: !1977, size: 64, offset: 9472)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1371, file: !1372, line: 975, baseType: !1972, size: 192, offset: 9536)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1371, file: !1372, line: 976, baseType: !441, size: 64, offset: 9728)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1371, file: !1372, line: 977, baseType: !438, size: 64, offset: 9792)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1371, file: !1372, line: 978, baseType: !5, size: 32, offset: 9856)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1371, file: !1372, line: 980, baseType: !485, size: 64, offset: 9920)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1371, file: !1372, line: 989, baseType: !2099, size: 128, offset: 9984)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2100, line: 35, size: 128, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2099, file: !2100, line: 36, baseType: !121, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2099, file: !2100, line: 37, baseType: !325, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2099, file: !2100, line: 38, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2100, line: 23, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1371, file: !1372, line: 992, baseType: !538, size: 64, offset: 10112)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1371, file: !1372, line: 993, baseType: !538, size: 64, offset: 10176)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1371, file: !1372, line: 996, baseType: !350, offset: 10240)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1371, file: !1372, line: 999, baseType: !939, offset: 10240)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1371, file: !1372, line: 1001, baseType: !2112, size: 64, offset: 10240)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1372, line: 636, size: 64, elements: !2113)
!2113 = !{!2114}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2112, file: !1372, line: 637, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1371, file: !1372, line: 1005, baseType: !918, size: 128, offset: 10304)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1371, file: !1372, line: 1007, baseType: !1370, size: 64, offset: 10432)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1371, file: !1372, line: 1009, baseType: !2119, size: 64, offset: 10496)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1372, line: 1009, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1371, file: !1372, line: 1043, baseType: !299, size: 64, offset: 10560)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1371, file: !1372, line: 1046, baseType: !2123, size: 64, offset: 10624)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1372, line: 41, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1371, file: !1372, line: 1050, baseType: !2126, size: 64, offset: 10688)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1372, line: 42, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1371, file: !1372, line: 1054, baseType: !2129, size: 64, offset: 10752)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1372, line: 55, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1371, file: !1372, line: 1056, baseType: !2132, size: 64, offset: 10816)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1372, line: 40, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1371, file: !1372, line: 1058, baseType: !2135, size: 64, offset: 10880)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2137, line: 99, size: 704, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2164, !2165}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2136, file: !2137, line: 100, baseType: !847, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2136, file: !2137, line: 101, baseType: !325, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2136, file: !2137, line: 102, baseType: !325, size: 32, offset: 96)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2136, file: !2137, line: 105, baseType: !350, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2136, file: !2137, line: 107, baseType: !433, size: 16, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2136, file: !2137, line: 109, baseType: !908, size: 128, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2136, file: !2137, line: 110, baseType: !2146, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2137, line: 73, size: 448, elements: !2148)
!2148 = !{!2149, !2152, !2153, !2158, !2163}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2147, file: !2137, line: 74, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2137, line: 74, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2147, file: !2137, line: 75, baseType: !2135, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2137, line: 83, baseType: !2154, size: 128, offset: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2137, line: 83, size: 128, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2154, file: !2137, line: 84, baseType: !309, size: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2154, file: !2137, line: 85, baseType: !1094, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2137, line: 87, baseType: !2159, size: 128, offset: 256)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2137, line: 87, size: 128, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2159, file: !2137, line: 88, baseType: !759, size: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2159, file: !2137, line: 89, baseType: !482, size: 128, align: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2137, line: 92, baseType: !5, size: 32, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2136, file: !2137, line: 111, baseType: !755, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2136, file: !2137, line: 113, baseType: !2166, size: 256, offset: 448)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2167, line: 102, size: 256, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2166, file: !2167, line: 103, baseType: !847, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2166, file: !2167, line: 104, baseType: !309, size: 128, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2166, file: !2167, line: 105, baseType: !2172, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2167, line: 21, baseType: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1371, file: !1372, line: 1061, baseType: !2178, size: 64, offset: 10944)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1372, line: 43, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1371, file: !1372, line: 1064, baseType: !441, size: 64, offset: 11008)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1371, file: !1372, line: 1065, baseType: !2182, size: 64, offset: 11072)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1973, line: 14, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1973, line: 12, size: 384, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !1973, line: 13, baseType: !2187, size: 384)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !1973, line: 13, size: 384, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2187, file: !1973, line: 13, baseType: !121, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2187, file: !1973, line: 13, baseType: !121, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2187, file: !1973, line: 13, baseType: !121, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2187, file: !1973, line: 13, baseType: !2193, size: 256, offset: 128)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2194, line: 32, size: 256, elements: !2195)
!2194 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !{!2196, !2201, !2214, !2220, !2229, !2249, !2254}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2193, file: !2194, line: 37, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 34, size: 64, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2197, file: !2194, line: 35, baseType: !1614, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2197, file: !2194, line: 36, baseType: !558, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2193, file: !2194, line: 45, baseType: !2202, size: 192)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 40, size: 192, elements: !2203)
!2203 = !{!2204, !2206, !2207, !2213}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2202, file: !2194, line: 41, baseType: !2205, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !424, line: 95, baseType: !121)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2202, file: !2194, line: 42, baseType: !121, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2202, file: !2194, line: 43, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2194, line: 11, baseType: !2209)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2194, line: 8, size: 64, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2209, file: !2194, line: 9, baseType: !121, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2209, file: !2194, line: 10, baseType: !299, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2202, file: !2194, line: 44, baseType: !121, size: 32, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2193, file: !2194, line: 52, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 48, size: 128, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2215, file: !2194, line: 49, baseType: !1614, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2215, file: !2194, line: 50, baseType: !558, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2215, file: !2194, line: 51, baseType: !2208, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2193, file: !2194, line: 61, baseType: !2221, size: 256)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 55, size: 256, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2228}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2221, file: !2194, line: 56, baseType: !1614, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2221, file: !2194, line: 57, baseType: !558, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2221, file: !2194, line: 58, baseType: !121, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2221, file: !2194, line: 59, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !424, line: 94, baseType: !425)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2221, file: !2194, line: 60, baseType: !2227, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2193, file: !2194, line: 95, baseType: !2230, size: 256)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 64, size: 256, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2230, file: !2194, line: 65, baseType: !299, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2230, file: !2194, line: 77, baseType: !2234, size: 192, offset: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2230, file: !2194, line: 77, size: 192, elements: !2235)
!2235 = !{!2236, !2237, !2244}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2234, file: !2194, line: 82, baseType: !1359, size: 16)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2234, file: !2194, line: 88, baseType: !2238, size: 192)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2234, file: !2194, line: 84, size: 192, elements: !2239)
!2239 = !{!2240, !2242, !2243}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2238, file: !2194, line: 85, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !1479)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2238, file: !2194, line: 86, baseType: !299, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2238, file: !2194, line: 87, baseType: !299, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2234, file: !2194, line: 93, baseType: !2245, size: 96)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2234, file: !2194, line: 90, size: 96, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2245, file: !2194, line: 91, baseType: !2241, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2245, file: !2194, line: 92, baseType: !534, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2193, file: !2194, line: 101, baseType: !2250, size: 128)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 98, size: 128, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2250, file: !2194, line: 99, baseType: !426, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2250, file: !2194, line: 100, baseType: !121, size: 32, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2193, file: !2194, line: 108, baseType: !2255, size: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2194, line: 104, size: 128, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2255, file: !2194, line: 105, baseType: !299, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2255, file: !2194, line: 106, baseType: !121, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2255, file: !2194, line: 107, baseType: !5, size: 32, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1371, file: !1372, line: 1067, baseType: !2045, offset: 11136)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1371, file: !1372, line: 1099, baseType: !2262, size: 64, offset: 11136)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1372, line: 56, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1371, file: !1372, line: 1103, baseType: !309, size: 128, offset: 11200)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1371, file: !1372, line: 1104, baseType: !2266, size: 64, offset: 11328)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1372, line: 46, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1371, file: !1372, line: 1105, baseType: !843, size: 192, offset: 11392)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1371, file: !1372, line: 1106, baseType: !5, size: 32, offset: 11584)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1371, file: !1372, line: 1109, baseType: !2271, size: 128, offset: 11648)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2272, size: 128, elements: !1756)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1372, line: 51, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1371, file: !1372, line: 1110, baseType: !843, size: 192, offset: 11776)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1371, file: !1372, line: 1111, baseType: !309, size: 128, offset: 11968)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1371, file: !1372, line: 1173, baseType: !2277, size: 64, offset: 12096)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2279, line: 62, size: 256, align: 256, elements: !2280)
!2279 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2288}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2278, file: !2279, line: 75, baseType: !534, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2278, file: !2279, line: 90, baseType: !534, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2278, file: !2279, line: 124, baseType: !2284, size: 64, offset: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2278, file: !2279, line: 109, size: 64, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2284, file: !2279, line: 110, baseType: !539, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2284, file: !2279, line: 112, baseType: !539, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !2279, line: 144, baseType: !534, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1371, file: !1372, line: 1174, baseType: !532, size: 32, offset: 12160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1371, file: !1372, line: 1179, baseType: !441, size: 64, offset: 12224)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1371, file: !1372, line: 1182, baseType: !2292, size: 128, offset: 12288)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1311, line: 76, size: 128, elements: !2293)
!2293 = !{!2294, !2299, !2300}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2292, file: !1311, line: 85, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2296, line: 7, size: 64, elements: !2297)
!2296 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2295, file: !2296, line: 12, baseType: !1516, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2292, file: !1311, line: 88, baseType: !607, size: 8, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2292, file: !1311, line: 95, baseType: !607, size: 8, offset: 72)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1372, line: 1184, baseType: !2302, size: 128, offset: 12416)
!2302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !1372, line: 1184, size: 128, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2302, file: !1372, line: 1185, baseType: !321, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2302, file: !1372, line: 1186, baseType: !482, size: 128, align: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1371, file: !1372, line: 1190, baseType: !2307, size: 64, offset: 12544)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1372, line: 53, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1371, file: !1372, line: 1192, baseType: !2310, size: 128, offset: 12608)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1311, line: 64, size: 128, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2310, file: !1311, line: 65, baseType: !890, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2310, file: !1311, line: 67, baseType: !534, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2310, file: !1311, line: 68, baseType: !534, size: 32, offset: 96)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1371, file: !1372, line: 1206, baseType: !121, size: 32, offset: 12736)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1371, file: !1372, line: 1207, baseType: !121, size: 32, offset: 12768)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1371, file: !1372, line: 1209, baseType: !441, size: 64, offset: 12800)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1371, file: !1372, line: 1219, baseType: !538, size: 64, offset: 12864)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1371, file: !1372, line: 1220, baseType: !538, size: 64, offset: 12928)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1371, file: !1372, line: 1317, baseType: !121, size: 32, offset: 12992)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1371, file: !1372, line: 1319, baseType: !1370, size: 64, offset: 13056)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1371, file: !1372, line: 1322, baseType: !2323, size: 64, offset: 13120)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2325, line: 56, size: 512, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2335}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2324, file: !2325, line: 57, baseType: !2323, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2324, file: !2325, line: 58, baseType: !299, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2324, file: !2325, line: 59, baseType: !441, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !2325, line: 60, baseType: !441, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2324, file: !2325, line: 61, baseType: !979, size: 64, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2324, file: !2325, line: 62, baseType: !5, size: 32, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2324, file: !2325, line: 63, baseType: !2334, size: 64, offset: 384)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !310, line: 153, baseType: !538)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2324, file: !2325, line: 64, baseType: !2336, size: 64, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1371, file: !1372, line: 1326, baseType: !321, size: 32, offset: 13184)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1371, file: !1372, line: 1342, baseType: !299, size: 64, offset: 13248)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1371, file: !1372, line: 1343, baseType: !539, size: 64, offset: 13312)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1371, file: !1372, line: 1344, baseType: !538, size: 64, offset: 13376)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1371, file: !1372, line: 1345, baseType: !539, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1371, file: !1372, line: 1346, baseType: !539, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1371, file: !1372, line: 1347, baseType: !539, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1371, file: !1372, line: 1348, baseType: !482, size: 128, align: 64, offset: 13504)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1371, file: !1372, line: 1358, baseType: !2347, size: 34816, offset: 13824)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2348, line: 485, size: 34816, elements: !2349)
!2348 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2349 = !{!2350, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2379, !2380, !2381, !2382, !2383, !2384, !2387, !2388, !2389}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2347, file: !2348, line: 487, baseType: !2351, size: 192)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2352, size: 192, elements: !392)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2353, line: 16, size: 64, elements: !2354)
!2353 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2352, file: !2353, line: 17, baseType: !1018, size: 16)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2352, file: !2353, line: 18, baseType: !1018, size: 16, offset: 16)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2352, file: !2353, line: 19, baseType: !1018, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2352, file: !2353, line: 19, baseType: !1018, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2352, file: !2353, line: 19, baseType: !1018, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2352, file: !2353, line: 19, baseType: !1018, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2352, file: !2353, line: 19, baseType: !1018, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2352, file: !2353, line: 20, baseType: !1018, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2352, file: !2353, line: 20, baseType: !1018, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2352, file: !2353, line: 20, baseType: !1018, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2352, file: !2353, line: 20, baseType: !1018, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2352, file: !2353, line: 20, baseType: !1018, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2352, file: !2353, line: 20, baseType: !1018, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2347, file: !2348, line: 491, baseType: !441, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2347, file: !2348, line: 495, baseType: !433, size: 16, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2347, file: !2348, line: 496, baseType: !433, size: 16, offset: 272)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2347, file: !2348, line: 497, baseType: !433, size: 16, offset: 288)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2347, file: !2348, line: 498, baseType: !433, size: 16, offset: 304)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2347, file: !2348, line: 502, baseType: !441, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2347, file: !2348, line: 503, baseType: !441, size: 64, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2347, file: !2348, line: 514, baseType: !2376, size: 256, offset: 448)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2377, size: 256, elements: !1315)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2348, line: 483, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2347, file: !2348, line: 516, baseType: !441, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2347, file: !2348, line: 518, baseType: !441, size: 64, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2347, file: !2348, line: 520, baseType: !441, size: 64, offset: 832)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2347, file: !2348, line: 521, baseType: !441, size: 64, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2347, file: !2348, line: 522, baseType: !441, size: 64, offset: 960)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2347, file: !2348, line: 528, baseType: !2385, size: 64, offset: 1024)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2348, line: 10, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2347, file: !2348, line: 535, baseType: !441, size: 64, offset: 1088)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2347, file: !2348, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2347, file: !2348, line: 540, baseType: !2390, size: 33280, offset: 1536)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2391, line: 317, size: 33280, elements: !2392)
!2391 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !{!2393, !2394, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2390, file: !2391, line: 330, baseType: !5, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2390, file: !2391, line: 337, baseType: !441, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2390, file: !2391, line: 348, baseType: !2396, size: 32768, offset: 512)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2391, line: 304, size: 32768, elements: !2397)
!2397 = !{!2398, !2413, !2452, !2502, !2515}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2396, file: !2391, line: 305, baseType: !2399, size: 896)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2391, line: 12, size: 896, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2412}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2399, file: !2391, line: 13, baseType: !532, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2399, file: !2391, line: 14, baseType: !532, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2399, file: !2391, line: 15, baseType: !532, size: 32, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2399, file: !2391, line: 16, baseType: !532, size: 32, offset: 96)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2399, file: !2391, line: 17, baseType: !532, size: 32, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2399, file: !2391, line: 18, baseType: !532, size: 32, offset: 160)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2399, file: !2391, line: 19, baseType: !532, size: 32, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2399, file: !2391, line: 22, baseType: !2409, size: 640, offset: 224)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 640, elements: !2410)
!2410 = !{!2411}
!2411 = !DISubrange(count: 20)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2399, file: !2391, line: 25, baseType: !532, size: 32, offset: 864)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2396, file: !2391, line: 306, baseType: !2414, size: 4096, align: 128)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2391, line: 34, size: 4096, align: 128, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2435, !2436, !2437, !2441, !2443, !2447}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2414, file: !2391, line: 35, baseType: !1018, size: 16)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2414, file: !2391, line: 36, baseType: !1018, size: 16, offset: 16)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2414, file: !2391, line: 37, baseType: !1018, size: 16, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2414, file: !2391, line: 38, baseType: !1018, size: 16, offset: 48)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2414, file: !2391, line: 39, baseType: !2421, size: 128, offset: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2414, file: !2391, line: 39, size: 128, elements: !2422)
!2422 = !{!2423, !2428}
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !2391, line: 40, baseType: !2424, size: 128)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2421, file: !2391, line: 40, size: 128, elements: !2425)
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2424, file: !2391, line: 41, baseType: !538, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2424, file: !2391, line: 42, baseType: !538, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !2391, line: 44, baseType: !2429, size: 128)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2421, file: !2391, line: 44, size: 128, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2434}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2429, file: !2391, line: 45, baseType: !532, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2429, file: !2391, line: 46, baseType: !532, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2429, file: !2391, line: 47, baseType: !532, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2429, file: !2391, line: 48, baseType: !532, size: 32, offset: 96)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2414, file: !2391, line: 51, baseType: !532, size: 32, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2414, file: !2391, line: 52, baseType: !532, size: 32, offset: 224)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2414, file: !2391, line: 55, baseType: !2438, size: 1024, offset: 256)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 1024, elements: !2439)
!2439 = !{!2440}
!2440 = !DISubrange(count: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2414, file: !2391, line: 58, baseType: !2442, size: 2048, offset: 1280)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 2048, elements: !396)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2414, file: !2391, line: 60, baseType: !2444, size: 384, offset: 3328)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 384, elements: !2445)
!2445 = !{!2446}
!2446 = !DISubrange(count: 12)
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2414, file: !2391, line: 62, baseType: !2448, size: 384, offset: 3712)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2414, file: !2391, line: 62, size: 384, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2448, file: !2391, line: 63, baseType: !2444, size: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2448, file: !2391, line: 64, baseType: !2444, size: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2396, file: !2391, line: 307, baseType: !2453, size: 1088)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2391, line: 79, size: 1088, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2501}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2453, file: !2391, line: 80, baseType: !532, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2453, file: !2391, line: 81, baseType: !532, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2453, file: !2391, line: 82, baseType: !532, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2453, file: !2391, line: 83, baseType: !532, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2453, file: !2391, line: 84, baseType: !532, size: 32, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2453, file: !2391, line: 85, baseType: !532, size: 32, offset: 160)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2453, file: !2391, line: 86, baseType: !532, size: 32, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2453, file: !2391, line: 88, baseType: !2409, size: 640, offset: 224)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2453, file: !2391, line: 89, baseType: !1501, size: 8, offset: 864)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2453, file: !2391, line: 90, baseType: !1501, size: 8, offset: 872)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2453, file: !2391, line: 91, baseType: !1501, size: 8, offset: 880)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2453, file: !2391, line: 92, baseType: !1501, size: 8, offset: 888)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2453, file: !2391, line: 93, baseType: !1501, size: 8, offset: 896)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2453, file: !2391, line: 94, baseType: !1501, size: 8, offset: 904)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2453, file: !2391, line: 95, baseType: !2470, size: 64, offset: 960)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2472, line: 11, size: 128, elements: !2473)
!2472 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2471, file: !2472, line: 12, baseType: !426, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2471, file: !2472, line: 13, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2478, line: 56, size: 1344, elements: !2479)
!2478 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2477, file: !2478, line: 61, baseType: !441, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2477, file: !2478, line: 62, baseType: !441, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2477, file: !2478, line: 63, baseType: !441, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2477, file: !2478, line: 64, baseType: !441, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2477, file: !2478, line: 65, baseType: !441, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2477, file: !2478, line: 66, baseType: !441, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2477, file: !2478, line: 68, baseType: !441, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2477, file: !2478, line: 69, baseType: !441, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2477, file: !2478, line: 70, baseType: !441, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2477, file: !2478, line: 71, baseType: !441, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2477, file: !2478, line: 72, baseType: !441, size: 64, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2477, file: !2478, line: 73, baseType: !441, size: 64, offset: 704)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2477, file: !2478, line: 74, baseType: !441, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2477, file: !2478, line: 75, baseType: !441, size: 64, offset: 832)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2477, file: !2478, line: 76, baseType: !441, size: 64, offset: 896)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2477, file: !2478, line: 81, baseType: !441, size: 64, offset: 960)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2477, file: !2478, line: 83, baseType: !441, size: 64, offset: 1024)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2477, file: !2478, line: 84, baseType: !441, size: 64, offset: 1088)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2477, file: !2478, line: 85, baseType: !441, size: 64, offset: 1152)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2477, file: !2478, line: 86, baseType: !441, size: 64, offset: 1216)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2477, file: !2478, line: 87, baseType: !441, size: 64, offset: 1280)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2453, file: !2391, line: 96, baseType: !532, size: 32, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2396, file: !2391, line: 308, baseType: !2503, size: 4608, align: 512)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2391, line: 289, size: 4608, align: 512, elements: !2504)
!2504 = !{!2505, !2506, !2513}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2503, file: !2391, line: 290, baseType: !2414, size: 4096, align: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2503, file: !2391, line: 291, baseType: !2507, size: 512, offset: 4096)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2391, line: 268, size: 512, elements: !2508)
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2507, file: !2391, line: 269, baseType: !538, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2507, file: !2391, line: 270, baseType: !538, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2507, file: !2391, line: 271, baseType: !2512, size: 384, offset: 128)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 384, elements: !1812)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2503, file: !2391, line: 292, baseType: !2514, offset: 4608)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, elements: !1908)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2396, file: !2391, line: 309, baseType: !2516, size: 32768)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 32768, elements: !2517)
!2517 = !{!2518}
!2518 = !DISubrange(count: 4096)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1367, file: !892, line: 378, baseType: !2520, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1363, file: !892, line: 384, baseType: !1689, size: 192, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1138, file: !892, line: 500, baseType: !350, offset: 6656)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1138, file: !892, line: 501, baseType: !2524, size: 64, offset: 6656)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !892, line: 387, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1138, file: !892, line: 516, baseType: !1667, size: 64, offset: 6720)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1138, file: !892, line: 519, baseType: !469, size: 64, offset: 6784)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1138, file: !892, line: 521, baseType: !2529, size: 64, offset: 6848)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !892, line: 521, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1138, file: !892, line: 545, baseType: !325, size: 32, offset: 6912)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1138, file: !892, line: 548, baseType: !607, size: 8, offset: 6944)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1138, file: !892, line: 550, baseType: !2534, offset: 6952)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2535, line: 142, elements: !364)
!2535 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1138, file: !892, line: 554, baseType: !2166, size: 256, offset: 6976)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1138, file: !892, line: 557, baseType: !532, size: 32, offset: 7232)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1135, file: !892, line: 565, baseType: !2539, offset: 7296)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, elements: !2540)
!2540 = !{!2541}
!2541 = !DISubrange(count: -1)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1131, file: !892, line: 151, baseType: !325, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1123, file: !892, line: 156, baseType: !350, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !892, line: 159, baseType: !2545, size: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !892, line: 159, size: 128, elements: !2546)
!2546 = !{!2547, !2611}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2545, file: !892, line: 161, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2550)
!2550 = !{!2551, !2561, !2582, !2583, !2584, !2585, !2586, !2598, !2599, !2600}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2549, file: !29, line: 111, baseType: !2552, size: 384)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2553)
!2553 = !{!2554, !2556, !2557, !2558, !2559, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2552, file: !29, line: 20, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2552, file: !29, line: 21, baseType: !2555, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2552, file: !29, line: 22, baseType: !2555, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2552, file: !29, line: 23, baseType: !441, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2552, file: !29, line: 24, baseType: !441, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2552, file: !29, line: 25, baseType: !441, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2549, file: !29, line: 112, baseType: !2562, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2564, line: 105, size: 128, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2563, file: !2564, line: 110, baseType: !441, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2563, file: !2564, line: 118, baseType: !2568, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2564, line: 95, size: 448, elements: !2570)
!2570 = !{!2571, !2572, !2577, !2578, !2579, !2580, !2581}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2569, file: !2564, line: 96, baseType: !847, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2569, file: !2564, line: 97, baseType: !2573, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2564, line: 60, baseType: !2575)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2562}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2569, file: !2564, line: 98, baseType: !2573, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2569, file: !2564, line: 99, baseType: !607, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2569, file: !2564, line: 100, baseType: !607, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2569, file: !2564, line: 101, baseType: !482, size: 128, align: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2569, file: !2564, line: 102, baseType: !2562, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2549, file: !29, line: 113, baseType: !2563, size: 128, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2549, file: !29, line: 114, baseType: !1689, size: 192, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2549, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2549, file: !29, line: 117, baseType: !2587, size: 64, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2589)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2590)
!2590 = !{!2591, !2592, !2596, !2597}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2589, file: !29, line: 73, baseType: !999, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2589, file: !29, line: 78, baseType: !2593, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2548}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2589, file: !29, line: 83, baseType: !2593, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2589, file: !29, line: 89, baseType: !1187, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2549, file: !29, line: 118, baseType: !299, size: 64, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2549, file: !29, line: 119, baseType: !121, size: 32, offset: 960)
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !29, line: 120, baseType: !2601, size: 128, offset: 1024)
!2601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2549, file: !29, line: 120, size: 128, elements: !2602)
!2602 = !{!2603, !2609}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2601, file: !29, line: 121, baseType: !2604, size: 128)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2605, line: 6, size: 128, elements: !2606)
!2605 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2604, file: !2605, line: 7, baseType: !538, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2604, file: !2605, line: 8, baseType: !538, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2601, file: !29, line: 122, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, elements: !1908)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2545, file: !892, line: 162, baseType: !299, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !896, file: !892, line: 176, baseType: !482, size: 128, align: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !892, line: 179, baseType: !2614, size: 32, offset: 384)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !892, line: 179, size: 32, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2614, file: !892, line: 184, baseType: !325, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2614, file: !892, line: 192, baseType: !5, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2614, file: !892, line: 194, baseType: !5, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2614, file: !892, line: 195, baseType: !121, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !891, file: !892, line: 199, baseType: !325, size: 32, offset: 416)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !777, file: !42, line: 1964, baseType: !2622, size: 64, offset: 1344)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!426, !716, !2625}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2627, line: 12, size: 256, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2628 = !{!2629, !2630, !2631, !2632, !2633}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2626, file: !2627, line: 13, baseType: !913, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2626, file: !2627, line: 16, baseType: !121, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2626, file: !2627, line: 23, baseType: !441, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2626, file: !2627, line: 30, baseType: !441, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2626, file: !2627, line: 33, baseType: !2634, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !892, line: 27, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !777, file: !42, line: 1966, baseType: !2622, size: 64, offset: 1408)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !717, file: !42, line: 1424, baseType: !2638, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2641)
!2641 = !{!2642, !2688, !2692, !2696, !2697, !2698, !2699, !2700, !2705, !2710, !2714}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2640, file: !36, line: 323, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!121, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2673, !2674, !2675}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2647, file: !36, line: 295, baseType: !759, size: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2647, file: !36, line: 296, baseType: !309, size: 128, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2647, file: !36, line: 297, baseType: !309, size: 128, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2647, file: !36, line: 298, baseType: !309, size: 128, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2647, file: !36, line: 299, baseType: !843, size: 192, offset: 512)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2647, file: !36, line: 300, baseType: !350, offset: 704)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2647, file: !36, line: 301, baseType: !325, size: 32, offset: 704)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2647, file: !36, line: 302, baseType: !716, size: 64, offset: 768)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2647, file: !36, line: 303, baseType: !2658, size: 64, offset: 832)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2659)
!2659 = !{!2660, !2672}
!2660 = !DIDerivedType(tag: DW_TAG_member, scope: !2658, file: !36, line: 69, baseType: !2661, size: 32)
!2661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2658, file: !36, line: 69, size: 32, elements: !2662)
!2662 = !{!2663, !2664, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2661, file: !36, line: 70, baseType: !552, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2661, file: !36, line: 71, baseType: !560, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2661, file: !36, line: 72, baseType: !2666, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2667, line: 24, baseType: !2668)
!2667 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2667, line: 22, size: 32, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2668, file: !2667, line: 23, baseType: !2671, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2667, line: 20, baseType: !558)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2658, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2647, file: !36, line: 304, baseType: !648, size: 64, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2647, file: !36, line: 305, baseType: !441, size: 64, offset: 960)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2647, file: !36, line: 306, baseType: !2676, size: 576, offset: 1024)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2677)
!2677 = !{!2678, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2676, file: !36, line: 206, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !650)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2676, file: !36, line: 207, baseType: !2679, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2676, file: !36, line: 208, baseType: !2679, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2676, file: !36, line: 209, baseType: !2679, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2676, file: !36, line: 210, baseType: !2679, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2676, file: !36, line: 211, baseType: !2679, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2676, file: !36, line: 212, baseType: !2679, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2676, file: !36, line: 213, baseType: !656, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2676, file: !36, line: 214, baseType: !656, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2640, file: !36, line: 324, baseType: !2689, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2646, !716, !121}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2640, file: !36, line: 325, baseType: !2693, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2646}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2640, file: !36, line: 326, baseType: !2643, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2640, file: !36, line: 327, baseType: !2643, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2640, file: !36, line: 328, baseType: !2643, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2640, file: !36, line: 329, baseType: !805, size: 64, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2640, file: !36, line: 332, baseType: !2701, size: 64, offset: 448)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!2704, !546}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2640, file: !36, line: 333, baseType: !2706, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!121, !546, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2640, file: !36, line: 335, baseType: !2711, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!121, !546, !2704}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2640, file: !36, line: 337, baseType: !2715, size: 64, offset: 640)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!121, !716, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !717, file: !42, line: 1425, baseType: !2720, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2723)
!2723 = !{!2724, !2728, !2729, !2733, !2734, !2735, !2750, !2773, !2777, !2778, !2801}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2722, file: !36, line: 429, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!121, !716, !121, !121, !666}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2722, file: !36, line: 430, baseType: !805, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2722, file: !36, line: 431, baseType: !2730, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!121, !716, !5}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2722, file: !36, line: 432, baseType: !2730, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2722, file: !36, line: 433, baseType: !805, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2722, file: !36, line: 434, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!121, !716, !121, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2740, file: !36, line: 416, baseType: !121, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2740, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2740, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2740, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2740, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2740, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2740, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2740, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2722, file: !36, line: 435, baseType: !2751, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!121, !716, !2658, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2755, file: !36, line: 344, baseType: !121, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2755, file: !36, line: 345, baseType: !538, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2755, file: !36, line: 346, baseType: !538, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2755, file: !36, line: 347, baseType: !538, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2755, file: !36, line: 348, baseType: !538, size: 64, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2755, file: !36, line: 349, baseType: !538, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2755, file: !36, line: 350, baseType: !538, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2755, file: !36, line: 351, baseType: !853, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2755, file: !36, line: 353, baseType: !853, size: 64, offset: 512)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2755, file: !36, line: 354, baseType: !121, size: 32, offset: 576)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2755, file: !36, line: 355, baseType: !121, size: 32, offset: 608)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2755, file: !36, line: 356, baseType: !538, size: 64, offset: 640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2755, file: !36, line: 357, baseType: !538, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2755, file: !36, line: 358, baseType: !538, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2755, file: !36, line: 359, baseType: !853, size: 64, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2755, file: !36, line: 360, baseType: !121, size: 32, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2722, file: !36, line: 436, baseType: !2774, size: 64, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!121, !716, !2718, !2754}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2722, file: !36, line: 438, baseType: !2751, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2722, file: !36, line: 439, baseType: !2779, size: 64, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!121, !716, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2783, file: !36, line: 410, baseType: !5, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2783, file: !36, line: 411, baseType: !2787, size: 1344, offset: 64)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2788, size: 1344, elements: !392)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2800}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2788, file: !36, line: 396, baseType: !5, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2788, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2788, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2788, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2788, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2788, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2788, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2788, file: !36, line: 404, baseType: !540, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2788, file: !36, line: 405, baseType: !2799, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !310, line: 126, baseType: !538)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2788, file: !36, line: 406, baseType: !2799, size: 64, offset: 384)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2722, file: !36, line: 440, baseType: !2730, size: 64, offset: 640)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !717, file: !42, line: 1426, baseType: !2803, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2805)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !717, file: !42, line: 1427, baseType: !441, size: 64, offset: 640)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !717, file: !42, line: 1428, baseType: !441, size: 64, offset: 704)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !717, file: !42, line: 1429, baseType: !441, size: 64, offset: 768)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !717, file: !42, line: 1430, baseType: !499, size: 64, offset: 832)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !717, file: !42, line: 1431, baseType: !933, size: 256, offset: 896)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !717, file: !42, line: 1432, baseType: !121, size: 32, offset: 1152)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !717, file: !42, line: 1433, baseType: !325, size: 32, offset: 1184)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !717, file: !42, line: 1437, baseType: !2814, size: 64, offset: 1216)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !717, file: !42, line: 1449, baseType: !2819, size: 64, offset: 1280)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !515, line: 34, size: 64, elements: !2820)
!2820 = !{!2821}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2819, file: !515, line: 35, baseType: !518, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !717, file: !42, line: 1450, baseType: !309, size: 128, offset: 1344)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !717, file: !42, line: 1451, baseType: !2824, size: 64, offset: 1472)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !717, file: !42, line: 1452, baseType: !2132, size: 64, offset: 1536)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !717, file: !42, line: 1453, baseType: !2828, size: 64, offset: 1600)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !717, file: !42, line: 1454, baseType: !759, size: 128, offset: 1664)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !717, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !717, file: !42, line: 1456, baseType: !2833, size: 2432, offset: 1856)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2839, !2871}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2833, file: !36, line: 519, baseType: !5, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2833, file: !36, line: 520, baseType: !933, size: 256, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2833, file: !36, line: 521, baseType: !2838, size: 192, offset: 320)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 192, elements: !392)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2833, file: !36, line: 522, baseType: !2840, size: 1728, offset: 512)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2841, size: 1728, elements: !392)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2842)
!2842 = !{!2843, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2841, file: !36, line: 223, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2846)
!2846 = !{!2847, !2848, !2861, !2862}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2845, file: !36, line: 444, baseType: !121, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2845, file: !36, line: 445, baseType: !2849, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2851, file: !36, line: 311, baseType: !805, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2851, file: !36, line: 312, baseType: !805, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2851, file: !36, line: 313, baseType: !805, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2851, file: !36, line: 314, baseType: !805, size: 64, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2851, file: !36, line: 315, baseType: !2643, size: 64, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2851, file: !36, line: 316, baseType: !2643, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2851, file: !36, line: 317, baseType: !2643, size: 64, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2851, file: !36, line: 318, baseType: !2715, size: 64, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2845, file: !36, line: 446, baseType: !750, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2845, file: !36, line: 447, baseType: !2844, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2841, file: !36, line: 224, baseType: !121, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2841, file: !36, line: 226, baseType: !309, size: 128, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2841, file: !36, line: 227, baseType: !441, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2841, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2841, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2841, file: !36, line: 230, baseType: !2679, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2841, file: !36, line: 231, baseType: !2679, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2841, file: !36, line: 232, baseType: !299, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2833, file: !36, line: 523, baseType: !2872, size: 192, offset: 2240)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2849, size: 192, elements: !392)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !717, file: !42, line: 1458, baseType: !2874, size: 2112, offset: 4288)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2875)
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2874, file: !42, line: 1411, baseType: !121, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2874, file: !42, line: 1412, baseType: !1635, size: 128, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2874, file: !42, line: 1413, baseType: !2879, size: 1920, offset: 192)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2880, size: 1920, elements: !392)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2881, line: 12, size: 640, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !{!2883, !2891, !2893, !2898, !2899}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2880, file: !2881, line: 13, baseType: !2884, size: 320)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2885, line: 17, size: 320, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2886 = !{!2887, !2888, !2889, !2890}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2884, file: !2885, line: 18, baseType: !121, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2884, file: !2885, line: 19, baseType: !121, size: 32, offset: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2884, file: !2885, line: 20, baseType: !1635, size: 128, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2884, file: !2885, line: 22, baseType: !482, size: 128, align: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2880, file: !2881, line: 14, baseType: !2892, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2880, file: !2881, line: 15, baseType: !2894, size: 64, offset: 384)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2895, line: 16, size: 64, elements: !2896)
!2895 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2894, file: !2895, line: 17, baseType: !1370, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2880, file: !2881, line: 16, baseType: !1635, size: 128, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2880, file: !2881, line: 17, baseType: !325, size: 32, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !717, file: !42, line: 1465, baseType: !299, size: 64, offset: 6400)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !717, file: !42, line: 1468, baseType: !532, size: 32, offset: 6464)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !717, file: !42, line: 1470, baseType: !656, size: 64, offset: 6528)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !717, file: !42, line: 1471, baseType: !656, size: 64, offset: 6592)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !717, file: !42, line: 1473, baseType: !534, size: 32, offset: 6656)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !717, file: !42, line: 1474, baseType: !2906, size: 64, offset: 6720)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !717, file: !42, line: 1477, baseType: !2909, size: 256, offset: 6784)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !2439)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !717, file: !42, line: 1478, baseType: !2911, size: 128, offset: 7040)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2912, line: 18, baseType: !2913)
!2912 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2912, line: 16, size: 128, elements: !2914)
!2914 = !{!2915}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2913, file: !2912, line: 17, baseType: !2916, size: 128)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 128, elements: !1920)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !717, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !717, file: !42, line: 1481, baseType: !2919, size: 32, offset: 7200)
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !310, line: 150, baseType: !5)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !717, file: !42, line: 1487, baseType: !843, size: 192, offset: 7232)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !717, file: !42, line: 1493, baseType: !338, size: 64, offset: 7424)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !717, file: !42, line: 1495, baseType: !2923, size: 64, offset: 7488)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2925)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !497, line: 135, size: 1024, align: 512, elements: !2926)
!2926 = !{!2927, !2931, !2932, !2939, !2945, !2949, !2953, !2957, !2958, !2962, !2966, !2971, !2975}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2925, file: !497, line: 136, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!121, !499, !5}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2925, file: !497, line: 137, baseType: !2928, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2925, file: !497, line: 138, baseType: !2933, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!121, !2936, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2925, file: !497, line: 139, baseType: !2940, size: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!121, !2936, !5, !338, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2925, file: !497, line: 141, baseType: !2946, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!121, !2936}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2925, file: !497, line: 142, baseType: !2950, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!121, !499}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2925, file: !497, line: 143, baseType: !2954, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !499}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2925, file: !497, line: 144, baseType: !2954, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2925, file: !497, line: 145, baseType: !2959, size: 64, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !499, !546}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2925, file: !497, line: 146, baseType: !2963, size: 64, offset: 576)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!391, !499, !391, !121}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2925, file: !497, line: 147, baseType: !2967, size: 64, offset: 640)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!495, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2925, file: !497, line: 148, baseType: !2972, size: 64, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!121, !666, !607}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2925, file: !497, line: 149, baseType: !2976, size: 64, offset: 768)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!499, !499, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !717, file: !42, line: 1500, baseType: !121, size: 32, offset: 7552)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !717, file: !42, line: 1502, baseType: !2983, size: 448, offset: 7616)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2627, line: 60, size: 448, elements: !2984)
!2984 = !{!2985, !2990, !2991, !2992, !2993, !2994, !2995}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2983, file: !2627, line: 61, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!441, !2989, !2625}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2983, file: !2627, line: 63, baseType: !2986, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2983, file: !2627, line: 66, baseType: !426, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2983, file: !2627, line: 67, baseType: !121, size: 32, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2983, file: !2627, line: 68, baseType: !5, size: 32, offset: 224)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2983, file: !2627, line: 71, baseType: !309, size: 128, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2983, file: !2627, line: 77, baseType: !2996, size: 64, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !717, file: !42, line: 1505, baseType: !847, size: 64, offset: 8064)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !717, file: !42, line: 1508, baseType: !847, size: 64, offset: 8128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !717, file: !42, line: 1511, baseType: !121, size: 32, offset: 8192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !717, file: !42, line: 1514, baseType: !1068, size: 32, offset: 8224)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !717, file: !42, line: 1517, baseType: !3002, size: 64, offset: 8256)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2167, line: 18, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !717, file: !42, line: 1518, baseType: !755, size: 64, offset: 8320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !717, file: !42, line: 1525, baseType: !1667, size: 64, offset: 8384)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !717, file: !42, line: 1532, baseType: !3007, size: 64, offset: 8448)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3008, line: 52, size: 64, elements: !3009)
!3008 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3007, file: !3008, line: 53, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3008, line: 40, size: 256, elements: !3013)
!3013 = !{!3014, !3015, !3020}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3012, file: !3008, line: 42, baseType: !350)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3012, file: !3008, line: 44, baseType: !3016, size: 192)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3008, line: 28, size: 192, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3016, file: !3008, line: 29, baseType: !309, size: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3016, file: !3008, line: 31, baseType: !426, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3012, file: !3008, line: 49, baseType: !426, size: 64, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !717, file: !42, line: 1533, baseType: !3007, size: 64, offset: 8512)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !717, file: !42, line: 1534, baseType: !482, size: 128, align: 64, offset: 8576)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !717, file: !42, line: 1535, baseType: !2166, size: 256, offset: 8704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !717, file: !42, line: 1537, baseType: !843, size: 192, offset: 8960)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !717, file: !42, line: 1542, baseType: !121, size: 32, offset: 9152)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !717, file: !42, line: 1545, baseType: !350, offset: 9184)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !717, file: !42, line: 1546, baseType: !309, size: 128, offset: 9216)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !717, file: !42, line: 1548, baseType: !350, offset: 9344)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !717, file: !42, line: 1549, baseType: !309, size: 128, offset: 9344)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !547, file: !42, line: 624, baseType: !903, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !547, file: !42, line: 631, baseType: !441, size: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !42, line: 639, baseType: !3033, size: 32, offset: 384)
!3033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !42, line: 639, size: 32, elements: !3034)
!3034 = !{!3035, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3033, file: !42, line: 640, baseType: !3036, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3033, file: !42, line: 641, baseType: !5, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !547, file: !42, line: 643, baseType: !630, size: 32, offset: 416)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !547, file: !42, line: 644, baseType: !648, size: 64, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !547, file: !42, line: 645, baseType: !652, size: 128, offset: 512)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !547, file: !42, line: 646, baseType: !652, size: 128, offset: 640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !547, file: !42, line: 647, baseType: !652, size: 128, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !547, file: !42, line: 648, baseType: !350, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !547, file: !42, line: 649, baseType: !433, size: 16, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !547, file: !42, line: 650, baseType: !1501, size: 8, offset: 912)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !547, file: !42, line: 651, baseType: !1501, size: 8, offset: 920)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !547, file: !42, line: 652, baseType: !2799, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !547, file: !42, line: 659, baseType: !441, size: 64, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !547, file: !42, line: 660, baseType: !933, size: 256, offset: 1088)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !547, file: !42, line: 662, baseType: !441, size: 64, offset: 1344)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !547, file: !42, line: 663, baseType: !441, size: 64, offset: 1408)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !547, file: !42, line: 665, baseType: !759, size: 128, offset: 1472)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !547, file: !42, line: 666, baseType: !309, size: 128, offset: 1600)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !547, file: !42, line: 675, baseType: !309, size: 128, offset: 1728)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !547, file: !42, line: 676, baseType: !309, size: 128, offset: 1856)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !547, file: !42, line: 677, baseType: !309, size: 128, offset: 1984)
!3057 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !42, line: 678, baseType: !3058, size: 128, offset: 2112)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !42, line: 678, size: 128, elements: !3059)
!3059 = !{!3060, !3061}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3058, file: !42, line: 679, baseType: !755, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3058, file: !42, line: 680, baseType: !482, size: 128, align: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !547, file: !42, line: 682, baseType: !849, size: 64, offset: 2240)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !547, file: !42, line: 683, baseType: !849, size: 64, offset: 2304)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !547, file: !42, line: 684, baseType: !325, size: 32, offset: 2368)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !547, file: !42, line: 685, baseType: !325, size: 32, offset: 2400)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !547, file: !42, line: 686, baseType: !325, size: 32, offset: 2432)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !547, file: !42, line: 688, baseType: !325, size: 32, offset: 2464)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !42, line: 690, baseType: !3069, size: 64, offset: 2496)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !42, line: 690, size: 64, elements: !3070)
!3070 = !{!3071, !3302}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3069, file: !42, line: 691, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !3075)
!3075 = !{!3076, !3077, !3081, !3085, !3089, !3090, !3091, !3095, !3108, !3109, !3126, !3130, !3131, !3135, !3136, !3140, !3145, !3146, !3150, !3154, !3262, !3266, !3267, !3271, !3272, !3276, !3280, !3285, !3289, !3293, !3297, !3301}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3074, file: !42, line: 1823, baseType: !750, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3074, file: !42, line: 1824, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!648, !469, !648, !121}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3074, file: !42, line: 1825, baseType: !3082, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!422, !469, !391, !438, !865}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3074, file: !42, line: 1826, baseType: !3086, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!422, !469, !338, !438, !865}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3074, file: !42, line: 1827, baseType: !1003, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3074, file: !42, line: 1828, baseType: !1003, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3074, file: !42, line: 1829, baseType: !3092, size: 64, offset: 384)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!121, !1006, !607}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3074, file: !42, line: 1830, baseType: !3096, size: 64, offset: 448)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!121, !469, !3099}
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !3101)
!3101 = !{!3102, !3107}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3100, file: !42, line: 1777, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !3104)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!121, !3099, !338, !121, !648, !538, !5}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3100, file: !42, line: 1778, baseType: !648, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3074, file: !42, line: 1831, baseType: !3096, size: 64, offset: 512)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3074, file: !42, line: 1832, baseType: !3110, size: 64, offset: 576)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!3113, !469, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3114, line: 52, baseType: !5)
!3114 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3117, line: 43, size: 128, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3118 = !{!3119, !3125}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3116, file: !3117, line: 44, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3117, line: 37, baseType: !3121)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !469, !3124, !3115}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3116, file: !3117, line: 45, baseType: !3113, size: 32, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3074, file: !42, line: 1833, baseType: !3127, size: 64, offset: 640)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!426, !469, !5, !441}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3074, file: !42, line: 1834, baseType: !3127, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3074, file: !42, line: 1835, baseType: !3132, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!121, !469, !1141}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3074, file: !42, line: 1836, baseType: !441, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3074, file: !42, line: 1837, baseType: !3137, size: 64, offset: 896)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!121, !546, !469}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3074, file: !42, line: 1838, baseType: !3141, size: 64, offset: 960)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!121, !469, !3144}
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !299)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3074, file: !42, line: 1839, baseType: !3137, size: 64, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3074, file: !42, line: 1840, baseType: !3147, size: 64, offset: 1088)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!121, !469, !648, !648, !121}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3074, file: !42, line: 1841, baseType: !3151, size: 64, offset: 1152)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!121, !121, !469, !121}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3074, file: !42, line: 1842, baseType: !3155, size: 64, offset: 1216)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!121, !469, !121, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3192, !3193, !3194, !3207, !3238}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3159, file: !42, line: 1063, baseType: !3158, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3159, file: !42, line: 1064, baseType: !309, size: 128, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3159, file: !42, line: 1065, baseType: !759, size: 128, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3159, file: !42, line: 1066, baseType: !309, size: 128, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3159, file: !42, line: 1069, baseType: !309, size: 128, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3159, file: !42, line: 1072, baseType: !3144, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3159, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3159, file: !42, line: 1074, baseType: !544, size: 8, offset: 672)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3159, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3159, file: !42, line: 1076, baseType: !121, size: 32, offset: 736)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3159, file: !42, line: 1077, baseType: !1635, size: 128, offset: 768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3159, file: !42, line: 1078, baseType: !469, size: 64, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3159, file: !42, line: 1079, baseType: !648, size: 64, offset: 960)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3159, file: !42, line: 1080, baseType: !648, size: 64, offset: 1024)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3159, file: !42, line: 1082, baseType: !3176, size: 64, offset: 1088)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !3178)
!3178 = !{!3179, !3187, !3188, !3189, !3190, !3191}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3177, file: !42, line: 1315, baseType: !3180)
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3181, line: 20, baseType: !3182)
!3181 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3181, line: 11, elements: !3183)
!3183 = !{!3184}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3182, file: !3181, line: 12, baseType: !3185)
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !362, line: 33, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 31, elements: !364)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3177, file: !42, line: 1316, baseType: !121, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3177, file: !42, line: 1317, baseType: !121, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3177, file: !42, line: 1318, baseType: !3176, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3177, file: !42, line: 1319, baseType: !469, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3177, file: !42, line: 1320, baseType: !482, size: 128, align: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3159, file: !42, line: 1084, baseType: !441, size: 64, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3159, file: !42, line: 1085, baseType: !441, size: 64, offset: 1216)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3159, file: !42, line: 1087, baseType: !3195, size: 64, offset: 1280)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3198)
!3198 = !{!3199, !3203}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3197, file: !42, line: 1012, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3158, !3158}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3197, file: !42, line: 1013, baseType: !3204, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !3158}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3159, file: !42, line: 1088, baseType: !3208, size: 64, offset: 1344)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3211)
!3211 = !{!3212, !3216, !3220, !3221, !3225, !3229, !3233, !3237}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3210, file: !42, line: 1017, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!3144, !3144}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3210, file: !42, line: 1018, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !3144}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3210, file: !42, line: 1019, baseType: !3204, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3210, file: !42, line: 1020, baseType: !3222, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!121, !3158, !121}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3210, file: !42, line: 1021, baseType: !3226, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!607, !3158}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3210, file: !42, line: 1022, baseType: !3230, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!121, !3158, !121, !313}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3210, file: !42, line: 1023, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3158, !980}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3210, file: !42, line: 1024, baseType: !3226, size: 64, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3159, file: !42, line: 1097, baseType: !3239, size: 256, offset: 1408)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3159, file: !42, line: 1089, size: 256, elements: !3240)
!3240 = !{!3241, !3250, !3256}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3239, file: !42, line: 1090, baseType: !3242, size: 256)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3243, line: 10, size: 256, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3244 = !{!3245, !3246, !3249}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3242, file: !3243, line: 11, baseType: !532, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3242, file: !3243, line: 12, baseType: !3247, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3243, line: 5, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3242, file: !3243, line: 13, baseType: !309, size: 128, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3239, file: !42, line: 1091, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3243, line: 17, size: 64, elements: !3252)
!3252 = !{!3253}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3251, file: !3243, line: 18, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3243, line: 16, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3239, file: !42, line: 1096, baseType: !3257, size: 192)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3239, file: !42, line: 1092, size: 192, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3257, file: !42, line: 1093, baseType: !309, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3257, file: !42, line: 1094, baseType: !121, size: 32, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3257, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3074, file: !42, line: 1843, baseType: !3263, size: 64, offset: 1280)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!422, !469, !890, !121, !438, !865, !121}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3074, file: !42, line: 1844, baseType: !1261, size: 64, offset: 1344)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3074, file: !42, line: 1845, baseType: !3268, size: 64, offset: 1408)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!121, !121}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3074, file: !42, line: 1846, baseType: !3155, size: 64, offset: 1472)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3074, file: !42, line: 1847, baseType: !3273, size: 64, offset: 1536)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!422, !2307, !469, !865, !438, !5}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3074, file: !42, line: 1848, baseType: !3277, size: 64, offset: 1600)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!422, !469, !865, !2307, !438, !5}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3074, file: !42, line: 1849, baseType: !3281, size: 64, offset: 1664)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!121, !469, !426, !3284, !980}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3074, file: !42, line: 1850, baseType: !3286, size: 64, offset: 1728)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!426, !469, !121, !648, !648}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3074, file: !42, line: 1852, baseType: !3290, size: 64, offset: 1792)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !831, !469}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3074, file: !42, line: 1856, baseType: !3294, size: 64, offset: 1856)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!422, !469, !648, !469, !648, !438, !5}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3074, file: !42, line: 1858, baseType: !3298, size: 64, offset: 1920)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!648, !469, !648, !469, !648, !648, !5}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3074, file: !42, line: 1861, baseType: !3147, size: 64, offset: 1984)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3069, file: !42, line: 692, baseType: !784, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !547, file: !42, line: 694, baseType: !3304, size: 64, offset: 2560)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3305, file: !42, line: 1101, baseType: !350)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3305, file: !42, line: 1102, baseType: !309, size: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3305, file: !42, line: 1103, baseType: !309, size: 128, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3305, file: !42, line: 1104, baseType: !309, size: 128, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !547, file: !42, line: 695, baseType: !904, size: 1216, align: 64, offset: 2624)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !547, file: !42, line: 696, baseType: !309, size: 128, offset: 3840)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !42, line: 697, baseType: !3314, size: 64, offset: 3968)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !42, line: 697, size: 64, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3321, !3322}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3314, file: !42, line: 698, baseType: !2307, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3314, file: !42, line: 699, baseType: !2824, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3314, file: !42, line: 700, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3314, file: !42, line: 701, baseType: !391, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3314, file: !42, line: 702, baseType: !5, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !547, file: !42, line: 705, baseType: !534, size: 32, offset: 4032)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !547, file: !42, line: 708, baseType: !534, size: 32, offset: 4064)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !547, file: !42, line: 709, baseType: !2906, size: 64, offset: 4096)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !547, file: !42, line: 720, baseType: !299, size: 64, offset: 4160)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !500, file: !497, line: 98, baseType: !3328, size: 256, offset: 448)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 256, elements: !2439)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !500, file: !497, line: 101, baseType: !3330, size: 32, offset: 704)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3331, line: 25, size: 32, elements: !3332)
!3331 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3331, line: 26, baseType: !3334, size: 32)
!3334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3331, line: 26, size: 32, elements: !3335)
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !3331, line: 30, baseType: !3337, size: 32)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3334, file: !3331, line: 30, size: 32, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3337, file: !3331, line: 31, baseType: !350)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3337, file: !3331, line: 32, baseType: !121, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !500, file: !497, line: 102, baseType: !2923, size: 64, offset: 768)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !500, file: !497, line: 103, baseType: !716, size: 64, offset: 832)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !500, file: !497, line: 104, baseType: !441, size: 64, offset: 896)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !500, file: !497, line: 105, baseType: !299, size: 64, offset: 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !497, line: 107, baseType: !3346, size: 128, offset: 1024)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !497, line: 107, size: 128, elements: !3347)
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3346, file: !497, line: 108, baseType: !309, size: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3346, file: !497, line: 109, baseType: !3124, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !500, file: !497, line: 111, baseType: !309, size: 128, offset: 1152)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !500, file: !497, line: 112, baseType: !309, size: 128, offset: 1280)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !500, file: !497, line: 120, baseType: !3353, size: 128, offset: 1408)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !497, line: 116, size: 128, elements: !3354)
!3354 = !{!3355, !3356, !3357}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3353, file: !497, line: 117, baseType: !759, size: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3353, file: !497, line: 118, baseType: !514, size: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3353, file: !497, line: 119, baseType: !482, size: 128, align: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !470, file: !42, line: 922, baseType: !546, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !470, file: !42, line: 923, baseType: !3072, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !470, file: !42, line: 929, baseType: !350, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !470, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !470, file: !42, line: 931, baseType: !847, size: 64, offset: 448)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !470, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !470, file: !42, line: 933, baseType: !2919, size: 32, offset: 544)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !470, file: !42, line: 934, baseType: !843, size: 192, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !470, file: !42, line: 935, baseType: !648, size: 64, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !470, file: !42, line: 936, baseType: !3368, size: 192, offset: 832)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3368, file: !42, line: 886, baseType: !3180)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3368, file: !42, line: 887, baseType: !1625, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3368, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3368, file: !42, line: 889, baseType: !552, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3368, file: !42, line: 889, baseType: !552, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3368, file: !42, line: 890, baseType: !121, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !470, file: !42, line: 937, baseType: !1734, size: 64, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !470, file: !42, line: 938, baseType: !3378, size: 256, offset: 1088)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3379)
!3379 = !{!3380, !3381, !3382, !3383, !3384, !3385}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3378, file: !42, line: 897, baseType: !441, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3378, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3378, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3378, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3378, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3378, file: !42, line: 904, baseType: !648, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !470, file: !42, line: 940, baseType: !538, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !470, file: !42, line: 945, baseType: !299, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !470, file: !42, line: 949, baseType: !309, size: 128, offset: 1472)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !470, file: !42, line: 950, baseType: !309, size: 128, offset: 1600)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !470, file: !42, line: 952, baseType: !903, size: 64, offset: 1728)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !470, file: !42, line: 953, baseType: !1068, size: 32, offset: 1792)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !470, file: !42, line: 954, baseType: !1068, size: 32, offset: 1824)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !460, file: !416, line: 174, baseType: !466, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !460, file: !416, line: 176, baseType: !3395, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!121, !469, !343, !459, !1141}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !448, file: !416, line: 90, baseType: !443, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !448, file: !416, line: 91, baseType: !3400, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !406, file: !335, line: 143, baseType: !3402, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!3405, !343}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3408)
!3408 = !{!3409, !3410, !3414, !3418, !3424, !3428}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3407, file: !59, line: 40, baseType: !58, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3407, file: !59, line: 41, baseType: !3411, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!607}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3407, file: !59, line: 42, baseType: !3415, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!299}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3407, file: !59, line: 43, baseType: !3419, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!2336, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3407, file: !59, line: 44, baseType: !3425, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!2336}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3407, file: !59, line: 45, baseType: !585, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !406, file: !335, line: 144, baseType: !3430, size: 64, offset: 320)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!2336, !343}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !406, file: !335, line: 145, baseType: !3434, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !343, !3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !334, file: !335, line: 70, baseType: !3440, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !736, line: 123, size: 1024, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3553, !3554, !3555, !3556, !3557}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3441, file: !736, line: 124, baseType: !325, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3441, file: !736, line: 125, baseType: !325, size: 32, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3441, file: !736, line: 135, baseType: !3440, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3441, file: !736, line: 136, baseType: !338, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3441, file: !736, line: 138, baseType: !926, size: 192, align: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3441, file: !736, line: 140, baseType: !2336, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3441, file: !736, line: 141, baseType: !5, size: 32, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !736, line: 142, baseType: !3451, size: 256, offset: 512)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !736, line: 142, size: 256, elements: !3452)
!3452 = !{!3453, !3493, !3497}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3451, file: !736, line: 143, baseType: !3454, size: 192)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !736, line: 91, size: 192, elements: !3455)
!3455 = !{!3456, !3457, !3458}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3454, file: !736, line: 92, baseType: !441, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3454, file: !736, line: 94, baseType: !922, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3454, file: !736, line: 100, baseType: !3459, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !736, line: 180, size: 704, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3491, !3492}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3460, file: !736, line: 182, baseType: !3440, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3460, file: !736, line: 183, baseType: !5, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3460, file: !736, line: 186, baseType: !1654, size: 192, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3460, file: !736, line: 187, baseType: !532, size: 32, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3460, file: !736, line: 188, baseType: !532, size: 32, offset: 352)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3460, file: !736, line: 189, baseType: !3468, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !736, line: 168, size: 320, elements: !3470)
!3470 = !{!3471, !3475, !3479, !3483, !3487}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3469, file: !736, line: 169, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!121, !831, !3459}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3469, file: !736, line: 171, baseType: !3476, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!121, !3440, !338, !432}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3469, file: !736, line: 173, baseType: !3480, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!121, !3440}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3469, file: !736, line: 174, baseType: !3484, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!121, !3440, !3440, !338}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3469, file: !736, line: 176, baseType: !3488, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!121, !831, !3440, !3459}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3460, file: !736, line: 192, baseType: !309, size: 128, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3460, file: !736, line: 194, baseType: !1635, size: 128, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3451, file: !736, line: 144, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !736, line: 103, size: 64, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3494, file: !736, line: 104, baseType: !3440, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3451, file: !736, line: 145, baseType: !3498, size: 256)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !736, line: 107, size: 256, elements: !3499)
!3499 = !{!3500, !3548, !3551, !3552}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3498, file: !736, line: 108, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !736, line: 217, size: 768, elements: !3504)
!3504 = !{!3505, !3525, !3529, !3530, !3531, !3532, !3533, !3537, !3538, !3539, !3540, !3544}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3503, file: !736, line: 222, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!121, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !736, line: 197, size: 1088, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3510, file: !736, line: 199, baseType: !3440, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3510, file: !736, line: 200, baseType: !469, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3510, file: !736, line: 201, baseType: !831, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3510, file: !736, line: 202, baseType: !299, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3510, file: !736, line: 205, baseType: !843, size: 192, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3510, file: !736, line: 206, baseType: !843, size: 192, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3510, file: !736, line: 207, baseType: !121, size: 32, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3510, file: !736, line: 208, baseType: !309, size: 128, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3510, file: !736, line: 209, baseType: !391, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3510, file: !736, line: 211, baseType: !438, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3510, file: !736, line: 212, baseType: !607, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3510, file: !736, line: 213, baseType: !607, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3510, file: !736, line: 214, baseType: !1169, size: 64, offset: 1024)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3503, file: !736, line: 223, baseType: !3526, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !3509}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3503, file: !736, line: 236, baseType: !875, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3503, file: !736, line: 238, baseType: !862, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3503, file: !736, line: 239, baseType: !871, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3503, file: !736, line: 240, baseType: !867, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3503, file: !736, line: 242, baseType: !3534, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!422, !3509, !391, !438, !648}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3503, file: !736, line: 252, baseType: !438, size: 64, offset: 448)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3503, file: !736, line: 259, baseType: !607, size: 8, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3503, file: !736, line: 260, baseType: !3534, size: 64, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3503, file: !736, line: 263, baseType: !3541, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!3113, !3509, !3115}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3503, file: !736, line: 266, baseType: !3545, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!121, !3509, !1141}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3498, file: !736, line: 109, baseType: !3549, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !736, line: 31, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3498, file: !736, line: 110, baseType: !648, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3498, file: !736, line: 111, baseType: !3440, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3441, file: !736, line: 148, baseType: !299, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3441, file: !736, line: 154, baseType: !538, size: 64, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3441, file: !736, line: 156, baseType: !433, size: 16, offset: 896)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3441, file: !736, line: 157, baseType: !432, size: 16, offset: 912)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3441, file: !736, line: 158, baseType: !3558, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !736, line: 32, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !334, file: !335, line: 71, baseType: !317, size: 32, offset: 448)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !334, file: !335, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !334, file: !335, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !334, file: !335, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !334, file: !335, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !334, file: !335, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !331, file: !71, line: 463, baseType: !330, size: 64, offset: 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !331, file: !71, line: 465, baseType: !3568, size: 64, offset: 576)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !331, file: !71, line: 467, baseType: !338, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !331, file: !71, line: 468, baseType: !3572, size: 64, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3582, !3587, !3591}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3574, file: !71, line: 88, baseType: !338, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3574, file: !71, line: 89, baseType: !445, size: 64, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3574, file: !71, line: 90, baseType: !3579, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!121, !330, !386}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3574, file: !71, line: 91, baseType: !3583, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!391, !330, !3586, !3437, !3438}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3574, file: !71, line: 93, baseType: !3588, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !330}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3574, file: !71, line: 95, baseType: !3592, size: 64, offset: 320)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3595)
!3595 = !{!3596, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3594, file: !78, line: 279, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!121, !330}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3594, file: !78, line: 280, baseType: !3588, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3594, file: !78, line: 281, baseType: !3597, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3594, file: !78, line: 282, baseType: !3597, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3594, file: !78, line: 283, baseType: !3597, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3594, file: !78, line: 284, baseType: !3597, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3594, file: !78, line: 285, baseType: !3597, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3594, file: !78, line: 286, baseType: !3597, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3594, file: !78, line: 287, baseType: !3597, size: 64, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3594, file: !78, line: 288, baseType: !3597, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3594, file: !78, line: 289, baseType: !3597, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3594, file: !78, line: 290, baseType: !3597, size: 64, offset: 704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3594, file: !78, line: 291, baseType: !3597, size: 64, offset: 768)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3594, file: !78, line: 292, baseType: !3597, size: 64, offset: 832)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3594, file: !78, line: 293, baseType: !3597, size: 64, offset: 896)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3594, file: !78, line: 294, baseType: !3597, size: 64, offset: 960)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3594, file: !78, line: 295, baseType: !3597, size: 64, offset: 1024)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3594, file: !78, line: 296, baseType: !3597, size: 64, offset: 1088)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3594, file: !78, line: 297, baseType: !3597, size: 64, offset: 1152)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3594, file: !78, line: 298, baseType: !3597, size: 64, offset: 1216)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3594, file: !78, line: 299, baseType: !3597, size: 64, offset: 1280)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3594, file: !78, line: 300, baseType: !3597, size: 64, offset: 1344)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3594, file: !78, line: 301, baseType: !3597, size: 64, offset: 1408)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !331, file: !71, line: 470, baseType: !3623, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3625, line: 82, size: 1408, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3708, !3711, !3712}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !3625, line: 83, baseType: !338, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3624, file: !3625, line: 84, baseType: !338, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3624, file: !3625, line: 85, baseType: !330, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3624, file: !3625, line: 86, baseType: !445, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3624, file: !3625, line: 87, baseType: !445, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3624, file: !3625, line: 88, baseType: !445, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3624, file: !3625, line: 90, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!121, !330, !3637}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3659, !3672, !3673, !3674, !3675, !3676, !3684, !3685, !3686, !3687, !3688, !3689}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3638, file: !65, line: 96, baseType: !338, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3638, file: !65, line: 97, baseType: !3623, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3638, file: !65, line: 99, baseType: !750, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3638, file: !65, line: 100, baseType: !338, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3638, file: !65, line: 102, baseType: !607, size: 8, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3638, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3638, file: !65, line: 105, baseType: !3647, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3649)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3650, line: 262, size: 1600, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3651 = !{!3652, !3653, !3654, !3658}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3649, file: !3650, line: 263, baseType: !2909, size: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3649, file: !3650, line: 264, baseType: !2909, size: 256, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3649, file: !3650, line: 265, baseType: !3655, size: 1024, offset: 512)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !3656)
!3656 = !{!3657}
!3657 = !DISubrange(count: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3649, file: !3650, line: 266, baseType: !2336, size: 64, offset: 1536)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3638, file: !65, line: 106, baseType: !3660, size: 64, offset: 384)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3650, line: 210, size: 256, elements: !3663)
!3663 = !{!3664, !3668, !3670, !3671}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3662, file: !3650, line: 211, baseType: !3665, size: 72)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 72, elements: !3666)
!3666 = !{!3667}
!3667 = !DISubrange(count: 9)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3662, file: !3650, line: 212, baseType: !3669, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3650, line: 14, baseType: !441)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3662, file: !3650, line: 213, baseType: !534, size: 32, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3662, file: !3650, line: 214, baseType: !534, size: 32, offset: 224)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3638, file: !65, line: 108, baseType: !3597, size: 64, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3638, file: !65, line: 109, baseType: !3588, size: 64, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3638, file: !65, line: 110, baseType: !3597, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3638, file: !65, line: 111, baseType: !3588, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3638, file: !65, line: 112, baseType: !3677, size: 64, offset: 704)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!121, !330, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3682)
!3682 = !{!3683}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3681, file: !78, line: 51, baseType: !121, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3638, file: !65, line: 113, baseType: !3597, size: 64, offset: 768)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3638, file: !65, line: 114, baseType: !445, size: 64, offset: 832)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3638, file: !65, line: 115, baseType: !445, size: 64, offset: 896)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3638, file: !65, line: 117, baseType: !3592, size: 64, offset: 960)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3638, file: !65, line: 118, baseType: !3588, size: 64, offset: 1024)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3638, file: !65, line: 120, baseType: !3690, size: 64, offset: 1088)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3624, file: !3625, line: 91, baseType: !3579, size: 64, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3624, file: !3625, line: 92, baseType: !3597, size: 64, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3624, file: !3625, line: 93, baseType: !3588, size: 64, offset: 576)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3624, file: !3625, line: 94, baseType: !3597, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3624, file: !3625, line: 95, baseType: !3588, size: 64, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3624, file: !3625, line: 97, baseType: !3597, size: 64, offset: 768)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3624, file: !3625, line: 98, baseType: !3597, size: 64, offset: 832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3624, file: !3625, line: 100, baseType: !3677, size: 64, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3624, file: !3625, line: 101, baseType: !3597, size: 64, offset: 960)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3624, file: !3625, line: 103, baseType: !3597, size: 64, offset: 1024)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3624, file: !3625, line: 105, baseType: !3597, size: 64, offset: 1088)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3624, file: !3625, line: 107, baseType: !3592, size: 64, offset: 1152)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3624, file: !3625, line: 109, baseType: !3705, size: 64, offset: 1216)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3707)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3625, line: 109, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3624, file: !3625, line: 111, baseType: !3709, size: 64, offset: 1280)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3625, line: 111, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3624, file: !3625, line: 112, baseType: !765, offset: 1344)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3624, file: !3625, line: 114, baseType: !607, size: 8, offset: 1344)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !331, file: !71, line: 471, baseType: !3637, size: 64, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !331, file: !71, line: 473, baseType: !299, size: 64, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !331, file: !71, line: 475, baseType: !299, size: 64, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !331, file: !71, line: 480, baseType: !843, size: 192, offset: 1024)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !331, file: !71, line: 484, baseType: !3718, size: 576, offset: 1216)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3718, file: !71, line: 362, baseType: !309, size: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3718, file: !71, line: 363, baseType: !309, size: 128, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3718, file: !71, line: 364, baseType: !309, size: 128, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3718, file: !71, line: 365, baseType: !309, size: 128, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3718, file: !71, line: 366, baseType: !607, size: 8, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3718, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !331, file: !71, line: 485, baseType: !3727, size: 2304, offset: 1792)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3824, !3828}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3727, file: !78, line: 566, baseType: !3680, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3727, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3727, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3727, file: !78, line: 569, baseType: !607, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3727, file: !78, line: 570, baseType: !607, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3727, file: !78, line: 571, baseType: !607, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3727, file: !78, line: 572, baseType: !607, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3727, file: !78, line: 573, baseType: !607, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3727, file: !78, line: 574, baseType: !607, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3727, file: !78, line: 575, baseType: !607, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3727, file: !78, line: 576, baseType: !607, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3727, file: !78, line: 577, baseType: !532, size: 32, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3727, file: !78, line: 578, baseType: !350, offset: 96)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3727, file: !78, line: 580, baseType: !309, size: 128, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3727, file: !78, line: 581, baseType: !1689, size: 192, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3727, file: !78, line: 582, baseType: !3745, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3747, line: 43, size: 1472, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3756, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3746, file: !3747, line: 44, baseType: !338, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3746, file: !3747, line: 45, baseType: !121, size: 32, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3746, file: !3747, line: 46, baseType: !309, size: 128, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3746, file: !3747, line: 47, baseType: !350, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3746, file: !3747, line: 48, baseType: !3754, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3746, file: !3747, line: 49, baseType: !3757, size: 320, offset: 320)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3758, line: 11, size: 320, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3759 = !{!3760, !3761, !3762, !3767}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3757, file: !3758, line: 16, baseType: !759, size: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3757, file: !3758, line: 17, baseType: !441, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3757, file: !3758, line: 18, baseType: !3763, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3757, file: !3758, line: 19, baseType: !532, size: 32, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3746, file: !3747, line: 50, baseType: !441, size: 64, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3746, file: !3747, line: 51, baseType: !1449, size: 64, offset: 704)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3746, file: !3747, line: 52, baseType: !1449, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3746, file: !3747, line: 53, baseType: !1449, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3746, file: !3747, line: 54, baseType: !1449, size: 64, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3746, file: !3747, line: 55, baseType: !1449, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3746, file: !3747, line: 56, baseType: !441, size: 64, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3746, file: !3747, line: 57, baseType: !441, size: 64, offset: 1088)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3746, file: !3747, line: 58, baseType: !441, size: 64, offset: 1152)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3746, file: !3747, line: 59, baseType: !441, size: 64, offset: 1216)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3746, file: !3747, line: 60, baseType: !441, size: 64, offset: 1280)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3746, file: !3747, line: 61, baseType: !330, size: 64, offset: 1344)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3746, file: !3747, line: 62, baseType: !607, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3746, file: !3747, line: 63, baseType: !607, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3727, file: !78, line: 583, baseType: !607, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3727, file: !78, line: 584, baseType: !607, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3727, file: !78, line: 585, baseType: !607, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3727, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3727, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3727, file: !78, line: 592, baseType: !1441, size: 512, offset: 576)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3727, file: !78, line: 593, baseType: !538, size: 64, offset: 1088)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3727, file: !78, line: 594, baseType: !2166, size: 256, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3727, file: !78, line: 595, baseType: !1635, size: 128, offset: 1408)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3727, file: !78, line: 596, baseType: !3754, size: 64, offset: 1536)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3727, file: !78, line: 597, baseType: !325, size: 32, offset: 1600)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3727, file: !78, line: 598, baseType: !325, size: 32, offset: 1632)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3727, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3727, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3727, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3727, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3727, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3727, file: !78, line: 604, baseType: !607, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3727, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3727, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3727, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3727, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3727, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3727, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3727, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3727, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3727, file: !78, line: 613, baseType: !121, size: 32, offset: 1792)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3727, file: !78, line: 614, baseType: !121, size: 32, offset: 1824)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3727, file: !78, line: 615, baseType: !538, size: 64, offset: 1856)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3727, file: !78, line: 616, baseType: !538, size: 64, offset: 1920)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3727, file: !78, line: 617, baseType: !538, size: 64, offset: 1984)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3727, file: !78, line: 618, baseType: !538, size: 64, offset: 2048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3727, file: !78, line: 620, baseType: !3815, size: 64, offset: 2112)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3816, file: !78, line: 537, baseType: !350)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3816, file: !78, line: 538, baseType: !5, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3816, file: !78, line: 540, baseType: !309, size: 128, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3816, file: !78, line: 543, baseType: !3822, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3727, file: !78, line: 621, baseType: !3825, size: 64, offset: 2176)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !330, !1593}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3727, file: !78, line: 622, baseType: !3829, size: 64, offset: 2240)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !331, file: !71, line: 486, baseType: !3832, size: 64, offset: 4096)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3834)
!3834 = !{!3835, !3836, !3837, !3841, !3842, !3843}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3833, file: !78, line: 643, baseType: !3594, size: 1472)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3833, file: !78, line: 644, baseType: !3597, size: 64, offset: 1472)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3833, file: !78, line: 645, baseType: !3838, size: 64, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !330, !607}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3833, file: !78, line: 646, baseType: !3597, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3833, file: !78, line: 647, baseType: !3588, size: 64, offset: 1664)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3833, file: !78, line: 648, baseType: !3588, size: 64, offset: 1728)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !331, file: !71, line: 493, baseType: !3845, size: 64, offset: 4160)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !92, line: 162, size: 1088, elements: !3847)
!3847 = !{!3848, !3849, !3850, !4023, !4024, !4025, !4026, !4027, !4028, !4031, !4032, !4033, !4034, !4035, !4036, !4037}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3846, file: !92, line: 163, baseType: !309, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3846, file: !92, line: 164, baseType: !338, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3846, file: !92, line: 165, baseType: !3851, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !92, line: 105, size: 640, elements: !3854)
!3854 = !{!3855, !3973, !3984, !3989, !3993, !4000, !4004, !4008, !4015, !4019}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3853, file: !92, line: 106, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!121, !3845, !3859, !91}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3861, line: 51, size: 1344, elements: !3862)
!3861 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3862 = !{!3863, !3864, !3866, !3867, !3957, !3966, !3967, !3968, !3969, !3970, !3971, !3972}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3860, file: !3861, line: 52, baseType: !338, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3860, file: !3861, line: 53, baseType: !3865, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3861, line: 28, baseType: !532)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3860, file: !3861, line: 54, baseType: !338, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3860, file: !3861, line: 55, baseType: !3868, size: 192, offset: 192)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3869, line: 17, size: 192, elements: !3870)
!3869 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3870 = !{!3871, !3873, !3956}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3868, file: !3869, line: 18, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3868, file: !3869, line: 19, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3876)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3869, line: 110, size: 1152, elements: !3877)
!3877 = !{!3878, !3882, !3886, !3892, !3898, !3902, !3906, !3911, !3915, !3916, !3920, !3924, !3928, !3939, !3940, !3941, !3942, !3952}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3876, file: !3869, line: 111, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!3872, !3872}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3876, file: !3869, line: 112, baseType: !3883, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !3872}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3876, file: !3869, line: 113, baseType: !3887, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!607, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3868)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3876, file: !3869, line: 114, baseType: !3893, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!2336, !3890, !3896}
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3876, file: !3869, line: 116, baseType: !3899, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!607, !3890, !338}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3876, file: !3869, line: 118, baseType: !3903, size: 64, offset: 320)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!121, !3890, !338, !5, !299, !438}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3876, file: !3869, line: 123, baseType: !3907, size: 64, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!121, !3890, !338, !3910, !438}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3876, file: !3869, line: 126, baseType: !3912, size: 64, offset: 448)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!338, !3890}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3876, file: !3869, line: 127, baseType: !3912, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3876, file: !3869, line: 128, baseType: !3917, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!3872, !3890}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3876, file: !3869, line: 130, baseType: !3921, size: 64, offset: 640)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!3872, !3890, !3872}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3876, file: !3869, line: 133, baseType: !3925, size: 64, offset: 704)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!3872, !3890, !338}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3876, file: !3869, line: 135, baseType: !3929, size: 64, offset: 768)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!121, !3890, !338, !338, !5, !5, !3932}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3869, line: 43, size: 640, elements: !3934)
!3934 = !{!3935, !3936, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3933, file: !3869, line: 44, baseType: !3872, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3933, file: !3869, line: 45, baseType: !5, size: 32, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3933, file: !3869, line: 46, baseType: !3938, size: 512, offset: 128)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 512, elements: !1479)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3876, file: !3869, line: 140, baseType: !3921, size: 64, offset: 832)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3876, file: !3869, line: 143, baseType: !3917, size: 64, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3876, file: !3869, line: 145, baseType: !3879, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3876, file: !3869, line: 146, baseType: !3943, size: 64, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!121, !3890, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3869, line: 29, size: 128, elements: !3948)
!3948 = !{!3949, !3950, !3951}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3947, file: !3869, line: 30, baseType: !5, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3947, file: !3869, line: 31, baseType: !5, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3947, file: !3869, line: 32, baseType: !3890, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3876, file: !3869, line: 148, baseType: !3953, size: 64, offset: 1088)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!121, !3890, !330}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3868, file: !3869, line: 20, baseType: !330, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3860, file: !3861, line: 57, baseType: !3958, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3861, line: 31, size: 704, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3964, !3965}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3959, file: !3861, line: 32, baseType: !391, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3959, file: !3861, line: 33, baseType: !121, size: 32, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3959, file: !3861, line: 34, baseType: !299, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3959, file: !3861, line: 35, baseType: !3958, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3959, file: !3861, line: 43, baseType: !460, size: 448, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3860, file: !3861, line: 58, baseType: !3958, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3860, file: !3861, line: 59, baseType: !3859, size: 64, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3860, file: !3861, line: 60, baseType: !3859, size: 64, offset: 576)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3860, file: !3861, line: 61, baseType: !3859, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3860, file: !3861, line: 63, baseType: !334, size: 512, offset: 704)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3860, file: !3861, line: 65, baseType: !441, size: 64, offset: 1216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3860, file: !3861, line: 66, baseType: !299, size: 64, offset: 1280)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3853, file: !92, line: 108, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!121, !3845, !3977, !91}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !92, line: 63, size: 640, elements: !3979)
!3979 = !{!3980, !3981, !3982}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3978, file: !92, line: 64, baseType: !3872, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3978, file: !92, line: 65, baseType: !121, size: 32, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3978, file: !92, line: 66, baseType: !3983, size: 512, offset: 96)
!3983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 512, elements: !1920)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3853, file: !92, line: 110, baseType: !3985, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!121, !3845, !5, !3988}
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !310, line: 164, baseType: !441)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3853, file: !92, line: 111, baseType: !3990, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3845, !5}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3853, file: !92, line: 112, baseType: !3994, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!121, !3845, !3859, !3997, !5, !3999, !2892}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3853, file: !92, line: 117, baseType: !4001, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!121, !3845, !5, !5, !299}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3853, file: !92, line: 119, baseType: !4005, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !3845, !5, !5}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3853, file: !92, line: 121, baseType: !4009, size: 64, offset: 448)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!121, !3845, !4012, !607}
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4014, line: 11, flags: DIFlagFwdDecl)
!4014 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3853, file: !92, line: 122, baseType: !4016, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{null, !3845, !4012}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3853, file: !92, line: 123, baseType: !4020, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!121, !3845, !3977, !3999, !2892}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3846, file: !92, line: 166, baseType: !299, size: 64, offset: 256)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3846, file: !92, line: 167, baseType: !5, size: 32, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3846, file: !92, line: 168, baseType: !5, size: 32, offset: 352)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3846, file: !92, line: 171, baseType: !3872, size: 64, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3846, file: !92, line: 172, baseType: !91, size: 32, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3846, file: !92, line: 173, baseType: !4029, size: 64, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !92, line: 134, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3846, file: !92, line: 175, baseType: !3845, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3846, file: !92, line: 182, baseType: !3988, size: 64, offset: 640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3846, file: !92, line: 183, baseType: !5, size: 32, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3846, file: !92, line: 184, baseType: !5, size: 32, offset: 736)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3846, file: !92, line: 185, baseType: !908, size: 128, offset: 768)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3846, file: !92, line: 186, baseType: !843, size: 192, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3846, file: !92, line: 187, baseType: !4038, offset: 1088)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !2540)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !331, file: !71, line: 499, baseType: !309, size: 128, offset: 4224)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !331, file: !71, line: 502, baseType: !4041, size: 64, offset: 4352)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4043)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !331, file: !71, line: 504, baseType: !4045, size: 64, offset: 4416)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !331, file: !71, line: 505, baseType: !538, size: 64, offset: 4480)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !331, file: !71, line: 510, baseType: !538, size: 64, offset: 4544)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !331, file: !71, line: 511, baseType: !4049, size: 64, offset: 4608)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4051)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !331, file: !71, line: 513, baseType: !4053, size: 64, offset: 4672)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4054, file: !71, line: 293, baseType: !5, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4054, file: !71, line: 294, baseType: !441, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !331, file: !71, line: 515, baseType: !309, size: 128, offset: 4736)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !331, file: !71, line: 526, baseType: !4060, offset: 4864)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4061, line: 5, elements: !364)
!4061 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !331, file: !71, line: 528, baseType: !3859, size: 64, offset: 4864)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !331, file: !71, line: 529, baseType: !3872, size: 64, offset: 4928)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !331, file: !71, line: 534, baseType: !630, size: 32, offset: 4992)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !331, file: !71, line: 535, baseType: !532, size: 32, offset: 5024)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !331, file: !71, line: 537, baseType: !350, offset: 5056)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !331, file: !71, line: 538, baseType: !309, size: 128, offset: 5056)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !331, file: !71, line: 540, baseType: !4069, size: 64, offset: 5184)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4071, line: 54, size: 960, elements: !4072)
!4071 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4083, !4087, !4088, !4089, !4090, !4094, !4098, !4099}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4070, file: !4071, line: 55, baseType: !338, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4070, file: !4071, line: 56, baseType: !750, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4070, file: !4071, line: 58, baseType: !445, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4070, file: !4071, line: 59, baseType: !445, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4070, file: !4071, line: 60, baseType: !343, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4070, file: !4071, line: 62, baseType: !3579, size: 64, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4070, file: !4071, line: 63, baseType: !4080, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!391, !330, !3586}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4070, file: !4071, line: 65, baseType: !4084, size: 64, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !4069}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4070, file: !4071, line: 66, baseType: !3588, size: 64, offset: 512)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4070, file: !4071, line: 68, baseType: !3597, size: 64, offset: 576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4070, file: !4071, line: 70, baseType: !3405, size: 64, offset: 640)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4070, file: !4071, line: 71, baseType: !4091, size: 64, offset: 704)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!2336, !330}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4070, file: !4071, line: 73, baseType: !4095, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !330, !3437, !3438}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4070, file: !4071, line: 75, baseType: !3592, size: 64, offset: 832)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4070, file: !4071, line: 77, baseType: !3709, size: 64, offset: 896)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !331, file: !71, line: 541, baseType: !445, size: 64, offset: 5248)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !331, file: !71, line: 543, baseType: !3588, size: 64, offset: 5312)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !331, file: !71, line: 544, baseType: !4103, size: 64, offset: 5376)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !331, file: !71, line: 545, baseType: !4106, size: 64, offset: 5440)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !331, file: !71, line: 547, baseType: !607, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !331, file: !71, line: 548, baseType: !607, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !331, file: !71, line: 549, baseType: !607, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !331, file: !71, line: 550, baseType: !607, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !306, file: !173, line: 83, baseType: !4113, size: 192, offset: 256)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !173, line: 76, size: 192, elements: !4114)
!4114 = !{!4115, !4116, !4117}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4113, file: !173, line: 78, baseType: !309, size: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4113, file: !173, line: 80, baseType: !299, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4113, file: !173, line: 82, baseType: !350, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !306, file: !173, line: 86, baseType: !4119, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !250, line: 162, size: 3328, elements: !4121)
!4121 = !{!4122, !4126, !4183, !4187, !4191, !4192, !4193, !4198, !4199, !4203, !4204, !4208, !4209, !4213, !4444, !4445, !4446, !4450, !4454, !4459, !4460, !4464, !4465, !4466, !4467, !4471, !4472, !4473, !4474, !4488, !4494, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4519, !4520, !4521, !4522, !4523, !4524, !4526, !4527, !4531, !4535, !4539, !4543}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4120, file: !250, line: 179, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!121, !305, !441}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4120, file: !250, line: 199, baseType: !4127, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!121, !305, !4130}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4132, line: 159, size: 2368, elements: !4133)
!4132 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/lizy2001/genbc/linux")
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4146, !4147, !4150, !4151, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4131, file: !4132, line: 169, baseType: !607, size: 8)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4131, file: !4132, line: 176, baseType: !607, size: 8, offset: 8)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4131, file: !4132, line: 184, baseType: !607, size: 8, offset: 16)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4131, file: !4132, line: 187, baseType: !607, size: 8, offset: 24)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4131, file: !4132, line: 195, baseType: !607, size: 8, offset: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4131, file: !4132, line: 202, baseType: !607, size: 8, offset: 40)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4131, file: !4132, line: 213, baseType: !607, size: 8, offset: 48)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4131, file: !4132, line: 224, baseType: !607, size: 8, offset: 56)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4131, file: !4132, line: 236, baseType: !4143, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4145, line: 11, flags: DIFlagFwdDecl)
!4145 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4131, file: !4132, line: 239, baseType: !1625, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4131, file: !4132, line: 242, baseType: !4148, size: 32, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4149, line: 86, baseType: !5)
!4149 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4131, file: !4132, line: 250, baseType: !309, size: 128, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4131, file: !4132, line: 253, baseType: !4152, size: 64, offset: 384)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4132, line: 70, size: 576, elements: !4154)
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4153, file: !4132, line: 72, baseType: !121, size: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4153, file: !4132, line: 73, baseType: !121, size: 32, offset: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4153, file: !4132, line: 74, baseType: !330, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4153, file: !4132, line: 75, baseType: !305, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4153, file: !4132, line: 77, baseType: !499, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4153, file: !4132, line: 79, baseType: !309, size: 128, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4153, file: !4132, line: 80, baseType: !843, size: 192, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4131, file: !4132, line: 261, baseType: !1654, size: 192, offset: 448)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4131, file: !4132, line: 264, baseType: !350, offset: 640)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4131, file: !4132, line: 267, baseType: !1654, size: 192, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4131, file: !4132, line: 269, baseType: !350, offset: 832)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4131, file: !4132, line: 272, baseType: !469, size: 64, offset: 832)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4131, file: !4132, line: 280, baseType: !299, size: 64, offset: 896)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4131, file: !4132, line: 291, baseType: !309, size: 128, offset: 960)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4131, file: !4132, line: 294, baseType: !843, size: 192, offset: 1088)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4131, file: !4132, line: 304, baseType: !309, size: 128, offset: 1280)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4131, file: !4132, line: 307, baseType: !1635, size: 128, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4131, file: !4132, line: 318, baseType: !309, size: 128, offset: 1536)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4131, file: !4132, line: 328, baseType: !309, size: 128, offset: 1664)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4131, file: !4132, line: 337, baseType: !121, size: 32, offset: 1792)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4131, file: !4132, line: 340, baseType: !843, size: 192, offset: 1856)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4131, file: !4132, line: 347, baseType: !4177, size: 320, offset: 2048)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4178, line: 45, size: 320, elements: !4179)
!4178 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/lizy2001/genbc/linux")
!4179 = !{!4180, !4181, !4182}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4177, file: !4178, line: 47, baseType: !843, size: 192)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4177, file: !4178, line: 48, baseType: !922, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4177, file: !4178, line: 49, baseType: !922, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4120, file: !250, line: 213, baseType: !4184, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !305, !4130}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4120, file: !250, line: 241, baseType: !4188, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !305}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4120, file: !250, line: 258, baseType: !4188, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4120, file: !250, line: 270, baseType: !4188, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !4120, file: !250, line: 278, baseType: !4194, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!4197, !121, !299}
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !106, line: 17, baseType: !105)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "irq_preinstall", scope: !4120, file: !250, line: 288, baseType: !4188, size: 64, offset: 448)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "irq_postinstall", scope: !4120, file: !250, line: 297, baseType: !4200, size: 64, offset: 512)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!121, !305}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_uninstall", scope: !4120, file: !250, line: 306, baseType: !4188, size: 64, offset: 576)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4120, file: !250, line: 313, baseType: !4205, size: 64, offset: 640)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !305, !4130, !607}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4120, file: !250, line: 320, baseType: !4184, size: 64, offset: 704)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4120, file: !250, line: 327, baseType: !4210, size: 64, offset: 768)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !4152}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "gem_free_object_unlocked", scope: !4120, file: !250, line: 335, baseType: !4214, size: 64, offset: 832)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4217}
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4219, line: 184, size: 2496, elements: !4220)
!4219 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/lizy2001/genbc/linux")
!4220 = !{!4221, !4222, !4223, !4224, !4225, !4264, !4265, !4266, !4269, !4272, !4351, !4352}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4218, file: !4219, line: 194, baseType: !317, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !4218, file: !4219, line: 207, baseType: !5, size: 32, offset: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4218, file: !4219, line: 212, baseType: !305, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4218, file: !4219, line: 222, baseType: !469, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !4218, file: !4219, line: 234, baseType: !4226, size: 1472, offset: 192)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4227, line: 52, size: 1472, elements: !4228)
!4227 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/lizy2001/genbc/linux")
!4228 = !{!4229, !4230, !4262, !4263}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4226, file: !4227, line: 53, baseType: !3180)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !4226, file: !4227, line: 54, baseType: !4231, size: 1344)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !4232, line: 155, size: 1344, elements: !4233)
!4232 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/lizy2001/genbc/linux")
!4233 = !{!4234, !4235, !4236, !4237, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4231, file: !4232, line: 157, baseType: !441, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4231, file: !4232, line: 159, baseType: !538, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4231, file: !4232, line: 161, baseType: !538, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4231, file: !4232, line: 163, baseType: !4238, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !4232, line: 188, size: 1920, elements: !4240)
!4240 = !{!4241, !4247, !4248, !4249, !4250, !4251, !4252}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !4239, file: !4232, line: 198, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{null, !4245, !441, !4045, !4045}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4231)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4239, file: !4232, line: 204, baseType: !309, size: 128, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !4239, file: !4232, line: 207, baseType: !4231, size: 1344, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !4239, file: !4232, line: 209, baseType: !918, size: 128, offset: 1536)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !4239, file: !4232, line: 210, baseType: !918, size: 128, offset: 1664)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !4239, file: !4232, line: 211, baseType: !922, size: 64, offset: 1792)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !4239, file: !4232, line: 213, baseType: !441, size: 64, offset: 1856)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4231, file: !4232, line: 164, baseType: !309, size: 128, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4231, file: !4232, line: 165, baseType: !309, size: 128, offset: 384)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4231, file: !4232, line: 166, baseType: !926, size: 192, align: 64, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !4231, file: !4232, line: 167, baseType: !926, size: 192, align: 64, offset: 704)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !4231, file: !4232, line: 168, baseType: !926, size: 192, align: 64, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !4231, file: !4232, line: 169, baseType: !538, size: 64, offset: 1088)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !4231, file: !4232, line: 170, baseType: !538, size: 64, offset: 1152)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !4231, file: !4232, line: 171, baseType: !538, size: 64, offset: 1216)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4231, file: !4232, line: 172, baseType: !441, size: 64, offset: 1280)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !4226, file: !4227, line: 55, baseType: !922, size: 64, offset: 1344)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !4226, file: !4227, line: 56, baseType: !607, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4218, file: !4219, line: 242, baseType: !438, size: 64, offset: 1664)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4218, file: !4219, line: 251, baseType: !121, size: 32, offset: 1728)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !4218, file: !4219, line: 264, baseType: !4267, size: 64, offset: 1792)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !250, line: 391, flags: DIFlagFwdDecl)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !4218, file: !4219, line: 284, baseType: !4270, size: 64, offset: 1856)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !250, line: 39, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4218, file: !4219, line: 293, baseType: !4273, size: 64, offset: 1920)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !4275, line: 70, size: 448, elements: !4276)
!4275 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/lizy2001/genbc/linux")
!4276 = !{!4277, !4291, !4296, !4342}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4274, file: !4275, line: 71, baseType: !4278, size: 256)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !844, line: 71, size: 256, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4278, file: !844, line: 72, baseType: !843, size: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4278, file: !844, line: 73, baseType: !4282, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4284, line: 31, size: 192, elements: !4285)
!4284 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4285 = !{!4286, !4287, !4288, !4289, !4290}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4283, file: !4284, line: 32, baseType: !1370, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4283, file: !4284, line: 33, baseType: !441, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4283, file: !4284, line: 34, baseType: !5, size: 32, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4283, file: !4284, line: 35, baseType: !433, size: 16, offset: 160)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4283, file: !4284, line: 36, baseType: !433, size: 16, offset: 176)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4274, file: !4275, line: 72, baseType: !4292, size: 32, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_ww_mutex_t", file: !505, line: 280, baseType: !4293)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_ww_mutex", file: !505, line: 280, size: 32, elements: !4294)
!4294 = !{!4295}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4293, file: !505, line: 280, baseType: !509, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "fence_excl", scope: !4274, file: !4275, line: 74, baseType: !4297, size: 64, offset: 320)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !4299, line: 65, size: 512, elements: !4300)
!4299 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!4300 = !{!4301, !4302, !4331, !4337, !4338, !4339, !4340, !4341}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4298, file: !4299, line: 66, baseType: !1224, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4298, file: !4299, line: 67, baseType: !4303, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !4299, line: 125, size: 576, elements: !4306)
!4306 = !{!4307, !4308, !4312, !4313, !4317, !4318, !4322, !4326, !4330}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !4305, file: !4299, line: 132, baseType: !607, size: 8)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !4305, file: !4299, line: 143, baseType: !4309, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!338, !4297}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !4305, file: !4299, line: 155, baseType: !4309, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !4305, file: !4299, line: 192, baseType: !4314, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!607, !4297}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !4305, file: !4299, line: 209, baseType: !4314, size: 64, offset: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4305, file: !4299, line: 231, baseType: !4319, size: 64, offset: 320)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!426, !4297, !607, !426}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4305, file: !4299, line: 242, baseType: !4323, size: 64, offset: 384)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !4297}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !4305, file: !4299, line: 252, baseType: !4327, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{null, !4297, !391, !121}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !4305, file: !4299, line: 262, baseType: !4327, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, scope: !4298, file: !4299, line: 84, baseType: !4332, size: 128, offset: 128)
!4332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4298, file: !4299, line: 84, size: 128, elements: !4333)
!4333 = !{!4334, !4335, !4336}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4332, file: !4299, line: 85, baseType: !309, size: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4332, file: !4299, line: 87, baseType: !1449, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4332, file: !4299, line: 89, baseType: !482, size: 128, align: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4298, file: !4299, line: 91, baseType: !538, size: 64, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !4298, file: !4299, line: 92, baseType: !538, size: 64, offset: 320)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4298, file: !4299, line: 93, baseType: !441, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4298, file: !4299, line: 94, baseType: !317, size: 32, offset: 448)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4298, file: !4299, line: 95, baseType: !121, size: 32, offset: 480)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4274, file: !4275, line: 75, baseType: !4343, size: 64, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !4275, line: 57, size: 192, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4344, file: !4275, line: 58, baseType: !482, size: 128, align: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "shared_count", scope: !4344, file: !4275, line: 59, baseType: !532, size: 32, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "shared_max", scope: !4344, file: !4275, line: 59, baseType: !532, size: 32, offset: 160)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !4344, file: !4275, line: 60, baseType: !4350, offset: 192)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4297, elements: !2540)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !4218, file: !4219, line: 302, baseType: !4274, size: 448, offset: 1984)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4218, file: !4219, line: 313, baseType: !4353, size: 64, offset: 2432)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !4219, line: 47, size: 768, elements: !4356)
!4356 = !{!4357, !4358, !4362, !4366, !4403, !4407, !4411, !4412, !4431, !4435, !4439, !4443}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4355, file: !4219, line: 55, baseType: !4214, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4355, file: !4219, line: 64, baseType: !4359, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!121, !4217, !4130}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4355, file: !4219, line: 73, baseType: !4363, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4217, !4130}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !4355, file: !4219, line: 88, baseType: !4367, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4370, !5, !4401}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !266, line: 75, size: 256, elements: !4372)
!4372 = !{!4373, !4395, !4399, !4400}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4371, file: !266, line: 77, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !4370, !4377}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4379, line: 90, size: 128, elements: !4380)
!4379 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!4380 = !{!4381, !4382}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4378, file: !4379, line: 91, baseType: !338, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4378, file: !4379, line: 92, baseType: !4383, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4385, line: 99, baseType: !4386)
!4385 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4385, line: 40, baseType: !4387)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !4388)
!4388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4389, size: 192, elements: !1520)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !4390)
!4390 = !{!4391, !4392, !4393, !4394}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4389, file: !1, baseType: !5, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4389, file: !1, baseType: !5, size: 32, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4389, file: !1, baseType: !299, size: 64, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4389, file: !1, baseType: !299, size: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4371, file: !266, line: 78, baseType: !4396, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4370, !338}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4371, file: !266, line: 79, baseType: !299, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4371, file: !266, line: 80, baseType: !338, size: 64, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4355, file: !4219, line: 99, baseType: !4404, size: 64, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!4267, !4217, !121}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4355, file: !4219, line: 108, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!121, !4217}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !4355, file: !4219, line: 117, baseType: !4214, size: 64, offset: 384)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !4355, file: !4219, line: 131, baseType: !4413, size: 64, offset: 448)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!4416, !4217}
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4418, line: 42, size: 128, elements: !4419)
!4418 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4419 = !{!4420, !4429, !4430}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4417, file: !4418, line: 43, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4418, line: 11, size: 256, elements: !4423)
!4423 = !{!4424, !4425, !4426, !4427, !4428}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4422, file: !4418, line: 12, baseType: !441, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4422, file: !4418, line: 13, baseType: !5, size: 32, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4422, file: !4418, line: 14, baseType: !5, size: 32, offset: 96)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4422, file: !4418, line: 15, baseType: !1079, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4422, file: !4418, line: 17, baseType: !5, size: 32, offset: 192)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4417, file: !4418, line: 44, baseType: !5, size: 32, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4417, file: !4418, line: 45, baseType: !5, size: 32, offset: 96)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !4355, file: !4219, line: 141, baseType: !4432, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!299, !4217}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !4355, file: !4219, line: 151, baseType: !4436, size: 64, offset: 576)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !4217, !299}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4355, file: !4219, line: 164, baseType: !4440, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!121, !4217, !1141}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4355, file: !4219, line: 173, baseType: !1169, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "gem_open_object", scope: !4120, file: !250, line: 344, baseType: !4359, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "gem_close_object", scope: !4120, file: !250, line: 353, baseType: !4363, size: 64, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4120, file: !250, line: 361, baseType: !4447, size: 64, offset: 1024)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!4217, !305, !438}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4120, file: !250, line: 372, baseType: !4451, size: 64, offset: 1088)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!121, !305, !4130, !676, !676, !825}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4120, file: !250, line: 383, baseType: !4455, size: 64, offset: 1152)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!121, !305, !4130, !121, !4458}
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_export", scope: !4120, file: !250, line: 391, baseType: !4404, size: 64, offset: 1216)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4120, file: !250, line: 400, baseType: !4461, size: 64, offset: 1280)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!4217, !305, !4267}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_pin", scope: !4120, file: !250, line: 408, baseType: !4408, size: 64, offset: 1344)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_unpin", scope: !4120, file: !250, line: 415, baseType: !4214, size: 64, offset: 1408)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_get_sg_table", scope: !4120, file: !250, line: 423, baseType: !4413, size: 64, offset: 1472)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4120, file: !250, line: 431, baseType: !4468, size: 64, offset: 1536)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!4217, !305, !4270, !4416}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vmap", scope: !4120, file: !250, line: 441, baseType: !4432, size: 64, offset: 1600)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vunmap", scope: !4120, file: !250, line: 449, baseType: !4436, size: 64, offset: 1664)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_mmap", scope: !4120, file: !250, line: 460, baseType: !4440, size: 64, offset: 1728)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4120, file: !250, line: 484, baseType: !4475, size: 64, offset: 1792)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!121, !4130, !305, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !221, line: 805, size: 256, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4479, file: !221, line: 806, baseType: !534, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4479, file: !221, line: 807, baseType: !534, size: 32, offset: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4479, file: !221, line: 808, baseType: !534, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4479, file: !221, line: 809, baseType: !534, size: 32, offset: 96)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4479, file: !221, line: 811, baseType: !534, size: 32, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4479, file: !221, line: 812, baseType: !534, size: 32, offset: 160)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4479, file: !221, line: 813, baseType: !539, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4120, file: !250, line: 502, baseType: !4489, size: 64, offset: 1856)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!121, !4130, !305, !676, !4492}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !310, line: 107, baseType: !538)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_destroy", scope: !4120, file: !250, line: 521, baseType: !4495, size: 64, offset: 1920)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!121, !4130, !305, !676}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "gem_vm_ops", scope: !4120, file: !250, line: 531, baseType: !1169, size: 64, offset: 1984)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4120, file: !250, line: 534, baseType: !121, size: 32, offset: 2048)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4120, file: !250, line: 536, baseType: !121, size: 32, offset: 2080)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4120, file: !250, line: 538, baseType: !121, size: 32, offset: 2112)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4120, file: !250, line: 540, baseType: !391, size: 64, offset: 2176)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4120, file: !250, line: 542, baseType: !391, size: 64, offset: 2240)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4120, file: !250, line: 544, baseType: !391, size: 64, offset: 2304)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4120, file: !250, line: 552, baseType: !532, size: 32, offset: 2368)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4120, file: !250, line: 562, baseType: !4507, size: 64, offset: 2432)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !112, line: 144, size: 192, elements: !4510)
!4510 = !{!4511, !4512, !4513, !4518}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4509, file: !112, line: 145, baseType: !5, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4509, file: !112, line: 146, baseType: !111, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4509, file: !112, line: 147, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !112, line: 54, baseType: !4516)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!121, !305, !299, !4130}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4509, file: !112, line: 148, baseType: !338, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4120, file: !250, line: 564, baseType: !121, size: 32, offset: 2496)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4120, file: !250, line: 573, baseType: !3072, size: 64, offset: 2560)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !4120, file: !250, line: 579, baseType: !309, size: 128, offset: 2624)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "firstopen", scope: !4120, file: !250, line: 580, baseType: !4200, size: 64, offset: 2752)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "preclose", scope: !4120, file: !250, line: 581, baseType: !4184, size: 64, offset: 2816)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ioctl", scope: !4120, file: !250, line: 582, baseType: !4525, size: 64, offset: 2880)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_quiescent", scope: !4120, file: !250, line: 583, baseType: !4200, size: 64, offset: 2944)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "context_dtor", scope: !4120, file: !250, line: 584, baseType: !4528, size: 64, offset: 3008)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!121, !305, !121}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !4120, file: !250, line: 585, baseType: !4532, size: 64, offset: 3072)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!532, !305, !5}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !4120, file: !250, line: 586, baseType: !4536, size: 64, offset: 3136)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!121, !305, !5}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !4120, file: !250, line: 587, baseType: !4540, size: 64, offset: 3200)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !305, !5}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv_size", scope: !4120, file: !250, line: 588, baseType: !121, size: 32, offset: 3264)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !306, file: !173, line: 98, baseType: !299, size: 64, offset: 512)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !306, file: !173, line: 101, baseType: !4152, size: 64, offset: 576)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !306, file: !173, line: 104, baseType: !4152, size: 64, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !306, file: !173, line: 111, baseType: !607, size: 8, offset: 704)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !306, file: !173, line: 119, baseType: !4143, size: 64, offset: 768)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !306, file: !173, line: 129, baseType: !532, size: 32, offset: 832)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !306, file: !173, line: 137, baseType: !607, size: 8, offset: 864)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !306, file: !173, line: 140, baseType: !546, size: 64, offset: 896)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !306, file: !173, line: 143, baseType: !391, size: 64, offset: 960)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !306, file: !173, line: 153, baseType: !843, size: 192, offset: 1024)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !306, file: !173, line: 160, baseType: !843, size: 192, offset: 1216)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !306, file: !173, line: 168, baseType: !325, size: 32, offset: 1408)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !306, file: !173, line: 171, baseType: !843, size: 192, offset: 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !306, file: !173, line: 177, baseType: !309, size: 128, offset: 1664)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !306, file: !173, line: 185, baseType: !309, size: 128, offset: 1792)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !306, file: !173, line: 192, baseType: !843, size: 192, offset: 1920)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !306, file: !173, line: 199, baseType: !309, size: 128, offset: 2112)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !306, file: !173, line: 208, baseType: !607, size: 8, offset: 2240)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !306, file: !173, line: 213, baseType: !121, size: 32, offset: 2272)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !306, file: !173, line: 228, baseType: !607, size: 8, offset: 2304)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !306, file: !173, line: 238, baseType: !4565, size: 64, offset: 2368)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !4567, line: 91, size: 2304, elements: !4568)
!4567 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/lizy2001/genbc/linux")
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4619, !4620, !4642, !4643}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4566, file: !4567, line: 95, baseType: !305, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4566, file: !4567, line: 99, baseType: !1635, size: 128, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !4566, file: !4567, line: 106, baseType: !3757, size: 320, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !4566, file: !4567, line: 111, baseType: !2018, size: 32, offset: 512)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4566, file: !4567, line: 127, baseType: !849, size: 64, offset: 576)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4566, file: !4567, line: 131, baseType: !1449, size: 64, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4566, file: !4567, line: 138, baseType: !325, size: 32, offset: 704)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4566, file: !4567, line: 142, baseType: !532, size: 32, offset: 736)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4566, file: !4567, line: 162, baseType: !532, size: 32, offset: 768)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !4566, file: !4567, line: 171, baseType: !5, size: 32, offset: 800)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4566, file: !4567, line: 176, baseType: !5, size: 32, offset: 832)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !4566, file: !4567, line: 182, baseType: !121, size: 32, offset: 864)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !4566, file: !4567, line: 188, baseType: !121, size: 32, offset: 896)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4566, file: !4567, line: 199, baseType: !4583, size: 960, offset: 960)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !120, line: 224, size: 960, elements: !4584)
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4583, file: !120, line: 230, baseType: !121, size: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4583, file: !120, line: 231, baseType: !1018, size: 16, offset: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4583, file: !120, line: 232, baseType: !1018, size: 16, offset: 48)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4583, file: !120, line: 233, baseType: !1018, size: 16, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4583, file: !120, line: 234, baseType: !1018, size: 16, offset: 80)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4583, file: !120, line: 235, baseType: !1018, size: 16, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4583, file: !120, line: 236, baseType: !1018, size: 16, offset: 112)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4583, file: !120, line: 237, baseType: !1018, size: 16, offset: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4583, file: !120, line: 238, baseType: !1018, size: 16, offset: 144)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4583, file: !120, line: 239, baseType: !1018, size: 16, offset: 160)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4583, file: !120, line: 240, baseType: !1018, size: 16, offset: 176)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4583, file: !120, line: 275, baseType: !532, size: 32, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4583, file: !120, line: 292, baseType: !121, size: 32, offset: 224)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4583, file: !120, line: 293, baseType: !1018, size: 16, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4583, file: !120, line: 294, baseType: !1018, size: 16, offset: 272)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4583, file: !120, line: 295, baseType: !1018, size: 16, offset: 288)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4583, file: !120, line: 296, baseType: !1018, size: 16, offset: 304)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4583, file: !120, line: 297, baseType: !1018, size: 16, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4583, file: !120, line: 298, baseType: !1018, size: 16, offset: 336)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4583, file: !120, line: 299, baseType: !1018, size: 16, offset: 352)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4583, file: !120, line: 300, baseType: !1018, size: 16, offset: 368)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4583, file: !120, line: 301, baseType: !1018, size: 16, offset: 384)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4583, file: !120, line: 302, baseType: !1018, size: 16, offset: 400)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4583, file: !120, line: 303, baseType: !1018, size: 16, offset: 416)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4583, file: !120, line: 304, baseType: !1018, size: 16, offset: 432)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4583, file: !120, line: 305, baseType: !1018, size: 16, offset: 448)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4583, file: !120, line: 313, baseType: !1018, size: 16, offset: 464)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4583, file: !120, line: 321, baseType: !1018, size: 16, offset: 480)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4583, file: !120, line: 350, baseType: !1501, size: 8, offset: 496)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4583, file: !120, line: 361, baseType: !607, size: 8, offset: 504)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4583, file: !120, line: 368, baseType: !309, size: 128, offset: 512)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !120, line: 375, baseType: !2909, size: 256, offset: 640)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4583, file: !120, line: 383, baseType: !119, size: 32, offset: 896)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4583, file: !120, line: 390, baseType: !163, size: 32, offset: 928)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4566, file: !4567, line: 207, baseType: !607, size: 8, offset: 1920)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4566, file: !4567, line: 212, baseType: !4621, size: 64, offset: 1984)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4623, line: 89, size: 448, elements: !4624)
!4623 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4622, file: !4623, line: 90, baseType: !5, size: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4622, file: !4623, line: 91, baseType: !939, offset: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4622, file: !4623, line: 92, baseType: !309, size: 128, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4622, file: !4623, line: 93, baseType: !309, size: 128, offset: 192)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4622, file: !4623, line: 94, baseType: !1370, size: 64, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4622, file: !4623, line: 95, baseType: !4631, size: 64, offset: 384)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4623, line: 98, size: 320, elements: !4633)
!4633 = !{!4634, !4635, !4640, !4641}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4632, file: !4623, line: 99, baseType: !309, size: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4632, file: !4623, line: 100, baseType: !4636, size: 64, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4623, line: 82, baseType: !4637)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !4631}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4632, file: !4623, line: 101, baseType: !4621, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4632, file: !4623, line: 103, baseType: !121, size: 32, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4566, file: !4567, line: 218, baseType: !309, size: 128, offset: 2048)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !4566, file: !4567, line: 225, baseType: !1635, size: 128, offset: 2176)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !306, file: !173, line: 245, baseType: !350, offset: 2432)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !306, file: !173, line: 250, baseType: !350, offset: 2432)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !306, file: !173, line: 273, baseType: !532, size: 32, offset: 2432)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !306, file: !173, line: 276, baseType: !309, size: 128, offset: 2496)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !306, file: !173, line: 284, baseType: !350, offset: 2624)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !306, file: !173, line: 287, baseType: !4650, size: 64, offset: 2624)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !173, line: 287, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !306, file: !173, line: 290, baseType: !4653, size: 64, offset: 2688)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4655, line: 290, flags: DIFlagFwdDecl)
!4655 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !306, file: !173, line: 297, baseType: !5, size: 32, offset: 2752)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !306, file: !173, line: 300, baseType: !4658, size: 8384, offset: 2816)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4659, line: 358, size: 8384, elements: !4660)
!4659 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4660 = !{!4661, !4662, !4668, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4690, !4691, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4861, !4863, !4864, !4865, !4866, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4658, file: !4659, line: 369, baseType: !843, size: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4658, file: !4659, line: 379, baseType: !4663, size: 384, offset: 192)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4664, line: 76, size: 384, elements: !4665)
!4664 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4665 = !{!4666, !4667}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4663, file: !4664, line: 80, baseType: !4278, size: 256)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4663, file: !4664, line: 86, baseType: !309, size: 128, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4658, file: !4659, line: 389, baseType: !4669, size: 64, offset: 576)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4664, line: 43, size: 448, elements: !4671)
!4671 = !{!4672, !4673, !4675, !4676, !4677}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4670, file: !4664, line: 45, baseType: !4283, size: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4670, file: !4664, line: 52, baseType: !4674, size: 64, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4670, file: !4664, line: 57, baseType: !309, size: 128, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4670, file: !4664, line: 62, baseType: !607, size: 8, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4670, file: !4664, line: 65, baseType: !607, size: 8, offset: 392)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4658, file: !4659, line: 397, baseType: !843, size: 192, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4658, file: !4659, line: 405, baseType: !1654, size: 192, offset: 832)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4658, file: !4659, line: 413, baseType: !1654, size: 192, offset: 1024)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4658, file: !4659, line: 416, baseType: !843, size: 192, offset: 1216)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4658, file: !4659, line: 418, baseType: !121, size: 32, offset: 1408)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4658, file: !4659, line: 420, baseType: !309, size: 128, offset: 1472)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4658, file: !4659, line: 426, baseType: !350, offset: 1600)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4658, file: !4659, line: 431, baseType: !121, size: 32, offset: 1600)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4658, file: !4659, line: 435, baseType: !4687, size: 128, offset: 1664)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1655, line: 244, size: 128, elements: !4688)
!4688 = !{!4689}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4687, file: !1655, line: 245, baseType: !908, size: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4658, file: !4659, line: 443, baseType: !309, size: 128, offset: 1792)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4658, file: !4659, line: 453, baseType: !4692, size: 64, offset: 1920)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !477, line: 54, size: 64, elements: !4693)
!4693 = !{!4694}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4692, file: !477, line: 55, baseType: !480, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4658, file: !4659, line: 457, baseType: !2166, size: 256, offset: 1984)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4658, file: !4659, line: 465, baseType: !121, size: 32, offset: 2240)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4658, file: !4659, line: 473, baseType: !309, size: 128, offset: 2304)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4658, file: !4659, line: 482, baseType: !121, size: 32, offset: 2432)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4658, file: !4659, line: 489, baseType: !309, size: 128, offset: 2496)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4658, file: !4659, line: 497, baseType: !121, size: 32, offset: 2624)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4658, file: !4659, line: 504, baseType: !309, size: 128, offset: 2688)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4658, file: !4659, line: 513, baseType: !309, size: 128, offset: 2816)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4658, file: !4659, line: 522, baseType: !309, size: 128, offset: 2944)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4658, file: !4659, line: 524, baseType: !121, size: 32, offset: 3072)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4658, file: !4659, line: 524, baseType: !121, size: 32, offset: 3104)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4658, file: !4659, line: 525, baseType: !121, size: 32, offset: 3136)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4658, file: !4659, line: 525, baseType: !121, size: 32, offset: 3168)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4658, file: !4659, line: 526, baseType: !4709, size: 64, offset: 3200)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4711)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4659, line: 47, size: 576, elements: !4712)
!4712 = !{!4713, !4831, !4835, !4836, !4842, !4848, !4852, !4856, !4860}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4711, file: !4659, line: 77, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!4717, !305, !4130, !4816}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4719, line: 117, size: 1600, elements: !4720)
!4719 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!4720 = !{!4721, !4722, !4723, !4758, !4759, !4780, !4804, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4718, file: !4719, line: 121, baseType: !305, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4718, file: !4719, line: 126, baseType: !309, size: 128, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4718, file: !4719, line: 131, baseType: !4724, size: 256, offset: 192)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4725, line: 55, size: 256, elements: !4726)
!4725 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!4726 = !{!4727, !4728, !4729, !4752, !4753}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4724, file: !4725, line: 56, baseType: !676, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4724, file: !4725, line: 57, baseType: !676, size: 32, offset: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4724, file: !4725, line: 58, baseType: !4730, size: 64, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4725, line: 67, size: 3136, elements: !4732)
!4732 = !{!4733, !4734, !4750}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4731, file: !4725, line: 73, baseType: !121, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4731, file: !4725, line: 82, baseType: !4735, size: 1536, offset: 64)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4736, size: 1536, elements: !4748)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4738, line: 73, size: 960, elements: !4739)
!4738 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/lizy2001/genbc/linux")
!4739 = !{!4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4737, file: !4738, line: 77, baseType: !309, size: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4737, file: !4738, line: 82, baseType: !4724, size: 256, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4737, file: !4738, line: 159, baseType: !676, size: 32, offset: 384)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4737, file: !4738, line: 164, baseType: !2909, size: 256, offset: 416)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4737, file: !4738, line: 169, baseType: !676, size: 32, offset: 672)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4737, file: !4738, line: 177, baseType: !4492, size: 64, offset: 704)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4737, file: !4738, line: 182, baseType: !305, size: 64, offset: 768)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4737, file: !4738, line: 190, baseType: !309, size: 128, offset: 832)
!4748 = !{!4749}
!4749 = !DISubrange(count: 24)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4731, file: !4725, line: 102, baseType: !4751, size: 1536, offset: 1600)
!4751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4493, size: 1536, elements: !4748)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4724, file: !4725, line: 59, baseType: !317, size: 32, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4724, file: !4725, line: 60, baseType: !4754, size: 64, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{null, !4757}
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4718, file: !4719, line: 136, baseType: !1919, size: 128, offset: 448)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4718, file: !4719, line: 141, baseType: !4760, size: 64, offset: 576)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4762)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4763, line: 56, size: 192, elements: !4764)
!4763 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/lizy2001/genbc/linux")
!4764 = !{!4765, !4766, !4767, !4768, !4774, !4775, !4776, !4777, !4778, !4779}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4762, file: !4763, line: 58, baseType: !532, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4762, file: !4763, line: 67, baseType: !1501, size: 8, offset: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !4762, file: !4763, line: 70, baseType: !1501, size: 8, offset: 40)
!4768 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !4763, line: 72, baseType: !4769, size: 32, offset: 48)
!4769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4762, file: !4763, line: 72, size: 32, elements: !4770)
!4770 = !{!4771, !4773}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !4769, file: !4763, line: 81, baseType: !4772, size: 32)
!4772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 32, elements: !1315)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !4769, file: !4763, line: 107, baseType: !4772, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !4762, file: !4763, line: 116, baseType: !4772, size: 32, offset: 80)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !4762, file: !4763, line: 124, baseType: !4772, size: 32, offset: 112)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !4762, file: !4763, line: 127, baseType: !1501, size: 8, offset: 144)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !4762, file: !4763, line: 129, baseType: !1501, size: 8, offset: 152)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !4762, file: !4763, line: 132, baseType: !607, size: 8, offset: 160)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !4762, file: !4763, line: 135, baseType: !607, size: 8, offset: 168)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4718, file: !4719, line: 145, baseType: !4781, size: 64, offset: 640)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4783)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4719, line: 42, size: 192, elements: !4784)
!4784 = !{!4785, !4789, !4793}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4783, file: !4719, line: 53, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !4717}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4783, file: !4719, line: 73, baseType: !4790, size: 64, offset: 64)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!121, !4717, !4130, !2892}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4783, file: !4719, line: 97, baseType: !4794, size: 64, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!121, !4717, !4130, !5, !5, !4797, !5}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4149, line: 97, size: 64, elements: !4799)
!4799 = !{!4800, !4801, !4802, !4803}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4798, file: !4149, line: 98, baseType: !433, size: 16)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4798, file: !4149, line: 99, baseType: !433, size: 16, offset: 16)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4798, file: !4149, line: 100, baseType: !433, size: 16, offset: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4798, file: !4149, line: 101, baseType: !433, size: 16, offset: 48)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4718, file: !4719, line: 150, baseType: !4805, size: 128, offset: 704)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !1315)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4718, file: !4719, line: 168, baseType: !4805, size: 128, offset: 832)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4718, file: !4719, line: 175, baseType: !4493, size: 64, offset: 960)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4718, file: !4719, line: 180, baseType: !5, size: 32, offset: 1024)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4718, file: !4719, line: 185, baseType: !5, size: 32, offset: 1056)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4718, file: !4719, line: 190, baseType: !121, size: 32, offset: 1088)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4718, file: !4719, line: 196, baseType: !121, size: 32, offset: 1120)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4718, file: !4719, line: 202, baseType: !121, size: 32, offset: 1152)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4718, file: !4719, line: 206, baseType: !309, size: 128, offset: 1216)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4718, file: !4719, line: 213, baseType: !4815, size: 256, offset: 1344)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4217, size: 256, elements: !1315)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4818)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !221, line: 494, size: 832, elements: !4819)
!4819 = !{!4820, !4821, !4822, !4823, !4824, !4825, !4827, !4828, !4829}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4818, file: !221, line: 495, baseType: !534, size: 32)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4818, file: !221, line: 496, baseType: !534, size: 32, offset: 32)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4818, file: !221, line: 497, baseType: !534, size: 32, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4818, file: !221, line: 498, baseType: !534, size: 32, offset: 96)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4818, file: !221, line: 499, baseType: !534, size: 32, offset: 128)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4818, file: !221, line: 525, baseType: !4826, size: 128, offset: 160)
!4826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 128, elements: !1315)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4818, file: !221, line: 526, baseType: !4826, size: 128, offset: 288)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4818, file: !221, line: 527, baseType: !4826, size: 128, offset: 416)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4818, file: !221, line: 528, baseType: !4830, size: 256, offset: 576)
!4830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 256, elements: !1315)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4711, file: !4659, line: 92, baseType: !4832, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!4760, !4816}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4711, file: !4659, line: 109, baseType: !4188, size: 64, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4711, file: !4659, line: 119, baseType: !4837, size: 64, offset: 192)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!119, !305, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4711, file: !4659, line: 196, baseType: !4843, size: 64, offset: 256)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!121, !305, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !198, line: 642, flags: DIFlagFwdDecl)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4711, file: !4659, line: 278, baseType: !4849, size: 64, offset: 320)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!121, !305, !4846, !607}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4711, file: !4659, line: 297, baseType: !4853, size: 64, offset: 384)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!4846, !305}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4711, file: !4659, line: 318, baseType: !4857, size: 64, offset: 448)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !4846}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4711, file: !4659, line: 333, baseType: !4857, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4658, file: !4659, line: 527, baseType: !4862, size: 64, offset: 3264)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !310, line: 158, baseType: !2334)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4658, file: !4659, line: 530, baseType: !607, size: 8, offset: 3328)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4658, file: !4659, line: 531, baseType: !607, size: 8, offset: 3336)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4658, file: !4659, line: 532, baseType: !607, size: 8, offset: 3344)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4658, file: !4659, line: 533, baseType: !4867, size: 704, offset: 3392)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2167, line: 115, size: 704, elements: !4868)
!4868 = !{!4869, !4870, !4871, !4872}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4867, file: !2167, line: 116, baseType: !2166, size: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4867, file: !2167, line: 117, baseType: !3757, size: 320, offset: 256)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4867, file: !2167, line: 120, baseType: !3002, size: 64, offset: 576)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4867, file: !2167, line: 121, baseType: !121, size: 32, offset: 640)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4658, file: !4659, line: 541, baseType: !843, size: 192, offset: 4096)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4658, file: !4659, line: 549, baseType: !309, size: 128, offset: 4288)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4658, file: !4659, line: 557, baseType: !4736, size: 64, offset: 4416)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4658, file: !4659, line: 562, baseType: !4736, size: 64, offset: 4480)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4658, file: !4659, line: 567, baseType: !4736, size: 64, offset: 4544)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4658, file: !4659, line: 573, baseType: !4736, size: 64, offset: 4608)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4658, file: !4659, line: 578, baseType: !4736, size: 64, offset: 4672)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4658, file: !4659, line: 583, baseType: !4736, size: 64, offset: 4736)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4658, file: !4659, line: 588, baseType: !4736, size: 64, offset: 4800)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4658, file: !4659, line: 593, baseType: !4736, size: 64, offset: 4864)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4658, file: !4659, line: 598, baseType: !4736, size: 64, offset: 4928)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4658, file: !4659, line: 603, baseType: !4736, size: 64, offset: 4992)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4658, file: !4659, line: 608, baseType: !4736, size: 64, offset: 5056)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4658, file: !4659, line: 613, baseType: !4736, size: 64, offset: 5120)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4658, file: !4659, line: 618, baseType: !4736, size: 64, offset: 5184)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4658, file: !4659, line: 623, baseType: !4736, size: 64, offset: 5248)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4658, file: !4659, line: 628, baseType: !4736, size: 64, offset: 5312)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4658, file: !4659, line: 633, baseType: !4736, size: 64, offset: 5376)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4658, file: !4659, line: 639, baseType: !4736, size: 64, offset: 5440)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4658, file: !4659, line: 644, baseType: !4736, size: 64, offset: 5504)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4658, file: !4659, line: 653, baseType: !4736, size: 64, offset: 5568)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4658, file: !4659, line: 659, baseType: !4736, size: 64, offset: 5632)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4658, file: !4659, line: 665, baseType: !4736, size: 64, offset: 5696)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4658, file: !4659, line: 670, baseType: !4736, size: 64, offset: 5760)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4658, file: !4659, line: 676, baseType: !4736, size: 64, offset: 5824)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4658, file: !4659, line: 681, baseType: !4736, size: 64, offset: 5888)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4658, file: !4659, line: 687, baseType: !4736, size: 64, offset: 5952)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4658, file: !4659, line: 693, baseType: !4736, size: 64, offset: 6016)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4658, file: !4659, line: 698, baseType: !4736, size: 64, offset: 6080)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4658, file: !4659, line: 703, baseType: !4736, size: 64, offset: 6144)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4658, file: !4659, line: 708, baseType: !4736, size: 64, offset: 6208)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4658, file: !4659, line: 713, baseType: !4736, size: 64, offset: 6272)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4658, file: !4659, line: 718, baseType: !4736, size: 64, offset: 6336)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4658, file: !4659, line: 723, baseType: !4736, size: 64, offset: 6400)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4658, file: !4659, line: 728, baseType: !4736, size: 64, offset: 6464)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4658, file: !4659, line: 733, baseType: !4736, size: 64, offset: 6528)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4658, file: !4659, line: 738, baseType: !4736, size: 64, offset: 6592)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4658, file: !4659, line: 743, baseType: !4736, size: 64, offset: 6656)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4658, file: !4659, line: 748, baseType: !4736, size: 64, offset: 6720)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4658, file: !4659, line: 752, baseType: !4736, size: 64, offset: 6784)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4658, file: !4659, line: 758, baseType: !4736, size: 64, offset: 6848)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4658, file: !4659, line: 763, baseType: !4736, size: 64, offset: 6912)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4658, file: !4659, line: 768, baseType: !4736, size: 64, offset: 6976)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4658, file: !4659, line: 773, baseType: !4736, size: 64, offset: 7040)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4658, file: !4659, line: 778, baseType: !4736, size: 64, offset: 7104)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4658, file: !4659, line: 784, baseType: !4736, size: 64, offset: 7168)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4658, file: !4659, line: 790, baseType: !4736, size: 64, offset: 7232)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4658, file: !4659, line: 795, baseType: !4736, size: 64, offset: 7296)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4658, file: !4659, line: 801, baseType: !4736, size: 64, offset: 7360)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4658, file: !4659, line: 806, baseType: !4736, size: 64, offset: 7424)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4658, file: !4659, line: 813, baseType: !4736, size: 64, offset: 7488)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4658, file: !4659, line: 820, baseType: !4736, size: 64, offset: 7552)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4658, file: !4659, line: 827, baseType: !4736, size: 64, offset: 7616)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4658, file: !4659, line: 835, baseType: !4736, size: 64, offset: 7680)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4658, file: !4659, line: 843, baseType: !4736, size: 64, offset: 7744)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4658, file: !4659, line: 850, baseType: !4736, size: 64, offset: 7808)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4658, file: !4659, line: 856, baseType: !4736, size: 64, offset: 7872)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4658, file: !4659, line: 862, baseType: !4736, size: 64, offset: 7936)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4658, file: !4659, line: 865, baseType: !676, size: 32, offset: 8000)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4658, file: !4659, line: 865, baseType: !676, size: 32, offset: 8032)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4658, file: !4659, line: 872, baseType: !607, size: 8, offset: 8064)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4658, file: !4659, line: 884, baseType: !607, size: 8, offset: 8072)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4658, file: !4659, line: 892, baseType: !607, size: 8, offset: 8080)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4658, file: !4659, line: 906, baseType: !607, size: 8, offset: 8088)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4658, file: !4659, line: 912, baseType: !607, size: 8, offset: 8096)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4658, file: !4659, line: 919, baseType: !607, size: 8, offset: 8104)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4658, file: !4659, line: 927, baseType: !607, size: 8, offset: 8112)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4658, file: !4659, line: 933, baseType: !4736, size: 64, offset: 8128)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4658, file: !4659, line: 936, baseType: !676, size: 32, offset: 8192)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4658, file: !4659, line: 936, baseType: !676, size: 32, offset: 8224)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4658, file: !4659, line: 945, baseType: !4846, size: 64, offset: 8256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4658, file: !4659, line: 947, baseType: !4945, size: 64, offset: 8320)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4947)
!4947 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4659, line: 947, flags: DIFlagFwdDecl)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !306, file: !173, line: 303, baseType: !843, size: 192, offset: 11200)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !306, file: !173, line: 306, baseType: !1654, size: 192, offset: 11392)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !306, file: !173, line: 309, baseType: !4951, size: 64, offset: 11584)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4227, line: 59, size: 1920, elements: !4953)
!4953 = !{!4954, !4955}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4952, file: !4227, line: 60, baseType: !3180)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !4952, file: !4227, line: 61, baseType: !4239, size: 1920)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !306, file: !173, line: 312, baseType: !4957, size: 64, offset: 11648)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !173, line: 20, flags: DIFlagFwdDecl)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !306, file: !173, line: 322, baseType: !172, size: 32, offset: 11712)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !306, file: !173, line: 330, baseType: !4961, size: 64, offset: 11776)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !173, line: 21, flags: DIFlagFwdDecl)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !302, line: 79, baseType: !338, size: 64, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !301, file: !302, line: 87, baseType: !309, size: 128, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !301, file: !302, line: 92, baseType: !4966, size: 64, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4968)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_client_funcs", file: !302, line: 24, size: 256, elements: !4969)
!4969 = !{!4970, !4971, !4975, !4979}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4968, file: !302, line: 28, baseType: !750, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "unregister", scope: !4968, file: !302, line: 38, baseType: !4972, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !300}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4968, file: !302, line: 54, baseType: !4976, size: 64, offset: 128)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!121, !300}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4968, file: !302, line: 64, baseType: !4976, size: 64, offset: 192)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !301, file: !302, line: 97, baseType: !4130, size: 64, offset: 320)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "modeset_mutex", scope: !301, file: !302, line: 102, baseType: !843, size: 192, offset: 384)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "modesets", scope: !301, file: !302, line: 107, baseType: !4983, size: 64, offset: 576)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4985, line: 1190, size: 384, elements: !4986)
!4985 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/lizy2001/genbc/linux")
!4986 = !{!4987, !4988, !5347, !5349, !5350, !5351, !5733}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4984, file: !4985, line: 1191, baseType: !4717, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4984, file: !4985, line: 1192, baseType: !4989, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4985, line: 939, size: 7680, elements: !4991)
!4991 = !{!4992, !4993, !4994, !4995, !4996, !4997, !4998, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5307, !5308, !5310, !5314, !5315, !5316, !5317, !5318, !5340, !5341, !5342, !5343, !5344}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4990, file: !4985, line: 941, baseType: !305, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4990, file: !4985, line: 943, baseType: !3859, size: 64, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4990, file: !4985, line: 951, baseType: !309, size: 128, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4990, file: !4985, line: 954, baseType: !391, size: 64, offset: 256)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4990, file: !4985, line: 966, baseType: !4663, size: 384, offset: 320)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4990, file: !4985, line: 969, baseType: !4724, size: 256, offset: 704)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4990, file: !4985, line: 978, baseType: !4999, size: 64, offset: 960)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !192, line: 575, size: 5184, elements: !5001)
!5001 = !{!5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5116, !5117, !5118, !5119, !5123, !5124, !5125, !5126, !5127, !5128, !5129}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5000, file: !192, line: 577, baseType: !305, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5000, file: !192, line: 586, baseType: !309, size: 128, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5000, file: !192, line: 589, baseType: !391, size: 64, offset: 192)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5000, file: !192, line: 600, baseType: !4663, size: 384, offset: 256)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5000, file: !192, line: 603, baseType: !4724, size: 256, offset: 640)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5000, file: !192, line: 609, baseType: !676, size: 32, offset: 896)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5000, file: !192, line: 611, baseType: !4458, size: 64, offset: 960)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5000, file: !192, line: 613, baseType: !5, size: 32, offset: 1024)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5000, file: !192, line: 618, baseType: !607, size: 8, offset: 1056)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5000, file: !192, line: 621, baseType: !4492, size: 64, offset: 1088)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5000, file: !192, line: 623, baseType: !5, size: 32, offset: 1152)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5000, file: !192, line: 632, baseType: !4989, size: 64, offset: 1216)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5000, file: !192, line: 641, baseType: !4717, size: 64, offset: 1280)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5000, file: !192, line: 649, baseType: !4717, size: 64, offset: 1344)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5000, file: !192, line: 652, baseType: !5017, size: 64, offset: 1408)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5019)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !192, line: 256, size: 832, elements: !5020)
!5020 = !{!5021, !5025, !5029, !5033, !5034, !5038, !5089, !5093, !5097, !5103, !5107, !5108, !5112}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5019, file: !192, line: 283, baseType: !5022, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!121, !4999, !4989, !4717, !121, !121, !5, !5, !676, !676, !676, !676, !4669}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5019, file: !192, line: 306, baseType: !5026, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!121, !4999, !4669}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5019, file: !192, line: 316, baseType: !5030, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{null, !4999}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5019, file: !192, line: 328, baseType: !5030, size: 64, offset: 192)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5019, file: !192, line: 344, baseType: !5035, size: 64, offset: 256)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!121, !4999, !4736, !4493}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5019, file: !192, line: 378, baseType: !5039, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!5042, !4999}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !192, line: 47, size: 1216, elements: !5044)
!5044 = !{!5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5060, !5061, !5062, !5063, !5064, !5065, !5075, !5083, !5084, !5085, !5088}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5043, file: !192, line: 49, baseType: !4999, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5043, file: !192, line: 57, baseType: !4989, size: 64, offset: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5043, file: !192, line: 65, baseType: !4717, size: 64, offset: 128)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5043, file: !192, line: 80, baseType: !4297, size: 64, offset: 192)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5043, file: !192, line: 89, baseType: !1771, size: 32, offset: 256)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5043, file: !192, line: 96, baseType: !1771, size: 32, offset: 288)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5043, file: !192, line: 100, baseType: !676, size: 32, offset: 320)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5043, file: !192, line: 100, baseType: !676, size: 32, offset: 352)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5043, file: !192, line: 106, baseType: !676, size: 32, offset: 384)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5043, file: !192, line: 111, baseType: !676, size: 32, offset: 416)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5043, file: !192, line: 114, baseType: !676, size: 32, offset: 448)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5043, file: !192, line: 114, baseType: !676, size: 32, offset: 480)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5043, file: !192, line: 122, baseType: !1018, size: 16, offset: 512)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5043, file: !192, line: 130, baseType: !5059, size: 16, offset: 528)
!5059 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !310, line: 103, baseType: !1018)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5043, file: !192, line: 137, baseType: !5, size: 32, offset: 544)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5043, file: !192, line: 152, baseType: !5, size: 32, offset: 576)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5043, file: !192, line: 161, baseType: !5, size: 32, offset: 608)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5043, file: !192, line: 168, baseType: !179, size: 32, offset: 640)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5043, file: !192, line: 175, baseType: !186, size: 32, offset: 672)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5043, file: !192, line: 185, baseType: !5066, size: 64, offset: 704)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4738, line: 209, size: 704, elements: !5068)
!5068 = !{!5069, !5070, !5071, !5072, !5073, !5074}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5067, file: !4738, line: 210, baseType: !4724, size: 256)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5067, file: !4738, line: 211, baseType: !305, size: 64, offset: 256)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5067, file: !4738, line: 212, baseType: !309, size: 128, offset: 320)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5067, file: !4738, line: 213, baseType: !309, size: 128, offset: 448)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5067, file: !4738, line: 214, baseType: !438, size: 64, offset: 576)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5067, file: !4738, line: 215, baseType: !299, size: 64, offset: 640)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5043, file: !192, line: 207, baseType: !5076, size: 128, offset: 768)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5077, line: 43, size: 128, elements: !5078)
!5077 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!5078 = !{!5079, !5080, !5081, !5082}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5076, file: !5077, line: 44, baseType: !121, size: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5076, file: !5077, line: 44, baseType: !121, size: 32, offset: 32)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5076, file: !5077, line: 44, baseType: !121, size: 32, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5076, file: !5077, line: 44, baseType: !121, size: 32, offset: 96)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5043, file: !192, line: 207, baseType: !5076, size: 128, offset: 896)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5043, file: !192, line: 215, baseType: !607, size: 8, offset: 1024)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5043, file: !192, line: 223, baseType: !5086, size: 64, offset: 1088)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !198, line: 649, flags: DIFlagFwdDecl)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5043, file: !192, line: 226, baseType: !4846, size: 64, offset: 1152)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5019, file: !192, line: 388, baseType: !5090, size: 64, offset: 384)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{null, !4999, !5042}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5019, file: !192, line: 433, baseType: !5094, size: 64, offset: 448)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!121, !4999, !5042, !4736, !4493}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5019, file: !192, line: 456, baseType: !5098, size: 64, offset: 512)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!121, !4999, !5101, !4736, !4492}
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5043)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5019, file: !192, line: 473, baseType: !5104, size: 64, offset: 576)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!121, !4999}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5019, file: !192, line: 484, baseType: !5030, size: 64, offset: 640)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5019, file: !192, line: 495, baseType: !5109, size: 64, offset: 704)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{null, !4370, !5101}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5019, file: !192, line: 514, baseType: !5113, size: 64, offset: 768)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!607, !4999, !676, !4493}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5000, file: !192, line: 655, baseType: !4731, size: 3136, offset: 1472)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5000, file: !192, line: 658, baseType: !191, size: 32, offset: 4608)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5000, file: !192, line: 664, baseType: !5, size: 32, offset: 4640)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5000, file: !192, line: 667, baseType: !5120, size: 64, offset: 4672)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5122)
!5122 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !192, line: 667, flags: DIFlagFwdDecl)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5000, file: !192, line: 682, baseType: !5042, size: 64, offset: 4736)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5000, file: !192, line: 689, baseType: !4736, size: 64, offset: 4800)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5000, file: !192, line: 695, baseType: !4736, size: 64, offset: 4864)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5000, file: !192, line: 701, baseType: !4736, size: 64, offset: 4928)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5000, file: !192, line: 709, baseType: !4736, size: 64, offset: 4992)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5000, file: !192, line: 718, baseType: !4736, size: 64, offset: 5056)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5000, file: !192, line: 726, baseType: !4736, size: 64, offset: 5120)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4990, file: !4985, line: 987, baseType: !4999, size: 64, offset: 1024)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4990, file: !4985, line: 993, baseType: !5, size: 32, offset: 1088)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4990, file: !4985, line: 1002, baseType: !121, size: 32, offset: 1120)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4990, file: !4985, line: 1010, baseType: !121, size: 32, offset: 1152)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4990, file: !4985, line: 1020, baseType: !607, size: 8, offset: 1184)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4990, file: !4985, line: 1030, baseType: !4583, size: 960, offset: 1216)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4990, file: !4985, line: 1046, baseType: !4583, size: 960, offset: 2176)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4990, file: !4985, line: 1055, baseType: !121, size: 32, offset: 3136)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4990, file: !4985, line: 1063, baseType: !121, size: 32, offset: 3168)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4990, file: !4985, line: 1066, baseType: !5140, size: 64, offset: 3200)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5142)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4985, line: 409, size: 1536, elements: !5143)
!5143 = !{!5144, !5148, !5152, !5156, !5160, !5165, !5166, !5170, !5217, !5221, !5225, !5258, !5262, !5266, !5272, !5276, !5277, !5281, !5286, !5292, !5296, !5300, !5301, !5302}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5142, file: !4985, line: 420, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !4989}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5142, file: !4985, line: 443, baseType: !5149, size: 64, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!121, !4989, !4130, !676, !676, !676}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5142, file: !4985, line: 465, baseType: !5153, size: 64, offset: 128)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!121, !4989, !4130, !676, !676, !676, !1771, !1771}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5142, file: !4985, line: 485, baseType: !5157, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!121, !4989, !121, !121}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5142, file: !4985, line: 500, baseType: !5161, size: 64, offset: 256)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!121, !4989, !5164, !5164, !5164, !676, !4669}
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5142, file: !4985, line: 511, baseType: !5145, size: 64, offset: 320)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5142, file: !4985, line: 527, baseType: !5167, size: 64, offset: 384)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!121, !4983, !4669}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5142, file: !4985, line: 583, baseType: !5171, size: 64, offset: 448)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!121, !4989, !4717, !5174, !676, !4669}
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4567, line: 42, size: 960, elements: !5176)
!5176 = !{!5177, !5195, !5196, !5197}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5175, file: !4567, line: 46, baseType: !5178, size: 576)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_event", file: !4132, line: 90, size: 576, elements: !5179)
!5179 = !{!5180, !5181, !5185, !5191, !5192, !5193, !5194}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5178, file: !4132, line: 98, baseType: !1688, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "completion_release", scope: !5178, file: !4132, line: 107, baseType: !5182, size: 64, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{null, !1688}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5178, file: !4132, line: 117, baseType: !5186, size: 64, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event", file: !4149, line: 976, size: 64, elements: !5188)
!5188 = !{!5189, !5190}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5187, file: !4149, line: 977, baseType: !534, size: 32)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5187, file: !4149, line: 978, baseType: !534, size: 32, offset: 32)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5178, file: !4132, line: 125, baseType: !4297, size: 64, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "file_priv", scope: !5178, file: !4132, line: 133, baseType: !4130, size: 64, offset: 256)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5178, file: !4132, line: 142, baseType: !309, size: 128, offset: 320)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pending_link", scope: !5178, file: !4132, line: 151, baseType: !309, size: 128, offset: 448)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5175, file: !4567, line: 50, baseType: !5, size: 32, offset: 576)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5175, file: !4567, line: 54, baseType: !538, size: 64, offset: 640)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5175, file: !4567, line: 78, baseType: !5198, size: 256, offset: 704)
!5198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5175, file: !4567, line: 58, size: 256, elements: !5199)
!5199 = !{!5200, !5201, !5210}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5198, file: !4567, line: 62, baseType: !5187, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "vbl", scope: !5198, file: !4567, line: 72, baseType: !5202, size: 256)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_vblank", file: !4149, line: 985, size: 256, elements: !5203)
!5203 = !{!5204, !5205, !5206, !5207, !5208, !5209}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5202, file: !4149, line: 986, baseType: !5187, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !5202, file: !4149, line: 987, baseType: !539, size: 64, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5202, file: !4149, line: 988, baseType: !534, size: 32, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !5202, file: !4149, line: 989, baseType: !534, size: 32, offset: 160)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5202, file: !4149, line: 990, baseType: !534, size: 32, offset: 192)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_id", scope: !5202, file: !4149, line: 991, baseType: !534, size: 32, offset: 224)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5198, file: !4567, line: 77, baseType: !5211, size: 256)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_crtc_sequence", file: !4149, line: 997, size: 256, elements: !5212)
!5212 = !{!5213, !5214, !5215, !5216}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5211, file: !4149, line: 998, baseType: !5187, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !5211, file: !4149, line: 999, baseType: !539, size: 64, offset: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5211, file: !4149, line: 1000, baseType: !657, size: 64, offset: 128)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5211, file: !4149, line: 1001, baseType: !539, size: 64, offset: 192)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5142, file: !4985, line: 602, baseType: !5218, size: 64, offset: 512)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!121, !4989, !4717, !5174, !676, !676, !4669}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5142, file: !4985, line: 622, baseType: !5222, size: 64, offset: 576)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!121, !4989, !4736, !4493}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5142, file: !4985, line: 656, baseType: !5226, size: 64, offset: 640)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!5229, !4989}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4985, line: 99, size: 2624, elements: !5231)
!5231 = !{!5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5230, file: !4985, line: 101, baseType: !4989, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5230, file: !4985, line: 108, baseType: !607, size: 8, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5230, file: !4985, line: 123, baseType: !607, size: 8, offset: 72)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5230, file: !4985, line: 129, baseType: !607, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5230, file: !4985, line: 141, baseType: !607, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5230, file: !4985, line: 148, baseType: !607, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5230, file: !4985, line: 159, baseType: !607, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5230, file: !4985, line: 165, baseType: !607, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5230, file: !4985, line: 171, baseType: !607, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5230, file: !4985, line: 207, baseType: !607, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5230, file: !4985, line: 213, baseType: !532, size: 32, offset: 96)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5230, file: !4985, line: 219, baseType: !532, size: 32, offset: 128)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5230, file: !4985, line: 225, baseType: !532, size: 32, offset: 160)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5230, file: !4985, line: 240, baseType: !4583, size: 960, offset: 192)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5230, file: !4985, line: 257, baseType: !4583, size: 960, offset: 1152)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5230, file: !4985, line: 263, baseType: !5066, size: 64, offset: 2112)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5230, file: !4985, line: 272, baseType: !5066, size: 64, offset: 2176)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5230, file: !4985, line: 280, baseType: !5066, size: 64, offset: 2240)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5230, file: !4985, line: 289, baseType: !5066, size: 64, offset: 2304)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5230, file: !4985, line: 297, baseType: !532, size: 32, offset: 2368)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5230, file: !4985, line: 305, baseType: !607, size: 8, offset: 2400)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5230, file: !4985, line: 314, baseType: !607, size: 8, offset: 2408)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5230, file: !4985, line: 325, baseType: !607, size: 8, offset: 2416)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5230, file: !4985, line: 382, baseType: !5174, size: 64, offset: 2432)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5230, file: !4985, line: 391, baseType: !5086, size: 64, offset: 2496)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5230, file: !4985, line: 394, baseType: !4846, size: 64, offset: 2560)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5142, file: !4985, line: 666, baseType: !5259, size: 64, offset: 704)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !4989, !5229}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5142, file: !4985, line: 711, baseType: !5263, size: 64, offset: 768)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!121, !4989, !5229, !4736, !4493}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5142, file: !4985, line: 733, baseType: !5267, size: 64, offset: 832)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!121, !4989, !5270, !4736, !4492}
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5230)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5142, file: !4985, line: 751, baseType: !5273, size: 64, offset: 896)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!121, !4989}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5142, file: !4985, line: 762, baseType: !5145, size: 64, offset: 960)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5142, file: !4985, line: 791, baseType: !5278, size: 64, offset: 1024)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!121, !4989, !338}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5142, file: !4985, line: 807, baseType: !5282, size: 64, offset: 1088)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!121, !4989, !338, !5285}
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5142, file: !4985, line: 829, baseType: !5287, size: 64, offset: 1152)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!5290, !4989, !5285}
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5142, file: !4985, line: 841, baseType: !5293, size: 64, offset: 1216)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !4370, !5270}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5142, file: !4985, line: 868, baseType: !5297, size: 64, offset: 1280)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!532, !4989}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5142, file: !4985, line: 881, baseType: !5273, size: 64, offset: 1344)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5142, file: !4985, line: 889, baseType: !5145, size: 64, offset: 1408)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5142, file: !4985, line: 927, baseType: !5303, size: 64, offset: 1472)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!607, !4989, !825, !5306, !607}
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4990, file: !4985, line: 1072, baseType: !676, size: 32, offset: 3264)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4990, file: !4985, line: 1078, baseType: !5309, size: 64, offset: 3328)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4990, file: !4985, line: 1081, baseType: !5311, size: 64, offset: 3392)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5313)
!5313 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4985, line: 76, flags: DIFlagFwdDecl)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4990, file: !4985, line: 1084, baseType: !4731, size: 3136, offset: 3456)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4990, file: !4985, line: 1099, baseType: !5229, size: 64, offset: 6592)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4990, file: !4985, line: 1116, baseType: !309, size: 128, offset: 6656)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4990, file: !4985, line: 1123, baseType: !350, offset: 6784)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4990, file: !4985, line: 1139, baseType: !5319, size: 448, offset: 6784)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5320, line: 53, size: 448, elements: !5321)
!5320 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/lizy2001/genbc/linux")
!5321 = !{!5322, !5323, !5324, !5325, !5326, !5336, !5337, !5338, !5339}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5319, file: !5320, line: 54, baseType: !350)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5319, file: !5320, line: 55, baseType: !338, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5319, file: !5320, line: 56, baseType: !607, size: 8, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5319, file: !5320, line: 56, baseType: !607, size: 8, offset: 72)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5319, file: !5320, line: 57, baseType: !5327, size: 64, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5320, line: 33, size: 384, elements: !5329)
!5329 = !{!5330, !5331, !5332}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5328, file: !5320, line: 34, baseType: !607, size: 8)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5328, file: !5320, line: 35, baseType: !676, size: 32, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5328, file: !5320, line: 36, baseType: !5333, size: 320, offset: 64)
!5333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 320, elements: !5334)
!5334 = !{!5335}
!5335 = !DISubrange(count: 10)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5319, file: !5320, line: 58, baseType: !121, size: 32, offset: 192)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5319, file: !5320, line: 58, baseType: !121, size: 32, offset: 224)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5319, file: !5320, line: 59, baseType: !438, size: 64, offset: 256)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5319, file: !5320, line: 60, baseType: !1635, size: 128, offset: 320)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4990, file: !4985, line: 1146, baseType: !5, size: 32, offset: 7232)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4990, file: !4985, line: 1153, baseType: !350, offset: 7264)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4990, file: !4985, line: 1160, baseType: !441, size: 64, offset: 7296)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4990, file: !4985, line: 1167, baseType: !2909, size: 256, offset: 7360)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4990, file: !4985, line: 1174, baseType: !5345, size: 64, offset: 7616)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4985, line: 56, flags: DIFlagFwdDecl)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4984, file: !4985, line: 1193, baseType: !5348, size: 64, offset: 128)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4984, file: !4985, line: 1195, baseType: !676, size: 32, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4984, file: !4985, line: 1196, baseType: !676, size: 32, offset: 224)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4984, file: !4985, line: 1198, baseType: !5352, size: 64, offset: 256)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !198, line: 1170, size: 9280, elements: !5355)
!5355 = !{!5356, !5357, !5358, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5429, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5534, !5535, !5539, !5558, !5559, !5560, !5561, !5562, !5563, !5565, !5567, !5569, !5570, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5354, file: !198, line: 1172, baseType: !305, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5354, file: !198, line: 1174, baseType: !330, size: 64, offset: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5354, file: !198, line: 1176, baseType: !5359, size: 64, offset: 128)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !71, line: 99, size: 256, elements: !5361)
!5361 = !{!5362, !5363, !5367}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5360, file: !71, line: 100, baseType: !428, size: 128)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5360, file: !71, line: 101, baseType: !5364, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!422, !330, !5359, !391}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5360, file: !71, line: 103, baseType: !5368, size: 64, offset: 192)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!422, !330, !5359, !338, !438}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5354, file: !198, line: 1186, baseType: !309, size: 128, offset: 192)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5354, file: !198, line: 1189, baseType: !4724, size: 256, offset: 320)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5354, file: !198, line: 1192, baseType: !391, size: 64, offset: 576)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5354, file: !198, line: 1199, baseType: !843, size: 192, offset: 640)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5354, file: !198, line: 1207, baseType: !5, size: 32, offset: 832)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5354, file: !198, line: 1213, baseType: !121, size: 32, offset: 864)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5354, file: !198, line: 1215, baseType: !121, size: 32, offset: 896)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5354, file: !198, line: 1221, baseType: !607, size: 8, offset: 928)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5354, file: !198, line: 1227, baseType: !607, size: 8, offset: 936)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5354, file: !198, line: 1233, baseType: !607, size: 8, offset: 944)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5354, file: !198, line: 1241, baseType: !607, size: 8, offset: 952)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5354, file: !198, line: 1249, baseType: !197, size: 32, offset: 960)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5354, file: !198, line: 1256, baseType: !309, size: 128, offset: 1024)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5354, file: !198, line: 1263, baseType: !203, size: 32, offset: 1152)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5354, file: !198, line: 1271, baseType: !309, size: 128, offset: 1216)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5354, file: !198, line: 1282, baseType: !5387, size: 1216, offset: 1344)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !198, line: 428, size: 1216, elements: !5388)
!5388 = !{!5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5423, !5424}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5387, file: !198, line: 432, baseType: !5, size: 32)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5387, file: !198, line: 437, baseType: !5, size: 32, offset: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5387, file: !198, line: 442, baseType: !5, size: 32, offset: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5387, file: !198, line: 447, baseType: !208, size: 32, offset: 96)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5387, file: !198, line: 461, baseType: !121, size: 32, offset: 128)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5387, file: !198, line: 469, baseType: !532, size: 32, offset: 160)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5387, file: !198, line: 476, baseType: !3997, size: 64, offset: 192)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5387, file: !198, line: 480, baseType: !5, size: 32, offset: 256)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5387, file: !198, line: 487, baseType: !532, size: 32, offset: 288)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5387, file: !198, line: 493, baseType: !121, size: 32, offset: 320)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5387, file: !198, line: 498, baseType: !607, size: 8, offset: 352)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5387, file: !198, line: 506, baseType: !607, size: 8, offset: 360)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5387, file: !198, line: 511, baseType: !607, size: 8, offset: 368)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5387, file: !198, line: 517, baseType: !607, size: 8, offset: 376)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_dc_modes", scope: !5387, file: !198, line: 523, baseType: !1501, size: 8, offset: 384)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5387, file: !198, line: 528, baseType: !1501, size: 8, offset: 392)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5387, file: !198, line: 533, baseType: !5406, size: 704, offset: 448)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !198, line: 185, size: 704, elements: !5407)
!5407 = !{!5408, !5418, !5420, !5421, !5422}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5406, file: !198, line: 187, baseType: !5409, size: 32)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !198, line: 163, size: 32, elements: !5410)
!5410 = !{!5411, !5412, !5413}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5409, file: !198, line: 167, baseType: !607, size: 8)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5409, file: !198, line: 171, baseType: !607, size: 8, offset: 8)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5409, file: !198, line: 175, baseType: !5414, size: 16, offset: 16)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !198, line: 146, size: 16, elements: !5415)
!5415 = !{!5416, !5417}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5414, file: !198, line: 150, baseType: !607, size: 8)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5414, file: !198, line: 154, baseType: !607, size: 8, offset: 8)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5406, file: !198, line: 195, baseType: !5419, size: 256, offset: 64)
!5419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 256, elements: !1315)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5406, file: !198, line: 203, baseType: !5419, size: 256, offset: 320)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_map", scope: !5406, file: !198, line: 206, baseType: !538, size: 64, offset: 576)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5406, file: !198, line: 209, baseType: !1501, size: 8, offset: 640)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5387, file: !198, line: 538, baseType: !607, size: 8, offset: 1152)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5387, file: !198, line: 543, baseType: !5425, size: 16, offset: 1160)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !198, line: 269, size: 16, elements: !5426)
!5426 = !{!5427, !5428}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5425, file: !198, line: 270, baseType: !1501, size: 8)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5425, file: !198, line: 271, baseType: !1501, size: 8, offset: 8)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5354, file: !198, line: 1285, baseType: !5430, size: 64, offset: 2560)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5432)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !198, line: 749, size: 896, elements: !5433)
!5433 = !{!5434, !5438, !5442, !5446, !5447, !5451, !5455, !5459, !5460, !5461, !5507, !5511, !5515, !5521}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5432, file: !198, line: 766, baseType: !5435, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!121, !5353, !121}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5432, file: !198, line: 778, baseType: !5439, size: 64, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !5353}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5432, file: !198, line: 806, baseType: !5443, size: 64, offset: 128)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!203, !5353, !607}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5432, file: !198, line: 823, baseType: !5439, size: 64, offset: 192)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5432, file: !198, line: 848, baseType: !5448, size: 64, offset: 256)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!121, !5353, !676, !676}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5432, file: !198, line: 864, baseType: !5452, size: 64, offset: 320)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!121, !5353, !4736, !4493}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5432, file: !198, line: 883, baseType: !5456, size: 64, offset: 384)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!121, !5353}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5432, file: !198, line: 896, baseType: !5439, size: 64, offset: 448)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5432, file: !198, line: 906, baseType: !5439, size: 64, offset: 512)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5432, file: !198, line: 939, baseType: !5462, size: 64, offset: 576)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!5465, !5353}
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !198, line: 605, size: 1216, elements: !5467)
!5467 = !{!5468, !5469, !5470, !5473, !5474, !5475, !5476, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5504, !5505, !5506}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5466, file: !198, line: 607, baseType: !5353, size: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5466, file: !198, line: 615, baseType: !4989, size: 64, offset: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5466, file: !198, line: 633, baseType: !5471, size: 64, offset: 128)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !198, line: 39, flags: DIFlagFwdDecl)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5466, file: !198, line: 639, baseType: !216, size: 32, offset: 192)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5466, file: !198, line: 642, baseType: !4846, size: 64, offset: 256)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5466, file: !198, line: 649, baseType: !5086, size: 64, offset: 320)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5466, file: !198, line: 652, baseType: !5477, size: 384, offset: 384)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !198, line: 590, size: 384, elements: !5478)
!5478 = !{!5479, !5480, !5487, !5488, !5489, !5490, !5491, !5492, !5493}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5477, file: !198, line: 591, baseType: !220, size: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5477, file: !198, line: 592, baseType: !5481, size: 128, offset: 32)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !198, line: 556, size: 128, elements: !5482)
!5482 = !{!5483, !5484, !5485, !5486}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5481, file: !198, line: 560, baseType: !5, size: 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5481, file: !198, line: 565, baseType: !5, size: 32, offset: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5481, file: !198, line: 570, baseType: !5, size: 32, offset: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5481, file: !198, line: 575, baseType: !5, size: 32, offset: 96)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5477, file: !198, line: 593, baseType: !5, size: 32, offset: 160)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5477, file: !198, line: 594, baseType: !5, size: 32, offset: 192)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5477, file: !198, line: 595, baseType: !5, size: 32, offset: 224)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5477, file: !198, line: 596, baseType: !5, size: 32, offset: 256)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5477, file: !198, line: 597, baseType: !5, size: 32, offset: 288)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5477, file: !198, line: 598, baseType: !5, size: 32, offset: 320)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5477, file: !198, line: 599, baseType: !5, size: 32, offset: 352)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5466, file: !198, line: 666, baseType: !607, size: 8, offset: 768)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5466, file: !198, line: 675, baseType: !163, size: 32, offset: 800)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5466, file: !198, line: 683, baseType: !5, size: 32, offset: 832)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5466, file: !198, line: 689, baseType: !5, size: 32, offset: 864)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5466, file: !198, line: 695, baseType: !5, size: 32, offset: 896)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5466, file: !198, line: 701, baseType: !5, size: 32, offset: 928)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5466, file: !198, line: 708, baseType: !532, size: 32, offset: 960)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5466, file: !198, line: 721, baseType: !5502, size: 64, offset: 1024)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !198, line: 721, flags: DIFlagFwdDecl)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5466, file: !198, line: 727, baseType: !1501, size: 8, offset: 1088)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5466, file: !198, line: 733, baseType: !1501, size: 8, offset: 1096)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5466, file: !198, line: 739, baseType: !5066, size: 64, offset: 1152)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5432, file: !198, line: 949, baseType: !5508, size: 64, offset: 640)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{null, !5353, !5465}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5432, file: !198, line: 994, baseType: !5512, size: 64, offset: 704)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!121, !5353, !5465, !4736, !4493}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5432, file: !198, line: 1017, baseType: !5516, size: 64, offset: 768)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!121, !5353, !5519, !4736, !4492}
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5466)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5432, file: !198, line: 1031, baseType: !5522, size: 64, offset: 832)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !4370, !5519}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5354, file: !198, line: 1292, baseType: !5066, size: 64, offset: 2624)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5354, file: !198, line: 1295, baseType: !4731, size: 3136, offset: 2688)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5354, file: !198, line: 1301, baseType: !4736, size: 64, offset: 5824)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5354, file: !198, line: 1312, baseType: !4736, size: 64, offset: 5888)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5354, file: !198, line: 1318, baseType: !4736, size: 64, offset: 5952)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5354, file: !198, line: 1326, baseType: !5066, size: 64, offset: 6016)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5354, file: !198, line: 1332, baseType: !4736, size: 64, offset: 6080)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5354, file: !198, line: 1359, baseType: !5533, size: 8, offset: 6144)
!5533 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !310, line: 102, baseType: !1501)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5354, file: !198, line: 1367, baseType: !121, size: 32, offset: 6176)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5354, file: !198, line: 1370, baseType: !5536, size: 64, offset: 6208)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5538)
!5538 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !198, line: 35, flags: DIFlagFwdDecl)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5354, file: !198, line: 1373, baseType: !5540, size: 672, offset: 6272)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !198, line: 1043, size: 672, elements: !5541)
!5541 = !{!5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5540, file: !198, line: 1049, baseType: !2909, size: 256)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5540, file: !198, line: 1056, baseType: !607, size: 8, offset: 256)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5540, file: !198, line: 1063, baseType: !607, size: 8, offset: 264)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5540, file: !198, line: 1070, baseType: !607, size: 8, offset: 272)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5540, file: !198, line: 1077, baseType: !121, size: 32, offset: 288)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5540, file: !198, line: 1084, baseType: !121, size: 32, offset: 320)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5540, file: !198, line: 1091, baseType: !121, size: 32, offset: 352)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5540, file: !198, line: 1098, baseType: !121, size: 32, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5540, file: !198, line: 1105, baseType: !607, size: 8, offset: 416)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5540, file: !198, line: 1112, baseType: !607, size: 8, offset: 424)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5540, file: !198, line: 1120, baseType: !607, size: 8, offset: 432)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5540, file: !198, line: 1128, baseType: !607, size: 8, offset: 440)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5540, file: !198, line: 1136, baseType: !236, size: 32, offset: 448)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5540, file: !198, line: 1146, baseType: !5, size: 32, offset: 480)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5540, file: !198, line: 1154, baseType: !242, size: 32, offset: 512)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5540, file: !198, line: 1159, baseType: !5481, size: 128, offset: 544)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5354, file: !198, line: 1375, baseType: !236, size: 32, offset: 6944)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "override_edid", scope: !5354, file: !198, line: 1377, baseType: !607, size: 8, offset: 6976)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5354, file: !198, line: 1379, baseType: !538, size: 64, offset: 7040)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5354, file: !198, line: 1386, baseType: !532, size: 32, offset: 7104)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5354, file: !198, line: 1394, baseType: !5471, size: 64, offset: 7168)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5354, file: !198, line: 1398, baseType: !5564, size: 1024, offset: 7232)
!5564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5533, size: 1024, elements: !3656)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5354, file: !198, line: 1400, baseType: !5566, size: 16, offset: 8256)
!5566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 16, elements: !1756)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5354, file: !198, line: 1405, baseType: !5568, size: 64, offset: 8288)
!5568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !1756)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5354, file: !198, line: 1410, baseType: !5568, size: 64, offset: 8352)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5354, file: !198, line: 1421, baseType: !5571, size: 64, offset: 8448)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !5573, line: 695, size: 7552, elements: !5574)
!5573 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5574 = !{!5575, !5576, !5577, !5614, !5615, !5629, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5646, !5647, !5648, !5649, !5681, !5692}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5572, file: !5573, line: 696, baseType: !750, size: 64)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5572, file: !5573, line: 697, baseType: !5, size: 32, offset: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5572, file: !5573, line: 698, baseType: !5578, size: 64, offset: 128)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5580)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !5573, line: 519, size: 320, elements: !5581)
!5581 = !{!5582, !5595, !5596, !5609, !5610}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5580, file: !5573, line: 529, baseType: !5583, size: 64)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!121, !5571, !5586, !121}
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5588, line: 69, size: 128, elements: !5589)
!5588 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5589 = !{!5590, !5591, !5592, !5593}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5587, file: !5588, line: 70, baseType: !1019, size: 16)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5587, file: !5588, line: 71, baseType: !1019, size: 16, offset: 16)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5587, file: !5588, line: 84, baseType: !1019, size: 16, offset: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5587, file: !5588, line: 85, baseType: !5594, size: 64, offset: 64)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5580, file: !5573, line: 531, baseType: !5583, size: 64, offset: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5580, file: !5573, line: 533, baseType: !5597, size: 64, offset: 128)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!121, !5571, !1018, !433, !340, !1501, !121, !5600}
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5588, line: 135, size: 272, elements: !5602)
!5602 = !{!5603, !5604, !5605}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5601, file: !5588, line: 136, baseType: !1502, size: 8)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5601, file: !5588, line: 137, baseType: !1019, size: 16)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5601, file: !5588, line: 138, baseType: !5606, size: 272)
!5606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 272, elements: !5607)
!5607 = !{!5608}
!5608 = !DISubrange(count: 34)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5580, file: !5573, line: 536, baseType: !5597, size: 64, offset: 192)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5580, file: !5573, line: 541, baseType: !5611, size: 64, offset: 256)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!532, !5571}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5572, file: !5573, line: 699, baseType: !299, size: 64, offset: 192)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5572, file: !5573, line: 702, baseType: !5616, size: 64, offset: 256)
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5618)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !5573, line: 557, size: 192, elements: !5619)
!5619 = !{!5620, !5624, !5628}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5618, file: !5573, line: 558, baseType: !5621, size: 64)
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = !DISubroutineType(types: !5623)
!5623 = !{null, !5571, !5}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5618, file: !5573, line: 559, baseType: !5625, size: 64, offset: 64)
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5626 = !DISubroutineType(types: !5627)
!5627 = !{!121, !5571, !5}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5618, file: !5573, line: 560, baseType: !5621, size: 64, offset: 128)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5572, file: !5573, line: 703, baseType: !5630, size: 192, offset: 320)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5631, line: 30, size: 192, elements: !5632)
!5631 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!5632 = !{!5633, !5634, !5635}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5630, file: !5631, line: 31, baseType: !939)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5630, file: !5631, line: 32, baseType: !918, size: 128)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5630, file: !5631, line: 33, baseType: !1370, size: 64, offset: 128)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5572, file: !5573, line: 704, baseType: !5630, size: 192, offset: 512)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5572, file: !5573, line: 706, baseType: !121, size: 32, offset: 704)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5572, file: !5573, line: 707, baseType: !121, size: 32, offset: 736)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5572, file: !5573, line: 708, baseType: !331, size: 5568, offset: 768)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5572, file: !5573, line: 709, baseType: !441, size: 64, offset: 6336)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5572, file: !5573, line: 713, baseType: !121, size: 32, offset: 6400)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5572, file: !5573, line: 714, baseType: !5643, size: 384, offset: 6432)
!5643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !5644)
!5644 = !{!5645}
!5645 = !DISubrange(count: 48)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5572, file: !5573, line: 715, baseType: !1689, size: 192, offset: 6848)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5572, file: !5573, line: 717, baseType: !843, size: 192, offset: 7040)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5572, file: !5573, line: 718, baseType: !309, size: 128, offset: 7232)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5572, file: !5573, line: 720, baseType: !5650, size: 64, offset: 7360)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !5573, line: 618, size: 832, elements: !5652)
!5652 = !{!5653, !5657, !5658, !5662, !5663, !5664, !5665, !5669, !5670, !5673, !5674, !5677, !5680}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5651, file: !5573, line: 619, baseType: !5654, size: 64)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5655, size: 64)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!121, !5571}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5651, file: !5573, line: 621, baseType: !5654, size: 64, offset: 64)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5651, file: !5573, line: 622, baseType: !5659, size: 64, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{null, !5571, !121}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5651, file: !5573, line: 623, baseType: !5654, size: 64, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5651, file: !5573, line: 624, baseType: !5659, size: 64, offset: 256)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5651, file: !5573, line: 625, baseType: !5654, size: 64, offset: 320)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5651, file: !5573, line: 627, baseType: !5666, size: 64, offset: 384)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{null, !5571}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5651, file: !5573, line: 628, baseType: !5666, size: 64, offset: 448)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5651, file: !5573, line: 631, baseType: !5671, size: 64, offset: 512)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !5573, line: 631, flags: DIFlagFwdDecl)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5651, file: !5573, line: 632, baseType: !5671, size: 64, offset: 576)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5651, file: !5573, line: 633, baseType: !5675, size: 64, offset: 640)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5573, line: 633, flags: DIFlagFwdDecl)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5651, file: !5573, line: 634, baseType: !5678, size: 64, offset: 704)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5573, line: 634, flags: DIFlagFwdDecl)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5651, file: !5573, line: 635, baseType: !5678, size: 64, offset: 768)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5572, file: !5573, line: 721, baseType: !5682, size: 64, offset: 7424)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5684)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !5573, line: 664, size: 192, elements: !5685)
!5685 = !{!5686, !5687, !5688, !5689, !5690, !5691}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5684, file: !5573, line: 665, baseType: !538, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5684, file: !5573, line: 666, baseType: !121, size: 32, offset: 64)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5684, file: !5573, line: 667, baseType: !1018, size: 16, offset: 96)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5684, file: !5573, line: 668, baseType: !1018, size: 16, offset: 112)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5684, file: !5573, line: 669, baseType: !1018, size: 16, offset: 128)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5684, file: !5573, line: 670, baseType: !1018, size: 16, offset: 144)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5572, file: !5573, line: 723, baseType: !3845, size: 64, offset: 7488)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5354, file: !198, line: 1427, baseType: !121, size: 32, offset: 8512)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5354, file: !198, line: 1430, baseType: !5, size: 32, offset: 8544)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5354, file: !198, line: 1437, baseType: !607, size: 8, offset: 8576)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5354, file: !198, line: 1443, baseType: !1501, size: 8, offset: 8584)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5354, file: !198, line: 1446, baseType: !499, size: 64, offset: 8640)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5354, file: !198, line: 1462, baseType: !5465, size: 64, offset: 8704)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5354, file: !198, line: 1479, baseType: !5066, size: 64, offset: 8768)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5354, file: !198, line: 1482, baseType: !607, size: 8, offset: 8832)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5354, file: !198, line: 1484, baseType: !5702, size: 64, offset: 8896)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !198, line: 1663, size: 256, elements: !5704)
!5704 = !{!5705, !5706, !5707, !5708}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5703, file: !198, line: 1664, baseType: !317, size: 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5703, file: !198, line: 1665, baseType: !305, size: 64, offset: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5703, file: !198, line: 1666, baseType: !121, size: 32, offset: 128)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5703, file: !198, line: 1667, baseType: !5709, size: 64, offset: 160)
!5709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 64, elements: !1479)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5354, file: !198, line: 1486, baseType: !607, size: 8, offset: 8960)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5354, file: !198, line: 1490, baseType: !5533, size: 8, offset: 8968)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5354, file: !198, line: 1490, baseType: !5533, size: 8, offset: 8976)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5354, file: !198, line: 1493, baseType: !5533, size: 8, offset: 8984)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5354, file: !198, line: 1493, baseType: !5533, size: 8, offset: 8992)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5354, file: !198, line: 1496, baseType: !5059, size: 16, offset: 9008)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5354, file: !198, line: 1496, baseType: !5059, size: 16, offset: 9024)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5354, file: !198, line: 1505, baseType: !476, size: 64, offset: 9088)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5354, file: !198, line: 1508, baseType: !5719, size: 96, offset: 9152)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !164, line: 378, size: 96, elements: !5720)
!5720 = !{!5721, !5722}
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5719, file: !164, line: 382, baseType: !534, size: 32)
!5722 = !DIDerivedType(tag: DW_TAG_member, scope: !5719, file: !164, line: 386, baseType: !5723, size: 64, offset: 32)
!5723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5719, file: !164, line: 386, size: 64, elements: !5724)
!5724 = !{!5725}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5723, file: !164, line: 387, baseType: !5726, size: 64)
!5726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !164, line: 365, size: 64, elements: !5727)
!5727 = !{!5728, !5729, !5730, !5731, !5732}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5726, file: !164, line: 366, baseType: !1502, size: 8)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5726, file: !164, line: 367, baseType: !1502, size: 8, offset: 8)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5726, file: !164, line: 368, baseType: !1019, size: 16, offset: 16)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5726, file: !164, line: 369, baseType: !1019, size: 16, offset: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5726, file: !164, line: 370, baseType: !1019, size: 16, offset: 48)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !4984, file: !4985, line: 1199, baseType: !438, size: 64, offset: 320)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !313)
!5736 = !{i32 7, !"Dwarf Version", i32 4}
!5737 = !{i32 2, !"Debug Info Version", i32 3}
!5738 = !{i32 1, !"wchar_size", i32 2}
!5739 = !{i32 1, !"Code Model", i32 2}
!5740 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5741 = distinct !DISubprogram(name: "drm_client_init", scope: !1, file: !1, line: 78, type: !5742, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!121, !305, !300, !338, !4966}
!5744 = !DILocalVariable(name: "dev", arg: 1, scope: !5741, file: !1, line: 78, type: !305)
!5745 = !DILocation(line: 78, column: 40, scope: !5741)
!5746 = !DILocalVariable(name: "client", arg: 2, scope: !5741, file: !1, line: 78, type: !300)
!5747 = !DILocation(line: 78, column: 68, scope: !5741)
!5748 = !DILocalVariable(name: "name", arg: 3, scope: !5741, file: !1, line: 79, type: !338)
!5749 = !DILocation(line: 79, column: 19, scope: !5741)
!5750 = !DILocalVariable(name: "funcs", arg: 4, scope: !5741, file: !1, line: 79, type: !4966)
!5751 = !DILocation(line: 79, column: 56, scope: !5741)
!5752 = !DILocalVariable(name: "ret", scope: !5741, file: !1, line: 81, type: !121)
!5753 = !DILocation(line: 81, column: 6, scope: !5741)
!5754 = !DILocation(line: 83, column: 30, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 83, column: 6)
!5756 = !DILocation(line: 83, column: 7, scope: !5755)
!5757 = !DILocation(line: 83, column: 51, scope: !5755)
!5758 = !DILocation(line: 83, column: 55, scope: !5755)
!5759 = !DILocation(line: 83, column: 60, scope: !5755)
!5760 = !DILocation(line: 83, column: 68, scope: !5755)
!5761 = !DILocation(line: 83, column: 6, scope: !5741)
!5762 = !DILocation(line: 84, column: 3, scope: !5755)
!5763 = !DILocation(line: 86, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 86, column: 6)
!5765 = !DILocation(line: 86, column: 12, scope: !5764)
!5766 = !DILocation(line: 86, column: 31, scope: !5764)
!5767 = !DILocation(line: 86, column: 38, scope: !5764)
!5768 = !DILocation(line: 86, column: 16, scope: !5764)
!5769 = !DILocation(line: 86, column: 6, scope: !5741)
!5770 = !DILocation(line: 87, column: 3, scope: !5764)
!5771 = !DILocation(line: 89, column: 16, scope: !5741)
!5772 = !DILocation(line: 89, column: 2, scope: !5741)
!5773 = !DILocation(line: 89, column: 10, scope: !5741)
!5774 = !DILocation(line: 89, column: 14, scope: !5741)
!5775 = !DILocation(line: 90, column: 17, scope: !5741)
!5776 = !DILocation(line: 90, column: 2, scope: !5741)
!5777 = !DILocation(line: 90, column: 10, scope: !5741)
!5778 = !DILocation(line: 90, column: 15, scope: !5741)
!5779 = !DILocation(line: 91, column: 18, scope: !5741)
!5780 = !DILocation(line: 91, column: 2, scope: !5741)
!5781 = !DILocation(line: 91, column: 10, scope: !5741)
!5782 = !DILocation(line: 91, column: 16, scope: !5741)
!5783 = !DILocation(line: 93, column: 34, scope: !5741)
!5784 = !DILocation(line: 93, column: 8, scope: !5741)
!5785 = !DILocation(line: 93, column: 6, scope: !5741)
!5786 = !DILocation(line: 94, column: 6, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 94, column: 6)
!5788 = !DILocation(line: 94, column: 6, scope: !5741)
!5789 = !DILocation(line: 95, column: 3, scope: !5787)
!5790 = !DILocation(line: 97, column: 24, scope: !5741)
!5791 = !DILocation(line: 97, column: 8, scope: !5741)
!5792 = !DILocation(line: 97, column: 6, scope: !5741)
!5793 = !DILocation(line: 98, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 98, column: 6)
!5795 = !DILocation(line: 98, column: 6, scope: !5741)
!5796 = !DILocation(line: 99, column: 3, scope: !5794)
!5797 = !DILocation(line: 101, column: 14, scope: !5741)
!5798 = !DILocation(line: 101, column: 2, scope: !5741)
!5799 = !DILocation(line: 103, column: 2, scope: !5741)
!5800 = !DILabel(scope: !5741, name: "err_free", file: !1, line: 105)
!5801 = !DILocation(line: 105, column: 1, scope: !5741)
!5802 = !DILocation(line: 106, column: 26, scope: !5741)
!5803 = !DILocation(line: 106, column: 2, scope: !5741)
!5804 = !DILabel(scope: !5741, name: "err_put_module", file: !1, line: 107)
!5805 = !DILocation(line: 107, column: 1, scope: !5741)
!5806 = !DILocation(line: 108, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 108, column: 6)
!5808 = !DILocation(line: 108, column: 6, scope: !5741)
!5809 = !DILocation(line: 109, column: 14, scope: !5807)
!5810 = !DILocation(line: 109, column: 21, scope: !5807)
!5811 = !DILocation(line: 109, column: 3, scope: !5807)
!5812 = !DILocation(line: 111, column: 9, scope: !5741)
!5813 = !DILocation(line: 111, column: 2, scope: !5741)
!5814 = !DILocation(line: 112, column: 1, scope: !5741)
!5815 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !250, file: !250, line: 690, type: !5816, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!607, !5818, !249}
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!5820 = !DILocalVariable(name: "dev", arg: 1, scope: !5815, file: !250, line: 690, type: !5818)
!5821 = !DILocation(line: 690, column: 68, scope: !5815)
!5822 = !DILocalVariable(name: "feature", arg: 2, scope: !5815, file: !250, line: 691, type: !249)
!5823 = !DILocation(line: 691, column: 32, scope: !5815)
!5824 = !DILocation(line: 693, column: 37, scope: !5815)
!5825 = !DILocation(line: 693, column: 42, scope: !5815)
!5826 = !DILocation(line: 693, column: 9, scope: !5815)
!5827 = !DILocation(line: 693, column: 2, scope: !5815)
!5828 = distinct !DISubprogram(name: "try_module_get", scope: !5829, file: !5829, line: 751, type: !5830, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5829 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!607, !750}
!5832 = !DILocalVariable(name: "module", arg: 1, scope: !5828, file: !5829, line: 751, type: !750)
!5833 = !DILocation(line: 751, column: 50, scope: !5828)
!5834 = !DILocation(line: 753, column: 2, scope: !5828)
!5835 = distinct !DISubprogram(name: "drm_client_open", scope: !1, file: !1, line: 34, type: !4977, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5836 = !DILocalVariable(name: "client", arg: 1, scope: !5835, file: !1, line: 34, type: !300)
!5837 = !DILocation(line: 34, column: 51, scope: !5835)
!5838 = !DILocalVariable(name: "dev", scope: !5835, file: !1, line: 36, type: !305)
!5839 = !DILocation(line: 36, column: 21, scope: !5835)
!5840 = !DILocation(line: 36, column: 27, scope: !5835)
!5841 = !DILocation(line: 36, column: 35, scope: !5835)
!5842 = !DILocalVariable(name: "file", scope: !5835, file: !1, line: 37, type: !4130)
!5843 = !DILocation(line: 37, column: 19, scope: !5835)
!5844 = !DILocation(line: 39, column: 24, scope: !5835)
!5845 = !DILocation(line: 39, column: 29, scope: !5835)
!5846 = !DILocation(line: 39, column: 9, scope: !5835)
!5847 = !DILocation(line: 39, column: 7, scope: !5835)
!5848 = !DILocation(line: 40, column: 13, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5835, file: !1, line: 40, column: 6)
!5850 = !DILocation(line: 40, column: 6, scope: !5849)
!5851 = !DILocation(line: 40, column: 6, scope: !5835)
!5852 = !DILocation(line: 41, column: 18, scope: !5849)
!5853 = !DILocation(line: 41, column: 10, scope: !5849)
!5854 = !DILocation(line: 41, column: 3, scope: !5849)
!5855 = !DILocation(line: 43, column: 14, scope: !5835)
!5856 = !DILocation(line: 43, column: 19, scope: !5835)
!5857 = !DILocation(line: 43, column: 2, scope: !5835)
!5858 = !DILocation(line: 44, column: 12, scope: !5835)
!5859 = !DILocation(line: 44, column: 18, scope: !5835)
!5860 = !DILocation(line: 44, column: 26, scope: !5835)
!5861 = !DILocation(line: 44, column: 31, scope: !5835)
!5862 = !DILocation(line: 44, column: 2, scope: !5835)
!5863 = !DILocation(line: 45, column: 16, scope: !5835)
!5864 = !DILocation(line: 45, column: 21, scope: !5835)
!5865 = !DILocation(line: 45, column: 2, scope: !5835)
!5866 = !DILocation(line: 47, column: 17, scope: !5835)
!5867 = !DILocation(line: 47, column: 2, scope: !5835)
!5868 = !DILocation(line: 47, column: 10, scope: !5835)
!5869 = !DILocation(line: 47, column: 15, scope: !5835)
!5870 = !DILocation(line: 49, column: 2, scope: !5835)
!5871 = !DILocation(line: 50, column: 1, scope: !5835)
!5872 = distinct !DISubprogram(name: "module_put", scope: !5829, file: !5829, line: 756, type: !5873, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{null, !750}
!5875 = !DILocalVariable(name: "module", arg: 1, scope: !5872, file: !5829, line: 756, type: !750)
!5876 = !DILocation(line: 756, column: 46, scope: !5872)
!5877 = !DILocation(line: 758, column: 1, scope: !5872)
!5878 = distinct !DISubprogram(name: "drm_client_register", scope: !1, file: !1, line: 125, type: !4973, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5879 = !DILocalVariable(name: "client", arg: 1, scope: !5878, file: !1, line: 125, type: !300)
!5880 = !DILocation(line: 125, column: 49, scope: !5878)
!5881 = !DILocalVariable(name: "dev", scope: !5878, file: !1, line: 127, type: !305)
!5882 = !DILocation(line: 127, column: 21, scope: !5878)
!5883 = !DILocation(line: 127, column: 27, scope: !5878)
!5884 = !DILocation(line: 127, column: 35, scope: !5878)
!5885 = !DILocation(line: 129, column: 14, scope: !5878)
!5886 = !DILocation(line: 129, column: 19, scope: !5878)
!5887 = !DILocation(line: 129, column: 2, scope: !5878)
!5888 = !DILocation(line: 130, column: 12, scope: !5878)
!5889 = !DILocation(line: 130, column: 20, scope: !5878)
!5890 = !DILocation(line: 130, column: 27, scope: !5878)
!5891 = !DILocation(line: 130, column: 32, scope: !5878)
!5892 = !DILocation(line: 130, column: 2, scope: !5878)
!5893 = !DILocation(line: 131, column: 16, scope: !5878)
!5894 = !DILocation(line: 131, column: 21, scope: !5878)
!5895 = !DILocation(line: 131, column: 2, scope: !5878)
!5896 = !DILocation(line: 132, column: 1, scope: !5878)
!5897 = distinct !DISubprogram(name: "list_add", scope: !5898, file: !5898, line: 84, type: !5899, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5898 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5899 = !DISubroutineType(types: !5900)
!5900 = !{null, !313, !313}
!5901 = !DILocalVariable(name: "new", arg: 1, scope: !5897, file: !5898, line: 84, type: !313)
!5902 = !DILocation(line: 84, column: 47, scope: !5897)
!5903 = !DILocalVariable(name: "head", arg: 2, scope: !5897, file: !5898, line: 84, type: !313)
!5904 = !DILocation(line: 84, column: 70, scope: !5897)
!5905 = !DILocation(line: 86, column: 13, scope: !5897)
!5906 = !DILocation(line: 86, column: 18, scope: !5897)
!5907 = !DILocation(line: 86, column: 24, scope: !5897)
!5908 = !DILocation(line: 86, column: 30, scope: !5897)
!5909 = !DILocation(line: 86, column: 2, scope: !5897)
!5910 = !DILocation(line: 87, column: 1, scope: !5897)
!5911 = distinct !DISubprogram(name: "drm_client_release", scope: !1, file: !1, line: 149, type: !4973, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5912 = !DILocalVariable(name: "client", arg: 1, scope: !5911, file: !1, line: 149, type: !300)
!5913 = !DILocation(line: 149, column: 48, scope: !5911)
!5914 = !DILocalVariable(name: "dev", scope: !5911, file: !1, line: 151, type: !305)
!5915 = !DILocation(line: 151, column: 21, scope: !5911)
!5916 = !DILocation(line: 151, column: 27, scope: !5911)
!5917 = !DILocation(line: 151, column: 35, scope: !5911)
!5918 = !DILocation(line: 153, column: 2, scope: !5911)
!5919 = !DILocation(line: 155, column: 26, scope: !5911)
!5920 = !DILocation(line: 155, column: 2, scope: !5911)
!5921 = !DILocation(line: 156, column: 19, scope: !5911)
!5922 = !DILocation(line: 156, column: 2, scope: !5911)
!5923 = !DILocation(line: 157, column: 14, scope: !5911)
!5924 = !DILocation(line: 157, column: 2, scope: !5911)
!5925 = !DILocation(line: 158, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5911, file: !1, line: 158, column: 6)
!5927 = !DILocation(line: 158, column: 14, scope: !5926)
!5928 = !DILocation(line: 158, column: 6, scope: !5911)
!5929 = !DILocation(line: 159, column: 14, scope: !5926)
!5930 = !DILocation(line: 159, column: 22, scope: !5926)
!5931 = !DILocation(line: 159, column: 29, scope: !5926)
!5932 = !DILocation(line: 159, column: 3, scope: !5926)
!5933 = !DILocation(line: 160, column: 1, scope: !5911)
!5934 = distinct !DISubprogram(name: "drm_client_close", scope: !1, file: !1, line: 52, type: !4973, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5935 = !DILocalVariable(name: "client", arg: 1, scope: !5934, file: !1, line: 52, type: !300)
!5936 = !DILocation(line: 52, column: 53, scope: !5934)
!5937 = !DILocalVariable(name: "dev", scope: !5934, file: !1, line: 54, type: !305)
!5938 = !DILocation(line: 54, column: 21, scope: !5934)
!5939 = !DILocation(line: 54, column: 27, scope: !5934)
!5940 = !DILocation(line: 54, column: 35, scope: !5934)
!5941 = !DILocation(line: 56, column: 14, scope: !5934)
!5942 = !DILocation(line: 56, column: 19, scope: !5934)
!5943 = !DILocation(line: 56, column: 2, scope: !5934)
!5944 = !DILocation(line: 57, column: 12, scope: !5934)
!5945 = !DILocation(line: 57, column: 20, scope: !5934)
!5946 = !DILocation(line: 57, column: 26, scope: !5934)
!5947 = !DILocation(line: 57, column: 2, scope: !5934)
!5948 = !DILocation(line: 58, column: 16, scope: !5934)
!5949 = !DILocation(line: 58, column: 21, scope: !5934)
!5950 = !DILocation(line: 58, column: 2, scope: !5934)
!5951 = !DILocation(line: 60, column: 16, scope: !5934)
!5952 = !DILocation(line: 60, column: 24, scope: !5934)
!5953 = !DILocation(line: 60, column: 2, scope: !5934)
!5954 = !DILocation(line: 61, column: 1, scope: !5934)
!5955 = distinct !DISubprogram(name: "drm_client_dev_unregister", scope: !1, file: !1, line: 163, type: !4189, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!5956 = !DILocalVariable(name: "dev", arg: 1, scope: !5955, file: !1, line: 163, type: !305)
!5957 = !DILocation(line: 163, column: 51, scope: !5955)
!5958 = !DILocalVariable(name: "client", scope: !5955, file: !1, line: 165, type: !300)
!5959 = !DILocation(line: 165, column: 25, scope: !5955)
!5960 = !DILocalVariable(name: "tmp", scope: !5955, file: !1, line: 165, type: !300)
!5961 = !DILocation(line: 165, column: 34, scope: !5955)
!5962 = !DILocation(line: 167, column: 30, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 167, column: 6)
!5964 = !DILocation(line: 167, column: 7, scope: !5963)
!5965 = !DILocation(line: 167, column: 6, scope: !5955)
!5966 = !DILocation(line: 168, column: 3, scope: !5963)
!5967 = !DILocation(line: 170, column: 14, scope: !5955)
!5968 = !DILocation(line: 170, column: 19, scope: !5955)
!5969 = !DILocation(line: 170, column: 2, scope: !5955)
!5970 = !DILocalVariable(name: "__mptr", scope: !5971, file: !1, line: 171, type: !299)
!5971 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 171, column: 2)
!5972 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 171, column: 2)
!5973 = !DILocation(line: 171, column: 2, scope: !5971)
!5974 = !DILocation(line: 171, column: 2, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5971, file: !1, line: 171, column: 2)
!5976 = !DILocation(line: 171, column: 2, scope: !5972)
!5977 = !DILocalVariable(name: "__mptr", scope: !5978, file: !1, line: 171, type: !299)
!5978 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 171, column: 2)
!5979 = !DILocation(line: 171, column: 2, scope: !5978)
!5980 = !DILocation(line: 171, column: 2, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5978, file: !1, line: 171, column: 2)
!5982 = !DILocation(line: 171, column: 2, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 171, column: 2)
!5984 = !DILocation(line: 172, column: 13, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5983, file: !1, line: 171, column: 64)
!5986 = !DILocation(line: 172, column: 21, scope: !5985)
!5987 = !DILocation(line: 172, column: 3, scope: !5985)
!5988 = !DILocation(line: 173, column: 7, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5985, file: !1, line: 173, column: 7)
!5990 = !DILocation(line: 173, column: 15, scope: !5989)
!5991 = !DILocation(line: 173, column: 21, scope: !5989)
!5992 = !DILocation(line: 173, column: 24, scope: !5989)
!5993 = !DILocation(line: 173, column: 32, scope: !5989)
!5994 = !DILocation(line: 173, column: 39, scope: !5989)
!5995 = !DILocation(line: 173, column: 7, scope: !5985)
!5996 = !DILocation(line: 174, column: 4, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5989, file: !1, line: 173, column: 51)
!5998 = !DILocation(line: 174, column: 12, scope: !5997)
!5999 = !DILocation(line: 174, column: 19, scope: !5997)
!6000 = !DILocation(line: 174, column: 30, scope: !5997)
!6001 = !DILocation(line: 175, column: 3, scope: !5997)
!6002 = !DILocation(line: 176, column: 23, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5989, file: !1, line: 175, column: 10)
!6004 = !DILocation(line: 176, column: 4, scope: !6003)
!6005 = !DILocation(line: 177, column: 10, scope: !6003)
!6006 = !DILocation(line: 177, column: 4, scope: !6003)
!6007 = !DILocation(line: 179, column: 2, scope: !5985)
!6008 = !DILocalVariable(name: "__mptr", scope: !6009, file: !1, line: 171, type: !299)
!6009 = distinct !DILexicalBlock(scope: !5983, file: !1, line: 171, column: 2)
!6010 = !DILocation(line: 171, column: 2, scope: !6009)
!6011 = !DILocation(line: 171, column: 2, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6009, file: !1, line: 171, column: 2)
!6013 = distinct !{!6013, !5976, !6014}
!6014 = !DILocation(line: 179, column: 2, scope: !5972)
!6015 = !DILocation(line: 180, column: 16, scope: !5955)
!6016 = !DILocation(line: 180, column: 21, scope: !5955)
!6017 = !DILocation(line: 180, column: 2, scope: !5955)
!6018 = !DILocation(line: 181, column: 1, scope: !5955)
!6019 = distinct !DISubprogram(name: "list_del", scope: !5898, file: !5898, line: 144, type: !6020, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{null, !313}
!6022 = !DILocalVariable(name: "entry", arg: 1, scope: !6019, file: !5898, line: 144, type: !313)
!6023 = !DILocation(line: 144, column: 47, scope: !6019)
!6024 = !DILocation(line: 146, column: 19, scope: !6019)
!6025 = !DILocation(line: 146, column: 2, scope: !6019)
!6026 = !DILocation(line: 147, column: 2, scope: !6019)
!6027 = !DILocation(line: 147, column: 9, scope: !6019)
!6028 = !DILocation(line: 147, column: 14, scope: !6019)
!6029 = !DILocation(line: 148, column: 2, scope: !6019)
!6030 = !DILocation(line: 148, column: 9, scope: !6019)
!6031 = !DILocation(line: 148, column: 14, scope: !6019)
!6032 = !DILocation(line: 149, column: 1, scope: !6019)
!6033 = distinct !DISubprogram(name: "drm_client_dev_hotplug", scope: !1, file: !1, line: 192, type: !4189, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6034 = !DILocalVariable(name: "dev", arg: 1, scope: !6033, file: !1, line: 192, type: !305)
!6035 = !DILocation(line: 192, column: 48, scope: !6033)
!6036 = !DILocalVariable(name: "client", scope: !6033, file: !1, line: 194, type: !300)
!6037 = !DILocation(line: 194, column: 25, scope: !6033)
!6038 = !DILocalVariable(name: "ret", scope: !6033, file: !1, line: 195, type: !121)
!6039 = !DILocation(line: 195, column: 6, scope: !6033)
!6040 = !DILocation(line: 197, column: 30, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6033, file: !1, line: 197, column: 6)
!6042 = !DILocation(line: 197, column: 7, scope: !6041)
!6043 = !DILocation(line: 197, column: 6, scope: !6033)
!6044 = !DILocation(line: 198, column: 3, scope: !6041)
!6045 = !DILocation(line: 200, column: 14, scope: !6033)
!6046 = !DILocation(line: 200, column: 19, scope: !6033)
!6047 = !DILocation(line: 200, column: 2, scope: !6033)
!6048 = !DILocalVariable(name: "__mptr", scope: !6049, file: !1, line: 201, type: !299)
!6049 = distinct !DILexicalBlock(scope: !6050, file: !1, line: 201, column: 2)
!6050 = distinct !DILexicalBlock(scope: !6033, file: !1, line: 201, column: 2)
!6051 = !DILocation(line: 201, column: 2, scope: !6049)
!6052 = !DILocation(line: 201, column: 2, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6049, file: !1, line: 201, column: 2)
!6054 = !DILocation(line: 201, column: 2, scope: !6050)
!6055 = !DILocation(line: 201, column: 2, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6050, file: !1, line: 201, column: 2)
!6057 = !DILocation(line: 202, column: 8, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6059, file: !1, line: 202, column: 7)
!6059 = distinct !DILexicalBlock(scope: !6056, file: !1, line: 201, column: 54)
!6060 = !DILocation(line: 202, column: 16, scope: !6058)
!6061 = !DILocation(line: 202, column: 22, scope: !6058)
!6062 = !DILocation(line: 202, column: 26, scope: !6058)
!6063 = !DILocation(line: 202, column: 34, scope: !6058)
!6064 = !DILocation(line: 202, column: 41, scope: !6058)
!6065 = !DILocation(line: 202, column: 7, scope: !6059)
!6066 = !DILocation(line: 203, column: 4, scope: !6058)
!6067 = !DILocation(line: 205, column: 9, scope: !6059)
!6068 = !DILocation(line: 205, column: 17, scope: !6059)
!6069 = !DILocation(line: 205, column: 24, scope: !6059)
!6070 = !DILocation(line: 205, column: 32, scope: !6059)
!6071 = !DILocation(line: 205, column: 7, scope: !6059)
!6072 = !DILocation(line: 206, column: 3, scope: !6059)
!6073 = !DILocation(line: 207, column: 2, scope: !6059)
!6074 = !DILocalVariable(name: "__mptr", scope: !6075, file: !1, line: 201, type: !299)
!6075 = distinct !DILexicalBlock(scope: !6056, file: !1, line: 201, column: 2)
!6076 = !DILocation(line: 201, column: 2, scope: !6075)
!6077 = !DILocation(line: 201, column: 2, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6075, file: !1, line: 201, column: 2)
!6079 = distinct !{!6079, !6054, !6080}
!6080 = !DILocation(line: 207, column: 2, scope: !6050)
!6081 = !DILocation(line: 208, column: 16, scope: !6033)
!6082 = !DILocation(line: 208, column: 21, scope: !6033)
!6083 = !DILocation(line: 208, column: 2, scope: !6033)
!6084 = !DILocation(line: 209, column: 1, scope: !6033)
!6085 = distinct !DISubprogram(name: "drm_client_dev_restore", scope: !1, file: !1, line: 212, type: !4189, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6086 = !DILocalVariable(name: "dev", arg: 1, scope: !6085, file: !1, line: 212, type: !305)
!6087 = !DILocation(line: 212, column: 48, scope: !6085)
!6088 = !DILocalVariable(name: "client", scope: !6085, file: !1, line: 214, type: !300)
!6089 = !DILocation(line: 214, column: 25, scope: !6085)
!6090 = !DILocalVariable(name: "ret", scope: !6085, file: !1, line: 215, type: !121)
!6091 = !DILocation(line: 215, column: 6, scope: !6085)
!6092 = !DILocation(line: 217, column: 30, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6085, file: !1, line: 217, column: 6)
!6094 = !DILocation(line: 217, column: 7, scope: !6093)
!6095 = !DILocation(line: 217, column: 6, scope: !6085)
!6096 = !DILocation(line: 218, column: 3, scope: !6093)
!6097 = !DILocation(line: 220, column: 14, scope: !6085)
!6098 = !DILocation(line: 220, column: 19, scope: !6085)
!6099 = !DILocation(line: 220, column: 2, scope: !6085)
!6100 = !DILocalVariable(name: "__mptr", scope: !6101, file: !1, line: 221, type: !299)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !1, line: 221, column: 2)
!6102 = distinct !DILexicalBlock(scope: !6085, file: !1, line: 221, column: 2)
!6103 = !DILocation(line: 221, column: 2, scope: !6101)
!6104 = !DILocation(line: 221, column: 2, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6101, file: !1, line: 221, column: 2)
!6106 = !DILocation(line: 221, column: 2, scope: !6102)
!6107 = !DILocation(line: 221, column: 2, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6102, file: !1, line: 221, column: 2)
!6109 = !DILocation(line: 222, column: 8, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !1, line: 222, column: 7)
!6111 = distinct !DILexicalBlock(scope: !6108, file: !1, line: 221, column: 54)
!6112 = !DILocation(line: 222, column: 16, scope: !6110)
!6113 = !DILocation(line: 222, column: 22, scope: !6110)
!6114 = !DILocation(line: 222, column: 26, scope: !6110)
!6115 = !DILocation(line: 222, column: 34, scope: !6110)
!6116 = !DILocation(line: 222, column: 41, scope: !6110)
!6117 = !DILocation(line: 222, column: 7, scope: !6111)
!6118 = !DILocation(line: 223, column: 4, scope: !6110)
!6119 = !DILocation(line: 225, column: 9, scope: !6111)
!6120 = !DILocation(line: 225, column: 17, scope: !6111)
!6121 = !DILocation(line: 225, column: 24, scope: !6111)
!6122 = !DILocation(line: 225, column: 32, scope: !6111)
!6123 = !DILocation(line: 225, column: 7, scope: !6111)
!6124 = !DILocation(line: 226, column: 3, scope: !6111)
!6125 = !DILocation(line: 227, column: 8, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6111, file: !1, line: 227, column: 7)
!6127 = !DILocation(line: 227, column: 7, scope: !6111)
!6128 = !DILocation(line: 228, column: 4, scope: !6126)
!6129 = !DILocation(line: 229, column: 2, scope: !6111)
!6130 = !DILocalVariable(name: "__mptr", scope: !6131, file: !1, line: 221, type: !299)
!6131 = distinct !DILexicalBlock(scope: !6108, file: !1, line: 221, column: 2)
!6132 = !DILocation(line: 221, column: 2, scope: !6131)
!6133 = !DILocation(line: 221, column: 2, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6131, file: !1, line: 221, column: 2)
!6135 = distinct !{!6135, !6106, !6136}
!6136 = !DILocation(line: 229, column: 2, scope: !6102)
!6137 = !DILocation(line: 230, column: 16, scope: !6085)
!6138 = !DILocation(line: 230, column: 21, scope: !6085)
!6139 = !DILocation(line: 230, column: 2, scope: !6085)
!6140 = !DILocation(line: 231, column: 1, scope: !6085)
!6141 = distinct !DISubprogram(name: "drm_client_buffer_vmap", scope: !1, file: !1, line: 305, type: !6142, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{!299, !6144}
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_client_buffer", file: !302, line: 122, size: 320, elements: !6146)
!6146 = !{!6147, !6148, !6149, !6150, !6151, !6152}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !6145, file: !302, line: 126, baseType: !300, size: 64)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6145, file: !302, line: 131, baseType: !532, size: 32, offset: 64)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !6145, file: !302, line: 136, baseType: !532, size: 32, offset: 96)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "gem", scope: !6145, file: !302, line: 141, baseType: !4217, size: 64, offset: 128)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !6145, file: !302, line: 146, baseType: !299, size: 64, offset: 192)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !6145, file: !302, line: 151, baseType: !4717, size: 64, offset: 256)
!6153 = !DILocalVariable(name: "buffer", arg: 1, scope: !6141, file: !1, line: 305, type: !6144)
!6154 = !DILocation(line: 305, column: 56, scope: !6141)
!6155 = !DILocalVariable(name: "vaddr", scope: !6141, file: !1, line: 307, type: !299)
!6156 = !DILocation(line: 307, column: 8, scope: !6141)
!6157 = !DILocation(line: 309, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6141, file: !1, line: 309, column: 6)
!6159 = !DILocation(line: 309, column: 14, scope: !6158)
!6160 = !DILocation(line: 309, column: 6, scope: !6141)
!6161 = !DILocation(line: 310, column: 10, scope: !6158)
!6162 = !DILocation(line: 310, column: 18, scope: !6158)
!6163 = !DILocation(line: 310, column: 3, scope: !6158)
!6164 = !DILocation(line: 320, column: 23, scope: !6141)
!6165 = !DILocation(line: 320, column: 31, scope: !6141)
!6166 = !DILocation(line: 320, column: 10, scope: !6141)
!6167 = !DILocation(line: 320, column: 8, scope: !6141)
!6168 = !DILocation(line: 321, column: 13, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6141, file: !1, line: 321, column: 6)
!6170 = !DILocation(line: 321, column: 6, scope: !6169)
!6171 = !DILocation(line: 321, column: 6, scope: !6141)
!6172 = !DILocation(line: 322, column: 10, scope: !6169)
!6173 = !DILocation(line: 322, column: 3, scope: !6169)
!6174 = !DILocation(line: 324, column: 18, scope: !6141)
!6175 = !DILocation(line: 324, column: 2, scope: !6141)
!6176 = !DILocation(line: 324, column: 10, scope: !6141)
!6177 = !DILocation(line: 324, column: 16, scope: !6141)
!6178 = !DILocation(line: 326, column: 9, scope: !6141)
!6179 = !DILocation(line: 326, column: 2, scope: !6141)
!6180 = !DILocation(line: 327, column: 1, scope: !6141)
!6181 = distinct !DISubprogram(name: "IS_ERR", scope: !6182, file: !6182, line: 34, type: !6183, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6182 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!607, !2336}
!6185 = !DILocalVariable(name: "ptr", arg: 1, scope: !6181, file: !6182, line: 34, type: !2336)
!6186 = !DILocation(line: 34, column: 60, scope: !6181)
!6187 = !DILocation(line: 36, column: 9, scope: !6181)
!6188 = !DILocation(line: 36, column: 2, scope: !6181)
!6189 = distinct !DISubprogram(name: "drm_client_buffer_vunmap", scope: !1, file: !1, line: 338, type: !6190, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6190 = !DISubroutineType(types: !6191)
!6191 = !{null, !6144}
!6192 = !DILocalVariable(name: "buffer", arg: 1, scope: !6189, file: !1, line: 338, type: !6144)
!6193 = !DILocation(line: 338, column: 57, scope: !6189)
!6194 = !DILocation(line: 340, column: 17, scope: !6189)
!6195 = !DILocation(line: 340, column: 25, scope: !6189)
!6196 = !DILocation(line: 340, column: 30, scope: !6189)
!6197 = !DILocation(line: 340, column: 38, scope: !6189)
!6198 = !DILocation(line: 340, column: 2, scope: !6189)
!6199 = !DILocation(line: 341, column: 2, scope: !6189)
!6200 = !DILocation(line: 341, column: 10, scope: !6189)
!6201 = !DILocation(line: 341, column: 16, scope: !6189)
!6202 = !DILocation(line: 342, column: 1, scope: !6189)
!6203 = distinct !DISubprogram(name: "drm_client_framebuffer_create", scope: !1, file: !1, line: 407, type: !6204, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{!6144, !300, !532, !532, !532}
!6206 = !DILocalVariable(name: "client", arg: 1, scope: !6203, file: !1, line: 407, type: !300)
!6207 = !DILocation(line: 407, column: 54, scope: !6203)
!6208 = !DILocalVariable(name: "width", arg: 2, scope: !6203, file: !1, line: 407, type: !532)
!6209 = !DILocation(line: 407, column: 66, scope: !6203)
!6210 = !DILocalVariable(name: "height", arg: 3, scope: !6203, file: !1, line: 407, type: !532)
!6211 = !DILocation(line: 407, column: 77, scope: !6203)
!6212 = !DILocalVariable(name: "format", arg: 4, scope: !6203, file: !1, line: 407, type: !532)
!6213 = !DILocation(line: 407, column: 89, scope: !6203)
!6214 = !DILocalVariable(name: "buffer", scope: !6203, file: !1, line: 409, type: !6144)
!6215 = !DILocation(line: 409, column: 28, scope: !6203)
!6216 = !DILocalVariable(name: "ret", scope: !6203, file: !1, line: 410, type: !121)
!6217 = !DILocation(line: 410, column: 6, scope: !6203)
!6218 = !DILocation(line: 412, column: 36, scope: !6203)
!6219 = !DILocation(line: 412, column: 44, scope: !6203)
!6220 = !DILocation(line: 412, column: 51, scope: !6203)
!6221 = !DILocation(line: 412, column: 59, scope: !6203)
!6222 = !DILocation(line: 412, column: 11, scope: !6203)
!6223 = !DILocation(line: 412, column: 9, scope: !6203)
!6224 = !DILocation(line: 413, column: 13, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6203, file: !1, line: 413, column: 6)
!6226 = !DILocation(line: 413, column: 6, scope: !6225)
!6227 = !DILocation(line: 413, column: 6, scope: !6203)
!6228 = !DILocation(line: 414, column: 10, scope: !6225)
!6229 = !DILocation(line: 414, column: 3, scope: !6225)
!6230 = !DILocation(line: 416, column: 32, scope: !6203)
!6231 = !DILocation(line: 416, column: 40, scope: !6203)
!6232 = !DILocation(line: 416, column: 47, scope: !6203)
!6233 = !DILocation(line: 416, column: 55, scope: !6203)
!6234 = !DILocation(line: 416, column: 8, scope: !6203)
!6235 = !DILocation(line: 416, column: 6, scope: !6203)
!6236 = !DILocation(line: 417, column: 6, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6203, file: !1, line: 417, column: 6)
!6238 = !DILocation(line: 417, column: 6, scope: !6203)
!6239 = !DILocation(line: 418, column: 28, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !1, line: 417, column: 11)
!6241 = !DILocation(line: 418, column: 3, scope: !6240)
!6242 = !DILocation(line: 419, column: 18, scope: !6240)
!6243 = !DILocation(line: 419, column: 10, scope: !6240)
!6244 = !DILocation(line: 419, column: 3, scope: !6240)
!6245 = !DILocation(line: 422, column: 9, scope: !6203)
!6246 = !DILocation(line: 422, column: 2, scope: !6203)
!6247 = !DILocation(line: 423, column: 1, scope: !6203)
!6248 = distinct !DISubprogram(name: "drm_client_buffer_create", scope: !1, file: !1, line: 249, type: !6204, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6249 = !DILocalVariable(name: "client", arg: 1, scope: !6248, file: !1, line: 249, type: !300)
!6250 = !DILocation(line: 249, column: 49, scope: !6248)
!6251 = !DILocalVariable(name: "width", arg: 2, scope: !6248, file: !1, line: 249, type: !532)
!6252 = !DILocation(line: 249, column: 61, scope: !6248)
!6253 = !DILocalVariable(name: "height", arg: 3, scope: !6248, file: !1, line: 249, type: !532)
!6254 = !DILocation(line: 249, column: 72, scope: !6248)
!6255 = !DILocalVariable(name: "format", arg: 4, scope: !6248, file: !1, line: 249, type: !532)
!6256 = !DILocation(line: 249, column: 84, scope: !6248)
!6257 = !DILocalVariable(name: "info", scope: !6248, file: !1, line: 251, type: !4760)
!6258 = !DILocation(line: 251, column: 32, scope: !6248)
!6259 = !DILocation(line: 251, column: 55, scope: !6248)
!6260 = !DILocation(line: 251, column: 39, scope: !6248)
!6261 = !DILocalVariable(name: "dumb_args", scope: !6248, file: !1, line: 252, type: !4479)
!6262 = !DILocation(line: 252, column: 30, scope: !6248)
!6263 = !DILocalVariable(name: "dev", scope: !6248, file: !1, line: 253, type: !305)
!6264 = !DILocation(line: 253, column: 21, scope: !6248)
!6265 = !DILocation(line: 253, column: 27, scope: !6248)
!6266 = !DILocation(line: 253, column: 35, scope: !6248)
!6267 = !DILocalVariable(name: "buffer", scope: !6248, file: !1, line: 254, type: !6144)
!6268 = !DILocation(line: 254, column: 28, scope: !6248)
!6269 = !DILocalVariable(name: "obj", scope: !6248, file: !1, line: 255, type: !4217)
!6270 = !DILocation(line: 255, column: 25, scope: !6248)
!6271 = !DILocalVariable(name: "ret", scope: !6248, file: !1, line: 256, type: !121)
!6272 = !DILocation(line: 256, column: 6, scope: !6248)
!6273 = !DILocation(line: 258, column: 11, scope: !6248)
!6274 = !DILocation(line: 258, column: 9, scope: !6248)
!6275 = !DILocation(line: 259, column: 7, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6248, file: !1, line: 259, column: 6)
!6277 = !DILocation(line: 259, column: 6, scope: !6248)
!6278 = !DILocation(line: 260, column: 10, scope: !6276)
!6279 = !DILocation(line: 260, column: 3, scope: !6276)
!6280 = !DILocation(line: 262, column: 19, scope: !6248)
!6281 = !DILocation(line: 262, column: 2, scope: !6248)
!6282 = !DILocation(line: 262, column: 10, scope: !6248)
!6283 = !DILocation(line: 262, column: 17, scope: !6248)
!6284 = !DILocation(line: 264, column: 20, scope: !6248)
!6285 = !DILocation(line: 264, column: 12, scope: !6248)
!6286 = !DILocation(line: 264, column: 18, scope: !6248)
!6287 = !DILocation(line: 265, column: 21, scope: !6248)
!6288 = !DILocation(line: 265, column: 12, scope: !6248)
!6289 = !DILocation(line: 265, column: 19, scope: !6248)
!6290 = !DILocation(line: 266, column: 18, scope: !6248)
!6291 = !DILocation(line: 266, column: 24, scope: !6248)
!6292 = !DILocation(line: 266, column: 31, scope: !6248)
!6293 = !DILocation(line: 266, column: 12, scope: !6248)
!6294 = !DILocation(line: 266, column: 16, scope: !6248)
!6295 = !DILocation(line: 267, column: 29, scope: !6248)
!6296 = !DILocation(line: 267, column: 46, scope: !6248)
!6297 = !DILocation(line: 267, column: 54, scope: !6248)
!6298 = !DILocation(line: 267, column: 8, scope: !6248)
!6299 = !DILocation(line: 267, column: 6, scope: !6248)
!6300 = !DILocation(line: 268, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6248, file: !1, line: 268, column: 6)
!6302 = !DILocation(line: 268, column: 6, scope: !6248)
!6303 = !DILocation(line: 269, column: 3, scope: !6301)
!6304 = !DILocation(line: 271, column: 29, scope: !6248)
!6305 = !DILocation(line: 271, column: 2, scope: !6248)
!6306 = !DILocation(line: 271, column: 10, scope: !6248)
!6307 = !DILocation(line: 271, column: 17, scope: !6248)
!6308 = !DILocation(line: 272, column: 28, scope: !6248)
!6309 = !DILocation(line: 272, column: 2, scope: !6248)
!6310 = !DILocation(line: 272, column: 10, scope: !6248)
!6311 = !DILocation(line: 272, column: 16, scope: !6248)
!6312 = !DILocation(line: 274, column: 30, scope: !6248)
!6313 = !DILocation(line: 274, column: 38, scope: !6248)
!6314 = !DILocation(line: 274, column: 54, scope: !6248)
!6315 = !DILocation(line: 274, column: 8, scope: !6248)
!6316 = !DILocation(line: 274, column: 6, scope: !6248)
!6317 = !DILocation(line: 275, column: 7, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6248, file: !1, line: 275, column: 6)
!6319 = !DILocation(line: 275, column: 6, scope: !6248)
!6320 = !DILocation(line: 276, column: 7, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6318, file: !1, line: 275, column: 13)
!6322 = !DILocation(line: 277, column: 3, scope: !6321)
!6323 = !DILocation(line: 280, column: 16, scope: !6248)
!6324 = !DILocation(line: 280, column: 2, scope: !6248)
!6325 = !DILocation(line: 280, column: 10, scope: !6248)
!6326 = !DILocation(line: 280, column: 14, scope: !6248)
!6327 = !DILocation(line: 282, column: 9, scope: !6248)
!6328 = !DILocation(line: 282, column: 2, scope: !6248)
!6329 = !DILabel(scope: !6248, name: "err_delete", file: !1, line: 284)
!6330 = !DILocation(line: 284, column: 1, scope: !6248)
!6331 = !DILocation(line: 285, column: 27, scope: !6248)
!6332 = !DILocation(line: 285, column: 2, scope: !6248)
!6333 = !DILocation(line: 287, column: 17, scope: !6248)
!6334 = !DILocation(line: 287, column: 9, scope: !6248)
!6335 = !DILocation(line: 287, column: 2, scope: !6248)
!6336 = !DILocation(line: 288, column: 1, scope: !6248)
!6337 = distinct !DISubprogram(name: "drm_client_buffer_addfb", scope: !1, file: !1, line: 360, type: !6338, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{!121, !6144, !532, !532, !532}
!6340 = !DILocalVariable(name: "buffer", arg: 1, scope: !6337, file: !1, line: 360, type: !6144)
!6341 = !DILocation(line: 360, column: 62, scope: !6337)
!6342 = !DILocalVariable(name: "width", arg: 2, scope: !6337, file: !1, line: 361, type: !532)
!6343 = !DILocation(line: 361, column: 12, scope: !6337)
!6344 = !DILocalVariable(name: "height", arg: 3, scope: !6337, file: !1, line: 361, type: !532)
!6345 = !DILocation(line: 361, column: 23, scope: !6337)
!6346 = !DILocalVariable(name: "format", arg: 4, scope: !6337, file: !1, line: 361, type: !532)
!6347 = !DILocation(line: 361, column: 35, scope: !6337)
!6348 = !DILocalVariable(name: "client", scope: !6337, file: !1, line: 363, type: !300)
!6349 = !DILocation(line: 363, column: 25, scope: !6337)
!6350 = !DILocation(line: 363, column: 34, scope: !6337)
!6351 = !DILocation(line: 363, column: 42, scope: !6337)
!6352 = !DILocalVariable(name: "fb_req", scope: !6337, file: !1, line: 364, type: !6353)
!6353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd", file: !221, line: 480, size: 224, elements: !6354)
!6354 = !{!6355, !6356, !6357, !6358, !6359, !6360, !6361}
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !6353, file: !221, line: 481, baseType: !534, size: 32)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6353, file: !221, line: 482, baseType: !534, size: 32, offset: 32)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6353, file: !221, line: 483, baseType: !534, size: 32, offset: 64)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !6353, file: !221, line: 484, baseType: !534, size: 32, offset: 96)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !6353, file: !221, line: 485, baseType: !534, size: 32, offset: 128)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6353, file: !221, line: 486, baseType: !534, size: 32, offset: 160)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6353, file: !221, line: 488, baseType: !534, size: 32, offset: 192)
!6362 = !DILocation(line: 364, column: 25, scope: !6337)
!6363 = !DILocalVariable(name: "info", scope: !6337, file: !1, line: 365, type: !4760)
!6364 = !DILocation(line: 365, column: 32, scope: !6337)
!6365 = !DILocalVariable(name: "ret", scope: !6337, file: !1, line: 366, type: !121)
!6366 = !DILocation(line: 366, column: 6, scope: !6337)
!6367 = !DILocation(line: 368, column: 25, scope: !6337)
!6368 = !DILocation(line: 368, column: 9, scope: !6337)
!6369 = !DILocation(line: 368, column: 7, scope: !6337)
!6370 = !DILocation(line: 369, column: 15, scope: !6337)
!6371 = !DILocation(line: 369, column: 21, scope: !6337)
!6372 = !DILocation(line: 369, column: 28, scope: !6337)
!6373 = !DILocation(line: 369, column: 9, scope: !6337)
!6374 = !DILocation(line: 369, column: 13, scope: !6337)
!6375 = !DILocation(line: 370, column: 17, scope: !6337)
!6376 = !DILocation(line: 370, column: 23, scope: !6337)
!6377 = !DILocation(line: 370, column: 9, scope: !6337)
!6378 = !DILocation(line: 370, column: 15, scope: !6337)
!6379 = !DILocation(line: 371, column: 17, scope: !6337)
!6380 = !DILocation(line: 371, column: 9, scope: !6337)
!6381 = !DILocation(line: 371, column: 15, scope: !6337)
!6382 = !DILocation(line: 372, column: 18, scope: !6337)
!6383 = !DILocation(line: 372, column: 9, scope: !6337)
!6384 = !DILocation(line: 372, column: 16, scope: !6337)
!6385 = !DILocation(line: 373, column: 18, scope: !6337)
!6386 = !DILocation(line: 373, column: 26, scope: !6337)
!6387 = !DILocation(line: 373, column: 9, scope: !6337)
!6388 = !DILocation(line: 373, column: 16, scope: !6337)
!6389 = !DILocation(line: 374, column: 17, scope: !6337)
!6390 = !DILocation(line: 374, column: 25, scope: !6337)
!6391 = !DILocation(line: 374, column: 9, scope: !6337)
!6392 = !DILocation(line: 374, column: 15, scope: !6337)
!6393 = !DILocation(line: 376, column: 23, scope: !6337)
!6394 = !DILocation(line: 376, column: 31, scope: !6337)
!6395 = !DILocation(line: 376, column: 45, scope: !6337)
!6396 = !DILocation(line: 376, column: 53, scope: !6337)
!6397 = !DILocation(line: 376, column: 8, scope: !6337)
!6398 = !DILocation(line: 376, column: 6, scope: !6337)
!6399 = !DILocation(line: 377, column: 6, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6337, file: !1, line: 377, column: 6)
!6401 = !DILocation(line: 377, column: 6, scope: !6337)
!6402 = !DILocation(line: 378, column: 10, scope: !6400)
!6403 = !DILocation(line: 378, column: 3, scope: !6400)
!6404 = !DILocation(line: 380, column: 38, scope: !6337)
!6405 = !DILocation(line: 380, column: 46, scope: !6337)
!6406 = !DILocation(line: 380, column: 51, scope: !6337)
!6407 = !DILocation(line: 380, column: 59, scope: !6337)
!6408 = !DILocation(line: 380, column: 67, scope: !6337)
!6409 = !DILocation(line: 380, column: 80, scope: !6337)
!6410 = !DILocation(line: 380, column: 15, scope: !6337)
!6411 = !DILocation(line: 380, column: 2, scope: !6337)
!6412 = !DILocation(line: 380, column: 10, scope: !6337)
!6413 = !DILocation(line: 380, column: 13, scope: !6337)
!6414 = !DILocalVariable(name: "__ret_warn_on", scope: !6415, file: !1, line: 381, type: !121)
!6415 = distinct !DILexicalBlock(scope: !6416, file: !1, line: 381, column: 6)
!6416 = distinct !DILexicalBlock(scope: !6337, file: !1, line: 381, column: 6)
!6417 = !DILocation(line: 381, column: 6, scope: !6415)
!6418 = !DILocation(line: 381, column: 6, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6415, file: !1, line: 381, column: 6)
!6420 = !DILocation(line: 381, column: 6, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6419, file: !1, line: 381, column: 6)
!6422 = !DILocation(line: 381, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6421, file: !1, line: 381, column: 6)
!6424 = !DILocation(line: 381, column: 6, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6421, file: !1, line: 381, column: 6)
!6426 = !{i32 -2140477245, i32 -2140477216, i32 -2140477170, i32 -2140477112, i32 -2140477058, i32 -2140477004, i32 -2140476949, i32 -2140476918}
!6427 = !DILocation(line: 381, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6421, file: !1, line: 381, column: 6)
!6429 = !{i32 -2140476508, i32 -2140476501, i32 -2140476449, i32 -2140476418, i32 -2140476388}
!6430 = !DILocation(line: 381, column: 6, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6421, file: !1, line: 381, column: 6)
!6432 = !DILocation(line: 381, column: 6, scope: !6416)
!6433 = !DILocation(line: 381, column: 6, scope: !6337)
!6434 = !DILocation(line: 382, column: 3, scope: !6416)
!6435 = !DILocation(line: 385, column: 22, scope: !6337)
!6436 = !DILocation(line: 385, column: 30, scope: !6337)
!6437 = !DILocation(line: 385, column: 2, scope: !6337)
!6438 = !DILocation(line: 387, column: 10, scope: !6337)
!6439 = !DILocation(line: 387, column: 18, scope: !6337)
!6440 = !DILocation(line: 387, column: 22, scope: !6337)
!6441 = !DILocation(line: 387, column: 28, scope: !6337)
!6442 = !DILocation(line: 387, column: 36, scope: !6337)
!6443 = !DILocation(line: 387, column: 2, scope: !6337)
!6444 = !DILocation(line: 389, column: 2, scope: !6337)
!6445 = !DILocation(line: 390, column: 1, scope: !6337)
!6446 = distinct !DISubprogram(name: "drm_client_buffer_delete", scope: !1, file: !1, line: 233, type: !6190, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6447 = !DILocalVariable(name: "buffer", arg: 1, scope: !6446, file: !1, line: 233, type: !6144)
!6448 = !DILocation(line: 233, column: 64, scope: !6446)
!6449 = !DILocalVariable(name: "dev", scope: !6446, file: !1, line: 235, type: !305)
!6450 = !DILocation(line: 235, column: 21, scope: !6446)
!6451 = !DILocation(line: 235, column: 27, scope: !6446)
!6452 = !DILocation(line: 235, column: 35, scope: !6446)
!6453 = !DILocation(line: 235, column: 43, scope: !6446)
!6454 = !DILocation(line: 237, column: 17, scope: !6446)
!6455 = !DILocation(line: 237, column: 25, scope: !6446)
!6456 = !DILocation(line: 237, column: 30, scope: !6446)
!6457 = !DILocation(line: 237, column: 38, scope: !6446)
!6458 = !DILocation(line: 237, column: 2, scope: !6446)
!6459 = !DILocation(line: 239, column: 6, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6446, file: !1, line: 239, column: 6)
!6461 = !DILocation(line: 239, column: 14, scope: !6460)
!6462 = !DILocation(line: 239, column: 6, scope: !6446)
!6463 = !DILocation(line: 240, column: 22, scope: !6460)
!6464 = !DILocation(line: 240, column: 30, scope: !6460)
!6465 = !DILocation(line: 240, column: 3, scope: !6460)
!6466 = !DILocation(line: 242, column: 6, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6446, file: !1, line: 242, column: 6)
!6468 = !DILocation(line: 242, column: 14, scope: !6467)
!6469 = !DILocation(line: 242, column: 6, scope: !6446)
!6470 = !DILocation(line: 243, column: 25, scope: !6467)
!6471 = !DILocation(line: 243, column: 30, scope: !6467)
!6472 = !DILocation(line: 243, column: 38, scope: !6467)
!6473 = !DILocation(line: 243, column: 46, scope: !6467)
!6474 = !DILocation(line: 243, column: 54, scope: !6467)
!6475 = !DILocation(line: 243, column: 62, scope: !6467)
!6476 = !DILocation(line: 243, column: 3, scope: !6467)
!6477 = !DILocation(line: 245, column: 8, scope: !6446)
!6478 = !DILocation(line: 245, column: 2, scope: !6446)
!6479 = !DILocation(line: 246, column: 1, scope: !6446)
!6480 = distinct !DISubprogram(name: "ERR_PTR", scope: !6182, file: !6182, line: 24, type: !6481, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{!299, !426}
!6483 = !DILocalVariable(name: "error", arg: 1, scope: !6480, file: !6182, line: 24, type: !426)
!6484 = !DILocation(line: 24, column: 48, scope: !6480)
!6485 = !DILocation(line: 26, column: 18, scope: !6480)
!6486 = !DILocation(line: 26, column: 9, scope: !6480)
!6487 = !DILocation(line: 26, column: 2, scope: !6480)
!6488 = distinct !DISubprogram(name: "drm_client_framebuffer_delete", scope: !1, file: !1, line: 430, type: !6190, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6489 = !DILocalVariable(name: "buffer", arg: 1, scope: !6488, file: !1, line: 430, type: !6144)
!6490 = !DILocation(line: 430, column: 62, scope: !6488)
!6491 = !DILocation(line: 432, column: 7, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6488, file: !1, line: 432, column: 6)
!6493 = !DILocation(line: 432, column: 6, scope: !6488)
!6494 = !DILocation(line: 433, column: 3, scope: !6492)
!6495 = !DILocation(line: 435, column: 25, scope: !6488)
!6496 = !DILocation(line: 435, column: 2, scope: !6488)
!6497 = !DILocation(line: 436, column: 27, scope: !6488)
!6498 = !DILocation(line: 436, column: 2, scope: !6488)
!6499 = !DILocation(line: 437, column: 1, scope: !6488)
!6500 = distinct !DISubprogram(name: "drm_client_buffer_rmfb", scope: !1, file: !1, line: 345, type: !6190, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6501 = !DILocalVariable(name: "buffer", arg: 1, scope: !6500, file: !1, line: 345, type: !6144)
!6502 = !DILocation(line: 345, column: 62, scope: !6500)
!6503 = !DILocalVariable(name: "ret", scope: !6500, file: !1, line: 347, type: !121)
!6504 = !DILocation(line: 347, column: 6, scope: !6500)
!6505 = !DILocation(line: 349, column: 7, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6500, file: !1, line: 349, column: 6)
!6507 = !DILocation(line: 349, column: 15, scope: !6506)
!6508 = !DILocation(line: 349, column: 6, scope: !6500)
!6509 = !DILocation(line: 350, column: 3, scope: !6506)
!6510 = !DILocation(line: 352, column: 22, scope: !6500)
!6511 = !DILocation(line: 352, column: 30, scope: !6500)
!6512 = !DILocation(line: 352, column: 38, scope: !6500)
!6513 = !DILocation(line: 352, column: 43, scope: !6500)
!6514 = !DILocation(line: 352, column: 51, scope: !6500)
!6515 = !DILocation(line: 352, column: 55, scope: !6500)
!6516 = !DILocation(line: 352, column: 60, scope: !6500)
!6517 = !DILocation(line: 352, column: 64, scope: !6500)
!6518 = !DILocation(line: 352, column: 72, scope: !6500)
!6519 = !DILocation(line: 352, column: 80, scope: !6500)
!6520 = !DILocation(line: 352, column: 8, scope: !6500)
!6521 = !DILocation(line: 352, column: 6, scope: !6500)
!6522 = !DILocation(line: 353, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6500, file: !1, line: 353, column: 6)
!6524 = !DILocation(line: 353, column: 6, scope: !6500)
!6525 = !DILocation(line: 354, column: 3, scope: !6523)
!6526 = !DILocation(line: 357, column: 2, scope: !6500)
!6527 = !DILocation(line: 357, column: 10, scope: !6500)
!6528 = !DILocation(line: 357, column: 13, scope: !6500)
!6529 = !DILocation(line: 358, column: 1, scope: !6500)
!6530 = distinct !DISubprogram(name: "drm_client_framebuffer_flush", scope: !1, file: !1, line: 451, type: !6531, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{!121, !6144, !6533}
!6533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!6534 = !DILocalVariable(name: "buffer", arg: 1, scope: !6530, file: !1, line: 451, type: !6144)
!6535 = !DILocation(line: 451, column: 60, scope: !6530)
!6536 = !DILocalVariable(name: "rect", arg: 2, scope: !6530, file: !1, line: 451, type: !6533)
!6537 = !DILocation(line: 451, column: 85, scope: !6530)
!6538 = !DILocation(line: 453, column: 7, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6530, file: !1, line: 453, column: 6)
!6540 = !DILocation(line: 453, column: 14, scope: !6539)
!6541 = !DILocation(line: 453, column: 18, scope: !6539)
!6542 = !DILocation(line: 453, column: 26, scope: !6539)
!6543 = !DILocation(line: 453, column: 29, scope: !6539)
!6544 = !DILocation(line: 453, column: 33, scope: !6539)
!6545 = !DILocation(line: 453, column: 41, scope: !6539)
!6546 = !DILocation(line: 453, column: 45, scope: !6539)
!6547 = !DILocation(line: 453, column: 52, scope: !6539)
!6548 = !DILocation(line: 453, column: 6, scope: !6530)
!6549 = !DILocation(line: 454, column: 3, scope: !6539)
!6550 = !DILocation(line: 456, column: 6, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6530, file: !1, line: 456, column: 6)
!6552 = !DILocation(line: 456, column: 6, scope: !6530)
!6553 = !DILocalVariable(name: "clip", scope: !6554, file: !1, line: 457, type: !4798)
!6554 = distinct !DILexicalBlock(scope: !6551, file: !1, line: 456, column: 12)
!6555 = !DILocation(line: 457, column: 24, scope: !6554)
!6556 = !DILocation(line: 457, column: 31, scope: !6554)
!6557 = !DILocation(line: 458, column: 10, scope: !6554)
!6558 = !DILocation(line: 458, column: 16, scope: !6554)
!6559 = !DILocation(line: 459, column: 10, scope: !6554)
!6560 = !DILocation(line: 459, column: 16, scope: !6554)
!6561 = !DILocation(line: 460, column: 10, scope: !6554)
!6562 = !DILocation(line: 460, column: 16, scope: !6554)
!6563 = !DILocation(line: 461, column: 10, scope: !6554)
!6564 = !DILocation(line: 461, column: 16, scope: !6554)
!6565 = !DILocation(line: 464, column: 10, scope: !6554)
!6566 = !DILocation(line: 464, column: 18, scope: !6554)
!6567 = !DILocation(line: 464, column: 22, scope: !6554)
!6568 = !DILocation(line: 464, column: 29, scope: !6554)
!6569 = !DILocation(line: 464, column: 35, scope: !6554)
!6570 = !DILocation(line: 464, column: 43, scope: !6554)
!6571 = !DILocation(line: 464, column: 47, scope: !6554)
!6572 = !DILocation(line: 464, column: 55, scope: !6554)
!6573 = !DILocation(line: 464, column: 63, scope: !6554)
!6574 = !DILocation(line: 464, column: 3, scope: !6554)
!6575 = !DILocation(line: 468, column: 9, scope: !6530)
!6576 = !DILocation(line: 468, column: 17, scope: !6530)
!6577 = !DILocation(line: 468, column: 21, scope: !6530)
!6578 = !DILocation(line: 468, column: 28, scope: !6530)
!6579 = !DILocation(line: 468, column: 34, scope: !6530)
!6580 = !DILocation(line: 468, column: 42, scope: !6530)
!6581 = !DILocation(line: 468, column: 46, scope: !6530)
!6582 = !DILocation(line: 468, column: 54, scope: !6530)
!6583 = !DILocation(line: 468, column: 62, scope: !6530)
!6584 = !DILocation(line: 468, column: 2, scope: !6530)
!6585 = !DILocation(line: 470, column: 1, scope: !6530)
!6586 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !250, file: !250, line: 672, type: !6587, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6587 = !DISubroutineType(types: !6588)
!6588 = !{!607, !5818, !532}
!6589 = !DILocalVariable(name: "dev", arg: 1, scope: !6586, file: !250, line: 672, type: !5818)
!6590 = !DILocation(line: 672, column: 73, scope: !6586)
!6591 = !DILocalVariable(name: "features", arg: 2, scope: !6586, file: !250, line: 673, type: !532)
!6592 = !DILocation(line: 673, column: 17, scope: !6586)
!6593 = !DILocalVariable(name: "supported", scope: !6586, file: !250, line: 675, type: !532)
!6594 = !DILocation(line: 675, column: 6, scope: !6586)
!6595 = !DILocation(line: 675, column: 18, scope: !6586)
!6596 = !DILocation(line: 675, column: 23, scope: !6586)
!6597 = !DILocation(line: 675, column: 31, scope: !6586)
!6598 = !DILocation(line: 675, column: 49, scope: !6586)
!6599 = !DILocation(line: 675, column: 54, scope: !6586)
!6600 = !DILocation(line: 675, column: 47, scope: !6586)
!6601 = !DILocation(line: 677, column: 9, scope: !6586)
!6602 = !DILocation(line: 677, column: 18, scope: !6586)
!6603 = !DILocation(line: 677, column: 22, scope: !6586)
!6604 = !DILocation(line: 677, column: 34, scope: !6586)
!6605 = !DILocation(line: 677, column: 32, scope: !6586)
!6606 = !DILocation(line: 677, column: 47, scope: !6586)
!6607 = !DILocation(line: 677, column: 44, scope: !6586)
!6608 = !DILocation(line: 0, scope: !6586)
!6609 = !DILocation(line: 677, column: 2, scope: !6586)
!6610 = distinct !DISubprogram(name: "PTR_ERR", scope: !6182, file: !6182, line: 29, type: !6611, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{!426, !2336}
!6613 = !DILocalVariable(name: "ptr", arg: 1, scope: !6610, file: !6182, line: 29, type: !2336)
!6614 = !DILocation(line: 29, column: 61, scope: !6610)
!6615 = !DILocation(line: 31, column: 16, scope: !6610)
!6616 = !DILocation(line: 31, column: 9, scope: !6610)
!6617 = !DILocation(line: 31, column: 2, scope: !6610)
!6618 = distinct !DISubprogram(name: "__list_add", scope: !5898, file: !5898, line: 63, type: !6619, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{null, !313, !313, !313}
!6621 = !DILocalVariable(name: "new", arg: 1, scope: !6618, file: !5898, line: 63, type: !313)
!6622 = !DILocation(line: 63, column: 49, scope: !6618)
!6623 = !DILocalVariable(name: "prev", arg: 2, scope: !6618, file: !5898, line: 64, type: !313)
!6624 = !DILocation(line: 64, column: 28, scope: !6618)
!6625 = !DILocalVariable(name: "next", arg: 3, scope: !6618, file: !5898, line: 65, type: !313)
!6626 = !DILocation(line: 65, column: 28, scope: !6618)
!6627 = !DILocation(line: 67, column: 24, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6618, file: !5898, line: 67, column: 6)
!6629 = !DILocation(line: 67, column: 29, scope: !6628)
!6630 = !DILocation(line: 67, column: 35, scope: !6628)
!6631 = !DILocation(line: 67, column: 7, scope: !6628)
!6632 = !DILocation(line: 67, column: 6, scope: !6618)
!6633 = !DILocation(line: 68, column: 3, scope: !6628)
!6634 = !DILocation(line: 70, column: 15, scope: !6618)
!6635 = !DILocation(line: 70, column: 2, scope: !6618)
!6636 = !DILocation(line: 70, column: 8, scope: !6618)
!6637 = !DILocation(line: 70, column: 13, scope: !6618)
!6638 = !DILocation(line: 71, column: 14, scope: !6618)
!6639 = !DILocation(line: 71, column: 2, scope: !6618)
!6640 = !DILocation(line: 71, column: 7, scope: !6618)
!6641 = !DILocation(line: 71, column: 12, scope: !6618)
!6642 = !DILocation(line: 72, column: 14, scope: !6618)
!6643 = !DILocation(line: 72, column: 2, scope: !6618)
!6644 = !DILocation(line: 72, column: 7, scope: !6618)
!6645 = !DILocation(line: 72, column: 12, scope: !6618)
!6646 = !DILocation(line: 73, column: 2, scope: !6618)
!6647 = !DILocation(line: 73, column: 2, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6618, file: !5898, line: 73, column: 2)
!6649 = !DILocation(line: 73, column: 2, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6648, file: !5898, line: 73, column: 2)
!6651 = !DILocation(line: 73, column: 2, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6648, file: !5898, line: 73, column: 2)
!6653 = !DILocation(line: 74, column: 1, scope: !6618)
!6654 = distinct !DISubprogram(name: "__list_add_valid", scope: !5898, file: !5898, line: 45, type: !6655, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6655 = !DISubroutineType(types: !6656)
!6656 = !{!607, !313, !313, !313}
!6657 = !DILocalVariable(name: "new", arg: 1, scope: !6654, file: !5898, line: 45, type: !313)
!6658 = !DILocation(line: 45, column: 55, scope: !6654)
!6659 = !DILocalVariable(name: "prev", arg: 2, scope: !6654, file: !5898, line: 46, type: !313)
!6660 = !DILocation(line: 46, column: 23, scope: !6654)
!6661 = !DILocalVariable(name: "next", arg: 3, scope: !6654, file: !5898, line: 47, type: !313)
!6662 = !DILocation(line: 47, column: 23, scope: !6654)
!6663 = !DILocation(line: 49, column: 2, scope: !6654)
!6664 = distinct !DISubprogram(name: "__list_del_entry", scope: !5898, file: !5898, line: 130, type: !6020, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6665 = !DILocalVariable(name: "entry", arg: 1, scope: !6664, file: !5898, line: 130, type: !313)
!6666 = !DILocation(line: 130, column: 55, scope: !6664)
!6667 = !DILocation(line: 132, column: 30, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6664, file: !5898, line: 132, column: 6)
!6669 = !DILocation(line: 132, column: 7, scope: !6668)
!6670 = !DILocation(line: 132, column: 6, scope: !6664)
!6671 = !DILocation(line: 133, column: 3, scope: !6668)
!6672 = !DILocation(line: 135, column: 13, scope: !6664)
!6673 = !DILocation(line: 135, column: 20, scope: !6664)
!6674 = !DILocation(line: 135, column: 26, scope: !6664)
!6675 = !DILocation(line: 135, column: 33, scope: !6664)
!6676 = !DILocation(line: 135, column: 2, scope: !6664)
!6677 = !DILocation(line: 136, column: 1, scope: !6664)
!6678 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5898, file: !5898, line: 51, type: !6679, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6679 = !DISubroutineType(types: !6680)
!6680 = !{!607, !313}
!6681 = !DILocalVariable(name: "entry", arg: 1, scope: !6678, file: !5898, line: 51, type: !313)
!6682 = !DILocation(line: 51, column: 61, scope: !6678)
!6683 = !DILocation(line: 53, column: 2, scope: !6678)
!6684 = distinct !DISubprogram(name: "__list_del", scope: !5898, file: !5898, line: 110, type: !5899, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6685 = !DILocalVariable(name: "prev", arg: 1, scope: !6684, file: !5898, line: 110, type: !313)
!6686 = !DILocation(line: 110, column: 50, scope: !6684)
!6687 = !DILocalVariable(name: "next", arg: 2, scope: !6684, file: !5898, line: 110, type: !313)
!6688 = !DILocation(line: 110, column: 75, scope: !6684)
!6689 = !DILocation(line: 112, column: 15, scope: !6684)
!6690 = !DILocation(line: 112, column: 2, scope: !6684)
!6691 = !DILocation(line: 112, column: 8, scope: !6684)
!6692 = !DILocation(line: 112, column: 13, scope: !6684)
!6693 = !DILocation(line: 113, column: 2, scope: !6684)
!6694 = !DILocation(line: 113, column: 2, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6684, file: !5898, line: 113, column: 2)
!6696 = !DILocation(line: 113, column: 2, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6695, file: !5898, line: 113, column: 2)
!6698 = !DILocation(line: 113, column: 2, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6695, file: !5898, line: 113, column: 2)
!6700 = !DILocation(line: 114, column: 1, scope: !6684)
!6701 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !6702, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6702 = !DISubroutineType(types: !6703)
!6703 = !{!299, !438, !913}
!6704 = !DILocalVariable(name: "s", arg: 1, scope: !6705, file: !284, line: 445, type: !1094)
!6705 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !6706, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6706 = !DISubroutineType(types: !6707)
!6707 = !{!299, !1094, !913, !438}
!6708 = !DILocation(line: 445, column: 72, scope: !6705, inlinedAt: !6709)
!6709 = distinct !DILocation(line: 552, column: 10, scope: !6710, inlinedAt: !6713)
!6710 = distinct !DILexicalBlock(scope: !6711, file: !284, line: 540, column: 34)
!6711 = distinct !DILexicalBlock(scope: !6712, file: !284, line: 540, column: 6)
!6712 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !6702, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6713 = distinct !DILocation(line: 664, column: 9, scope: !6701)
!6714 = !DILocalVariable(name: "flags", arg: 2, scope: !6705, file: !284, line: 446, type: !913)
!6715 = !DILocation(line: 446, column: 9, scope: !6705, inlinedAt: !6709)
!6716 = !DILocalVariable(name: "size", arg: 3, scope: !6705, file: !284, line: 446, type: !438)
!6717 = !DILocation(line: 446, column: 23, scope: !6705, inlinedAt: !6709)
!6718 = !DILocalVariable(name: "ret", scope: !6705, file: !284, line: 448, type: !299)
!6719 = !DILocation(line: 448, column: 8, scope: !6705, inlinedAt: !6709)
!6720 = !DILocalVariable(name: "flags", arg: 1, scope: !6721, file: !284, line: 318, type: !913)
!6721 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !6722, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6722 = !DISubroutineType(types: !6723)
!6723 = !{!283, !913}
!6724 = !DILocation(line: 318, column: 67, scope: !6721, inlinedAt: !6725)
!6725 = distinct !DILocation(line: 553, column: 20, scope: !6710, inlinedAt: !6713)
!6726 = !DILocalVariable(name: "size", arg: 1, scope: !6727, file: !284, line: 346, type: !438)
!6727 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !6728, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!5, !438}
!6730 = !DILocation(line: 346, column: 58, scope: !6727, inlinedAt: !6731)
!6731 = distinct !DILocation(line: 547, column: 11, scope: !6710, inlinedAt: !6713)
!6732 = !DILocalVariable(name: "size", arg: 1, scope: !6733, file: !284, line: 472, type: !438)
!6733 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !6734, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!299, !438, !913, !5}
!6736 = !DILocation(line: 472, column: 28, scope: !6733, inlinedAt: !6737)
!6737 = distinct !DILocation(line: 481, column: 9, scope: !6738, inlinedAt: !6739)
!6738 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !6702, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6739 = distinct !DILocation(line: 545, column: 11, scope: !6740, inlinedAt: !6713)
!6740 = distinct !DILexicalBlock(scope: !6710, file: !284, line: 544, column: 7)
!6741 = !DILocalVariable(name: "flags", arg: 2, scope: !6733, file: !284, line: 472, type: !913)
!6742 = !DILocation(line: 472, column: 40, scope: !6733, inlinedAt: !6737)
!6743 = !DILocalVariable(name: "order", arg: 3, scope: !6733, file: !284, line: 472, type: !5)
!6744 = !DILocation(line: 472, column: 60, scope: !6733, inlinedAt: !6737)
!6745 = !DILocalVariable(name: "size", arg: 1, scope: !6738, file: !284, line: 478, type: !438)
!6746 = !DILocation(line: 478, column: 51, scope: !6738, inlinedAt: !6739)
!6747 = !DILocalVariable(name: "flags", arg: 2, scope: !6738, file: !284, line: 478, type: !913)
!6748 = !DILocation(line: 478, column: 63, scope: !6738, inlinedAt: !6739)
!6749 = !DILocalVariable(name: "order", scope: !6738, file: !284, line: 480, type: !5)
!6750 = !DILocation(line: 480, column: 15, scope: !6738, inlinedAt: !6739)
!6751 = !DILocalVariable(name: "size", arg: 1, scope: !6712, file: !284, line: 538, type: !438)
!6752 = !DILocation(line: 538, column: 45, scope: !6712, inlinedAt: !6713)
!6753 = !DILocalVariable(name: "flags", arg: 2, scope: !6712, file: !284, line: 538, type: !913)
!6754 = !DILocation(line: 538, column: 57, scope: !6712, inlinedAt: !6713)
!6755 = !DILocalVariable(name: "index", scope: !6710, file: !284, line: 542, type: !5)
!6756 = !DILocation(line: 542, column: 16, scope: !6710, inlinedAt: !6713)
!6757 = !DILocalVariable(name: "size", arg: 1, scope: !6701, file: !284, line: 662, type: !438)
!6758 = !DILocation(line: 662, column: 36, scope: !6701)
!6759 = !DILocalVariable(name: "flags", arg: 2, scope: !6701, file: !284, line: 662, type: !913)
!6760 = !DILocation(line: 662, column: 48, scope: !6701)
!6761 = !DILocation(line: 664, column: 17, scope: !6701)
!6762 = !DILocation(line: 664, column: 23, scope: !6701)
!6763 = !DILocation(line: 664, column: 29, scope: !6701)
!6764 = !DILocation(line: 540, column: 27, scope: !6711, inlinedAt: !6713)
!6765 = !DILocation(line: 540, column: 6, scope: !6711, inlinedAt: !6713)
!6766 = !DILocation(line: 540, column: 6, scope: !6712, inlinedAt: !6713)
!6767 = !DILocation(line: 544, column: 7, scope: !6740, inlinedAt: !6713)
!6768 = !DILocation(line: 544, column: 12, scope: !6740, inlinedAt: !6713)
!6769 = !DILocation(line: 544, column: 7, scope: !6710, inlinedAt: !6713)
!6770 = !DILocation(line: 545, column: 25, scope: !6740, inlinedAt: !6713)
!6771 = !DILocation(line: 545, column: 31, scope: !6740, inlinedAt: !6713)
!6772 = !DILocation(line: 480, column: 33, scope: !6738, inlinedAt: !6739)
!6773 = !DILocation(line: 480, column: 23, scope: !6738, inlinedAt: !6739)
!6774 = !DILocation(line: 481, column: 29, scope: !6738, inlinedAt: !6739)
!6775 = !DILocation(line: 481, column: 35, scope: !6738, inlinedAt: !6739)
!6776 = !DILocation(line: 481, column: 42, scope: !6738, inlinedAt: !6739)
!6777 = !DILocation(line: 474, column: 23, scope: !6733, inlinedAt: !6737)
!6778 = !DILocation(line: 474, column: 29, scope: !6733, inlinedAt: !6737)
!6779 = !DILocation(line: 474, column: 36, scope: !6733, inlinedAt: !6737)
!6780 = !DILocation(line: 474, column: 9, scope: !6733, inlinedAt: !6737)
!6781 = !DILocation(line: 545, column: 4, scope: !6740, inlinedAt: !6713)
!6782 = !DILocation(line: 547, column: 25, scope: !6710, inlinedAt: !6713)
!6783 = !DILocation(line: 348, column: 7, scope: !6784, inlinedAt: !6731)
!6784 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 348, column: 6)
!6785 = !DILocation(line: 348, column: 6, scope: !6727, inlinedAt: !6731)
!6786 = !DILocation(line: 349, column: 3, scope: !6784, inlinedAt: !6731)
!6787 = !DILocation(line: 351, column: 6, scope: !6788, inlinedAt: !6731)
!6788 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 351, column: 6)
!6789 = !DILocation(line: 351, column: 11, scope: !6788, inlinedAt: !6731)
!6790 = !DILocation(line: 351, column: 6, scope: !6727, inlinedAt: !6731)
!6791 = !DILocation(line: 352, column: 3, scope: !6788, inlinedAt: !6731)
!6792 = !DILocation(line: 354, column: 32, scope: !6793, inlinedAt: !6731)
!6793 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 354, column: 6)
!6794 = !DILocation(line: 354, column: 37, scope: !6793, inlinedAt: !6731)
!6795 = !DILocation(line: 354, column: 42, scope: !6793, inlinedAt: !6731)
!6796 = !DILocation(line: 354, column: 45, scope: !6793, inlinedAt: !6731)
!6797 = !DILocation(line: 354, column: 50, scope: !6793, inlinedAt: !6731)
!6798 = !DILocation(line: 354, column: 6, scope: !6727, inlinedAt: !6731)
!6799 = !DILocation(line: 355, column: 3, scope: !6793, inlinedAt: !6731)
!6800 = !DILocation(line: 356, column: 32, scope: !6801, inlinedAt: !6731)
!6801 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 356, column: 6)
!6802 = !DILocation(line: 356, column: 37, scope: !6801, inlinedAt: !6731)
!6803 = !DILocation(line: 356, column: 43, scope: !6801, inlinedAt: !6731)
!6804 = !DILocation(line: 356, column: 46, scope: !6801, inlinedAt: !6731)
!6805 = !DILocation(line: 356, column: 51, scope: !6801, inlinedAt: !6731)
!6806 = !DILocation(line: 356, column: 6, scope: !6727, inlinedAt: !6731)
!6807 = !DILocation(line: 357, column: 3, scope: !6801, inlinedAt: !6731)
!6808 = !DILocation(line: 358, column: 6, scope: !6809, inlinedAt: !6731)
!6809 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 358, column: 6)
!6810 = !DILocation(line: 358, column: 11, scope: !6809, inlinedAt: !6731)
!6811 = !DILocation(line: 358, column: 6, scope: !6727, inlinedAt: !6731)
!6812 = !DILocation(line: 358, column: 26, scope: !6809, inlinedAt: !6731)
!6813 = !DILocation(line: 359, column: 6, scope: !6814, inlinedAt: !6731)
!6814 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 359, column: 6)
!6815 = !DILocation(line: 359, column: 11, scope: !6814, inlinedAt: !6731)
!6816 = !DILocation(line: 359, column: 6, scope: !6727, inlinedAt: !6731)
!6817 = !DILocation(line: 359, column: 26, scope: !6814, inlinedAt: !6731)
!6818 = !DILocation(line: 360, column: 6, scope: !6819, inlinedAt: !6731)
!6819 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 360, column: 6)
!6820 = !DILocation(line: 360, column: 11, scope: !6819, inlinedAt: !6731)
!6821 = !DILocation(line: 360, column: 6, scope: !6727, inlinedAt: !6731)
!6822 = !DILocation(line: 360, column: 26, scope: !6819, inlinedAt: !6731)
!6823 = !DILocation(line: 361, column: 6, scope: !6824, inlinedAt: !6731)
!6824 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 361, column: 6)
!6825 = !DILocation(line: 361, column: 11, scope: !6824, inlinedAt: !6731)
!6826 = !DILocation(line: 361, column: 6, scope: !6727, inlinedAt: !6731)
!6827 = !DILocation(line: 361, column: 26, scope: !6824, inlinedAt: !6731)
!6828 = !DILocation(line: 362, column: 6, scope: !6829, inlinedAt: !6731)
!6829 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 362, column: 6)
!6830 = !DILocation(line: 362, column: 11, scope: !6829, inlinedAt: !6731)
!6831 = !DILocation(line: 362, column: 6, scope: !6727, inlinedAt: !6731)
!6832 = !DILocation(line: 362, column: 26, scope: !6829, inlinedAt: !6731)
!6833 = !DILocation(line: 363, column: 6, scope: !6834, inlinedAt: !6731)
!6834 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 363, column: 6)
!6835 = !DILocation(line: 363, column: 11, scope: !6834, inlinedAt: !6731)
!6836 = !DILocation(line: 363, column: 6, scope: !6727, inlinedAt: !6731)
!6837 = !DILocation(line: 363, column: 26, scope: !6834, inlinedAt: !6731)
!6838 = !DILocation(line: 364, column: 6, scope: !6839, inlinedAt: !6731)
!6839 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 364, column: 6)
!6840 = !DILocation(line: 364, column: 11, scope: !6839, inlinedAt: !6731)
!6841 = !DILocation(line: 364, column: 6, scope: !6727, inlinedAt: !6731)
!6842 = !DILocation(line: 364, column: 26, scope: !6839, inlinedAt: !6731)
!6843 = !DILocation(line: 365, column: 6, scope: !6844, inlinedAt: !6731)
!6844 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 365, column: 6)
!6845 = !DILocation(line: 365, column: 11, scope: !6844, inlinedAt: !6731)
!6846 = !DILocation(line: 365, column: 6, scope: !6727, inlinedAt: !6731)
!6847 = !DILocation(line: 365, column: 26, scope: !6844, inlinedAt: !6731)
!6848 = !DILocation(line: 366, column: 6, scope: !6849, inlinedAt: !6731)
!6849 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 366, column: 6)
!6850 = !DILocation(line: 366, column: 11, scope: !6849, inlinedAt: !6731)
!6851 = !DILocation(line: 366, column: 6, scope: !6727, inlinedAt: !6731)
!6852 = !DILocation(line: 366, column: 26, scope: !6849, inlinedAt: !6731)
!6853 = !DILocation(line: 367, column: 6, scope: !6854, inlinedAt: !6731)
!6854 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 367, column: 6)
!6855 = !DILocation(line: 367, column: 11, scope: !6854, inlinedAt: !6731)
!6856 = !DILocation(line: 367, column: 6, scope: !6727, inlinedAt: !6731)
!6857 = !DILocation(line: 367, column: 26, scope: !6854, inlinedAt: !6731)
!6858 = !DILocation(line: 368, column: 6, scope: !6859, inlinedAt: !6731)
!6859 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 368, column: 6)
!6860 = !DILocation(line: 368, column: 11, scope: !6859, inlinedAt: !6731)
!6861 = !DILocation(line: 368, column: 6, scope: !6727, inlinedAt: !6731)
!6862 = !DILocation(line: 368, column: 26, scope: !6859, inlinedAt: !6731)
!6863 = !DILocation(line: 369, column: 6, scope: !6864, inlinedAt: !6731)
!6864 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 369, column: 6)
!6865 = !DILocation(line: 369, column: 11, scope: !6864, inlinedAt: !6731)
!6866 = !DILocation(line: 369, column: 6, scope: !6727, inlinedAt: !6731)
!6867 = !DILocation(line: 369, column: 26, scope: !6864, inlinedAt: !6731)
!6868 = !DILocation(line: 370, column: 6, scope: !6869, inlinedAt: !6731)
!6869 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 370, column: 6)
!6870 = !DILocation(line: 370, column: 11, scope: !6869, inlinedAt: !6731)
!6871 = !DILocation(line: 370, column: 6, scope: !6727, inlinedAt: !6731)
!6872 = !DILocation(line: 370, column: 26, scope: !6869, inlinedAt: !6731)
!6873 = !DILocation(line: 371, column: 6, scope: !6874, inlinedAt: !6731)
!6874 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 371, column: 6)
!6875 = !DILocation(line: 371, column: 11, scope: !6874, inlinedAt: !6731)
!6876 = !DILocation(line: 371, column: 6, scope: !6727, inlinedAt: !6731)
!6877 = !DILocation(line: 371, column: 26, scope: !6874, inlinedAt: !6731)
!6878 = !DILocation(line: 372, column: 6, scope: !6879, inlinedAt: !6731)
!6879 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 372, column: 6)
!6880 = !DILocation(line: 372, column: 11, scope: !6879, inlinedAt: !6731)
!6881 = !DILocation(line: 372, column: 6, scope: !6727, inlinedAt: !6731)
!6882 = !DILocation(line: 372, column: 26, scope: !6879, inlinedAt: !6731)
!6883 = !DILocation(line: 373, column: 6, scope: !6884, inlinedAt: !6731)
!6884 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 373, column: 6)
!6885 = !DILocation(line: 373, column: 11, scope: !6884, inlinedAt: !6731)
!6886 = !DILocation(line: 373, column: 6, scope: !6727, inlinedAt: !6731)
!6887 = !DILocation(line: 373, column: 26, scope: !6884, inlinedAt: !6731)
!6888 = !DILocation(line: 374, column: 6, scope: !6889, inlinedAt: !6731)
!6889 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 374, column: 6)
!6890 = !DILocation(line: 374, column: 11, scope: !6889, inlinedAt: !6731)
!6891 = !DILocation(line: 374, column: 6, scope: !6727, inlinedAt: !6731)
!6892 = !DILocation(line: 374, column: 26, scope: !6889, inlinedAt: !6731)
!6893 = !DILocation(line: 375, column: 6, scope: !6894, inlinedAt: !6731)
!6894 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 375, column: 6)
!6895 = !DILocation(line: 375, column: 11, scope: !6894, inlinedAt: !6731)
!6896 = !DILocation(line: 375, column: 6, scope: !6727, inlinedAt: !6731)
!6897 = !DILocation(line: 375, column: 27, scope: !6894, inlinedAt: !6731)
!6898 = !DILocation(line: 376, column: 6, scope: !6899, inlinedAt: !6731)
!6899 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 376, column: 6)
!6900 = !DILocation(line: 376, column: 11, scope: !6899, inlinedAt: !6731)
!6901 = !DILocation(line: 376, column: 6, scope: !6727, inlinedAt: !6731)
!6902 = !DILocation(line: 376, column: 32, scope: !6899, inlinedAt: !6731)
!6903 = !DILocation(line: 377, column: 6, scope: !6904, inlinedAt: !6731)
!6904 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 377, column: 6)
!6905 = !DILocation(line: 377, column: 11, scope: !6904, inlinedAt: !6731)
!6906 = !DILocation(line: 377, column: 6, scope: !6727, inlinedAt: !6731)
!6907 = !DILocation(line: 377, column: 32, scope: !6904, inlinedAt: !6731)
!6908 = !DILocation(line: 378, column: 6, scope: !6909, inlinedAt: !6731)
!6909 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 378, column: 6)
!6910 = !DILocation(line: 378, column: 11, scope: !6909, inlinedAt: !6731)
!6911 = !DILocation(line: 378, column: 6, scope: !6727, inlinedAt: !6731)
!6912 = !DILocation(line: 378, column: 32, scope: !6909, inlinedAt: !6731)
!6913 = !DILocation(line: 379, column: 6, scope: !6914, inlinedAt: !6731)
!6914 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 379, column: 6)
!6915 = !DILocation(line: 379, column: 11, scope: !6914, inlinedAt: !6731)
!6916 = !DILocation(line: 379, column: 6, scope: !6727, inlinedAt: !6731)
!6917 = !DILocation(line: 379, column: 33, scope: !6914, inlinedAt: !6731)
!6918 = !DILocation(line: 380, column: 6, scope: !6919, inlinedAt: !6731)
!6919 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 380, column: 6)
!6920 = !DILocation(line: 380, column: 11, scope: !6919, inlinedAt: !6731)
!6921 = !DILocation(line: 380, column: 6, scope: !6727, inlinedAt: !6731)
!6922 = !DILocation(line: 380, column: 33, scope: !6919, inlinedAt: !6731)
!6923 = !DILocation(line: 381, column: 6, scope: !6924, inlinedAt: !6731)
!6924 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 381, column: 6)
!6925 = !DILocation(line: 381, column: 11, scope: !6924, inlinedAt: !6731)
!6926 = !DILocation(line: 381, column: 6, scope: !6727, inlinedAt: !6731)
!6927 = !DILocation(line: 381, column: 33, scope: !6924, inlinedAt: !6731)
!6928 = !DILocation(line: 382, column: 2, scope: !6929, inlinedAt: !6731)
!6929 = distinct !DILexicalBlock(scope: !6930, file: !284, line: 382, column: 2)
!6930 = distinct !DILexicalBlock(scope: !6727, file: !284, line: 382, column: 2)
!6931 = !{i32 -2143088989, i32 -2143088960, i32 -2143088914, i32 -2143088856, i32 -2143088802, i32 -2143088748, i32 -2143088693, i32 -2143088662}
!6932 = !DILocation(line: 382, column: 2, scope: !6933, inlinedAt: !6731)
!6933 = distinct !DILexicalBlock(scope: !6934, file: !284, line: 382, column: 2)
!6934 = distinct !DILexicalBlock(scope: !6930, file: !284, line: 382, column: 2)
!6935 = !{i32 -2143088219, i32 -2143088212, i32 -2143088158, i32 -2143088127, i32 -2143088097}
!6936 = !DILocation(line: 382, column: 2, scope: !6934, inlinedAt: !6731)
!6937 = !DILocation(line: 386, column: 1, scope: !6727, inlinedAt: !6731)
!6938 = !DILocation(line: 547, column: 9, scope: !6710, inlinedAt: !6713)
!6939 = !DILocation(line: 549, column: 8, scope: !6940, inlinedAt: !6713)
!6940 = distinct !DILexicalBlock(scope: !6710, file: !284, line: 549, column: 7)
!6941 = !DILocation(line: 549, column: 7, scope: !6710, inlinedAt: !6713)
!6942 = !DILocation(line: 550, column: 4, scope: !6940, inlinedAt: !6713)
!6943 = !DILocation(line: 553, column: 33, scope: !6710, inlinedAt: !6713)
!6944 = !DILocation(line: 325, column: 6, scope: !6945, inlinedAt: !6725)
!6945 = distinct !DILexicalBlock(scope: !6721, file: !284, line: 325, column: 6)
!6946 = !DILocation(line: 325, column: 6, scope: !6721, inlinedAt: !6725)
!6947 = !DILocation(line: 326, column: 3, scope: !6945, inlinedAt: !6725)
!6948 = !DILocation(line: 332, column: 9, scope: !6721, inlinedAt: !6725)
!6949 = !DILocation(line: 332, column: 15, scope: !6721, inlinedAt: !6725)
!6950 = !DILocation(line: 332, column: 2, scope: !6721, inlinedAt: !6725)
!6951 = !DILocation(line: 336, column: 1, scope: !6721, inlinedAt: !6725)
!6952 = !DILocation(line: 553, column: 5, scope: !6710, inlinedAt: !6713)
!6953 = !DILocation(line: 553, column: 41, scope: !6710, inlinedAt: !6713)
!6954 = !DILocation(line: 554, column: 5, scope: !6710, inlinedAt: !6713)
!6955 = !DILocation(line: 554, column: 12, scope: !6710, inlinedAt: !6713)
!6956 = !DILocation(line: 448, column: 31, scope: !6705, inlinedAt: !6709)
!6957 = !DILocation(line: 448, column: 34, scope: !6705, inlinedAt: !6709)
!6958 = !DILocation(line: 448, column: 14, scope: !6705, inlinedAt: !6709)
!6959 = !DILocation(line: 450, column: 22, scope: !6705, inlinedAt: !6709)
!6960 = !DILocation(line: 450, column: 25, scope: !6705, inlinedAt: !6709)
!6961 = !DILocation(line: 450, column: 30, scope: !6705, inlinedAt: !6709)
!6962 = !DILocation(line: 450, column: 36, scope: !6705, inlinedAt: !6709)
!6963 = !DILocation(line: 450, column: 8, scope: !6705, inlinedAt: !6709)
!6964 = !DILocation(line: 450, column: 6, scope: !6705, inlinedAt: !6709)
!6965 = !DILocation(line: 451, column: 9, scope: !6705, inlinedAt: !6709)
!6966 = !DILocation(line: 552, column: 3, scope: !6710, inlinedAt: !6713)
!6967 = !DILocation(line: 557, column: 19, scope: !6712, inlinedAt: !6713)
!6968 = !DILocation(line: 557, column: 25, scope: !6712, inlinedAt: !6713)
!6969 = !DILocation(line: 557, column: 9, scope: !6712, inlinedAt: !6713)
!6970 = !DILocation(line: 557, column: 2, scope: !6712, inlinedAt: !6713)
!6971 = !DILocation(line: 558, column: 1, scope: !6712, inlinedAt: !6713)
!6972 = !DILocation(line: 664, column: 2, scope: !6701)
!6973 = distinct !DISubprogram(name: "get_order", scope: !6974, file: !6974, line: 29, type: !6975, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6974 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6975 = !DISubroutineType(types: !6976)
!6976 = !{!121, !441}
!6977 = !DILocalVariable(name: "x", arg: 1, scope: !6978, file: !6979, line: 366, type: !539)
!6978 = distinct !DISubprogram(name: "fls64", scope: !6979, file: !6979, line: 366, type: !6980, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!6979 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6980 = !DISubroutineType(types: !6981)
!6981 = !{!121, !539}
!6982 = !DILocation(line: 366, column: 40, scope: !6978, inlinedAt: !6983)
!6983 = distinct !DILocation(line: 46, column: 9, scope: !6973)
!6984 = !DILocalVariable(name: "bitpos", scope: !6978, file: !6979, line: 368, type: !121)
!6985 = !DILocation(line: 368, column: 6, scope: !6978, inlinedAt: !6983)
!6986 = !DILocalVariable(name: "size", arg: 1, scope: !6973, file: !6974, line: 29, type: !441)
!6987 = !DILocation(line: 29, column: 63, scope: !6973)
!6988 = !DILocation(line: 31, column: 27, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6973, file: !6974, line: 31, column: 6)
!6990 = !DILocation(line: 31, column: 6, scope: !6989)
!6991 = !DILocation(line: 31, column: 6, scope: !6973)
!6992 = !DILocation(line: 32, column: 8, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6994, file: !6974, line: 32, column: 7)
!6994 = distinct !DILexicalBlock(scope: !6989, file: !6974, line: 31, column: 34)
!6995 = !DILocation(line: 32, column: 7, scope: !6994)
!6996 = !DILocation(line: 33, column: 4, scope: !6993)
!6997 = !DILocation(line: 35, column: 7, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6994, file: !6974, line: 35, column: 7)
!6999 = !DILocation(line: 35, column: 12, scope: !6998)
!7000 = !DILocation(line: 35, column: 7, scope: !6994)
!7001 = !DILocation(line: 36, column: 4, scope: !6998)
!7002 = !DILocation(line: 38, column: 10, scope: !6994)
!7003 = !DILocation(line: 38, column: 28, scope: !6994)
!7004 = !DILocation(line: 38, column: 41, scope: !6994)
!7005 = !DILocation(line: 38, column: 3, scope: !6994)
!7006 = !DILocation(line: 41, column: 6, scope: !6973)
!7007 = !DILocation(line: 42, column: 7, scope: !6973)
!7008 = !DILocation(line: 46, column: 15, scope: !6973)
!7009 = !DILocation(line: 374, column: 2, scope: !6978, inlinedAt: !6983)
!7010 = !DILocation(line: 376, column: 14, scope: !6978, inlinedAt: !6983)
!7011 = !{i32 284920}
!7012 = !DILocation(line: 377, column: 9, scope: !6978, inlinedAt: !6983)
!7013 = !DILocation(line: 377, column: 16, scope: !6978, inlinedAt: !6983)
!7014 = !DILocation(line: 46, column: 2, scope: !6973)
!7015 = !DILocation(line: 48, column: 1, scope: !6973)
!7016 = distinct !DISubprogram(name: "__ilog2_u64", scope: !7017, file: !7017, line: 30, type: !7018, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7017 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!7018 = !DISubroutineType(types: !7019)
!7019 = !{!121, !538}
!7020 = !DILocation(line: 366, column: 40, scope: !6978, inlinedAt: !7021)
!7021 = distinct !DILocation(line: 32, column: 9, scope: !7016)
!7022 = !DILocation(line: 368, column: 6, scope: !6978, inlinedAt: !7021)
!7023 = !DILocalVariable(name: "n", arg: 1, scope: !7016, file: !7017, line: 30, type: !538)
!7024 = !DILocation(line: 30, column: 21, scope: !7016)
!7025 = !DILocation(line: 32, column: 15, scope: !7016)
!7026 = !DILocation(line: 374, column: 2, scope: !6978, inlinedAt: !7021)
!7027 = !DILocation(line: 376, column: 14, scope: !6978, inlinedAt: !7021)
!7028 = !DILocation(line: 377, column: 9, scope: !6978, inlinedAt: !7021)
!7029 = !DILocation(line: 377, column: 16, scope: !6978, inlinedAt: !7021)
!7030 = !DILocation(line: 32, column: 18, scope: !7016)
!7031 = !DILocation(line: 32, column: 2, scope: !7016)
!7032 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !7033, file: !7033, line: 137, type: !7034, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7033 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!7034 = !DISubroutineType(types: !7035)
!7035 = !{!299, !1094, !2336, !438, !913}
!7036 = !DILocalVariable(name: "s", arg: 1, scope: !7032, file: !7033, line: 137, type: !1094)
!7037 = !DILocation(line: 137, column: 54, scope: !7032)
!7038 = !DILocalVariable(name: "object", arg: 2, scope: !7032, file: !7033, line: 137, type: !2336)
!7039 = !DILocation(line: 137, column: 69, scope: !7032)
!7040 = !DILocalVariable(name: "size", arg: 3, scope: !7032, file: !7033, line: 138, type: !438)
!7041 = !DILocation(line: 138, column: 12, scope: !7032)
!7042 = !DILocalVariable(name: "flags", arg: 4, scope: !7032, file: !7033, line: 138, type: !913)
!7043 = !DILocation(line: 138, column: 24, scope: !7032)
!7044 = !DILocation(line: 140, column: 17, scope: !7032)
!7045 = !DILocation(line: 140, column: 2, scope: !7032)
!7046 = distinct !DISubprogram(name: "drm_framebuffer_put", scope: !4719, file: !4719, line: 246, type: !4787, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7047 = !DILocalVariable(name: "fb", arg: 1, scope: !7046, file: !4719, line: 246, type: !4717)
!7048 = !DILocation(line: 246, column: 64, scope: !7046)
!7049 = !DILocation(line: 248, column: 23, scope: !7046)
!7050 = !DILocation(line: 248, column: 27, scope: !7046)
!7051 = !DILocation(line: 248, column: 2, scope: !7046)
!7052 = !DILocation(line: 249, column: 1, scope: !7046)
!7053 = distinct !DISubprogram(name: "drm_gem_object_put", scope: !4219, file: !4219, line: 380, type: !4215, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7054 = !DILocalVariable(name: "obj", arg: 1, scope: !7053, file: !4219, line: 380, type: !4217)
!7055 = !DILocation(line: 380, column: 43, scope: !7053)
!7056 = !DILocation(line: 382, column: 6, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !7053, file: !4219, line: 382, column: 6)
!7058 = !DILocation(line: 382, column: 6, scope: !7053)
!7059 = !DILocation(line: 383, column: 24, scope: !7057)
!7060 = !DILocation(line: 383, column: 3, scope: !7057)
!7061 = !DILocation(line: 384, column: 1, scope: !7053)
!7062 = distinct !DISubprogram(name: "__drm_gem_object_put", scope: !4219, file: !4219, line: 368, type: !4215, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7063 = !DILocalVariable(name: "obj", arg: 1, scope: !7062, file: !4219, line: 368, type: !4217)
!7064 = !DILocation(line: 368, column: 45, scope: !7062)
!7065 = !DILocation(line: 370, column: 12, scope: !7062)
!7066 = !DILocation(line: 370, column: 17, scope: !7062)
!7067 = !DILocation(line: 370, column: 2, scope: !7062)
!7068 = !DILocation(line: 371, column: 1, scope: !7062)
!7069 = distinct !DISubprogram(name: "kref_put", scope: !318, file: !318, line: 62, type: !7070, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7070 = !DISubroutineType(types: !7071)
!7071 = !{!121, !4757, !4754}
!7072 = !DILocalVariable(name: "kref", arg: 1, scope: !7069, file: !318, line: 62, type: !4757)
!7073 = !DILocation(line: 62, column: 41, scope: !7069)
!7074 = !DILocalVariable(name: "release", arg: 2, scope: !7069, file: !318, line: 62, type: !4754)
!7075 = !DILocation(line: 62, column: 54, scope: !7069)
!7076 = !DILocation(line: 64, column: 29, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !7069, file: !318, line: 64, column: 6)
!7078 = !DILocation(line: 64, column: 35, scope: !7077)
!7079 = !DILocation(line: 64, column: 6, scope: !7077)
!7080 = !DILocation(line: 64, column: 6, scope: !7069)
!7081 = !DILocation(line: 65, column: 3, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7077, file: !318, line: 64, column: 46)
!7083 = !DILocation(line: 65, column: 11, scope: !7082)
!7084 = !DILocation(line: 66, column: 3, scope: !7082)
!7085 = !DILocation(line: 68, column: 2, scope: !7069)
!7086 = !DILocation(line: 69, column: 1, scope: !7069)
!7087 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !291, file: !291, line: 331, type: !7088, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7088 = !DISubroutineType(types: !7089)
!7089 = !{!607, !7090}
!7090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!7091 = !DILocalVariable(name: "r", arg: 1, scope: !7087, file: !291, line: 331, type: !7090)
!7092 = !DILocation(line: 331, column: 67, scope: !7087)
!7093 = !DILocation(line: 333, column: 33, scope: !7087)
!7094 = !DILocation(line: 333, column: 9, scope: !7087)
!7095 = !DILocation(line: 333, column: 2, scope: !7087)
!7096 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !291, file: !291, line: 313, type: !7097, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7097 = !DISubroutineType(types: !7098)
!7098 = !{!607, !7090, !825}
!7099 = !DILocalVariable(name: "r", arg: 1, scope: !7096, file: !291, line: 313, type: !7090)
!7100 = !DILocation(line: 313, column: 69, scope: !7096)
!7101 = !DILocalVariable(name: "oldp", arg: 2, scope: !7096, file: !291, line: 313, type: !825)
!7102 = !DILocation(line: 313, column: 77, scope: !7096)
!7103 = !DILocation(line: 315, column: 36, scope: !7096)
!7104 = !DILocation(line: 315, column: 39, scope: !7096)
!7105 = !DILocation(line: 315, column: 9, scope: !7096)
!7106 = !DILocation(line: 315, column: 2, scope: !7096)
!7107 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !291, file: !291, line: 270, type: !7108, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7108 = !DISubroutineType(types: !7109)
!7109 = !{!607, !121, !7090, !825}
!7110 = !DILocalVariable(name: "i", arg: 1, scope: !7111, file: !7112, line: 188, type: !121)
!7111 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7112, file: !7112, line: 188, type: !7113, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7112 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!7113 = !DISubroutineType(types: !7114)
!7114 = !{!121, !121, !7115}
!7115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!7116 = !DILocation(line: 188, column: 54, scope: !7111, inlinedAt: !7117)
!7117 = distinct !DILocation(line: 221, column: 9, scope: !7118, inlinedAt: !7120)
!7118 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7119, file: !7119, line: 218, type: !7113, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7119 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7120 = distinct !DILocation(line: 272, column: 12, scope: !7107)
!7121 = !DILocalVariable(name: "v", arg: 2, scope: !7111, file: !7112, line: 188, type: !7115)
!7122 = !DILocation(line: 188, column: 67, scope: !7111, inlinedAt: !7117)
!7123 = !DILocalVariable(name: "__ret", scope: !7124, file: !7112, line: 190, type: !121)
!7124 = distinct !DILexicalBlock(scope: !7111, file: !7112, line: 190, column: 9)
!7125 = !DILocation(line: 190, column: 9, scope: !7124, inlinedAt: !7117)
!7126 = !DILocalVariable(name: "v", arg: 1, scope: !7127, file: !7128, line: 99, type: !7131)
!7127 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7128, file: !7128, line: 99, type: !7129, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7128 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7129 = !DISubroutineType(types: !7130)
!7130 = !{null, !7131, !438}
!7131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7132, size: 64)
!7132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7133)
!7133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7134 = !DILocation(line: 99, column: 79, scope: !7127, inlinedAt: !7135)
!7135 = distinct !DILocation(line: 220, column: 2, scope: !7118, inlinedAt: !7120)
!7136 = !DILocalVariable(name: "size", arg: 2, scope: !7127, file: !7128, line: 99, type: !438)
!7137 = !DILocation(line: 99, column: 89, scope: !7127, inlinedAt: !7135)
!7138 = !DILocalVariable(name: "i", arg: 1, scope: !7118, file: !7119, line: 218, type: !121)
!7139 = !DILocation(line: 218, column: 30, scope: !7118, inlinedAt: !7120)
!7140 = !DILocalVariable(name: "v", arg: 2, scope: !7118, file: !7119, line: 218, type: !7115)
!7141 = !DILocation(line: 218, column: 43, scope: !7118, inlinedAt: !7120)
!7142 = !DILocalVariable(name: "i", arg: 1, scope: !7107, file: !291, line: 270, type: !121)
!7143 = !DILocation(line: 270, column: 61, scope: !7107)
!7144 = !DILocalVariable(name: "r", arg: 2, scope: !7107, file: !291, line: 270, type: !7090)
!7145 = !DILocation(line: 270, column: 76, scope: !7107)
!7146 = !DILocalVariable(name: "oldp", arg: 3, scope: !7107, file: !291, line: 270, type: !825)
!7147 = !DILocation(line: 270, column: 84, scope: !7107)
!7148 = !DILocalVariable(name: "old", scope: !7107, file: !291, line: 272, type: !121)
!7149 = !DILocation(line: 272, column: 6, scope: !7107)
!7150 = !DILocation(line: 272, column: 37, scope: !7107)
!7151 = !DILocation(line: 272, column: 41, scope: !7107)
!7152 = !DILocation(line: 272, column: 44, scope: !7107)
!7153 = !DILocation(line: 220, column: 31, scope: !7118, inlinedAt: !7120)
!7154 = !DILocation(line: 101, column: 20, scope: !7127, inlinedAt: !7135)
!7155 = !DILocation(line: 101, column: 23, scope: !7127, inlinedAt: !7135)
!7156 = !DILocation(line: 101, column: 2, scope: !7127, inlinedAt: !7135)
!7157 = !DILocation(line: 102, column: 2, scope: !7127, inlinedAt: !7135)
!7158 = !DILocation(line: 221, column: 39, scope: !7118, inlinedAt: !7120)
!7159 = !DILocation(line: 221, column: 42, scope: !7118, inlinedAt: !7120)
!7160 = !{i32 -2146611335}
!7161 = !DILocation(line: 274, column: 6, scope: !7162)
!7162 = distinct !DILexicalBlock(scope: !7107, file: !291, line: 274, column: 6)
!7163 = !DILocation(line: 274, column: 6, scope: !7107)
!7164 = !DILocation(line: 275, column: 11, scope: !7162)
!7165 = !DILocation(line: 275, column: 4, scope: !7162)
!7166 = !DILocation(line: 275, column: 9, scope: !7162)
!7167 = !DILocation(line: 275, column: 3, scope: !7162)
!7168 = !DILocation(line: 277, column: 6, scope: !7169)
!7169 = distinct !DILexicalBlock(scope: !7107, file: !291, line: 277, column: 6)
!7170 = !DILocation(line: 277, column: 13, scope: !7169)
!7171 = !DILocation(line: 277, column: 10, scope: !7169)
!7172 = !DILocation(line: 277, column: 6, scope: !7107)
!7173 = !DILocation(line: 278, column: 3, scope: !7174)
!7174 = distinct !DILexicalBlock(scope: !7169, file: !291, line: 277, column: 16)
!7175 = !{i32 -2144390868}
!7176 = !DILocation(line: 279, column: 3, scope: !7174)
!7177 = !DILocation(line: 282, column: 6, scope: !7178)
!7178 = distinct !DILexicalBlock(scope: !7107, file: !291, line: 282, column: 6)
!7179 = !DILocation(line: 282, column: 6, scope: !7107)
!7180 = !DILocation(line: 283, column: 26, scope: !7178)
!7181 = !DILocation(line: 283, column: 3, scope: !7178)
!7182 = !DILocation(line: 285, column: 2, scope: !7107)
!7183 = !DILocation(line: 286, column: 1, scope: !7107)
!7184 = distinct !DISubprogram(name: "kasan_check_write", scope: !7185, file: !7185, line: 38, type: !7186, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7185 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7186 = !DISubroutineType(types: !7187)
!7187 = !{!607, !7131, !5}
!7188 = !DILocalVariable(name: "p", arg: 1, scope: !7184, file: !7185, line: 38, type: !7131)
!7189 = !DILocation(line: 38, column: 59, scope: !7184)
!7190 = !DILocalVariable(name: "size", arg: 2, scope: !7184, file: !7185, line: 38, type: !5)
!7191 = !DILocation(line: 38, column: 75, scope: !7184)
!7192 = !DILocation(line: 40, column: 2, scope: !7184)
!7193 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7194, file: !7194, line: 178, type: !7195, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !364)
!7194 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7195 = !DISubroutineType(types: !7196)
!7196 = !{null, !7131, !438, !121}
!7197 = !DILocalVariable(name: "ptr", arg: 1, scope: !7193, file: !7194, line: 178, type: !7131)
!7198 = !DILocation(line: 178, column: 60, scope: !7193)
!7199 = !DILocalVariable(name: "size", arg: 2, scope: !7193, file: !7194, line: 178, type: !438)
!7200 = !DILocation(line: 178, column: 72, scope: !7193)
!7201 = !DILocalVariable(name: "type", arg: 3, scope: !7193, file: !7194, line: 179, type: !121)
!7202 = !DILocation(line: 179, column: 15, scope: !7193)
!7203 = !DILocation(line: 179, column: 23, scope: !7193)
