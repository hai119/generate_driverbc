; ModuleID = '../bcout/drivers/video/fbdev/core/fbsysfs.llvm.bc'
source_filename = "drivers/video/fbdev/core/fbsysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
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
%struct.seq_file = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.65, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.65 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }

@framebuffer_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [22 x i8] c"&info->bl_curve_mutex\00", align 1
@device_attrs = internal global [13 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_bpp, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bpp }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_blank, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_blank }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_console, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_console }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_cursor, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_cursor }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_mode, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_mode }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_modes, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_modes }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_pan, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pan }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_virtual, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_virtual }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_name, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_stride, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_rotate, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_rotate }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_fbstate, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fbstate }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_bl_curve, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bl_curve }], align 16, !dbg !4371
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bits_per_pixel\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pan\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"virtual_size\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"bl_curve\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%c:%dx%d%c-%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%8ph\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"%2hhx %2hhx %2hhx %2hhx %2hhx %2hhx %2hhx %2hhx\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fb_info* @framebuffer_alloc(i64 %size, %struct.device* %dev) #0 !dbg !2 {
entry:
  %retval = alloca %struct.fb_info*, align 8
  %size.addr = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %fb_info_size = alloca i32, align 4
  %info = alloca %struct.fb_info*, align 8
  %p = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4393, metadata !DIExpression()), !dbg !4394
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.declare(metadata i32* %fb_info_size, metadata !4397, metadata !DIExpression()), !dbg !4398
  store i32 1016, i32* %fb_info_size, align 4, !dbg !4398
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info, metadata !4399, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4401, metadata !DIExpression()), !dbg !4402
  %0 = load i64, i64* %size.addr, align 8, !dbg !4403
  %tobool = icmp ne i64 %0, 0, !dbg !4403
  br i1 %tobool, label %if.then, label %if.end, !dbg !4405

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fb_info_size, align 4, !dbg !4406
  %conv = sext i32 %1 to i64, !dbg !4406
  %add = add i64 %conv, 8, !dbg !4406
  %conv1 = trunc i64 %add to i32, !dbg !4406
  store i32 %conv1, i32* %fb_info_size, align 4, !dbg !4406
  br label %if.end, !dbg !4407

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fb_info_size, align 4, !dbg !4408
  %conv2 = sext i32 %2 to i64, !dbg !4408
  %3 = load i64, i64* %size.addr, align 8, !dbg !4409
  %add3 = add i64 %conv2, %3, !dbg !4410
  %call = call i8* @kzalloc(i64 %add3, i32 3264) #7, !dbg !4411
  store i8* %call, i8** %p, align 8, !dbg !4412
  %4 = load i8*, i8** %p, align 8, !dbg !4413
  %tobool4 = icmp ne i8* %4, null, !dbg !4413
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4415

if.then5:                                         ; preds = %if.end
  store %struct.fb_info* null, %struct.fb_info** %retval, align 8, !dbg !4416
  br label %return, !dbg !4416

if.end6:                                          ; preds = %if.end
  %5 = load i8*, i8** %p, align 8, !dbg !4417
  %6 = bitcast i8* %5 to %struct.fb_info*, !dbg !4418
  store %struct.fb_info* %6, %struct.fb_info** %info, align 8, !dbg !4419
  %7 = load i64, i64* %size.addr, align 8, !dbg !4420
  %tobool7 = icmp ne i64 %7, 0, !dbg !4420
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4422

if.then8:                                         ; preds = %if.end6
  %8 = load i8*, i8** %p, align 8, !dbg !4423
  %9 = load i32, i32* %fb_info_size, align 4, !dbg !4424
  %idx.ext = sext i32 %9 to i64, !dbg !4425
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !4425
  %10 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4426
  %par = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 30, !dbg !4427
  store i8* %add.ptr, i8** %par, align 8, !dbg !4428
  br label %if.end9, !dbg !4426

if.end9:                                          ; preds = %if.then8, %if.end6
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4429
  %12 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4430
  %device = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 21, !dbg !4431
  store %struct.device* %11, %struct.device** %device, align 8, !dbg !4432
  %13 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4433
  %fbcon_rotate_hint = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3, !dbg !4434
  store i32 -1, i32* %fbcon_rotate_hint, align 4, !dbg !4435
  br label %do.body, !dbg !4436

do.body:                                          ; preds = %if.end9
  %14 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4437
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 16, !dbg !4437
  call void @__mutex_init(%struct.mutex* %bl_curve_mutex, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @framebuffer_alloc.__key) #7, !dbg !4437
  br label %do.end, !dbg !4437

do.end:                                           ; preds = %do.body
  %15 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4439
  store %struct.fb_info* %15, %struct.fb_info** %retval, align 8, !dbg !4440
  br label %return, !dbg !4440

return:                                           ; preds = %do.end, %if.then5
  %16 = load %struct.fb_info*, %struct.fb_info** %retval, align 8, !dbg !4441
  ret %struct.fb_info* %16, !dbg !4441
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4442 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4445, metadata !DIExpression()), !dbg !4449
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4455, metadata !DIExpression()), !dbg !4456
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4457, metadata !DIExpression()), !dbg !4458
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4459, metadata !DIExpression()), !dbg !4460
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4461, metadata !DIExpression()), !dbg !4465
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4467, metadata !DIExpression()), !dbg !4471
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4473, metadata !DIExpression()), !dbg !4477
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4482, metadata !DIExpression()), !dbg !4483
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4484, metadata !DIExpression()), !dbg !4485
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4486, metadata !DIExpression()), !dbg !4487
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4488, metadata !DIExpression()), !dbg !4489
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4490, metadata !DIExpression()), !dbg !4491
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4492, metadata !DIExpression()), !dbg !4493
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4494, metadata !DIExpression()), !dbg !4495
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4496, metadata !DIExpression()), !dbg !4497
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = load i64, i64* %size.addr, align 8, !dbg !4502
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4503
  %or = or i32 %1, 256, !dbg !4504
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4505
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !4506
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4507

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4508
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4509
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4510

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4511
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4512
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4513
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !4514
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4491
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4515
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4516
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4517
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4518
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4519
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4520
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4521
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4521
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4521
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4521
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4521
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4522
  br label %kmalloc.exit, !dbg !4522

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4523
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4524
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4524
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4526

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4527
  br label %kmalloc_index.exit.i, !dbg !4527

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4528
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4530
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4531

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4532
  br label %kmalloc_index.exit.i, !dbg !4532

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4533
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4535
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4536

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4537
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4538
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4539

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4540
  br label %kmalloc_index.exit.i, !dbg !4540

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4541
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4543
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4544

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4545
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4546
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4547

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4548
  br label %kmalloc_index.exit.i, !dbg !4548

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4549
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4551
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4552

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4553
  br label %kmalloc_index.exit.i, !dbg !4553

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4554
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4556
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4557

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4558
  br label %kmalloc_index.exit.i, !dbg !4558

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4559
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4561
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4562

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4563
  br label %kmalloc_index.exit.i, !dbg !4563

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4564
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4566
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4567

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4568
  br label %kmalloc_index.exit.i, !dbg !4568

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4569
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4571
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4572

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4573
  br label %kmalloc_index.exit.i, !dbg !4573

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4574
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4576
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4577

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4578
  br label %kmalloc_index.exit.i, !dbg !4578

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4579
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4581
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4582

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4583
  br label %kmalloc_index.exit.i, !dbg !4583

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4584
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4586
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4587

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4588
  br label %kmalloc_index.exit.i, !dbg !4588

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4589
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4591
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4592

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4593
  br label %kmalloc_index.exit.i, !dbg !4593

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4594
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4596
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4597

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4598
  br label %kmalloc_index.exit.i, !dbg !4598

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4599
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4601
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4602

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4603
  br label %kmalloc_index.exit.i, !dbg !4603

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4604
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4606
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4607

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4608
  br label %kmalloc_index.exit.i, !dbg !4608

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4609
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4611
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4612

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4613
  br label %kmalloc_index.exit.i, !dbg !4613

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4614
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4616
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4617

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4618
  br label %kmalloc_index.exit.i, !dbg !4618

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4619
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4621
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4622

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4623
  br label %kmalloc_index.exit.i, !dbg !4623

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4624
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4626
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4627

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4628
  br label %kmalloc_index.exit.i, !dbg !4628

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4629
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4631
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4632

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4633
  br label %kmalloc_index.exit.i, !dbg !4633

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4634
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4636
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4637

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4638
  br label %kmalloc_index.exit.i, !dbg !4638

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4639
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4641
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4642

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4643
  br label %kmalloc_index.exit.i, !dbg !4643

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4644
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4646
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4647

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4648
  br label %kmalloc_index.exit.i, !dbg !4648

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4649
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4651
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4652

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4653
  br label %kmalloc_index.exit.i, !dbg !4653

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4654
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4656
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4657

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4658
  br label %kmalloc_index.exit.i, !dbg !4658

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4659
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4661
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4662

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4663
  br label %kmalloc_index.exit.i, !dbg !4663

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4666
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4667

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4668
  br label %kmalloc_index.exit.i, !dbg !4668

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4669, !srcloc !4672
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #8, !dbg !4673, !srcloc !4676
  unreachable, !dbg !4677

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4678
  store i32 %45, i32* %index.i, align 4, !dbg !4679
  %46 = load i32, i32* %index.i, align 4, !dbg !4680
  %tobool.i = icmp ne i32 %46, 0, !dbg !4680
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4682

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4683
  br label %kmalloc.exit, !dbg !4683

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4684
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4685
  %and.i.i = and i32 %48, 17, !dbg !4685
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4685
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4685
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4685
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4685
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4687

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4688
  br label %kmalloc_type.exit.i, !dbg !4688

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4689
  %and2.i.i = and i32 %49, 1, !dbg !4690
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4689
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4689
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4689
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4691
  br label %kmalloc_type.exit.i, !dbg !4691

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4692
  %idxprom.i = zext i32 %51 to i64, !dbg !4693
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4693
  %52 = load i32, i32* %index.i, align 4, !dbg !4694
  %idxprom6.i = zext i32 %52 to i64, !dbg !4693
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4693
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4693
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4695
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4696
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4697
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4698
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4699
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4699
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4699
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4699
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4699
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4460
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4700
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4701
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4702
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4703
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4704
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4705
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4706
  store i8* %62, i8** %retval.i, align 8, !dbg !4707
  br label %kmalloc.exit, !dbg !4707

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4708
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4709
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4710
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4710
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4710
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4710
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4710
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4711
  br label %kmalloc.exit, !dbg !4711

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4712
  ret i8* %65, !dbg !4713
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @framebuffer_release(%struct.fb_info* %info) #0 !dbg !4714 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4717
  %tobool = icmp ne %struct.fb_info* %0, null, !dbg !4717
  br i1 %tobool, label %if.end, label %if.then, !dbg !4719

if.then:                                          ; preds = %entry
  br label %return, !dbg !4720

if.end:                                           ; preds = %entry
  %1 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4721
  %apertures = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 31, !dbg !4722
  %2 = load %struct.apertures_struct*, %struct.apertures_struct** %apertures, align 8, !dbg !4722
  %3 = bitcast %struct.apertures_struct* %2 to i8*, !dbg !4721
  call void @kfree(i8* %3) #7, !dbg !4723
  %4 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4724
  %5 = bitcast %struct.fb_info* %4 to i8*, !dbg !4724
  call void @kfree(i8* %5) #7, !dbg !4725
  br label %return, !dbg !4726

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4726
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_init_device(%struct.fb_info* %fb_info) #0 !dbg !4727 {
entry:
  %fb_info.addr = alloca %struct.fb_info*, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.fb_info* %fb_info, %struct.fb_info** %fb_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4730, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i32 0, i32* %error, align 4, !dbg !4733
  %0 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4734
  %dev = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 22, !dbg !4735
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4735
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4736
  %3 = bitcast %struct.fb_info* %2 to i8*, !dbg !4736
  call void @dev_set_drvdata(%struct.device* %1, i8* %3) #7, !dbg !4737
  %4 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4738
  %class_flag = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 23, !dbg !4739
  %5 = load i32, i32* %class_flag, align 8, !dbg !4740
  %or = or i32 %5, 1, !dbg !4740
  store i32 %or, i32* %class_flag, align 8, !dbg !4740
  store i32 0, i32* %i, align 4, !dbg !4741
  br label %for.cond, !dbg !4743

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !4744
  %conv = sext i32 %6 to i64, !dbg !4744
  %cmp = icmp ult i64 %conv, 13, !dbg !4746
  br i1 %cmp, label %for.body, label %for.end, !dbg !4747

for.body:                                         ; preds = %for.cond
  %7 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4748
  %dev2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 22, !dbg !4750
  %8 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !4750
  %9 = load i32, i32* %i, align 4, !dbg !4751
  %idxprom = sext i32 %9 to i64, !dbg !4752
  %arrayidx = getelementptr [13 x %struct.device_attribute], [13 x %struct.device_attribute]* @device_attrs, i64 0, i64 %idxprom, !dbg !4752
  %call = call i32 @device_create_file(%struct.device* %8, %struct.device_attribute* %arrayidx) #7, !dbg !4753
  store i32 %call, i32* %error, align 4, !dbg !4754
  %10 = load i32, i32* %error, align 4, !dbg !4755
  %tobool = icmp ne i32 %10, 0, !dbg !4755
  br i1 %tobool, label %if.then, label %if.end, !dbg !4757

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4758

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4759

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !4760
  %inc = add i32 %11, 1, !dbg !4760
  store i32 %inc, i32* %i, align 4, !dbg !4760
  br label %for.cond, !dbg !4761, !llvm.loop !4762

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %error, align 4, !dbg !4764
  %tobool3 = icmp ne i32 %12, 0, !dbg !4764
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !4766

if.then4:                                         ; preds = %for.end
  br label %while.cond, !dbg !4767

while.cond:                                       ; preds = %while.body, %if.then4
  %13 = load i32, i32* %i, align 4, !dbg !4769
  %dec = add i32 %13, -1, !dbg !4769
  store i32 %dec, i32* %i, align 4, !dbg !4769
  %cmp5 = icmp sge i32 %dec, 0, !dbg !4770
  br i1 %cmp5, label %while.body, label %while.end, !dbg !4767

while.body:                                       ; preds = %while.cond
  %14 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4771
  %dev7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 22, !dbg !4772
  %15 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !4772
  %16 = load i32, i32* %i, align 4, !dbg !4773
  %idxprom8 = sext i32 %16 to i64, !dbg !4774
  %arrayidx9 = getelementptr [13 x %struct.device_attribute], [13 x %struct.device_attribute]* @device_attrs, i64 0, i64 %idxprom8, !dbg !4774
  call void @device_remove_file(%struct.device* %15, %struct.device_attribute* %arrayidx9) #7, !dbg !4775
  br label %while.cond, !dbg !4767, !llvm.loop !4776

while.end:                                        ; preds = %while.cond
  %17 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4778
  %class_flag10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 23, !dbg !4779
  %18 = load i32, i32* %class_flag10, align 8, !dbg !4780
  %and = and i32 %18, -2, !dbg !4780
  store i32 %and, i32* %class_flag10, align 8, !dbg !4780
  br label %if.end11, !dbg !4781

if.end11:                                         ; preds = %while.end, %for.end
  ret i32 0, !dbg !4782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !4783 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4786, metadata !DIExpression()), !dbg !4787
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4790
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4791
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4792
  store i8* %0, i8** %driver_data, align 8, !dbg !4793
  ret void, !dbg !4794
}

; Function Attrs: noredzone
declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @device_remove_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fb_cleanup_device(%struct.fb_info* %fb_info) #0 !dbg !4795 {
entry:
  %fb_info.addr = alloca %struct.fb_info*, align 8
  %i = alloca i32, align 4
  store %struct.fb_info* %fb_info, %struct.fb_info** %fb_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info.addr, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4798, metadata !DIExpression()), !dbg !4799
  %0 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4800
  %class_flag = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 23, !dbg !4802
  %1 = load i32, i32* %class_flag, align 8, !dbg !4802
  %and = and i32 %1, 1, !dbg !4803
  %tobool = icmp ne i32 %and, 0, !dbg !4803
  br i1 %tobool, label %if.then, label %if.end, !dbg !4804

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4805
  br label %for.cond, !dbg !4808

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !4809
  %conv = zext i32 %2 to i64, !dbg !4809
  %cmp = icmp ult i64 %conv, 13, !dbg !4811
  br i1 %cmp, label %for.body, label %for.end, !dbg !4812

for.body:                                         ; preds = %for.cond
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4813
  %dev = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 22, !dbg !4814
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4814
  %5 = load i32, i32* %i, align 4, !dbg !4815
  %idxprom = zext i32 %5 to i64, !dbg !4816
  %arrayidx = getelementptr [13 x %struct.device_attribute], [13 x %struct.device_attribute]* @device_attrs, i64 0, i64 %idxprom, !dbg !4816
  call void @device_remove_file(%struct.device* %4, %struct.device_attribute* %arrayidx) #7, !dbg !4817
  br label %for.inc, !dbg !4817

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !4818
  %inc = add i32 %6, 1, !dbg !4818
  store i32 %inc, i32* %i, align 4, !dbg !4818
  br label %for.cond, !dbg !4819, !llvm.loop !4820

for.end:                                          ; preds = %for.cond
  %7 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4822
  %class_flag2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 23, !dbg !4823
  %8 = load i32, i32* %class_flag2, align 8, !dbg !4824
  %and3 = and i32 %8, -2, !dbg !4824
  store i32 %and3, i32* %class_flag2, align 8, !dbg !4824
  br label %if.end, !dbg !4825

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !4826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fb_bl_default_curve(%struct.fb_info* %fb_info, i8 zeroext %off, i8 zeroext %min, i8 zeroext %max) #0 !dbg !4827 {
entry:
  %fb_info.addr = alloca %struct.fb_info*, align 8
  %off.addr = alloca i8, align 1
  %min.addr = alloca i8, align 1
  %max.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %flat = alloca i32, align 4
  %count = alloca i32, align 4
  %range = alloca i32, align 4
  store %struct.fb_info* %fb_info, %struct.fb_info** %fb_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  store i8 %off, i8* %off.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %off.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store i8 %min, i8* %min.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %min.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i8 %max, i8* %max.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %max.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata i32* %flat, metadata !4840, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.declare(metadata i32* %range, metadata !4844, metadata !DIExpression()), !dbg !4845
  %0 = load i8, i8* %max.addr, align 1, !dbg !4846
  %conv = zext i8 %0 to i32, !dbg !4846
  %1 = load i8, i8* %min.addr, align 1, !dbg !4847
  %conv1 = zext i8 %1 to i32, !dbg !4847
  %sub = sub i32 %conv, %conv1, !dbg !4848
  store i32 %sub, i32* %range, align 4, !dbg !4845
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4849
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 16, !dbg !4850
  call void @mutex_lock(%struct.mutex* %bl_curve_mutex) #7, !dbg !4851
  %3 = load i8, i8* %off.addr, align 1, !dbg !4852
  %4 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4853
  %bl_curve = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 17, !dbg !4854
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %bl_curve, i64 0, i64 0, !dbg !4853
  store i8 %3, i8* %arrayidx, align 8, !dbg !4855
  store i32 1, i32* %flat, align 4, !dbg !4856
  br label %for.cond, !dbg !4858

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %flat, align 4, !dbg !4859
  %cmp = icmp ult i32 %5, 8, !dbg !4861
  br i1 %cmp, label %for.body, label %for.end, !dbg !4862

for.body:                                         ; preds = %for.cond
  %6 = load i8, i8* %min.addr, align 1, !dbg !4863
  %7 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4864
  %bl_curve3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 17, !dbg !4865
  %8 = load i32, i32* %flat, align 4, !dbg !4866
  %idxprom = zext i32 %8 to i64, !dbg !4864
  %arrayidx4 = getelementptr [128 x i8], [128 x i8]* %bl_curve3, i64 0, i64 %idxprom, !dbg !4864
  store i8 %6, i8* %arrayidx4, align 1, !dbg !4867
  br label %for.inc, !dbg !4864

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %flat, align 4, !dbg !4868
  %inc = add i32 %9, 1, !dbg !4868
  store i32 %inc, i32* %flat, align 4, !dbg !4868
  br label %for.cond, !dbg !4869, !llvm.loop !4870

for.end:                                          ; preds = %for.cond
  store i32 120, i32* %count, align 4, !dbg !4872
  store i32 0, i32* %i, align 4, !dbg !4873
  br label %for.cond5, !dbg !4875

for.cond5:                                        ; preds = %for.inc16, %for.end
  %10 = load i32, i32* %i, align 4, !dbg !4876
  %11 = load i32, i32* %count, align 4, !dbg !4878
  %cmp6 = icmp ult i32 %10, %11, !dbg !4879
  br i1 %cmp6, label %for.body8, label %for.end18, !dbg !4880

for.body8:                                        ; preds = %for.cond5
  %12 = load i8, i8* %min.addr, align 1, !dbg !4881
  %conv9 = zext i8 %12 to i32, !dbg !4881
  %13 = load i32, i32* %range, align 4, !dbg !4882
  %14 = load i32, i32* %i, align 4, !dbg !4883
  %add = add i32 %14, 1, !dbg !4884
  %mul = mul i32 %13, %add, !dbg !4885
  %15 = load i32, i32* %count, align 4, !dbg !4886
  %div = udiv i32 %mul, %15, !dbg !4887
  %add10 = add i32 %conv9, %div, !dbg !4888
  %conv11 = trunc i32 %add10 to i8, !dbg !4881
  %16 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4889
  %bl_curve12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 17, !dbg !4890
  %17 = load i32, i32* %flat, align 4, !dbg !4891
  %18 = load i32, i32* %i, align 4, !dbg !4892
  %add13 = add i32 %17, %18, !dbg !4893
  %idxprom14 = zext i32 %add13 to i64, !dbg !4889
  %arrayidx15 = getelementptr [128 x i8], [128 x i8]* %bl_curve12, i64 0, i64 %idxprom14, !dbg !4889
  store i8 %conv11, i8* %arrayidx15, align 1, !dbg !4894
  br label %for.inc16, !dbg !4889

for.inc16:                                        ; preds = %for.body8
  %19 = load i32, i32* %i, align 4, !dbg !4895
  %inc17 = add i32 %19, 1, !dbg !4895
  store i32 %inc17, i32* %i, align 4, !dbg !4895
  br label %for.cond5, !dbg !4896, !llvm.loop !4897

for.end18:                                        ; preds = %for.cond5
  %20 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !4899
  %bl_curve_mutex19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 16, !dbg !4900
  call void @mutex_unlock(%struct.mutex* %bl_curve_mutex19) #7, !dbg !4901
  ret void, !dbg !4902
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !4903 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4907, metadata !DIExpression()), !dbg !4912
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4914, metadata !DIExpression()), !dbg !4915
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  %0 = load i64, i64* %size.addr, align 8, !dbg !4918
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4920
  br i1 %1, label %if.then, label %if.end447, !dbg !4921

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4922
  %tobool = icmp ne i64 %2, 0, !dbg !4922
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4925

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4927
  %cmp = icmp ult i64 %3, 4096, !dbg !4929
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4930

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub = sub i64 %4, 1, !dbg !4932
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4932
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4932

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub4 = sub i64 %6, 1, !dbg !4932
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4932
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4932

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub6 = sub i64 %8, 1, !dbg !4932
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4932
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4932

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4932

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub9 = sub i64 %9, 1, !dbg !4932
  %and = and i64 %sub9, -9223372036854775808, !dbg !4932
  %tobool10 = icmp ne i64 %and, 0, !dbg !4932
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4932

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4932

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub13 = sub i64 %10, 1, !dbg !4932
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4932
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4932
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4932

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4932

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub18 = sub i64 %11, 1, !dbg !4932
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4932
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4932
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4932

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4932

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub23 = sub i64 %12, 1, !dbg !4932
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4932
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4932
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4932

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4932

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub28 = sub i64 %13, 1, !dbg !4932
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4932
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4932
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4932

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4932

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub33 = sub i64 %14, 1, !dbg !4932
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4932
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4932
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4932

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4932

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub38 = sub i64 %15, 1, !dbg !4932
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4932
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4932
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4932

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4932

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub43 = sub i64 %16, 1, !dbg !4932
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4932
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4932
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4932

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4932

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub48 = sub i64 %17, 1, !dbg !4932
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4932
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4932
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4932

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4932

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub53 = sub i64 %18, 1, !dbg !4932
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4932
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4932
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4932

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4932

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub58 = sub i64 %19, 1, !dbg !4932
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4932
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4932
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4932

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4932

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub63 = sub i64 %20, 1, !dbg !4932
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4932
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4932
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4932

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4932

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub68 = sub i64 %21, 1, !dbg !4932
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4932
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4932
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4932

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4932

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub73 = sub i64 %22, 1, !dbg !4932
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4932
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4932
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4932

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4932

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub78 = sub i64 %23, 1, !dbg !4932
  %and79 = and i64 %sub78, 562949953421312, !dbg !4932
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4932
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4932

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4932

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub83 = sub i64 %24, 1, !dbg !4932
  %and84 = and i64 %sub83, 281474976710656, !dbg !4932
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4932
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4932

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4932

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub88 = sub i64 %25, 1, !dbg !4932
  %and89 = and i64 %sub88, 140737488355328, !dbg !4932
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4932
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4932

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4932

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub93 = sub i64 %26, 1, !dbg !4932
  %and94 = and i64 %sub93, 70368744177664, !dbg !4932
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4932
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4932

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4932

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub98 = sub i64 %27, 1, !dbg !4932
  %and99 = and i64 %sub98, 35184372088832, !dbg !4932
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4932
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4932

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4932

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub103 = sub i64 %28, 1, !dbg !4932
  %and104 = and i64 %sub103, 17592186044416, !dbg !4932
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4932
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4932

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4932

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub108 = sub i64 %29, 1, !dbg !4932
  %and109 = and i64 %sub108, 8796093022208, !dbg !4932
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4932
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4932

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4932

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub113 = sub i64 %30, 1, !dbg !4932
  %and114 = and i64 %sub113, 4398046511104, !dbg !4932
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4932
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4932

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4932

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub118 = sub i64 %31, 1, !dbg !4932
  %and119 = and i64 %sub118, 2199023255552, !dbg !4932
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4932
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4932

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4932

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub123 = sub i64 %32, 1, !dbg !4932
  %and124 = and i64 %sub123, 1099511627776, !dbg !4932
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4932
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4932

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4932

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub128 = sub i64 %33, 1, !dbg !4932
  %and129 = and i64 %sub128, 549755813888, !dbg !4932
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4932
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4932

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4932

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub133 = sub i64 %34, 1, !dbg !4932
  %and134 = and i64 %sub133, 274877906944, !dbg !4932
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4932
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4932

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4932

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub138 = sub i64 %35, 1, !dbg !4932
  %and139 = and i64 %sub138, 137438953472, !dbg !4932
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4932
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4932

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4932

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub143 = sub i64 %36, 1, !dbg !4932
  %and144 = and i64 %sub143, 68719476736, !dbg !4932
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4932
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4932

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4932

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub148 = sub i64 %37, 1, !dbg !4932
  %and149 = and i64 %sub148, 34359738368, !dbg !4932
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4932
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4932

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4932

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub153 = sub i64 %38, 1, !dbg !4932
  %and154 = and i64 %sub153, 17179869184, !dbg !4932
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4932
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4932

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4932

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub158 = sub i64 %39, 1, !dbg !4932
  %and159 = and i64 %sub158, 8589934592, !dbg !4932
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4932
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4932

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4932

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub163 = sub i64 %40, 1, !dbg !4932
  %and164 = and i64 %sub163, 4294967296, !dbg !4932
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4932
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4932

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4932

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub168 = sub i64 %41, 1, !dbg !4932
  %and169 = and i64 %sub168, 2147483648, !dbg !4932
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4932
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4932

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4932

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub173 = sub i64 %42, 1, !dbg !4932
  %and174 = and i64 %sub173, 1073741824, !dbg !4932
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4932
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4932

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4932

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub178 = sub i64 %43, 1, !dbg !4932
  %and179 = and i64 %sub178, 536870912, !dbg !4932
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4932
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4932

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4932

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub183 = sub i64 %44, 1, !dbg !4932
  %and184 = and i64 %sub183, 268435456, !dbg !4932
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4932
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4932

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4932

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub188 = sub i64 %45, 1, !dbg !4932
  %and189 = and i64 %sub188, 134217728, !dbg !4932
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4932
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4932

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4932

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub193 = sub i64 %46, 1, !dbg !4932
  %and194 = and i64 %sub193, 67108864, !dbg !4932
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4932
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4932

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4932

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub198 = sub i64 %47, 1, !dbg !4932
  %and199 = and i64 %sub198, 33554432, !dbg !4932
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4932
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4932

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4932

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub203 = sub i64 %48, 1, !dbg !4932
  %and204 = and i64 %sub203, 16777216, !dbg !4932
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4932
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4932

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4932

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub208 = sub i64 %49, 1, !dbg !4932
  %and209 = and i64 %sub208, 8388608, !dbg !4932
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4932
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4932

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4932

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub213 = sub i64 %50, 1, !dbg !4932
  %and214 = and i64 %sub213, 4194304, !dbg !4932
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4932
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4932

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4932

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub218 = sub i64 %51, 1, !dbg !4932
  %and219 = and i64 %sub218, 2097152, !dbg !4932
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4932
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4932

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4932

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub223 = sub i64 %52, 1, !dbg !4932
  %and224 = and i64 %sub223, 1048576, !dbg !4932
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4932
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4932

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4932

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub228 = sub i64 %53, 1, !dbg !4932
  %and229 = and i64 %sub228, 524288, !dbg !4932
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4932
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4932

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4932

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub233 = sub i64 %54, 1, !dbg !4932
  %and234 = and i64 %sub233, 262144, !dbg !4932
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4932
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4932

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4932

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub238 = sub i64 %55, 1, !dbg !4932
  %and239 = and i64 %sub238, 131072, !dbg !4932
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4932
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4932

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4932

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub243 = sub i64 %56, 1, !dbg !4932
  %and244 = and i64 %sub243, 65536, !dbg !4932
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4932
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4932

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4932

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub248 = sub i64 %57, 1, !dbg !4932
  %and249 = and i64 %sub248, 32768, !dbg !4932
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4932
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4932

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4932

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub253 = sub i64 %58, 1, !dbg !4932
  %and254 = and i64 %sub253, 16384, !dbg !4932
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4932
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4932

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4932

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub258 = sub i64 %59, 1, !dbg !4932
  %and259 = and i64 %sub258, 8192, !dbg !4932
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4932
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4932

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4932

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub263 = sub i64 %60, 1, !dbg !4932
  %and264 = and i64 %sub263, 4096, !dbg !4932
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4932
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4932

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4932

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub268 = sub i64 %61, 1, !dbg !4932
  %and269 = and i64 %sub268, 2048, !dbg !4932
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4932
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4932

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4932

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub273 = sub i64 %62, 1, !dbg !4932
  %and274 = and i64 %sub273, 1024, !dbg !4932
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4932
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4932

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4932

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub278 = sub i64 %63, 1, !dbg !4932
  %and279 = and i64 %sub278, 512, !dbg !4932
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4932
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4932

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4932

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub283 = sub i64 %64, 1, !dbg !4932
  %and284 = and i64 %sub283, 256, !dbg !4932
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4932
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4932

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4932

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub288 = sub i64 %65, 1, !dbg !4932
  %and289 = and i64 %sub288, 128, !dbg !4932
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4932
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4932

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4932

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub293 = sub i64 %66, 1, !dbg !4932
  %and294 = and i64 %sub293, 64, !dbg !4932
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4932
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4932

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4932

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub298 = sub i64 %67, 1, !dbg !4932
  %and299 = and i64 %sub298, 32, !dbg !4932
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4932
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4932

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4932

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub303 = sub i64 %68, 1, !dbg !4932
  %and304 = and i64 %sub303, 16, !dbg !4932
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4932
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4932

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4932

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub308 = sub i64 %69, 1, !dbg !4932
  %and309 = and i64 %sub308, 8, !dbg !4932
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4932
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4932

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4932

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub313 = sub i64 %70, 1, !dbg !4932
  %and314 = and i64 %sub313, 4, !dbg !4932
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4932
  %71 = zext i1 %tobool315 to i64, !dbg !4932
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4932
  br label %cond.end, !dbg !4932

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4932
  br label %cond.end317, !dbg !4932

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4932
  br label %cond.end319, !dbg !4932

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4932
  br label %cond.end321, !dbg !4932

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4932
  br label %cond.end323, !dbg !4932

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4932
  br label %cond.end325, !dbg !4932

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4932
  br label %cond.end327, !dbg !4932

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4932
  br label %cond.end329, !dbg !4932

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4932
  br label %cond.end331, !dbg !4932

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4932
  br label %cond.end333, !dbg !4932

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4932
  br label %cond.end335, !dbg !4932

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4932
  br label %cond.end337, !dbg !4932

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4932
  br label %cond.end339, !dbg !4932

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4932
  br label %cond.end341, !dbg !4932

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4932
  br label %cond.end343, !dbg !4932

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4932
  br label %cond.end345, !dbg !4932

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4932
  br label %cond.end347, !dbg !4932

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4932
  br label %cond.end349, !dbg !4932

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4932
  br label %cond.end351, !dbg !4932

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4932
  br label %cond.end353, !dbg !4932

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4932
  br label %cond.end355, !dbg !4932

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4932
  br label %cond.end357, !dbg !4932

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4932
  br label %cond.end359, !dbg !4932

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4932
  br label %cond.end361, !dbg !4932

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4932
  br label %cond.end363, !dbg !4932

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4932
  br label %cond.end365, !dbg !4932

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4932
  br label %cond.end367, !dbg !4932

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4932
  br label %cond.end369, !dbg !4932

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4932
  br label %cond.end371, !dbg !4932

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4932
  br label %cond.end373, !dbg !4932

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4932
  br label %cond.end375, !dbg !4932

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4932
  br label %cond.end377, !dbg !4932

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4932
  br label %cond.end379, !dbg !4932

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4932
  br label %cond.end381, !dbg !4932

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4932
  br label %cond.end383, !dbg !4932

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4932
  br label %cond.end385, !dbg !4932

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4932
  br label %cond.end387, !dbg !4932

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4932
  br label %cond.end389, !dbg !4932

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4932
  br label %cond.end391, !dbg !4932

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4932
  br label %cond.end393, !dbg !4932

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4932
  br label %cond.end395, !dbg !4932

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4932
  br label %cond.end397, !dbg !4932

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4932
  br label %cond.end399, !dbg !4932

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4932
  br label %cond.end401, !dbg !4932

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4932
  br label %cond.end403, !dbg !4932

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4932
  br label %cond.end405, !dbg !4932

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4932
  br label %cond.end407, !dbg !4932

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4932
  br label %cond.end409, !dbg !4932

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4932
  br label %cond.end411, !dbg !4932

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4932
  br label %cond.end413, !dbg !4932

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4932
  br label %cond.end415, !dbg !4932

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4932
  br label %cond.end417, !dbg !4932

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4932
  br label %cond.end419, !dbg !4932

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4932
  br label %cond.end421, !dbg !4932

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4932
  br label %cond.end423, !dbg !4932

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4932
  br label %cond.end425, !dbg !4932

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4932
  br label %cond.end427, !dbg !4932

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4932
  br label %cond.end429, !dbg !4932

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4932
  br label %cond.end431, !dbg !4932

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4932
  br label %cond.end433, !dbg !4932

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4932
  br label %cond.end435, !dbg !4932

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4932
  br label %cond.end437, !dbg !4932

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4932
  br label %cond.end440, !dbg !4932

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4932

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4932
  br label %cond.end444, !dbg !4932

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub443 = sub i64 %72, 1, !dbg !4932
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !4932
  br label %cond.end444, !dbg !4932

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4932
  %sub446 = sub i32 %cond445, 12, !dbg !4933
  %add = add i32 %sub446, 1, !dbg !4934
  store i32 %add, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4936
  %dec = add i64 %73, -1, !dbg !4936
  store i64 %dec, i64* %size.addr, align 8, !dbg !4936
  %74 = load i64, i64* %size.addr, align 8, !dbg !4937
  %shr = lshr i64 %74, 12, !dbg !4937
  store i64 %shr, i64* %size.addr, align 8, !dbg !4937
  %75 = load i64, i64* %size.addr, align 8, !dbg !4938
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4915
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4939
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4940
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !4939, !srcloc !4941
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4939
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4942
  %add.i = add i32 %79, 1, !dbg !4943
  store i32 %add.i, i32* %retval, align 4, !dbg !4944
  br label %return, !dbg !4944

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4945
  ret i32 %80, !dbg !4945
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !4946 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4907, metadata !DIExpression()), !dbg !4950
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4914, metadata !DIExpression()), !dbg !4952
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  %0 = load i64, i64* %n.addr, align 8, !dbg !4955
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4952
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4956
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4957
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !4956, !srcloc !4941
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4956
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4958
  %add.i = add i32 %4, 1, !dbg !4959
  %sub = sub i32 %add.i, 1, !dbg !4960
  ret i32 %sub, !dbg !4961
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4962 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4974
  ret i8* %0, !dbg !4975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_bpp(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4976 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4985
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !4986
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !4986
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !4984
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4987
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !4988
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !4989
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 6, !dbg !4990
  %4 = load i32, i32* %bits_per_pixel, align 8, !dbg !4990
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %4) #7, !dbg !4991
  %conv = sext i32 %call1 to i64, !dbg !4991
  ret i64 %conv, !dbg !4992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_bpp(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !4993 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %var = alloca %struct.fb_var_screeninfo, align 4
  %last = alloca i8**, align 8
  %err = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5002, metadata !DIExpression()), !dbg !5003
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5004
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5005
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5005
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5003
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo* %var, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata i8*** %last, metadata !5008, metadata !DIExpression()), !dbg !5010
  store i8** null, i8*** %last, align 8, !dbg !5010
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5011, metadata !DIExpression()), !dbg !5012
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5013
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !5014
  %3 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !5014
  %4 = bitcast %struct.fb_var_screeninfo* %var1 to i8*, !dbg !5014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 160, i1 false), !dbg !5014
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5015
  %6 = load i8**, i8*** %last, align 8, !dbg !5016
  %call2 = call i64 @simple_strtoul(i8* %5, i8** %6, i32 0) #7, !dbg !5017
  %conv = trunc i64 %call2 to i32, !dbg !5017
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 6, !dbg !5018
  store i32 %conv, i32* %bits_per_pixel, align 4, !dbg !5019
  %7 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5020
  %call3 = call i32 @activate(%struct.fb_info* %7, %struct.fb_var_screeninfo* %var) #7, !dbg !5022
  store i32 %call3, i32* %err, align 4, !dbg !5023
  %tobool = icmp ne i32 %call3, 0, !dbg !5023
  br i1 %tobool, label %if.then, label %if.end, !dbg !5024

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %err, align 4, !dbg !5025
  %conv4 = sext i32 %8 to i64, !dbg !5025
  store i64 %conv4, i64* %retval, align 8, !dbg !5026
  br label %return, !dbg !5026

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %count.addr, align 8, !dbg !5027
  store i64 %9, i64* %retval, align 8, !dbg !5028
  br label %return, !dbg !5028

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !5029
  ret i64 %10, !dbg !5029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_blank(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5030 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  ret i64 0, !dbg !5037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_blank(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5038 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %last = alloca i8*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5047, metadata !DIExpression()), !dbg !5048
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5049
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5050
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5050
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5048
  call void @llvm.dbg.declare(metadata i8** %last, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i8* null, i8** %last, align 8, !dbg !5052
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5055, metadata !DIExpression()), !dbg !5056
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5057
  %call1 = call i64 @simple_strtoul(i8* %2, i8** %last, i32 0) #7, !dbg !5058
  %conv = trunc i64 %call1 to i32, !dbg !5058
  store i32 %conv, i32* %arg, align 4, !dbg !5059
  call void @console_lock() #7, !dbg !5060
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5061
  %4 = load i32, i32* %arg, align 4, !dbg !5062
  %call2 = call i32 @fb_blank(%struct.fb_info* %3, i32 %4) #7, !dbg !5063
  store i32 %call2, i32* %err, align 4, !dbg !5064
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5065
  %6 = load i32, i32* %arg, align 4, !dbg !5066
  call void @fbcon_fb_blanked(%struct.fb_info* %5, i32 %6) #7, !dbg !5067
  call void @console_unlock() #7, !dbg !5068
  %7 = load i32, i32* %err, align 4, !dbg !5069
  %cmp = icmp slt i32 %7, 0, !dbg !5071
  br i1 %cmp, label %if.then, label %if.end, !dbg !5072

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %err, align 4, !dbg !5073
  %conv4 = sext i32 %8 to i64, !dbg !5073
  store i64 %conv4, i64* %retval, align 8, !dbg !5074
  br label %return, !dbg !5074

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %count.addr, align 8, !dbg !5075
  store i64 %9, i64* %retval, align 8, !dbg !5076
  br label %return, !dbg !5076

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !5077
  ret i64 %10, !dbg !5077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_console(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5078 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  ret i64 0, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_console(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5086 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  ret i64 0, !dbg !5095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_cursor(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5096 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  ret i64 0, !dbg !5103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_cursor(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5104 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  ret i64 0, !dbg !5113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_mode(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5114 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5119, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5123
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5124
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5124
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5122
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5125
  %mode = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 14, !dbg !5127
  %3 = load %struct.fb_videomode*, %struct.fb_videomode** %mode, align 8, !dbg !5127
  %tobool = icmp ne %struct.fb_videomode* %3, null, !dbg !5125
  br i1 %tobool, label %if.end, label %if.then, !dbg !5128

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !5129
  br label %return, !dbg !5129

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5130
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5131
  %mode1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 14, !dbg !5132
  %6 = load %struct.fb_videomode*, %struct.fb_videomode** %mode1, align 8, !dbg !5132
  %call2 = call i32 @mode_string(i8* %4, i32 0, %struct.fb_videomode* %6) #7, !dbg !5133
  %conv = sext i32 %call2 to i64, !dbg !5133
  store i64 %conv, i64* %retval, align 8, !dbg !5134
  br label %return, !dbg !5134

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5135
  ret i64 %7, !dbg !5135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_mode(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5136 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %mstr = alloca [100 x i8], align 16
  %var = alloca %struct.fb_var_screeninfo, align 4
  %modelist = alloca %struct.fb_modelist*, align 8
  %mode = alloca %struct.fb_videomode*, align 8
  %pos = alloca %struct.list_head*, align 8
  %i = alloca i64, align 8
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fb_modelist*, align 8
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5145, metadata !DIExpression()), !dbg !5146
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5147
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5148
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5148
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5146
  call void @llvm.dbg.declare(metadata [100 x i8]* %mstr, metadata !5149, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo* %var, metadata !5154, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.declare(metadata %struct.fb_modelist** %modelist, metadata !5156, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.declare(metadata %struct.fb_videomode** %mode, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !5160, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.declare(metadata i64* %i, metadata !5162, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5164, metadata !DIExpression()), !dbg !5165
  %2 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !5166
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 160, i1 false), !dbg !5166
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5167
  %modelist1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 13, !dbg !5167
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %modelist1, i32 0, i32 0, !dbg !5167
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5167
  store %struct.list_head* %4, %struct.list_head** %pos, align 8, !dbg !5167
  br label %for.cond, !dbg !5167

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !5169
  %6 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5169
  %modelist2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 13, !dbg !5169
  %cmp = icmp ne %struct.list_head* %5, %modelist2, !dbg !5169
  br i1 %cmp, label %for.body, label %for.end, !dbg !5167

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5171, metadata !DIExpression()), !dbg !5174
  %7 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !5174
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !5174
  store i8* %8, i8** %__mptr, align 8, !dbg !5174
  br label %do.body, !dbg !5174

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !5175

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !5174
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !5174
  %10 = bitcast i8* %add.ptr to %struct.fb_modelist*, !dbg !5174
  store %struct.fb_modelist* %10, %struct.fb_modelist** %tmp, align 8, !dbg !5175
  %11 = load %struct.fb_modelist*, %struct.fb_modelist** %tmp, align 8, !dbg !5174
  store %struct.fb_modelist* %11, %struct.fb_modelist** %modelist, align 8, !dbg !5177
  %12 = load %struct.fb_modelist*, %struct.fb_modelist** %modelist, align 8, !dbg !5178
  %mode3 = getelementptr inbounds %struct.fb_modelist, %struct.fb_modelist* %12, i32 0, i32 1, !dbg !5179
  store %struct.fb_videomode* %mode3, %struct.fb_videomode** %mode, align 8, !dbg !5180
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %mstr, i64 0, i64 0, !dbg !5181
  %13 = load %struct.fb_videomode*, %struct.fb_videomode** %mode, align 8, !dbg !5182
  %call4 = call i32 @mode_string(i8* %arraydecay, i32 0, %struct.fb_videomode* %13) #7, !dbg !5183
  %conv = sext i32 %call4 to i64, !dbg !5183
  store i64 %conv, i64* %i, align 8, !dbg !5184
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %mstr, i64 0, i64 0, !dbg !5185
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !5187
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !5188, metadata !DIExpression()), !dbg !5190
  %15 = load i64, i64* %count.addr, align 8, !dbg !5190
  store i64 %15, i64* %__UNIQUE_ID___x240, align 8, !dbg !5190
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !5191, metadata !DIExpression()), !dbg !5190
  %16 = load i64, i64* %i, align 8, !dbg !5190
  store i64 %16, i64* %__UNIQUE_ID___y241, align 8, !dbg !5190
  %17 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5190
  %18 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5190
  %cmp7 = icmp ugt i64 %17, %18, !dbg !5190
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5190

cond.true:                                        ; preds = %do.end
  %19 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5190
  br label %cond.end, !dbg !5190

cond.false:                                       ; preds = %do.end
  %20 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5190
  br label %cond.end, !dbg !5190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5190
  store i64 %cond, i64* %tmp6, align 8, !dbg !5190
  %21 = load i64, i64* %tmp6, align 8, !dbg !5190
  %call9 = call i32 @strncmp(i8* %arraydecay5, i8* %14, i64 %21) #7, !dbg !5192
  %cmp10 = icmp eq i32 %call9, 0, !dbg !5193
  br i1 %cmp10, label %if.then, label %if.end17, !dbg !5194

if.then:                                          ; preds = %cond.end
  %22 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5195
  %var12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 6, !dbg !5197
  %23 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !5197
  %24 = bitcast %struct.fb_var_screeninfo* %var12 to i8*, !dbg !5197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 8 %24, i64 160, i1 false), !dbg !5197
  %25 = load %struct.fb_videomode*, %struct.fb_videomode** %mode, align 8, !dbg !5198
  call void @fb_videomode_to_var(%struct.fb_var_screeninfo* %var, %struct.fb_videomode* %25) #7, !dbg !5199
  %26 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5200
  %call13 = call i32 @activate(%struct.fb_info* %26, %struct.fb_var_screeninfo* %var) #7, !dbg !5202
  store i32 %call13, i32* %err, align 4, !dbg !5203
  %tobool = icmp ne i32 %call13, 0, !dbg !5203
  br i1 %tobool, label %if.then14, label %if.end, !dbg !5204

if.then14:                                        ; preds = %if.then
  %27 = load i32, i32* %err, align 4, !dbg !5205
  %conv15 = sext i32 %27 to i64, !dbg !5205
  store i64 %conv15, i64* %retval, align 8, !dbg !5206
  br label %return, !dbg !5206

if.end:                                           ; preds = %if.then
  %28 = load %struct.fb_videomode*, %struct.fb_videomode** %mode, align 8, !dbg !5207
  %29 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5208
  %mode16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 14, !dbg !5209
  store %struct.fb_videomode* %28, %struct.fb_videomode** %mode16, align 8, !dbg !5210
  %30 = load i64, i64* %count.addr, align 8, !dbg !5211
  store i64 %30, i64* %retval, align 8, !dbg !5212
  br label %return, !dbg !5212

if.end17:                                         ; preds = %cond.end
  br label %for.inc, !dbg !5213

for.inc:                                          ; preds = %if.end17
  %31 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !5169
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0, !dbg !5169
  %32 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !5169
  store %struct.list_head* %32, %struct.list_head** %pos, align 8, !dbg !5169
  br label %for.cond, !dbg !5169, !llvm.loop !5214

for.end:                                          ; preds = %for.cond
  store i64 -22, i64* %retval, align 8, !dbg !5216
  br label %return, !dbg !5216

return:                                           ; preds = %for.end, %if.end, %if.then14
  %33 = load i64, i64* %retval, align 8, !dbg !5217
  ret i64 %33, !dbg !5217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_modes(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5218 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %i = alloca i32, align 4
  %pos = alloca %struct.list_head*, align 8
  %modelist = alloca %struct.fb_modelist*, align 8
  %mode = alloca %struct.fb_videomode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fb_modelist*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5227
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5228
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5228
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5226
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata %struct.fb_modelist** %modelist, metadata !5233, metadata !DIExpression()), !dbg !5234
  call void @llvm.dbg.declare(metadata %struct.fb_videomode** %mode, metadata !5235, metadata !DIExpression()), !dbg !5236
  store i32 0, i32* %i, align 4, !dbg !5237
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5238
  %modelist1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 13, !dbg !5238
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %modelist1, i32 0, i32 0, !dbg !5238
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5238
  store %struct.list_head* %3, %struct.list_head** %pos, align 8, !dbg !5238
  br label %for.cond, !dbg !5238

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !5240
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5240
  %modelist2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 13, !dbg !5240
  %cmp = icmp ne %struct.list_head* %4, %modelist2, !dbg !5240
  br i1 %cmp, label %for.body, label %for.end, !dbg !5238

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5242, metadata !DIExpression()), !dbg !5245
  %6 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !5245
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !5245
  store i8* %7, i8** %__mptr, align 8, !dbg !5245
  br label %do.body, !dbg !5245

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !5246

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !5245
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !5245
  %9 = bitcast i8* %add.ptr to %struct.fb_modelist*, !dbg !5245
  store %struct.fb_modelist* %9, %struct.fb_modelist** %tmp, align 8, !dbg !5246
  %10 = load %struct.fb_modelist*, %struct.fb_modelist** %tmp, align 8, !dbg !5245
  store %struct.fb_modelist* %10, %struct.fb_modelist** %modelist, align 8, !dbg !5248
  %11 = load %struct.fb_modelist*, %struct.fb_modelist** %modelist, align 8, !dbg !5249
  %mode3 = getelementptr inbounds %struct.fb_modelist, %struct.fb_modelist* %11, i32 0, i32 1, !dbg !5250
  store %struct.fb_videomode* %mode3, %struct.fb_videomode** %mode, align 8, !dbg !5251
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !5252
  %13 = load i32, i32* %i, align 4, !dbg !5253
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %mode, align 8, !dbg !5254
  %call4 = call i32 @mode_string(i8* %12, i32 %13, %struct.fb_videomode* %14) #7, !dbg !5255
  %15 = load i32, i32* %i, align 4, !dbg !5256
  %add = add i32 %15, %call4, !dbg !5256
  store i32 %add, i32* %i, align 4, !dbg !5256
  br label %for.inc, !dbg !5257

for.inc:                                          ; preds = %do.end
  %16 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !5240
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0, !dbg !5240
  %17 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !5240
  store %struct.list_head* %17, %struct.list_head** %pos, align 8, !dbg !5240
  br label %for.cond, !dbg !5240, !llvm.loop !5258

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !dbg !5260
  %conv = zext i32 %18 to i64, !dbg !5260
  ret i64 %conv, !dbg !5261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_modes(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5262 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %old_list = alloca %struct.list_head, align 8
  %i = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5271, metadata !DIExpression()), !dbg !5272
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5273
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5274
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5274
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5272
  call void @llvm.dbg.declare(metadata %struct.list_head* %old_list, metadata !5275, metadata !DIExpression()), !dbg !5276
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %old_list, i32 0, i32 0, !dbg !5276
  store %struct.list_head* %old_list, %struct.list_head** %next, align 8, !dbg !5276
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %old_list, i32 0, i32 1, !dbg !5276
  store %struct.list_head* %old_list, %struct.list_head** %prev, align 8, !dbg !5276
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5277, metadata !DIExpression()), !dbg !5278
  %2 = load i64, i64* %count.addr, align 8, !dbg !5279
  %div = udiv i64 %2, 64, !dbg !5280
  %conv = trunc i64 %div to i32, !dbg !5279
  store i32 %conv, i32* %i, align 4, !dbg !5278
  %3 = load i32, i32* %i, align 4, !dbg !5281
  %conv1 = sext i32 %3 to i64, !dbg !5281
  %mul = mul i64 %conv1, 64, !dbg !5283
  %4 = load i64, i64* %count.addr, align 8, !dbg !5284
  %cmp = icmp ne i64 %mul, %4, !dbg !5285
  br i1 %cmp, label %if.then, label %if.end, !dbg !5286

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !5287
  br label %return, !dbg !5287

if.end:                                           ; preds = %entry
  call void @console_lock() #7, !dbg !5288
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5289
  call void @lock_fb_info(%struct.fb_info* %5) #7, !dbg !5290
  %6 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5291
  %modelist = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 13, !dbg !5292
  call void @list_splice(%struct.list_head* %modelist, %struct.list_head* %old_list) #7, !dbg !5293
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5294
  %8 = bitcast i8* %7 to %struct.fb_videomode*, !dbg !5295
  %9 = load i32, i32* %i, align 4, !dbg !5296
  %10 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5297
  %modelist3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 13, !dbg !5298
  call void @fb_videomode_to_modelist(%struct.fb_videomode* %8, i32 %9, %struct.list_head* %modelist3) #7, !dbg !5299
  %11 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5300
  %call4 = call i32 @fb_new_modelist(%struct.fb_info* %11) #7, !dbg !5302
  %tobool = icmp ne i32 %call4, 0, !dbg !5302
  br i1 %tobool, label %if.then5, label %if.else, !dbg !5303

if.then5:                                         ; preds = %if.end
  %12 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5304
  %modelist6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 13, !dbg !5306
  call void @fb_destroy_modelist(%struct.list_head* %modelist6) #7, !dbg !5307
  %13 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5308
  %modelist7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 13, !dbg !5309
  call void @list_splice(%struct.list_head* %old_list, %struct.list_head* %modelist7) #7, !dbg !5310
  br label %if.end8, !dbg !5311

if.else:                                          ; preds = %if.end
  call void @fb_destroy_modelist(%struct.list_head* %old_list) #7, !dbg !5312
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %14 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5313
  call void @unlock_fb_info(%struct.fb_info* %14) #7, !dbg !5314
  call void @console_unlock() #7, !dbg !5315
  store i64 0, i64* %retval, align 8, !dbg !5316
  br label %return, !dbg !5316

return:                                           ; preds = %if.end8, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !5317
  ret i64 %15, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_pan(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5318 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5325, metadata !DIExpression()), !dbg !5326
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5327
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5328
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5328
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5326
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5329
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5330
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5331
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 4, !dbg !5332
  %4 = load i32, i32* %xoffset, align 8, !dbg !5332
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5333
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 6, !dbg !5334
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 5, !dbg !5335
  %6 = load i32, i32* %yoffset, align 4, !dbg !5335
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %4, i32 %6) #7, !dbg !5336
  %conv = sext i32 %call2 to i64, !dbg !5336
  ret i64 %conv, !dbg !5337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_pan(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5338 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %var = alloca %struct.fb_var_screeninfo, align 4
  %last = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5347, metadata !DIExpression()), !dbg !5348
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5349
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5350
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5350
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5348
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo* %var, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata i8** %last, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i8* null, i8** %last, align 8, !dbg !5354
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5355, metadata !DIExpression()), !dbg !5356
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5357
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !5358
  %3 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !5358
  %4 = bitcast %struct.fb_var_screeninfo* %var1 to i8*, !dbg !5358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 160, i1 false), !dbg !5358
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5359
  %call2 = call i64 @simple_strtoul(i8* %5, i8** %last, i32 0) #7, !dbg !5360
  %conv = trunc i64 %call2 to i32, !dbg !5360
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 4, !dbg !5361
  store i32 %conv, i32* %xoffset, align 4, !dbg !5362
  %6 = load i8*, i8** %last, align 8, !dbg !5363
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !5363
  store i8* %incdec.ptr, i8** %last, align 8, !dbg !5363
  %7 = load i8*, i8** %last, align 8, !dbg !5364
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5366
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64, !dbg !5367
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64, !dbg !5367
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5367
  %9 = load i64, i64* %count.addr, align 8, !dbg !5368
  %cmp = icmp uge i64 %sub.ptr.sub, %9, !dbg !5369
  br i1 %cmp, label %if.then, label %if.end, !dbg !5370

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !5371
  br label %return, !dbg !5371

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %last, align 8, !dbg !5372
  %call4 = call i64 @simple_strtoul(i8* %10, i8** %last, i32 0) #7, !dbg !5373
  %conv5 = trunc i64 %call4 to i32, !dbg !5373
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 5, !dbg !5374
  store i32 %conv5, i32* %yoffset, align 4, !dbg !5375
  call void @console_lock() #7, !dbg !5376
  %11 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5377
  %call6 = call i32 @fb_pan_display(%struct.fb_info* %11, %struct.fb_var_screeninfo* %var) #7, !dbg !5378
  store i32 %call6, i32* %err, align 4, !dbg !5379
  call void @console_unlock() #7, !dbg !5380
  %12 = load i32, i32* %err, align 4, !dbg !5381
  %cmp7 = icmp slt i32 %12, 0, !dbg !5383
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5384

if.then9:                                         ; preds = %if.end
  %13 = load i32, i32* %err, align 4, !dbg !5385
  %conv10 = sext i32 %13 to i64, !dbg !5385
  store i64 %conv10, i64* %retval, align 8, !dbg !5386
  br label %return, !dbg !5386

if.end11:                                         ; preds = %if.end
  %14 = load i64, i64* %count.addr, align 8, !dbg !5387
  store i64 %14, i64* %retval, align 8, !dbg !5388
  br label %return, !dbg !5388

return:                                           ; preds = %if.end11, %if.then9, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !5389
  ret i64 %15, !dbg !5389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_virtual(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5390 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5399
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5400
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5400
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5398
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5401
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5402
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5403
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5404
  %4 = load i32, i32* %xres_virtual, align 8, !dbg !5404
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5405
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 6, !dbg !5406
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 3, !dbg !5407
  %6 = load i32, i32* %yres_virtual, align 4, !dbg !5407
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %4, i32 %6) #7, !dbg !5408
  %conv = sext i32 %call2 to i64, !dbg !5408
  ret i64 %conv, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_virtual(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5410 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %var = alloca %struct.fb_var_screeninfo, align 4
  %last = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5421
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5422
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5422
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5420
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo* %var, metadata !5423, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i8** %last, metadata !5425, metadata !DIExpression()), !dbg !5426
  store i8* null, i8** %last, align 8, !dbg !5426
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5427, metadata !DIExpression()), !dbg !5428
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5429
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !5430
  %3 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !5430
  %4 = bitcast %struct.fb_var_screeninfo* %var1 to i8*, !dbg !5430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 160, i1 false), !dbg !5430
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5431
  %call2 = call i64 @simple_strtoul(i8* %5, i8** %last, i32 0) #7, !dbg !5432
  %conv = trunc i64 %call2 to i32, !dbg !5432
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5433
  store i32 %conv, i32* %xres_virtual, align 4, !dbg !5434
  %6 = load i8*, i8** %last, align 8, !dbg !5435
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !5435
  store i8* %incdec.ptr, i8** %last, align 8, !dbg !5435
  %7 = load i8*, i8** %last, align 8, !dbg !5436
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5438
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64, !dbg !5439
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64, !dbg !5439
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5439
  %9 = load i64, i64* %count.addr, align 8, !dbg !5440
  %cmp = icmp uge i64 %sub.ptr.sub, %9, !dbg !5441
  br i1 %cmp, label %if.then, label %if.end, !dbg !5442

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !5443
  br label %return, !dbg !5443

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %last, align 8, !dbg !5444
  %call4 = call i64 @simple_strtoul(i8* %10, i8** %last, i32 0) #7, !dbg !5445
  %conv5 = trunc i64 %call4 to i32, !dbg !5445
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 3, !dbg !5446
  store i32 %conv5, i32* %yres_virtual, align 4, !dbg !5447
  %11 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5448
  %call6 = call i32 @activate(%struct.fb_info* %11, %struct.fb_var_screeninfo* %var) #7, !dbg !5450
  store i32 %call6, i32* %err, align 4, !dbg !5451
  %tobool = icmp ne i32 %call6, 0, !dbg !5451
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !5452

if.then7:                                         ; preds = %if.end
  %12 = load i32, i32* %err, align 4, !dbg !5453
  %conv8 = sext i32 %12 to i64, !dbg !5453
  store i64 %conv8, i64* %retval, align 8, !dbg !5454
  br label %return, !dbg !5454

if.end9:                                          ; preds = %if.end
  %13 = load i64, i64* %count.addr, align 8, !dbg !5455
  store i64 %13, i64* %retval, align 8, !dbg !5456
  br label %return, !dbg !5456

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !5457
  ret i64 %14, !dbg !5457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_name(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5458 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5465, metadata !DIExpression()), !dbg !5466
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5467
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5468
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5468
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5466
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5469
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5470
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 7, !dbg !5471
  %id = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 0, !dbg !5472
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %id, i64 0, i64 0, !dbg !5470
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %arraydecay) #7, !dbg !5473
  %conv = sext i32 %call1 to i64, !dbg !5473
  ret i64 %conv, !dbg !5474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_stride(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5475 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5482, metadata !DIExpression()), !dbg !5483
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5484
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5485
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5485
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5483
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5486
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5487
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 7, !dbg !5488
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 9, !dbg !5489
  %4 = load i32, i32* %line_length, align 8, !dbg !5489
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %4) #7, !dbg !5490
  %conv = sext i32 %call1 to i64, !dbg !5490
  ret i64 %conv, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_rotate(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5492 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5493, metadata !DIExpression()), !dbg !5494
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5501
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5502
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5502
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5500
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5503
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5504
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5505
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 26, !dbg !5506
  %4 = load i32, i32* %rotate, align 8, !dbg !5506
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %4) #7, !dbg !5507
  %conv = sext i32 %call1 to i64, !dbg !5507
  ret i64 %conv, !dbg !5508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_rotate(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5509 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %var = alloca %struct.fb_var_screeninfo, align 4
  %last = alloca i8**, align 8
  %err = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5520
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5521
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5521
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5519
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo* %var, metadata !5522, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.declare(metadata i8*** %last, metadata !5524, metadata !DIExpression()), !dbg !5525
  store i8** null, i8*** %last, align 8, !dbg !5525
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5526, metadata !DIExpression()), !dbg !5527
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5528
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !5529
  %3 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !5529
  %4 = bitcast %struct.fb_var_screeninfo* %var1 to i8*, !dbg !5529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 160, i1 false), !dbg !5529
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5530
  %6 = load i8**, i8*** %last, align 8, !dbg !5531
  %call2 = call i64 @simple_strtoul(i8* %5, i8** %6, i32 0) #7, !dbg !5532
  %conv = trunc i64 %call2 to i32, !dbg !5532
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 26, !dbg !5533
  store i32 %conv, i32* %rotate, align 4, !dbg !5534
  %7 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5535
  %call3 = call i32 @activate(%struct.fb_info* %7, %struct.fb_var_screeninfo* %var) #7, !dbg !5537
  store i32 %call3, i32* %err, align 4, !dbg !5538
  %tobool = icmp ne i32 %call3, 0, !dbg !5538
  br i1 %tobool, label %if.then, label %if.end, !dbg !5539

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %err, align 4, !dbg !5540
  %conv4 = sext i32 %8 to i64, !dbg !5540
  store i64 %conv4, i64* %retval, align 8, !dbg !5541
  br label %return, !dbg !5541

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %count.addr, align 8, !dbg !5542
  store i64 %9, i64* %retval, align 8, !dbg !5543
  br label %return, !dbg !5543

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !5544
  ret i64 %10, !dbg !5544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_fbstate(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5545 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5552, metadata !DIExpression()), !dbg !5553
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5554
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5555
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5555
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5553
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5556
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5557
  %state = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 28, !dbg !5558
  %4 = load i32, i32* %state, align 8, !dbg !5558
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %4) #7, !dbg !5559
  %conv = sext i32 %call1 to i64, !dbg !5559
  ret i64 %conv, !dbg !5560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_fbstate(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5561 {
entry:
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %state = alloca i32, align 4
  %last = alloca i8*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5566, metadata !DIExpression()), !dbg !5567
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5570, metadata !DIExpression()), !dbg !5571
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5572
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5573
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5573
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5571
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5574, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata i8** %last, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i8* null, i8** %last, align 8, !dbg !5577
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5578
  %call1 = call i64 @simple_strtoul(i8* %2, i8** %last, i32 0) #7, !dbg !5579
  %conv = trunc i64 %call1 to i32, !dbg !5579
  store i32 %conv, i32* %state, align 4, !dbg !5580
  call void @console_lock() #7, !dbg !5581
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5582
  call void @lock_fb_info(%struct.fb_info* %3) #7, !dbg !5583
  %4 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5584
  %5 = load i32, i32* %state, align 4, !dbg !5585
  call void @fb_set_suspend(%struct.fb_info* %4, i32 %5) #7, !dbg !5586
  %6 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5587
  call void @unlock_fb_info(%struct.fb_info* %6) #7, !dbg !5588
  call void @console_unlock() #7, !dbg !5589
  %7 = load i64, i64* %count.addr, align 8, !dbg !5590
  ret i64 %7, !dbg !5591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_bl_curve(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5592 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5599, metadata !DIExpression()), !dbg !5600
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5601
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5602
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5602
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5600
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5603, metadata !DIExpression()), !dbg !5604
  store i64 0, i64* %len, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5605, metadata !DIExpression()), !dbg !5606
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5607
  %tobool = icmp ne %struct.fb_info* %2, null, !dbg !5607
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5609

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5610
  %bl_dev = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 15, !dbg !5611
  %4 = load %struct.backlight_device*, %struct.backlight_device** %bl_dev, align 8, !dbg !5611
  %tobool1 = icmp ne %struct.backlight_device* %4, null, !dbg !5610
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5612

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -19, i64* %retval, align 8, !dbg !5613
  br label %return, !dbg !5613

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5614
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 16, !dbg !5615
  call void @mutex_lock(%struct.mutex* %bl_curve_mutex) #7, !dbg !5616
  store i32 0, i32* %i, align 4, !dbg !5617
  br label %for.cond, !dbg !5619

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !5620
  %cmp = icmp ult i32 %6, 128, !dbg !5622
  br i1 %cmp, label %for.body, label %for.end, !dbg !5623

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5624
  %8 = load i64, i64* %len, align 8, !dbg !5625
  %arrayidx = getelementptr i8, i8* %7, i64 %8, !dbg !5624
  %9 = load i64, i64* %len, align 8, !dbg !5626
  %sub = sub i64 4096, %9, !dbg !5627
  %10 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5628
  %bl_curve = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 17, !dbg !5629
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %bl_curve, i64 0, i64 0, !dbg !5628
  %11 = load i32, i32* %i, align 4, !dbg !5630
  %idx.ext = zext i32 %11 to i64, !dbg !5631
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !5631
  %call2 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx, i64 %sub, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %add.ptr) #7, !dbg !5632
  %conv = sext i32 %call2 to i64, !dbg !5632
  %12 = load i64, i64* %len, align 8, !dbg !5633
  %add = add i64 %12, %conv, !dbg !5633
  store i64 %add, i64* %len, align 8, !dbg !5633
  br label %for.inc, !dbg !5634

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !5635
  %add3 = add i32 %13, 8, !dbg !5635
  store i32 %add3, i32* %i, align 4, !dbg !5635
  br label %for.cond, !dbg !5636, !llvm.loop !5637

for.end:                                          ; preds = %for.cond
  %14 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5639
  %bl_curve_mutex4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 16, !dbg !5640
  call void @mutex_unlock(%struct.mutex* %bl_curve_mutex4) #7, !dbg !5641
  %15 = load i64, i64* %len, align 8, !dbg !5642
  store i64 %15, i64* %retval, align 8, !dbg !5643
  br label %return, !dbg !5643

return:                                           ; preds = %for.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5644
  ret i64 %16, !dbg !5644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_bl_curve(%struct.device* %device, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5645 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fb_info = alloca %struct.fb_info*, align 8
  %tmp_curve = alloca [128 x i8], align 16
  %i = alloca i32, align 4
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5652, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info, metadata !5654, metadata !DIExpression()), !dbg !5655
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5656
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5657
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5657
  store %struct.fb_info* %1, %struct.fb_info** %fb_info, align 8, !dbg !5655
  call void @llvm.dbg.declare(metadata [128 x i8]* %tmp_curve, metadata !5658, metadata !DIExpression()), !dbg !5659
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5660, metadata !DIExpression()), !dbg !5661
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5662
  %tobool = icmp ne %struct.fb_info* %2, null, !dbg !5662
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5664

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5665
  %bl_dev = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 15, !dbg !5666
  %4 = load %struct.backlight_device*, %struct.backlight_device** %bl_dev, align 8, !dbg !5666
  %tobool1 = icmp ne %struct.backlight_device* %4, null, !dbg !5665
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5667

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -19, i64* %retval, align 8, !dbg !5668
  br label %return, !dbg !5668

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* %count.addr, align 8, !dbg !5669
  %cmp = icmp ne i64 %5, 384, !dbg !5671
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5672

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5673
  br label %return, !dbg !5673

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5674
  br label %for.cond, !dbg !5676

for.cond:                                         ; preds = %for.inc, %if.end3
  %6 = load i32, i32* %i, align 4, !dbg !5677
  %cmp4 = icmp ult i32 %6, 16, !dbg !5679
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5680

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5681
  %8 = load i32, i32* %i, align 4, !dbg !5683
  %mul = mul i32 %8, 24, !dbg !5684
  %idxprom = zext i32 %mul to i64, !dbg !5681
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !5681
  %9 = load i32, i32* %i, align 4, !dbg !5685
  %mul5 = mul i32 %9, 8, !dbg !5686
  %add = add i32 %mul5, 0, !dbg !5687
  %idxprom6 = zext i32 %add to i64, !dbg !5688
  %arrayidx7 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom6, !dbg !5688
  %10 = load i32, i32* %i, align 4, !dbg !5689
  %mul8 = mul i32 %10, 8, !dbg !5690
  %add9 = add i32 %mul8, 1, !dbg !5691
  %idxprom10 = zext i32 %add9 to i64, !dbg !5692
  %arrayidx11 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom10, !dbg !5692
  %11 = load i32, i32* %i, align 4, !dbg !5693
  %mul12 = mul i32 %11, 8, !dbg !5694
  %add13 = add i32 %mul12, 2, !dbg !5695
  %idxprom14 = zext i32 %add13 to i64, !dbg !5696
  %arrayidx15 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom14, !dbg !5696
  %12 = load i32, i32* %i, align 4, !dbg !5697
  %mul16 = mul i32 %12, 8, !dbg !5698
  %add17 = add i32 %mul16, 3, !dbg !5699
  %idxprom18 = zext i32 %add17 to i64, !dbg !5700
  %arrayidx19 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom18, !dbg !5700
  %13 = load i32, i32* %i, align 4, !dbg !5701
  %mul20 = mul i32 %13, 8, !dbg !5702
  %add21 = add i32 %mul20, 4, !dbg !5703
  %idxprom22 = zext i32 %add21 to i64, !dbg !5704
  %arrayidx23 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom22, !dbg !5704
  %14 = load i32, i32* %i, align 4, !dbg !5705
  %mul24 = mul i32 %14, 8, !dbg !5706
  %add25 = add i32 %mul24, 5, !dbg !5707
  %idxprom26 = zext i32 %add25 to i64, !dbg !5708
  %arrayidx27 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom26, !dbg !5708
  %15 = load i32, i32* %i, align 4, !dbg !5709
  %mul28 = mul i32 %15, 8, !dbg !5710
  %add29 = add i32 %mul28, 6, !dbg !5711
  %idxprom30 = zext i32 %add29 to i64, !dbg !5712
  %arrayidx31 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom30, !dbg !5712
  %16 = load i32, i32* %i, align 4, !dbg !5713
  %mul32 = mul i32 %16, 8, !dbg !5714
  %add33 = add i32 %mul32, 7, !dbg !5715
  %idxprom34 = zext i32 %add33 to i64, !dbg !5716
  %arrayidx35 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom34, !dbg !5716
  %call36 = call i32 (i8*, i8*, ...) @sscanf(i8* %arrayidx, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0), i8* %arrayidx7, i8* %arrayidx11, i8* %arrayidx15, i8* %arrayidx19, i8* %arrayidx23, i8* %arrayidx27, i8* %arrayidx31, i8* %arrayidx35) #7, !dbg !5717
  %cmp37 = icmp ne i32 %call36, 8, !dbg !5718
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !5719

if.then38:                                        ; preds = %for.body
  store i64 -22, i64* %retval, align 8, !dbg !5720
  br label %return, !dbg !5720

if.end39:                                         ; preds = %for.body
  br label %for.inc, !dbg !5721

for.inc:                                          ; preds = %if.end39
  %17 = load i32, i32* %i, align 4, !dbg !5722
  %inc = add i32 %17, 1, !dbg !5722
  store i32 %inc, i32* %i, align 4, !dbg !5722
  br label %for.cond, !dbg !5723, !llvm.loop !5724

for.end:                                          ; preds = %for.cond
  %18 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5726
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 16, !dbg !5727
  call void @mutex_lock(%struct.mutex* %bl_curve_mutex) #7, !dbg !5728
  store i32 0, i32* %i, align 4, !dbg !5729
  br label %for.cond40, !dbg !5731

for.cond40:                                       ; preds = %for.inc47, %for.end
  %19 = load i32, i32* %i, align 4, !dbg !5732
  %cmp41 = icmp ult i32 %19, 128, !dbg !5734
  br i1 %cmp41, label %for.body42, label %for.end49, !dbg !5735

for.body42:                                       ; preds = %for.cond40
  %20 = load i32, i32* %i, align 4, !dbg !5736
  %idxprom43 = zext i32 %20 to i64, !dbg !5737
  %arrayidx44 = getelementptr [128 x i8], [128 x i8]* %tmp_curve, i64 0, i64 %idxprom43, !dbg !5737
  %21 = load i8, i8* %arrayidx44, align 1, !dbg !5737
  %22 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5738
  %bl_curve = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 17, !dbg !5739
  %23 = load i32, i32* %i, align 4, !dbg !5740
  %idxprom45 = zext i32 %23 to i64, !dbg !5738
  %arrayidx46 = getelementptr [128 x i8], [128 x i8]* %bl_curve, i64 0, i64 %idxprom45, !dbg !5738
  store i8 %21, i8* %arrayidx46, align 1, !dbg !5741
  br label %for.inc47, !dbg !5738

for.inc47:                                        ; preds = %for.body42
  %24 = load i32, i32* %i, align 4, !dbg !5742
  %inc48 = add i32 %24, 1, !dbg !5742
  store i32 %inc48, i32* %i, align 4, !dbg !5742
  br label %for.cond40, !dbg !5743, !llvm.loop !5744

for.end49:                                        ; preds = %for.cond40
  %25 = load %struct.fb_info*, %struct.fb_info** %fb_info, align 8, !dbg !5746
  %bl_curve_mutex50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 16, !dbg !5747
  call void @mutex_unlock(%struct.mutex* %bl_curve_mutex50) #7, !dbg !5748
  %26 = load i64, i64* %count.addr, align 8, !dbg !5749
  store i64 %26, i64* %retval, align 8, !dbg !5750
  br label %return, !dbg !5750

return:                                           ; preds = %for.end49, %if.then38, %if.then2, %if.then
  %27 = load i64, i64* %retval, align 8, !dbg !5751
  ret i64 %27, !dbg !5751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5752 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5757
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5758
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5758
  ret i8* %1, !dbg !5759
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @activate(%struct.fb_info* %fb_info, %struct.fb_var_screeninfo* %var) #0 !dbg !5760 {
entry:
  %retval = alloca i32, align 4
  %fb_info.addr = alloca %struct.fb_info*, align 8
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %err = alloca i32, align 4
  store %struct.fb_info* %fb_info, %struct.fb_info** %fb_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %fb_info.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5767, metadata !DIExpression()), !dbg !5768
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5769
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 13, !dbg !5770
  %1 = load i32, i32* %activate, align 4, !dbg !5771
  %or = or i32 %1, 128, !dbg !5771
  store i32 %or, i32* %activate, align 4, !dbg !5771
  call void @console_lock() #7, !dbg !5772
  %2 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !5773
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5774
  %call = call i32 @fb_set_var(%struct.fb_info* %2, %struct.fb_var_screeninfo* %3) #7, !dbg !5775
  store i32 %call, i32* %err, align 4, !dbg !5776
  %4 = load i32, i32* %err, align 4, !dbg !5777
  %tobool = icmp ne i32 %4, 0, !dbg !5777
  br i1 %tobool, label %if.end, label %if.then, !dbg !5779

if.then:                                          ; preds = %entry
  %5 = load %struct.fb_info*, %struct.fb_info** %fb_info.addr, align 8, !dbg !5780
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5781
  %activate1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 13, !dbg !5782
  %7 = load i32, i32* %activate1, align 4, !dbg !5782
  %and = and i32 %7, 64, !dbg !5783
  %tobool2 = icmp ne i32 %and, 0, !dbg !5781
  call void @fbcon_update_vcs(%struct.fb_info* %5, i1 zeroext %tobool2) #7, !dbg !5784
  br label %if.end, !dbg !5784

if.end:                                           ; preds = %if.then, %entry
  call void @console_unlock() #7, !dbg !5785
  %8 = load i32, i32* %err, align 4, !dbg !5786
  %tobool3 = icmp ne i32 %8, 0, !dbg !5786
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5788

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %err, align 4, !dbg !5789
  store i32 %9, i32* %retval, align 4, !dbg !5790
  br label %return, !dbg !5790

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5791
  br label %return, !dbg !5791

return:                                           ; preds = %if.end5, %if.then4
  %10 = load i32, i32* %retval, align 4, !dbg !5792
  ret i32 %10, !dbg !5792
}

; Function Attrs: noredzone
declare dso_local void @console_lock() #2

; Function Attrs: noredzone
declare dso_local i32 @fb_set_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #2

; Function Attrs: noredzone
declare dso_local void @fbcon_update_vcs(%struct.fb_info*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @console_unlock() #2

; Function Attrs: noredzone
declare dso_local i32 @fb_blank(%struct.fb_info*, i32) #2

; Function Attrs: noredzone
declare dso_local void @fbcon_fb_blanked(%struct.fb_info*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mode_string(i8* %buf, i32 %offset, %struct.fb_videomode* %mode) #0 !dbg !5793 {
entry:
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %mode.addr = alloca %struct.fb_videomode*, align 8
  %m = alloca i8, align 1
  %v = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  store %struct.fb_videomode* %mode, %struct.fb_videomode** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_videomode** %mode.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  call void @llvm.dbg.declare(metadata i8* %m, metadata !5802, metadata !DIExpression()), !dbg !5803
  store i8 85, i8* %m, align 1, !dbg !5803
  call void @llvm.dbg.declare(metadata i8* %v, metadata !5804, metadata !DIExpression()), !dbg !5805
  store i8 112, i8* %v, align 1, !dbg !5805
  %0 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5806
  %flag = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %0, i32 0, i32 13, !dbg !5808
  %1 = load i32, i32* %flag, align 8, !dbg !5808
  %and = and i32 %1, 1, !dbg !5809
  %tobool = icmp ne i32 %and, 0, !dbg !5809
  br i1 %tobool, label %if.then, label %if.end, !dbg !5810

if.then:                                          ; preds = %entry
  store i8 68, i8* %m, align 1, !dbg !5811
  br label %if.end, !dbg !5812

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5813
  %flag1 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %2, i32 0, i32 13, !dbg !5815
  %3 = load i32, i32* %flag1, align 8, !dbg !5815
  %and2 = and i32 %3, 4, !dbg !5816
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5816
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5817

if.then4:                                         ; preds = %if.end
  store i8 86, i8* %m, align 1, !dbg !5818
  br label %if.end5, !dbg !5819

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5820
  %flag6 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %4, i32 0, i32 13, !dbg !5822
  %5 = load i32, i32* %flag6, align 8, !dbg !5822
  %and7 = and i32 %5, 2, !dbg !5823
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5823
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5824

if.then9:                                         ; preds = %if.end5
  store i8 83, i8* %m, align 1, !dbg !5825
  br label %if.end10, !dbg !5826

if.end10:                                         ; preds = %if.then9, %if.end5
  %6 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5827
  %vmode = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %6, i32 0, i32 12, !dbg !5829
  %7 = load i32, i32* %vmode, align 4, !dbg !5829
  %and11 = and i32 %7, 1, !dbg !5830
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5830
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5831

if.then13:                                        ; preds = %if.end10
  store i8 105, i8* %v, align 1, !dbg !5832
  br label %if.end14, !dbg !5833

if.end14:                                         ; preds = %if.then13, %if.end10
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5834
  %vmode15 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 12, !dbg !5836
  %9 = load i32, i32* %vmode15, align 4, !dbg !5836
  %and16 = and i32 %9, 2, !dbg !5837
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5837
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5838

if.then18:                                        ; preds = %if.end14
  store i8 100, i8* %v, align 1, !dbg !5839
  br label %if.end19, !dbg !5840

if.end19:                                         ; preds = %if.then18, %if.end14
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !5841
  %11 = load i32, i32* %offset.addr, align 4, !dbg !5842
  %idxprom = zext i32 %11 to i64, !dbg !5841
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom, !dbg !5841
  %12 = load i32, i32* %offset.addr, align 4, !dbg !5843
  %conv = zext i32 %12 to i64, !dbg !5843
  %sub = sub i64 4096, %conv, !dbg !5844
  %13 = load i8, i8* %m, align 1, !dbg !5845
  %conv20 = sext i8 %13 to i32, !dbg !5845
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5846
  %xres = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %14, i32 0, i32 2, !dbg !5847
  %15 = load i32, i32* %xres, align 4, !dbg !5847
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5848
  %yres = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %16, i32 0, i32 3, !dbg !5849
  %17 = load i32, i32* %yres, align 8, !dbg !5849
  %18 = load i8, i8* %v, align 1, !dbg !5850
  %conv21 = sext i8 %18 to i32, !dbg !5850
  %19 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !5851
  %refresh = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %19, i32 0, i32 1, !dbg !5852
  %20 = load i32, i32* %refresh, align 8, !dbg !5852
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx, i64 %sub, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %conv20, i32 %15, i32 %17, i32 %conv21, i32 %20) #7, !dbg !5853
  ret i32 %call, !dbg !5854
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lock_fb_info(%struct.fb_info* %info) #0 !dbg !5855 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5858
  %lock = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 4, !dbg !5859
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !5860
  ret void, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_splice(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !5862 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5872
  %call = call i32 @list_empty(%struct.list_head* %0) #7, !dbg !5874
  %tobool = icmp ne i32 %call, 0, !dbg !5874
  br i1 %tobool, label %if.end, label %if.then, !dbg !5875

if.then:                                          ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5876
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5877
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5878
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5879
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5879
  call void @__list_splice(%struct.list_head* %1, %struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5880
  br label %if.end, !dbg !5880

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5881
}

; Function Attrs: noredzone
declare dso_local void @fb_videomode_to_modelist(%struct.fb_videomode*, i32, %struct.list_head*) #2

; Function Attrs: noredzone
declare dso_local i32 @fb_new_modelist(%struct.fb_info*) #2

; Function Attrs: noredzone
declare dso_local void @fb_destroy_modelist(%struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unlock_fb_info(%struct.fb_info* %info) #0 !dbg !5882 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5885
  %lock = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 4, !dbg !5886
  call void @mutex_unlock(%struct.mutex* %lock) #7, !dbg !5887
  ret void, !dbg !5888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5889 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  br label %do.body, !dbg !5894

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5896

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5894
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5894
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5894
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5896
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5894
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5898
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5899
  %conv = zext i1 %cmp to i32, !dbg !5899
  ret i32 %conv, !dbg !5900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_splice(%struct.list_head* %list, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5901 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %first = alloca %struct.list_head*, align 8
  %last = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5908, metadata !DIExpression()), !dbg !5909
  call void @llvm.dbg.declare(metadata %struct.list_head** %first, metadata !5910, metadata !DIExpression()), !dbg !5911
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5912
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5913
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !5913
  store %struct.list_head* %1, %struct.list_head** %first, align 8, !dbg !5911
  call void @llvm.dbg.declare(metadata %struct.list_head** %last, metadata !5914, metadata !DIExpression()), !dbg !5915
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5916
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5917
  %3 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !5917
  store %struct.list_head* %3, %struct.list_head** %last, align 8, !dbg !5915
  %4 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5918
  %5 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !5919
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !5920
  store %struct.list_head* %4, %struct.list_head** %prev3, align 8, !dbg !5921
  %6 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !5922
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5923
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0, !dbg !5924
  store %struct.list_head* %6, %struct.list_head** %next4, align 8, !dbg !5925
  %8 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5926
  %9 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !5927
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !5928
  store %struct.list_head* %8, %struct.list_head** %next5, align 8, !dbg !5929
  %10 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !5930
  %11 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5931
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !5932
  store %struct.list_head* %10, %struct.list_head** %prev6, align 8, !dbg !5933
  ret void, !dbg !5934
}

; Function Attrs: noredzone
declare dso_local i32 @fb_pan_display(%struct.fb_info*, %struct.fb_var_screeninfo*) #2

; Function Attrs: noredzone
declare dso_local void @fb_set_suspend(%struct.fb_info*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!4350}
!llvm.module.flags = !{!4388, !4389, !4390, !4391}
!llvm.ident = !{!4392}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 61, type: !706, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "framebuffer_alloc", scope: !3, file: !3, line: 36, type: !4, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!3 = !DIFile(filename: "drivers/video/fbdev/core/fbsysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !387, !3506}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !8, line: 437, size: 8128, elements: !9)
!8 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !17, !18, !19, !20, !58, !59, !102, !130, !196, !208, !228, !229, !239, !240, !241, !4095, !4096, !4098, !4105, !4120, !4248, !4249, !4250, !4251, !4327, !4332, !4333, !4334, !4335, !4336, !4337, !4349}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !7, file: !8, line: 438, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !12, line: 168, baseType: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 166, size: 32, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !13, file: !12, line: 167, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !8, line: 439, baseType: !16, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !8, line: 440, baseType: !16, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !7, file: !8, line: 445, baseType: !16, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 446, baseType: !21, size: 192, offset: 128)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !22, line: 53, size: 192, elements: !23)
!22 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !36, !52}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !21, file: !22, line: 54, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !26, line: 13, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !12, line: 175, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 173, size: 64, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !28, file: !12, line: 174, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !32, line: 22, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !34, line: 30, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !21, file: !22, line: 55, baseType: !37, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !38, line: 83, baseType: !39)
!38 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !38, line: 71, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !38, line: 72, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !38, line: 72, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !42, file: !38, line: 73, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !38, line: 20, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !45, file: !38, line: 21, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !49, line: 25, baseType: !50)
!49 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 25, elements: !51)
!51 = !{}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !21, file: !22, line: 59, baseType: !53, size: 128, offset: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !12, line: 178, size: 128, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !12, line: 179, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !53, file: !12, line: 179, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !7, file: !8, line: 447, baseType: !21, size: 192, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !7, file: !8, line: 448, baseType: !60, size: 1280, offset: 512)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !61, line: 242, size: 1280, elements: !62)
!61 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !66, !67, !68, !69, !70, !71, !72, !73, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !60, file: !61, line: 243, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !65)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !60, file: !61, line: 244, baseType: !64, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !60, file: !61, line: 245, baseType: !64, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !60, file: !61, line: 246, baseType: !64, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !60, file: !61, line: 247, baseType: !64, size: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !60, file: !61, line: 248, baseType: !64, size: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !60, file: !61, line: 250, baseType: !64, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !60, file: !61, line: 251, baseType: !64, size: 32, offset: 224)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !60, file: !61, line: 253, baseType: !74, size: 96, offset: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !61, line: 188, size: 96, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !74, file: !61, line: 189, baseType: !64, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !61, line: 190, baseType: !64, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !74, file: !61, line: 191, baseType: !64, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !60, file: !61, line: 254, baseType: !74, size: 96, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !60, file: !61, line: 255, baseType: !74, size: 96, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !60, file: !61, line: 256, baseType: !74, size: 96, offset: 544)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !60, file: !61, line: 258, baseType: !64, size: 32, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !60, file: !61, line: 260, baseType: !64, size: 32, offset: 672)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !60, file: !61, line: 262, baseType: !64, size: 32, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !60, file: !61, line: 263, baseType: !64, size: 32, offset: 736)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !60, file: !61, line: 265, baseType: !64, size: 32, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !60, file: !61, line: 268, baseType: !64, size: 32, offset: 800)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !60, file: !61, line: 269, baseType: !64, size: 32, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !60, file: !61, line: 270, baseType: !64, size: 32, offset: 864)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !60, file: !61, line: 271, baseType: !64, size: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !60, file: !61, line: 272, baseType: !64, size: 32, offset: 928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !60, file: !61, line: 273, baseType: !64, size: 32, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !60, file: !61, line: 274, baseType: !64, size: 32, offset: 992)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !60, file: !61, line: 275, baseType: !64, size: 32, offset: 1024)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !60, file: !61, line: 276, baseType: !64, size: 32, offset: 1056)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !60, file: !61, line: 277, baseType: !64, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !60, file: !61, line: 278, baseType: !64, size: 32, offset: 1120)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !60, file: !61, line: 279, baseType: !99, size: 128, offset: 1152)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !7, file: !8, line: 449, baseType: !103, size: 640, offset: 1792)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !61, line: 157, size: 640, elements: !104)
!104 = !{!105, !110, !112, !113, !114, !115, !116, !119, !120, !121, !122, !123, !124, !125, !126}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !103, file: !61, line: 158, baseType: !106, size: 128)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !108)
!107 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!108 = !{!109}
!109 = !DISubrange(count: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !103, file: !61, line: 159, baseType: !111, size: 64, offset: 128)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !103, file: !61, line: 161, baseType: !64, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !61, line: 162, baseType: !64, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !103, file: !61, line: 163, baseType: !64, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !103, file: !61, line: 164, baseType: !64, size: 32, offset: 288)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !103, file: !61, line: 165, baseType: !117, size: 16, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !118)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !103, file: !61, line: 166, baseType: !117, size: 16, offset: 336)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !103, file: !61, line: 167, baseType: !117, size: 16, offset: 352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !103, file: !61, line: 168, baseType: !64, size: 32, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !103, file: !61, line: 169, baseType: !111, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !103, file: !61, line: 171, baseType: !64, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !103, file: !61, line: 172, baseType: !64, size: 32, offset: 544)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !103, file: !61, line: 174, baseType: !117, size: 16, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !103, file: !61, line: 175, baseType: !127, size: 32, offset: 592)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 32, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 2)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !7, file: !8, line: 450, baseType: !131, size: 1152, offset: 2432)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !8, line: 63, size: 1152, elements: !132)
!132 = !{!133, !144, !165, !169, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !131, file: !8, line: 64, baseType: !134, size: 256)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !8, line: 52, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !134, file: !8, line: 53, baseType: !64, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !134, file: !8, line: 54, baseType: !64, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !134, file: !8, line: 55, baseType: !64, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !134, file: !8, line: 56, baseType: !64, size: 32, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !134, file: !8, line: 57, baseType: !64, size: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !134, file: !8, line: 58, baseType: !64, size: 32, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !134, file: !8, line: 59, baseType: !64, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !134, file: !8, line: 60, baseType: !64, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !131, file: !8, line: 65, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !8, line: 766, size: 512, elements: !147)
!147 = !{!148, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !8, line: 767, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !146, file: !8, line: 768, baseType: !152, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !146, file: !8, line: 769, baseType: !152, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !146, file: !8, line: 770, baseType: !152, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !146, file: !8, line: 771, baseType: !152, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !146, file: !8, line: 772, baseType: !152, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !146, file: !8, line: 773, baseType: !152, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !146, file: !8, line: 774, baseType: !152, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !146, file: !8, line: 775, baseType: !152, size: 32, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !146, file: !8, line: 776, baseType: !152, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !146, file: !8, line: 777, baseType: !152, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !146, file: !8, line: 778, baseType: !152, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !146, file: !8, line: 779, baseType: !152, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !146, file: !8, line: 780, baseType: !152, size: 32, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !131, file: !8, line: 66, baseType: !166, size: 32, offset: 320)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 32, elements: !100)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !168)
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !131, file: !8, line: 67, baseType: !170, size: 112, offset: 352)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 112, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 14)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !131, file: !8, line: 68, baseType: !170, size: 112, offset: 464)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !131, file: !8, line: 69, baseType: !170, size: 112, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !131, file: !8, line: 70, baseType: !64, size: 32, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !131, file: !8, line: 71, baseType: !64, size: 32, offset: 736)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !131, file: !8, line: 72, baseType: !64, size: 32, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !131, file: !8, line: 73, baseType: !64, size: 32, offset: 800)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !131, file: !8, line: 74, baseType: !64, size: 32, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !131, file: !8, line: 75, baseType: !64, size: 32, offset: 864)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !131, file: !8, line: 76, baseType: !64, size: 32, offset: 896)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !131, file: !8, line: 77, baseType: !64, size: 32, offset: 928)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !131, file: !8, line: 78, baseType: !64, size: 32, offset: 960)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !131, file: !8, line: 79, baseType: !117, size: 16, offset: 992)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !131, file: !8, line: 80, baseType: !117, size: 16, offset: 1008)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !131, file: !8, line: 81, baseType: !117, size: 16, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !131, file: !8, line: 82, baseType: !117, size: 16, offset: 1040)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !131, file: !8, line: 83, baseType: !117, size: 16, offset: 1056)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !131, file: !8, line: 84, baseType: !117, size: 16, offset: 1072)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !131, file: !8, line: 85, baseType: !117, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !131, file: !8, line: 86, baseType: !117, size: 16, offset: 1104)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !8, line: 87, baseType: !167, size: 8, offset: 1120)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !131, file: !8, line: 88, baseType: !167, size: 8, offset: 1128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !131, file: !8, line: 89, baseType: !167, size: 8, offset: 1136)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !131, file: !8, line: 90, baseType: !167, size: 8, offset: 1144)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !7, file: !8, line: 451, baseType: !197, size: 256, offset: 3584)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !198, line: 102, size: 256, elements: !199)
!198 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !197, file: !198, line: 103, baseType: !25, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !197, file: !198, line: 104, baseType: !53, size: 128, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !197, file: !198, line: 105, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !198, line: 21, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !7, file: !8, line: 452, baseType: !209, size: 448, offset: 3840)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !8, line: 185, size: 448, elements: !210)
!210 = !{!211, !214, !215, !216, !217, !218, !219, !220, !221, !222, !227}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !209, file: !8, line: 186, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !167)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !8, line: 187, baseType: !152, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !209, file: !8, line: 188, baseType: !152, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !209, file: !8, line: 189, baseType: !152, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !209, file: !8, line: 190, baseType: !152, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !209, file: !8, line: 191, baseType: !152, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !8, line: 192, baseType: !152, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !209, file: !8, line: 193, baseType: !152, size: 32, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !209, file: !8, line: 194, baseType: !152, size: 32, offset: 288)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !209, file: !8, line: 198, baseType: !223, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !6, !226, !226, !65}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !209, file: !8, line: 199, baseType: !223, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !7, file: !8, line: 453, baseType: !209, size: 448, offset: 4288)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !7, file: !8, line: 454, baseType: !230, size: 320, offset: 4736)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !61, line: 282, size: 320, elements: !231)
!231 = !{!232, !233, !234, !236, !237, !238}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !230, file: !61, line: 283, baseType: !64, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !230, file: !61, line: 284, baseType: !64, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !230, file: !61, line: 285, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !230, file: !61, line: 286, baseType: !235, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !230, file: !61, line: 287, baseType: !235, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !230, file: !61, line: 288, baseType: !235, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !7, file: !8, line: 455, baseType: !53, size: 128, offset: 5056)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !8, line: 456, baseType: !145, size: 64, offset: 5184)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !7, file: !8, line: 462, baseType: !242, size: 64, offset: 5248)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !244, line: 280, size: 6912, elements: !245)
!244 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !267, !268, !269, !284, !296, !297, !4092, !4094}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !243, file: !244, line: 284, baseType: !247, size: 224)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !244, line: 182, size: 224, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !260, !261}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !247, file: !244, line: 194, baseType: !16, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !247, file: !244, line: 203, baseType: !16, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !247, file: !244, line: 219, baseType: !16, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !247, file: !244, line: 238, baseType: !16, size: 32, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !244, line: 249, baseType: !254, size: 32, offset: 128)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !244, line: 40, baseType: !65, size: 32, elements: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!257 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!258 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!259 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !244, line: 264, baseType: !65, size: 32, offset: 160)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !247, file: !244, line: 272, baseType: !262, size: 32, offset: 192)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !244, line: 90, baseType: !65, size: 32, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!265 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!266 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !243, file: !244, line: 294, baseType: !21, size: 192, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !243, file: !244, line: 303, baseType: !21, size: 192, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !243, file: !244, line: 312, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !244, line: 120, size: 256, elements: !273)
!273 = !{!274, !275, !279, !280}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !272, file: !244, line: 128, baseType: !65, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !272, file: !244, line: 146, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!16, !242}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !272, file: !244, line: 160, baseType: !276, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !272, file: !244, line: 174, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!16, !242, !6}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !243, file: !244, line: 317, baseType: !285, size: 192, offset: 704)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !286, line: 54, size: 192, elements: !287)
!286 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !285, file: !286, line: 55, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !286, line: 51, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!16, !293, !111, !226}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !286, line: 56, baseType: !293, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !285, file: !286, line: 57, baseType: !16, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !243, file: !244, line: 322, baseType: !53, size: 128, offset: 896)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !243, file: !244, line: 327, baseType: !298, size: 5568, offset: 1024)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !299, line: 461, size: 5568, elements: !300)
!299 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!300 = !{!301, !3505, !3507, !3510, !3511, !3563, !3660, !3661, !3662, !3663, !3664, !3679, !3797, !3810, !4019, !4020, !4024, !4026, !4027, !4028, !4032, !4038, !4039, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4080, !4081, !4082, !4085, !4088, !4089, !4090, !4091}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !298, file: !299, line: 462, baseType: !302, size: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !303, line: 64, size: 512, elements: !304)
!303 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !306, !307, !309, !354, !3365, !3499, !3500, !3501, !3502, !3503, !3504}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 65, baseType: !149, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !302, file: !303, line: 66, baseType: !53, size: 128, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !302, file: !303, line: 67, baseType: !308, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !302, file: !303, line: 68, baseType: !310, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !303, line: 192, size: 704, elements: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !311, file: !303, line: 193, baseType: !53, size: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !311, file: !303, line: 194, baseType: !37, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !311, file: !303, line: 195, baseType: !302, size: 512, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !311, file: !303, line: 196, baseType: !317, size: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !303, line: 156, size: 192, elements: !320)
!320 = !{!321, !326, !331}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !319, file: !303, line: 157, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!16, !310, !308}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !303, line: 158, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!149, !310, !308}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !319, file: !303, line: 159, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!16, !310, !308, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !303, line: 148, size: 20736, elements: !338)
!338 = !{!339, !344, !348, !349, !353}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !337, file: !303, line: 149, baseType: !340, size: 192)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 192, elements: !342)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!342 = !{!343}
!343 = !DISubrange(count: 3)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !337, file: !303, line: 150, baseType: !345, size: 4096, offset: 192)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 4096, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !337, file: !303, line: 151, baseType: !16, size: 32, offset: 4288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !337, file: !303, line: 152, baseType: !350, size: 16384, offset: 4320)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 16384, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 2048)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !337, file: !303, line: 153, baseType: !16, size: 32, offset: 20704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !302, file: !303, line: 69, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !303, line: 138, size: 448, elements: !357)
!357 = !{!358, !362, !390, !392, !3321, !3355, !3359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !356, file: !303, line: 139, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !308}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !356, file: !303, line: 140, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !366, line: 230, size: 128, elements: !367)
!366 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368, !383}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !365, file: !366, line: 231, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !308, !377, !341}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !12, line: 60, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !374, line: 73, baseType: !375)
!374 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !374, line: 15, baseType: !376)
!376 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !366, line: 30, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !366, line: 31, baseType: !149, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !378, file: !366, line: 32, baseType: !382, size: 16, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !12, line: 19, baseType: !118)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !365, file: !366, line: 232, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!372, !308, !377, !149, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 55, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !374, line: 72, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !374, line: 16, baseType: !111)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !356, file: !303, line: 141, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !356, file: !303, line: 142, baseType: !393, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !366, line: 84, size: 320, elements: !397)
!397 = !{!398, !399, !403, !3318, !3319}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !366, line: 85, baseType: !149, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !396, file: !366, line: 86, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!382, !308, !377, !16}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !396, file: !366, line: 88, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!382, !308, !407, !16}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !366, line: 168, size: 448, elements: !409)
!409 = !{!410, !411, !412, !413, !3313, !3314}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !408, file: !366, line: 169, baseType: !378, size: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !408, file: !366, line: 170, baseType: !387, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !408, file: !366, line: 171, baseType: !226, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !408, file: !366, line: 172, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!372, !417, !308, !407, !341, !592, !387}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !419, line: 916, size: 1856, align: 32, elements: !420)
!419 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!420 = !{!421, !439, !3263, !3264, !3265, !3266, !3275, !3276, !3277, !3278, !3279, !3280, !3296, !3297, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !418, file: !419, line: 920, baseType: !422, size: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !419, line: 917, size: 128, elements: !423)
!423 = !{!424, !430}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !422, file: !419, line: 918, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !426, line: 58, size: 64, elements: !427)
!426 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !426, line: 59, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !422, file: !419, line: 919, baseType: !431, size: 128, align: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !12, line: 216, size: 128, align: 64, elements: !432)
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !12, line: 217, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !431, file: !12, line: 218, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !434}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !418, file: !419, line: 921, baseType: !440, size: 128, offset: 128)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !441, line: 8, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !440, file: !441, line: 9, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !446, line: 18, flags: DIFlagFwdDecl)
!446 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !440, file: !441, line: 10, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !446, line: 89, size: 1536, elements: !450)
!450 = !{!451, !452, !462, !470, !471, !489, !3231, !3233, !3245, !3246, !3247, !3248, !3249, !3255, !3256, !3257}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !449, file: !446, line: 91, baseType: !65, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !449, file: !446, line: 92, baseType: !453, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !454, line: 277, baseType: !455)
!454 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !454, line: 277, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !455, file: !454, line: 277, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !454, line: 70, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !454, line: 65, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !459, file: !454, line: 66, baseType: !65, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !449, file: !446, line: 93, baseType: !463, size: 128, offset: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !464, line: 38, size: 128, elements: !465)
!464 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !464, line: 39, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !463, file: !464, line: 39, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !449, file: !446, line: 94, baseType: !448, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !449, file: !446, line: 95, baseType: !472, size: 128, offset: 256)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !446, line: 47, size: 128, elements: !473)
!473 = !{!474, !486}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !446, line: 48, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !446, line: 48, size: 64, elements: !476)
!476 = !{!477, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !446, line: 49, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !446, line: 49, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !478, file: !446, line: 50, baseType: !152, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !478, file: !446, line: 50, baseType: !152, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !475, file: !446, line: 52, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !485)
!485 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !446, line: 54, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !449, file: !446, line: 96, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !419, line: 610, size: 4224, elements: !492)
!492 = !{!493, !494, !495, !503, !510, !511, !657, !2942, !2943, !2944, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !3207, !3215, !3216, !3217, !3227, !3228, !3229, !3230}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !491, file: !419, line: 611, baseType: !382, size: 16)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !491, file: !419, line: 612, baseType: !118, size: 16, offset: 16)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !491, file: !419, line: 613, baseType: !496, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !497, line: 23, baseType: !498)
!497 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 21, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !498, file: !497, line: 22, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !12, line: 32, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !374, line: 49, baseType: !65)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !491, file: !419, line: 614, baseType: !504, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !497, line: 28, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 26, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !505, file: !497, line: 27, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !12, line: 33, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !374, line: 50, baseType: !65)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !491, file: !419, line: 615, baseType: !65, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !491, file: !419, line: 622, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !419, line: 1864, size: 1536, align: 512, elements: !515)
!515 = !{!516, !520, !533, !537, !543, !547, !553, !557, !561, !565, !569, !570, !576, !580, !604, !633, !637, !643, !648, !652, !653}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !514, file: !419, line: 1865, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!448, !490, !448, !65}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !514, file: !419, line: 1866, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!149, !448, !490, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !526, line: 10, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !532}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !525, file: !526, line: 11, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !226}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !525, file: !526, line: 12, baseType: !226, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !514, file: !419, line: 1867, baseType: !534, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!16, !490, !16}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !514, file: !419, line: 1868, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !490, !16}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !419, line: 581, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !514, file: !419, line: 1870, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!16, !448, !341, !16}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !514, file: !419, line: 1872, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!16, !490, !448, !382, !551}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !12, line: 30, baseType: !552)
!552 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !514, file: !419, line: 1873, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!16, !448, !490, !448}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !514, file: !419, line: 1874, baseType: !558, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!16, !490, !448}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !514, file: !419, line: 1875, baseType: !562, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!16, !490, !448, !149}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !514, file: !419, line: 1876, baseType: !566, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!16, !490, !448, !382}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !514, file: !419, line: 1877, baseType: !558, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !514, file: !419, line: 1878, baseType: !571, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!16, !490, !448, !382, !574}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 16, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !12, line: 13, baseType: !152)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !514, file: !419, line: 1879, baseType: !577, size: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!16, !490, !448, !490, !448, !65}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !514, file: !419, line: 1881, baseType: !581, size: 64, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!16, !448, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !419, line: 219, size: 640, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !594, !601, !602, !603}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !585, file: !419, line: 220, baseType: !65, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !585, file: !419, line: 221, baseType: !382, size: 16, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !585, file: !419, line: 222, baseType: !496, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !585, file: !419, line: 223, baseType: !504, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !585, file: !419, line: 224, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !12, line: 46, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !374, line: 88, baseType: !35)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !585, file: !419, line: 225, baseType: !595, size: 128, offset: 192)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !596, line: 13, size: 128, elements: !597)
!596 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !595, file: !596, line: 14, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !596, line: 8, baseType: !33)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !595, file: !596, line: 15, baseType: !376, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !585, file: !419, line: 226, baseType: !595, size: 128, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !585, file: !419, line: 227, baseType: !595, size: 128, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !585, file: !419, line: 234, baseType: !417, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !514, file: !419, line: 1882, baseType: !605, size: 64, offset: 896)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!16, !608, !610, !152, !65}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !612, line: 22, size: 1152, elements: !613)
!612 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !615, !616, !617, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !611, file: !612, line: 23, baseType: !152, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !611, file: !612, line: 24, baseType: !382, size: 16, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !611, file: !612, line: 25, baseType: !65, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !611, file: !612, line: 26, baseType: !618, size: 32, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 104, baseType: !152)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !611, file: !612, line: 27, baseType: !483, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !611, file: !612, line: 28, baseType: !483, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !611, file: !612, line: 37, baseType: !483, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !611, file: !612, line: 38, baseType: !574, size: 32, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !611, file: !612, line: 39, baseType: !574, size: 32, offset: 352)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !611, file: !612, line: 40, baseType: !496, size: 32, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !611, file: !612, line: 41, baseType: !504, size: 32, offset: 416)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !611, file: !612, line: 42, baseType: !592, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !611, file: !612, line: 43, baseType: !595, size: 128, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !611, file: !612, line: 44, baseType: !595, size: 128, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !611, file: !612, line: 45, baseType: !595, size: 128, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !611, file: !612, line: 46, baseType: !595, size: 128, offset: 896)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !611, file: !612, line: 47, baseType: !483, size: 64, offset: 1024)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !611, file: !612, line: 48, baseType: !483, size: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !514, file: !419, line: 1883, baseType: !634, size: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!372, !448, !341, !387}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !514, file: !419, line: 1884, baseType: !638, size: 64, offset: 1024)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!16, !490, !641, !483, !483}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !419, line: 50, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !514, file: !419, line: 1886, baseType: !644, size: 64, offset: 1088)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!16, !490, !647, !16}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !514, file: !419, line: 1887, baseType: !649, size: 64, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!16, !490, !448, !417, !65, !382}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !514, file: !419, line: 1890, baseType: !566, size: 64, offset: 1216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !514, file: !419, line: 1891, baseType: !654, size: 64, offset: 1280)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!16, !490, !541, !16}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !491, file: !419, line: 623, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !419, line: 1416, size: 9472, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !715, !2543, !2631, !2714, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2730, !2734, !2735, !2738, !2739, !2742, !2743, !2744, !2785, !2812, !2813, !2814, !2815, !2816, !2817, !2820, !2822, !2829, !2830, !2832, !2833, !2834, !2893, !2894, !2909, !2910, !2911, !2912, !2913, !2916, !2917, !2918, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !659, file: !419, line: 1417, baseType: !53, size: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !659, file: !419, line: 1418, baseType: !574, size: 32, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !659, file: !419, line: 1419, baseType: !168, size: 8, offset: 160)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !659, file: !419, line: 1420, baseType: !111, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !659, file: !419, line: 1421, baseType: !592, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !659, file: !419, line: 1422, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !419, line: 2228, size: 576, elements: !669)
!669 = !{!670, !671, !672, !678, !682, !686, !690, !694, !695, !705, !708, !709, !710, !712, !713, !714}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !419, line: 2229, baseType: !149, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !668, file: !419, line: 2230, baseType: !16, size: 32, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !668, file: !419, line: 2238, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!16, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !419, line: 69, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !668, file: !419, line: 2239, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !419, line: 70, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !668, file: !419, line: 2240, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!448, !667, !16, !149, !226}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !668, file: !419, line: 2242, baseType: !687, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !658}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !419, line: 2243, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !693, line: 76, flags: DIFlagFwdDecl)
!693 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !419, line: 2244, baseType: !667, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !668, file: !419, line: 2245, baseType: !696, size: 64, offset: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !12, line: 182, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !12, line: 183, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !12, line: 186, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !12, line: 187, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !700, file: !12, line: 187, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !668, file: !419, line: 2247, baseType: !706, offset: 576)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !707, line: 187, elements: !51)
!707 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !668, file: !419, line: 2248, baseType: !706, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !668, file: !419, line: 2249, baseType: !706, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !668, file: !419, line: 2250, baseType: !711, offset: 576)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, elements: !342)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !668, file: !419, line: 2252, baseType: !706, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !668, file: !419, line: 2253, baseType: !706, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !668, file: !419, line: 2254, baseType: !706, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !659, file: !419, line: 1423, baseType: !716, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !419, line: 1935, size: 1472, elements: !719)
!719 = !{!720, !724, !728, !729, !733, !740, !744, !745, !746, !750, !754, !755, !756, !757, !763, !768, !769, !776, !777, !778, !779, !2527, !2542}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !718, file: !419, line: 1936, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!490, !658}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !718, file: !419, line: 1937, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !490}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !718, file: !419, line: 1938, baseType: !725, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !718, file: !419, line: 1940, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !490, !16}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !718, file: !419, line: 1941, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!16, !490, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !739, line: 40, flags: DIFlagFwdDecl)
!739 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!740 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !718, file: !419, line: 1942, baseType: !741, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!16, !490}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !718, file: !419, line: 1943, baseType: !725, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !718, file: !419, line: 1944, baseType: !687, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !718, file: !419, line: 1945, baseType: !747, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!16, !658, !16}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !718, file: !419, line: 1946, baseType: !751, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!16, !658}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !718, file: !419, line: 1947, baseType: !751, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !718, file: !419, line: 1948, baseType: !751, size: 64, offset: 704)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !718, file: !419, line: 1949, baseType: !751, size: 64, offset: 768)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !718, file: !419, line: 1950, baseType: !758, size: 64, offset: 832)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!16, !448, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !419, line: 57, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !718, file: !419, line: 1951, baseType: !764, size: 64, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!16, !658, !767, !341}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !718, file: !419, line: 1952, baseType: !687, size: 64, offset: 960)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !718, file: !419, line: 1954, baseType: !770, size: 64, offset: 1024)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!16, !773, !448}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !775, line: 539, flags: DIFlagFwdDecl)
!775 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!776 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !718, file: !419, line: 1955, baseType: !770, size: 64, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !718, file: !419, line: 1956, baseType: !770, size: 64, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !718, file: !419, line: 1957, baseType: !770, size: 64, offset: 1216)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !718, file: !419, line: 1963, baseType: !780, size: 64, offset: 1280)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!16, !658, !783, !806}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !785, line: 68, size: 512, align: 128, elements: !786)
!785 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !788, !2519, !2526}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !785, line: 69, baseType: !111, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !785, line: 77, baseType: !789, size: 320, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !785, line: 77, size: 320, elements: !790)
!790 = !{!791, !974, !979, !1007, !1015, !1021, !2443, !2518}
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 78, baseType: !792, size: 320)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 78, size: 320, elements: !793)
!793 = !{!794, !795, !972, !973}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !792, file: !785, line: 84, baseType: !53, size: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !792, file: !785, line: 86, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !419, line: 451, size: 1216, align: 64, elements: !798)
!798 = !{!799, !800, !808, !809, !810, !825, !834, !835, !836, !837, !965, !966, !969, !970, !971}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !797, file: !419, line: 452, baseType: !490, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !797, file: !419, line: 453, baseType: !801, size: 128, offset: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !802, line: 292, size: 128, elements: !803)
!802 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!803 = !{!804, !805, !807}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !801, file: !802, line: 293, baseType: !37)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !801, file: !802, line: 295, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !12, line: 148, baseType: !65)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !801, file: !802, line: 296, baseType: !226, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !797, file: !419, line: 454, baseType: !806, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !797, file: !419, line: 455, baseType: !11, size: 32, offset: 224)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !797, file: !419, line: 460, baseType: !811, size: 128, offset: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !812, line: 125, size: 128, elements: !813)
!812 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !824}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !811, file: !812, line: 126, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !812, line: 31, size: 64, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !815, file: !812, line: 32, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !812, line: 24, size: 192, align: 64, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !819, file: !812, line: 25, baseType: !111, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !819, file: !812, line: 26, baseType: !818, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !819, file: !812, line: 27, baseType: !818, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !811, file: !812, line: 127, baseType: !818, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !797, file: !419, line: 461, baseType: !826, size: 256, offset: 384)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !827, line: 35, size: 256, elements: !828)
!827 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!828 = !{!829, !830, !831, !833}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !826, file: !827, line: 36, baseType: !25, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !826, file: !827, line: 42, baseType: !25, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !826, file: !827, line: 46, baseType: !832, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !38, line: 29, baseType: !45)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !826, file: !827, line: 47, baseType: !53, size: 128, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !797, file: !419, line: 462, baseType: !111, size: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !797, file: !419, line: 463, baseType: !111, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !797, file: !419, line: 464, baseType: !111, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !797, file: !419, line: 465, baseType: !838, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !419, line: 367, size: 1408, elements: !841)
!841 = !{!842, !846, !850, !854, !858, !862, !868, !874, !878, !883, !887, !891, !895, !922, !933, !939, !940, !941, !945, !950, !954, !961}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !840, file: !419, line: 368, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!16, !783, !737}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !840, file: !419, line: 369, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!16, !417, !783}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !840, file: !419, line: 372, baseType: !851, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!16, !796, !737}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !840, file: !419, line: 375, baseType: !855, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!16, !783}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !840, file: !419, line: 381, baseType: !859, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!16, !417, !796, !56, !65}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !840, file: !419, line: 383, baseType: !863, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !419, line: 290, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !840, file: !419, line: 385, baseType: !869, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!16, !417, !796, !592, !65, !65, !872, !873}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !840, file: !419, line: 388, baseType: !875, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!16, !417, !796, !592, !65, !65, !783, !226}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !840, file: !419, line: 393, baseType: !879, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!882, !796, !882}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !12, line: 125, baseType: !483)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !840, file: !419, line: 394, baseType: !884, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !783, !65, !65}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !840, file: !419, line: 395, baseType: !888, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!16, !783, !806}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !840, file: !419, line: 396, baseType: !892, size: 64, offset: 704)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !783}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !840, file: !419, line: 397, baseType: !896, size: 64, offset: 768)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!372, !899, !920}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !419, line: 320, size: 384, elements: !901)
!901 = !{!902, !903, !904, !908, !909, !910, !912, !913}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !900, file: !419, line: 321, baseType: !417, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !900, file: !419, line: 326, baseType: !592, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !900, file: !419, line: 327, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !899, !376, !376}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !900, file: !419, line: 328, baseType: !226, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !900, file: !419, line: 329, baseType: !16, size: 32, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !900, file: !419, line: 330, baseType: !911, size: 16, offset: 288)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !117)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !900, file: !419, line: 331, baseType: !911, size: 16, offset: 304)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !419, line: 332, baseType: !914, size: 64, offset: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !419, line: 332, size: 64, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !914, file: !419, line: 333, baseType: !65, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !914, file: !419, line: 334, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !419, line: 334, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !419, line: 64, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !840, file: !419, line: 402, baseType: !923, size: 64, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!16, !796, !783, !783, !926}
!926 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !927, line: 15, baseType: !65, size: 32, elements: !928)
!927 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!928 = !{!929, !930, !931, !932}
!929 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!930 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!931 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!932 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !840, file: !419, line: 404, baseType: !934, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!551, !783, !937}
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !938, line: 305, baseType: !65)
!938 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !840, file: !419, line: 405, baseType: !892, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !840, file: !419, line: 406, baseType: !855, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !840, file: !419, line: 407, baseType: !942, size: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!16, !783, !111, !111}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !840, file: !419, line: 409, baseType: !946, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !783, !949, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !840, file: !419, line: 410, baseType: !951, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!16, !796, !783}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !840, file: !419, line: 413, baseType: !955, size: 64, offset: 1280)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!16, !958, !417, !960}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !419, line: 61, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !840, file: !419, line: 415, baseType: !962, size: 64, offset: 1344)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !417}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !419, line: 466, baseType: !111, size: 64, offset: 896)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !797, file: !419, line: 467, baseType: !967, size: 32, offset: 960)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !968, line: 8, baseType: !152)
!968 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!969 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !797, file: !419, line: 468, baseType: !37, offset: 992)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !797, file: !419, line: 469, baseType: !53, size: 128, offset: 1024)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !797, file: !419, line: 470, baseType: !226, size: 64, offset: 1152)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !792, file: !785, line: 87, baseType: !111, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !792, file: !785, line: 94, baseType: !111, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 96, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 96, size: 64, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !975, file: !785, line: 101, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !12, line: 143, baseType: !483)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 103, baseType: !980, size: 320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 103, size: 320, elements: !981)
!981 = !{!982, !992, !995, !996}
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !785, line: 104, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !785, line: 104, size: 128, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !983, file: !785, line: 105, baseType: !53, size: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !785, line: 106, baseType: !987, size: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !785, line: 106, size: 128, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !987, file: !785, line: 107, baseType: !783, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !987, file: !785, line: 109, baseType: !16, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !987, file: !785, line: 110, baseType: !16, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !980, file: !785, line: 117, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !785, line: 117, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !980, file: !785, line: 119, baseType: !226, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !785, line: 120, baseType: !997, size: 64, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !785, line: 120, size: 64, elements: !998)
!998 = !{!999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !997, file: !785, line: 121, baseType: !226, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !997, file: !785, line: 122, baseType: !111, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !785, line: 123, baseType: !1002, size: 32)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !785, line: 123, size: 32, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1002, file: !785, line: 124, baseType: !65, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1002, file: !785, line: 125, baseType: !65, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1002, file: !785, line: 126, baseType: !65, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 130, baseType: !1008, size: 192)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 130, size: 192, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1008, file: !785, line: 131, baseType: !111, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1008, file: !785, line: 134, baseType: !168, size: 8, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1008, file: !785, line: 135, baseType: !168, size: 8, offset: 72)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1008, file: !785, line: 136, baseType: !11, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1008, file: !785, line: 137, baseType: !65, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 139, baseType: !1016, size: 256)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 139, size: 256, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1016, file: !785, line: 140, baseType: !111, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1016, file: !785, line: 141, baseType: !11, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1016, file: !785, line: 143, baseType: !53, size: 128, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 145, baseType: !1022, size: 256)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 145, size: 256, elements: !1023)
!1023 = !{!1024, !1025, !1027, !1028, !2442}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1022, file: !785, line: 146, baseType: !111, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1022, file: !785, line: 147, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !775, line: 509, baseType: !783)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1022, file: !785, line: 148, baseType: !111, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !785, line: 149, baseType: !1029, size: 64, offset: 192)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !785, line: 149, size: 64, elements: !1030)
!1030 = !{!1031, !2441}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1029, file: !785, line: 150, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !785, line: 388, size: 7296, elements: !1034)
!1034 = !{!1035, !2437}
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !785, line: 389, baseType: !1036, size: 7296)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1033, file: !785, line: 389, size: 7296, elements: !1037)
!1037 = !{!1038, !1161, !1162, !1163, !1167, !1168, !1169, !1170, !1171, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1212, !1218, !1221, !1261, !1262, !2421, !2422, !2425, !2426, !2427, !2430, !2431, !2432, !2435, !2436}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1036, file: !785, line: 390, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !785, line: 305, size: 1472, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1056, !1057, !1062, !1063, !1066, !1155, !1156, !1157, !1158, !1159}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1040, file: !785, line: 308, baseType: !111, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1040, file: !785, line: 309, baseType: !111, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1040, file: !785, line: 313, baseType: !1039, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1040, file: !785, line: 313, baseType: !1039, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1040, file: !785, line: 315, baseType: !819, size: 192, align: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1040, file: !785, line: 323, baseType: !111, size: 64, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1040, file: !785, line: 327, baseType: !1032, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1040, file: !785, line: 333, baseType: !1050, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !775, line: 284, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !775, line: 284, size: 64, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1051, file: !775, line: 284, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1055, line: 19, baseType: !111)
!1055 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1040, file: !785, line: 334, baseType: !111, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1040, file: !785, line: 343, baseType: !1058, size: 256, offset: 704)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !785, line: 340, size: 256, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1058, file: !785, line: 341, baseType: !819, size: 192, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1058, file: !785, line: 342, baseType: !111, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1040, file: !785, line: 351, baseType: !53, size: 128, offset: 960)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1040, file: !785, line: 353, baseType: !1064, size: 64, offset: 1088)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !785, line: 353, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1040, file: !785, line: 356, baseType: !1067, size: 64, offset: 1152)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !739, line: 557, size: 832, elements: !1070)
!1070 = !{!1071, !1075, !1076, !1080, !1084, !1124, !1133, !1137, !1141, !1142, !1143, !1147, !1151}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1069, file: !739, line: 558, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1039}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1069, file: !739, line: 559, baseType: !1072, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1069, file: !739, line: 560, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!16, !1039, !111}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1069, file: !739, line: 561, baseType: !1081, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!16, !1039}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1069, file: !739, line: 562, baseType: !1085, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !785, line: 682, baseType: !65)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !739, line: 508, size: 768, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1104, !1111, !1117, !1118, !1119, !1121, !1123}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1090, file: !739, line: 509, baseType: !1039, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !739, line: 510, baseType: !65, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1090, file: !739, line: 511, baseType: !806, size: 32, offset: 96)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1090, file: !739, line: 512, baseType: !111, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1090, file: !739, line: 513, baseType: !111, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1090, file: !739, line: 514, baseType: !1098, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !775, line: 385, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 385, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1100, file: !775, line: 385, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1055, line: 15, baseType: !111)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1090, file: !739, line: 516, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !775, line: 359, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 359, size: 64, elements: !1108)
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1107, file: !775, line: 359, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1055, line: 16, baseType: !111)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1090, file: !739, line: 519, baseType: !1112, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1055, line: 21, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1055, line: 21, size: 64, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1113, file: !1055, line: 21, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1055, line: 14, baseType: !111)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1090, file: !739, line: 521, baseType: !783, size: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1090, file: !739, line: 522, baseType: !783, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1090, file: !739, line: 528, baseType: !1120, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1090, file: !739, line: 532, baseType: !1122, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1090, file: !739, line: 536, baseType: !1026, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1069, file: !739, line: 563, baseType: !1125, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1088, !1089, !1128}
!1128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !739, line: 546, baseType: !65, size: 32, elements: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!1131 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!1132 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1069, file: !739, line: 565, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1089, !111, !111}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1069, file: !739, line: 567, baseType: !1138, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!111, !1039}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1069, file: !739, line: 571, baseType: !1085, size: 64, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1069, file: !739, line: 574, baseType: !1085, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1069, file: !739, line: 579, baseType: !1144, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!16, !1039, !111, !226, !16, !16}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1069, file: !739, line: 585, baseType: !1148, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!149, !1039}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1069, file: !739, line: 615, baseType: !1152, size: 64, offset: 768)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!783, !1039, !111}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1040, file: !785, line: 359, baseType: !111, size: 64, offset: 1216)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1040, file: !785, line: 361, baseType: !417, size: 64, offset: 1280)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1040, file: !785, line: 362, baseType: !226, size: 64, offset: 1344)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1040, file: !785, line: 365, baseType: !25, size: 64, offset: 1408)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1040, file: !785, line: 373, baseType: !1160, offset: 1472)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !785, line: 296, elements: !51)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1036, file: !785, line: 391, baseType: !815, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1036, file: !785, line: 392, baseType: !483, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1036, file: !785, line: 394, baseType: !1164, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!111, !417, !111, !111, !111, !111}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1036, file: !785, line: 398, baseType: !111, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1036, file: !785, line: 399, baseType: !111, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1036, file: !785, line: 405, baseType: !111, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1036, file: !785, line: 406, baseType: !111, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1036, file: !785, line: 407, baseType: !1172, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !775, line: 286, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 286, size: 64, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1174, file: !775, line: 286, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1055, line: 18, baseType: !111)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1036, file: !785, line: 416, baseType: !11, size: 32, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1036, file: !785, line: 428, baseType: !11, size: 32, offset: 608)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1036, file: !785, line: 437, baseType: !11, size: 32, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1036, file: !785, line: 447, baseType: !11, size: 32, offset: 672)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1036, file: !785, line: 450, baseType: !25, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1036, file: !785, line: 452, baseType: !16, size: 32, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1036, file: !785, line: 454, baseType: !37, offset: 800)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1036, file: !785, line: 457, baseType: !826, size: 256, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1036, file: !785, line: 459, baseType: !53, size: 128, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1036, file: !785, line: 466, baseType: !111, size: 64, offset: 1216)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1036, file: !785, line: 467, baseType: !111, size: 64, offset: 1280)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1036, file: !785, line: 469, baseType: !111, size: 64, offset: 1344)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1036, file: !785, line: 470, baseType: !111, size: 64, offset: 1408)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1036, file: !785, line: 471, baseType: !27, size: 64, offset: 1472)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1036, file: !785, line: 472, baseType: !111, size: 64, offset: 1536)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1036, file: !785, line: 473, baseType: !111, size: 64, offset: 1600)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1036, file: !785, line: 474, baseType: !111, size: 64, offset: 1664)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1036, file: !785, line: 475, baseType: !111, size: 64, offset: 1728)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1036, file: !785, line: 477, baseType: !37, offset: 1792)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1036, file: !785, line: 478, baseType: !111, size: 64, offset: 1792)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1036, file: !785, line: 478, baseType: !111, size: 64, offset: 1856)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1036, file: !785, line: 478, baseType: !111, size: 64, offset: 1920)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1036, file: !785, line: 478, baseType: !111, size: 64, offset: 1984)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1036, file: !785, line: 479, baseType: !111, size: 64, offset: 2048)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1036, file: !785, line: 479, baseType: !111, size: 64, offset: 2112)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1036, file: !785, line: 479, baseType: !111, size: 64, offset: 2176)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1036, file: !785, line: 480, baseType: !111, size: 64, offset: 2240)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1036, file: !785, line: 480, baseType: !111, size: 64, offset: 2304)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1036, file: !785, line: 480, baseType: !111, size: 64, offset: 2368)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1036, file: !785, line: 480, baseType: !111, size: 64, offset: 2432)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1036, file: !785, line: 482, baseType: !1209, size: 2816, offset: 2496)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2816, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 44)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1036, file: !785, line: 488, baseType: !1213, size: 256, offset: 5312)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1214, line: 60, size: 256, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1213, file: !1214, line: 61, baseType: !1217, size: 256)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !100)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1036, file: !785, line: 490, baseType: !1219, size: 64, offset: 5568)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !785, line: 490, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1036, file: !785, line: 493, baseType: !1222, size: 896, offset: 5632)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1223, line: 53, baseType: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1223, line: 13, size: 896, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1232, !1233, !1234, !1235, !1255, !1256, !1257}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1224, file: !1223, line: 18, baseType: !483, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1224, file: !1223, line: 28, baseType: !27, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1224, file: !1223, line: 31, baseType: !826, size: 256, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1224, file: !1223, line: 32, baseType: !1230, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1223, line: 32, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1224, file: !1223, line: 37, baseType: !118, size: 16, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1224, file: !1223, line: 40, baseType: !21, size: 192, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1224, file: !1223, line: 41, baseType: !226, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1224, file: !1223, line: 42, baseType: !1236, size: 64, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1239, line: 13, size: 896, elements: !1240)
!1239 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1238, file: !1239, line: 14, baseType: !226, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1238, file: !1239, line: 15, baseType: !111, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1238, file: !1239, line: 17, baseType: !111, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1238, file: !1239, line: 17, baseType: !111, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1238, file: !1239, line: 19, baseType: !376, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1238, file: !1239, line: 21, baseType: !376, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1238, file: !1239, line: 22, baseType: !376, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1238, file: !1239, line: 23, baseType: !376, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1238, file: !1239, line: 24, baseType: !376, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1238, file: !1239, line: 25, baseType: !376, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1238, file: !1239, line: 26, baseType: !376, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1238, file: !1239, line: 27, baseType: !376, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1238, file: !1239, line: 28, baseType: !376, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1238, file: !1239, line: 29, baseType: !376, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1224, file: !1223, line: 44, baseType: !11, size: 32, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1224, file: !1223, line: 50, baseType: !911, size: 16, offset: 864)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1224, file: !1223, line: 51, baseType: !1258, size: 16, offset: 880)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !32, line: 18, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !34, line: 23, baseType: !1260)
!1260 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !785, line: 495, baseType: !111, size: 64, offset: 6528)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1036, file: !785, line: 497, baseType: !1263, size: 64, offset: 6592)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !785, line: 381, size: 384, elements: !1265)
!1265 = !{!1266, !1267, !2420}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1264, file: !785, line: 382, baseType: !11, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1264, file: !785, line: 383, baseType: !1268, size: 128, offset: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !785, line: 376, size: 128, elements: !1269)
!1269 = !{!1270, !2418}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1268, file: !785, line: 377, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1273, line: 640, size: 48640, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1281, !1283, !1284, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1301, !1319, !1330, !1418, !1419, !1420, !1431, !1432, !1434, !1435, !1436, !1437, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1522, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1598, !1600, !1601, !1602, !1614, !1615, !1616, !1617, !1618, !1619, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1643, !1648, !1828, !1829, !1830, !1831, !1832, !1835, !1838, !1841, !1844, !1870, !1971, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2017, !2018, !2019, !2020, !2021, !2026, !2027, !2028, !2031, !2032, !2035, !2038, !2041, !2044, !2076, !2079, !2080, !2159, !2160, !2163, !2164, !2167, !2168, !2169, !2173, !2174, !2175, !2188, !2189, !2190, !2200, !2205, !2208, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1272, file: !1273, line: 646, baseType: !1276, size: 128)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1277, line: 56, size: 128, elements: !1278)
!1277 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !1277, line: 57, baseType: !111, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1276, file: !1277, line: 58, baseType: !152, size: 32, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1272, file: !1273, line: 649, baseType: !1282, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1272, file: !1273, line: 657, baseType: !226, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1272, file: !1273, line: 658, baseType: !1285, size: 32, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1286, line: 113, baseType: !1287)
!1286 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1286, line: 111, size: 32, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1287, file: !1286, line: 112, baseType: !11, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1273, line: 660, baseType: !65, size: 32, offset: 288)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1272, file: !1273, line: 661, baseType: !65, size: 32, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1272, file: !1273, line: 684, baseType: !16, size: 32, offset: 352)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1272, file: !1273, line: 686, baseType: !16, size: 32, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1272, file: !1273, line: 687, baseType: !16, size: 32, offset: 416)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1272, file: !1273, line: 688, baseType: !16, size: 32, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1272, file: !1273, line: 689, baseType: !65, size: 32, offset: 480)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1272, file: !1273, line: 691, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1273, line: 691, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1272, file: !1273, line: 692, baseType: !1302, size: 832, offset: 576)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1273, line: 451, size: 832, elements: !1303)
!1303 = !{!1304, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1302, file: !1273, line: 453, baseType: !1305, size: 128)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1273, line: 325, size: 128, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1305, file: !1273, line: 326, baseType: !111, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1305, file: !1273, line: 327, baseType: !152, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1302, file: !1273, line: 454, baseType: !819, size: 192, align: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1302, file: !1273, line: 455, baseType: !53, size: 128, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1302, file: !1273, line: 456, baseType: !65, size: 32, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1302, file: !1273, line: 458, baseType: !483, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1302, file: !1273, line: 459, baseType: !483, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1302, file: !1273, line: 460, baseType: !483, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1302, file: !1273, line: 461, baseType: !483, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1302, file: !1273, line: 463, baseType: !483, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1302, file: !1273, line: 465, baseType: !1318, offset: 832)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1273, line: 415, elements: !51)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1272, file: !1273, line: 693, baseType: !1320, size: 384, offset: 1408)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1273, line: 489, size: 384, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1320, file: !1273, line: 490, baseType: !53, size: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1320, file: !1273, line: 491, baseType: !111, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1320, file: !1273, line: 492, baseType: !111, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1320, file: !1273, line: 493, baseType: !65, size: 32, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1320, file: !1273, line: 494, baseType: !118, size: 16, offset: 288)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1320, file: !1273, line: 495, baseType: !118, size: 16, offset: 304)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1320, file: !1273, line: 497, baseType: !1329, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1272, file: !1273, line: 697, baseType: !1331, size: 1792, offset: 1792)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1273, line: 507, size: 1792, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1415, !1416}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1331, file: !1273, line: 508, baseType: !819, size: 192, align: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1331, file: !1273, line: 515, baseType: !483, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1331, file: !1273, line: 516, baseType: !483, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1331, file: !1273, line: 517, baseType: !483, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1331, file: !1273, line: 518, baseType: !483, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1331, file: !1273, line: 519, baseType: !483, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1331, file: !1273, line: 526, baseType: !31, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1331, file: !1273, line: 527, baseType: !483, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !1273, line: 528, baseType: !65, size: 32, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1331, file: !1273, line: 554, baseType: !65, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1331, file: !1273, line: 555, baseType: !65, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1331, file: !1273, line: 556, baseType: !65, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1331, file: !1273, line: 557, baseType: !65, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1331, file: !1273, line: 563, baseType: !1347, size: 512, offset: 704)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1348, line: 118, size: 512, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1358, !1359, !1368, !1411, !1412, !1413, !1414}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1347, file: !1348, line: 119, baseType: !1351, size: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1352, line: 9, size: 256, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1351, file: !1352, line: 10, baseType: !819, size: 192, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1351, file: !1352, line: 11, baseType: !1356, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1357, line: 29, baseType: !31)
!1357 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1347, file: !1348, line: 120, baseType: !1356, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1347, file: !1348, line: 121, baseType: !1360, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1363, !1367}
!1363 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1348, line: 65, baseType: !65, size: 32, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1366 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1347, file: !1348, line: 122, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1348, line: 159, size: 512, align: 512, elements: !1371)
!1371 = !{!1372, !1392, !1393, !1396, !1401, !1402, !1406, !1410}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1370, file: !1348, line: 160, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1348, line: 214, size: 4608, align: 512, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1374, file: !1348, line: 215, baseType: !832)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1374, file: !1348, line: 216, baseType: !65, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1374, file: !1348, line: 217, baseType: !65, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1374, file: !1348, line: 218, baseType: !65, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1374, file: !1348, line: 219, baseType: !65, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1374, file: !1348, line: 220, baseType: !65, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1374, file: !1348, line: 221, baseType: !65, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1374, file: !1348, line: 222, baseType: !65, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1374, file: !1348, line: 233, baseType: !1356, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1374, file: !1348, line: 234, baseType: !1367, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1374, file: !1348, line: 235, baseType: !1356, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1374, file: !1348, line: 236, baseType: !1367, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1374, file: !1348, line: 237, baseType: !1389, size: 4096, offset: 512)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1370, size: 4096, elements: !1390)
!1390 = !{!1391}
!1391 = !DISubrange(count: 8)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1370, file: !1348, line: 161, baseType: !65, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1370, file: !1348, line: 162, baseType: !1394, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !12, line: 27, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !374, line: 96, baseType: !16)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1370, file: !1348, line: 163, baseType: !1397, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !454, line: 276, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !454, line: 276, size: 32, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1398, file: !454, line: 276, baseType: !458, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1370, file: !1348, line: 164, baseType: !1367, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1370, file: !1348, line: 165, baseType: !1403, size: 128, offset: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1352, line: 14, size: 128, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1403, file: !1352, line: 15, baseType: !811, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1370, file: !1348, line: 166, baseType: !1407, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1356}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1370, file: !1348, line: 167, baseType: !1356, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1347, file: !1348, line: 123, baseType: !213, size: 8, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1347, file: !1348, line: 124, baseType: !213, size: 8, offset: 456)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1347, file: !1348, line: 125, baseType: !213, size: 8, offset: 464)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1347, file: !1348, line: 126, baseType: !213, size: 8, offset: 472)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1331, file: !1273, line: 572, baseType: !1347, size: 512, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1331, file: !1273, line: 580, baseType: !1417, size: 64, offset: 1728)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1272, file: !1273, line: 721, baseType: !65, size: 32, offset: 3584)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1272, file: !1273, line: 722, baseType: !16, size: 32, offset: 3616)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1272, file: !1273, line: 723, baseType: !1421, size: 64, offset: 3648)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1424, line: 17, baseType: !1425)
!1424 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1424, line: 17, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1425, file: !1424, line: 17, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 1)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1272, file: !1273, line: 724, baseType: !1423, size: 64, offset: 3712)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1272, file: !1273, line: 749, baseType: !1433, offset: 3776)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1273, line: 290, elements: !51)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1272, file: !1273, line: 751, baseType: !53, size: 128, offset: 3776)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1272, file: !1273, line: 757, baseType: !1032, size: 64, offset: 3904)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1272, file: !1273, line: 758, baseType: !1032, size: 64, offset: 3968)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1272, file: !1273, line: 761, baseType: !1438, size: 320, offset: 4032)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1214, line: 34, size: 320, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1438, file: !1214, line: 35, baseType: !483, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1438, file: !1214, line: 36, baseType: !1442, size: 256, offset: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 256, elements: !100)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1272, file: !1273, line: 766, baseType: !16, size: 32, offset: 4352)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1272, file: !1273, line: 767, baseType: !16, size: 32, offset: 4384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1272, file: !1273, line: 768, baseType: !16, size: 32, offset: 4416)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1272, file: !1273, line: 770, baseType: !16, size: 32, offset: 4448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1272, file: !1273, line: 772, baseType: !111, size: 64, offset: 4480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1272, file: !1273, line: 775, baseType: !65, size: 32, offset: 4544)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1272, file: !1273, line: 778, baseType: !65, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1272, file: !1273, line: 779, baseType: !65, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1272, file: !1273, line: 780, baseType: !65, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1272, file: !1273, line: 803, baseType: !65, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1272, file: !1273, line: 806, baseType: !65, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1272, file: !1273, line: 807, baseType: !65, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1272, file: !1273, line: 809, baseType: !65, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1272, file: !1273, line: 815, baseType: !65, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1272, file: !1273, line: 831, baseType: !111, size: 64, offset: 4672)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1272, file: !1273, line: 833, baseType: !1459, size: 384, offset: 4736)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1460, line: 25, size: 384, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1467}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1459, file: !1460, line: 26, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!376, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1460, line: 27, baseType: !1468, size: 320, offset: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !1460, line: 27, size: 320, elements: !1469)
!1469 = !{!1470, !1480, !1512}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1468, file: !1460, line: 36, baseType: !1471, size: 320)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1468, file: !1460, line: 29, size: 320, elements: !1472)
!1472 = !{!1473, !1475, !1476, !1477, !1478, !1479}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1471, file: !1460, line: 30, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1471, file: !1460, line: 31, baseType: !152, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1471, file: !1460, line: 32, baseType: !152, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1471, file: !1460, line: 33, baseType: !152, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1471, file: !1460, line: 34, baseType: !483, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1471, file: !1460, line: 35, baseType: !1474, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1468, file: !1460, line: 46, baseType: !1481, size: 192)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1468, file: !1460, line: 38, size: 192, elements: !1482)
!1482 = !{!1483, !1484, !1490, !1511}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1481, file: !1460, line: 39, baseType: !1394, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1460, line: 40, baseType: !1485, size: 32, offset: 32)
!1485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1460, line: 16, baseType: !65, size: 32, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1488 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1489 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1460, line: 41, baseType: !1491, size: 64, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1460, line: 41, size: 64, elements: !1492)
!1492 = !{!1493, !1501}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1491, file: !1460, line: 42, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1496, line: 7, size: 128, elements: !1497)
!1496 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1497 = !{!1498, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1495, file: !1496, line: 8, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !374, line: 93, baseType: !35)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1495, file: !1496, line: 9, baseType: !35, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1491, file: !1460, line: 43, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1504, line: 7, size: 64, elements: !1505)
!1504 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1510}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1503, file: !1504, line: 8, baseType: !1507, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1504, line: 5, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !32, line: 20, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !34, line: 26, baseType: !16)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1503, file: !1504, line: 9, baseType: !1508, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1481, file: !1460, line: 45, baseType: !483, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1468, file: !1460, line: 54, baseType: !1513, size: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1468, file: !1460, line: 48, size: 256, elements: !1514)
!1514 = !{!1515, !1518, !1519, !1520, !1521}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1513, file: !1460, line: 49, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1460, line: 14, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1513, file: !1460, line: 50, baseType: !16, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1513, file: !1460, line: 51, baseType: !16, size: 32, offset: 96)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1513, file: !1460, line: 52, baseType: !111, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1513, file: !1460, line: 53, baseType: !111, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1272, file: !1273, line: 835, baseType: !1523, size: 32, offset: 5120)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !12, line: 22, baseType: !1524)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !374, line: 28, baseType: !16)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1272, file: !1273, line: 836, baseType: !1523, size: 32, offset: 5152)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1272, file: !1273, line: 840, baseType: !111, size: 64, offset: 5184)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1272, file: !1273, line: 849, baseType: !1271, size: 64, offset: 5248)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1272, file: !1273, line: 852, baseType: !1271, size: 64, offset: 5312)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1272, file: !1273, line: 857, baseType: !53, size: 128, offset: 5376)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1272, file: !1273, line: 858, baseType: !53, size: 128, offset: 5504)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1272, file: !1273, line: 859, baseType: !1271, size: 64, offset: 5632)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1272, file: !1273, line: 867, baseType: !53, size: 128, offset: 5696)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1272, file: !1273, line: 868, baseType: !53, size: 128, offset: 5824)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1272, file: !1273, line: 871, baseType: !1535, size: 64, offset: 5952)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1537, line: 59, size: 768, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1540, !1541, !1542, !1544, !1545, !1552, !1553}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1536, file: !1537, line: 61, baseType: !1285, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1536, file: !1537, line: 62, baseType: !65, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !1537, line: 63, baseType: !37, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1536, file: !1537, line: 65, baseType: !1543, size: 256, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !100)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1536, file: !1537, line: 66, baseType: !696, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1536, file: !1537, line: 68, baseType: !1546, size: 128, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1547, line: 40, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1547, line: 36, size: 128, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1548, file: !1547, line: 37, baseType: !37)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1548, file: !1547, line: 38, baseType: !53, size: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1536, file: !1537, line: 69, baseType: !431, size: 128, align: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1536, file: !1537, line: 70, baseType: !1554, size: 128, offset: 640)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, size: 128, elements: !1429)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1537, line: 54, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1555, file: !1537, line: 55, baseType: !16, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1555, file: !1537, line: 56, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1561, line: 20, size: 1088, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1568, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1584, !1587, !1588}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1560, file: !1561, line: 21, baseType: !1564, size: 32)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1565, line: 19, size: 32, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1564, file: !1565, line: 20, baseType: !1285, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1560, file: !1561, line: 22, baseType: !1569, size: 192, offset: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1570, line: 19, size: 192, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1573, !1574}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1569, file: !1570, line: 20, baseType: !801, size: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1569, file: !1570, line: 21, baseType: !65, size: 32, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1569, file: !1570, line: 22, baseType: !65, size: 32, offset: 160)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1560, file: !1561, line: 23, baseType: !431, size: 128, align: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1560, file: !1561, line: 24, baseType: !65, size: 32, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1560, file: !1561, line: 25, baseType: !1271, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1560, file: !1561, line: 26, baseType: !993, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1560, file: !1561, line: 27, baseType: !65, size: 32, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1560, file: !1561, line: 28, baseType: !1559, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1560, file: !1561, line: 32, baseType: !1582, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !785, line: 516, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1560, file: !1561, line: 33, baseType: !1585, size: 64, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1561, line: 33, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1560, file: !1561, line: 34, baseType: !16, size: 32, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1560, file: !1561, line: 35, baseType: !1589, size: 192, offset: 896)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1590, line: 7, size: 192, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1593, !1597}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1589, file: !1590, line: 8, baseType: !25, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1589, file: !1590, line: 9, baseType: !1594, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1590, line: 5, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1589, file: !1590, line: 10, baseType: !65, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1272, file: !1273, line: 872, baseType: !1599, size: 512, offset: 6016)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 512, elements: !100)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1272, file: !1273, line: 873, baseType: !53, size: 128, offset: 6528)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1272, file: !1273, line: 874, baseType: !53, size: 128, offset: 6656)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1272, file: !1273, line: 876, baseType: !1603, size: 64, offset: 6784)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1605, line: 26, size: 192, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1604, file: !1605, line: 27, baseType: !65, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1604, file: !1605, line: 28, baseType: !1609, size: 128, offset: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1610, line: 43, size: 128, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1609, file: !1610, line: 44, baseType: !832)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1609, file: !1610, line: 45, baseType: !53, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1272, file: !1273, line: 879, baseType: !767, size: 64, offset: 6848)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1272, file: !1273, line: 882, baseType: !767, size: 64, offset: 6912)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1272, file: !1273, line: 884, baseType: !483, size: 64, offset: 6976)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1272, file: !1273, line: 885, baseType: !483, size: 64, offset: 7040)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1272, file: !1273, line: 890, baseType: !483, size: 64, offset: 7104)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1272, file: !1273, line: 891, baseType: !1620, size: 128, offset: 7168)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1273, line: 242, size: 128, elements: !1621)
!1621 = !{!1622, !1623, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1620, file: !1273, line: 244, baseType: !483, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1620, file: !1273, line: 245, baseType: !483, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1620, file: !1273, line: 246, baseType: !832, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1272, file: !1273, line: 900, baseType: !111, size: 64, offset: 7296)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1272, file: !1273, line: 901, baseType: !111, size: 64, offset: 7360)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1272, file: !1273, line: 904, baseType: !483, size: 64, offset: 7424)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1272, file: !1273, line: 907, baseType: !483, size: 64, offset: 7488)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1272, file: !1273, line: 910, baseType: !111, size: 64, offset: 7552)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1272, file: !1273, line: 911, baseType: !111, size: 64, offset: 7616)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1272, file: !1273, line: 914, baseType: !1632, size: 640, offset: 7680)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1633, line: 123, size: 640, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1641, !1642}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1632, file: !1633, line: 124, baseType: !1636, size: 576)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1637, size: 576, elements: !342)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1633, line: 108, size: 192, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1637, file: !1633, line: 109, baseType: !483, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1637, file: !1633, line: 110, baseType: !1403, size: 128, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1632, file: !1633, line: 125, baseType: !65, size: 32, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1632, file: !1633, line: 126, baseType: !65, size: 32, offset: 608)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1272, file: !1273, line: 917, baseType: !1644, size: 192, offset: 8320)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1633, line: 134, size: 192, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1644, file: !1633, line: 135, baseType: !431, size: 128, align: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1644, file: !1633, line: 136, baseType: !65, size: 32, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1272, file: !1273, line: 923, baseType: !1649, size: 64, offset: 8512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1652, line: 111, size: 1280, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1671, !1672, !1673, !1674, !1675, !1676, !1783, !1784, !1785, !1786, !1812, !1813, !1823}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1651, file: !1652, line: 112, baseType: !11, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1651, file: !1652, line: 120, baseType: !496, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1651, file: !1652, line: 121, baseType: !504, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1651, file: !1652, line: 122, baseType: !496, size: 32, offset: 96)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1651, file: !1652, line: 123, baseType: !504, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1651, file: !1652, line: 124, baseType: !496, size: 32, offset: 160)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1651, file: !1652, line: 125, baseType: !504, size: 32, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1651, file: !1652, line: 126, baseType: !496, size: 32, offset: 224)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1651, file: !1652, line: 127, baseType: !504, size: 32, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1651, file: !1652, line: 128, baseType: !65, size: 32, offset: 288)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1651, file: !1652, line: 129, baseType: !1665, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1666, line: 26, baseType: !1667)
!1666 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1666, line: 24, size: 64, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1667, file: !1666, line: 25, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1651, file: !1652, line: 130, baseType: !1665, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1651, file: !1652, line: 131, baseType: !1665, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1651, file: !1652, line: 132, baseType: !1665, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1651, file: !1652, line: 133, baseType: !1665, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1651, file: !1652, line: 135, baseType: !168, size: 8, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1651, file: !1652, line: 137, baseType: !1677, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1679, line: 189, size: 1664, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1680 = !{!1681, !1682, !1685, !1690, !1691, !1694, !1695, !1700, !1701, !1702, !1703, !1705, !1706, !1707, !1708, !1709, !1747, !1768}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1678, file: !1679, line: 190, baseType: !1285, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1678, file: !1679, line: 191, baseType: !1683, size: 32, offset: 32)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1679, line: 28, baseType: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 98, baseType: !1508)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1679, line: 192, baseType: !1686, size: 192, offset: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !1679, line: 192, size: 192, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1686, file: !1679, line: 193, baseType: !53, size: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1686, file: !1679, line: 194, baseType: !819, size: 192, align: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1678, file: !1679, line: 199, baseType: !826, size: 256, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1678, file: !1679, line: 200, baseType: !1692, size: 64, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1679, line: 200, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1678, file: !1679, line: 201, baseType: !226, size: 64, offset: 576)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1679, line: 202, baseType: !1696, size: 64, offset: 640)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !1679, line: 202, size: 64, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1696, file: !1679, line: 203, baseType: !599, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1696, file: !1679, line: 204, baseType: !599, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1678, file: !1679, line: 206, baseType: !599, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1678, file: !1679, line: 207, baseType: !496, size: 32, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1678, file: !1679, line: 208, baseType: !504, size: 32, offset: 800)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1678, file: !1679, line: 209, baseType: !1704, size: 32, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1679, line: 31, baseType: !618)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1678, file: !1679, line: 210, baseType: !118, size: 16, offset: 864)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1678, file: !1679, line: 211, baseType: !118, size: 16, offset: 880)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1678, file: !1679, line: 215, baseType: !1260, size: 16, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1678, file: !1679, line: 222, baseType: !111, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1679, line: 239, baseType: !1710, size: 320, offset: 1024)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !1679, line: 239, size: 320, elements: !1711)
!1711 = !{!1712, !1739}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1710, file: !1679, line: 240, baseType: !1713, size: 320)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1679, line: 108, size: 320, elements: !1714)
!1714 = !{!1715, !1716, !1728, !1731, !1738}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1713, file: !1679, line: 110, baseType: !111, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1679, line: 111, baseType: !1717, size: 64, offset: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !1679, line: 111, size: 64, elements: !1718)
!1718 = !{!1719, !1727}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1679, line: 112, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1679, line: 112, size: 64, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1720, file: !1679, line: 114, baseType: !911, size: 16)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1720, file: !1679, line: 115, baseType: !1724, size: 48, offset: 16)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 48, elements: !1725)
!1725 = !{!1726}
!1726 = !DISubrange(count: 6)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1717, file: !1679, line: 121, baseType: !111, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !1679, line: 123, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1679, line: 96, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1713, file: !1679, line: 124, baseType: !1732, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1679, line: 102, size: 192, elements: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1733, file: !1679, line: 103, baseType: !431, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1733, file: !1679, line: 104, baseType: !1285, size: 32, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1733, file: !1679, line: 105, baseType: !551, size: 8, offset: 160)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1713, file: !1679, line: 125, baseType: !149, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !1679, line: 241, baseType: !1740, size: 320)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1710, file: !1679, line: 241, size: 320, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1740, file: !1679, line: 242, baseType: !111, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1740, file: !1679, line: 243, baseType: !111, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1740, file: !1679, line: 244, baseType: !1729, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1740, file: !1679, line: 245, baseType: !1732, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1740, file: !1679, line: 246, baseType: !341, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1679, line: 254, baseType: !1748, size: 256, offset: 1344)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !1679, line: 254, size: 256, elements: !1749)
!1749 = !{!1750, !1756}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1748, file: !1679, line: 255, baseType: !1751, size: 256)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1679, line: 128, size: 256, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1751, file: !1679, line: 129, baseType: !226, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1751, file: !1679, line: 130, baseType: !1755, size: 256)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !100)
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1679, line: 256, baseType: !1757, size: 256)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1679, line: 256, size: 256, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1757, file: !1679, line: 258, baseType: !53, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1757, file: !1679, line: 259, baseType: !1761, size: 128, offset: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1762, line: 22, size: 128, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1767}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1761, file: !1762, line: 23, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1762, line: 23, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1761, file: !1762, line: 24, baseType: !111, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1678, file: !1679, line: 274, baseType: !1769, size: 64, offset: 1600)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1679, line: 170, size: 192, elements: !1771)
!1771 = !{!1772, !1781, !1782}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1770, file: !1679, line: 171, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1679, line: 165, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!16, !1677, !1777, !1779, !1677}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1751)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1770, file: !1679, line: 172, baseType: !1677, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1770, file: !1679, line: 173, baseType: !1729, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1651, file: !1652, line: 138, baseType: !1677, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1651, file: !1652, line: 139, baseType: !1677, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1651, file: !1652, line: 140, baseType: !1677, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1651, file: !1652, line: 145, baseType: !1787, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1789, line: 13, size: 896, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1788, file: !1789, line: 14, baseType: !1285, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1788, file: !1789, line: 15, baseType: !11, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1788, file: !1789, line: 16, baseType: !11, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1788, file: !1789, line: 21, baseType: !25, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1788, file: !1789, line: 27, baseType: !111, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1788, file: !1789, line: 28, baseType: !111, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1788, file: !1789, line: 29, baseType: !25, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1788, file: !1789, line: 32, baseType: !700, size: 128, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1788, file: !1789, line: 33, baseType: !496, size: 32, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1788, file: !1789, line: 37, baseType: !25, size: 64, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1788, file: !1789, line: 44, baseType: !1802, size: 256, offset: 640)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1803, line: 15, size: 256, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1802, file: !1803, line: 16, baseType: !832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1802, file: !1803, line: 18, baseType: !16, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1802, file: !1803, line: 19, baseType: !16, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1802, file: !1803, line: 20, baseType: !16, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1802, file: !1803, line: 21, baseType: !16, size: 32, offset: 96)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1802, file: !1803, line: 22, baseType: !111, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !1803, line: 23, baseType: !111, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1651, file: !1652, line: 146, baseType: !1582, size: 64, offset: 1024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1651, file: !1652, line: 147, baseType: !1814, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1652, line: 25, size: 64, elements: !1816)
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1815, file: !1652, line: 26, baseType: !11, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1815, file: !1652, line: 27, baseType: !16, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1815, file: !1652, line: 28, baseType: !1820, offset: 64)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 0)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 149, baseType: !1824, size: 128, offset: 1152)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 149, size: 128, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1824, file: !1652, line: 150, baseType: !16, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1824, file: !1652, line: 151, baseType: !431, size: 128, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1272, file: !1273, line: 926, baseType: !1649, size: 64, offset: 8576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1272, file: !1273, line: 929, baseType: !1649, size: 64, offset: 8640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1272, file: !1273, line: 933, baseType: !1677, size: 64, offset: 8704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1272, file: !1273, line: 943, baseType: !106, size: 128, offset: 8768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1272, file: !1273, line: 945, baseType: !1833, size: 64, offset: 8896)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1273, line: 49, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1272, file: !1273, line: 956, baseType: !1836, size: 64, offset: 8960)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1273, line: 45, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1272, file: !1273, line: 959, baseType: !1839, size: 64, offset: 9024)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1273, line: 959, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1272, file: !1273, line: 962, baseType: !1842, size: 64, offset: 9088)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1273, line: 66, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1272, file: !1273, line: 966, baseType: !1845, size: 64, offset: 9152)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1847, line: 31, size: 576, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850, !1853, !1856, !1859, !1860, !1863, !1866, !1867}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1846, file: !1847, line: 32, baseType: !11, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1846, file: !1847, line: 33, baseType: !1851, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1847, line: 9, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1846, file: !1847, line: 34, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1847, line: 10, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1846, file: !1847, line: 35, baseType: !1857, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1847, line: 8, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1846, file: !1847, line: 36, baseType: !1559, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1846, file: !1847, line: 37, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1679, line: 34, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1846, file: !1847, line: 38, baseType: !1864, size: 64, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1847, line: 38, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1846, file: !1847, line: 39, baseType: !1864, size: 64, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1846, file: !1847, line: 40, baseType: !1868, size: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1847, line: 12, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1272, file: !1273, line: 969, baseType: !1871, size: 64, offset: 9216)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1873, line: 82, size: 7296, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1910, !1919, !1920, !1922, !1923, !1924, !1927, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1957, !1958, !1965, !1966, !1967, !1968, !1969, !1970}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1872, file: !1873, line: 83, baseType: !1285, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1872, file: !1873, line: 84, baseType: !11, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1872, file: !1873, line: 85, baseType: !16, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1872, file: !1873, line: 86, baseType: !53, size: 128, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1872, file: !1873, line: 88, baseType: !1546, size: 128, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1872, file: !1873, line: 91, baseType: !1271, size: 64, offset: 384)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1872, file: !1873, line: 94, baseType: !1882, size: 192, offset: 448)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1883, line: 30, size: 192, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1882, file: !1883, line: 31, baseType: !53, size: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1882, file: !1883, line: 32, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1888, line: 25, baseType: !1889)
!1888 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1888, line: 23, size: 64, elements: !1890)
!1890 = !{!1891}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1889, file: !1888, line: 24, baseType: !1428, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1872, file: !1873, line: 97, baseType: !696, size: 64, offset: 640)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1872, file: !1873, line: 100, baseType: !16, size: 32, offset: 704)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1872, file: !1873, line: 106, baseType: !16, size: 32, offset: 736)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1872, file: !1873, line: 107, baseType: !1271, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1872, file: !1873, line: 110, baseType: !16, size: 32, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1872, file: !1873, line: 111, baseType: !65, size: 32, offset: 864)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1872, file: !1873, line: 122, baseType: !65, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1872, file: !1873, line: 123, baseType: !65, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1872, file: !1873, line: 128, baseType: !16, size: 32, offset: 928)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1872, file: !1873, line: 129, baseType: !53, size: 128, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1872, file: !1873, line: 132, baseType: !1347, size: 512, offset: 1088)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1872, file: !1873, line: 133, baseType: !1356, size: 64, offset: 1600)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1872, file: !1873, line: 140, baseType: !1905, size: 256, offset: 1664)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 256, elements: !128)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1873, line: 38, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1906, file: !1873, line: 39, baseType: !483, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1906, file: !1873, line: 40, baseType: !483, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1872, file: !1873, line: 146, baseType: !1911, size: 192, offset: 1920)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1873, line: 66, size: 192, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1911, file: !1873, line: 67, baseType: !1914, size: 192)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1873, line: 47, size: 192, elements: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1914, file: !1873, line: 48, baseType: !27, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1914, file: !1873, line: 49, baseType: !27, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1914, file: !1873, line: 50, baseType: !27, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1872, file: !1873, line: 150, baseType: !1632, size: 640, offset: 2112)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1872, file: !1873, line: 153, baseType: !1921, size: 256, offset: 2752)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 256, elements: !100)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1872, file: !1873, line: 159, baseType: !1535, size: 64, offset: 3008)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1872, file: !1873, line: 162, baseType: !16, size: 32, offset: 3072)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1872, file: !1873, line: 164, baseType: !1925, size: 64, offset: 3136)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1873, line: 164, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1872, file: !1873, line: 175, baseType: !1928, size: 32, offset: 3200)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !454, line: 805, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 798, size: 32, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1929, file: !454, line: 803, baseType: !453, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1929, file: !454, line: 804, baseType: !37, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1872, file: !1873, line: 176, baseType: !483, size: 64, offset: 3264)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1872, file: !1873, line: 176, baseType: !483, size: 64, offset: 3328)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1872, file: !1873, line: 176, baseType: !483, size: 64, offset: 3392)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1872, file: !1873, line: 176, baseType: !483, size: 64, offset: 3456)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1872, file: !1873, line: 177, baseType: !483, size: 64, offset: 3520)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1872, file: !1873, line: 178, baseType: !483, size: 64, offset: 3584)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1872, file: !1873, line: 179, baseType: !1620, size: 128, offset: 3648)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1872, file: !1873, line: 180, baseType: !111, size: 64, offset: 3776)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1872, file: !1873, line: 180, baseType: !111, size: 64, offset: 3840)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1872, file: !1873, line: 180, baseType: !111, size: 64, offset: 3904)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1872, file: !1873, line: 180, baseType: !111, size: 64, offset: 3968)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1872, file: !1873, line: 181, baseType: !111, size: 64, offset: 4032)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1872, file: !1873, line: 181, baseType: !111, size: 64, offset: 4096)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1872, file: !1873, line: 181, baseType: !111, size: 64, offset: 4160)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1872, file: !1873, line: 181, baseType: !111, size: 64, offset: 4224)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1872, file: !1873, line: 182, baseType: !111, size: 64, offset: 4288)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1872, file: !1873, line: 182, baseType: !111, size: 64, offset: 4352)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1872, file: !1873, line: 182, baseType: !111, size: 64, offset: 4416)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1872, file: !1873, line: 182, baseType: !111, size: 64, offset: 4480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1872, file: !1873, line: 183, baseType: !111, size: 64, offset: 4544)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1872, file: !1873, line: 183, baseType: !111, size: 64, offset: 4608)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1872, file: !1873, line: 184, baseType: !1955, offset: 4672)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1956, line: 12, elements: !51)
!1956 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1872, file: !1873, line: 192, baseType: !485, size: 64, offset: 4672)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1872, file: !1873, line: 203, baseType: !1959, size: 2048, offset: 4736)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1960, size: 2048, elements: !108)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1961, line: 43, size: 128, elements: !1962)
!1961 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1960, file: !1961, line: 44, baseType: !389, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1960, file: !1961, line: 45, baseType: !389, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1872, file: !1873, line: 220, baseType: !551, size: 8, offset: 6784)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1872, file: !1873, line: 221, baseType: !1260, size: 16, offset: 6800)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1872, file: !1873, line: 222, baseType: !1260, size: 16, offset: 6816)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1872, file: !1873, line: 224, baseType: !1032, size: 64, offset: 6848)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1872, file: !1873, line: 227, baseType: !21, size: 192, offset: 6912)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1872, file: !1873, line: 233, baseType: !21, size: 192, offset: 7104)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1272, file: !1273, line: 970, baseType: !1972, size: 64, offset: 9280)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1873, line: 20, size: 16576, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1973, file: !1873, line: 21, baseType: !37)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1973, file: !1873, line: 22, baseType: !1285, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1973, file: !1873, line: 23, baseType: !1546, size: 128, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1973, file: !1873, line: 24, baseType: !1979, size: 16384, offset: 192)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1980, size: 16384, elements: !346)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1883, line: 49, size: 256, elements: !1981)
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1980, file: !1883, line: 50, baseType: !1983, size: 256)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1883, line: 35, size: 256, elements: !1984)
!1984 = !{!1985, !1992, !1993, !1999}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1983, file: !1883, line: 37, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1987, line: 19, baseType: !1988)
!1987 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1987, line: 18, baseType: !1990)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !16}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1983, file: !1883, line: 38, baseType: !111, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1983, file: !1883, line: 44, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1987, line: 22, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1987, line: 21, baseType: !1997)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1983, file: !1883, line: 46, baseType: !1887, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1272, file: !1273, line: 971, baseType: !1887, size: 64, offset: 9344)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1272, file: !1273, line: 972, baseType: !1887, size: 64, offset: 9408)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1272, file: !1273, line: 974, baseType: !1887, size: 64, offset: 9472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1272, file: !1273, line: 975, baseType: !1882, size: 192, offset: 9536)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1272, file: !1273, line: 976, baseType: !111, size: 64, offset: 9728)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1272, file: !1273, line: 977, baseType: !387, size: 64, offset: 9792)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1272, file: !1273, line: 978, baseType: !65, size: 32, offset: 9856)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1272, file: !1273, line: 980, baseType: !434, size: 64, offset: 9920)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1272, file: !1273, line: 989, baseType: !2009, size: 128, offset: 9984)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2010, line: 35, size: 128, elements: !2011)
!2010 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2011 = !{!2012, !2013, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2009, file: !2010, line: 36, baseType: !16, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2009, file: !2010, line: 37, baseType: !11, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2009, file: !2010, line: 38, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2010, line: 23, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1272, file: !1273, line: 992, baseType: !483, size: 64, offset: 10112)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1272, file: !1273, line: 993, baseType: !483, size: 64, offset: 10176)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1272, file: !1273, line: 996, baseType: !37, offset: 10240)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1272, file: !1273, line: 999, baseType: !832, offset: 10240)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1272, file: !1273, line: 1001, baseType: !2022, size: 64, offset: 10240)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1273, line: 636, size: 64, elements: !2023)
!2023 = !{!2024}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2022, file: !1273, line: 637, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1272, file: !1273, line: 1005, baseType: !811, size: 128, offset: 10304)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1272, file: !1273, line: 1007, baseType: !1271, size: 64, offset: 10432)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1272, file: !1273, line: 1009, baseType: !2029, size: 64, offset: 10496)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1273, line: 1009, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1272, file: !1273, line: 1043, baseType: !226, size: 64, offset: 10560)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1272, file: !1273, line: 1046, baseType: !2033, size: 64, offset: 10624)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1273, line: 41, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1272, file: !1273, line: 1050, baseType: !2036, size: 64, offset: 10688)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1273, line: 42, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1272, file: !1273, line: 1054, baseType: !2039, size: 64, offset: 10752)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1273, line: 55, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1272, file: !1273, line: 1056, baseType: !2042, size: 64, offset: 10816)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1273, line: 40, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1272, file: !1273, line: 1058, baseType: !2045, size: 64, offset: 10880)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2047, line: 99, size: 704, elements: !2048)
!2047 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054, !2055, !2074, !2075}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2046, file: !2047, line: 100, baseType: !25, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2046, file: !2047, line: 101, baseType: !11, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2046, file: !2047, line: 102, baseType: !11, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2046, file: !2047, line: 105, baseType: !37, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2046, file: !2047, line: 107, baseType: !118, size: 16, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2046, file: !2047, line: 109, baseType: !801, size: 128, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2046, file: !2047, line: 110, baseType: !2056, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2047, line: 73, size: 448, elements: !2058)
!2058 = !{!2059, !2062, !2063, !2068, !2073}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2057, file: !2047, line: 74, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2047, line: 74, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2057, file: !2047, line: 75, baseType: !2045, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2047, line: 83, baseType: !2064, size: 128, offset: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2047, line: 83, size: 128, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2064, file: !2047, line: 84, baseType: !53, size: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2064, file: !2047, line: 85, baseType: !993, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2047, line: 87, baseType: !2069, size: 128, offset: 256)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2047, line: 87, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2069, file: !2047, line: 88, baseType: !700, size: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2069, file: !2047, line: 89, baseType: !431, size: 128, align: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !2047, line: 92, baseType: !65, size: 32, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2046, file: !2047, line: 111, baseType: !696, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2046, file: !2047, line: 113, baseType: !197, size: 256, offset: 448)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1272, file: !1273, line: 1061, baseType: !2077, size: 64, offset: 10944)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1273, line: 43, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1272, file: !1273, line: 1064, baseType: !111, size: 64, offset: 11008)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1272, file: !1273, line: 1065, baseType: !2081, size: 64, offset: 11072)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1883, line: 14, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1883, line: 12, size: 384, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !1883, line: 13, baseType: !2086, size: 384)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !1883, line: 13, size: 384, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2086, file: !1883, line: 13, baseType: !16, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2086, file: !1883, line: 13, baseType: !16, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2086, file: !1883, line: 13, baseType: !16, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2086, file: !1883, line: 13, baseType: !2092, size: 256, offset: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2093, line: 32, size: 256, elements: !2094)
!2093 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !{!2095, !2100, !2113, !2119, !2128, !2148, !2153}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2092, file: !2093, line: 37, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 34, size: 64, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2096, file: !2093, line: 35, baseType: !1524, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2096, file: !2093, line: 36, baseType: !502, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2092, file: !2093, line: 45, baseType: !2101, size: 192)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 40, size: 192, elements: !2102)
!2102 = !{!2103, !2105, !2106, !2112}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2101, file: !2093, line: 41, baseType: !2104, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !374, line: 95, baseType: !16)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2101, file: !2093, line: 42, baseType: !16, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2101, file: !2093, line: 43, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2093, line: 11, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2093, line: 8, size: 64, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2108, file: !2093, line: 9, baseType: !16, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2108, file: !2093, line: 10, baseType: !226, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2101, file: !2093, line: 44, baseType: !16, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2092, file: !2093, line: 52, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 48, size: 128, elements: !2115)
!2115 = !{!2116, !2117, !2118}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2114, file: !2093, line: 49, baseType: !1524, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2114, file: !2093, line: 50, baseType: !502, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2114, file: !2093, line: 51, baseType: !2107, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2092, file: !2093, line: 61, baseType: !2120, size: 256)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 55, size: 256, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2127}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2120, file: !2093, line: 56, baseType: !1524, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2120, file: !2093, line: 57, baseType: !502, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2120, file: !2093, line: 58, baseType: !16, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2120, file: !2093, line: 59, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !374, line: 94, baseType: !375)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2120, file: !2093, line: 60, baseType: !2126, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2092, file: !2093, line: 95, baseType: !2129, size: 256)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 64, size: 256, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2129, file: !2093, line: 65, baseType: !226, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !2093, line: 77, baseType: !2133, size: 192, offset: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !2093, line: 77, size: 192, elements: !2134)
!2134 = !{!2135, !2136, !2143}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2133, file: !2093, line: 82, baseType: !1260, size: 16)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2133, file: !2093, line: 88, baseType: !2137, size: 192)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2093, line: 84, size: 192, elements: !2138)
!2138 = !{!2139, !2141, !2142}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2137, file: !2093, line: 85, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !1390)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2137, file: !2093, line: 86, baseType: !226, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2137, file: !2093, line: 87, baseType: !226, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2133, file: !2093, line: 93, baseType: !2144, size: 96)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2093, line: 90, size: 96, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2144, file: !2093, line: 91, baseType: !2140, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2144, file: !2093, line: 92, baseType: !64, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2092, file: !2093, line: 101, baseType: !2149, size: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 98, size: 128, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2149, file: !2093, line: 99, baseType: !376, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2149, file: !2093, line: 100, baseType: !16, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2092, file: !2093, line: 108, baseType: !2154, size: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 104, size: 128, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2154, file: !2093, line: 105, baseType: !226, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2154, file: !2093, line: 106, baseType: !16, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2154, file: !2093, line: 107, baseType: !65, size: 32, offset: 96)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1272, file: !1273, line: 1067, baseType: !1955, offset: 11136)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1272, file: !1273, line: 1099, baseType: !2161, size: 64, offset: 11136)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1273, line: 56, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1272, file: !1273, line: 1103, baseType: !53, size: 128, offset: 11200)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1272, file: !1273, line: 1104, baseType: !2165, size: 64, offset: 11328)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1273, line: 46, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1272, file: !1273, line: 1105, baseType: !21, size: 192, offset: 11392)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1272, file: !1273, line: 1106, baseType: !65, size: 32, offset: 11584)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1272, file: !1273, line: 1109, baseType: !2170, size: 128, offset: 11648)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2171, size: 128, elements: !128)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1273, line: 51, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1272, file: !1273, line: 1110, baseType: !21, size: 192, offset: 11776)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1272, file: !1273, line: 1111, baseType: !53, size: 128, offset: 11968)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1272, file: !1273, line: 1173, baseType: !2176, size: 64, offset: 12096)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2178, line: 62, size: 256, align: 256, elements: !2179)
!2178 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2181, !2182, !2187}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2177, file: !2178, line: 75, baseType: !64, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2177, file: !2178, line: 90, baseType: !64, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2177, file: !2178, line: 124, baseType: !2183, size: 64, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2178, line: 109, size: 64, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2183, file: !2178, line: 110, baseType: !484, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2183, file: !2178, line: 112, baseType: !484, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !2178, line: 144, baseType: !64, size: 32, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1272, file: !1273, line: 1174, baseType: !152, size: 32, offset: 12160)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1272, file: !1273, line: 1179, baseType: !111, size: 64, offset: 12224)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1272, file: !1273, line: 1182, baseType: !2191, size: 128, offset: 12288)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1214, line: 76, size: 128, elements: !2192)
!2192 = !{!2193, !2198, !2199}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2191, file: !1214, line: 85, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2195, line: 7, size: 64, elements: !2196)
!2195 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2194, file: !2195, line: 12, baseType: !1425, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2191, file: !1214, line: 88, baseType: !551, size: 8, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2191, file: !1214, line: 95, baseType: !551, size: 8, offset: 72)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !1273, line: 1184, baseType: !2201, size: 128, offset: 12416)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !1273, line: 1184, size: 128, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2201, file: !1273, line: 1185, baseType: !1285, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2201, file: !1273, line: 1186, baseType: !431, size: 128, align: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1272, file: !1273, line: 1190, baseType: !2206, size: 64, offset: 12544)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1273, line: 53, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1272, file: !1273, line: 1192, baseType: !2209, size: 128, offset: 12608)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1214, line: 64, size: 128, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2209, file: !1214, line: 65, baseType: !783, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2209, file: !1214, line: 67, baseType: !64, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2209, file: !1214, line: 68, baseType: !64, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1272, file: !1273, line: 1206, baseType: !16, size: 32, offset: 12736)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1272, file: !1273, line: 1207, baseType: !16, size: 32, offset: 12768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1272, file: !1273, line: 1209, baseType: !111, size: 64, offset: 12800)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1272, file: !1273, line: 1219, baseType: !483, size: 64, offset: 12864)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1272, file: !1273, line: 1220, baseType: !483, size: 64, offset: 12928)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1272, file: !1273, line: 1317, baseType: !16, size: 32, offset: 12992)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1272, file: !1273, line: 1319, baseType: !1271, size: 64, offset: 13056)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1272, file: !1273, line: 1322, baseType: !2222, size: 64, offset: 13120)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2224, line: 56, size: 512, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2234}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2223, file: !2224, line: 57, baseType: !2222, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2223, file: !2224, line: 58, baseType: !226, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2223, file: !2224, line: 59, baseType: !111, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2223, file: !2224, line: 60, baseType: !111, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2223, file: !2224, line: 61, baseType: !872, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2223, file: !2224, line: 62, baseType: !65, size: 32, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2223, file: !2224, line: 63, baseType: !2233, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !12, line: 153, baseType: !483)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2223, file: !2224, line: 64, baseType: !2235, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1272, file: !1273, line: 1326, baseType: !1285, size: 32, offset: 13184)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1272, file: !1273, line: 1342, baseType: !226, size: 64, offset: 13248)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1272, file: !1273, line: 1343, baseType: !484, size: 64, offset: 13312)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1272, file: !1273, line: 1344, baseType: !483, size: 64, offset: 13376)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1272, file: !1273, line: 1345, baseType: !484, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1272, file: !1273, line: 1346, baseType: !484, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1272, file: !1273, line: 1347, baseType: !484, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1272, file: !1273, line: 1348, baseType: !431, size: 128, align: 64, offset: 13504)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1272, file: !1273, line: 1358, baseType: !2246, size: 34816, offset: 13824)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2247, line: 485, size: 34816, elements: !2248)
!2247 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !{!2249, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2278, !2279, !2280, !2281, !2282, !2283, !2286, !2287, !2288}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2246, file: !2247, line: 487, baseType: !2250, size: 192)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2251, size: 192, elements: !342)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2252, line: 16, size: 64, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2251, file: !2252, line: 17, baseType: !911, size: 16)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2251, file: !2252, line: 18, baseType: !911, size: 16, offset: 16)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2251, file: !2252, line: 19, baseType: !911, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2251, file: !2252, line: 19, baseType: !911, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2251, file: !2252, line: 19, baseType: !911, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2251, file: !2252, line: 19, baseType: !911, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2251, file: !2252, line: 19, baseType: !911, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2251, file: !2252, line: 20, baseType: !911, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2251, file: !2252, line: 20, baseType: !911, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2251, file: !2252, line: 20, baseType: !911, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2251, file: !2252, line: 20, baseType: !911, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2251, file: !2252, line: 20, baseType: !911, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2251, file: !2252, line: 20, baseType: !911, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2246, file: !2247, line: 491, baseType: !111, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2246, file: !2247, line: 495, baseType: !118, size: 16, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2246, file: !2247, line: 496, baseType: !118, size: 16, offset: 272)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2246, file: !2247, line: 497, baseType: !118, size: 16, offset: 288)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2246, file: !2247, line: 498, baseType: !118, size: 16, offset: 304)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2246, file: !2247, line: 502, baseType: !111, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2246, file: !2247, line: 503, baseType: !111, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2246, file: !2247, line: 514, baseType: !2275, size: 256, offset: 448)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2276, size: 256, elements: !100)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2247, line: 483, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2246, file: !2247, line: 516, baseType: !111, size: 64, offset: 704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2246, file: !2247, line: 518, baseType: !111, size: 64, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2246, file: !2247, line: 520, baseType: !111, size: 64, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2246, file: !2247, line: 521, baseType: !111, size: 64, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2246, file: !2247, line: 522, baseType: !111, size: 64, offset: 960)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2246, file: !2247, line: 528, baseType: !2284, size: 64, offset: 1024)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2247, line: 10, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2246, file: !2247, line: 535, baseType: !111, size: 64, offset: 1088)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2246, file: !2247, line: 537, baseType: !65, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2246, file: !2247, line: 540, baseType: !2289, size: 33280, offset: 1536)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2290, line: 317, size: 33280, elements: !2291)
!2290 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2289, file: !2290, line: 330, baseType: !65, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2289, file: !2290, line: 337, baseType: !111, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2289, file: !2290, line: 348, baseType: !2295, size: 32768, offset: 512)
!2295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2290, line: 304, size: 32768, elements: !2296)
!2296 = !{!2297, !2312, !2351, !2401, !2414}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2295, file: !2290, line: 305, baseType: !2298, size: 896)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2290, line: 12, size: 896, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2311}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2298, file: !2290, line: 13, baseType: !152, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2298, file: !2290, line: 14, baseType: !152, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2298, file: !2290, line: 15, baseType: !152, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2298, file: !2290, line: 16, baseType: !152, size: 32, offset: 96)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2298, file: !2290, line: 17, baseType: !152, size: 32, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2298, file: !2290, line: 18, baseType: !152, size: 32, offset: 160)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2298, file: !2290, line: 19, baseType: !152, size: 32, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2298, file: !2290, line: 22, baseType: !2308, size: 640, offset: 224)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 640, elements: !2309)
!2309 = !{!2310}
!2310 = !DISubrange(count: 20)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2298, file: !2290, line: 25, baseType: !152, size: 32, offset: 864)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2295, file: !2290, line: 306, baseType: !2313, size: 4096, align: 128)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2290, line: 34, size: 4096, align: 128, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2334, !2335, !2336, !2340, !2342, !2346}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2313, file: !2290, line: 35, baseType: !911, size: 16)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2313, file: !2290, line: 36, baseType: !911, size: 16, offset: 16)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2313, file: !2290, line: 37, baseType: !911, size: 16, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2313, file: !2290, line: 38, baseType: !911, size: 16, offset: 48)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2313, file: !2290, line: 39, baseType: !2320, size: 128, offset: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2313, file: !2290, line: 39, size: 128, elements: !2321)
!2321 = !{!2322, !2327}
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !2290, line: 40, baseType: !2323, size: 128)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2320, file: !2290, line: 40, size: 128, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2323, file: !2290, line: 41, baseType: !483, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2323, file: !2290, line: 42, baseType: !483, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !2290, line: 44, baseType: !2328, size: 128)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2320, file: !2290, line: 44, size: 128, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2328, file: !2290, line: 45, baseType: !152, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2328, file: !2290, line: 46, baseType: !152, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2328, file: !2290, line: 47, baseType: !152, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2328, file: !2290, line: 48, baseType: !152, size: 32, offset: 96)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2313, file: !2290, line: 51, baseType: !152, size: 32, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2313, file: !2290, line: 52, baseType: !152, size: 32, offset: 224)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2313, file: !2290, line: 55, baseType: !2337, size: 1024, offset: 256)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !2338)
!2338 = !{!2339}
!2339 = !DISubrange(count: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2313, file: !2290, line: 58, baseType: !2341, size: 2048, offset: 1280)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2048, elements: !346)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2313, file: !2290, line: 60, baseType: !2343, size: 384, offset: 3328)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !2344)
!2344 = !{!2345}
!2345 = !DISubrange(count: 12)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2313, file: !2290, line: 62, baseType: !2347, size: 384, offset: 3712)
!2347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2313, file: !2290, line: 62, size: 384, elements: !2348)
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2347, file: !2290, line: 63, baseType: !2343, size: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2347, file: !2290, line: 64, baseType: !2343, size: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2295, file: !2290, line: 307, baseType: !2352, size: 1088)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2290, line: 79, size: 1088, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2400}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2352, file: !2290, line: 80, baseType: !152, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2352, file: !2290, line: 81, baseType: !152, size: 32, offset: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2352, file: !2290, line: 82, baseType: !152, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2352, file: !2290, line: 83, baseType: !152, size: 32, offset: 96)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2352, file: !2290, line: 84, baseType: !152, size: 32, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2352, file: !2290, line: 85, baseType: !152, size: 32, offset: 160)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2352, file: !2290, line: 86, baseType: !152, size: 32, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2352, file: !2290, line: 88, baseType: !2308, size: 640, offset: 224)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2352, file: !2290, line: 89, baseType: !213, size: 8, offset: 864)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2352, file: !2290, line: 90, baseType: !213, size: 8, offset: 872)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2352, file: !2290, line: 91, baseType: !213, size: 8, offset: 880)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2352, file: !2290, line: 92, baseType: !213, size: 8, offset: 888)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2352, file: !2290, line: 93, baseType: !213, size: 8, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2352, file: !2290, line: 94, baseType: !213, size: 8, offset: 904)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2352, file: !2290, line: 95, baseType: !2369, size: 64, offset: 960)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2371, line: 11, size: 128, elements: !2372)
!2371 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2370, file: !2371, line: 12, baseType: !376, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2370, file: !2371, line: 13, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2377, line: 56, size: 1344, elements: !2378)
!2377 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2376, file: !2377, line: 61, baseType: !111, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2376, file: !2377, line: 62, baseType: !111, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2376, file: !2377, line: 63, baseType: !111, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2376, file: !2377, line: 64, baseType: !111, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2376, file: !2377, line: 65, baseType: !111, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2376, file: !2377, line: 66, baseType: !111, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2376, file: !2377, line: 68, baseType: !111, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2376, file: !2377, line: 69, baseType: !111, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2376, file: !2377, line: 70, baseType: !111, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2376, file: !2377, line: 71, baseType: !111, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2376, file: !2377, line: 72, baseType: !111, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2376, file: !2377, line: 73, baseType: !111, size: 64, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2376, file: !2377, line: 74, baseType: !111, size: 64, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2376, file: !2377, line: 75, baseType: !111, size: 64, offset: 832)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2376, file: !2377, line: 76, baseType: !111, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2376, file: !2377, line: 81, baseType: !111, size: 64, offset: 960)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2376, file: !2377, line: 83, baseType: !111, size: 64, offset: 1024)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2376, file: !2377, line: 84, baseType: !111, size: 64, offset: 1088)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2376, file: !2377, line: 85, baseType: !111, size: 64, offset: 1152)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2376, file: !2377, line: 86, baseType: !111, size: 64, offset: 1216)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2376, file: !2377, line: 87, baseType: !111, size: 64, offset: 1280)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2352, file: !2290, line: 96, baseType: !152, size: 32, offset: 1024)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2295, file: !2290, line: 308, baseType: !2402, size: 4608, align: 512)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2290, line: 289, size: 4608, align: 512, elements: !2403)
!2403 = !{!2404, !2405, !2412}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2402, file: !2290, line: 290, baseType: !2313, size: 4096, align: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2402, file: !2290, line: 291, baseType: !2406, size: 512, offset: 4096)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2290, line: 268, size: 512, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2406, file: !2290, line: 269, baseType: !483, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2406, file: !2290, line: 270, baseType: !483, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2406, file: !2290, line: 271, baseType: !2411, size: 384, offset: 128)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 384, elements: !1725)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2402, file: !2290, line: 292, baseType: !2413, offset: 4608)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, elements: !1821)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2295, file: !2290, line: 309, baseType: !2415, size: 32768)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 32768, elements: !2416)
!2416 = !{!2417}
!2417 = !DISubrange(count: 4096)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1268, file: !785, line: 378, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1264, file: !785, line: 384, baseType: !1604, size: 192, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1036, file: !785, line: 500, baseType: !37, offset: 6656)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1036, file: !785, line: 501, baseType: !2423, size: 64, offset: 6656)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !785, line: 387, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1036, file: !785, line: 516, baseType: !1582, size: 64, offset: 6720)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1036, file: !785, line: 519, baseType: !417, size: 64, offset: 6784)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1036, file: !785, line: 521, baseType: !2428, size: 64, offset: 6848)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !785, line: 521, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1036, file: !785, line: 545, baseType: !11, size: 32, offset: 6912)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1036, file: !785, line: 548, baseType: !551, size: 8, offset: 6944)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1036, file: !785, line: 550, baseType: !2433, offset: 6952)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2434, line: 142, elements: !51)
!2434 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1036, file: !785, line: 554, baseType: !197, size: 256, offset: 6976)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1036, file: !785, line: 557, baseType: !152, size: 32, offset: 7232)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1033, file: !785, line: 565, baseType: !2438, offset: 7296)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !2439)
!2439 = !{!2440}
!2440 = !DISubrange(count: -1)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1029, file: !785, line: 151, baseType: !11, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1022, file: !785, line: 156, baseType: !37, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !785, line: 159, baseType: !2444, size: 128)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !785, line: 159, size: 128, elements: !2445)
!2445 = !{!2446, !2517}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2444, file: !785, line: 161, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2449, line: 110, size: 1152, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451, !2461, !2482, !2483, !2484, !2491, !2492, !2504, !2505, !2506}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2448, file: !2449, line: 111, baseType: !2452, size: 384)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2449, line: 19, size: 384, elements: !2453)
!2453 = !{!2454, !2456, !2457, !2458, !2459, !2460}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2452, file: !2449, line: 20, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2452, file: !2449, line: 21, baseType: !2455, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2452, file: !2449, line: 22, baseType: !2455, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2452, file: !2449, line: 23, baseType: !111, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2452, file: !2449, line: 24, baseType: !111, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2452, file: !2449, line: 25, baseType: !111, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2448, file: !2449, line: 112, baseType: !2462, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2464, line: 105, size: 128, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2463, file: !2464, line: 110, baseType: !111, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2463, file: !2464, line: 118, baseType: !2468, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2464, line: 95, size: 448, elements: !2470)
!2470 = !{!2471, !2472, !2477, !2478, !2479, !2480, !2481}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2469, file: !2464, line: 96, baseType: !25, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2469, file: !2464, line: 97, baseType: !2473, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2464, line: 60, baseType: !2475)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2462}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2469, file: !2464, line: 98, baseType: !2473, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2469, file: !2464, line: 99, baseType: !551, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2469, file: !2464, line: 100, baseType: !551, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2469, file: !2464, line: 101, baseType: !431, size: 128, align: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2469, file: !2464, line: 102, baseType: !2462, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2448, file: !2449, line: 113, baseType: !2463, size: 128, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2448, file: !2449, line: 114, baseType: !1604, size: 192, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2448, file: !2449, line: 115, baseType: !2485, size: 32, offset: 768)
!2485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2449, line: 59, baseType: !65, size: 32, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!2488 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!2489 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!2490 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2448, file: !2449, line: 116, baseType: !65, size: 32, offset: 800)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2448, file: !2449, line: 117, baseType: !2493, size: 64, offset: 832)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2495)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2449, line: 67, size: 256, elements: !2496)
!2496 = !{!2497, !2498, !2502, !2503}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2495, file: !2449, line: 73, baseType: !892, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2495, file: !2449, line: 78, baseType: !2499, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !2447}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2495, file: !2449, line: 83, baseType: !2499, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2495, file: !2449, line: 89, baseType: !1085, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2448, file: !2449, line: 118, baseType: !226, size: 64, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2448, file: !2449, line: 119, baseType: !16, size: 32, offset: 960)
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !2449, line: 120, baseType: !2507, size: 128, offset: 1024)
!2507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !2449, line: 120, size: 128, elements: !2508)
!2508 = !{!2509, !2515}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2507, file: !2449, line: 121, baseType: !2510, size: 128)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2511, line: 6, size: 128, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2510, file: !2511, line: 7, baseType: !483, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2510, file: !2511, line: 8, baseType: !483, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2507, file: !2449, line: 122, baseType: !2516)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2510, elements: !1821)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2444, file: !785, line: 162, baseType: !226, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !789, file: !785, line: 176, baseType: !431, size: 128, align: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !785, line: 179, baseType: !2520, size: 32, offset: 384)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !785, line: 179, size: 32, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2520, file: !785, line: 184, baseType: !11, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2520, file: !785, line: 192, baseType: !65, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2520, file: !785, line: 194, baseType: !65, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2520, file: !785, line: 195, baseType: !16, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !784, file: !785, line: 199, baseType: !11, size: 32, offset: 416)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !718, file: !419, line: 1964, baseType: !2528, size: 64, offset: 1344)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!376, !658, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2533, line: 12, size: 256, elements: !2534)
!2533 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2534 = !{!2535, !2536, !2537, !2538, !2539}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2532, file: !2533, line: 13, baseType: !806, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2532, file: !2533, line: 16, baseType: !16, size: 32, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2532, file: !2533, line: 23, baseType: !111, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2532, file: !2533, line: 30, baseType: !111, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2532, file: !2533, line: 33, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !785, line: 27, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !718, file: !419, line: 1966, baseType: !2528, size: 64, offset: 1408)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !659, file: !419, line: 1424, baseType: !2544, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2547, line: 322, size: 704, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2600, !2604, !2608, !2609, !2610, !2611, !2612, !2617, !2622, !2626}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2546, file: !2547, line: 323, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!16, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2547, line: 294, size: 1600, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2585, !2586, !2587}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2554, file: !2547, line: 295, baseType: !700, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2554, file: !2547, line: 296, baseType: !53, size: 128, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2554, file: !2547, line: 297, baseType: !53, size: 128, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2554, file: !2547, line: 298, baseType: !53, size: 128, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2554, file: !2547, line: 299, baseType: !21, size: 192, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2554, file: !2547, line: 300, baseType: !37, offset: 704)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2554, file: !2547, line: 301, baseType: !11, size: 32, offset: 704)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2554, file: !2547, line: 302, baseType: !658, size: 64, offset: 768)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2554, file: !2547, line: 303, baseType: !2565, size: 64, offset: 832)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2547, line: 68, size: 64, elements: !2566)
!2566 = !{!2567, !2579}
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2565, file: !2547, line: 69, baseType: !2568, size: 32)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2565, file: !2547, line: 69, size: 32, elements: !2569)
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2568, file: !2547, line: 70, baseType: !496, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2568, file: !2547, line: 71, baseType: !504, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2568, file: !2547, line: 72, baseType: !2573, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2574, line: 24, baseType: !2575)
!2574 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2574, line: 22, size: 32, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2575, file: !2574, line: 23, baseType: !2578, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2574, line: 20, baseType: !502)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2565, file: !2547, line: 74, baseType: !2580, size: 32, offset: 32)
!2580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2547, line: 54, baseType: !65, size: 32, elements: !2581)
!2581 = !{!2582, !2583, !2584}
!2582 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2583 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2584 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2554, file: !2547, line: 304, baseType: !592, size: 64, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2554, file: !2547, line: 305, baseType: !111, size: 64, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2554, file: !2547, line: 306, baseType: !2588, size: 576, offset: 1024)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2547, line: 205, size: 576, elements: !2589)
!2589 = !{!2590, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2588, file: !2547, line: 206, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2547, line: 66, baseType: !35)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2588, file: !2547, line: 207, baseType: !2591, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2588, file: !2547, line: 208, baseType: !2591, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2588, file: !2547, line: 209, baseType: !2591, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2588, file: !2547, line: 210, baseType: !2591, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2588, file: !2547, line: 211, baseType: !2591, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2588, file: !2547, line: 212, baseType: !2591, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2588, file: !2547, line: 213, baseType: !599, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2588, file: !2547, line: 214, baseType: !599, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2546, file: !2547, line: 324, baseType: !2601, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!2553, !658, !16}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2546, file: !2547, line: 325, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2553}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2546, file: !2547, line: 326, baseType: !2550, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2546, file: !2547, line: 327, baseType: !2550, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2546, file: !2547, line: 328, baseType: !2550, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2546, file: !2547, line: 329, baseType: !747, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2546, file: !2547, line: 332, baseType: !2613, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!2616, !490}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2546, file: !2547, line: 333, baseType: !2618, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!16, !490, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2546, file: !2547, line: 335, baseType: !2623, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!16, !490, !2616}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2546, file: !2547, line: 337, baseType: !2627, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!16, !658, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !659, file: !419, line: 1425, baseType: !2632, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2547, line: 428, size: 704, elements: !2635)
!2635 = !{!2636, !2640, !2641, !2645, !2646, !2647, !2662, !2685, !2689, !2690, !2713}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2634, file: !2547, line: 429, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!16, !658, !16, !16, !608}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2634, file: !2547, line: 430, baseType: !747, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2634, file: !2547, line: 431, baseType: !2642, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!16, !658, !65}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2634, file: !2547, line: 432, baseType: !2642, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2634, file: !2547, line: 433, baseType: !747, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2634, file: !2547, line: 434, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!16, !658, !16, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2547, line: 415, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2652, file: !2547, line: 416, baseType: !16, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2652, file: !2547, line: 417, baseType: !65, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2652, file: !2547, line: 418, baseType: !65, size: 32, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2652, file: !2547, line: 420, baseType: !65, size: 32, offset: 96)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2652, file: !2547, line: 421, baseType: !65, size: 32, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2652, file: !2547, line: 422, baseType: !65, size: 32, offset: 160)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2652, file: !2547, line: 423, baseType: !65, size: 32, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2652, file: !2547, line: 424, baseType: !65, size: 32, offset: 224)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2634, file: !2547, line: 435, baseType: !2663, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!16, !658, !2565, !2666}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2547, line: 343, size: 960, elements: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2667, file: !2547, line: 344, baseType: !16, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2667, file: !2547, line: 345, baseType: !483, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2667, file: !2547, line: 346, baseType: !483, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2667, file: !2547, line: 347, baseType: !483, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2667, file: !2547, line: 348, baseType: !483, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2667, file: !2547, line: 349, baseType: !483, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2667, file: !2547, line: 350, baseType: !483, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2667, file: !2547, line: 351, baseType: !31, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2667, file: !2547, line: 353, baseType: !31, size: 64, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2667, file: !2547, line: 354, baseType: !16, size: 32, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2667, file: !2547, line: 355, baseType: !16, size: 32, offset: 608)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2667, file: !2547, line: 356, baseType: !483, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2667, file: !2547, line: 357, baseType: !483, size: 64, offset: 704)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2667, file: !2547, line: 358, baseType: !483, size: 64, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2667, file: !2547, line: 359, baseType: !31, size: 64, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2667, file: !2547, line: 360, baseType: !16, size: 32, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2634, file: !2547, line: 436, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!16, !658, !2630, !2666}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2634, file: !2547, line: 438, baseType: !2663, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2634, file: !2547, line: 439, baseType: !2691, size: 64, offset: 576)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!16, !658, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2547, line: 409, size: 1408, elements: !2696)
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2695, file: !2547, line: 410, baseType: !65, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2695, file: !2547, line: 411, baseType: !2699, size: 1344, offset: 64)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2700, size: 1344, elements: !342)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2547, line: 395, size: 448, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2712}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2700, file: !2547, line: 396, baseType: !65, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2700, file: !2547, line: 397, baseType: !65, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2700, file: !2547, line: 399, baseType: !65, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2700, file: !2547, line: 400, baseType: !65, size: 32, offset: 96)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2700, file: !2547, line: 401, baseType: !65, size: 32, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2700, file: !2547, line: 402, baseType: !65, size: 32, offset: 160)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2700, file: !2547, line: 403, baseType: !65, size: 32, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2700, file: !2547, line: 404, baseType: !485, size: 64, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2700, file: !2547, line: 405, baseType: !2711, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !12, line: 126, baseType: !483)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2700, file: !2547, line: 406, baseType: !2711, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2634, file: !2547, line: 440, baseType: !2642, size: 64, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !659, file: !419, line: 1426, baseType: !2715, size: 64, offset: 576)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2717)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !419, line: 49, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !659, file: !419, line: 1427, baseType: !111, size: 64, offset: 640)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !659, file: !419, line: 1428, baseType: !111, size: 64, offset: 704)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !659, file: !419, line: 1429, baseType: !111, size: 64, offset: 768)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !659, file: !419, line: 1430, baseType: !448, size: 64, offset: 832)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !659, file: !419, line: 1431, baseType: !826, size: 256, offset: 896)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !659, file: !419, line: 1432, baseType: !16, size: 32, offset: 1152)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !659, file: !419, line: 1433, baseType: !11, size: 32, offset: 1184)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !659, file: !419, line: 1437, baseType: !2726, size: 64, offset: 1216)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !419, line: 1437, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !659, file: !419, line: 1449, baseType: !2731, size: 64, offset: 1280)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !464, line: 34, size: 64, elements: !2732)
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2731, file: !464, line: 35, baseType: !467, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !659, file: !419, line: 1450, baseType: !53, size: 128, offset: 1344)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !659, file: !419, line: 1451, baseType: !2736, size: 64, offset: 1472)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !419, line: 699, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !659, file: !419, line: 1452, baseType: !2042, size: 64, offset: 1536)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !659, file: !419, line: 1453, baseType: !2740, size: 64, offset: 1600)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !419, line: 1453, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !659, file: !419, line: 1454, baseType: !700, size: 128, offset: 1664)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !659, file: !419, line: 1455, baseType: !65, size: 32, offset: 1792)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !659, file: !419, line: 1456, baseType: !2745, size: 2432, offset: 1856)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2547, line: 518, size: 2432, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2751, !2783}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !2547, line: 519, baseType: !65, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2745, file: !2547, line: 520, baseType: !826, size: 256, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2745, file: !2547, line: 521, baseType: !2750, size: 192, offset: 320)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 192, elements: !342)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2745, file: !2547, line: 522, baseType: !2752, size: 1728, offset: 512)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2753, size: 1728, elements: !342)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2547, line: 222, size: 576, elements: !2754)
!2754 = !{!2755, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2753, file: !2547, line: 223, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2547, line: 443, size: 256, elements: !2758)
!2758 = !{!2759, !2760, !2773, !2774}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2757, file: !2547, line: 444, baseType: !16, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2757, file: !2547, line: 445, baseType: !2761, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2763)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2547, line: 310, size: 512, elements: !2764)
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2763, file: !2547, line: 311, baseType: !747, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2763, file: !2547, line: 312, baseType: !747, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2763, file: !2547, line: 313, baseType: !747, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2763, file: !2547, line: 314, baseType: !747, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2763, file: !2547, line: 315, baseType: !2550, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2763, file: !2547, line: 316, baseType: !2550, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2763, file: !2547, line: 317, baseType: !2550, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2763, file: !2547, line: 318, baseType: !2627, size: 64, offset: 448)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2757, file: !2547, line: 446, baseType: !691, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2757, file: !2547, line: 447, baseType: !2756, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2753, file: !2547, line: 224, baseType: !16, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2753, file: !2547, line: 226, baseType: !53, size: 128, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2753, file: !2547, line: 227, baseType: !111, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2753, file: !2547, line: 228, baseType: !65, size: 32, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2753, file: !2547, line: 229, baseType: !65, size: 32, offset: 352)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2753, file: !2547, line: 230, baseType: !2591, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2753, file: !2547, line: 231, baseType: !2591, size: 64, offset: 448)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2753, file: !2547, line: 232, baseType: !226, size: 64, offset: 512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2745, file: !2547, line: 523, baseType: !2784, size: 192, offset: 2240)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2761, size: 192, elements: !342)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !659, file: !419, line: 1458, baseType: !2786, size: 2112, offset: 4288)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !419, line: 1410, size: 2112, elements: !2787)
!2787 = !{!2788, !2789, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2786, file: !419, line: 1411, baseType: !16, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2786, file: !419, line: 1412, baseType: !1546, size: 128, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2786, file: !419, line: 1413, baseType: !2791, size: 1920, offset: 192)
!2791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2792, size: 1920, elements: !342)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2793, line: 12, size: 640, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2794 = !{!2795, !2803, !2805, !2810, !2811}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2792, file: !2793, line: 13, baseType: !2796, size: 320)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2797, line: 17, size: 320, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2798 = !{!2799, !2800, !2801, !2802}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2796, file: !2797, line: 18, baseType: !16, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2796, file: !2797, line: 19, baseType: !16, size: 32, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2796, file: !2797, line: 20, baseType: !1546, size: 128, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2796, file: !2797, line: 22, baseType: !431, size: 128, align: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2792, file: !2793, line: 14, baseType: !2804, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2792, file: !2793, line: 15, baseType: !2806, size: 64, offset: 384)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2807, line: 16, size: 64, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2806, file: !2807, line: 17, baseType: !1271, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2792, file: !2793, line: 16, baseType: !1546, size: 128, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2792, file: !2793, line: 17, baseType: !11, size: 32, offset: 576)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !659, file: !419, line: 1465, baseType: !226, size: 64, offset: 6400)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !659, file: !419, line: 1468, baseType: !152, size: 32, offset: 6464)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !659, file: !419, line: 1470, baseType: !599, size: 64, offset: 6528)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !659, file: !419, line: 1471, baseType: !599, size: 64, offset: 6592)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !659, file: !419, line: 1473, baseType: !64, size: 32, offset: 6656)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !659, file: !419, line: 1474, baseType: !2818, size: 64, offset: 6720)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !419, line: 603, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !659, file: !419, line: 1477, baseType: !2821, size: 256, offset: 6784)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !2338)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !659, file: !419, line: 1478, baseType: !2823, size: 128, offset: 7040)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2824, line: 18, baseType: !2825)
!2824 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2824, line: 16, size: 128, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2825, file: !2824, line: 17, baseType: !2828, size: 128)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !108)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !659, file: !419, line: 1480, baseType: !65, size: 32, offset: 7168)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !659, file: !419, line: 1481, baseType: !2831, size: 32, offset: 7200)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !12, line: 150, baseType: !65)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !659, file: !419, line: 1487, baseType: !21, size: 192, offset: 7232)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !659, file: !419, line: 1493, baseType: !149, size: 64, offset: 7424)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !659, file: !419, line: 1495, baseType: !2835, size: 64, offset: 7488)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !446, line: 135, size: 1024, align: 512, elements: !2838)
!2838 = !{!2839, !2843, !2844, !2851, !2857, !2861, !2865, !2869, !2870, !2874, !2878, !2883, !2887}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2837, file: !446, line: 136, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!16, !448, !65}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2837, file: !446, line: 137, baseType: !2840, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2837, file: !446, line: 138, baseType: !2845, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!16, !2848, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2837, file: !446, line: 139, baseType: !2852, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!16, !2848, !65, !149, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2837, file: !446, line: 141, baseType: !2858, size: 64, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!16, !2848}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2837, file: !446, line: 142, baseType: !2862, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!16, !448}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2837, file: !446, line: 143, baseType: !2866, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{null, !448}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2837, file: !446, line: 144, baseType: !2866, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2837, file: !446, line: 145, baseType: !2871, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !448, !490}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2837, file: !446, line: 146, baseType: !2875, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!341, !448, !341, !16}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2837, file: !446, line: 147, baseType: !2879, size: 64, offset: 640)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!444, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2837, file: !446, line: 148, baseType: !2884, size: 64, offset: 704)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!16, !608, !551}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2837, file: !446, line: 149, baseType: !2888, size: 64, offset: 768)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!448, !448, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !659, file: !419, line: 1500, baseType: !16, size: 32, offset: 7552)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !659, file: !419, line: 1502, baseType: !2895, size: 448, offset: 7616)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2533, line: 60, size: 448, elements: !2896)
!2896 = !{!2897, !2902, !2903, !2904, !2905, !2906, !2907}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2895, file: !2533, line: 61, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!111, !2901, !2531}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2895, file: !2533, line: 63, baseType: !2898, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2895, file: !2533, line: 66, baseType: !376, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2895, file: !2533, line: 67, baseType: !16, size: 32, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !2533, line: 68, baseType: !65, size: 32, offset: 224)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2895, file: !2533, line: 71, baseType: !53, size: 128, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2895, file: !2533, line: 77, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !659, file: !419, line: 1505, baseType: !25, size: 64, offset: 8064)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !659, file: !419, line: 1508, baseType: !25, size: 64, offset: 8128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !659, file: !419, line: 1511, baseType: !16, size: 32, offset: 8192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !659, file: !419, line: 1514, baseType: !967, size: 32, offset: 8224)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !659, file: !419, line: 1517, baseType: !2914, size: 64, offset: 8256)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !198, line: 18, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !659, file: !419, line: 1518, baseType: !696, size: 64, offset: 8320)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !659, file: !419, line: 1525, baseType: !1582, size: 64, offset: 8384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !659, file: !419, line: 1532, baseType: !2919, size: 64, offset: 8448)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2920, line: 52, size: 64, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2919, file: !2920, line: 53, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2920, line: 40, size: 256, elements: !2925)
!2925 = !{!2926, !2927, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2924, file: !2920, line: 42, baseType: !37)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2924, file: !2920, line: 44, baseType: !2928, size: 192)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2920, line: 28, size: 192, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2928, file: !2920, line: 29, baseType: !53, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2928, file: !2920, line: 31, baseType: !376, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2924, file: !2920, line: 49, baseType: !376, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !659, file: !419, line: 1533, baseType: !2919, size: 64, offset: 8512)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !659, file: !419, line: 1534, baseType: !431, size: 128, align: 64, offset: 8576)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !659, file: !419, line: 1535, baseType: !197, size: 256, offset: 8704)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !659, file: !419, line: 1537, baseType: !21, size: 192, offset: 8960)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !659, file: !419, line: 1542, baseType: !16, size: 32, offset: 9152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !659, file: !419, line: 1545, baseType: !37, offset: 9184)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !659, file: !419, line: 1546, baseType: !53, size: 128, offset: 9216)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !659, file: !419, line: 1548, baseType: !37, offset: 9344)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !659, file: !419, line: 1549, baseType: !53, size: 128, offset: 9344)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !491, file: !419, line: 624, baseType: !796, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !491, file: !419, line: 631, baseType: !111, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !419, line: 639, baseType: !2945, size: 32, offset: 384)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !419, line: 639, size: 32, elements: !2946)
!2946 = !{!2947, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2945, file: !419, line: 640, baseType: !2948, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2945, file: !419, line: 641, baseType: !65, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !491, file: !419, line: 643, baseType: !574, size: 32, offset: 416)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !491, file: !419, line: 644, baseType: !592, size: 64, offset: 448)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !491, file: !419, line: 645, baseType: !595, size: 128, offset: 512)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !491, file: !419, line: 646, baseType: !595, size: 128, offset: 640)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !491, file: !419, line: 647, baseType: !595, size: 128, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !491, file: !419, line: 648, baseType: !37, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !491, file: !419, line: 649, baseType: !118, size: 16, offset: 896)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !491, file: !419, line: 650, baseType: !213, size: 8, offset: 912)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !491, file: !419, line: 651, baseType: !213, size: 8, offset: 920)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !491, file: !419, line: 652, baseType: !2711, size: 64, offset: 960)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !491, file: !419, line: 659, baseType: !111, size: 64, offset: 1024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !491, file: !419, line: 660, baseType: !826, size: 256, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !491, file: !419, line: 662, baseType: !111, size: 64, offset: 1344)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !491, file: !419, line: 663, baseType: !111, size: 64, offset: 1408)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !491, file: !419, line: 665, baseType: !700, size: 128, offset: 1472)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !491, file: !419, line: 666, baseType: !53, size: 128, offset: 1600)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !491, file: !419, line: 675, baseType: !53, size: 128, offset: 1728)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !491, file: !419, line: 676, baseType: !53, size: 128, offset: 1856)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !491, file: !419, line: 677, baseType: !53, size: 128, offset: 1984)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !419, line: 678, baseType: !2970, size: 128, offset: 2112)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !419, line: 678, size: 128, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2970, file: !419, line: 679, baseType: !696, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2970, file: !419, line: 680, baseType: !431, size: 128, align: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !491, file: !419, line: 682, baseType: !27, size: 64, offset: 2240)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !491, file: !419, line: 683, baseType: !27, size: 64, offset: 2304)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !491, file: !419, line: 684, baseType: !11, size: 32, offset: 2368)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !491, file: !419, line: 685, baseType: !11, size: 32, offset: 2400)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !491, file: !419, line: 686, baseType: !11, size: 32, offset: 2432)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !491, file: !419, line: 688, baseType: !11, size: 32, offset: 2464)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !419, line: 690, baseType: !2981, size: 64, offset: 2496)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !419, line: 690, size: 64, elements: !2982)
!2982 = !{!2983, !3206}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2981, file: !419, line: 691, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !419, line: 1822, size: 2048, elements: !2987)
!2987 = !{!2988, !2989, !2993, !2998, !3002, !3003, !3004, !3008, !3021, !3022, !3030, !3034, !3035, !3039, !3040, !3044, !3049, !3050, !3054, !3058, !3166, !3170, !3171, !3175, !3176, !3180, !3184, !3189, !3193, !3197, !3201, !3205}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2986, file: !419, line: 1823, baseType: !691, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2986, file: !419, line: 1824, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!592, !417, !592, !16}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2986, file: !419, line: 1825, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!372, !417, !341, !387, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2986, file: !419, line: 1826, baseType: !2999, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!372, !417, !149, !387, !2997}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2986, file: !419, line: 1827, baseType: !896, size: 64, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2986, file: !419, line: 1828, baseType: !896, size: 64, offset: 320)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2986, file: !419, line: 1829, baseType: !3005, size: 64, offset: 384)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!16, !899, !551}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2986, file: !419, line: 1830, baseType: !3009, size: 64, offset: 448)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!16, !417, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !419, line: 1776, size: 128, elements: !3014)
!3014 = !{!3015, !3020}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3013, file: !419, line: 1777, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !419, line: 1773, baseType: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!16, !3012, !149, !16, !592, !483, !65}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3013, file: !419, line: 1778, baseType: !592, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2986, file: !419, line: 1831, baseType: !3009, size: 64, offset: 512)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2986, file: !419, line: 1832, baseType: !3023, size: 64, offset: 576)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!3026, !417, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3027, line: 52, baseType: !65)
!3027 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !419, line: 56, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2986, file: !419, line: 1833, baseType: !3031, size: 64, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!376, !417, !65, !111}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2986, file: !419, line: 1834, baseType: !3031, size: 64, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2986, file: !419, line: 1835, baseType: !3036, size: 64, offset: 768)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!16, !417, !1039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2986, file: !419, line: 1836, baseType: !111, size: 64, offset: 832)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2986, file: !419, line: 1837, baseType: !3041, size: 64, offset: 896)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!16, !490, !417}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2986, file: !419, line: 1838, baseType: !3045, size: 64, offset: 960)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!16, !417, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !419, line: 1007, baseType: !226)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2986, file: !419, line: 1839, baseType: !3041, size: 64, offset: 1024)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2986, file: !419, line: 1840, baseType: !3051, size: 64, offset: 1088)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!16, !417, !592, !592, !16}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2986, file: !419, line: 1841, baseType: !3055, size: 64, offset: 1152)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!16, !16, !417, !16}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2986, file: !419, line: 1842, baseType: !3059, size: 64, offset: 1216)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!16, !417, !16, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !419, line: 1062, size: 1664, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3096, !3097, !3098, !3111, !3142}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3063, file: !419, line: 1063, baseType: !3062, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3063, file: !419, line: 1064, baseType: !53, size: 128, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3063, file: !419, line: 1065, baseType: !700, size: 128, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3063, file: !419, line: 1066, baseType: !53, size: 128, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3063, file: !419, line: 1069, baseType: !53, size: 128, offset: 448)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3063, file: !419, line: 1072, baseType: !3048, size: 64, offset: 576)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3063, file: !419, line: 1073, baseType: !65, size: 32, offset: 640)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3063, file: !419, line: 1074, baseType: !168, size: 8, offset: 672)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3063, file: !419, line: 1075, baseType: !65, size: 32, offset: 704)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3063, file: !419, line: 1076, baseType: !16, size: 32, offset: 736)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3063, file: !419, line: 1077, baseType: !1546, size: 128, offset: 768)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3063, file: !419, line: 1078, baseType: !417, size: 64, offset: 896)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3063, file: !419, line: 1079, baseType: !592, size: 64, offset: 960)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3063, file: !419, line: 1080, baseType: !592, size: 64, offset: 1024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3063, file: !419, line: 1082, baseType: !3080, size: 64, offset: 1088)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !419, line: 1314, size: 320, elements: !3082)
!3082 = !{!3083, !3091, !3092, !3093, !3094, !3095}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3081, file: !419, line: 1315, baseType: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3085, line: 20, baseType: !3086)
!3085 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3085, line: 11, elements: !3087)
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3086, file: !3085, line: 12, baseType: !3089)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !49, line: 33, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 31, elements: !51)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3081, file: !419, line: 1316, baseType: !16, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3081, file: !419, line: 1317, baseType: !16, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3081, file: !419, line: 1318, baseType: !3080, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3081, file: !419, line: 1319, baseType: !417, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3081, file: !419, line: 1320, baseType: !431, size: 128, align: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3063, file: !419, line: 1084, baseType: !111, size: 64, offset: 1152)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3063, file: !419, line: 1085, baseType: !111, size: 64, offset: 1216)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3063, file: !419, line: 1087, baseType: !3099, size: 64, offset: 1280)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3101)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !419, line: 1011, size: 128, elements: !3102)
!3102 = !{!3103, !3107}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3101, file: !419, line: 1012, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !3062, !3062}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3101, file: !419, line: 1013, baseType: !3108, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3062}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3063, file: !419, line: 1088, baseType: !3112, size: 64, offset: 1344)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3114)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !419, line: 1016, size: 512, elements: !3115)
!3115 = !{!3116, !3120, !3124, !3125, !3129, !3133, !3137, !3141}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3114, file: !419, line: 1017, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3048, !3048}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3114, file: !419, line: 1018, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3048}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3114, file: !419, line: 1019, baseType: !3108, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3114, file: !419, line: 1020, baseType: !3126, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!16, !3062, !16}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3114, file: !419, line: 1021, baseType: !3130, size: 64, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!551, !3062}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3114, file: !419, line: 1022, baseType: !3134, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!16, !3062, !16, !56}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3114, file: !419, line: 1023, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !3062, !873}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3114, file: !419, line: 1024, baseType: !3130, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3063, file: !419, line: 1097, baseType: !3143, size: 256, offset: 1408)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3063, file: !419, line: 1089, size: 256, elements: !3144)
!3144 = !{!3145, !3154, !3160}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3143, file: !419, line: 1090, baseType: !3146, size: 256)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3147, line: 10, size: 256, elements: !3148)
!3147 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3148 = !{!3149, !3150, !3153}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3146, file: !3147, line: 11, baseType: !152, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3146, file: !3147, line: 12, baseType: !3151, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3147, line: 5, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3146, file: !3147, line: 13, baseType: !53, size: 128, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3143, file: !419, line: 1091, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3147, line: 17, size: 64, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3155, file: !3147, line: 18, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3147, line: 16, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3143, file: !419, line: 1096, baseType: !3161, size: 192)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !419, line: 1092, size: 192, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3161, file: !419, line: 1093, baseType: !53, size: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3161, file: !419, line: 1094, baseType: !16, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3161, file: !419, line: 1095, baseType: !65, size: 32, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2986, file: !419, line: 1843, baseType: !3167, size: 64, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!372, !417, !783, !16, !387, !2997, !16}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2986, file: !419, line: 1844, baseType: !1164, size: 64, offset: 1344)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2986, file: !419, line: 1845, baseType: !3172, size: 64, offset: 1408)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!16, !16}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2986, file: !419, line: 1846, baseType: !3059, size: 64, offset: 1472)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2986, file: !419, line: 1847, baseType: !3177, size: 64, offset: 1536)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!372, !2206, !417, !2997, !387, !65}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2986, file: !419, line: 1848, baseType: !3181, size: 64, offset: 1600)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!372, !417, !2997, !2206, !387, !65}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2986, file: !419, line: 1849, baseType: !3185, size: 64, offset: 1664)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!16, !417, !376, !3188, !873}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2986, file: !419, line: 1850, baseType: !3190, size: 64, offset: 1728)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!376, !417, !16, !592, !592}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2986, file: !419, line: 1852, baseType: !3194, size: 64, offset: 1792)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !773, !417}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2986, file: !419, line: 1856, baseType: !3198, size: 64, offset: 1856)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!372, !417, !592, !417, !592, !387, !65}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2986, file: !419, line: 1858, baseType: !3202, size: 64, offset: 1920)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!592, !417, !592, !417, !592, !592, !65}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2986, file: !419, line: 1861, baseType: !3051, size: 64, offset: 1984)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2981, file: !419, line: 692, baseType: !725, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !491, file: !419, line: 694, baseType: !3208, size: 64, offset: 2560)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !419, line: 1100, size: 384, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3209, file: !419, line: 1101, baseType: !37)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3209, file: !419, line: 1102, baseType: !53, size: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3209, file: !419, line: 1103, baseType: !53, size: 128, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3209, file: !419, line: 1104, baseType: !53, size: 128, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !491, file: !419, line: 695, baseType: !797, size: 1216, align: 64, offset: 2624)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !491, file: !419, line: 696, baseType: !53, size: 128, offset: 3840)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !419, line: 697, baseType: !3218, size: 64, offset: 3968)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !419, line: 697, size: 64, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3225, !3226}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3218, file: !419, line: 698, baseType: !2206, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3218, file: !419, line: 699, baseType: !2736, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3218, file: !419, line: 700, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !419, line: 700, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3218, file: !419, line: 701, baseType: !341, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3218, file: !419, line: 702, baseType: !65, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !491, file: !419, line: 705, baseType: !64, size: 32, offset: 4032)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !491, file: !419, line: 708, baseType: !64, size: 32, offset: 4064)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !491, file: !419, line: 709, baseType: !2818, size: 64, offset: 4096)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !491, file: !419, line: 720, baseType: !226, size: 64, offset: 4160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !449, file: !446, line: 98, baseType: !3232, size: 256, offset: 448)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !2338)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !449, file: !446, line: 101, baseType: !3234, size: 32, offset: 704)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3235, line: 25, size: 32, elements: !3236)
!3235 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3236 = !{!3237}
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !3234, file: !3235, line: 26, baseType: !3238, size: 32)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3234, file: !3235, line: 26, size: 32, elements: !3239)
!3239 = !{!3240}
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3238, file: !3235, line: 30, baseType: !3241, size: 32)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !3235, line: 30, size: 32, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3241, file: !3235, line: 31, baseType: !37)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3241, file: !3235, line: 32, baseType: !16, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !449, file: !446, line: 102, baseType: !2835, size: 64, offset: 768)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !449, file: !446, line: 103, baseType: !658, size: 64, offset: 832)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !449, file: !446, line: 104, baseType: !111, size: 64, offset: 896)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !449, file: !446, line: 105, baseType: !226, size: 64, offset: 960)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !446, line: 107, baseType: !3250, size: 128, offset: 1024)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !446, line: 107, size: 128, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3250, file: !446, line: 108, baseType: !53, size: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3250, file: !446, line: 109, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !449, file: !446, line: 111, baseType: !53, size: 128, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !449, file: !446, line: 112, baseType: !53, size: 128, offset: 1280)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !449, file: !446, line: 120, baseType: !3258, size: 128, offset: 1408)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !446, line: 116, size: 128, elements: !3259)
!3259 = !{!3260, !3261, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3258, file: !446, line: 117, baseType: !700, size: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3258, file: !446, line: 118, baseType: !463, size: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3258, file: !446, line: 119, baseType: !431, size: 128, align: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !418, file: !419, line: 922, baseType: !490, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !418, file: !419, line: 923, baseType: !2984, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !418, file: !419, line: 929, baseType: !37, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !418, file: !419, line: 930, baseType: !3267, size: 32, offset: 384)
!3267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !419, line: 296, baseType: !65, size: 32, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274}
!3269 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3270 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3271 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3272 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3273 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3274 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !418, file: !419, line: 931, baseType: !25, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !418, file: !419, line: 932, baseType: !65, size: 32, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !418, file: !419, line: 933, baseType: !2831, size: 32, offset: 544)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !418, file: !419, line: 934, baseType: !21, size: 192, offset: 576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !418, file: !419, line: 935, baseType: !592, size: 64, offset: 768)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !418, file: !419, line: 936, baseType: !3281, size: 192, offset: 832)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !419, line: 885, size: 192, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3293, !3294, !3295}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3281, file: !419, line: 886, baseType: !3084)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3281, file: !419, line: 887, baseType: !1535, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3281, file: !419, line: 888, baseType: !3286, size: 32, offset: 64)
!3286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1537, line: 9, baseType: !65, size: 32, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292}
!3288 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3289 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3290 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3291 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3292 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3281, file: !419, line: 889, baseType: !496, size: 32, offset: 96)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3281, file: !419, line: 889, baseType: !496, size: 32, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3281, file: !419, line: 890, baseType: !16, size: 32, offset: 160)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !418, file: !419, line: 937, baseType: !1649, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !418, file: !419, line: 938, baseType: !3298, size: 256, offset: 1088)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !419, line: 896, size: 256, elements: !3299)
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3305}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3298, file: !419, line: 897, baseType: !111, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3298, file: !419, line: 898, baseType: !65, size: 32, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3298, file: !419, line: 899, baseType: !65, size: 32, offset: 96)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3298, file: !419, line: 902, baseType: !65, size: 32, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3298, file: !419, line: 903, baseType: !65, size: 32, offset: 160)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3298, file: !419, line: 904, baseType: !592, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !418, file: !419, line: 940, baseType: !483, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !418, file: !419, line: 945, baseType: !226, size: 64, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !418, file: !419, line: 949, baseType: !53, size: 128, offset: 1472)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !418, file: !419, line: 950, baseType: !53, size: 128, offset: 1600)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !418, file: !419, line: 952, baseType: !796, size: 64, offset: 1728)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !418, file: !419, line: 953, baseType: !967, size: 32, offset: 1792)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !418, file: !419, line: 954, baseType: !967, size: 32, offset: 1824)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !408, file: !366, line: 174, baseType: !414, size: 64, offset: 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !408, file: !366, line: 176, baseType: !3315, size: 64, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!16, !417, !308, !407, !1039}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !396, file: !366, line: 90, baseType: !391, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !396, file: !366, line: 91, baseType: !3320, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !356, file: !303, line: 143, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3325, !308}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3327)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3328, line: 39, size: 384, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3329 = !{!3330, !3336, !3340, !3344, !3350, !3354}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3327, file: !3328, line: 40, baseType: !3331, size: 32)
!3331 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3328, line: 26, baseType: !65, size: 32, elements: !3332)
!3332 = !{!3333, !3334, !3335}
!3333 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3334 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3335 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3327, file: !3328, line: 41, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!551}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3327, file: !3328, line: 42, baseType: !3341, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!226}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3327, file: !3328, line: 43, baseType: !3345, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!2235, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3328, line: 19, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3327, file: !3328, line: 44, baseType: !3351, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!2235}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3327, file: !3328, line: 45, baseType: !529, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !356, file: !303, line: 144, baseType: !3356, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!2235, !308}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !356, file: !303, line: 145, baseType: !3360, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !308, !3363, !3364}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !302, file: !303, line: 70, baseType: !3366, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3368, line: 123, size: 1024, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3492, !3493, !3494, !3495, !3496}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3367, file: !3368, line: 124, baseType: !11, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3367, file: !3368, line: 125, baseType: !11, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3367, file: !3368, line: 135, baseType: !3366, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3367, file: !3368, line: 136, baseType: !149, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3367, file: !3368, line: 138, baseType: !819, size: 192, align: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3367, file: !3368, line: 140, baseType: !2235, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3367, file: !3368, line: 141, baseType: !65, size: 32, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !3367, file: !3368, line: 142, baseType: !3378, size: 256, offset: 512)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3367, file: !3368, line: 142, size: 256, elements: !3379)
!3379 = !{!3380, !3420, !3424}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3378, file: !3368, line: 143, baseType: !3381, size: 192)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3368, line: 91, size: 192, elements: !3382)
!3382 = !{!3383, !3384, !3385}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3381, file: !3368, line: 92, baseType: !111, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3381, file: !3368, line: 94, baseType: !815, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3381, file: !3368, line: 100, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3368, line: 180, size: 704, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3418, !3419}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3387, file: !3368, line: 182, baseType: !3366, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3387, file: !3368, line: 183, baseType: !65, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3387, file: !3368, line: 186, baseType: !1569, size: 192, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3387, file: !3368, line: 187, baseType: !152, size: 32, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3387, file: !3368, line: 188, baseType: !152, size: 32, offset: 352)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3387, file: !3368, line: 189, baseType: !3395, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3368, line: 168, size: 320, elements: !3397)
!3397 = !{!3398, !3402, !3406, !3410, !3414}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3396, file: !3368, line: 169, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!16, !773, !3386}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3396, file: !3368, line: 171, baseType: !3403, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!16, !3366, !149, !382}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3396, file: !3368, line: 173, baseType: !3407, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!16, !3366}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3396, file: !3368, line: 174, baseType: !3411, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!16, !3366, !3366, !149}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3396, file: !3368, line: 176, baseType: !3415, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!16, !773, !3366, !3386}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3387, file: !3368, line: 192, baseType: !53, size: 128, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3387, file: !3368, line: 194, baseType: !1546, size: 128, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3378, file: !3368, line: 144, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3368, line: 103, size: 64, elements: !3422)
!3422 = !{!3423}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3421, file: !3368, line: 104, baseType: !3366, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3378, file: !3368, line: 145, baseType: !3425, size: 256)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3368, line: 107, size: 256, elements: !3426)
!3426 = !{!3427, !3487, !3490, !3491}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3425, file: !3368, line: 108, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3430)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3368, line: 217, size: 768, elements: !3431)
!3431 = !{!3432, !3452, !3456, !3460, !3464, !3468, !3472, !3476, !3477, !3478, !3479, !3483}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3430, file: !3368, line: 222, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!16, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3368, line: 197, size: 1088, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3437, file: !3368, line: 199, baseType: !3366, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3437, file: !3368, line: 200, baseType: !417, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3437, file: !3368, line: 201, baseType: !773, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3437, file: !3368, line: 202, baseType: !226, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3437, file: !3368, line: 205, baseType: !21, size: 192, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3437, file: !3368, line: 206, baseType: !21, size: 192, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3437, file: !3368, line: 207, baseType: !16, size: 32, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3437, file: !3368, line: 208, baseType: !53, size: 128, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3437, file: !3368, line: 209, baseType: !341, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3437, file: !3368, line: 211, baseType: !387, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3437, file: !3368, line: 212, baseType: !551, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3437, file: !3368, line: 213, baseType: !551, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3437, file: !3368, line: 214, baseType: !1067, size: 64, offset: 1024)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3430, file: !3368, line: 223, baseType: !3453, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{null, !3436}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3430, file: !3368, line: 236, baseType: !3457, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!16, !773, !226}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3430, file: !3368, line: 238, baseType: !3461, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!226, !773, !2997}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3430, file: !3368, line: 239, baseType: !3465, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!226, !773, !226, !2997}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3430, file: !3368, line: 240, baseType: !3469, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !773, !226}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3430, file: !3368, line: 242, baseType: !3473, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!372, !3436, !341, !387, !592}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3430, file: !3368, line: 252, baseType: !387, size: 64, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3430, file: !3368, line: 259, baseType: !551, size: 8, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3430, file: !3368, line: 260, baseType: !3473, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3430, file: !3368, line: 263, baseType: !3480, size: 64, offset: 640)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!3026, !3436, !3028}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3430, file: !3368, line: 266, baseType: !3484, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!16, !3436, !1039}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3425, file: !3368, line: 109, baseType: !3488, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3368, line: 31, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3425, file: !3368, line: 110, baseType: !592, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3425, file: !3368, line: 111, baseType: !3366, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3367, file: !3368, line: 148, baseType: !226, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3367, file: !3368, line: 154, baseType: !483, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3367, file: !3368, line: 156, baseType: !118, size: 16, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3367, file: !3368, line: 157, baseType: !382, size: 16, offset: 912)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3367, file: !3368, line: 158, baseType: !3497, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3368, line: 32, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !302, file: !303, line: 71, baseType: !1564, size: 32, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !302, file: !303, line: 75, baseType: !65, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !302, file: !303, line: 76, baseType: !65, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !302, file: !303, line: 77, baseType: !65, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !302, file: !303, line: 78, baseType: !65, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !302, file: !303, line: 79, baseType: !65, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !298, file: !299, line: 463, baseType: !3506, size: 64, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !298, file: !299, line: 465, baseType: !3508, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !299, line: 36, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !298, file: !299, line: 467, baseType: !149, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !298, file: !299, line: 468, baseType: !3512, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !299, line: 87, size: 384, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3522, !3527, !3531}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3514, file: !299, line: 88, baseType: !149, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3514, file: !299, line: 89, baseType: !393, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3514, file: !299, line: 90, baseType: !3519, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!16, !3506, !336}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3514, file: !299, line: 91, baseType: !3523, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!341, !3506, !3526, !3363, !3364}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3514, file: !299, line: 93, baseType: !3528, size: 64, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !3506}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3514, file: !299, line: 95, baseType: !3532, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3535, line: 278, size: 1472, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3536 = !{!3537, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3534, file: !3535, line: 279, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!16, !3506}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3534, file: !3535, line: 280, baseType: !3528, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3534, file: !3535, line: 281, baseType: !3538, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3534, file: !3535, line: 282, baseType: !3538, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3534, file: !3535, line: 283, baseType: !3538, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3534, file: !3535, line: 284, baseType: !3538, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3534, file: !3535, line: 285, baseType: !3538, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3534, file: !3535, line: 286, baseType: !3538, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3534, file: !3535, line: 287, baseType: !3538, size: 64, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3534, file: !3535, line: 288, baseType: !3538, size: 64, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3534, file: !3535, line: 289, baseType: !3538, size: 64, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3534, file: !3535, line: 290, baseType: !3538, size: 64, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3534, file: !3535, line: 291, baseType: !3538, size: 64, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3534, file: !3535, line: 292, baseType: !3538, size: 64, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3534, file: !3535, line: 293, baseType: !3538, size: 64, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3534, file: !3535, line: 294, baseType: !3538, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3534, file: !3535, line: 295, baseType: !3538, size: 64, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3534, file: !3535, line: 296, baseType: !3538, size: 64, offset: 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3534, file: !3535, line: 297, baseType: !3538, size: 64, offset: 1152)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3534, file: !3535, line: 298, baseType: !3538, size: 64, offset: 1216)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3534, file: !3535, line: 299, baseType: !3538, size: 64, offset: 1280)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3534, file: !3535, line: 300, baseType: !3538, size: 64, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3534, file: !3535, line: 301, baseType: !3538, size: 64, offset: 1408)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !298, file: !299, line: 470, baseType: !3564, size: 64, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3566, line: 82, size: 1408, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3655, !3658, !3659}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3565, file: !3566, line: 83, baseType: !149, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3565, file: !3566, line: 84, baseType: !149, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3565, file: !3566, line: 85, baseType: !3506, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3565, file: !3566, line: 86, baseType: !393, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3565, file: !3566, line: 87, baseType: !393, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3565, file: !3566, line: 88, baseType: !393, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3565, file: !3566, line: 90, baseType: !3575, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!16, !3506, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3580, line: 95, size: 1152, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3593, !3606, !3619, !3620, !3621, !3622, !3623, !3631, !3632, !3633, !3634, !3635, !3636}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3579, file: !3580, line: 96, baseType: !149, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3579, file: !3580, line: 97, baseType: !3564, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3579, file: !3580, line: 99, baseType: !691, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3579, file: !3580, line: 100, baseType: !149, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3579, file: !3580, line: 102, baseType: !551, size: 8, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3579, file: !3580, line: 103, baseType: !3588, size: 32, offset: 288)
!3588 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3580, line: 44, baseType: !65, size: 32, elements: !3589)
!3589 = !{!3590, !3591, !3592}
!3590 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3591 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3592 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3579, file: !3580, line: 105, baseType: !3594, size: 64, offset: 320)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3596)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3597, line: 262, size: 1600, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3598 = !{!3599, !3600, !3601, !3605}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3596, file: !3597, line: 263, baseType: !2821, size: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3596, file: !3597, line: 264, baseType: !2821, size: 256, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3596, file: !3597, line: 265, baseType: !3602, size: 1024, offset: 512)
!3602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1024, elements: !3603)
!3603 = !{!3604}
!3604 = !DISubrange(count: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3596, file: !3597, line: 266, baseType: !2235, size: 64, offset: 1536)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3579, file: !3580, line: 106, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3597, line: 210, size: 256, elements: !3610)
!3610 = !{!3611, !3615, !3617, !3618}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3609, file: !3597, line: 211, baseType: !3612, size: 72)
!3612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 72, elements: !3613)
!3613 = !{!3614}
!3614 = !DISubrange(count: 9)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3609, file: !3597, line: 212, baseType: !3616, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3597, line: 14, baseType: !111)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3609, file: !3597, line: 213, baseType: !64, size: 32, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3609, file: !3597, line: 214, baseType: !64, size: 32, offset: 224)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3579, file: !3580, line: 108, baseType: !3538, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3579, file: !3580, line: 109, baseType: !3528, size: 64, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3579, file: !3580, line: 110, baseType: !3538, size: 64, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3579, file: !3580, line: 111, baseType: !3528, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3579, file: !3580, line: 112, baseType: !3624, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!16, !3506, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3535, line: 52, baseType: !3628)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3535, line: 50, size: 32, elements: !3629)
!3629 = !{!3630}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3628, file: !3535, line: 51, baseType: !16, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3579, file: !3580, line: 113, baseType: !3538, size: 64, offset: 768)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3579, file: !3580, line: 114, baseType: !393, size: 64, offset: 832)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3579, file: !3580, line: 115, baseType: !393, size: 64, offset: 896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3579, file: !3580, line: 117, baseType: !3532, size: 64, offset: 960)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3579, file: !3580, line: 118, baseType: !3528, size: 64, offset: 1024)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3579, file: !3580, line: 120, baseType: !3637, size: 64, offset: 1088)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3580, line: 120, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3565, file: !3566, line: 91, baseType: !3519, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3565, file: !3566, line: 92, baseType: !3538, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3565, file: !3566, line: 93, baseType: !3528, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3565, file: !3566, line: 94, baseType: !3538, size: 64, offset: 640)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3565, file: !3566, line: 95, baseType: !3528, size: 64, offset: 704)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3565, file: !3566, line: 97, baseType: !3538, size: 64, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3565, file: !3566, line: 98, baseType: !3538, size: 64, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3565, file: !3566, line: 100, baseType: !3624, size: 64, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3565, file: !3566, line: 101, baseType: !3538, size: 64, offset: 960)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3565, file: !3566, line: 103, baseType: !3538, size: 64, offset: 1024)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3565, file: !3566, line: 105, baseType: !3538, size: 64, offset: 1088)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3565, file: !3566, line: 107, baseType: !3532, size: 64, offset: 1152)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3565, file: !3566, line: 109, baseType: !3652, size: 64, offset: 1216)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3566, line: 109, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3565, file: !3566, line: 111, baseType: !3656, size: 64, offset: 1280)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3566, line: 111, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3565, file: !3566, line: 112, baseType: !706, offset: 1344)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3565, file: !3566, line: 114, baseType: !551, size: 8, offset: 1344)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !298, file: !299, line: 471, baseType: !3578, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !298, file: !299, line: 473, baseType: !226, size: 64, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !298, file: !299, line: 475, baseType: !226, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !298, file: !299, line: 480, baseType: !21, size: 192, offset: 1024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !298, file: !299, line: 484, baseType: !3665, size: 576, offset: 1216)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !299, line: 361, size: 576, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3670, !3671, !3672}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3665, file: !299, line: 362, baseType: !53, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3665, file: !299, line: 363, baseType: !53, size: 128, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3665, file: !299, line: 364, baseType: !53, size: 128, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3665, file: !299, line: 365, baseType: !53, size: 128, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3665, file: !299, line: 366, baseType: !551, size: 8, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3665, file: !299, line: 367, baseType: !3673, size: 32, offset: 544)
!3673 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !299, line: 343, baseType: !65, size: 32, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678}
!3675 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3676 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3677 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3678 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !298, file: !299, line: 485, baseType: !3680, size: 2304, offset: 1792)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3535, line: 565, size: 2304, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3767, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3790, !3794}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3680, file: !3535, line: 566, baseType: !3627, size: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3680, file: !3535, line: 567, baseType: !65, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3680, file: !3535, line: 568, baseType: !65, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3680, file: !3535, line: 569, baseType: !551, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3680, file: !3535, line: 570, baseType: !551, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3680, file: !3535, line: 571, baseType: !551, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3680, file: !3535, line: 572, baseType: !551, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3680, file: !3535, line: 573, baseType: !551, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3680, file: !3535, line: 574, baseType: !551, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3680, file: !3535, line: 575, baseType: !551, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3680, file: !3535, line: 576, baseType: !551, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3680, file: !3535, line: 577, baseType: !152, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3680, file: !3535, line: 578, baseType: !37, offset: 96)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3680, file: !3535, line: 580, baseType: !53, size: 128, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3680, file: !3535, line: 581, baseType: !1604, size: 192, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3680, file: !3535, line: 582, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3700, line: 43, size: 1472, elements: !3701)
!3700 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3709, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3699, file: !3700, line: 44, baseType: !149, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3699, file: !3700, line: 45, baseType: !16, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3699, file: !3700, line: 46, baseType: !53, size: 128, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3699, file: !3700, line: 47, baseType: !37, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3699, file: !3700, line: 48, baseType: !3707, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3535, line: 533, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3699, file: !3700, line: 49, baseType: !3710, size: 320, offset: 320)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3711, line: 11, size: 320, elements: !3712)
!3711 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3712 = !{!3713, !3714, !3715, !3720}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3710, file: !3711, line: 16, baseType: !700, size: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3710, file: !3711, line: 17, baseType: !111, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3710, file: !3711, line: 18, baseType: !3716, size: 64, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3710, file: !3711, line: 19, baseType: !152, size: 32, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3699, file: !3700, line: 50, baseType: !111, size: 64, offset: 640)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3699, file: !3700, line: 51, baseType: !1356, size: 64, offset: 704)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3699, file: !3700, line: 52, baseType: !1356, size: 64, offset: 768)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3699, file: !3700, line: 53, baseType: !1356, size: 64, offset: 832)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3699, file: !3700, line: 54, baseType: !1356, size: 64, offset: 896)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3699, file: !3700, line: 55, baseType: !1356, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3699, file: !3700, line: 56, baseType: !111, size: 64, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3699, file: !3700, line: 57, baseType: !111, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3699, file: !3700, line: 58, baseType: !111, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3699, file: !3700, line: 59, baseType: !111, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3699, file: !3700, line: 60, baseType: !111, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3699, file: !3700, line: 61, baseType: !3506, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3699, file: !3700, line: 62, baseType: !551, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3699, file: !3700, line: 63, baseType: !551, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3680, file: !3535, line: 583, baseType: !551, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3680, file: !3535, line: 584, baseType: !551, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3680, file: !3535, line: 585, baseType: !551, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3680, file: !3535, line: 586, baseType: !65, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3680, file: !3535, line: 587, baseType: !65, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3680, file: !3535, line: 592, baseType: !1347, size: 512, offset: 576)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3680, file: !3535, line: 593, baseType: !483, size: 64, offset: 1088)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3680, file: !3535, line: 594, baseType: !197, size: 256, offset: 1152)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3680, file: !3535, line: 595, baseType: !1546, size: 128, offset: 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3680, file: !3535, line: 596, baseType: !3707, size: 64, offset: 1536)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3680, file: !3535, line: 597, baseType: !11, size: 32, offset: 1600)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3680, file: !3535, line: 598, baseType: !11, size: 32, offset: 1632)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3680, file: !3535, line: 599, baseType: !65, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3680, file: !3535, line: 600, baseType: !65, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3680, file: !3535, line: 601, baseType: !65, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3680, file: !3535, line: 602, baseType: !65, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3680, file: !3535, line: 603, baseType: !65, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3680, file: !3535, line: 604, baseType: !551, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3680, file: !3535, line: 605, baseType: !65, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3680, file: !3535, line: 606, baseType: !65, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3680, file: !3535, line: 607, baseType: !65, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3680, file: !3535, line: 608, baseType: !65, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3680, file: !3535, line: 609, baseType: !65, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3680, file: !3535, line: 610, baseType: !65, size: 32, offset: 1696)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3680, file: !3535, line: 611, baseType: !3760, size: 32, offset: 1728)
!3760 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3535, line: 524, baseType: !65, size: 32, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766}
!3762 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3763 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3764 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3765 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3766 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3680, file: !3535, line: 612, baseType: !3768, size: 32, offset: 1760)
!3768 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3535, line: 502, baseType: !65, size: 32, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773}
!3770 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3771 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3772 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3773 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3680, file: !3535, line: 613, baseType: !16, size: 32, offset: 1792)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3680, file: !3535, line: 614, baseType: !16, size: 32, offset: 1824)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3680, file: !3535, line: 615, baseType: !483, size: 64, offset: 1856)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3680, file: !3535, line: 616, baseType: !483, size: 64, offset: 1920)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3680, file: !3535, line: 617, baseType: !483, size: 64, offset: 1984)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3680, file: !3535, line: 618, baseType: !483, size: 64, offset: 2048)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3680, file: !3535, line: 620, baseType: !3781, size: 64, offset: 2112)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3535, line: 536, size: 256, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3782, file: !3535, line: 537, baseType: !37)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3782, file: !3535, line: 538, baseType: !65, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3782, file: !3535, line: 540, baseType: !53, size: 128, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3782, file: !3535, line: 543, baseType: !3788, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3535, line: 534, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3680, file: !3535, line: 621, baseType: !3791, size: 64, offset: 2176)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{null, !3506, !1508}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3680, file: !3535, line: 622, baseType: !3795, size: 64, offset: 2240)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3535, line: 622, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !298, file: !299, line: 486, baseType: !3798, size: 64, offset: 4096)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3535, line: 642, size: 1792, elements: !3800)
!3800 = !{!3801, !3802, !3803, !3807, !3808, !3809}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3799, file: !3535, line: 643, baseType: !3534, size: 1472)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3799, file: !3535, line: 644, baseType: !3538, size: 64, offset: 1472)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3799, file: !3535, line: 645, baseType: !3804, size: 64, offset: 1536)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !3506, !551}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3799, file: !3535, line: 646, baseType: !3538, size: 64, offset: 1600)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3799, file: !3535, line: 647, baseType: !3528, size: 64, offset: 1664)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3799, file: !3535, line: 648, baseType: !3528, size: 64, offset: 1728)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !298, file: !299, line: 493, baseType: !3811, size: 64, offset: 4160)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3813, line: 162, size: 1088, elements: !3814)
!3813 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!3814 = !{!3815, !3816, !3817, !4003, !4004, !4005, !4006, !4007, !4008, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3812, file: !3813, line: 163, baseType: !53, size: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3812, file: !3813, line: 164, baseType: !149, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3812, file: !3813, line: 165, baseType: !3818, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !3813, line: 105, size: 640, elements: !3821)
!3821 = !{!3822, !3953, !3964, !3969, !3973, !3980, !3984, !3988, !3995, !3999}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3820, file: !3813, line: 106, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!16, !3811, !3826, !3940}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3828, line: 51, size: 1344, elements: !3829)
!3828 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3829 = !{!3830, !3831, !3833, !3834, !3924, !3933, !3934, !3935, !3936, !3937, !3938, !3939}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3827, file: !3828, line: 52, baseType: !149, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3827, file: !3828, line: 53, baseType: !3832, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3828, line: 28, baseType: !152)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3827, file: !3828, line: 54, baseType: !149, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3827, file: !3828, line: 55, baseType: !3835, size: 192, offset: 192)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3836, line: 17, size: 192, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3837 = !{!3838, !3840, !3923}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3835, file: !3836, line: 18, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3835, file: !3836, line: 19, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3843)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3836, line: 110, size: 1152, elements: !3844)
!3844 = !{!3845, !3849, !3853, !3859, !3865, !3869, !3873, !3878, !3882, !3883, !3887, !3891, !3895, !3906, !3907, !3908, !3909, !3919}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3843, file: !3836, line: 111, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!3839, !3839}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3843, file: !3836, line: 112, baseType: !3850, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3839}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3843, file: !3836, line: 113, baseType: !3854, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!551, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3835)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3843, file: !3836, line: 114, baseType: !3860, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!2235, !3857, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3843, file: !3836, line: 116, baseType: !3866, size: 64, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!551, !3857, !149}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3843, file: !3836, line: 118, baseType: !3870, size: 64, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!16, !3857, !149, !65, !226, !387}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3843, file: !3836, line: 123, baseType: !3874, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!16, !3857, !149, !3877, !387}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3843, file: !3836, line: 126, baseType: !3879, size: 64, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!149, !3857}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3843, file: !3836, line: 127, baseType: !3879, size: 64, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3843, file: !3836, line: 128, baseType: !3884, size: 64, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!3839, !3857}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3843, file: !3836, line: 130, baseType: !3888, size: 64, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!3839, !3857, !3839}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3843, file: !3836, line: 133, baseType: !3892, size: 64, offset: 704)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3839, !3857, !149}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3843, file: !3836, line: 135, baseType: !3896, size: 64, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!16, !3857, !149, !149, !65, !65, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3836, line: 43, size: 640, elements: !3901)
!3901 = !{!3902, !3903, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3900, file: !3836, line: 44, baseType: !3839, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3900, file: !3836, line: 45, baseType: !65, size: 32, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3900, file: !3836, line: 46, baseType: !3905, size: 512, offset: 128)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 512, elements: !1390)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3843, file: !3836, line: 140, baseType: !3888, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3843, file: !3836, line: 143, baseType: !3884, size: 64, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3843, file: !3836, line: 145, baseType: !3846, size: 64, offset: 960)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3843, file: !3836, line: 146, baseType: !3910, size: 64, offset: 1024)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!16, !3857, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3836, line: 29, size: 128, elements: !3915)
!3915 = !{!3916, !3917, !3918}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3914, file: !3836, line: 30, baseType: !65, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3914, file: !3836, line: 31, baseType: !65, size: 32, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3914, file: !3836, line: 32, baseType: !3857, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3843, file: !3836, line: 148, baseType: !3920, size: 64, offset: 1088)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!16, !3857, !3506}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3835, file: !3836, line: 20, baseType: !3506, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3827, file: !3828, line: 57, baseType: !3925, size: 64, offset: 384)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3828, line: 31, size: 704, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3926, file: !3828, line: 32, baseType: !341, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3926, file: !3828, line: 33, baseType: !16, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3926, file: !3828, line: 34, baseType: !226, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3926, file: !3828, line: 35, baseType: !3925, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3926, file: !3828, line: 43, baseType: !408, size: 448, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3827, file: !3828, line: 58, baseType: !3925, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3827, file: !3828, line: 59, baseType: !3826, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3827, file: !3828, line: 60, baseType: !3826, size: 64, offset: 576)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3827, file: !3828, line: 61, baseType: !3826, size: 64, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3827, file: !3828, line: 63, baseType: !302, size: 512, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3827, file: !3828, line: 65, baseType: !111, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3827, file: !3828, line: 66, baseType: !226, size: 64, offset: 1280)
!3940 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !3813, line: 76, baseType: !65, size: 32, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3942 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!3943 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!3944 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!3945 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!3946 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!3947 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!3948 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!3949 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!3950 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!3951 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!3952 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3820, file: !3813, line: 108, baseType: !3954, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!16, !3811, !3957, !3940}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !3813, line: 63, size: 640, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3958, file: !3813, line: 64, baseType: !3839, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3958, file: !3813, line: 65, baseType: !16, size: 32, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3958, file: !3813, line: 66, baseType: !3963, size: 512, offset: 96)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 512, elements: !108)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3820, file: !3813, line: 110, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!16, !3811, !65, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !12, line: 164, baseType: !111)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3820, file: !3813, line: 111, baseType: !3970, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3811, !65}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3820, file: !3813, line: 112, baseType: !3974, size: 64, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!16, !3811, !3826, !3977, !65, !3979, !2804}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3820, file: !3813, line: 117, baseType: !3981, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!16, !3811, !65, !65, !226}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3820, file: !3813, line: 119, baseType: !3985, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !3811, !65, !65}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3820, file: !3813, line: 121, baseType: !3989, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!16, !3811, !3992, !551}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3994, line: 11, flags: DIFlagFwdDecl)
!3994 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3820, file: !3813, line: 122, baseType: !3996, size: 64, offset: 512)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3811, !3992}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3820, file: !3813, line: 123, baseType: !4000, size: 64, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!16, !3811, !3957, !3979, !2804}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3812, file: !3813, line: 166, baseType: !226, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3812, file: !3813, line: 167, baseType: !65, size: 32, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3812, file: !3813, line: 168, baseType: !65, size: 32, offset: 352)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3812, file: !3813, line: 171, baseType: !3839, size: 64, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3812, file: !3813, line: 172, baseType: !3940, size: 32, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3812, file: !3813, line: 173, baseType: !4009, size: 64, offset: 512)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !3813, line: 134, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3812, file: !3813, line: 175, baseType: !3811, size: 64, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3812, file: !3813, line: 182, baseType: !3968, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3812, file: !3813, line: 183, baseType: !65, size: 32, offset: 704)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3812, file: !3813, line: 184, baseType: !65, size: 32, offset: 736)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3812, file: !3813, line: 185, baseType: !801, size: 128, offset: 768)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3812, file: !3813, line: 186, baseType: !21, size: 192, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3812, file: !3813, line: 187, baseType: !4018, offset: 1088)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !2439)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !298, file: !299, line: 499, baseType: !53, size: 128, offset: 4224)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !298, file: !299, line: 502, baseType: !4021, size: 64, offset: 4352)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !299, line: 502, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !298, file: !299, line: 504, baseType: !4025, size: 64, offset: 4416)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !298, file: !299, line: 505, baseType: !483, size: 64, offset: 4480)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !298, file: !299, line: 510, baseType: !483, size: 64, offset: 4544)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !298, file: !299, line: 511, baseType: !4029, size: 64, offset: 4608)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !299, line: 511, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !298, file: !299, line: 513, baseType: !4033, size: 64, offset: 4672)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !299, line: 288, size: 128, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4034, file: !299, line: 293, baseType: !65, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4034, file: !299, line: 294, baseType: !111, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !298, file: !299, line: 515, baseType: !53, size: 128, offset: 4736)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !298, file: !299, line: 526, baseType: !4040, offset: 4864)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4041, line: 5, elements: !51)
!4041 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !298, file: !299, line: 528, baseType: !3826, size: 64, offset: 4864)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !298, file: !299, line: 529, baseType: !3839, size: 64, offset: 4928)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !298, file: !299, line: 534, baseType: !574, size: 32, offset: 4992)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !298, file: !299, line: 535, baseType: !152, size: 32, offset: 5024)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !298, file: !299, line: 537, baseType: !37, offset: 5056)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !298, file: !299, line: 538, baseType: !53, size: 128, offset: 5056)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !298, file: !299, line: 540, baseType: !4049, size: 64, offset: 5184)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4051, line: 54, size: 960, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058, !4059, !4063, !4067, !4068, !4069, !4070, !4074, !4078, !4079}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4050, file: !4051, line: 55, baseType: !149, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4050, file: !4051, line: 56, baseType: !691, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4050, file: !4051, line: 58, baseType: !393, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4050, file: !4051, line: 59, baseType: !393, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4050, file: !4051, line: 60, baseType: !308, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4050, file: !4051, line: 62, baseType: !3519, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4050, file: !4051, line: 63, baseType: !4060, size: 64, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!341, !3506, !3526}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4050, file: !4051, line: 65, baseType: !4064, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !4049}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4050, file: !4051, line: 66, baseType: !3528, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4050, file: !4051, line: 68, baseType: !3538, size: 64, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4050, file: !4051, line: 70, baseType: !3325, size: 64, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4050, file: !4051, line: 71, baseType: !4071, size: 64, offset: 704)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!2235, !3506}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4050, file: !4051, line: 73, baseType: !4075, size: 64, offset: 768)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !3506, !3363, !3364}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4050, file: !4051, line: 75, baseType: !3532, size: 64, offset: 832)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4050, file: !4051, line: 77, baseType: !3656, size: 64, offset: 896)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !298, file: !299, line: 541, baseType: !393, size: 64, offset: 5248)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !298, file: !299, line: 543, baseType: !3528, size: 64, offset: 5312)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !298, file: !299, line: 544, baseType: !4083, size: 64, offset: 5376)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !299, line: 45, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !298, file: !299, line: 545, baseType: !4086, size: 64, offset: 5440)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !299, line: 47, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !298, file: !299, line: 547, baseType: !551, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !298, file: !299, line: 548, baseType: !551, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !298, file: !299, line: 549, baseType: !551, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !298, file: !299, line: 550, baseType: !551, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !243, file: !244, line: 335, baseType: !4093, size: 256, offset: 6592)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 256, elements: !2338)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !243, file: !244, line: 340, baseType: !16, size: 32, offset: 6848)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !7, file: !8, line: 465, baseType: !21, size: 192, offset: 5312)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !7, file: !8, line: 466, baseType: !4097, size: 1024, offset: 5504)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1024, elements: !3603)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !7, file: !8, line: 469, baseType: !4099, size: 704, offset: 6528)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !198, line: 115, size: 704, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4099, file: !198, line: 116, baseType: !197, size: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4099, file: !198, line: 117, baseType: !3710, size: 320, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4099, file: !198, line: 120, baseType: !2914, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4099, file: !198, line: 121, baseType: !16, size: 32, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !7, file: !8, line: 470, baseType: !4106, size: 64, offset: 7232)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !8, line: 203, size: 512, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4116}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4107, file: !8, line: 205, baseType: !111, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4107, file: !8, line: 206, baseType: !21, size: 192, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4107, file: !8, line: 207, baseType: !53, size: 128, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4107, file: !8, line: 209, baseType: !4113, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !6}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4107, file: !8, line: 210, baseType: !4117, size: 64, offset: 448)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{null, !6, !56}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !7, file: !8, line: 473, baseType: !4121, size: 64, offset: 7296)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4123)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !8, line: 228, size: 1472, elements: !4124)
!4124 = !{!4125, !4126, !4130, !4131, !4135, !4139, !4144, !4148, !4152, !4157, !4161, !4162, !4176, !4190, !4207, !4224, !4225, !4229, !4230, !4234, !4245, !4246, !4247}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4123, file: !8, line: 230, baseType: !691, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4123, file: !8, line: 231, baseType: !4127, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!16, !6, !16}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4123, file: !8, line: 232, baseType: !4127, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4123, file: !8, line: 237, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!372, !6, !341, !387, !2997}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4123, file: !8, line: 239, baseType: !4136, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!372, !6, !149, !387, !2997}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4123, file: !8, line: 244, baseType: !4140, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!16, !4143, !6}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4123, file: !8, line: 247, baseType: !4145, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!16, !6}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4123, file: !8, line: 250, baseType: !4149, size: 64, offset: 448)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!16, !65, !65, !65, !65, !65, !6}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4123, file: !8, line: 254, baseType: !4153, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!16, !4156, !6}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4123, file: !8, line: 257, baseType: !4158, size: 64, offset: 576)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!16, !16, !6}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4123, file: !8, line: 260, baseType: !4140, size: 64, offset: 640)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4123, file: !8, line: 263, baseType: !4163, size: 64, offset: 704)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !6, !4166}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !61, line: 351, size: 192, elements: !4169)
!4169 = !{!4170, !4171, !4172, !4173, !4174, !4175}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4168, file: !61, line: 352, baseType: !64, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4168, file: !61, line: 353, baseType: !64, size: 32, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4168, file: !61, line: 354, baseType: !64, size: 32, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4168, file: !61, line: 355, baseType: !64, size: 32, offset: 96)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4168, file: !61, line: 356, baseType: !64, size: 32, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4168, file: !61, line: 357, baseType: !64, size: 32, offset: 160)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4123, file: !8, line: 265, baseType: !4177, size: 64, offset: 768)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !6, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !61, line: 342, size: 192, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4182, file: !61, line: 343, baseType: !64, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4182, file: !61, line: 344, baseType: !64, size: 32, offset: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4182, file: !61, line: 345, baseType: !64, size: 32, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4182, file: !61, line: 346, baseType: !64, size: 32, offset: 96)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4182, file: !61, line: 347, baseType: !64, size: 32, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4182, file: !61, line: 348, baseType: !64, size: 32, offset: 160)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4123, file: !8, line: 267, baseType: !4191, size: 64, offset: 832)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !6, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !61, line: 360, size: 640, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4196, file: !61, line: 361, baseType: !64, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4196, file: !61, line: 362, baseType: !64, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4196, file: !61, line: 363, baseType: !64, size: 32, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4196, file: !61, line: 364, baseType: !64, size: 32, offset: 96)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4196, file: !61, line: 365, baseType: !64, size: 32, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4196, file: !61, line: 366, baseType: !64, size: 32, offset: 160)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4196, file: !61, line: 367, baseType: !167, size: 8, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4196, file: !61, line: 368, baseType: !149, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4196, file: !61, line: 369, baseType: !230, size: 320, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4123, file: !8, line: 270, baseType: !4208, size: 64, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!16, !6, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !61, line: 388, size: 832, elements: !4213)
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4223}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4212, file: !61, line: 389, baseType: !117, size: 16)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4212, file: !61, line: 390, baseType: !117, size: 16, offset: 16)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4212, file: !61, line: 391, baseType: !117, size: 16, offset: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4212, file: !61, line: 392, baseType: !149, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4212, file: !61, line: 393, baseType: !4219, size: 32, offset: 128)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !61, line: 384, size: 32, elements: !4220)
!4220 = !{!4221, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4219, file: !61, line: 385, baseType: !117, size: 16)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4219, file: !61, line: 385, baseType: !117, size: 16, offset: 16)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4212, file: !61, line: 394, baseType: !4196, size: 640, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4123, file: !8, line: 273, baseType: !4145, size: 64, offset: 960)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4123, file: !8, line: 276, baseType: !4226, size: 64, offset: 1024)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!16, !6, !65, !111}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4123, file: !8, line: 280, baseType: !4226, size: 64, offset: 1088)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4123, file: !8, line: 284, baseType: !4231, size: 64, offset: 1152)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!16, !6, !1039}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4123, file: !8, line: 287, baseType: !4235, size: 64, offset: 1216)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !6, !4238, !4143}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !8, line: 144, size: 128, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4239, file: !8, line: 145, baseType: !152, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4239, file: !8, line: 146, baseType: !152, size: 32, offset: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4239, file: !8, line: 147, baseType: !152, size: 32, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4239, file: !8, line: 148, baseType: !152, size: 32, offset: 96)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4123, file: !8, line: 291, baseType: !4113, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4123, file: !8, line: 294, baseType: !4145, size: 64, offset: 1344)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4123, file: !8, line: 295, baseType: !4145, size: 64, offset: 1408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !7, file: !8, line: 474, baseType: !3506, size: 64, offset: 7360)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !7, file: !8, line: 475, baseType: !3506, size: 64, offset: 7424)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !7, file: !8, line: 476, baseType: !16, size: 32, offset: 7488)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !7, file: !8, line: 478, baseType: !4252, size: 64, offset: 7552)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !8, line: 355, size: 384, elements: !4254)
!4254 = !{!4255, !4269, !4282, !4297, !4313, !4326}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4253, file: !8, line: 357, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !6, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !8, line: 306, size: 192, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4260, file: !8, line: 307, baseType: !64, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4260, file: !8, line: 308, baseType: !64, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4260, file: !8, line: 309, baseType: !64, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4260, file: !8, line: 310, baseType: !64, size: 32, offset: 96)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4260, file: !8, line: 311, baseType: !4267, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4253, file: !8, line: 362, baseType: !4270, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !6, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !8, line: 326, size: 192, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4274, file: !8, line: 327, baseType: !64, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4274, file: !8, line: 328, baseType: !64, size: 32, offset: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4274, file: !8, line: 329, baseType: !64, size: 32, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4274, file: !8, line: 330, baseType: !64, size: 32, offset: 96)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4274, file: !8, line: 331, baseType: !64, size: 32, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4274, file: !8, line: 332, baseType: !64, size: 32, offset: 160)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4253, file: !8, line: 364, baseType: !4283, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !6, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !8, line: 315, size: 256, elements: !4288)
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4287, file: !8, line: 316, baseType: !64, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4287, file: !8, line: 317, baseType: !64, size: 32, offset: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4287, file: !8, line: 318, baseType: !64, size: 32, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4287, file: !8, line: 319, baseType: !64, size: 32, offset: 96)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4287, file: !8, line: 320, baseType: !64, size: 32, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4287, file: !8, line: 321, baseType: !64, size: 32, offset: 160)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4287, file: !8, line: 322, baseType: !64, size: 32, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4287, file: !8, line: 323, baseType: !64, size: 32, offset: 224)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4253, file: !8, line: 366, baseType: !4298, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{null, !6, !4301}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !8, line: 335, size: 320, elements: !4303)
!4303 = !{!4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4302, file: !8, line: 336, baseType: !64, size: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4302, file: !8, line: 337, baseType: !64, size: 32, offset: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4302, file: !8, line: 338, baseType: !64, size: 32, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4302, file: !8, line: 339, baseType: !64, size: 32, offset: 96)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4302, file: !8, line: 340, baseType: !64, size: 32, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4302, file: !8, line: 341, baseType: !64, size: 32, offset: 160)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4302, file: !8, line: 342, baseType: !64, size: 32, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4302, file: !8, line: 343, baseType: !4312, size: 64, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4253, file: !8, line: 368, baseType: !4314, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !6, !4317}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !8, line: 346, size: 192, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4318, file: !8, line: 347, baseType: !64, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4318, file: !8, line: 348, baseType: !64, size: 32, offset: 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4318, file: !8, line: 349, baseType: !64, size: 32, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4318, file: !8, line: 350, baseType: !64, size: 32, offset: 96)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4318, file: !8, line: 351, baseType: !64, size: 32, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4318, file: !8, line: 352, baseType: !64, size: 32, offset: 160)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4253, file: !8, line: 371, baseType: !4145, size: 64, offset: 320)
!4327 = !DIDerivedType(tag: DW_TAG_member, scope: !7, file: !8, line: 480, baseType: !4328, size: 64, offset: 7616)
!4328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !8, line: 480, size: 64, elements: !4329)
!4329 = !{!4330, !4331}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4328, file: !8, line: 481, baseType: !341, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4328, file: !8, line: 482, baseType: !341, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !7, file: !8, line: 484, baseType: !111, size: 64, offset: 7680)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !7, file: !8, line: 485, baseType: !226, size: 64, offset: 7744)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !8, line: 488, baseType: !152, size: 32, offset: 7808)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !7, file: !8, line: 489, baseType: !226, size: 64, offset: 7872)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !7, file: !8, line: 491, baseType: !226, size: 64, offset: 7936)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !7, file: !8, line: 501, baseType: !4338, size: 64, offset: 8000)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !8, line: 495, size: 64, elements: !4340)
!4340 = !{!4341, !4342}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4339, file: !8, line: 496, baseType: !65, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4339, file: !8, line: 500, baseType: !4343, offset: 64)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4344, elements: !1821)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !8, line: 497, size: 128, elements: !4345)
!4345 = !{!4346, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4344, file: !8, line: 498, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !12, line: 158, baseType: !2233)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4344, file: !8, line: 499, baseType: !4347, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !7, file: !8, line: 503, baseType: !551, size: 8, offset: 8064)
!4350 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4351, retainedTypes: !4359, globals: !4370, splitDebugInlining: false, nameTableKind: None)
!4351 = !{!254, !262, !926, !1128, !1363, !1485, !2485, !2580, !3267, !3286, !3331, !3588, !3673, !3760, !3768, !3940, !4352}
!4352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4353, line: 305, baseType: !65, size: 32, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!4354 = !{!4355, !4356, !4357, !4358}
!4355 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!4356 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!4357 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!4358 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!4359 = !{!806, !6, !16, !226, !4360, !4365, !4367}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_modelist", file: !8, line: 794, size: 640, elements: !4362)
!4362 = !{!4363, !4364}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4361, file: !8, line: 795, baseType: !53, size: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4361, file: !8, line: 796, baseType: !146, size: 512, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!4370 = !{!0, !4371}
!4371 = !DIGlobalVariableExpression(var: !4372, expr: !DIExpression())
!4372 = distinct !DIGlobalVariable(name: "device_attrs", scope: !4350, file: !3, line: 492, type: !4373, isLocal: true, isDefinition: true)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4374, size: 3328, elements: !4386)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !299, line: 99, size: 256, elements: !4375)
!4375 = !{!4376, !4377, !4382}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4374, file: !299, line: 100, baseType: !378, size: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4374, file: !299, line: 101, baseType: !4378, size: 64, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!372, !3506, !4381, !341}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4374, file: !299, line: 103, baseType: !4383, size: 64, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!372, !3506, !4381, !149, !387}
!4386 = !{!4387}
!4387 = !DISubrange(count: 13)
!4388 = !{i32 7, !"Dwarf Version", i32 4}
!4389 = !{i32 2, !"Debug Info Version", i32 3}
!4390 = !{i32 1, !"wchar_size", i32 2}
!4391 = !{i32 1, !"Code Model", i32 2}
!4392 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4393 = !DILocalVariable(name: "size", arg: 1, scope: !2, file: !3, line: 36, type: !387)
!4394 = !DILocation(line: 36, column: 42, scope: !2)
!4395 = !DILocalVariable(name: "dev", arg: 2, scope: !2, file: !3, line: 36, type: !3506)
!4396 = !DILocation(line: 36, column: 63, scope: !2)
!4397 = !DILocalVariable(name: "fb_info_size", scope: !2, file: !3, line: 40, type: !16)
!4398 = !DILocation(line: 40, column: 6, scope: !2)
!4399 = !DILocalVariable(name: "info", scope: !2, file: !3, line: 41, type: !6)
!4400 = !DILocation(line: 41, column: 18, scope: !2)
!4401 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 42, type: !341)
!4402 = !DILocation(line: 42, column: 8, scope: !2)
!4403 = !DILocation(line: 44, column: 6, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 6)
!4405 = !DILocation(line: 44, column: 6, scope: !2)
!4406 = !DILocation(line: 45, column: 16, scope: !4404)
!4407 = !DILocation(line: 45, column: 3, scope: !4404)
!4408 = !DILocation(line: 47, column: 14, scope: !2)
!4409 = !DILocation(line: 47, column: 29, scope: !2)
!4410 = !DILocation(line: 47, column: 27, scope: !2)
!4411 = !DILocation(line: 47, column: 6, scope: !2)
!4412 = !DILocation(line: 47, column: 4, scope: !2)
!4413 = !DILocation(line: 49, column: 7, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !2, file: !3, line: 49, column: 6)
!4415 = !DILocation(line: 49, column: 6, scope: !2)
!4416 = !DILocation(line: 50, column: 3, scope: !4414)
!4417 = !DILocation(line: 52, column: 28, scope: !2)
!4418 = !DILocation(line: 52, column: 9, scope: !2)
!4419 = !DILocation(line: 52, column: 7, scope: !2)
!4420 = !DILocation(line: 54, column: 6, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !2, file: !3, line: 54, column: 6)
!4422 = !DILocation(line: 54, column: 6, scope: !2)
!4423 = !DILocation(line: 55, column: 15, scope: !4421)
!4424 = !DILocation(line: 55, column: 19, scope: !4421)
!4425 = !DILocation(line: 55, column: 17, scope: !4421)
!4426 = !DILocation(line: 55, column: 3, scope: !4421)
!4427 = !DILocation(line: 55, column: 9, scope: !4421)
!4428 = !DILocation(line: 55, column: 13, scope: !4421)
!4429 = !DILocation(line: 57, column: 17, scope: !2)
!4430 = !DILocation(line: 57, column: 2, scope: !2)
!4431 = !DILocation(line: 57, column: 8, scope: !2)
!4432 = !DILocation(line: 57, column: 15, scope: !2)
!4433 = !DILocation(line: 58, column: 2, scope: !2)
!4434 = !DILocation(line: 58, column: 8, scope: !2)
!4435 = !DILocation(line: 58, column: 26, scope: !2)
!4436 = !DILocation(line: 61, column: 2, scope: !2)
!4437 = !DILocation(line: 61, column: 2, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !2, file: !3, line: 61, column: 2)
!4439 = !DILocation(line: 64, column: 9, scope: !2)
!4440 = !DILocation(line: 64, column: 2, scope: !2)
!4441 = !DILocation(line: 67, column: 1, scope: !2)
!4442 = distinct !DISubprogram(name: "kzalloc", scope: !4353, file: !4353, line: 662, type: !4443, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!226, !387, !806}
!4445 = !DILocalVariable(name: "s", arg: 1, scope: !4446, file: !4353, line: 445, type: !993)
!4446 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4353, file: !4353, line: 445, type: !4447, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!226, !993, !806, !387}
!4449 = !DILocation(line: 445, column: 72, scope: !4446, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 552, column: 10, scope: !4451, inlinedAt: !4454)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !4353, line: 540, column: 34)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !4353, line: 540, column: 6)
!4453 = distinct !DISubprogram(name: "kmalloc", scope: !4353, file: !4353, line: 538, type: !4443, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4454 = distinct !DILocation(line: 664, column: 9, scope: !4442)
!4455 = !DILocalVariable(name: "flags", arg: 2, scope: !4446, file: !4353, line: 446, type: !806)
!4456 = !DILocation(line: 446, column: 9, scope: !4446, inlinedAt: !4450)
!4457 = !DILocalVariable(name: "size", arg: 3, scope: !4446, file: !4353, line: 446, type: !387)
!4458 = !DILocation(line: 446, column: 23, scope: !4446, inlinedAt: !4450)
!4459 = !DILocalVariable(name: "ret", scope: !4446, file: !4353, line: 448, type: !226)
!4460 = !DILocation(line: 448, column: 8, scope: !4446, inlinedAt: !4450)
!4461 = !DILocalVariable(name: "flags", arg: 1, scope: !4462, file: !4353, line: 318, type: !806)
!4462 = distinct !DISubprogram(name: "kmalloc_type", scope: !4353, file: !4353, line: 318, type: !4463, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!4352, !806}
!4465 = !DILocation(line: 318, column: 67, scope: !4462, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 553, column: 20, scope: !4451, inlinedAt: !4454)
!4467 = !DILocalVariable(name: "size", arg: 1, scope: !4468, file: !4353, line: 346, type: !387)
!4468 = distinct !DISubprogram(name: "kmalloc_index", scope: !4353, file: !4353, line: 346, type: !4469, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!65, !387}
!4471 = !DILocation(line: 346, column: 58, scope: !4468, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 547, column: 11, scope: !4451, inlinedAt: !4454)
!4473 = !DILocalVariable(name: "size", arg: 1, scope: !4474, file: !4353, line: 472, type: !387)
!4474 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4353, file: !4353, line: 472, type: !4475, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!226, !387, !806, !65}
!4477 = !DILocation(line: 472, column: 28, scope: !4474, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 481, column: 9, scope: !4479, inlinedAt: !4480)
!4479 = distinct !DISubprogram(name: "kmalloc_large", scope: !4353, file: !4353, line: 478, type: !4443, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4480 = distinct !DILocation(line: 545, column: 11, scope: !4481, inlinedAt: !4454)
!4481 = distinct !DILexicalBlock(scope: !4451, file: !4353, line: 544, column: 7)
!4482 = !DILocalVariable(name: "flags", arg: 2, scope: !4474, file: !4353, line: 472, type: !806)
!4483 = !DILocation(line: 472, column: 40, scope: !4474, inlinedAt: !4478)
!4484 = !DILocalVariable(name: "order", arg: 3, scope: !4474, file: !4353, line: 472, type: !65)
!4485 = !DILocation(line: 472, column: 60, scope: !4474, inlinedAt: !4478)
!4486 = !DILocalVariable(name: "size", arg: 1, scope: !4479, file: !4353, line: 478, type: !387)
!4487 = !DILocation(line: 478, column: 51, scope: !4479, inlinedAt: !4480)
!4488 = !DILocalVariable(name: "flags", arg: 2, scope: !4479, file: !4353, line: 478, type: !806)
!4489 = !DILocation(line: 478, column: 63, scope: !4479, inlinedAt: !4480)
!4490 = !DILocalVariable(name: "order", scope: !4479, file: !4353, line: 480, type: !65)
!4491 = !DILocation(line: 480, column: 15, scope: !4479, inlinedAt: !4480)
!4492 = !DILocalVariable(name: "size", arg: 1, scope: !4453, file: !4353, line: 538, type: !387)
!4493 = !DILocation(line: 538, column: 45, scope: !4453, inlinedAt: !4454)
!4494 = !DILocalVariable(name: "flags", arg: 2, scope: !4453, file: !4353, line: 538, type: !806)
!4495 = !DILocation(line: 538, column: 57, scope: !4453, inlinedAt: !4454)
!4496 = !DILocalVariable(name: "index", scope: !4451, file: !4353, line: 542, type: !65)
!4497 = !DILocation(line: 542, column: 16, scope: !4451, inlinedAt: !4454)
!4498 = !DILocalVariable(name: "size", arg: 1, scope: !4442, file: !4353, line: 662, type: !387)
!4499 = !DILocation(line: 662, column: 36, scope: !4442)
!4500 = !DILocalVariable(name: "flags", arg: 2, scope: !4442, file: !4353, line: 662, type: !806)
!4501 = !DILocation(line: 662, column: 48, scope: !4442)
!4502 = !DILocation(line: 664, column: 17, scope: !4442)
!4503 = !DILocation(line: 664, column: 23, scope: !4442)
!4504 = !DILocation(line: 664, column: 29, scope: !4442)
!4505 = !DILocation(line: 540, column: 27, scope: !4452, inlinedAt: !4454)
!4506 = !DILocation(line: 540, column: 6, scope: !4452, inlinedAt: !4454)
!4507 = !DILocation(line: 540, column: 6, scope: !4453, inlinedAt: !4454)
!4508 = !DILocation(line: 544, column: 7, scope: !4481, inlinedAt: !4454)
!4509 = !DILocation(line: 544, column: 12, scope: !4481, inlinedAt: !4454)
!4510 = !DILocation(line: 544, column: 7, scope: !4451, inlinedAt: !4454)
!4511 = !DILocation(line: 545, column: 25, scope: !4481, inlinedAt: !4454)
!4512 = !DILocation(line: 545, column: 31, scope: !4481, inlinedAt: !4454)
!4513 = !DILocation(line: 480, column: 33, scope: !4479, inlinedAt: !4480)
!4514 = !DILocation(line: 480, column: 23, scope: !4479, inlinedAt: !4480)
!4515 = !DILocation(line: 481, column: 29, scope: !4479, inlinedAt: !4480)
!4516 = !DILocation(line: 481, column: 35, scope: !4479, inlinedAt: !4480)
!4517 = !DILocation(line: 481, column: 42, scope: !4479, inlinedAt: !4480)
!4518 = !DILocation(line: 474, column: 23, scope: !4474, inlinedAt: !4478)
!4519 = !DILocation(line: 474, column: 29, scope: !4474, inlinedAt: !4478)
!4520 = !DILocation(line: 474, column: 36, scope: !4474, inlinedAt: !4478)
!4521 = !DILocation(line: 474, column: 9, scope: !4474, inlinedAt: !4478)
!4522 = !DILocation(line: 545, column: 4, scope: !4481, inlinedAt: !4454)
!4523 = !DILocation(line: 547, column: 25, scope: !4451, inlinedAt: !4454)
!4524 = !DILocation(line: 348, column: 7, scope: !4525, inlinedAt: !4472)
!4525 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 348, column: 6)
!4526 = !DILocation(line: 348, column: 6, scope: !4468, inlinedAt: !4472)
!4527 = !DILocation(line: 349, column: 3, scope: !4525, inlinedAt: !4472)
!4528 = !DILocation(line: 351, column: 6, scope: !4529, inlinedAt: !4472)
!4529 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 351, column: 6)
!4530 = !DILocation(line: 351, column: 11, scope: !4529, inlinedAt: !4472)
!4531 = !DILocation(line: 351, column: 6, scope: !4468, inlinedAt: !4472)
!4532 = !DILocation(line: 352, column: 3, scope: !4529, inlinedAt: !4472)
!4533 = !DILocation(line: 354, column: 32, scope: !4534, inlinedAt: !4472)
!4534 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 354, column: 6)
!4535 = !DILocation(line: 354, column: 37, scope: !4534, inlinedAt: !4472)
!4536 = !DILocation(line: 354, column: 42, scope: !4534, inlinedAt: !4472)
!4537 = !DILocation(line: 354, column: 45, scope: !4534, inlinedAt: !4472)
!4538 = !DILocation(line: 354, column: 50, scope: !4534, inlinedAt: !4472)
!4539 = !DILocation(line: 354, column: 6, scope: !4468, inlinedAt: !4472)
!4540 = !DILocation(line: 355, column: 3, scope: !4534, inlinedAt: !4472)
!4541 = !DILocation(line: 356, column: 32, scope: !4542, inlinedAt: !4472)
!4542 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 356, column: 6)
!4543 = !DILocation(line: 356, column: 37, scope: !4542, inlinedAt: !4472)
!4544 = !DILocation(line: 356, column: 43, scope: !4542, inlinedAt: !4472)
!4545 = !DILocation(line: 356, column: 46, scope: !4542, inlinedAt: !4472)
!4546 = !DILocation(line: 356, column: 51, scope: !4542, inlinedAt: !4472)
!4547 = !DILocation(line: 356, column: 6, scope: !4468, inlinedAt: !4472)
!4548 = !DILocation(line: 357, column: 3, scope: !4542, inlinedAt: !4472)
!4549 = !DILocation(line: 358, column: 6, scope: !4550, inlinedAt: !4472)
!4550 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 358, column: 6)
!4551 = !DILocation(line: 358, column: 11, scope: !4550, inlinedAt: !4472)
!4552 = !DILocation(line: 358, column: 6, scope: !4468, inlinedAt: !4472)
!4553 = !DILocation(line: 358, column: 26, scope: !4550, inlinedAt: !4472)
!4554 = !DILocation(line: 359, column: 6, scope: !4555, inlinedAt: !4472)
!4555 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 359, column: 6)
!4556 = !DILocation(line: 359, column: 11, scope: !4555, inlinedAt: !4472)
!4557 = !DILocation(line: 359, column: 6, scope: !4468, inlinedAt: !4472)
!4558 = !DILocation(line: 359, column: 26, scope: !4555, inlinedAt: !4472)
!4559 = !DILocation(line: 360, column: 6, scope: !4560, inlinedAt: !4472)
!4560 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 360, column: 6)
!4561 = !DILocation(line: 360, column: 11, scope: !4560, inlinedAt: !4472)
!4562 = !DILocation(line: 360, column: 6, scope: !4468, inlinedAt: !4472)
!4563 = !DILocation(line: 360, column: 26, scope: !4560, inlinedAt: !4472)
!4564 = !DILocation(line: 361, column: 6, scope: !4565, inlinedAt: !4472)
!4565 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 361, column: 6)
!4566 = !DILocation(line: 361, column: 11, scope: !4565, inlinedAt: !4472)
!4567 = !DILocation(line: 361, column: 6, scope: !4468, inlinedAt: !4472)
!4568 = !DILocation(line: 361, column: 26, scope: !4565, inlinedAt: !4472)
!4569 = !DILocation(line: 362, column: 6, scope: !4570, inlinedAt: !4472)
!4570 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 362, column: 6)
!4571 = !DILocation(line: 362, column: 11, scope: !4570, inlinedAt: !4472)
!4572 = !DILocation(line: 362, column: 6, scope: !4468, inlinedAt: !4472)
!4573 = !DILocation(line: 362, column: 26, scope: !4570, inlinedAt: !4472)
!4574 = !DILocation(line: 363, column: 6, scope: !4575, inlinedAt: !4472)
!4575 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 363, column: 6)
!4576 = !DILocation(line: 363, column: 11, scope: !4575, inlinedAt: !4472)
!4577 = !DILocation(line: 363, column: 6, scope: !4468, inlinedAt: !4472)
!4578 = !DILocation(line: 363, column: 26, scope: !4575, inlinedAt: !4472)
!4579 = !DILocation(line: 364, column: 6, scope: !4580, inlinedAt: !4472)
!4580 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 364, column: 6)
!4581 = !DILocation(line: 364, column: 11, scope: !4580, inlinedAt: !4472)
!4582 = !DILocation(line: 364, column: 6, scope: !4468, inlinedAt: !4472)
!4583 = !DILocation(line: 364, column: 26, scope: !4580, inlinedAt: !4472)
!4584 = !DILocation(line: 365, column: 6, scope: !4585, inlinedAt: !4472)
!4585 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 365, column: 6)
!4586 = !DILocation(line: 365, column: 11, scope: !4585, inlinedAt: !4472)
!4587 = !DILocation(line: 365, column: 6, scope: !4468, inlinedAt: !4472)
!4588 = !DILocation(line: 365, column: 26, scope: !4585, inlinedAt: !4472)
!4589 = !DILocation(line: 366, column: 6, scope: !4590, inlinedAt: !4472)
!4590 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 366, column: 6)
!4591 = !DILocation(line: 366, column: 11, scope: !4590, inlinedAt: !4472)
!4592 = !DILocation(line: 366, column: 6, scope: !4468, inlinedAt: !4472)
!4593 = !DILocation(line: 366, column: 26, scope: !4590, inlinedAt: !4472)
!4594 = !DILocation(line: 367, column: 6, scope: !4595, inlinedAt: !4472)
!4595 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 367, column: 6)
!4596 = !DILocation(line: 367, column: 11, scope: !4595, inlinedAt: !4472)
!4597 = !DILocation(line: 367, column: 6, scope: !4468, inlinedAt: !4472)
!4598 = !DILocation(line: 367, column: 26, scope: !4595, inlinedAt: !4472)
!4599 = !DILocation(line: 368, column: 6, scope: !4600, inlinedAt: !4472)
!4600 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 368, column: 6)
!4601 = !DILocation(line: 368, column: 11, scope: !4600, inlinedAt: !4472)
!4602 = !DILocation(line: 368, column: 6, scope: !4468, inlinedAt: !4472)
!4603 = !DILocation(line: 368, column: 26, scope: !4600, inlinedAt: !4472)
!4604 = !DILocation(line: 369, column: 6, scope: !4605, inlinedAt: !4472)
!4605 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 369, column: 6)
!4606 = !DILocation(line: 369, column: 11, scope: !4605, inlinedAt: !4472)
!4607 = !DILocation(line: 369, column: 6, scope: !4468, inlinedAt: !4472)
!4608 = !DILocation(line: 369, column: 26, scope: !4605, inlinedAt: !4472)
!4609 = !DILocation(line: 370, column: 6, scope: !4610, inlinedAt: !4472)
!4610 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 370, column: 6)
!4611 = !DILocation(line: 370, column: 11, scope: !4610, inlinedAt: !4472)
!4612 = !DILocation(line: 370, column: 6, scope: !4468, inlinedAt: !4472)
!4613 = !DILocation(line: 370, column: 26, scope: !4610, inlinedAt: !4472)
!4614 = !DILocation(line: 371, column: 6, scope: !4615, inlinedAt: !4472)
!4615 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 371, column: 6)
!4616 = !DILocation(line: 371, column: 11, scope: !4615, inlinedAt: !4472)
!4617 = !DILocation(line: 371, column: 6, scope: !4468, inlinedAt: !4472)
!4618 = !DILocation(line: 371, column: 26, scope: !4615, inlinedAt: !4472)
!4619 = !DILocation(line: 372, column: 6, scope: !4620, inlinedAt: !4472)
!4620 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 372, column: 6)
!4621 = !DILocation(line: 372, column: 11, scope: !4620, inlinedAt: !4472)
!4622 = !DILocation(line: 372, column: 6, scope: !4468, inlinedAt: !4472)
!4623 = !DILocation(line: 372, column: 26, scope: !4620, inlinedAt: !4472)
!4624 = !DILocation(line: 373, column: 6, scope: !4625, inlinedAt: !4472)
!4625 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 373, column: 6)
!4626 = !DILocation(line: 373, column: 11, scope: !4625, inlinedAt: !4472)
!4627 = !DILocation(line: 373, column: 6, scope: !4468, inlinedAt: !4472)
!4628 = !DILocation(line: 373, column: 26, scope: !4625, inlinedAt: !4472)
!4629 = !DILocation(line: 374, column: 6, scope: !4630, inlinedAt: !4472)
!4630 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 374, column: 6)
!4631 = !DILocation(line: 374, column: 11, scope: !4630, inlinedAt: !4472)
!4632 = !DILocation(line: 374, column: 6, scope: !4468, inlinedAt: !4472)
!4633 = !DILocation(line: 374, column: 26, scope: !4630, inlinedAt: !4472)
!4634 = !DILocation(line: 375, column: 6, scope: !4635, inlinedAt: !4472)
!4635 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 375, column: 6)
!4636 = !DILocation(line: 375, column: 11, scope: !4635, inlinedAt: !4472)
!4637 = !DILocation(line: 375, column: 6, scope: !4468, inlinedAt: !4472)
!4638 = !DILocation(line: 375, column: 27, scope: !4635, inlinedAt: !4472)
!4639 = !DILocation(line: 376, column: 6, scope: !4640, inlinedAt: !4472)
!4640 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 376, column: 6)
!4641 = !DILocation(line: 376, column: 11, scope: !4640, inlinedAt: !4472)
!4642 = !DILocation(line: 376, column: 6, scope: !4468, inlinedAt: !4472)
!4643 = !DILocation(line: 376, column: 32, scope: !4640, inlinedAt: !4472)
!4644 = !DILocation(line: 377, column: 6, scope: !4645, inlinedAt: !4472)
!4645 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 377, column: 6)
!4646 = !DILocation(line: 377, column: 11, scope: !4645, inlinedAt: !4472)
!4647 = !DILocation(line: 377, column: 6, scope: !4468, inlinedAt: !4472)
!4648 = !DILocation(line: 377, column: 32, scope: !4645, inlinedAt: !4472)
!4649 = !DILocation(line: 378, column: 6, scope: !4650, inlinedAt: !4472)
!4650 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 378, column: 6)
!4651 = !DILocation(line: 378, column: 11, scope: !4650, inlinedAt: !4472)
!4652 = !DILocation(line: 378, column: 6, scope: !4468, inlinedAt: !4472)
!4653 = !DILocation(line: 378, column: 32, scope: !4650, inlinedAt: !4472)
!4654 = !DILocation(line: 379, column: 6, scope: !4655, inlinedAt: !4472)
!4655 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 379, column: 6)
!4656 = !DILocation(line: 379, column: 11, scope: !4655, inlinedAt: !4472)
!4657 = !DILocation(line: 379, column: 6, scope: !4468, inlinedAt: !4472)
!4658 = !DILocation(line: 379, column: 33, scope: !4655, inlinedAt: !4472)
!4659 = !DILocation(line: 380, column: 6, scope: !4660, inlinedAt: !4472)
!4660 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 380, column: 6)
!4661 = !DILocation(line: 380, column: 11, scope: !4660, inlinedAt: !4472)
!4662 = !DILocation(line: 380, column: 6, scope: !4468, inlinedAt: !4472)
!4663 = !DILocation(line: 380, column: 33, scope: !4660, inlinedAt: !4472)
!4664 = !DILocation(line: 381, column: 6, scope: !4665, inlinedAt: !4472)
!4665 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 381, column: 6)
!4666 = !DILocation(line: 381, column: 11, scope: !4665, inlinedAt: !4472)
!4667 = !DILocation(line: 381, column: 6, scope: !4468, inlinedAt: !4472)
!4668 = !DILocation(line: 381, column: 33, scope: !4665, inlinedAt: !4472)
!4669 = !DILocation(line: 382, column: 2, scope: !4670, inlinedAt: !4472)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !4353, line: 382, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4468, file: !4353, line: 382, column: 2)
!4672 = !{i32 -2144641062, i32 -2144641033, i32 -2144640987, i32 -2144640929, i32 -2144640875, i32 -2144640821, i32 -2144640766, i32 -2144640735}
!4673 = !DILocation(line: 382, column: 2, scope: !4674, inlinedAt: !4472)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !4353, line: 382, column: 2)
!4675 = distinct !DILexicalBlock(scope: !4671, file: !4353, line: 382, column: 2)
!4676 = !{i32 -2144640292, i32 -2144640285, i32 -2144640231, i32 -2144640200, i32 -2144640170}
!4677 = !DILocation(line: 382, column: 2, scope: !4675, inlinedAt: !4472)
!4678 = !DILocation(line: 386, column: 1, scope: !4468, inlinedAt: !4472)
!4679 = !DILocation(line: 547, column: 9, scope: !4451, inlinedAt: !4454)
!4680 = !DILocation(line: 549, column: 8, scope: !4681, inlinedAt: !4454)
!4681 = distinct !DILexicalBlock(scope: !4451, file: !4353, line: 549, column: 7)
!4682 = !DILocation(line: 549, column: 7, scope: !4451, inlinedAt: !4454)
!4683 = !DILocation(line: 550, column: 4, scope: !4681, inlinedAt: !4454)
!4684 = !DILocation(line: 553, column: 33, scope: !4451, inlinedAt: !4454)
!4685 = !DILocation(line: 325, column: 6, scope: !4686, inlinedAt: !4466)
!4686 = distinct !DILexicalBlock(scope: !4462, file: !4353, line: 325, column: 6)
!4687 = !DILocation(line: 325, column: 6, scope: !4462, inlinedAt: !4466)
!4688 = !DILocation(line: 326, column: 3, scope: !4686, inlinedAt: !4466)
!4689 = !DILocation(line: 332, column: 9, scope: !4462, inlinedAt: !4466)
!4690 = !DILocation(line: 332, column: 15, scope: !4462, inlinedAt: !4466)
!4691 = !DILocation(line: 332, column: 2, scope: !4462, inlinedAt: !4466)
!4692 = !DILocation(line: 336, column: 1, scope: !4462, inlinedAt: !4466)
!4693 = !DILocation(line: 553, column: 5, scope: !4451, inlinedAt: !4454)
!4694 = !DILocation(line: 553, column: 41, scope: !4451, inlinedAt: !4454)
!4695 = !DILocation(line: 554, column: 5, scope: !4451, inlinedAt: !4454)
!4696 = !DILocation(line: 554, column: 12, scope: !4451, inlinedAt: !4454)
!4697 = !DILocation(line: 448, column: 31, scope: !4446, inlinedAt: !4450)
!4698 = !DILocation(line: 448, column: 34, scope: !4446, inlinedAt: !4450)
!4699 = !DILocation(line: 448, column: 14, scope: !4446, inlinedAt: !4450)
!4700 = !DILocation(line: 450, column: 22, scope: !4446, inlinedAt: !4450)
!4701 = !DILocation(line: 450, column: 25, scope: !4446, inlinedAt: !4450)
!4702 = !DILocation(line: 450, column: 30, scope: !4446, inlinedAt: !4450)
!4703 = !DILocation(line: 450, column: 36, scope: !4446, inlinedAt: !4450)
!4704 = !DILocation(line: 450, column: 8, scope: !4446, inlinedAt: !4450)
!4705 = !DILocation(line: 450, column: 6, scope: !4446, inlinedAt: !4450)
!4706 = !DILocation(line: 451, column: 9, scope: !4446, inlinedAt: !4450)
!4707 = !DILocation(line: 552, column: 3, scope: !4451, inlinedAt: !4454)
!4708 = !DILocation(line: 557, column: 19, scope: !4453, inlinedAt: !4454)
!4709 = !DILocation(line: 557, column: 25, scope: !4453, inlinedAt: !4454)
!4710 = !DILocation(line: 557, column: 9, scope: !4453, inlinedAt: !4454)
!4711 = !DILocation(line: 557, column: 2, scope: !4453, inlinedAt: !4454)
!4712 = !DILocation(line: 558, column: 1, scope: !4453, inlinedAt: !4454)
!4713 = !DILocation(line: 664, column: 2, scope: !4442)
!4714 = distinct !DISubprogram(name: "framebuffer_release", scope: !3, file: !3, line: 79, type: !4114, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4715 = !DILocalVariable(name: "info", arg: 1, scope: !4714, file: !3, line: 79, type: !6)
!4716 = !DILocation(line: 79, column: 42, scope: !4714)
!4717 = !DILocation(line: 81, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 81, column: 6)
!4719 = !DILocation(line: 81, column: 6, scope: !4714)
!4720 = !DILocation(line: 82, column: 3, scope: !4718)
!4721 = !DILocation(line: 83, column: 8, scope: !4714)
!4722 = !DILocation(line: 83, column: 14, scope: !4714)
!4723 = !DILocation(line: 83, column: 2, scope: !4714)
!4724 = !DILocation(line: 84, column: 8, scope: !4714)
!4725 = !DILocation(line: 84, column: 2, scope: !4714)
!4726 = !DILocation(line: 85, column: 1, scope: !4714)
!4727 = distinct !DISubprogram(name: "fb_init_device", scope: !3, file: !3, line: 510, type: !4146, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4728 = !DILocalVariable(name: "fb_info", arg: 1, scope: !4727, file: !3, line: 510, type: !6)
!4729 = !DILocation(line: 510, column: 36, scope: !4727)
!4730 = !DILocalVariable(name: "i", scope: !4727, file: !3, line: 512, type: !16)
!4731 = !DILocation(line: 512, column: 6, scope: !4727)
!4732 = !DILocalVariable(name: "error", scope: !4727, file: !3, line: 512, type: !16)
!4733 = !DILocation(line: 512, column: 9, scope: !4727)
!4734 = !DILocation(line: 514, column: 18, scope: !4727)
!4735 = !DILocation(line: 514, column: 27, scope: !4727)
!4736 = !DILocation(line: 514, column: 32, scope: !4727)
!4737 = !DILocation(line: 514, column: 2, scope: !4727)
!4738 = !DILocation(line: 516, column: 2, scope: !4727)
!4739 = !DILocation(line: 516, column: 11, scope: !4727)
!4740 = !DILocation(line: 516, column: 22, scope: !4727)
!4741 = !DILocation(line: 518, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 518, column: 2)
!4743 = !DILocation(line: 518, column: 7, scope: !4742)
!4744 = !DILocation(line: 518, column: 14, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 518, column: 2)
!4746 = !DILocation(line: 518, column: 16, scope: !4745)
!4747 = !DILocation(line: 518, column: 2, scope: !4742)
!4748 = !DILocation(line: 519, column: 30, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 518, column: 49)
!4750 = !DILocation(line: 519, column: 39, scope: !4749)
!4751 = !DILocation(line: 519, column: 58, scope: !4749)
!4752 = !DILocation(line: 519, column: 45, scope: !4749)
!4753 = !DILocation(line: 519, column: 11, scope: !4749)
!4754 = !DILocation(line: 519, column: 9, scope: !4749)
!4755 = !DILocation(line: 521, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 521, column: 7)
!4757 = !DILocation(line: 521, column: 7, scope: !4749)
!4758 = !DILocation(line: 522, column: 4, scope: !4756)
!4759 = !DILocation(line: 523, column: 2, scope: !4749)
!4760 = !DILocation(line: 518, column: 45, scope: !4745)
!4761 = !DILocation(line: 518, column: 2, scope: !4745)
!4762 = distinct !{!4762, !4747, !4763}
!4763 = !DILocation(line: 523, column: 2, scope: !4742)
!4764 = !DILocation(line: 525, column: 6, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 525, column: 6)
!4766 = !DILocation(line: 525, column: 6, scope: !4727)
!4767 = !DILocation(line: 526, column: 3, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 525, column: 13)
!4769 = !DILocation(line: 526, column: 10, scope: !4768)
!4770 = !DILocation(line: 526, column: 14, scope: !4768)
!4771 = !DILocation(line: 527, column: 23, scope: !4768)
!4772 = !DILocation(line: 527, column: 32, scope: !4768)
!4773 = !DILocation(line: 527, column: 51, scope: !4768)
!4774 = !DILocation(line: 527, column: 38, scope: !4768)
!4775 = !DILocation(line: 527, column: 4, scope: !4768)
!4776 = distinct !{!4776, !4767, !4777}
!4777 = !DILocation(line: 527, column: 53, scope: !4768)
!4778 = !DILocation(line: 528, column: 3, scope: !4768)
!4779 = !DILocation(line: 528, column: 12, scope: !4768)
!4780 = !DILocation(line: 528, column: 23, scope: !4768)
!4781 = !DILocation(line: 529, column: 2, scope: !4768)
!4782 = !DILocation(line: 531, column: 2, scope: !4727)
!4783 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !299, file: !299, line: 660, type: !4784, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !3506, !226}
!4786 = !DILocalVariable(name: "dev", arg: 1, scope: !4783, file: !299, line: 660, type: !3506)
!4787 = !DILocation(line: 660, column: 51, scope: !4783)
!4788 = !DILocalVariable(name: "data", arg: 2, scope: !4783, file: !299, line: 660, type: !226)
!4789 = !DILocation(line: 660, column: 62, scope: !4783)
!4790 = !DILocation(line: 662, column: 21, scope: !4783)
!4791 = !DILocation(line: 662, column: 2, scope: !4783)
!4792 = !DILocation(line: 662, column: 7, scope: !4783)
!4793 = !DILocation(line: 662, column: 19, scope: !4783)
!4794 = !DILocation(line: 663, column: 1, scope: !4783)
!4795 = distinct !DISubprogram(name: "fb_cleanup_device", scope: !3, file: !3, line: 534, type: !4114, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4796 = !DILocalVariable(name: "fb_info", arg: 1, scope: !4795, file: !3, line: 534, type: !6)
!4797 = !DILocation(line: 534, column: 40, scope: !4795)
!4798 = !DILocalVariable(name: "i", scope: !4795, file: !3, line: 536, type: !65)
!4799 = !DILocation(line: 536, column: 15, scope: !4795)
!4800 = !DILocation(line: 538, column: 6, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 538, column: 6)
!4802 = !DILocation(line: 538, column: 15, scope: !4801)
!4803 = !DILocation(line: 538, column: 26, scope: !4801)
!4804 = !DILocation(line: 538, column: 6, scope: !4795)
!4805 = !DILocation(line: 539, column: 10, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 539, column: 3)
!4807 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 538, column: 48)
!4808 = !DILocation(line: 539, column: 8, scope: !4806)
!4809 = !DILocation(line: 539, column: 15, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 539, column: 3)
!4811 = !DILocation(line: 539, column: 17, scope: !4810)
!4812 = !DILocation(line: 539, column: 3, scope: !4806)
!4813 = !DILocation(line: 540, column: 23, scope: !4810)
!4814 = !DILocation(line: 540, column: 32, scope: !4810)
!4815 = !DILocation(line: 540, column: 51, scope: !4810)
!4816 = !DILocation(line: 540, column: 38, scope: !4810)
!4817 = !DILocation(line: 540, column: 4, scope: !4810)
!4818 = !DILocation(line: 539, column: 46, scope: !4810)
!4819 = !DILocation(line: 539, column: 3, scope: !4810)
!4820 = distinct !{!4820, !4812, !4821}
!4821 = !DILocation(line: 540, column: 53, scope: !4806)
!4822 = !DILocation(line: 542, column: 3, scope: !4807)
!4823 = !DILocation(line: 542, column: 12, scope: !4807)
!4824 = !DILocation(line: 542, column: 23, scope: !4807)
!4825 = !DILocation(line: 543, column: 2, scope: !4807)
!4826 = !DILocation(line: 544, column: 1, scope: !4795)
!4827 = distinct !DISubprogram(name: "fb_bl_default_curve", scope: !3, file: !3, line: 553, type: !4828, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !6, !213, !213, !213}
!4830 = !DILocalVariable(name: "fb_info", arg: 1, scope: !4827, file: !3, line: 553, type: !6)
!4831 = !DILocation(line: 553, column: 42, scope: !4827)
!4832 = !DILocalVariable(name: "off", arg: 2, scope: !4827, file: !3, line: 553, type: !213)
!4833 = !DILocation(line: 553, column: 54, scope: !4827)
!4834 = !DILocalVariable(name: "min", arg: 3, scope: !4827, file: !3, line: 553, type: !213)
!4835 = !DILocation(line: 553, column: 62, scope: !4827)
!4836 = !DILocalVariable(name: "max", arg: 4, scope: !4827, file: !3, line: 553, type: !213)
!4837 = !DILocation(line: 553, column: 70, scope: !4827)
!4838 = !DILocalVariable(name: "i", scope: !4827, file: !3, line: 555, type: !65)
!4839 = !DILocation(line: 555, column: 15, scope: !4827)
!4840 = !DILocalVariable(name: "flat", scope: !4827, file: !3, line: 555, type: !65)
!4841 = !DILocation(line: 555, column: 18, scope: !4827)
!4842 = !DILocalVariable(name: "count", scope: !4827, file: !3, line: 555, type: !65)
!4843 = !DILocation(line: 555, column: 24, scope: !4827)
!4844 = !DILocalVariable(name: "range", scope: !4827, file: !3, line: 555, type: !65)
!4845 = !DILocation(line: 555, column: 31, scope: !4827)
!4846 = !DILocation(line: 555, column: 40, scope: !4827)
!4847 = !DILocation(line: 555, column: 46, scope: !4827)
!4848 = !DILocation(line: 555, column: 44, scope: !4827)
!4849 = !DILocation(line: 557, column: 14, scope: !4827)
!4850 = !DILocation(line: 557, column: 23, scope: !4827)
!4851 = !DILocation(line: 557, column: 2, scope: !4827)
!4852 = !DILocation(line: 559, column: 25, scope: !4827)
!4853 = !DILocation(line: 559, column: 2, scope: !4827)
!4854 = !DILocation(line: 559, column: 11, scope: !4827)
!4855 = !DILocation(line: 559, column: 23, scope: !4827)
!4856 = !DILocation(line: 561, column: 12, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 561, column: 2)
!4858 = !DILocation(line: 561, column: 7, scope: !4857)
!4859 = !DILocation(line: 561, column: 17, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 561, column: 2)
!4861 = !DILocation(line: 561, column: 22, scope: !4860)
!4862 = !DILocation(line: 561, column: 2, scope: !4857)
!4863 = !DILocation(line: 562, column: 29, scope: !4860)
!4864 = !DILocation(line: 562, column: 3, scope: !4860)
!4865 = !DILocation(line: 562, column: 12, scope: !4860)
!4866 = !DILocation(line: 562, column: 21, scope: !4860)
!4867 = !DILocation(line: 562, column: 27, scope: !4860)
!4868 = !DILocation(line: 561, column: 52, scope: !4860)
!4869 = !DILocation(line: 561, column: 2, scope: !4860)
!4870 = distinct !{!4870, !4862, !4871}
!4871 = !DILocation(line: 562, column: 29, scope: !4857)
!4872 = !DILocation(line: 564, column: 8, scope: !4827)
!4873 = !DILocation(line: 565, column: 9, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 565, column: 2)
!4875 = !DILocation(line: 565, column: 7, scope: !4874)
!4876 = !DILocation(line: 565, column: 14, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 565, column: 2)
!4878 = !DILocation(line: 565, column: 18, scope: !4877)
!4879 = !DILocation(line: 565, column: 16, scope: !4877)
!4880 = !DILocation(line: 565, column: 2, scope: !4874)
!4881 = !DILocation(line: 566, column: 33, scope: !4877)
!4882 = !DILocation(line: 566, column: 40, scope: !4877)
!4883 = !DILocation(line: 566, column: 49, scope: !4877)
!4884 = !DILocation(line: 566, column: 51, scope: !4877)
!4885 = !DILocation(line: 566, column: 46, scope: !4877)
!4886 = !DILocation(line: 566, column: 58, scope: !4877)
!4887 = !DILocation(line: 566, column: 56, scope: !4877)
!4888 = !DILocation(line: 566, column: 37, scope: !4877)
!4889 = !DILocation(line: 566, column: 3, scope: !4877)
!4890 = !DILocation(line: 566, column: 12, scope: !4877)
!4891 = !DILocation(line: 566, column: 21, scope: !4877)
!4892 = !DILocation(line: 566, column: 28, scope: !4877)
!4893 = !DILocation(line: 566, column: 26, scope: !4877)
!4894 = !DILocation(line: 566, column: 31, scope: !4877)
!4895 = !DILocation(line: 565, column: 25, scope: !4877)
!4896 = !DILocation(line: 565, column: 2, scope: !4877)
!4897 = distinct !{!4897, !4880, !4898}
!4898 = !DILocation(line: 566, column: 63, scope: !4874)
!4899 = !DILocation(line: 568, column: 16, scope: !4827)
!4900 = !DILocation(line: 568, column: 25, scope: !4827)
!4901 = !DILocation(line: 568, column: 2, scope: !4827)
!4902 = !DILocation(line: 569, column: 1, scope: !4827)
!4903 = distinct !DISubprogram(name: "get_order", scope: !4904, file: !4904, line: 29, type: !4905, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4904 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!16, !111}
!4907 = !DILocalVariable(name: "x", arg: 1, scope: !4908, file: !4909, line: 366, type: !484)
!4908 = distinct !DISubprogram(name: "fls64", scope: !4909, file: !4909, line: 366, type: !4910, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4909 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!16, !484}
!4912 = !DILocation(line: 366, column: 40, scope: !4908, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 46, column: 9, scope: !4903)
!4914 = !DILocalVariable(name: "bitpos", scope: !4908, file: !4909, line: 368, type: !16)
!4915 = !DILocation(line: 368, column: 6, scope: !4908, inlinedAt: !4913)
!4916 = !DILocalVariable(name: "size", arg: 1, scope: !4903, file: !4904, line: 29, type: !111)
!4917 = !DILocation(line: 29, column: 63, scope: !4903)
!4918 = !DILocation(line: 31, column: 27, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4903, file: !4904, line: 31, column: 6)
!4920 = !DILocation(line: 31, column: 6, scope: !4919)
!4921 = !DILocation(line: 31, column: 6, scope: !4903)
!4922 = !DILocation(line: 32, column: 8, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !4904, line: 32, column: 7)
!4924 = distinct !DILexicalBlock(scope: !4919, file: !4904, line: 31, column: 34)
!4925 = !DILocation(line: 32, column: 7, scope: !4924)
!4926 = !DILocation(line: 33, column: 4, scope: !4923)
!4927 = !DILocation(line: 35, column: 7, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4924, file: !4904, line: 35, column: 7)
!4929 = !DILocation(line: 35, column: 12, scope: !4928)
!4930 = !DILocation(line: 35, column: 7, scope: !4924)
!4931 = !DILocation(line: 36, column: 4, scope: !4928)
!4932 = !DILocation(line: 38, column: 10, scope: !4924)
!4933 = !DILocation(line: 38, column: 28, scope: !4924)
!4934 = !DILocation(line: 38, column: 41, scope: !4924)
!4935 = !DILocation(line: 38, column: 3, scope: !4924)
!4936 = !DILocation(line: 41, column: 6, scope: !4903)
!4937 = !DILocation(line: 42, column: 7, scope: !4903)
!4938 = !DILocation(line: 46, column: 15, scope: !4903)
!4939 = !DILocation(line: 374, column: 2, scope: !4908, inlinedAt: !4913)
!4940 = !DILocation(line: 376, column: 14, scope: !4908, inlinedAt: !4913)
!4941 = !{i32 253196}
!4942 = !DILocation(line: 377, column: 9, scope: !4908, inlinedAt: !4913)
!4943 = !DILocation(line: 377, column: 16, scope: !4908, inlinedAt: !4913)
!4944 = !DILocation(line: 46, column: 2, scope: !4903)
!4945 = !DILocation(line: 48, column: 1, scope: !4903)
!4946 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4947, file: !4947, line: 30, type: !4948, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4947 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!16, !483}
!4950 = !DILocation(line: 366, column: 40, scope: !4908, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 32, column: 9, scope: !4946)
!4952 = !DILocation(line: 368, column: 6, scope: !4908, inlinedAt: !4951)
!4953 = !DILocalVariable(name: "n", arg: 1, scope: !4946, file: !4947, line: 30, type: !483)
!4954 = !DILocation(line: 30, column: 21, scope: !4946)
!4955 = !DILocation(line: 32, column: 15, scope: !4946)
!4956 = !DILocation(line: 374, column: 2, scope: !4908, inlinedAt: !4951)
!4957 = !DILocation(line: 376, column: 14, scope: !4908, inlinedAt: !4951)
!4958 = !DILocation(line: 377, column: 9, scope: !4908, inlinedAt: !4951)
!4959 = !DILocation(line: 377, column: 16, scope: !4908, inlinedAt: !4951)
!4960 = !DILocation(line: 32, column: 18, scope: !4946)
!4961 = !DILocation(line: 32, column: 2, scope: !4946)
!4962 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4963, file: !4963, line: 137, type: !4964, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4963 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!226, !993, !2235, !387, !806}
!4966 = !DILocalVariable(name: "s", arg: 1, scope: !4962, file: !4963, line: 137, type: !993)
!4967 = !DILocation(line: 137, column: 54, scope: !4962)
!4968 = !DILocalVariable(name: "object", arg: 2, scope: !4962, file: !4963, line: 137, type: !2235)
!4969 = !DILocation(line: 137, column: 69, scope: !4962)
!4970 = !DILocalVariable(name: "size", arg: 3, scope: !4962, file: !4963, line: 138, type: !387)
!4971 = !DILocation(line: 138, column: 12, scope: !4962)
!4972 = !DILocalVariable(name: "flags", arg: 4, scope: !4962, file: !4963, line: 138, type: !806)
!4973 = !DILocation(line: 138, column: 24, scope: !4962)
!4974 = !DILocation(line: 140, column: 17, scope: !4962)
!4975 = !DILocation(line: 140, column: 2, scope: !4962)
!4976 = distinct !DISubprogram(name: "show_bpp", scope: !3, file: !3, line: 229, type: !4379, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4977 = !DILocalVariable(name: "device", arg: 1, scope: !4976, file: !3, line: 229, type: !3506)
!4978 = !DILocation(line: 229, column: 40, scope: !4976)
!4979 = !DILocalVariable(name: "attr", arg: 2, scope: !4976, file: !3, line: 229, type: !4381)
!4980 = !DILocation(line: 229, column: 73, scope: !4976)
!4981 = !DILocalVariable(name: "buf", arg: 3, scope: !4976, file: !3, line: 230, type: !341)
!4982 = !DILocation(line: 230, column: 10, scope: !4976)
!4983 = !DILocalVariable(name: "fb_info", scope: !4976, file: !3, line: 232, type: !6)
!4984 = !DILocation(line: 232, column: 18, scope: !4976)
!4985 = !DILocation(line: 232, column: 44, scope: !4976)
!4986 = !DILocation(line: 232, column: 28, scope: !4976)
!4987 = !DILocation(line: 233, column: 18, scope: !4976)
!4988 = !DILocation(line: 233, column: 42, scope: !4976)
!4989 = !DILocation(line: 233, column: 51, scope: !4976)
!4990 = !DILocation(line: 233, column: 55, scope: !4976)
!4991 = !DILocation(line: 233, column: 9, scope: !4976)
!4992 = !DILocation(line: 233, column: 2, scope: !4976)
!4993 = distinct !DISubprogram(name: "store_bpp", scope: !3, file: !3, line: 214, type: !4384, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!4994 = !DILocalVariable(name: "device", arg: 1, scope: !4993, file: !3, line: 214, type: !3506)
!4995 = !DILocation(line: 214, column: 41, scope: !4993)
!4996 = !DILocalVariable(name: "attr", arg: 2, scope: !4993, file: !3, line: 214, type: !4381)
!4997 = !DILocation(line: 214, column: 74, scope: !4993)
!4998 = !DILocalVariable(name: "buf", arg: 3, scope: !4993, file: !3, line: 215, type: !149)
!4999 = !DILocation(line: 215, column: 17, scope: !4993)
!5000 = !DILocalVariable(name: "count", arg: 4, scope: !4993, file: !3, line: 215, type: !387)
!5001 = !DILocation(line: 215, column: 29, scope: !4993)
!5002 = !DILocalVariable(name: "fb_info", scope: !4993, file: !3, line: 217, type: !6)
!5003 = !DILocation(line: 217, column: 18, scope: !4993)
!5004 = !DILocation(line: 217, column: 44, scope: !4993)
!5005 = !DILocation(line: 217, column: 28, scope: !4993)
!5006 = !DILocalVariable(name: "var", scope: !4993, file: !3, line: 218, type: !60)
!5007 = !DILocation(line: 218, column: 27, scope: !4993)
!5008 = !DILocalVariable(name: "last", scope: !4993, file: !3, line: 219, type: !5009)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!5010 = !DILocation(line: 219, column: 10, scope: !4993)
!5011 = !DILocalVariable(name: "err", scope: !4993, file: !3, line: 220, type: !16)
!5012 = !DILocation(line: 220, column: 6, scope: !4993)
!5013 = !DILocation(line: 222, column: 8, scope: !4993)
!5014 = !DILocation(line: 222, column: 17, scope: !4993)
!5015 = !DILocation(line: 223, column: 38, scope: !4993)
!5016 = !DILocation(line: 223, column: 43, scope: !4993)
!5017 = !DILocation(line: 223, column: 23, scope: !4993)
!5018 = !DILocation(line: 223, column: 6, scope: !4993)
!5019 = !DILocation(line: 223, column: 21, scope: !4993)
!5020 = !DILocation(line: 224, column: 22, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 224, column: 6)
!5022 = !DILocation(line: 224, column: 13, scope: !5021)
!5023 = !DILocation(line: 224, column: 11, scope: !5021)
!5024 = !DILocation(line: 224, column: 6, scope: !4993)
!5025 = !DILocation(line: 225, column: 10, scope: !5021)
!5026 = !DILocation(line: 225, column: 3, scope: !5021)
!5027 = !DILocation(line: 226, column: 9, scope: !4993)
!5028 = !DILocation(line: 226, column: 2, scope: !4993)
!5029 = !DILocation(line: 227, column: 1, scope: !4993)
!5030 = distinct !DISubprogram(name: "show_blank", scope: !3, file: !3, line: 318, type: !4379, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5031 = !DILocalVariable(name: "device", arg: 1, scope: !5030, file: !3, line: 318, type: !3506)
!5032 = !DILocation(line: 318, column: 42, scope: !5030)
!5033 = !DILocalVariable(name: "attr", arg: 2, scope: !5030, file: !3, line: 319, type: !4381)
!5034 = !DILocation(line: 319, column: 31, scope: !5030)
!5035 = !DILocalVariable(name: "buf", arg: 3, scope: !5030, file: !3, line: 319, type: !341)
!5036 = !DILocation(line: 319, column: 43, scope: !5030)
!5037 = !DILocation(line: 322, column: 2, scope: !5030)
!5038 = distinct !DISubprogram(name: "store_blank", scope: !3, file: !3, line: 299, type: !4384, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5039 = !DILocalVariable(name: "device", arg: 1, scope: !5038, file: !3, line: 299, type: !3506)
!5040 = !DILocation(line: 299, column: 43, scope: !5038)
!5041 = !DILocalVariable(name: "attr", arg: 2, scope: !5038, file: !3, line: 300, type: !4381)
!5042 = !DILocation(line: 300, column: 32, scope: !5038)
!5043 = !DILocalVariable(name: "buf", arg: 3, scope: !5038, file: !3, line: 301, type: !149)
!5044 = !DILocation(line: 301, column: 19, scope: !5038)
!5045 = !DILocalVariable(name: "count", arg: 4, scope: !5038, file: !3, line: 301, type: !387)
!5046 = !DILocation(line: 301, column: 31, scope: !5038)
!5047 = !DILocalVariable(name: "fb_info", scope: !5038, file: !3, line: 303, type: !6)
!5048 = !DILocation(line: 303, column: 18, scope: !5038)
!5049 = !DILocation(line: 303, column: 44, scope: !5038)
!5050 = !DILocation(line: 303, column: 28, scope: !5038)
!5051 = !DILocalVariable(name: "last", scope: !5038, file: !3, line: 304, type: !341)
!5052 = !DILocation(line: 304, column: 8, scope: !5038)
!5053 = !DILocalVariable(name: "err", scope: !5038, file: !3, line: 305, type: !16)
!5054 = !DILocation(line: 305, column: 6, scope: !5038)
!5055 = !DILocalVariable(name: "arg", scope: !5038, file: !3, line: 305, type: !16)
!5056 = !DILocation(line: 305, column: 11, scope: !5038)
!5057 = !DILocation(line: 307, column: 23, scope: !5038)
!5058 = !DILocation(line: 307, column: 8, scope: !5038)
!5059 = !DILocation(line: 307, column: 6, scope: !5038)
!5060 = !DILocation(line: 308, column: 2, scope: !5038)
!5061 = !DILocation(line: 309, column: 17, scope: !5038)
!5062 = !DILocation(line: 309, column: 26, scope: !5038)
!5063 = !DILocation(line: 309, column: 8, scope: !5038)
!5064 = !DILocation(line: 309, column: 6, scope: !5038)
!5065 = !DILocation(line: 311, column: 19, scope: !5038)
!5066 = !DILocation(line: 311, column: 28, scope: !5038)
!5067 = !DILocation(line: 311, column: 2, scope: !5038)
!5068 = !DILocation(line: 312, column: 2, scope: !5038)
!5069 = !DILocation(line: 313, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 313, column: 6)
!5071 = !DILocation(line: 313, column: 10, scope: !5070)
!5072 = !DILocation(line: 313, column: 6, scope: !5038)
!5073 = !DILocation(line: 314, column: 10, scope: !5070)
!5074 = !DILocation(line: 314, column: 3, scope: !5070)
!5075 = !DILocation(line: 315, column: 9, scope: !5038)
!5076 = !DILocation(line: 315, column: 2, scope: !5038)
!5077 = !DILocation(line: 316, column: 1, scope: !5038)
!5078 = distinct !DISubprogram(name: "show_console", scope: !3, file: !3, line: 333, type: !4379, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5079 = !DILocalVariable(name: "device", arg: 1, scope: !5078, file: !3, line: 333, type: !3506)
!5080 = !DILocation(line: 333, column: 44, scope: !5078)
!5081 = !DILocalVariable(name: "attr", arg: 2, scope: !5078, file: !3, line: 334, type: !4381)
!5082 = !DILocation(line: 334, column: 33, scope: !5078)
!5083 = !DILocalVariable(name: "buf", arg: 3, scope: !5078, file: !3, line: 334, type: !341)
!5084 = !DILocation(line: 334, column: 45, scope: !5078)
!5085 = !DILocation(line: 337, column: 2, scope: !5078)
!5086 = distinct !DISubprogram(name: "store_console", scope: !3, file: !3, line: 325, type: !4384, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5087 = !DILocalVariable(name: "device", arg: 1, scope: !5086, file: !3, line: 325, type: !3506)
!5088 = !DILocation(line: 325, column: 45, scope: !5086)
!5089 = !DILocalVariable(name: "attr", arg: 2, scope: !5086, file: !3, line: 326, type: !4381)
!5090 = !DILocation(line: 326, column: 34, scope: !5086)
!5091 = !DILocalVariable(name: "buf", arg: 3, scope: !5086, file: !3, line: 327, type: !149)
!5092 = !DILocation(line: 327, column: 21, scope: !5086)
!5093 = !DILocalVariable(name: "count", arg: 4, scope: !5086, file: !3, line: 327, type: !387)
!5094 = !DILocation(line: 327, column: 33, scope: !5086)
!5095 = !DILocation(line: 330, column: 2, scope: !5086)
!5096 = distinct !DISubprogram(name: "show_cursor", scope: !3, file: !3, line: 348, type: !4379, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5097 = !DILocalVariable(name: "device", arg: 1, scope: !5096, file: !3, line: 348, type: !3506)
!5098 = !DILocation(line: 348, column: 43, scope: !5096)
!5099 = !DILocalVariable(name: "attr", arg: 2, scope: !5096, file: !3, line: 349, type: !4381)
!5100 = !DILocation(line: 349, column: 32, scope: !5096)
!5101 = !DILocalVariable(name: "buf", arg: 3, scope: !5096, file: !3, line: 349, type: !341)
!5102 = !DILocation(line: 349, column: 44, scope: !5096)
!5103 = !DILocation(line: 352, column: 2, scope: !5096)
!5104 = distinct !DISubprogram(name: "store_cursor", scope: !3, file: !3, line: 340, type: !4384, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5105 = !DILocalVariable(name: "device", arg: 1, scope: !5104, file: !3, line: 340, type: !3506)
!5106 = !DILocation(line: 340, column: 44, scope: !5104)
!5107 = !DILocalVariable(name: "attr", arg: 2, scope: !5104, file: !3, line: 341, type: !4381)
!5108 = !DILocation(line: 341, column: 33, scope: !5104)
!5109 = !DILocalVariable(name: "buf", arg: 3, scope: !5104, file: !3, line: 342, type: !149)
!5110 = !DILocation(line: 342, column: 20, scope: !5104)
!5111 = !DILocalVariable(name: "count", arg: 4, scope: !5104, file: !3, line: 342, type: !387)
!5112 = !DILocation(line: 342, column: 32, scope: !5104)
!5113 = !DILocation(line: 345, column: 2, scope: !5104)
!5114 = distinct !DISubprogram(name: "show_mode", scope: !3, file: !3, line: 156, type: !4379, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5115 = !DILocalVariable(name: "device", arg: 1, scope: !5114, file: !3, line: 156, type: !3506)
!5116 = !DILocation(line: 156, column: 41, scope: !5114)
!5117 = !DILocalVariable(name: "attr", arg: 2, scope: !5114, file: !3, line: 156, type: !4381)
!5118 = !DILocation(line: 156, column: 74, scope: !5114)
!5119 = !DILocalVariable(name: "buf", arg: 3, scope: !5114, file: !3, line: 157, type: !341)
!5120 = !DILocation(line: 157, column: 11, scope: !5114)
!5121 = !DILocalVariable(name: "fb_info", scope: !5114, file: !3, line: 159, type: !6)
!5122 = !DILocation(line: 159, column: 18, scope: !5114)
!5123 = !DILocation(line: 159, column: 44, scope: !5114)
!5124 = !DILocation(line: 159, column: 28, scope: !5114)
!5125 = !DILocation(line: 161, column: 7, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 161, column: 6)
!5127 = !DILocation(line: 161, column: 16, scope: !5126)
!5128 = !DILocation(line: 161, column: 6, scope: !5114)
!5129 = !DILocation(line: 162, column: 3, scope: !5126)
!5130 = !DILocation(line: 164, column: 21, scope: !5114)
!5131 = !DILocation(line: 164, column: 29, scope: !5114)
!5132 = !DILocation(line: 164, column: 38, scope: !5114)
!5133 = !DILocation(line: 164, column: 9, scope: !5114)
!5134 = !DILocation(line: 164, column: 2, scope: !5114)
!5135 = !DILocation(line: 165, column: 1, scope: !5114)
!5136 = distinct !DISubprogram(name: "store_mode", scope: !3, file: !3, line: 125, type: !4384, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5137 = !DILocalVariable(name: "device", arg: 1, scope: !5136, file: !3, line: 125, type: !3506)
!5138 = !DILocation(line: 125, column: 42, scope: !5136)
!5139 = !DILocalVariable(name: "attr", arg: 2, scope: !5136, file: !3, line: 125, type: !4381)
!5140 = !DILocation(line: 125, column: 75, scope: !5136)
!5141 = !DILocalVariable(name: "buf", arg: 3, scope: !5136, file: !3, line: 126, type: !149)
!5142 = !DILocation(line: 126, column: 18, scope: !5136)
!5143 = !DILocalVariable(name: "count", arg: 4, scope: !5136, file: !3, line: 126, type: !387)
!5144 = !DILocation(line: 126, column: 30, scope: !5136)
!5145 = !DILocalVariable(name: "fb_info", scope: !5136, file: !3, line: 128, type: !6)
!5146 = !DILocation(line: 128, column: 18, scope: !5136)
!5147 = !DILocation(line: 128, column: 44, scope: !5136)
!5148 = !DILocation(line: 128, column: 28, scope: !5136)
!5149 = !DILocalVariable(name: "mstr", scope: !5136, file: !3, line: 129, type: !5150)
!5150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 800, elements: !5151)
!5151 = !{!5152}
!5152 = !DISubrange(count: 100)
!5153 = !DILocation(line: 129, column: 7, scope: !5136)
!5154 = !DILocalVariable(name: "var", scope: !5136, file: !3, line: 130, type: !60)
!5155 = !DILocation(line: 130, column: 27, scope: !5136)
!5156 = !DILocalVariable(name: "modelist", scope: !5136, file: !3, line: 131, type: !4360)
!5157 = !DILocation(line: 131, column: 22, scope: !5136)
!5158 = !DILocalVariable(name: "mode", scope: !5136, file: !3, line: 132, type: !145)
!5159 = !DILocation(line: 132, column: 23, scope: !5136)
!5160 = !DILocalVariable(name: "pos", scope: !5136, file: !3, line: 133, type: !56)
!5161 = !DILocation(line: 133, column: 20, scope: !5136)
!5162 = !DILocalVariable(name: "i", scope: !5136, file: !3, line: 134, type: !387)
!5163 = !DILocation(line: 134, column: 9, scope: !5136)
!5164 = !DILocalVariable(name: "err", scope: !5136, file: !3, line: 135, type: !16)
!5165 = !DILocation(line: 135, column: 6, scope: !5136)
!5166 = !DILocation(line: 137, column: 2, scope: !5136)
!5167 = !DILocation(line: 139, column: 2, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 139, column: 2)
!5169 = !DILocation(line: 139, column: 2, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 139, column: 2)
!5171 = !DILocalVariable(name: "__mptr", scope: !5172, file: !3, line: 140, type: !226)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 140, column: 14)
!5173 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 139, column: 41)
!5174 = !DILocation(line: 140, column: 14, scope: !5172)
!5175 = !DILocation(line: 140, column: 14, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 140, column: 14)
!5177 = !DILocation(line: 140, column: 12, scope: !5173)
!5178 = !DILocation(line: 141, column: 11, scope: !5173)
!5179 = !DILocation(line: 141, column: 21, scope: !5173)
!5180 = !DILocation(line: 141, column: 8, scope: !5173)
!5181 = !DILocation(line: 142, column: 19, scope: !5173)
!5182 = !DILocation(line: 142, column: 28, scope: !5173)
!5183 = !DILocation(line: 142, column: 7, scope: !5173)
!5184 = !DILocation(line: 142, column: 5, scope: !5173)
!5185 = !DILocation(line: 143, column: 15, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 143, column: 7)
!5187 = !DILocation(line: 143, column: 21, scope: !5186)
!5188 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !5189, file: !3, line: 143, type: !387)
!5189 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 143, column: 26)
!5190 = !DILocation(line: 143, column: 26, scope: !5189)
!5191 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !5189, file: !3, line: 143, type: !387)
!5192 = !DILocation(line: 143, column: 7, scope: !5186)
!5193 = !DILocation(line: 143, column: 41, scope: !5186)
!5194 = !DILocation(line: 143, column: 7, scope: !5173)
!5195 = !DILocation(line: 145, column: 10, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 143, column: 47)
!5197 = !DILocation(line: 145, column: 19, scope: !5196)
!5198 = !DILocation(line: 146, column: 30, scope: !5196)
!5199 = !DILocation(line: 146, column: 4, scope: !5196)
!5200 = !DILocation(line: 147, column: 24, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 147, column: 8)
!5202 = !DILocation(line: 147, column: 15, scope: !5201)
!5203 = !DILocation(line: 147, column: 13, scope: !5201)
!5204 = !DILocation(line: 147, column: 8, scope: !5196)
!5205 = !DILocation(line: 148, column: 12, scope: !5201)
!5206 = !DILocation(line: 148, column: 5, scope: !5201)
!5207 = !DILocation(line: 149, column: 20, scope: !5196)
!5208 = !DILocation(line: 149, column: 4, scope: !5196)
!5209 = !DILocation(line: 149, column: 13, scope: !5196)
!5210 = !DILocation(line: 149, column: 18, scope: !5196)
!5211 = !DILocation(line: 150, column: 11, scope: !5196)
!5212 = !DILocation(line: 150, column: 4, scope: !5196)
!5213 = !DILocation(line: 152, column: 2, scope: !5173)
!5214 = distinct !{!5214, !5167, !5215}
!5215 = !DILocation(line: 152, column: 2, scope: !5168)
!5216 = !DILocation(line: 153, column: 2, scope: !5136)
!5217 = !DILocation(line: 154, column: 1, scope: !5136)
!5218 = distinct !DISubprogram(name: "show_modes", scope: !3, file: !3, line: 196, type: !4379, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5219 = !DILocalVariable(name: "device", arg: 1, scope: !5218, file: !3, line: 196, type: !3506)
!5220 = !DILocation(line: 196, column: 42, scope: !5218)
!5221 = !DILocalVariable(name: "attr", arg: 2, scope: !5218, file: !3, line: 196, type: !4381)
!5222 = !DILocation(line: 196, column: 75, scope: !5218)
!5223 = !DILocalVariable(name: "buf", arg: 3, scope: !5218, file: !3, line: 197, type: !341)
!5224 = !DILocation(line: 197, column: 12, scope: !5218)
!5225 = !DILocalVariable(name: "fb_info", scope: !5218, file: !3, line: 199, type: !6)
!5226 = !DILocation(line: 199, column: 18, scope: !5218)
!5227 = !DILocation(line: 199, column: 44, scope: !5218)
!5228 = !DILocation(line: 199, column: 28, scope: !5218)
!5229 = !DILocalVariable(name: "i", scope: !5218, file: !3, line: 200, type: !65)
!5230 = !DILocation(line: 200, column: 15, scope: !5218)
!5231 = !DILocalVariable(name: "pos", scope: !5218, file: !3, line: 201, type: !56)
!5232 = !DILocation(line: 201, column: 20, scope: !5218)
!5233 = !DILocalVariable(name: "modelist", scope: !5218, file: !3, line: 202, type: !4360)
!5234 = !DILocation(line: 202, column: 22, scope: !5218)
!5235 = !DILocalVariable(name: "mode", scope: !5218, file: !3, line: 203, type: !4365)
!5236 = !DILocation(line: 203, column: 29, scope: !5218)
!5237 = !DILocation(line: 205, column: 4, scope: !5218)
!5238 = !DILocation(line: 206, column: 2, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 206, column: 2)
!5240 = !DILocation(line: 206, column: 2, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 206, column: 2)
!5242 = !DILocalVariable(name: "__mptr", scope: !5243, file: !3, line: 207, type: !226)
!5243 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 207, column: 14)
!5244 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 206, column: 41)
!5245 = !DILocation(line: 207, column: 14, scope: !5243)
!5246 = !DILocation(line: 207, column: 14, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 207, column: 14)
!5248 = !DILocation(line: 207, column: 12, scope: !5244)
!5249 = !DILocation(line: 208, column: 11, scope: !5244)
!5250 = !DILocation(line: 208, column: 21, scope: !5244)
!5251 = !DILocation(line: 208, column: 8, scope: !5244)
!5252 = !DILocation(line: 209, column: 20, scope: !5244)
!5253 = !DILocation(line: 209, column: 25, scope: !5244)
!5254 = !DILocation(line: 209, column: 28, scope: !5244)
!5255 = !DILocation(line: 209, column: 8, scope: !5244)
!5256 = !DILocation(line: 209, column: 5, scope: !5244)
!5257 = !DILocation(line: 210, column: 2, scope: !5244)
!5258 = distinct !{!5258, !5238, !5259}
!5259 = !DILocation(line: 210, column: 2, scope: !5239)
!5260 = !DILocation(line: 211, column: 9, scope: !5218)
!5261 = !DILocation(line: 211, column: 2, scope: !5218)
!5262 = distinct !DISubprogram(name: "store_modes", scope: !3, file: !3, line: 167, type: !4384, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5263 = !DILocalVariable(name: "device", arg: 1, scope: !5262, file: !3, line: 167, type: !3506)
!5264 = !DILocation(line: 167, column: 43, scope: !5262)
!5265 = !DILocalVariable(name: "attr", arg: 2, scope: !5262, file: !3, line: 168, type: !4381)
!5266 = !DILocation(line: 168, column: 32, scope: !5262)
!5267 = !DILocalVariable(name: "buf", arg: 3, scope: !5262, file: !3, line: 169, type: !149)
!5268 = !DILocation(line: 169, column: 19, scope: !5262)
!5269 = !DILocalVariable(name: "count", arg: 4, scope: !5262, file: !3, line: 169, type: !387)
!5270 = !DILocation(line: 169, column: 31, scope: !5262)
!5271 = !DILocalVariable(name: "fb_info", scope: !5262, file: !3, line: 171, type: !6)
!5272 = !DILocation(line: 171, column: 18, scope: !5262)
!5273 = !DILocation(line: 171, column: 44, scope: !5262)
!5274 = !DILocation(line: 171, column: 28, scope: !5262)
!5275 = !DILocalVariable(name: "old_list", scope: !5262, file: !3, line: 172, type: !53)
!5276 = !DILocation(line: 172, column: 2, scope: !5262)
!5277 = !DILocalVariable(name: "i", scope: !5262, file: !3, line: 173, type: !16)
!5278 = !DILocation(line: 173, column: 6, scope: !5262)
!5279 = !DILocation(line: 173, column: 10, scope: !5262)
!5280 = !DILocation(line: 173, column: 16, scope: !5262)
!5281 = !DILocation(line: 175, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 175, column: 6)
!5283 = !DILocation(line: 175, column: 8, scope: !5282)
!5284 = !DILocation(line: 175, column: 41, scope: !5282)
!5285 = !DILocation(line: 175, column: 38, scope: !5282)
!5286 = !DILocation(line: 175, column: 6, scope: !5262)
!5287 = !DILocation(line: 176, column: 3, scope: !5282)
!5288 = !DILocation(line: 178, column: 2, scope: !5262)
!5289 = !DILocation(line: 179, column: 15, scope: !5262)
!5290 = !DILocation(line: 179, column: 2, scope: !5262)
!5291 = !DILocation(line: 181, column: 15, scope: !5262)
!5292 = !DILocation(line: 181, column: 24, scope: !5262)
!5293 = !DILocation(line: 181, column: 2, scope: !5262)
!5294 = !DILocation(line: 182, column: 56, scope: !5262)
!5295 = !DILocation(line: 182, column: 27, scope: !5262)
!5296 = !DILocation(line: 182, column: 61, scope: !5262)
!5297 = !DILocation(line: 183, column: 7, scope: !5262)
!5298 = !DILocation(line: 183, column: 16, scope: !5262)
!5299 = !DILocation(line: 182, column: 2, scope: !5262)
!5300 = !DILocation(line: 184, column: 22, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 184, column: 6)
!5302 = !DILocation(line: 184, column: 6, scope: !5301)
!5303 = !DILocation(line: 184, column: 6, scope: !5262)
!5304 = !DILocation(line: 185, column: 24, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 184, column: 32)
!5306 = !DILocation(line: 185, column: 33, scope: !5305)
!5307 = !DILocation(line: 185, column: 3, scope: !5305)
!5308 = !DILocation(line: 186, column: 27, scope: !5305)
!5309 = !DILocation(line: 186, column: 36, scope: !5305)
!5310 = !DILocation(line: 186, column: 3, scope: !5305)
!5311 = !DILocation(line: 187, column: 2, scope: !5305)
!5312 = !DILocation(line: 188, column: 3, scope: !5301)
!5313 = !DILocation(line: 190, column: 17, scope: !5262)
!5314 = !DILocation(line: 190, column: 2, scope: !5262)
!5315 = !DILocation(line: 191, column: 2, scope: !5262)
!5316 = !DILocation(line: 193, column: 2, scope: !5262)
!5317 = !DILocation(line: 194, column: 1, scope: !5262)
!5318 = distinct !DISubprogram(name: "show_pan", scope: !3, file: !3, line: 380, type: !4379, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5319 = !DILocalVariable(name: "device", arg: 1, scope: !5318, file: !3, line: 380, type: !3506)
!5320 = !DILocation(line: 380, column: 40, scope: !5318)
!5321 = !DILocalVariable(name: "attr", arg: 2, scope: !5318, file: !3, line: 381, type: !4381)
!5322 = !DILocation(line: 381, column: 29, scope: !5318)
!5323 = !DILocalVariable(name: "buf", arg: 3, scope: !5318, file: !3, line: 381, type: !341)
!5324 = !DILocation(line: 381, column: 41, scope: !5318)
!5325 = !DILocalVariable(name: "fb_info", scope: !5318, file: !3, line: 383, type: !6)
!5326 = !DILocation(line: 383, column: 18, scope: !5318)
!5327 = !DILocation(line: 383, column: 44, scope: !5318)
!5328 = !DILocation(line: 383, column: 28, scope: !5318)
!5329 = !DILocation(line: 384, column: 18, scope: !5318)
!5330 = !DILocation(line: 384, column: 45, scope: !5318)
!5331 = !DILocation(line: 384, column: 54, scope: !5318)
!5332 = !DILocation(line: 384, column: 58, scope: !5318)
!5333 = !DILocation(line: 385, column: 4, scope: !5318)
!5334 = !DILocation(line: 385, column: 13, scope: !5318)
!5335 = !DILocation(line: 385, column: 17, scope: !5318)
!5336 = !DILocation(line: 384, column: 9, scope: !5318)
!5337 = !DILocation(line: 384, column: 2, scope: !5318)
!5338 = distinct !DISubprogram(name: "store_pan", scope: !3, file: !3, line: 355, type: !4384, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5339 = !DILocalVariable(name: "device", arg: 1, scope: !5338, file: !3, line: 355, type: !3506)
!5340 = !DILocation(line: 355, column: 41, scope: !5338)
!5341 = !DILocalVariable(name: "attr", arg: 2, scope: !5338, file: !3, line: 356, type: !4381)
!5342 = !DILocation(line: 356, column: 30, scope: !5338)
!5343 = !DILocalVariable(name: "buf", arg: 3, scope: !5338, file: !3, line: 357, type: !149)
!5344 = !DILocation(line: 357, column: 17, scope: !5338)
!5345 = !DILocalVariable(name: "count", arg: 4, scope: !5338, file: !3, line: 357, type: !387)
!5346 = !DILocation(line: 357, column: 29, scope: !5338)
!5347 = !DILocalVariable(name: "fb_info", scope: !5338, file: !3, line: 359, type: !6)
!5348 = !DILocation(line: 359, column: 18, scope: !5338)
!5349 = !DILocation(line: 359, column: 44, scope: !5338)
!5350 = !DILocation(line: 359, column: 28, scope: !5338)
!5351 = !DILocalVariable(name: "var", scope: !5338, file: !3, line: 360, type: !60)
!5352 = !DILocation(line: 360, column: 27, scope: !5338)
!5353 = !DILocalVariable(name: "last", scope: !5338, file: !3, line: 361, type: !341)
!5354 = !DILocation(line: 361, column: 8, scope: !5338)
!5355 = !DILocalVariable(name: "err", scope: !5338, file: !3, line: 362, type: !16)
!5356 = !DILocation(line: 362, column: 6, scope: !5338)
!5357 = !DILocation(line: 364, column: 8, scope: !5338)
!5358 = !DILocation(line: 364, column: 17, scope: !5338)
!5359 = !DILocation(line: 365, column: 31, scope: !5338)
!5360 = !DILocation(line: 365, column: 16, scope: !5338)
!5361 = !DILocation(line: 365, column: 6, scope: !5338)
!5362 = !DILocation(line: 365, column: 14, scope: !5338)
!5363 = !DILocation(line: 366, column: 6, scope: !5338)
!5364 = !DILocation(line: 367, column: 6, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 367, column: 6)
!5366 = !DILocation(line: 367, column: 13, scope: !5365)
!5367 = !DILocation(line: 367, column: 11, scope: !5365)
!5368 = !DILocation(line: 367, column: 20, scope: !5365)
!5369 = !DILocation(line: 367, column: 17, scope: !5365)
!5370 = !DILocation(line: 367, column: 6, scope: !5338)
!5371 = !DILocation(line: 368, column: 3, scope: !5365)
!5372 = !DILocation(line: 369, column: 31, scope: !5338)
!5373 = !DILocation(line: 369, column: 16, scope: !5338)
!5374 = !DILocation(line: 369, column: 6, scope: !5338)
!5375 = !DILocation(line: 369, column: 14, scope: !5338)
!5376 = !DILocation(line: 371, column: 2, scope: !5338)
!5377 = !DILocation(line: 372, column: 23, scope: !5338)
!5378 = !DILocation(line: 372, column: 8, scope: !5338)
!5379 = !DILocation(line: 372, column: 6, scope: !5338)
!5380 = !DILocation(line: 373, column: 2, scope: !5338)
!5381 = !DILocation(line: 375, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 375, column: 6)
!5383 = !DILocation(line: 375, column: 10, scope: !5382)
!5384 = !DILocation(line: 375, column: 6, scope: !5338)
!5385 = !DILocation(line: 376, column: 10, scope: !5382)
!5386 = !DILocation(line: 376, column: 3, scope: !5382)
!5387 = !DILocation(line: 377, column: 9, scope: !5338)
!5388 = !DILocation(line: 377, column: 2, scope: !5338)
!5389 = !DILocation(line: 378, column: 1, scope: !5338)
!5390 = distinct !DISubprogram(name: "show_virtual", scope: !3, file: !3, line: 284, type: !4379, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5391 = !DILocalVariable(name: "device", arg: 1, scope: !5390, file: !3, line: 284, type: !3506)
!5392 = !DILocation(line: 284, column: 44, scope: !5390)
!5393 = !DILocalVariable(name: "attr", arg: 2, scope: !5390, file: !3, line: 285, type: !4381)
!5394 = !DILocation(line: 285, column: 33, scope: !5390)
!5395 = !DILocalVariable(name: "buf", arg: 3, scope: !5390, file: !3, line: 285, type: !341)
!5396 = !DILocation(line: 285, column: 45, scope: !5390)
!5397 = !DILocalVariable(name: "fb_info", scope: !5390, file: !3, line: 287, type: !6)
!5398 = !DILocation(line: 287, column: 18, scope: !5390)
!5399 = !DILocation(line: 287, column: 44, scope: !5390)
!5400 = !DILocation(line: 287, column: 28, scope: !5390)
!5401 = !DILocation(line: 288, column: 18, scope: !5390)
!5402 = !DILocation(line: 288, column: 45, scope: !5390)
!5403 = !DILocation(line: 288, column: 54, scope: !5390)
!5404 = !DILocation(line: 288, column: 58, scope: !5390)
!5405 = !DILocation(line: 289, column: 4, scope: !5390)
!5406 = !DILocation(line: 289, column: 13, scope: !5390)
!5407 = !DILocation(line: 289, column: 17, scope: !5390)
!5408 = !DILocation(line: 288, column: 9, scope: !5390)
!5409 = !DILocation(line: 288, column: 2, scope: !5390)
!5410 = distinct !DISubprogram(name: "store_virtual", scope: !3, file: !3, line: 263, type: !4384, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5411 = !DILocalVariable(name: "device", arg: 1, scope: !5410, file: !3, line: 263, type: !3506)
!5412 = !DILocation(line: 263, column: 45, scope: !5410)
!5413 = !DILocalVariable(name: "attr", arg: 2, scope: !5410, file: !3, line: 264, type: !4381)
!5414 = !DILocation(line: 264, column: 34, scope: !5410)
!5415 = !DILocalVariable(name: "buf", arg: 3, scope: !5410, file: !3, line: 265, type: !149)
!5416 = !DILocation(line: 265, column: 21, scope: !5410)
!5417 = !DILocalVariable(name: "count", arg: 4, scope: !5410, file: !3, line: 265, type: !387)
!5418 = !DILocation(line: 265, column: 33, scope: !5410)
!5419 = !DILocalVariable(name: "fb_info", scope: !5410, file: !3, line: 267, type: !6)
!5420 = !DILocation(line: 267, column: 18, scope: !5410)
!5421 = !DILocation(line: 267, column: 44, scope: !5410)
!5422 = !DILocation(line: 267, column: 28, scope: !5410)
!5423 = !DILocalVariable(name: "var", scope: !5410, file: !3, line: 268, type: !60)
!5424 = !DILocation(line: 268, column: 27, scope: !5410)
!5425 = !DILocalVariable(name: "last", scope: !5410, file: !3, line: 269, type: !341)
!5426 = !DILocation(line: 269, column: 8, scope: !5410)
!5427 = !DILocalVariable(name: "err", scope: !5410, file: !3, line: 270, type: !16)
!5428 = !DILocation(line: 270, column: 6, scope: !5410)
!5429 = !DILocation(line: 272, column: 8, scope: !5410)
!5430 = !DILocation(line: 272, column: 17, scope: !5410)
!5431 = !DILocation(line: 273, column: 36, scope: !5410)
!5432 = !DILocation(line: 273, column: 21, scope: !5410)
!5433 = !DILocation(line: 273, column: 6, scope: !5410)
!5434 = !DILocation(line: 273, column: 19, scope: !5410)
!5435 = !DILocation(line: 274, column: 6, scope: !5410)
!5436 = !DILocation(line: 275, column: 6, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 275, column: 6)
!5438 = !DILocation(line: 275, column: 13, scope: !5437)
!5439 = !DILocation(line: 275, column: 11, scope: !5437)
!5440 = !DILocation(line: 275, column: 20, scope: !5437)
!5441 = !DILocation(line: 275, column: 17, scope: !5437)
!5442 = !DILocation(line: 275, column: 6, scope: !5410)
!5443 = !DILocation(line: 276, column: 3, scope: !5437)
!5444 = !DILocation(line: 277, column: 36, scope: !5410)
!5445 = !DILocation(line: 277, column: 21, scope: !5410)
!5446 = !DILocation(line: 277, column: 6, scope: !5410)
!5447 = !DILocation(line: 277, column: 19, scope: !5410)
!5448 = !DILocation(line: 279, column: 22, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 279, column: 6)
!5450 = !DILocation(line: 279, column: 13, scope: !5449)
!5451 = !DILocation(line: 279, column: 11, scope: !5449)
!5452 = !DILocation(line: 279, column: 6, scope: !5410)
!5453 = !DILocation(line: 280, column: 10, scope: !5449)
!5454 = !DILocation(line: 280, column: 3, scope: !5449)
!5455 = !DILocation(line: 281, column: 9, scope: !5410)
!5456 = !DILocation(line: 281, column: 2, scope: !5410)
!5457 = !DILocation(line: 282, column: 1, scope: !5410)
!5458 = distinct !DISubprogram(name: "show_name", scope: !3, file: !3, line: 388, type: !4379, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5459 = !DILocalVariable(name: "device", arg: 1, scope: !5458, file: !3, line: 388, type: !3506)
!5460 = !DILocation(line: 388, column: 41, scope: !5458)
!5461 = !DILocalVariable(name: "attr", arg: 2, scope: !5458, file: !3, line: 389, type: !4381)
!5462 = !DILocation(line: 389, column: 30, scope: !5458)
!5463 = !DILocalVariable(name: "buf", arg: 3, scope: !5458, file: !3, line: 389, type: !341)
!5464 = !DILocation(line: 389, column: 42, scope: !5458)
!5465 = !DILocalVariable(name: "fb_info", scope: !5458, file: !3, line: 391, type: !6)
!5466 = !DILocation(line: 391, column: 18, scope: !5458)
!5467 = !DILocation(line: 391, column: 44, scope: !5458)
!5468 = !DILocation(line: 391, column: 28, scope: !5458)
!5469 = !DILocation(line: 393, column: 18, scope: !5458)
!5470 = !DILocation(line: 393, column: 42, scope: !5458)
!5471 = !DILocation(line: 393, column: 51, scope: !5458)
!5472 = !DILocation(line: 393, column: 55, scope: !5458)
!5473 = !DILocation(line: 393, column: 9, scope: !5458)
!5474 = !DILocation(line: 393, column: 2, scope: !5458)
!5475 = distinct !DISubprogram(name: "show_stride", scope: !3, file: !3, line: 292, type: !4379, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5476 = !DILocalVariable(name: "device", arg: 1, scope: !5475, file: !3, line: 292, type: !3506)
!5477 = !DILocation(line: 292, column: 43, scope: !5475)
!5478 = !DILocalVariable(name: "attr", arg: 2, scope: !5475, file: !3, line: 293, type: !4381)
!5479 = !DILocation(line: 293, column: 32, scope: !5475)
!5480 = !DILocalVariable(name: "buf", arg: 3, scope: !5475, file: !3, line: 293, type: !341)
!5481 = !DILocation(line: 293, column: 44, scope: !5475)
!5482 = !DILocalVariable(name: "fb_info", scope: !5475, file: !3, line: 295, type: !6)
!5483 = !DILocation(line: 295, column: 18, scope: !5475)
!5484 = !DILocation(line: 295, column: 44, scope: !5475)
!5485 = !DILocation(line: 295, column: 28, scope: !5475)
!5486 = !DILocation(line: 296, column: 18, scope: !5475)
!5487 = !DILocation(line: 296, column: 42, scope: !5475)
!5488 = !DILocation(line: 296, column: 51, scope: !5475)
!5489 = !DILocation(line: 296, column: 55, scope: !5475)
!5490 = !DILocation(line: 296, column: 9, scope: !5475)
!5491 = !DILocation(line: 296, column: 2, scope: !5475)
!5492 = distinct !DISubprogram(name: "show_rotate", scope: !3, file: !3, line: 255, type: !4379, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5493 = !DILocalVariable(name: "device", arg: 1, scope: !5492, file: !3, line: 255, type: !3506)
!5494 = !DILocation(line: 255, column: 43, scope: !5492)
!5495 = !DILocalVariable(name: "attr", arg: 2, scope: !5492, file: !3, line: 256, type: !4381)
!5496 = !DILocation(line: 256, column: 32, scope: !5492)
!5497 = !DILocalVariable(name: "buf", arg: 3, scope: !5492, file: !3, line: 256, type: !341)
!5498 = !DILocation(line: 256, column: 44, scope: !5492)
!5499 = !DILocalVariable(name: "fb_info", scope: !5492, file: !3, line: 258, type: !6)
!5500 = !DILocation(line: 258, column: 18, scope: !5492)
!5501 = !DILocation(line: 258, column: 44, scope: !5492)
!5502 = !DILocation(line: 258, column: 28, scope: !5492)
!5503 = !DILocation(line: 260, column: 18, scope: !5492)
!5504 = !DILocation(line: 260, column: 42, scope: !5492)
!5505 = !DILocation(line: 260, column: 51, scope: !5492)
!5506 = !DILocation(line: 260, column: 55, scope: !5492)
!5507 = !DILocation(line: 260, column: 9, scope: !5492)
!5508 = !DILocation(line: 260, column: 2, scope: !5492)
!5509 = distinct !DISubprogram(name: "store_rotate", scope: !3, file: !3, line: 236, type: !4384, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5510 = !DILocalVariable(name: "device", arg: 1, scope: !5509, file: !3, line: 236, type: !3506)
!5511 = !DILocation(line: 236, column: 44, scope: !5509)
!5512 = !DILocalVariable(name: "attr", arg: 2, scope: !5509, file: !3, line: 237, type: !4381)
!5513 = !DILocation(line: 237, column: 33, scope: !5509)
!5514 = !DILocalVariable(name: "buf", arg: 3, scope: !5509, file: !3, line: 238, type: !149)
!5515 = !DILocation(line: 238, column: 20, scope: !5509)
!5516 = !DILocalVariable(name: "count", arg: 4, scope: !5509, file: !3, line: 238, type: !387)
!5517 = !DILocation(line: 238, column: 32, scope: !5509)
!5518 = !DILocalVariable(name: "fb_info", scope: !5509, file: !3, line: 240, type: !6)
!5519 = !DILocation(line: 240, column: 18, scope: !5509)
!5520 = !DILocation(line: 240, column: 44, scope: !5509)
!5521 = !DILocation(line: 240, column: 28, scope: !5509)
!5522 = !DILocalVariable(name: "var", scope: !5509, file: !3, line: 241, type: !60)
!5523 = !DILocation(line: 241, column: 27, scope: !5509)
!5524 = !DILocalVariable(name: "last", scope: !5509, file: !3, line: 242, type: !5009)
!5525 = !DILocation(line: 242, column: 9, scope: !5509)
!5526 = !DILocalVariable(name: "err", scope: !5509, file: !3, line: 243, type: !16)
!5527 = !DILocation(line: 243, column: 6, scope: !5509)
!5528 = !DILocation(line: 245, column: 8, scope: !5509)
!5529 = !DILocation(line: 245, column: 17, scope: !5509)
!5530 = !DILocation(line: 246, column: 30, scope: !5509)
!5531 = !DILocation(line: 246, column: 35, scope: !5509)
!5532 = !DILocation(line: 246, column: 15, scope: !5509)
!5533 = !DILocation(line: 246, column: 6, scope: !5509)
!5534 = !DILocation(line: 246, column: 13, scope: !5509)
!5535 = !DILocation(line: 248, column: 22, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 248, column: 6)
!5537 = !DILocation(line: 248, column: 13, scope: !5536)
!5538 = !DILocation(line: 248, column: 11, scope: !5536)
!5539 = !DILocation(line: 248, column: 6, scope: !5509)
!5540 = !DILocation(line: 249, column: 10, scope: !5536)
!5541 = !DILocation(line: 249, column: 3, scope: !5536)
!5542 = !DILocation(line: 251, column: 9, scope: !5509)
!5543 = !DILocation(line: 251, column: 2, scope: !5509)
!5544 = !DILocation(line: 252, column: 1, scope: !5509)
!5545 = distinct !DISubprogram(name: "show_fbstate", scope: !3, file: !3, line: 417, type: !4379, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5546 = !DILocalVariable(name: "device", arg: 1, scope: !5545, file: !3, line: 417, type: !3506)
!5547 = !DILocation(line: 417, column: 44, scope: !5545)
!5548 = !DILocalVariable(name: "attr", arg: 2, scope: !5545, file: !3, line: 418, type: !4381)
!5549 = !DILocation(line: 418, column: 33, scope: !5545)
!5550 = !DILocalVariable(name: "buf", arg: 3, scope: !5545, file: !3, line: 418, type: !341)
!5551 = !DILocation(line: 418, column: 45, scope: !5545)
!5552 = !DILocalVariable(name: "fb_info", scope: !5545, file: !3, line: 420, type: !6)
!5553 = !DILocation(line: 420, column: 18, scope: !5545)
!5554 = !DILocation(line: 420, column: 44, scope: !5545)
!5555 = !DILocation(line: 420, column: 28, scope: !5545)
!5556 = !DILocation(line: 421, column: 18, scope: !5545)
!5557 = !DILocation(line: 421, column: 42, scope: !5545)
!5558 = !DILocation(line: 421, column: 51, scope: !5545)
!5559 = !DILocation(line: 421, column: 9, scope: !5545)
!5560 = !DILocation(line: 421, column: 2, scope: !5545)
!5561 = distinct !DISubprogram(name: "store_fbstate", scope: !3, file: !3, line: 396, type: !4384, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5562 = !DILocalVariable(name: "device", arg: 1, scope: !5561, file: !3, line: 396, type: !3506)
!5563 = !DILocation(line: 396, column: 45, scope: !5561)
!5564 = !DILocalVariable(name: "attr", arg: 2, scope: !5561, file: !3, line: 397, type: !4381)
!5565 = !DILocation(line: 397, column: 34, scope: !5561)
!5566 = !DILocalVariable(name: "buf", arg: 3, scope: !5561, file: !3, line: 398, type: !149)
!5567 = !DILocation(line: 398, column: 21, scope: !5561)
!5568 = !DILocalVariable(name: "count", arg: 4, scope: !5561, file: !3, line: 398, type: !387)
!5569 = !DILocation(line: 398, column: 33, scope: !5561)
!5570 = !DILocalVariable(name: "fb_info", scope: !5561, file: !3, line: 400, type: !6)
!5571 = !DILocation(line: 400, column: 18, scope: !5561)
!5572 = !DILocation(line: 400, column: 44, scope: !5561)
!5573 = !DILocation(line: 400, column: 28, scope: !5561)
!5574 = !DILocalVariable(name: "state", scope: !5561, file: !3, line: 401, type: !152)
!5575 = !DILocation(line: 401, column: 6, scope: !5561)
!5576 = !DILocalVariable(name: "last", scope: !5561, file: !3, line: 402, type: !341)
!5577 = !DILocation(line: 402, column: 8, scope: !5561)
!5578 = !DILocation(line: 404, column: 25, scope: !5561)
!5579 = !DILocation(line: 404, column: 10, scope: !5561)
!5580 = !DILocation(line: 404, column: 8, scope: !5561)
!5581 = !DILocation(line: 406, column: 2, scope: !5561)
!5582 = !DILocation(line: 407, column: 15, scope: !5561)
!5583 = !DILocation(line: 407, column: 2, scope: !5561)
!5584 = !DILocation(line: 409, column: 17, scope: !5561)
!5585 = !DILocation(line: 409, column: 31, scope: !5561)
!5586 = !DILocation(line: 409, column: 2, scope: !5561)
!5587 = !DILocation(line: 411, column: 17, scope: !5561)
!5588 = !DILocation(line: 411, column: 2, scope: !5561)
!5589 = !DILocation(line: 412, column: 2, scope: !5561)
!5590 = !DILocation(line: 414, column: 9, scope: !5561)
!5591 = !DILocation(line: 414, column: 2, scope: !5561)
!5592 = distinct !DISubprogram(name: "show_bl_curve", scope: !3, file: !3, line: 466, type: !4379, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5593 = !DILocalVariable(name: "device", arg: 1, scope: !5592, file: !3, line: 466, type: !3506)
!5594 = !DILocation(line: 466, column: 45, scope: !5592)
!5595 = !DILocalVariable(name: "attr", arg: 2, scope: !5592, file: !3, line: 467, type: !4381)
!5596 = !DILocation(line: 467, column: 34, scope: !5592)
!5597 = !DILocalVariable(name: "buf", arg: 3, scope: !5592, file: !3, line: 467, type: !341)
!5598 = !DILocation(line: 467, column: 46, scope: !5592)
!5599 = !DILocalVariable(name: "fb_info", scope: !5592, file: !3, line: 469, type: !6)
!5600 = !DILocation(line: 469, column: 18, scope: !5592)
!5601 = !DILocation(line: 469, column: 44, scope: !5592)
!5602 = !DILocation(line: 469, column: 28, scope: !5592)
!5603 = !DILocalVariable(name: "len", scope: !5592, file: !3, line: 470, type: !372)
!5604 = !DILocation(line: 470, column: 10, scope: !5592)
!5605 = !DILocalVariable(name: "i", scope: !5592, file: !3, line: 471, type: !65)
!5606 = !DILocation(line: 471, column: 15, scope: !5592)
!5607 = !DILocation(line: 476, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 476, column: 6)
!5609 = !DILocation(line: 476, column: 15, scope: !5608)
!5610 = !DILocation(line: 476, column: 19, scope: !5608)
!5611 = !DILocation(line: 476, column: 28, scope: !5608)
!5612 = !DILocation(line: 476, column: 6, scope: !5592)
!5613 = !DILocation(line: 477, column: 3, scope: !5608)
!5614 = !DILocation(line: 479, column: 14, scope: !5592)
!5615 = !DILocation(line: 479, column: 23, scope: !5592)
!5616 = !DILocation(line: 479, column: 2, scope: !5592)
!5617 = !DILocation(line: 480, column: 9, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 480, column: 2)
!5619 = !DILocation(line: 480, column: 7, scope: !5618)
!5620 = !DILocation(line: 480, column: 14, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 480, column: 2)
!5622 = !DILocation(line: 480, column: 16, scope: !5621)
!5623 = !DILocation(line: 480, column: 2, scope: !5618)
!5624 = !DILocation(line: 481, column: 21, scope: !5621)
!5625 = !DILocation(line: 481, column: 25, scope: !5621)
!5626 = !DILocation(line: 481, column: 43, scope: !5621)
!5627 = !DILocation(line: 481, column: 41, scope: !5621)
!5628 = !DILocation(line: 482, column: 5, scope: !5621)
!5629 = !DILocation(line: 482, column: 14, scope: !5621)
!5630 = !DILocation(line: 482, column: 25, scope: !5621)
!5631 = !DILocation(line: 482, column: 23, scope: !5621)
!5632 = !DILocation(line: 481, column: 10, scope: !5621)
!5633 = !DILocation(line: 481, column: 7, scope: !5621)
!5634 = !DILocation(line: 481, column: 3, scope: !5621)
!5635 = !DILocation(line: 480, column: 41, scope: !5621)
!5636 = !DILocation(line: 480, column: 2, scope: !5621)
!5637 = distinct !{!5637, !5623, !5638}
!5638 = !DILocation(line: 482, column: 26, scope: !5618)
!5639 = !DILocation(line: 483, column: 16, scope: !5592)
!5640 = !DILocation(line: 483, column: 25, scope: !5592)
!5641 = !DILocation(line: 483, column: 2, scope: !5592)
!5642 = !DILocation(line: 485, column: 9, scope: !5592)
!5643 = !DILocation(line: 485, column: 2, scope: !5592)
!5644 = !DILocation(line: 486, column: 1, scope: !5592)
!5645 = distinct !DISubprogram(name: "store_bl_curve", scope: !3, file: !3, line: 425, type: !4384, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5646 = !DILocalVariable(name: "device", arg: 1, scope: !5645, file: !3, line: 425, type: !3506)
!5647 = !DILocation(line: 425, column: 46, scope: !5645)
!5648 = !DILocalVariable(name: "attr", arg: 2, scope: !5645, file: !3, line: 426, type: !4381)
!5649 = !DILocation(line: 426, column: 35, scope: !5645)
!5650 = !DILocalVariable(name: "buf", arg: 3, scope: !5645, file: !3, line: 427, type: !149)
!5651 = !DILocation(line: 427, column: 22, scope: !5645)
!5652 = !DILocalVariable(name: "count", arg: 4, scope: !5645, file: !3, line: 427, type: !387)
!5653 = !DILocation(line: 427, column: 34, scope: !5645)
!5654 = !DILocalVariable(name: "fb_info", scope: !5645, file: !3, line: 429, type: !6)
!5655 = !DILocation(line: 429, column: 18, scope: !5645)
!5656 = !DILocation(line: 429, column: 44, scope: !5645)
!5657 = !DILocation(line: 429, column: 28, scope: !5645)
!5658 = !DILocalVariable(name: "tmp_curve", scope: !5645, file: !3, line: 430, type: !4097)
!5659 = !DILocation(line: 430, column: 5, scope: !5645)
!5660 = !DILocalVariable(name: "i", scope: !5645, file: !3, line: 431, type: !65)
!5661 = !DILocation(line: 431, column: 15, scope: !5645)
!5662 = !DILocation(line: 436, column: 7, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 436, column: 6)
!5664 = !DILocation(line: 436, column: 15, scope: !5663)
!5665 = !DILocation(line: 436, column: 19, scope: !5663)
!5666 = !DILocation(line: 436, column: 28, scope: !5663)
!5667 = !DILocation(line: 436, column: 6, scope: !5645)
!5668 = !DILocation(line: 437, column: 3, scope: !5663)
!5669 = !DILocation(line: 439, column: 6, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 439, column: 6)
!5671 = !DILocation(line: 439, column: 12, scope: !5670)
!5672 = !DILocation(line: 439, column: 6, scope: !5645)
!5673 = !DILocation(line: 440, column: 3, scope: !5670)
!5674 = !DILocation(line: 442, column: 9, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 442, column: 2)
!5676 = !DILocation(line: 442, column: 7, scope: !5675)
!5677 = !DILocation(line: 442, column: 14, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 442, column: 2)
!5679 = !DILocation(line: 442, column: 16, scope: !5678)
!5680 = !DILocation(line: 442, column: 2, scope: !5675)
!5681 = !DILocation(line: 443, column: 15, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 443, column: 7)
!5683 = !DILocation(line: 443, column: 19, scope: !5682)
!5684 = !DILocation(line: 443, column: 21, scope: !5682)
!5685 = !DILocation(line: 445, column: 15, scope: !5682)
!5686 = !DILocation(line: 445, column: 17, scope: !5682)
!5687 = !DILocation(line: 445, column: 21, scope: !5682)
!5688 = !DILocation(line: 445, column: 5, scope: !5682)
!5689 = !DILocation(line: 446, column: 15, scope: !5682)
!5690 = !DILocation(line: 446, column: 17, scope: !5682)
!5691 = !DILocation(line: 446, column: 21, scope: !5682)
!5692 = !DILocation(line: 446, column: 5, scope: !5682)
!5693 = !DILocation(line: 447, column: 15, scope: !5682)
!5694 = !DILocation(line: 447, column: 17, scope: !5682)
!5695 = !DILocation(line: 447, column: 21, scope: !5682)
!5696 = !DILocation(line: 447, column: 5, scope: !5682)
!5697 = !DILocation(line: 448, column: 15, scope: !5682)
!5698 = !DILocation(line: 448, column: 17, scope: !5682)
!5699 = !DILocation(line: 448, column: 21, scope: !5682)
!5700 = !DILocation(line: 448, column: 5, scope: !5682)
!5701 = !DILocation(line: 449, column: 15, scope: !5682)
!5702 = !DILocation(line: 449, column: 17, scope: !5682)
!5703 = !DILocation(line: 449, column: 21, scope: !5682)
!5704 = !DILocation(line: 449, column: 5, scope: !5682)
!5705 = !DILocation(line: 450, column: 15, scope: !5682)
!5706 = !DILocation(line: 450, column: 17, scope: !5682)
!5707 = !DILocation(line: 450, column: 21, scope: !5682)
!5708 = !DILocation(line: 450, column: 5, scope: !5682)
!5709 = !DILocation(line: 451, column: 15, scope: !5682)
!5710 = !DILocation(line: 451, column: 17, scope: !5682)
!5711 = !DILocation(line: 451, column: 21, scope: !5682)
!5712 = !DILocation(line: 451, column: 5, scope: !5682)
!5713 = !DILocation(line: 452, column: 15, scope: !5682)
!5714 = !DILocation(line: 452, column: 17, scope: !5682)
!5715 = !DILocation(line: 452, column: 21, scope: !5682)
!5716 = !DILocation(line: 452, column: 5, scope: !5682)
!5717 = !DILocation(line: 443, column: 7, scope: !5682)
!5718 = !DILocation(line: 452, column: 27, scope: !5682)
!5719 = !DILocation(line: 443, column: 7, scope: !5678)
!5720 = !DILocation(line: 453, column: 4, scope: !5682)
!5721 = !DILocation(line: 452, column: 30, scope: !5682)
!5722 = !DILocation(line: 442, column: 45, scope: !5678)
!5723 = !DILocation(line: 442, column: 2, scope: !5678)
!5724 = distinct !{!5724, !5680, !5725}
!5725 = !DILocation(line: 453, column: 12, scope: !5675)
!5726 = !DILocation(line: 458, column: 14, scope: !5645)
!5727 = !DILocation(line: 458, column: 23, scope: !5645)
!5728 = !DILocation(line: 458, column: 2, scope: !5645)
!5729 = !DILocation(line: 459, column: 9, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 459, column: 2)
!5731 = !DILocation(line: 459, column: 7, scope: !5730)
!5732 = !DILocation(line: 459, column: 14, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 459, column: 2)
!5734 = !DILocation(line: 459, column: 16, scope: !5733)
!5735 = !DILocation(line: 459, column: 2, scope: !5730)
!5736 = !DILocation(line: 460, column: 36, scope: !5733)
!5737 = !DILocation(line: 460, column: 26, scope: !5733)
!5738 = !DILocation(line: 460, column: 3, scope: !5733)
!5739 = !DILocation(line: 460, column: 12, scope: !5733)
!5740 = !DILocation(line: 460, column: 21, scope: !5733)
!5741 = !DILocation(line: 460, column: 24, scope: !5733)
!5742 = !DILocation(line: 459, column: 39, scope: !5733)
!5743 = !DILocation(line: 459, column: 2, scope: !5733)
!5744 = distinct !{!5744, !5735, !5745}
!5745 = !DILocation(line: 460, column: 37, scope: !5730)
!5746 = !DILocation(line: 461, column: 16, scope: !5645)
!5747 = !DILocation(line: 461, column: 25, scope: !5645)
!5748 = !DILocation(line: 461, column: 2, scope: !5645)
!5749 = !DILocation(line: 463, column: 9, scope: !5645)
!5750 = !DILocation(line: 463, column: 2, scope: !5645)
!5751 = !DILocation(line: 464, column: 1, scope: !5645)
!5752 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !299, file: !299, line: 655, type: !5753, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{!226, !3863}
!5755 = !DILocalVariable(name: "dev", arg: 1, scope: !5752, file: !299, line: 655, type: !3863)
!5756 = !DILocation(line: 655, column: 58, scope: !5752)
!5757 = !DILocation(line: 657, column: 9, scope: !5752)
!5758 = !DILocation(line: 657, column: 14, scope: !5752)
!5759 = !DILocation(line: 657, column: 2, scope: !5752)
!5760 = distinct !DISubprogram(name: "activate", scope: !3, file: !3, line: 88, type: !5761, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!16, !6, !4143}
!5763 = !DILocalVariable(name: "fb_info", arg: 1, scope: !5760, file: !3, line: 88, type: !6)
!5764 = !DILocation(line: 88, column: 37, scope: !5760)
!5765 = !DILocalVariable(name: "var", arg: 2, scope: !5760, file: !3, line: 88, type: !4143)
!5766 = !DILocation(line: 88, column: 72, scope: !5760)
!5767 = !DILocalVariable(name: "err", scope: !5760, file: !3, line: 90, type: !16)
!5768 = !DILocation(line: 90, column: 6, scope: !5760)
!5769 = !DILocation(line: 92, column: 2, scope: !5760)
!5770 = !DILocation(line: 92, column: 7, scope: !5760)
!5771 = !DILocation(line: 92, column: 16, scope: !5760)
!5772 = !DILocation(line: 93, column: 2, scope: !5760)
!5773 = !DILocation(line: 94, column: 19, scope: !5760)
!5774 = !DILocation(line: 94, column: 28, scope: !5760)
!5775 = !DILocation(line: 94, column: 8, scope: !5760)
!5776 = !DILocation(line: 94, column: 6, scope: !5760)
!5777 = !DILocation(line: 95, column: 7, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 95, column: 6)
!5779 = !DILocation(line: 95, column: 6, scope: !5760)
!5780 = !DILocation(line: 96, column: 20, scope: !5778)
!5781 = !DILocation(line: 96, column: 29, scope: !5778)
!5782 = !DILocation(line: 96, column: 34, scope: !5778)
!5783 = !DILocation(line: 96, column: 43, scope: !5778)
!5784 = !DILocation(line: 96, column: 3, scope: !5778)
!5785 = !DILocation(line: 97, column: 2, scope: !5760)
!5786 = !DILocation(line: 98, column: 6, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 98, column: 6)
!5788 = !DILocation(line: 98, column: 6, scope: !5760)
!5789 = !DILocation(line: 99, column: 10, scope: !5787)
!5790 = !DILocation(line: 99, column: 3, scope: !5787)
!5791 = !DILocation(line: 100, column: 2, scope: !5760)
!5792 = !DILocation(line: 101, column: 1, scope: !5760)
!5793 = distinct !DISubprogram(name: "mode_string", scope: !3, file: !3, line: 103, type: !5794, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!16, !341, !65, !4365}
!5796 = !DILocalVariable(name: "buf", arg: 1, scope: !5793, file: !3, line: 103, type: !341)
!5797 = !DILocation(line: 103, column: 30, scope: !5793)
!5798 = !DILocalVariable(name: "offset", arg: 2, scope: !5793, file: !3, line: 103, type: !65)
!5799 = !DILocation(line: 103, column: 48, scope: !5793)
!5800 = !DILocalVariable(name: "mode", arg: 3, scope: !5793, file: !3, line: 104, type: !4365)
!5801 = !DILocation(line: 104, column: 37, scope: !5793)
!5802 = !DILocalVariable(name: "m", scope: !5793, file: !3, line: 106, type: !107)
!5803 = !DILocation(line: 106, column: 7, scope: !5793)
!5804 = !DILocalVariable(name: "v", scope: !5793, file: !3, line: 107, type: !107)
!5805 = !DILocation(line: 107, column: 7, scope: !5793)
!5806 = !DILocation(line: 109, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 109, column: 6)
!5808 = !DILocation(line: 109, column: 12, scope: !5807)
!5809 = !DILocation(line: 109, column: 17, scope: !5807)
!5810 = !DILocation(line: 109, column: 6, scope: !5793)
!5811 = !DILocation(line: 110, column: 5, scope: !5807)
!5812 = !DILocation(line: 110, column: 3, scope: !5807)
!5813 = !DILocation(line: 111, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 111, column: 6)
!5815 = !DILocation(line: 111, column: 12, scope: !5814)
!5816 = !DILocation(line: 111, column: 17, scope: !5814)
!5817 = !DILocation(line: 111, column: 6, scope: !5793)
!5818 = !DILocation(line: 112, column: 5, scope: !5814)
!5819 = !DILocation(line: 112, column: 3, scope: !5814)
!5820 = !DILocation(line: 113, column: 6, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 113, column: 6)
!5822 = !DILocation(line: 113, column: 12, scope: !5821)
!5823 = !DILocation(line: 113, column: 17, scope: !5821)
!5824 = !DILocation(line: 113, column: 6, scope: !5793)
!5825 = !DILocation(line: 114, column: 5, scope: !5821)
!5826 = !DILocation(line: 114, column: 3, scope: !5821)
!5827 = !DILocation(line: 116, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 116, column: 6)
!5829 = !DILocation(line: 116, column: 12, scope: !5828)
!5830 = !DILocation(line: 116, column: 18, scope: !5828)
!5831 = !DILocation(line: 116, column: 6, scope: !5793)
!5832 = !DILocation(line: 117, column: 5, scope: !5828)
!5833 = !DILocation(line: 117, column: 3, scope: !5828)
!5834 = !DILocation(line: 118, column: 6, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 118, column: 6)
!5836 = !DILocation(line: 118, column: 12, scope: !5835)
!5837 = !DILocation(line: 118, column: 18, scope: !5835)
!5838 = !DILocation(line: 118, column: 6, scope: !5793)
!5839 = !DILocation(line: 119, column: 5, scope: !5835)
!5840 = !DILocation(line: 119, column: 3, scope: !5835)
!5841 = !DILocation(line: 121, column: 19, scope: !5793)
!5842 = !DILocation(line: 121, column: 23, scope: !5793)
!5843 = !DILocation(line: 121, column: 44, scope: !5793)
!5844 = !DILocation(line: 121, column: 42, scope: !5793)
!5845 = !DILocation(line: 122, column: 18, scope: !5793)
!5846 = !DILocation(line: 122, column: 21, scope: !5793)
!5847 = !DILocation(line: 122, column: 27, scope: !5793)
!5848 = !DILocation(line: 122, column: 33, scope: !5793)
!5849 = !DILocation(line: 122, column: 39, scope: !5793)
!5850 = !DILocation(line: 122, column: 45, scope: !5793)
!5851 = !DILocation(line: 122, column: 48, scope: !5793)
!5852 = !DILocation(line: 122, column: 54, scope: !5793)
!5853 = !DILocation(line: 121, column: 9, scope: !5793)
!5854 = !DILocation(line: 121, column: 2, scope: !5793)
!5855 = distinct !DISubprogram(name: "lock_fb_info", scope: !8, file: !8, line: 634, type: !4114, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5856 = !DILocalVariable(name: "info", arg: 1, scope: !5855, file: !8, line: 634, type: !6)
!5857 = !DILocation(line: 634, column: 49, scope: !5855)
!5858 = !DILocation(line: 636, column: 14, scope: !5855)
!5859 = !DILocation(line: 636, column: 20, scope: !5855)
!5860 = !DILocation(line: 636, column: 2, scope: !5855)
!5861 = !DILocation(line: 637, column: 1, scope: !5855)
!5862 = distinct !DISubprogram(name: "list_splice", scope: !5863, file: !5863, line: 452, type: !5864, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5863 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5864 = !DISubroutineType(types: !5865)
!5865 = !{null, !5866, !56}
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!5868 = !DILocalVariable(name: "list", arg: 1, scope: !5862, file: !5863, line: 452, type: !5866)
!5869 = !DILocation(line: 452, column: 56, scope: !5862)
!5870 = !DILocalVariable(name: "head", arg: 2, scope: !5862, file: !5863, line: 453, type: !56)
!5871 = !DILocation(line: 453, column: 23, scope: !5862)
!5872 = !DILocation(line: 455, column: 18, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5862, file: !5863, line: 455, column: 6)
!5874 = !DILocation(line: 455, column: 7, scope: !5873)
!5875 = !DILocation(line: 455, column: 6, scope: !5862)
!5876 = !DILocation(line: 456, column: 17, scope: !5873)
!5877 = !DILocation(line: 456, column: 23, scope: !5873)
!5878 = !DILocation(line: 456, column: 29, scope: !5873)
!5879 = !DILocation(line: 456, column: 35, scope: !5873)
!5880 = !DILocation(line: 456, column: 3, scope: !5873)
!5881 = !DILocation(line: 457, column: 1, scope: !5862)
!5882 = distinct !DISubprogram(name: "unlock_fb_info", scope: !8, file: !8, line: 639, type: !4114, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5883 = !DILocalVariable(name: "info", arg: 1, scope: !5882, file: !8, line: 639, type: !6)
!5884 = !DILocation(line: 639, column: 51, scope: !5882)
!5885 = !DILocation(line: 641, column: 16, scope: !5882)
!5886 = !DILocation(line: 641, column: 22, scope: !5882)
!5887 = !DILocation(line: 641, column: 2, scope: !5882)
!5888 = !DILocation(line: 642, column: 1, scope: !5882)
!5889 = distinct !DISubprogram(name: "list_empty", scope: !5863, file: !5863, line: 280, type: !5890, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!16, !5866}
!5892 = !DILocalVariable(name: "head", arg: 1, scope: !5889, file: !5863, line: 280, type: !5866)
!5893 = !DILocation(line: 280, column: 54, scope: !5889)
!5894 = !DILocation(line: 282, column: 9, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5889, file: !5863, line: 282, column: 9)
!5896 = !DILocation(line: 282, column: 9, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5895, file: !5863, line: 282, column: 9)
!5898 = !DILocation(line: 282, column: 34, scope: !5889)
!5899 = !DILocation(line: 282, column: 31, scope: !5889)
!5900 = !DILocation(line: 282, column: 2, scope: !5889)
!5901 = distinct !DISubprogram(name: "__list_splice", scope: !5863, file: !5863, line: 433, type: !5902, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4350, retainedNodes: !51)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !5866, !56, !56}
!5904 = !DILocalVariable(name: "list", arg: 1, scope: !5901, file: !5863, line: 433, type: !5866)
!5905 = !DILocation(line: 433, column: 58, scope: !5901)
!5906 = !DILocalVariable(name: "prev", arg: 2, scope: !5901, file: !5863, line: 434, type: !56)
!5907 = !DILocation(line: 434, column: 24, scope: !5901)
!5908 = !DILocalVariable(name: "next", arg: 3, scope: !5901, file: !5863, line: 435, type: !56)
!5909 = !DILocation(line: 435, column: 24, scope: !5901)
!5910 = !DILocalVariable(name: "first", scope: !5901, file: !5863, line: 437, type: !56)
!5911 = !DILocation(line: 437, column: 20, scope: !5901)
!5912 = !DILocation(line: 437, column: 28, scope: !5901)
!5913 = !DILocation(line: 437, column: 34, scope: !5901)
!5914 = !DILocalVariable(name: "last", scope: !5901, file: !5863, line: 438, type: !56)
!5915 = !DILocation(line: 438, column: 20, scope: !5901)
!5916 = !DILocation(line: 438, column: 27, scope: !5901)
!5917 = !DILocation(line: 438, column: 33, scope: !5901)
!5918 = !DILocation(line: 440, column: 16, scope: !5901)
!5919 = !DILocation(line: 440, column: 2, scope: !5901)
!5920 = !DILocation(line: 440, column: 9, scope: !5901)
!5921 = !DILocation(line: 440, column: 14, scope: !5901)
!5922 = !DILocation(line: 441, column: 15, scope: !5901)
!5923 = !DILocation(line: 441, column: 2, scope: !5901)
!5924 = !DILocation(line: 441, column: 8, scope: !5901)
!5925 = !DILocation(line: 441, column: 13, scope: !5901)
!5926 = !DILocation(line: 443, column: 15, scope: !5901)
!5927 = !DILocation(line: 443, column: 2, scope: !5901)
!5928 = !DILocation(line: 443, column: 8, scope: !5901)
!5929 = !DILocation(line: 443, column: 13, scope: !5901)
!5930 = !DILocation(line: 444, column: 15, scope: !5901)
!5931 = !DILocation(line: 444, column: 2, scope: !5901)
!5932 = !DILocation(line: 444, column: 8, scope: !5901)
!5933 = !DILocation(line: 444, column: 13, scope: !5901)
!5934 = !DILocation(line: 445, column: 1, scope: !5901)
