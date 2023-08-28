; ModuleID = '../bcout/drivers/pnp/card.llvm.bc'
source_filename = "drivers/pnp/card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
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
%struct.pid_namespace = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.proc_dir_entry = type opaque
%struct.pnp_protocol = type { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.65] }
%struct.anon.65 = type { [8 x i8] }

@pnp_cards = dso_local global %struct.list_head { %struct.list_head* @pnp_cards, %struct.list_head* @pnp_cards }, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not register (err=%d)\0A\00", align 1
@pnp_lock = external dso_local global %struct.mutex, align 8
@pnp_card_drivers = internal global %struct.list_head { %struct.list_head* @pnp_card_drivers, %struct.list_head* @pnp_card_drivers }, align 8, !dbg !3888
@.str.2 = private unnamed_addr constant [15 x i8] c"%02x:%02x.%02x\00", align 1
@pnp_bus_type = external dso_local global %struct.bus_type, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @pnp_show_card_name, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3872
@dev_attr_card_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @pnp_show_card_ids, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3886
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"card_id\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_card* @pnp_alloc_card(%struct.pnp_protocol* %protocol, i32 %id, i8* %pnpid) #0 !dbg !3895 {
entry:
  %retval = alloca %struct.pnp_card*, align 8
  %protocol.addr = alloca %struct.pnp_protocol*, align 8
  %id.addr = alloca i32, align 4
  %pnpid.addr = alloca i8*, align 8
  %card = alloca %struct.pnp_card*, align 8
  %dev_id = alloca %struct.pnp_id*, align 8
  store %struct.pnp_protocol* %protocol, %struct.pnp_protocol** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_protocol** %protocol.addr, metadata !3898, metadata !DIExpression()), !dbg !3899
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3900, metadata !DIExpression()), !dbg !3901
  store i8* %pnpid, i8** %pnpid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pnpid.addr, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %dev_id, metadata !3906, metadata !DIExpression()), !dbg !3907
  %call = call i8* @kzalloc(i64 840, i32 3264) #8, !dbg !3908
  %0 = bitcast i8* %call to %struct.pnp_card*, !dbg !3908
  store %struct.pnp_card* %0, %struct.pnp_card** %card, align 8, !dbg !3909
  %1 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3910
  %tobool = icmp ne %struct.pnp_card* %1, null, !dbg !3910
  br i1 %tobool, label %if.end, label %if.then, !dbg !3912

if.then:                                          ; preds = %entry
  store %struct.pnp_card* null, %struct.pnp_card** %retval, align 8, !dbg !3913
  br label %return, !dbg !3913

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !3914
  %3 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3915
  %protocol1 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %3, i32 0, i32 5, !dbg !3916
  store %struct.pnp_protocol* %2, %struct.pnp_protocol** %protocol1, align 8, !dbg !3917
  %4 = load i32, i32* %id.addr, align 4, !dbg !3918
  %conv = trunc i32 %4 to i8, !dbg !3918
  %5 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3919
  %number = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %5, i32 0, i32 1, !dbg !3920
  store i8 %conv, i8* %number, align 8, !dbg !3921
  %6 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3922
  %protocol2 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %6, i32 0, i32 5, !dbg !3923
  %7 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol2, align 8, !dbg !3923
  %dev = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %7, i32 0, i32 9, !dbg !3924
  %8 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3925
  %dev3 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %8, i32 0, i32 0, !dbg !3926
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 1, !dbg !3927
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !3928
  %9 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3929
  %dev4 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %9, i32 0, i32 0, !dbg !3930
  %10 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3931
  %protocol5 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %10, i32 0, i32 5, !dbg !3932
  %11 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol5, align 8, !dbg !3932
  %number6 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %11, i32 0, i32 8, !dbg !3933
  %12 = load i8, i8* %number6, align 8, !dbg !3933
  %conv7 = zext i8 %12 to i32, !dbg !3931
  %13 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3934
  %number8 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %13, i32 0, i32 1, !dbg !3935
  %14 = load i8, i8* %number8, align 8, !dbg !3935
  %conv9 = zext i8 %14 to i32, !dbg !3934
  %call10 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %conv7, i32 %conv9) #8, !dbg !3936
  %15 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3937
  %dev11 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %15, i32 0, i32 0, !dbg !3938
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 17, !dbg !3939
  store i64 16777215, i64* %coherent_dma_mask, align 8, !dbg !3940
  %16 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3941
  %dev12 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %16, i32 0, i32 0, !dbg !3942
  %coherent_dma_mask13 = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 17, !dbg !3943
  %17 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3944
  %dev14 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %17, i32 0, i32 0, !dbg !3945
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 16, !dbg !3946
  store i64* %coherent_dma_mask13, i64** %dma_mask, align 8, !dbg !3947
  %18 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3948
  %19 = load i8*, i8** %pnpid.addr, align 8, !dbg !3949
  %call15 = call %struct.pnp_id* @pnp_add_card_id(%struct.pnp_card* %18, i8* %19) #8, !dbg !3950
  store %struct.pnp_id* %call15, %struct.pnp_id** %dev_id, align 8, !dbg !3951
  %20 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !3952
  %tobool16 = icmp ne %struct.pnp_id* %20, null, !dbg !3952
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !3954

if.then17:                                        ; preds = %if.end
  %21 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3955
  %22 = bitcast %struct.pnp_card* %21 to i8*, !dbg !3955
  call void @kfree(i8* %22) #8, !dbg !3957
  store %struct.pnp_card* null, %struct.pnp_card** %retval, align 8, !dbg !3958
  br label %return, !dbg !3958

if.end18:                                         ; preds = %if.end
  %23 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !3959
  store %struct.pnp_card* %23, %struct.pnp_card** %retval, align 8, !dbg !3960
  br label %return, !dbg !3960

return:                                           ; preds = %if.end18, %if.then17, %if.then
  %24 = load %struct.pnp_card*, %struct.pnp_card** %retval, align 8, !dbg !3961
  ret %struct.pnp_card* %24, !dbg !3961
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3962 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3965, metadata !DIExpression()), !dbg !3969
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3975, metadata !DIExpression()), !dbg !3976
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3977, metadata !DIExpression()), !dbg !3978
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3979, metadata !DIExpression()), !dbg !3980
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3981, metadata !DIExpression()), !dbg !3985
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3987, metadata !DIExpression()), !dbg !3991
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3993, metadata !DIExpression()), !dbg !3997
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4002, metadata !DIExpression()), !dbg !4003
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4004, metadata !DIExpression()), !dbg !4005
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4006, metadata !DIExpression()), !dbg !4007
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4008, metadata !DIExpression()), !dbg !4009
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4010, metadata !DIExpression()), !dbg !4011
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4012, metadata !DIExpression()), !dbg !4013
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4014, metadata !DIExpression()), !dbg !4015
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4016, metadata !DIExpression()), !dbg !4017
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4018, metadata !DIExpression()), !dbg !4019
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4020, metadata !DIExpression()), !dbg !4021
  %0 = load i64, i64* %size.addr, align 8, !dbg !4022
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4023
  %or = or i32 %1, 256, !dbg !4024
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4025
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4026
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4027

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4028
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4029
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4030

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4031
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4032
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4033
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4034
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4011
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4035
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4036
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4037
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4038
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4039
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4040
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4041
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4041
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4041
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4041
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4041
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4042
  br label %kmalloc.exit, !dbg !4042

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4043
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4044
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4044
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4046

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4047
  br label %kmalloc_index.exit.i, !dbg !4047

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4048
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4050
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4051

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4052
  br label %kmalloc_index.exit.i, !dbg !4052

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4053
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4055
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4056

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4057
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4058
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4059

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4060
  br label %kmalloc_index.exit.i, !dbg !4060

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4061
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4063
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4064

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4065
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4066
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4067

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4068
  br label %kmalloc_index.exit.i, !dbg !4068

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4069
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4071
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4072

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4073
  br label %kmalloc_index.exit.i, !dbg !4073

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4074
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4076
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4077

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4078
  br label %kmalloc_index.exit.i, !dbg !4078

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4079
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4081
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4082

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4083
  br label %kmalloc_index.exit.i, !dbg !4083

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4084
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4086
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4087

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4088
  br label %kmalloc_index.exit.i, !dbg !4088

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4089
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4091
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4092

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4093
  br label %kmalloc_index.exit.i, !dbg !4093

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4094
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4096
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4097

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4098
  br label %kmalloc_index.exit.i, !dbg !4098

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4099
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4101
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4102

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4103
  br label %kmalloc_index.exit.i, !dbg !4103

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4104
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4106
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4107

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4108
  br label %kmalloc_index.exit.i, !dbg !4108

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4109
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4111
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4112

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4113
  br label %kmalloc_index.exit.i, !dbg !4113

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4114
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4116
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4117

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4118
  br label %kmalloc_index.exit.i, !dbg !4118

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4119
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4121
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4122

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4123
  br label %kmalloc_index.exit.i, !dbg !4123

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4124
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4126
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4127

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4128
  br label %kmalloc_index.exit.i, !dbg !4128

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4129
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4131
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4132

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4133
  br label %kmalloc_index.exit.i, !dbg !4133

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4134
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4136
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4137

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4138
  br label %kmalloc_index.exit.i, !dbg !4138

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4139
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4141
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4142

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4143
  br label %kmalloc_index.exit.i, !dbg !4143

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4144
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4146
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4147

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4148
  br label %kmalloc_index.exit.i, !dbg !4148

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4149
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4151
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4152

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4153
  br label %kmalloc_index.exit.i, !dbg !4153

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4154
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4156
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4157

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4158
  br label %kmalloc_index.exit.i, !dbg !4158

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4159
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4161
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4162

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4163
  br label %kmalloc_index.exit.i, !dbg !4163

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4164
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4166
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4167

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4168
  br label %kmalloc_index.exit.i, !dbg !4168

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4169
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4171
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4172

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4173
  br label %kmalloc_index.exit.i, !dbg !4173

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4174
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4176
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4177

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4178
  br label %kmalloc_index.exit.i, !dbg !4178

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4179
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4181
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4182

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4183
  br label %kmalloc_index.exit.i, !dbg !4183

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4184
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4186
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4187

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4188
  br label %kmalloc_index.exit.i, !dbg !4188

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4189, !srcloc !4192
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4193, !srcloc !4196
  unreachable, !dbg !4197

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4198
  store i32 %45, i32* %index.i, align 4, !dbg !4199
  %46 = load i32, i32* %index.i, align 4, !dbg !4200
  %tobool.i = icmp ne i32 %46, 0, !dbg !4200
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4202

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4203
  br label %kmalloc.exit, !dbg !4203

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4204
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4205
  %and.i.i = and i32 %48, 17, !dbg !4205
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4205
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4205
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4205
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4205
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4207

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4208
  br label %kmalloc_type.exit.i, !dbg !4208

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4209
  %and2.i.i = and i32 %49, 1, !dbg !4210
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4209
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4209
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4209
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4211
  br label %kmalloc_type.exit.i, !dbg !4211

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4212
  %idxprom.i = zext i32 %51 to i64, !dbg !4213
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4213
  %52 = load i32, i32* %index.i, align 4, !dbg !4214
  %idxprom6.i = zext i32 %52 to i64, !dbg !4213
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4213
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4213
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4215
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4216
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4217
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4218
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4219
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4219
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4219
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4219
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4219
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3980
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4220
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4221
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4222
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4223
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4224
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4225
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4226
  store i8* %62, i8** %retval.i, align 8, !dbg !4227
  br label %kmalloc.exit, !dbg !4227

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4228
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4229
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4230
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4230
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4230
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4230
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4230
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4231
  br label %kmalloc.exit, !dbg !4231

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4232
  ret i8* %65, !dbg !4233
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pnp_id* @pnp_add_card_id(%struct.pnp_card* %card, i8* %id) #0 !dbg !4234 {
entry:
  %retval = alloca %struct.pnp_id*, align 8
  %card.addr = alloca %struct.pnp_card*, align 8
  %id.addr = alloca i8*, align 8
  %dev_id = alloca %struct.pnp_id*, align 8
  %ptr = alloca %struct.pnp_id*, align 8
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %dev_id, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %ptr, metadata !4243, metadata !DIExpression()), !dbg !4244
  %call = call i8* @kzalloc(i64 16, i32 3264) #8, !dbg !4245
  %0 = bitcast i8* %call to %struct.pnp_id*, !dbg !4245
  store %struct.pnp_id* %0, %struct.pnp_id** %dev_id, align 8, !dbg !4246
  %1 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4247
  %tobool = icmp ne %struct.pnp_id* %1, null, !dbg !4247
  br i1 %tobool, label %if.end, label %if.then, !dbg !4249

if.then:                                          ; preds = %entry
  store %struct.pnp_id* null, %struct.pnp_id** %retval, align 8, !dbg !4250
  br label %return, !dbg !4250

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %id.addr, align 8, !dbg !4251
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !4251
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4251
  %4 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4252
  %id1 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %4, i32 0, i32 0, !dbg !4253
  %arrayidx2 = getelementptr [8 x i8], [8 x i8]* %id1, i64 0, i64 0, !dbg !4252
  store i8 %3, i8* %arrayidx2, align 8, !dbg !4254
  %5 = load i8*, i8** %id.addr, align 8, !dbg !4255
  %arrayidx3 = getelementptr i8, i8* %5, i64 1, !dbg !4255
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !4255
  %7 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4256
  %id4 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %7, i32 0, i32 0, !dbg !4257
  %arrayidx5 = getelementptr [8 x i8], [8 x i8]* %id4, i64 0, i64 1, !dbg !4256
  store i8 %6, i8* %arrayidx5, align 1, !dbg !4258
  %8 = load i8*, i8** %id.addr, align 8, !dbg !4259
  %arrayidx6 = getelementptr i8, i8* %8, i64 2, !dbg !4259
  %9 = load i8, i8* %arrayidx6, align 1, !dbg !4259
  %10 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4260
  %id7 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %10, i32 0, i32 0, !dbg !4261
  %arrayidx8 = getelementptr [8 x i8], [8 x i8]* %id7, i64 0, i64 2, !dbg !4260
  store i8 %9, i8* %arrayidx8, align 2, !dbg !4262
  %11 = load i8*, i8** %id.addr, align 8, !dbg !4263
  %arrayidx9 = getelementptr i8, i8* %11, i64 3, !dbg !4263
  %12 = load i8, i8* %arrayidx9, align 1, !dbg !4263
  %call10 = call zeroext i8 @__tolower(i8 zeroext %12) #8, !dbg !4263
  %13 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4264
  %id11 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %13, i32 0, i32 0, !dbg !4265
  %arrayidx12 = getelementptr [8 x i8], [8 x i8]* %id11, i64 0, i64 3, !dbg !4264
  store i8 %call10, i8* %arrayidx12, align 1, !dbg !4266
  %14 = load i8*, i8** %id.addr, align 8, !dbg !4267
  %arrayidx13 = getelementptr i8, i8* %14, i64 4, !dbg !4267
  %15 = load i8, i8* %arrayidx13, align 1, !dbg !4267
  %call14 = call zeroext i8 @__tolower(i8 zeroext %15) #8, !dbg !4267
  %16 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4268
  %id15 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %16, i32 0, i32 0, !dbg !4269
  %arrayidx16 = getelementptr [8 x i8], [8 x i8]* %id15, i64 0, i64 4, !dbg !4268
  store i8 %call14, i8* %arrayidx16, align 4, !dbg !4270
  %17 = load i8*, i8** %id.addr, align 8, !dbg !4271
  %arrayidx17 = getelementptr i8, i8* %17, i64 5, !dbg !4271
  %18 = load i8, i8* %arrayidx17, align 1, !dbg !4271
  %call18 = call zeroext i8 @__tolower(i8 zeroext %18) #8, !dbg !4271
  %19 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4272
  %id19 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %19, i32 0, i32 0, !dbg !4273
  %arrayidx20 = getelementptr [8 x i8], [8 x i8]* %id19, i64 0, i64 5, !dbg !4272
  store i8 %call18, i8* %arrayidx20, align 1, !dbg !4274
  %20 = load i8*, i8** %id.addr, align 8, !dbg !4275
  %arrayidx21 = getelementptr i8, i8* %20, i64 6, !dbg !4275
  %21 = load i8, i8* %arrayidx21, align 1, !dbg !4275
  %call22 = call zeroext i8 @__tolower(i8 zeroext %21) #8, !dbg !4275
  %22 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4276
  %id23 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %22, i32 0, i32 0, !dbg !4277
  %arrayidx24 = getelementptr [8 x i8], [8 x i8]* %id23, i64 0, i64 6, !dbg !4276
  store i8 %call22, i8* %arrayidx24, align 2, !dbg !4278
  %23 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4279
  %id25 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %23, i32 0, i32 0, !dbg !4280
  %arrayidx26 = getelementptr [8 x i8], [8 x i8]* %id25, i64 0, i64 7, !dbg !4279
  store i8 0, i8* %arrayidx26, align 1, !dbg !4281
  %24 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4282
  %next = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %24, i32 0, i32 1, !dbg !4283
  store %struct.pnp_id* null, %struct.pnp_id** %next, align 8, !dbg !4284
  %25 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4285
  %id27 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %25, i32 0, i32 6, !dbg !4286
  %26 = load %struct.pnp_id*, %struct.pnp_id** %id27, align 8, !dbg !4286
  store %struct.pnp_id* %26, %struct.pnp_id** %ptr, align 8, !dbg !4287
  br label %while.cond, !dbg !4288

while.cond:                                       ; preds = %while.body, %if.end
  %27 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !4289
  %tobool28 = icmp ne %struct.pnp_id* %27, null, !dbg !4289
  br i1 %tobool28, label %land.rhs, label %land.end, !dbg !4290

land.rhs:                                         ; preds = %while.cond
  %28 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !4291
  %next29 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %28, i32 0, i32 1, !dbg !4292
  %29 = load %struct.pnp_id*, %struct.pnp_id** %next29, align 8, !dbg !4292
  %tobool30 = icmp ne %struct.pnp_id* %29, null, !dbg !4290
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ], !dbg !4293
  br i1 %30, label %while.body, label %while.end, !dbg !4288

while.body:                                       ; preds = %land.end
  %31 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !4294
  %next31 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %31, i32 0, i32 1, !dbg !4295
  %32 = load %struct.pnp_id*, %struct.pnp_id** %next31, align 8, !dbg !4295
  store %struct.pnp_id* %32, %struct.pnp_id** %ptr, align 8, !dbg !4296
  br label %while.cond, !dbg !4288, !llvm.loop !4297

while.end:                                        ; preds = %land.end
  %33 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !4298
  %tobool32 = icmp ne %struct.pnp_id* %33, null, !dbg !4298
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !4300

if.then33:                                        ; preds = %while.end
  %34 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4301
  %35 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !4302
  %next34 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %35, i32 0, i32 1, !dbg !4303
  store %struct.pnp_id* %34, %struct.pnp_id** %next34, align 8, !dbg !4304
  br label %if.end36, !dbg !4302

if.else:                                          ; preds = %while.end
  %36 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4305
  %37 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4306
  %id35 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %37, i32 0, i32 6, !dbg !4307
  store %struct.pnp_id* %36, %struct.pnp_id** %id35, align 8, !dbg !4308
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %38 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4309
  store %struct.pnp_id* %38, %struct.pnp_id** %retval, align 8, !dbg !4310
  br label %return, !dbg !4310

return:                                           ; preds = %if.end36, %if.then
  %39 = load %struct.pnp_id*, %struct.pnp_id** %retval, align 8, !dbg !4311
  ret %struct.pnp_id* %39, !dbg !4311
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_add_card(%struct.pnp_card* %card) #0 !dbg !4312 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.pnp_card*, align 8
  %error = alloca i32, align 4
  %pos = alloca %struct.list_head*, align 8
  %temp = alloca %struct.list_head*, align 8
  %dev7 = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %drv = alloca %struct.pnp_card_driver*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp17 = alloca %struct.pnp_card_driver*, align 8
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4317, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.declare(metadata %struct.list_head** %temp, metadata !4321, metadata !DIExpression()), !dbg !4322
  %0 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4323
  %dev = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %0, i32 0, i32 0, !dbg !4324
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 5, !dbg !4325
  store %struct.bus_type* null, %struct.bus_type** %bus, align 8, !dbg !4326
  %1 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4327
  %dev1 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %1, i32 0, i32 0, !dbg !4328
  %release = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 31, !dbg !4329
  store void (%struct.device*)* @pnp_release_card, void (%struct.device*)** %release, align 8, !dbg !4330
  %2 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4331
  %dev2 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %2, i32 0, i32 0, !dbg !4332
  %call = call i32 @device_register(%struct.device* %dev2) #8, !dbg !4333
  store i32 %call, i32* %error, align 4, !dbg !4334
  %3 = load i32, i32* %error, align 4, !dbg !4335
  %tobool = icmp ne i32 %3, 0, !dbg !4335
  br i1 %tobool, label %if.then, label %if.end, !dbg !4337

if.then:                                          ; preds = %entry
  %4 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4338
  %dev3 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %4, i32 0, i32 0, !dbg !4338
  %5 = load i32, i32* %error, align 4, !dbg !4338
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %5) #12, !dbg !4338
  %6 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4340
  %dev4 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %6, i32 0, i32 0, !dbg !4341
  call void @put_device(%struct.device* %dev4) #8, !dbg !4342
  %7 = load i32, i32* %error, align 4, !dbg !4343
  store i32 %7, i32* %retval, align 4, !dbg !4344
  br label %return, !dbg !4344

if.end:                                           ; preds = %entry
  %8 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4345
  %call5 = call i32 @pnp_interface_attach_card(%struct.pnp_card* %8) #8, !dbg !4346
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4347
  %9 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4348
  %global_list = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %9, i32 0, i32 2, !dbg !4349
  call void @list_add_tail(%struct.list_head* %global_list, %struct.list_head* @pnp_cards) #8, !dbg !4350
  %10 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4351
  %protocol_list = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %10, i32 0, i32 3, !dbg !4352
  %11 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4353
  %protocol = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %11, i32 0, i32 5, !dbg !4354
  %12 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !4354
  %cards = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %12, i32 0, i32 10, !dbg !4355
  call void @list_add_tail(%struct.list_head* %protocol_list, %struct.list_head* %cards) #8, !dbg !4356
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4357
  %13 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4358
  %devices = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %13, i32 0, i32 4, !dbg !4358
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !4358
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4358
  store %struct.list_head* %14, %struct.list_head** %pos, align 8, !dbg !4358
  br label %for.cond, !dbg !4358

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4360
  %16 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4360
  %devices6 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %16, i32 0, i32 4, !dbg !4360
  %cmp = icmp ne %struct.list_head* %15, %devices6, !dbg !4360
  br i1 %cmp, label %for.body, label %for.end, !dbg !4358

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev7, metadata !4362, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4365, metadata !DIExpression()), !dbg !4367
  %17 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4367
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4367
  store i8* %18, i8** %__mptr, align 8, !dbg !4367
  br label %do.body, !dbg !4367

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !4368

do.end:                                           ; preds = %do.body
  %19 = load i8*, i8** %__mptr, align 8, !dbg !4367
  %add.ptr = getelementptr i8, i8* %19, i64 -744, !dbg !4367
  %20 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4367
  store %struct.pnp_dev* %20, %struct.pnp_dev** %tmp, align 8, !dbg !4368
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4367
  store %struct.pnp_dev* %21, %struct.pnp_dev** %dev7, align 8, !dbg !4364
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev7, align 8, !dbg !4370
  %call8 = call i32 @__pnp_add_device(%struct.pnp_dev* %22) #8, !dbg !4371
  br label %for.inc, !dbg !4372

for.inc:                                          ; preds = %do.end
  %23 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4360
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0, !dbg !4360
  %24 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !4360
  store %struct.list_head* %24, %struct.list_head** %pos, align 8, !dbg !4360
  br label %for.cond, !dbg !4360, !llvm.loop !4373

for.end:                                          ; preds = %for.cond
  %25 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_card_drivers, i32 0, i32 0), align 8, !dbg !4375
  store %struct.list_head* %25, %struct.list_head** %pos, align 8, !dbg !4375
  %26 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4375
  %next10 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0, !dbg !4375
  %27 = load %struct.list_head*, %struct.list_head** %next10, align 8, !dbg !4375
  store %struct.list_head* %27, %struct.list_head** %temp, align 8, !dbg !4375
  br label %for.cond11, !dbg !4375

for.cond11:                                       ; preds = %for.inc20, %for.end
  %28 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4377
  %cmp12 = icmp ne %struct.list_head* %28, @pnp_card_drivers, !dbg !4377
  br i1 %cmp12, label %for.body13, label %for.end22, !dbg !4375

for.body13:                                       ; preds = %for.cond11
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv, metadata !4379, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !4382, metadata !DIExpression()), !dbg !4384
  %29 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4384
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !4384
  store i8* %30, i8** %__mptr14, align 8, !dbg !4384
  br label %do.body15, !dbg !4384

do.body15:                                        ; preds = %for.body13
  br label %do.end16, !dbg !4385

do.end16:                                         ; preds = %do.body15
  %31 = load i8*, i8** %__mptr14, align 8, !dbg !4384
  %add.ptr18 = getelementptr i8, i8* %31, i64 0, !dbg !4384
  %32 = bitcast i8* %add.ptr18 to %struct.pnp_card_driver*, !dbg !4384
  store %struct.pnp_card_driver* %32, %struct.pnp_card_driver** %tmp17, align 8, !dbg !4385
  %33 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %tmp17, align 8, !dbg !4384
  store %struct.pnp_card_driver* %33, %struct.pnp_card_driver** %drv, align 8, !dbg !4381
  %34 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4387
  %35 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4388
  %call19 = call i32 @card_probe(%struct.pnp_card* %34, %struct.pnp_card_driver* %35) #8, !dbg !4389
  br label %for.inc20, !dbg !4390

for.inc20:                                        ; preds = %do.end16
  %36 = load %struct.list_head*, %struct.list_head** %temp, align 8, !dbg !4377
  store %struct.list_head* %36, %struct.list_head** %pos, align 8, !dbg !4377
  %37 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4377
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 0, !dbg !4377
  %38 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !4377
  store %struct.list_head* %38, %struct.list_head** %temp, align 8, !dbg !4377
  br label %for.cond11, !dbg !4377, !llvm.loop !4391

for.end22:                                        ; preds = %for.cond11
  store i32 0, i32* %retval, align 4, !dbg !4393
  br label %return, !dbg !4393

return:                                           ; preds = %for.end22, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !4394
  ret i32 %39, !dbg !4394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_release_card(%struct.device* %dmdev) #0 !dbg !4395 {
entry:
  %dmdev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.pnp_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_card*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4400, metadata !DIExpression()), !dbg !4402
  %0 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !4402
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4402
  store i8* %1, i8** %__mptr, align 8, !dbg !4402
  br label %do.body, !dbg !4402

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4403

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4402
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4402
  %3 = bitcast i8* %add.ptr to %struct.pnp_card*, !dbg !4402
  store %struct.pnp_card* %3, %struct.pnp_card** %tmp, align 8, !dbg !4403
  %4 = load %struct.pnp_card*, %struct.pnp_card** %tmp, align 8, !dbg !4402
  store %struct.pnp_card* %4, %struct.pnp_card** %card, align 8, !dbg !4399
  %5 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4405
  call void @pnp_free_card_ids(%struct.pnp_card* %5) #8, !dbg !4406
  %6 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4407
  %7 = bitcast %struct.pnp_card* %6 to i8*, !dbg !4407
  call void @kfree(i8* %7) #8, !dbg !4408
  ret void, !dbg !4409
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_interface_attach_card(%struct.pnp_card* %card) #0 !dbg !4410 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.pnp_card*, align 8
  %rc = alloca i32, align 4
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4415
  %dev = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %0, i32 0, i32 0, !dbg !4416
  %call = call i32 @device_create_file(%struct.device* %dev, %struct.device_attribute* @dev_attr_name) #8, !dbg !4417
  store i32 %call, i32* %rc, align 4, !dbg !4414
  %1 = load i32, i32* %rc, align 4, !dbg !4418
  %tobool = icmp ne i32 %1, 0, !dbg !4418
  br i1 %tobool, label %if.then, label %if.end, !dbg !4420

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rc, align 4, !dbg !4421
  store i32 %2, i32* %retval, align 4, !dbg !4422
  br label %return, !dbg !4422

if.end:                                           ; preds = %entry
  %3 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4423
  %dev1 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %3, i32 0, i32 0, !dbg !4424
  %call2 = call i32 @device_create_file(%struct.device* %dev1, %struct.device_attribute* @dev_attr_card_id) #8, !dbg !4425
  store i32 %call2, i32* %rc, align 4, !dbg !4426
  %4 = load i32, i32* %rc, align 4, !dbg !4427
  %tobool3 = icmp ne i32 %4, 0, !dbg !4427
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4429

if.then4:                                         ; preds = %if.end
  br label %err_name, !dbg !4430

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4431
  br label %return, !dbg !4431

err_name:                                         ; preds = %if.then4
  call void @llvm.dbg.label(metadata !4432), !dbg !4433
  %5 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4434
  %dev6 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %5, i32 0, i32 0, !dbg !4435
  call void @device_remove_file(%struct.device* %dev6, %struct.device_attribute* @dev_attr_name) #8, !dbg !4436
  %6 = load i32, i32* %rc, align 4, !dbg !4437
  store i32 %6, i32* %retval, align 4, !dbg !4438
  br label %return, !dbg !4438

return:                                           ; preds = %err_name, %if.end5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4439
  ret i32 %7, !dbg !4439
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4440 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4448
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4449
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4450
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4450
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4451
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !4452
  ret void, !dbg !4453
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pnp_add_device(%struct.pnp_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @card_probe(%struct.pnp_card* %card, %struct.pnp_card_driver* %drv) #0 !dbg !4454 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.pnp_card*, align 8
  %drv.addr = alloca %struct.pnp_card_driver*, align 8
  %id = alloca %struct.pnp_card_device_id*, align 8
  %clink = alloca %struct.pnp_card_link*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp23 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  store %struct.pnp_card_driver* %drv, %struct.pnp_card_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.declare(metadata %struct.pnp_card_device_id** %id, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.declare(metadata %struct.pnp_card_link** %clink, metadata !4463, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !4465, metadata !DIExpression()), !dbg !4466
  %0 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4467
  %probe = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %0, i32 0, i32 4, !dbg !4469
  %1 = load i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)** %probe, align 8, !dbg !4469
  %tobool = icmp ne i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)* %1, null, !dbg !4467
  br i1 %tobool, label %if.end, label %if.then, !dbg !4470

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4471
  br label %return, !dbg !4471

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4472
  %3 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4473
  %call = call %struct.pnp_card_device_id* @match_card(%struct.pnp_card_driver* %2, %struct.pnp_card* %3) #8, !dbg !4474
  store %struct.pnp_card_device_id* %call, %struct.pnp_card_device_id** %id, align 8, !dbg !4475
  %4 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %id, align 8, !dbg !4476
  %tobool1 = icmp ne %struct.pnp_card_device_id* %4, null, !dbg !4476
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4478

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4479
  br label %return, !dbg !4479

if.end3:                                          ; preds = %if.end
  %call4 = call i8* @pnp_alloc(i64 32) #8, !dbg !4480
  %5 = bitcast i8* %call4 to %struct.pnp_card_link*, !dbg !4480
  store %struct.pnp_card_link* %5, %struct.pnp_card_link** %clink, align 8, !dbg !4481
  %6 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4482
  %tobool5 = icmp ne %struct.pnp_card_link* %6, null, !dbg !4482
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4484

if.then6:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

if.end7:                                          ; preds = %if.end3
  %7 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4486
  %8 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4487
  %card8 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %8, i32 0, i32 0, !dbg !4488
  store %struct.pnp_card* %7, %struct.pnp_card** %card8, align 8, !dbg !4489
  %9 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4490
  %10 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4491
  %driver = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %10, i32 0, i32 1, !dbg !4492
  store %struct.pnp_card_driver* %9, %struct.pnp_card_driver** %driver, align 8, !dbg !4493
  %11 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4494
  %pm_state = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %11, i32 0, i32 3, !dbg !4495
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !4496
  store i32 0, i32* %event, align 4, !dbg !4496
  %12 = bitcast %struct.pm_message* %pm_state to i8*, !dbg !4496
  %13 = bitcast %struct.pm_message* %.compoundliteral to i8*, !dbg !4496
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 4 %13, i64 4, i1 false), !dbg !4496
  %14 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4497
  %probe9 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %14, i32 0, i32 4, !dbg !4499
  %15 = load i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)** %probe9, align 8, !dbg !4499
  %16 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4500
  %17 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %id, align 8, !dbg !4501
  %call10 = call i32 %15(%struct.pnp_card_link* %16, %struct.pnp_card_device_id* %17) #8, !dbg !4497
  %cmp = icmp sge i32 %call10, 0, !dbg !4502
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !4503

if.then11:                                        ; preds = %if.end7
  store i32 1, i32* %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

if.end12:                                         ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4505, metadata !DIExpression()), !dbg !4508
  %18 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4508
  %devices = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %18, i32 0, i32 4, !dbg !4508
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !4508
  %19 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4508
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !4508
  store i8* %20, i8** %__mptr, align 8, !dbg !4508
  br label %do.body, !dbg !4508

do.body:                                          ; preds = %if.end12
  br label %do.end, !dbg !4509

do.end:                                           ; preds = %do.body
  %21 = load i8*, i8** %__mptr, align 8, !dbg !4508
  %add.ptr = getelementptr i8, i8* %21, i64 -744, !dbg !4508
  %22 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4508
  store %struct.pnp_dev* %22, %struct.pnp_dev** %tmp, align 8, !dbg !4509
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4508
  store %struct.pnp_dev* %23, %struct.pnp_dev** %dev, align 8, !dbg !4511
  br label %for.cond, !dbg !4511

for.cond:                                         ; preds = %do.end22, %do.end
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4512
  %card_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 6, !dbg !4512
  %25 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4512
  %devices13 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %25, i32 0, i32 4, !dbg !4512
  %cmp14 = icmp eq %struct.list_head* %card_list, %devices13, !dbg !4512
  %lnot = xor i1 %cmp14, true, !dbg !4512
  br i1 %lnot, label %for.body, label %for.end, !dbg !4511

for.body:                                         ; preds = %for.cond
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4514
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %26, i32 0, i32 11, !dbg !4517
  %27 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link, align 8, !dbg !4517
  %28 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4518
  %cmp15 = icmp eq %struct.pnp_card_link* %27, %28, !dbg !4519
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4520

if.then16:                                        ; preds = %for.body
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4521
  call void @pnp_release_card_device(%struct.pnp_dev* %29) #8, !dbg !4522
  br label %if.end17, !dbg !4522

if.end17:                                         ; preds = %if.then16, %for.body
  br label %for.inc, !dbg !4523

for.inc:                                          ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !4524, metadata !DIExpression()), !dbg !4526
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4526
  %card_list19 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %30, i32 0, i32 6, !dbg !4526
  %next20 = getelementptr inbounds %struct.list_head, %struct.list_head* %card_list19, i32 0, i32 0, !dbg !4526
  %31 = load %struct.list_head*, %struct.list_head** %next20, align 8, !dbg !4526
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !4526
  store i8* %32, i8** %__mptr18, align 8, !dbg !4526
  br label %do.body21, !dbg !4526

do.body21:                                        ; preds = %for.inc
  br label %do.end22, !dbg !4527

do.end22:                                         ; preds = %do.body21
  %33 = load i8*, i8** %__mptr18, align 8, !dbg !4526
  %add.ptr24 = getelementptr i8, i8* %33, i64 -744, !dbg !4526
  %34 = bitcast i8* %add.ptr24 to %struct.pnp_dev*, !dbg !4526
  store %struct.pnp_dev* %34, %struct.pnp_dev** %tmp23, align 8, !dbg !4527
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp23, align 8, !dbg !4526
  store %struct.pnp_dev* %35, %struct.pnp_dev** %dev, align 8, !dbg !4512
  br label %for.cond, !dbg !4512, !llvm.loop !4529

for.end:                                          ; preds = %for.cond
  %36 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink, align 8, !dbg !4531
  %37 = bitcast %struct.pnp_card_link* %36 to i8*, !dbg !4531
  call void @kfree(i8* %37) #8, !dbg !4532
  store i32 0, i32* %retval, align 4, !dbg !4533
  br label %return, !dbg !4533

return:                                           ; preds = %for.end, %if.then11, %if.then6, %if.then2, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !4534
  ret i32 %38, !dbg !4534
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_remove_card(%struct.pnp_card* %card) #0 !dbg !4535 {
entry:
  %card.addr = alloca %struct.pnp_card*, align 8
  %pos = alloca %struct.list_head*, align 8
  %temp = alloca %struct.list_head*, align 8
  %dev3 = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.declare(metadata %struct.list_head** %temp, metadata !4542, metadata !DIExpression()), !dbg !4543
  %0 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4544
  %dev = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %0, i32 0, i32 0, !dbg !4545
  call void @device_unregister(%struct.device* %dev) #8, !dbg !4546
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4547
  %1 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4548
  %global_list = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %1, i32 0, i32 2, !dbg !4549
  call void @list_del(%struct.list_head* %global_list) #8, !dbg !4550
  %2 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4551
  %protocol_list = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %2, i32 0, i32 3, !dbg !4552
  call void @list_del(%struct.list_head* %protocol_list) #8, !dbg !4553
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4554
  %3 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4555
  %devices = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %3, i32 0, i32 4, !dbg !4555
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !4555
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4555
  store %struct.list_head* %4, %struct.list_head** %pos, align 8, !dbg !4555
  %5 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4555
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 0, !dbg !4555
  %6 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !4555
  store %struct.list_head* %6, %struct.list_head** %temp, align 8, !dbg !4555
  br label %for.cond, !dbg !4555

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4557
  %8 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4557
  %devices2 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %8, i32 0, i32 4, !dbg !4557
  %cmp = icmp ne %struct.list_head* %7, %devices2, !dbg !4557
  br i1 %cmp, label %for.body, label %for.end, !dbg !4555

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev3, metadata !4559, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4562, metadata !DIExpression()), !dbg !4564
  %9 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4564
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !4564
  store i8* %10, i8** %__mptr, align 8, !dbg !4564
  br label %do.body, !dbg !4564

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !4565

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %__mptr, align 8, !dbg !4564
  %add.ptr = getelementptr i8, i8* %11, i64 -744, !dbg !4564
  %12 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4564
  store %struct.pnp_dev* %12, %struct.pnp_dev** %tmp, align 8, !dbg !4565
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4564
  store %struct.pnp_dev* %13, %struct.pnp_dev** %dev3, align 8, !dbg !4561
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev3, align 8, !dbg !4567
  call void @pnp_remove_card_device(%struct.pnp_dev* %14) #8, !dbg !4568
  br label %for.inc, !dbg !4569

for.inc:                                          ; preds = %do.end
  %15 = load %struct.list_head*, %struct.list_head** %temp, align 8, !dbg !4557
  store %struct.list_head* %15, %struct.list_head** %pos, align 8, !dbg !4557
  %16 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4557
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0, !dbg !4557
  %17 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !4557
  store %struct.list_head* %17, %struct.list_head** %temp, align 8, !dbg !4557
  br label %for.cond, !dbg !4557, !llvm.loop !4570

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4572
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4573 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4578
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4579
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4580
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4581
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4582
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4583
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4584
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4585
  ret void, !dbg !4586
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_remove_card_device(%struct.pnp_dev* %dev) #0 !dbg !4587 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4590
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4591
  %card = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 9, !dbg !4592
  store %struct.pnp_card* null, %struct.pnp_card** %card, align 8, !dbg !4593
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4594
  %card_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 6, !dbg !4595
  call void @list_del(%struct.list_head* %card_list) #8, !dbg !4596
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4597
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4598
  call void @__pnp_remove_device(%struct.pnp_dev* %2) #8, !dbg !4599
  ret void, !dbg !4600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_add_card_device(%struct.pnp_card* %card, %struct.pnp_dev* %dev) #0 !dbg !4601 {
entry:
  %card.addr = alloca %struct.pnp_card*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4608
  %dev1 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %0, i32 0, i32 0, !dbg !4609
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4610
  %dev2 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 0, !dbg !4611
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 1, !dbg !4612
  store %struct.device* %dev1, %struct.device** %parent, align 8, !dbg !4613
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4614
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 11, !dbg !4615
  store %struct.pnp_card_link* null, %struct.pnp_card_link** %card_link, align 8, !dbg !4616
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4617
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 0, !dbg !4618
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4619
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 8, !dbg !4620
  %5 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !4620
  %number = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %5, i32 0, i32 8, !dbg !4621
  %6 = load i8, i8* %number, align 8, !dbg !4621
  %conv = zext i8 %6 to i32, !dbg !4619
  %7 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4622
  %number4 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %7, i32 0, i32 1, !dbg !4623
  %8 = load i8, i8* %number4, align 8, !dbg !4623
  %conv5 = zext i8 %8 to i32, !dbg !4622
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4624
  %number6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 2, !dbg !4625
  %10 = load i32, i32* %number6, align 8, !dbg !4625
  %call = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %conv, i32 %conv5, i32 %10) #8, !dbg !4626
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4627
  %11 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4628
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4629
  %card7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 9, !dbg !4630
  store %struct.pnp_card* %11, %struct.pnp_card** %card7, align 8, !dbg !4631
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4632
  %card_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 6, !dbg !4633
  %14 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !4634
  %devices = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %14, i32 0, i32 4, !dbg !4635
  call void @list_add_tail(%struct.list_head* %card_list, %struct.list_head* %devices) #8, !dbg !4636
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4637
  ret i32 0, !dbg !4638
}

; Function Attrs: noredzone
declare dso_local void @__pnp_remove_device(%struct.pnp_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_dev* @pnp_request_card_device(%struct.pnp_card_link* %clink, i8* %id, %struct.pnp_dev* %from) #0 !dbg !4639 {
entry:
  %retval = alloca %struct.pnp_dev*, align 8
  %clink.addr = alloca %struct.pnp_card_link*, align 8
  %id.addr = alloca i8*, align 8
  %from.addr = alloca %struct.pnp_dev*, align 8
  %pos = alloca %struct.list_head*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %drv = alloca %struct.pnp_card_driver*, align 8
  %card = alloca %struct.pnp_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card_link* %clink, %struct.pnp_card_link** %clink.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card_link** %clink.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  store %struct.pnp_dev* %from, %struct.pnp_dev** %from.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %from.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !4648, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card, metadata !4654, metadata !DIExpression()), !dbg !4655
  %0 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink.addr, align 8, !dbg !4656
  %tobool = icmp ne %struct.pnp_card_link* %0, null, !dbg !4656
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4658

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %id.addr, align 8, !dbg !4659
  %tobool1 = icmp ne i8* %1, null, !dbg !4659
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4660

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.pnp_dev* null, %struct.pnp_dev** %retval, align 8, !dbg !4661
  br label %return, !dbg !4661

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink.addr, align 8, !dbg !4662
  %card2 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %2, i32 0, i32 0, !dbg !4663
  %3 = load %struct.pnp_card*, %struct.pnp_card** %card2, align 8, !dbg !4663
  store %struct.pnp_card* %3, %struct.pnp_card** %card, align 8, !dbg !4664
  %4 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink.addr, align 8, !dbg !4665
  %driver = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %4, i32 0, i32 1, !dbg !4666
  %5 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %driver, align 8, !dbg !4666
  store %struct.pnp_card_driver* %5, %struct.pnp_card_driver** %drv, align 8, !dbg !4667
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %from.addr, align 8, !dbg !4668
  %tobool3 = icmp ne %struct.pnp_dev* %6, null, !dbg !4668
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !4670

if.then4:                                         ; preds = %if.end
  %7 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4671
  %devices = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %7, i32 0, i32 4, !dbg !4673
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !4674
  %8 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4674
  store %struct.list_head* %8, %struct.list_head** %pos, align 8, !dbg !4675
  br label %if.end9, !dbg !4676

if.else:                                          ; preds = %if.end
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %from.addr, align 8, !dbg !4677
  %card5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 9, !dbg !4680
  %10 = load %struct.pnp_card*, %struct.pnp_card** %card5, align 8, !dbg !4680
  %11 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4681
  %cmp = icmp ne %struct.pnp_card* %10, %11, !dbg !4682
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4683

if.then6:                                         ; preds = %if.else
  store %struct.pnp_dev* null, %struct.pnp_dev** %retval, align 8, !dbg !4684
  br label %return, !dbg !4684

if.end7:                                          ; preds = %if.else
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %from.addr, align 8, !dbg !4685
  %card_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 6, !dbg !4686
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %card_list, i32 0, i32 0, !dbg !4687
  %13 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !4687
  store %struct.list_head* %13, %struct.list_head** %pos, align 8, !dbg !4688
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.then4
  br label %while.cond, !dbg !4689

while.cond:                                       ; preds = %if.end16, %if.end9
  %14 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4690
  %15 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4691
  %devices10 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %15, i32 0, i32 4, !dbg !4692
  %cmp11 = icmp ne %struct.list_head* %14, %devices10, !dbg !4693
  br i1 %cmp11, label %while.body, label %while.end, !dbg !4689

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4694, metadata !DIExpression()), !dbg !4697
  %16 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4697
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !4697
  store i8* %17, i8** %__mptr, align 8, !dbg !4697
  br label %do.body, !dbg !4697

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !4698

do.end:                                           ; preds = %do.body
  %18 = load i8*, i8** %__mptr, align 8, !dbg !4697
  %add.ptr = getelementptr i8, i8* %18, i64 -744, !dbg !4697
  %19 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4697
  store %struct.pnp_dev* %19, %struct.pnp_dev** %tmp, align 8, !dbg !4698
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4697
  store %struct.pnp_dev* %20, %struct.pnp_dev** %dev, align 8, !dbg !4700
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4701
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %21, i32 0, i32 11, !dbg !4703
  %22 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link, align 8, !dbg !4703
  %tobool12 = icmp ne %struct.pnp_card_link* %22, null, !dbg !4701
  br i1 %tobool12, label %if.end16, label %land.lhs.true, !dbg !4704

land.lhs.true:                                    ; preds = %do.end
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4705
  %id13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 12, !dbg !4706
  %24 = load %struct.pnp_id*, %struct.pnp_id** %id13, align 8, !dbg !4706
  %25 = load i8*, i8** %id.addr, align 8, !dbg !4707
  %call = call i32 @compare_pnp_id(%struct.pnp_id* %24, i8* %25) #8, !dbg !4708
  %tobool14 = icmp ne i32 %call, 0, !dbg !4708
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4709

if.then15:                                        ; preds = %land.lhs.true
  br label %found, !dbg !4710

if.end16:                                         ; preds = %land.lhs.true, %do.end
  %26 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4711
  %next17 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0, !dbg !4712
  %27 = load %struct.list_head*, %struct.list_head** %next17, align 8, !dbg !4712
  store %struct.list_head* %27, %struct.list_head** %pos, align 8, !dbg !4713
  br label %while.cond, !dbg !4689, !llvm.loop !4714

while.end:                                        ; preds = %while.cond
  store %struct.pnp_dev* null, %struct.pnp_dev** %retval, align 8, !dbg !4716
  br label %return, !dbg !4716

found:                                            ; preds = %if.then15
  call void @llvm.dbg.label(metadata !4717), !dbg !4718
  %28 = load %struct.pnp_card_link*, %struct.pnp_card_link** %clink.addr, align 8, !dbg !4719
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4720
  %card_link18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %29, i32 0, i32 11, !dbg !4721
  store %struct.pnp_card_link* %28, %struct.pnp_card_link** %card_link18, align 8, !dbg !4722
  %30 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4723
  %link = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %30, i32 0, i32 8, !dbg !4724
  %driver19 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link, i32 0, i32 8, !dbg !4725
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4726
  %dev20 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %31, i32 0, i32 0, !dbg !4727
  %driver21 = getelementptr inbounds %struct.device, %struct.device* %dev20, i32 0, i32 6, !dbg !4728
  store %struct.device_driver* %driver19, %struct.device_driver** %driver21, align 8, !dbg !4729
  %32 = load i32 (%struct.device*)*, i32 (%struct.device*)** getelementptr inbounds (%struct.bus_type, %struct.bus_type* @pnp_bus_type, i32 0, i32 8), align 8, !dbg !4730
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4732
  %dev22 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %33, i32 0, i32 0, !dbg !4733
  %call23 = call i32 %32(%struct.device* %dev22) #8, !dbg !4734
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4734
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4735

if.then25:                                        ; preds = %found
  br label %err_out, !dbg !4736

if.end26:                                         ; preds = %found
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4737
  %dev27 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %34, i32 0, i32 0, !dbg !4739
  %call28 = call i32 @device_bind_driver(%struct.device* %dev27) #8, !dbg !4740
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4740
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4741

if.then30:                                        ; preds = %if.end26
  br label %err_out, !dbg !4742

if.end31:                                         ; preds = %if.end26
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4743
  store %struct.pnp_dev* %35, %struct.pnp_dev** %retval, align 8, !dbg !4744
  br label %return, !dbg !4744

err_out:                                          ; preds = %if.then30, %if.then25
  call void @llvm.dbg.label(metadata !4745), !dbg !4746
  %36 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4747
  %dev32 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %36, i32 0, i32 0, !dbg !4748
  %driver33 = getelementptr inbounds %struct.device, %struct.device* %dev32, i32 0, i32 6, !dbg !4749
  store %struct.device_driver* null, %struct.device_driver** %driver33, align 8, !dbg !4750
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4751
  %card_link34 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %37, i32 0, i32 11, !dbg !4752
  store %struct.pnp_card_link* null, %struct.pnp_card_link** %card_link34, align 8, !dbg !4753
  store %struct.pnp_dev* null, %struct.pnp_dev** %retval, align 8, !dbg !4754
  br label %return, !dbg !4754

return:                                           ; preds = %err_out, %if.end31, %while.end, %if.then6, %if.then
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %retval, align 8, !dbg !4755
  ret %struct.pnp_dev* %38, !dbg !4755
}

; Function Attrs: noredzone
declare dso_local i32 @compare_pnp_id(%struct.pnp_id*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @device_bind_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_release_card_device(%struct.pnp_dev* %dev) #0 !dbg !4756 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %drv = alloca %struct.pnp_card_driver*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv, metadata !4759, metadata !DIExpression()), !dbg !4760
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4761
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 11, !dbg !4762
  %1 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link, align 8, !dbg !4762
  %driver = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %1, i32 0, i32 1, !dbg !4763
  %2 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %driver, align 8, !dbg !4763
  store %struct.pnp_card_driver* %2, %struct.pnp_card_driver** %drv, align 8, !dbg !4760
  %3 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4764
  %link = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %3, i32 0, i32 8, !dbg !4765
  %remove = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link, i32 0, i32 4, !dbg !4766
  store void (%struct.pnp_dev*)* @card_remove, void (%struct.pnp_dev*)** %remove, align 8, !dbg !4767
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4768
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 0, !dbg !4769
  call void @device_release_driver(%struct.device* %dev1) #8, !dbg !4770
  %5 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4771
  %link2 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %5, i32 0, i32 8, !dbg !4772
  %remove3 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link2, i32 0, i32 4, !dbg !4773
  store void (%struct.pnp_dev*)* @card_remove_first, void (%struct.pnp_dev*)** %remove3, align 8, !dbg !4774
  ret void, !dbg !4775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @card_remove(%struct.pnp_dev* %dev) #0 !dbg !4776 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4779
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 11, !dbg !4780
  store %struct.pnp_card_link* null, %struct.pnp_card_link** %card_link, align 8, !dbg !4781
  ret void, !dbg !4782
}

; Function Attrs: noredzone
declare dso_local void @device_release_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @card_remove_first(%struct.pnp_dev* %dev) #0 !dbg !4783 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %drv = alloca %struct.pnp_card_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_card_driver*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv, metadata !4786, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4788, metadata !DIExpression()), !dbg !4790
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4790
  %driver = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 10, !dbg !4790
  %1 = load %struct.pnp_driver*, %struct.pnp_driver** %driver, align 8, !dbg !4790
  %2 = bitcast %struct.pnp_driver* %1 to i8*, !dbg !4790
  store i8* %2, i8** %__mptr, align 8, !dbg !4790
  br label %do.body, !dbg !4790

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4791

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4790
  %add.ptr = getelementptr i8, i8* %3, i64 -72, !dbg !4790
  %4 = bitcast i8* %add.ptr to %struct.pnp_card_driver*, !dbg !4790
  store %struct.pnp_card_driver* %4, %struct.pnp_card_driver** %tmp, align 8, !dbg !4791
  %5 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %tmp, align 8, !dbg !4790
  store %struct.pnp_card_driver* %5, %struct.pnp_card_driver** %drv, align 8, !dbg !4787
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4793
  %card = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 9, !dbg !4795
  %7 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4795
  %tobool = icmp ne %struct.pnp_card* %7, null, !dbg !4793
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4796

lor.lhs.false:                                    ; preds = %do.end
  %8 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4797
  %tobool1 = icmp ne %struct.pnp_card_driver* %8, null, !dbg !4797
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4798

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %return, !dbg !4799

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4800
  %remove = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %9, i32 0, i32 5, !dbg !4802
  %10 = load void (%struct.pnp_card_link*)*, void (%struct.pnp_card_link*)** %remove, align 8, !dbg !4802
  %tobool2 = icmp ne void (%struct.pnp_card_link*)* %10, null, !dbg !4800
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4803

if.then3:                                         ; preds = %if.end
  %11 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4804
  %remove4 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %11, i32 0, i32 5, !dbg !4805
  %12 = load void (%struct.pnp_card_link*)*, void (%struct.pnp_card_link*)** %remove4, align 8, !dbg !4805
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4806
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 11, !dbg !4807
  %14 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link, align 8, !dbg !4807
  call void %12(%struct.pnp_card_link* %14) #8, !dbg !4804
  br label %if.end5, !dbg !4804

if.end5:                                          ; preds = %if.then3, %if.end
  %15 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv, align 8, !dbg !4808
  %link = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %15, i32 0, i32 8, !dbg !4809
  %remove6 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link, i32 0, i32 4, !dbg !4810
  store void (%struct.pnp_dev*)* @card_remove, void (%struct.pnp_dev*)** %remove6, align 8, !dbg !4811
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4812
  %card_link7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 11, !dbg !4813
  %17 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link7, align 8, !dbg !4813
  %18 = bitcast %struct.pnp_card_link* %17 to i8*, !dbg !4812
  call void @kfree(i8* %18) #8, !dbg !4814
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4815
  call void @card_remove(%struct.pnp_dev* %19) #8, !dbg !4816
  br label %return, !dbg !4817

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !4817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_card_driver(%struct.pnp_card_driver* %drv) #0 !dbg !4818 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.pnp_card_driver*, align 8
  %error = alloca i32, align 4
  %pos = alloca %struct.list_head*, align 8
  %temp = alloca %struct.list_head*, align 8
  %card = alloca %struct.pnp_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_card*, align 8
  store %struct.pnp_card_driver* %drv, %struct.pnp_card_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4823, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata %struct.list_head** %temp, metadata !4827, metadata !DIExpression()), !dbg !4828
  %0 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4829
  %name = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %0, i32 0, i32 1, !dbg !4830
  %1 = load i8*, i8** %name, align 8, !dbg !4830
  %2 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4831
  %link = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %2, i32 0, i32 8, !dbg !4832
  %name1 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link, i32 0, i32 0, !dbg !4833
  store i8* %1, i8** %name1, align 8, !dbg !4834
  %3 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4835
  %link2 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %3, i32 0, i32 8, !dbg !4836
  %id_table = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link2, i32 0, i32 1, !dbg !4837
  store %struct.pnp_device_id* null, %struct.pnp_device_id** %id_table, align 8, !dbg !4838
  %4 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4839
  %flags = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %4, i32 0, i32 3, !dbg !4840
  %5 = load i32, i32* %flags, align 8, !dbg !4840
  %6 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4841
  %link3 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %6, i32 0, i32 8, !dbg !4842
  %flags4 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link3, i32 0, i32 2, !dbg !4843
  store i32 %5, i32* %flags4, align 8, !dbg !4844
  %7 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4845
  %link5 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %7, i32 0, i32 8, !dbg !4846
  %probe = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link5, i32 0, i32 3, !dbg !4847
  store i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* null, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)** %probe, align 8, !dbg !4848
  %8 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4849
  %link6 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %8, i32 0, i32 8, !dbg !4850
  %remove = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link6, i32 0, i32 4, !dbg !4851
  store void (%struct.pnp_dev*)* @card_remove_first, void (%struct.pnp_dev*)** %remove, align 8, !dbg !4852
  %9 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4853
  %suspend = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %9, i32 0, i32 6, !dbg !4854
  %10 = load i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*, i32)** %suspend, align 8, !dbg !4854
  %tobool = icmp ne i32 (%struct.pnp_card_link*, i32)* %10, null, !dbg !4853
  %11 = zext i1 %tobool to i64, !dbg !4853
  %cond = select i1 %tobool, i32 (%struct.pnp_dev*, i32)* @card_suspend, i32 (%struct.pnp_dev*, i32)* null, !dbg !4853
  %12 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4855
  %link7 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %12, i32 0, i32 8, !dbg !4856
  %suspend8 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link7, i32 0, i32 6, !dbg !4857
  store i32 (%struct.pnp_dev*, i32)* %cond, i32 (%struct.pnp_dev*, i32)** %suspend8, align 8, !dbg !4858
  %13 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4859
  %resume = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %13, i32 0, i32 7, !dbg !4860
  %14 = load i32 (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*)** %resume, align 8, !dbg !4860
  %tobool9 = icmp ne i32 (%struct.pnp_card_link*)* %14, null, !dbg !4859
  %15 = zext i1 %tobool9 to i64, !dbg !4859
  %cond10 = select i1 %tobool9, i32 (%struct.pnp_dev*)* @card_resume, i32 (%struct.pnp_dev*)* null, !dbg !4859
  %16 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4861
  %link11 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %16, i32 0, i32 8, !dbg !4862
  %resume12 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %link11, i32 0, i32 7, !dbg !4863
  %resume13 = bitcast {}** %resume12 to i32 (%struct.pnp_dev*)**, !dbg !4863
  store i32 (%struct.pnp_dev*)* %cond10, i32 (%struct.pnp_dev*)** %resume13, align 8, !dbg !4864
  %17 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4865
  %link14 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %17, i32 0, i32 8, !dbg !4866
  %call = call i32 @pnp_register_driver(%struct.pnp_driver* %link14) #8, !dbg !4867
  store i32 %call, i32* %error, align 4, !dbg !4868
  %18 = load i32, i32* %error, align 4, !dbg !4869
  %cmp = icmp slt i32 %18, 0, !dbg !4871
  br i1 %cmp, label %if.then, label %if.end, !dbg !4872

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %error, align 4, !dbg !4873
  store i32 %19, i32* %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4875
  %20 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4876
  %global_list = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %20, i32 0, i32 0, !dbg !4877
  call void @list_add_tail(%struct.list_head* %global_list, %struct.list_head* @pnp_card_drivers) #8, !dbg !4878
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4879
  %21 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_cards, i32 0, i32 0), align 8, !dbg !4880
  store %struct.list_head* %21, %struct.list_head** %pos, align 8, !dbg !4880
  %22 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4880
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0, !dbg !4880
  %23 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4880
  store %struct.list_head* %23, %struct.list_head** %temp, align 8, !dbg !4880
  br label %for.cond, !dbg !4880

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4882
  %cmp15 = icmp ne %struct.list_head* %24, @pnp_cards, !dbg !4882
  br i1 %cmp15, label %for.body, label %for.end, !dbg !4880

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card, metadata !4884, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4887, metadata !DIExpression()), !dbg !4889
  %25 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4889
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !4889
  store i8* %26, i8** %__mptr, align 8, !dbg !4889
  br label %do.body, !dbg !4889

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !4890

do.end:                                           ; preds = %do.body
  %27 = load i8*, i8** %__mptr, align 8, !dbg !4889
  %add.ptr = getelementptr i8, i8* %27, i64 -704, !dbg !4889
  %28 = bitcast i8* %add.ptr to %struct.pnp_card*, !dbg !4889
  store %struct.pnp_card* %28, %struct.pnp_card** %tmp, align 8, !dbg !4890
  %29 = load %struct.pnp_card*, %struct.pnp_card** %tmp, align 8, !dbg !4889
  store %struct.pnp_card* %29, %struct.pnp_card** %card, align 8, !dbg !4886
  %30 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4892
  %31 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4893
  %call16 = call i32 @card_probe(%struct.pnp_card* %30, %struct.pnp_card_driver* %31) #8, !dbg !4894
  br label %for.inc, !dbg !4895

for.inc:                                          ; preds = %do.end
  %32 = load %struct.list_head*, %struct.list_head** %temp, align 8, !dbg !4882
  store %struct.list_head* %32, %struct.list_head** %pos, align 8, !dbg !4882
  %33 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4882
  %next17 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0, !dbg !4882
  %34 = load %struct.list_head*, %struct.list_head** %next17, align 8, !dbg !4882
  store %struct.list_head* %34, %struct.list_head** %temp, align 8, !dbg !4882
  br label %for.cond, !dbg !4882, !llvm.loop !4896

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4898
  br label %return, !dbg !4898

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !4899
  ret i32 %35, !dbg !4899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @card_suspend(%struct.pnp_dev* %dev, i32 %state.coerce) #0 !dbg !4900 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %link = alloca %struct.pnp_card_link*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0
  store i32 %state.coerce, i32* %coerce.dive, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.declare(metadata %struct.pm_message* %state, metadata !4903, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.declare(metadata %struct.pnp_card_link** %link, metadata !4905, metadata !DIExpression()), !dbg !4906
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4907
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 11, !dbg !4908
  %1 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link, align 8, !dbg !4908
  store %struct.pnp_card_link* %1, %struct.pnp_card_link** %link, align 8, !dbg !4906
  %2 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4909
  %pm_state = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %2, i32 0, i32 3, !dbg !4911
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %pm_state, i32 0, i32 0, !dbg !4912
  %3 = load i32, i32* %event, align 8, !dbg !4912
  %event1 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !4913
  %4 = load i32, i32* %event1, align 4, !dbg !4913
  %cmp = icmp eq i32 %3, %4, !dbg !4914
  br i1 %cmp, label %if.then, label %if.end, !dbg !4915

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

if.end:                                           ; preds = %entry
  %5 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4917
  %pm_state2 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %5, i32 0, i32 3, !dbg !4918
  %6 = bitcast %struct.pm_message* %pm_state2 to i8*, !dbg !4919
  %7 = bitcast %struct.pm_message* %state to i8*, !dbg !4919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 4 %7, i64 4, i1 false), !dbg !4919
  %8 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4920
  %driver = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %8, i32 0, i32 1, !dbg !4921
  %9 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %driver, align 8, !dbg !4921
  %suspend = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %9, i32 0, i32 6, !dbg !4922
  %10 = load i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*, i32)** %suspend, align 8, !dbg !4922
  %11 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4923
  %coerce.dive3 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !4920
  %12 = load i32, i32* %coerce.dive3, align 4, !dbg !4920
  %call = call i32 %10(%struct.pnp_card_link* %11, i32 %12) #8, !dbg !4920
  store i32 %call, i32* %retval, align 4, !dbg !4924
  br label %return, !dbg !4924

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4925
  ret i32 %13, !dbg !4925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @card_resume(%struct.pnp_dev* %dev) #0 !dbg !4926 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %link = alloca %struct.pnp_card_link*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.declare(metadata %struct.pnp_card_link** %link, metadata !4929, metadata !DIExpression()), !dbg !4930
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4931
  %card_link = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 11, !dbg !4932
  %1 = load %struct.pnp_card_link*, %struct.pnp_card_link** %card_link, align 8, !dbg !4932
  store %struct.pnp_card_link* %1, %struct.pnp_card_link** %link, align 8, !dbg !4930
  %2 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4933
  %pm_state = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %2, i32 0, i32 3, !dbg !4935
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %pm_state, i32 0, i32 0, !dbg !4936
  %3 = load i32, i32* %event, align 8, !dbg !4936
  %cmp = icmp eq i32 %3, 0, !dbg !4937
  br i1 %cmp, label %if.then, label %if.end, !dbg !4938

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

if.end:                                           ; preds = %entry
  %4 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4940
  %pm_state1 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %4, i32 0, i32 3, !dbg !4941
  %event2 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !4942
  store i32 0, i32* %event2, align 4, !dbg !4942
  %5 = bitcast %struct.pm_message* %pm_state1 to i8*, !dbg !4942
  %6 = bitcast %struct.pm_message* %.compoundliteral to i8*, !dbg !4942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 %6, i64 4, i1 false), !dbg !4942
  %7 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4943
  %driver = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %7, i32 0, i32 1, !dbg !4944
  %8 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %driver, align 8, !dbg !4944
  %resume = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %8, i32 0, i32 7, !dbg !4945
  %9 = load i32 (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*)** %resume, align 8, !dbg !4945
  %10 = load %struct.pnp_card_link*, %struct.pnp_card_link** %link, align 8, !dbg !4946
  %call = call i32 %9(%struct.pnp_card_link* %10) #8, !dbg !4943
  store i32 0, i32* %retval, align 4, !dbg !4947
  br label %return, !dbg !4947

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4948
  ret i32 %11, !dbg !4948
}

; Function Attrs: noredzone
declare dso_local i32 @pnp_register_driver(%struct.pnp_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_unregister_card_driver(%struct.pnp_card_driver* %drv) #0 !dbg !4949 {
entry:
  %drv.addr = alloca %struct.pnp_card_driver*, align 8
  store %struct.pnp_card_driver* %drv, %struct.pnp_card_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4954
  %0 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4955
  %global_list = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %0, i32 0, i32 0, !dbg !4956
  call void @list_del(%struct.list_head* %global_list) #8, !dbg !4957
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4958
  %1 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !4959
  %link = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %1, i32 0, i32 8, !dbg !4960
  call void @pnp_unregister_driver(%struct.pnp_driver* %link) #8, !dbg !4961
  ret void, !dbg !4962
}

; Function Attrs: noredzone
declare dso_local void @pnp_unregister_driver(%struct.pnp_driver*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4963 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4967, metadata !DIExpression()), !dbg !4972
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4974, metadata !DIExpression()), !dbg !4975
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load i64, i64* %size.addr, align 8, !dbg !4978
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4980
  br i1 %1, label %if.then, label %if.end447, !dbg !4981

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4982
  %tobool = icmp ne i64 %2, 0, !dbg !4982
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4985

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4986
  br label %return, !dbg !4986

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4987
  %cmp = icmp ult i64 %3, 4096, !dbg !4989
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4990

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub = sub i64 %4, 1, !dbg !4992
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4992
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4992

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub4 = sub i64 %6, 1, !dbg !4992
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4992
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4992

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub6 = sub i64 %8, 1, !dbg !4992
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4992
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4992

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4992

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub9 = sub i64 %9, 1, !dbg !4992
  %and = and i64 %sub9, -9223372036854775808, !dbg !4992
  %tobool10 = icmp ne i64 %and, 0, !dbg !4992
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4992

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4992

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub13 = sub i64 %10, 1, !dbg !4992
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4992
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4992
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4992

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4992

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub18 = sub i64 %11, 1, !dbg !4992
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4992
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4992
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4992

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4992

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub23 = sub i64 %12, 1, !dbg !4992
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4992
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4992
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4992

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4992

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub28 = sub i64 %13, 1, !dbg !4992
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4992
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4992
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4992

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4992

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub33 = sub i64 %14, 1, !dbg !4992
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4992
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4992
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4992

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4992

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub38 = sub i64 %15, 1, !dbg !4992
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4992
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4992
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4992

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4992

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub43 = sub i64 %16, 1, !dbg !4992
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4992
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4992
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4992

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4992

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub48 = sub i64 %17, 1, !dbg !4992
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4992
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4992
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4992

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4992

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub53 = sub i64 %18, 1, !dbg !4992
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4992
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4992
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4992

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4992

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub58 = sub i64 %19, 1, !dbg !4992
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4992
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4992
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4992

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4992

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub63 = sub i64 %20, 1, !dbg !4992
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4992
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4992
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4992

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4992

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub68 = sub i64 %21, 1, !dbg !4992
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4992
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4992
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4992

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4992

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub73 = sub i64 %22, 1, !dbg !4992
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4992
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4992
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4992

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4992

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub78 = sub i64 %23, 1, !dbg !4992
  %and79 = and i64 %sub78, 562949953421312, !dbg !4992
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4992
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4992

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4992

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub83 = sub i64 %24, 1, !dbg !4992
  %and84 = and i64 %sub83, 281474976710656, !dbg !4992
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4992
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4992

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4992

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub88 = sub i64 %25, 1, !dbg !4992
  %and89 = and i64 %sub88, 140737488355328, !dbg !4992
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4992
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4992

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4992

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub93 = sub i64 %26, 1, !dbg !4992
  %and94 = and i64 %sub93, 70368744177664, !dbg !4992
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4992
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4992

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4992

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub98 = sub i64 %27, 1, !dbg !4992
  %and99 = and i64 %sub98, 35184372088832, !dbg !4992
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4992
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4992

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4992

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub103 = sub i64 %28, 1, !dbg !4992
  %and104 = and i64 %sub103, 17592186044416, !dbg !4992
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4992
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4992

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4992

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub108 = sub i64 %29, 1, !dbg !4992
  %and109 = and i64 %sub108, 8796093022208, !dbg !4992
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4992
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4992

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4992

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub113 = sub i64 %30, 1, !dbg !4992
  %and114 = and i64 %sub113, 4398046511104, !dbg !4992
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4992
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4992

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4992

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub118 = sub i64 %31, 1, !dbg !4992
  %and119 = and i64 %sub118, 2199023255552, !dbg !4992
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4992
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4992

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4992

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub123 = sub i64 %32, 1, !dbg !4992
  %and124 = and i64 %sub123, 1099511627776, !dbg !4992
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4992
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4992

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4992

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub128 = sub i64 %33, 1, !dbg !4992
  %and129 = and i64 %sub128, 549755813888, !dbg !4992
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4992
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4992

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4992

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub133 = sub i64 %34, 1, !dbg !4992
  %and134 = and i64 %sub133, 274877906944, !dbg !4992
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4992
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4992

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4992

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub138 = sub i64 %35, 1, !dbg !4992
  %and139 = and i64 %sub138, 137438953472, !dbg !4992
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4992
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4992

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4992

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub143 = sub i64 %36, 1, !dbg !4992
  %and144 = and i64 %sub143, 68719476736, !dbg !4992
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4992
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4992

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4992

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub148 = sub i64 %37, 1, !dbg !4992
  %and149 = and i64 %sub148, 34359738368, !dbg !4992
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4992
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4992

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4992

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub153 = sub i64 %38, 1, !dbg !4992
  %and154 = and i64 %sub153, 17179869184, !dbg !4992
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4992
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4992

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4992

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub158 = sub i64 %39, 1, !dbg !4992
  %and159 = and i64 %sub158, 8589934592, !dbg !4992
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4992
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4992

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4992

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub163 = sub i64 %40, 1, !dbg !4992
  %and164 = and i64 %sub163, 4294967296, !dbg !4992
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4992
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4992

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4992

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub168 = sub i64 %41, 1, !dbg !4992
  %and169 = and i64 %sub168, 2147483648, !dbg !4992
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4992
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4992

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4992

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub173 = sub i64 %42, 1, !dbg !4992
  %and174 = and i64 %sub173, 1073741824, !dbg !4992
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4992
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4992

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4992

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub178 = sub i64 %43, 1, !dbg !4992
  %and179 = and i64 %sub178, 536870912, !dbg !4992
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4992
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4992

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4992

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub183 = sub i64 %44, 1, !dbg !4992
  %and184 = and i64 %sub183, 268435456, !dbg !4992
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4992
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4992

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4992

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub188 = sub i64 %45, 1, !dbg !4992
  %and189 = and i64 %sub188, 134217728, !dbg !4992
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4992
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4992

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4992

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub193 = sub i64 %46, 1, !dbg !4992
  %and194 = and i64 %sub193, 67108864, !dbg !4992
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4992
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4992

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4992

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub198 = sub i64 %47, 1, !dbg !4992
  %and199 = and i64 %sub198, 33554432, !dbg !4992
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4992
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4992

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4992

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub203 = sub i64 %48, 1, !dbg !4992
  %and204 = and i64 %sub203, 16777216, !dbg !4992
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4992
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4992

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4992

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub208 = sub i64 %49, 1, !dbg !4992
  %and209 = and i64 %sub208, 8388608, !dbg !4992
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4992
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4992

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4992

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub213 = sub i64 %50, 1, !dbg !4992
  %and214 = and i64 %sub213, 4194304, !dbg !4992
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4992
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4992

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4992

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub218 = sub i64 %51, 1, !dbg !4992
  %and219 = and i64 %sub218, 2097152, !dbg !4992
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4992
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4992

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4992

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub223 = sub i64 %52, 1, !dbg !4992
  %and224 = and i64 %sub223, 1048576, !dbg !4992
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4992
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4992

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4992

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub228 = sub i64 %53, 1, !dbg !4992
  %and229 = and i64 %sub228, 524288, !dbg !4992
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4992
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4992

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4992

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub233 = sub i64 %54, 1, !dbg !4992
  %and234 = and i64 %sub233, 262144, !dbg !4992
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4992
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4992

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4992

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub238 = sub i64 %55, 1, !dbg !4992
  %and239 = and i64 %sub238, 131072, !dbg !4992
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4992
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4992

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4992

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub243 = sub i64 %56, 1, !dbg !4992
  %and244 = and i64 %sub243, 65536, !dbg !4992
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4992
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4992

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4992

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub248 = sub i64 %57, 1, !dbg !4992
  %and249 = and i64 %sub248, 32768, !dbg !4992
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4992
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4992

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4992

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub253 = sub i64 %58, 1, !dbg !4992
  %and254 = and i64 %sub253, 16384, !dbg !4992
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4992
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4992

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4992

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub258 = sub i64 %59, 1, !dbg !4992
  %and259 = and i64 %sub258, 8192, !dbg !4992
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4992
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4992

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4992

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub263 = sub i64 %60, 1, !dbg !4992
  %and264 = and i64 %sub263, 4096, !dbg !4992
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4992
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4992

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4992

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub268 = sub i64 %61, 1, !dbg !4992
  %and269 = and i64 %sub268, 2048, !dbg !4992
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4992
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4992

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4992

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub273 = sub i64 %62, 1, !dbg !4992
  %and274 = and i64 %sub273, 1024, !dbg !4992
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4992
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4992

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4992

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub278 = sub i64 %63, 1, !dbg !4992
  %and279 = and i64 %sub278, 512, !dbg !4992
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4992
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4992

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4992

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub283 = sub i64 %64, 1, !dbg !4992
  %and284 = and i64 %sub283, 256, !dbg !4992
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4992
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4992

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4992

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub288 = sub i64 %65, 1, !dbg !4992
  %and289 = and i64 %sub288, 128, !dbg !4992
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4992
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4992

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4992

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub293 = sub i64 %66, 1, !dbg !4992
  %and294 = and i64 %sub293, 64, !dbg !4992
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4992
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4992

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4992

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub298 = sub i64 %67, 1, !dbg !4992
  %and299 = and i64 %sub298, 32, !dbg !4992
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4992
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4992

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4992

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub303 = sub i64 %68, 1, !dbg !4992
  %and304 = and i64 %sub303, 16, !dbg !4992
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4992
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4992

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4992

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub308 = sub i64 %69, 1, !dbg !4992
  %and309 = and i64 %sub308, 8, !dbg !4992
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4992
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4992

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4992

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub313 = sub i64 %70, 1, !dbg !4992
  %and314 = and i64 %sub313, 4, !dbg !4992
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4992
  %71 = zext i1 %tobool315 to i64, !dbg !4992
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4992
  br label %cond.end, !dbg !4992

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4992
  br label %cond.end317, !dbg !4992

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4992
  br label %cond.end319, !dbg !4992

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4992
  br label %cond.end321, !dbg !4992

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4992
  br label %cond.end323, !dbg !4992

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4992
  br label %cond.end325, !dbg !4992

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4992
  br label %cond.end327, !dbg !4992

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4992
  br label %cond.end329, !dbg !4992

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4992
  br label %cond.end331, !dbg !4992

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4992
  br label %cond.end333, !dbg !4992

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4992
  br label %cond.end335, !dbg !4992

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4992
  br label %cond.end337, !dbg !4992

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4992
  br label %cond.end339, !dbg !4992

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4992
  br label %cond.end341, !dbg !4992

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4992
  br label %cond.end343, !dbg !4992

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4992
  br label %cond.end345, !dbg !4992

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4992
  br label %cond.end347, !dbg !4992

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4992
  br label %cond.end349, !dbg !4992

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4992
  br label %cond.end351, !dbg !4992

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4992
  br label %cond.end353, !dbg !4992

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4992
  br label %cond.end355, !dbg !4992

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4992
  br label %cond.end357, !dbg !4992

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4992
  br label %cond.end359, !dbg !4992

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4992
  br label %cond.end361, !dbg !4992

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4992
  br label %cond.end363, !dbg !4992

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4992
  br label %cond.end365, !dbg !4992

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4992
  br label %cond.end367, !dbg !4992

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4992
  br label %cond.end369, !dbg !4992

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4992
  br label %cond.end371, !dbg !4992

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4992
  br label %cond.end373, !dbg !4992

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4992
  br label %cond.end375, !dbg !4992

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4992
  br label %cond.end377, !dbg !4992

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4992
  br label %cond.end379, !dbg !4992

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4992
  br label %cond.end381, !dbg !4992

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4992
  br label %cond.end383, !dbg !4992

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4992
  br label %cond.end385, !dbg !4992

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4992
  br label %cond.end387, !dbg !4992

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4992
  br label %cond.end389, !dbg !4992

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4992
  br label %cond.end391, !dbg !4992

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4992
  br label %cond.end393, !dbg !4992

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4992
  br label %cond.end395, !dbg !4992

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4992
  br label %cond.end397, !dbg !4992

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4992
  br label %cond.end399, !dbg !4992

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4992
  br label %cond.end401, !dbg !4992

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4992
  br label %cond.end403, !dbg !4992

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4992
  br label %cond.end405, !dbg !4992

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4992
  br label %cond.end407, !dbg !4992

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4992
  br label %cond.end409, !dbg !4992

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4992
  br label %cond.end411, !dbg !4992

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4992
  br label %cond.end413, !dbg !4992

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4992
  br label %cond.end415, !dbg !4992

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4992
  br label %cond.end417, !dbg !4992

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4992
  br label %cond.end419, !dbg !4992

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4992
  br label %cond.end421, !dbg !4992

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4992
  br label %cond.end423, !dbg !4992

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4992
  br label %cond.end425, !dbg !4992

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4992
  br label %cond.end427, !dbg !4992

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4992
  br label %cond.end429, !dbg !4992

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4992
  br label %cond.end431, !dbg !4992

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4992
  br label %cond.end433, !dbg !4992

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4992
  br label %cond.end435, !dbg !4992

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4992
  br label %cond.end437, !dbg !4992

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4992
  br label %cond.end440, !dbg !4992

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4992

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4992
  br label %cond.end444, !dbg !4992

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4992
  %sub443 = sub i64 %72, 1, !dbg !4992
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4992
  br label %cond.end444, !dbg !4992

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4992
  %sub446 = sub i32 %cond445, 12, !dbg !4993
  %add = add i32 %sub446, 1, !dbg !4994
  store i32 %add, i32* %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4996
  %dec = add i64 %73, -1, !dbg !4996
  store i64 %dec, i64* %size.addr, align 8, !dbg !4996
  %74 = load i64, i64* %size.addr, align 8, !dbg !4997
  %shr = lshr i64 %74, 12, !dbg !4997
  store i64 %shr, i64* %size.addr, align 8, !dbg !4997
  %75 = load i64, i64* %size.addr, align 8, !dbg !4998
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4975
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4999
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5000
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4999, !srcloc !5001
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4999
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5002
  %add.i = add i32 %79, 1, !dbg !5003
  store i32 %add.i, i32* %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5005
  ret i32 %80, !dbg !5005
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5006 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4967, metadata !DIExpression()), !dbg !5010
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4974, metadata !DIExpression()), !dbg !5012
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load i64, i64* %n.addr, align 8, !dbg !5015
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5012
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5016
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5017
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5016, !srcloc !5001
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5016
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5018
  %add.i = add i32 %4, 1, !dbg !5019
  %sub = sub i32 %add.i, 1, !dbg !5020
  ret i32 %sub, !dbg !5021
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5022 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5026, metadata !DIExpression()), !dbg !5027
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5034
  ret i8* %0, !dbg !5035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__tolower(i8 zeroext %c) #0 !dbg !5036 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load i8, i8* %c.addr, align 1, !dbg !5042
  %conv = zext i8 %0 to i32, !dbg !5042
  %idxprom = sext i32 %conv to i64, !dbg !5042
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !5042
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5042
  %conv1 = zext i8 %1 to i32, !dbg !5042
  %and = and i32 %conv1, 1, !dbg !5042
  %cmp = icmp ne i32 %and, 0, !dbg !5042
  br i1 %cmp, label %if.then, label %if.end, !dbg !5044

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !5045
  %conv3 = zext i8 %2 to i32, !dbg !5045
  %sub = sub i32 %conv3, -32, !dbg !5045
  %conv4 = trunc i32 %sub to i8, !dbg !5045
  store i8 %conv4, i8* %c.addr, align 1, !dbg !5045
  br label %if.end, !dbg !5046

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !5047
  ret i8 %3, !dbg !5048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_free_card_ids(%struct.pnp_card* %card) #0 !dbg !5049 {
entry:
  %card.addr = alloca %struct.pnp_card*, align 8
  %id = alloca %struct.pnp_id*, align 8
  %next = alloca %struct.pnp_id*, align 8
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %id, metadata !5052, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %next, metadata !5054, metadata !DIExpression()), !dbg !5055
  %0 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !5056
  %id1 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %0, i32 0, i32 6, !dbg !5057
  %1 = load %struct.pnp_id*, %struct.pnp_id** %id1, align 8, !dbg !5057
  store %struct.pnp_id* %1, %struct.pnp_id** %id, align 8, !dbg !5058
  br label %while.cond, !dbg !5059

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !5060
  %tobool = icmp ne %struct.pnp_id* %2, null, !dbg !5059
  br i1 %tobool, label %while.body, label %while.end, !dbg !5059

while.body:                                       ; preds = %while.cond
  %3 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !5061
  %next2 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %3, i32 0, i32 1, !dbg !5063
  %4 = load %struct.pnp_id*, %struct.pnp_id** %next2, align 8, !dbg !5063
  store %struct.pnp_id* %4, %struct.pnp_id** %next, align 8, !dbg !5064
  %5 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !5065
  %6 = bitcast %struct.pnp_id* %5 to i8*, !dbg !5065
  call void @kfree(i8* %6) #8, !dbg !5066
  %7 = load %struct.pnp_id*, %struct.pnp_id** %next, align 8, !dbg !5067
  store %struct.pnp_id* %7, %struct.pnp_id** %id, align 8, !dbg !5068
  br label %while.cond, !dbg !5059, !llvm.loop !5069

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5071
}

; Function Attrs: noredzone
declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @device_remove_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_show_card_name(%struct.device* %dmdev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5072 {
entry:
  %dmdev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %card = alloca %struct.pnp_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_card*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !5073, metadata !DIExpression()), !dbg !5074
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.declare(metadata i8** %str, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5081
  store i8* %0, i8** %str, align 8, !dbg !5080
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card, metadata !5082, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5084, metadata !DIExpression()), !dbg !5086
  %1 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !5086
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5086
  store i8* %2, i8** %__mptr, align 8, !dbg !5086
  br label %do.body, !dbg !5086

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5087

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5086
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5086
  %4 = bitcast i8* %add.ptr to %struct.pnp_card*, !dbg !5086
  store %struct.pnp_card* %4, %struct.pnp_card** %tmp, align 8, !dbg !5087
  %5 = load %struct.pnp_card*, %struct.pnp_card** %tmp, align 8, !dbg !5086
  store %struct.pnp_card* %5, %struct.pnp_card** %card, align 8, !dbg !5083
  %6 = load i8*, i8** %str, align 8, !dbg !5089
  %7 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !5090
  %name = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %7, i32 0, i32 7, !dbg !5091
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0, !dbg !5090
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay) #8, !dbg !5092
  %8 = load i8*, i8** %str, align 8, !dbg !5093
  %idx.ext = sext i32 %call to i64, !dbg !5093
  %add.ptr1 = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5093
  store i8* %add.ptr1, i8** %str, align 8, !dbg !5093
  %9 = load i8*, i8** %str, align 8, !dbg !5094
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !5095
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64, !dbg !5096
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64, !dbg !5096
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5096
  ret i64 %sub.ptr.sub, !dbg !5097
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_show_card_ids(%struct.device* %dmdev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5098 {
entry:
  %dmdev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %card = alloca %struct.pnp_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_card*, align 8
  %pos = alloca %struct.pnp_id*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.declare(metadata i8** %str, metadata !5105, metadata !DIExpression()), !dbg !5106
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5107
  store i8* %0, i8** %str, align 8, !dbg !5106
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5110, metadata !DIExpression()), !dbg !5112
  %1 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !5112
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5112
  store i8* %2, i8** %__mptr, align 8, !dbg !5112
  br label %do.body, !dbg !5112

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5113

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5112
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5112
  %4 = bitcast i8* %add.ptr to %struct.pnp_card*, !dbg !5112
  store %struct.pnp_card* %4, %struct.pnp_card** %tmp, align 8, !dbg !5113
  %5 = load %struct.pnp_card*, %struct.pnp_card** %tmp, align 8, !dbg !5112
  store %struct.pnp_card* %5, %struct.pnp_card** %card, align 8, !dbg !5109
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %pos, metadata !5115, metadata !DIExpression()), !dbg !5116
  %6 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !5117
  %id = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %6, i32 0, i32 6, !dbg !5118
  %7 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !5118
  store %struct.pnp_id* %7, %struct.pnp_id** %pos, align 8, !dbg !5116
  br label %while.cond, !dbg !5119

while.cond:                                       ; preds = %while.body, %do.end
  %8 = load %struct.pnp_id*, %struct.pnp_id** %pos, align 8, !dbg !5120
  %tobool = icmp ne %struct.pnp_id* %8, null, !dbg !5119
  br i1 %tobool, label %while.body, label %while.end, !dbg !5119

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %str, align 8, !dbg !5121
  %10 = load %struct.pnp_id*, %struct.pnp_id** %pos, align 8, !dbg !5123
  %id1 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %10, i32 0, i32 0, !dbg !5124
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %id1, i64 0, i64 0, !dbg !5123
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay) #8, !dbg !5125
  %11 = load i8*, i8** %str, align 8, !dbg !5126
  %idx.ext = sext i32 %call to i64, !dbg !5126
  %add.ptr2 = getelementptr i8, i8* %11, i64 %idx.ext, !dbg !5126
  store i8* %add.ptr2, i8** %str, align 8, !dbg !5126
  %12 = load %struct.pnp_id*, %struct.pnp_id** %pos, align 8, !dbg !5127
  %next = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %12, i32 0, i32 1, !dbg !5128
  %13 = load %struct.pnp_id*, %struct.pnp_id** %next, align 8, !dbg !5128
  store %struct.pnp_id* %13, %struct.pnp_id** %pos, align 8, !dbg !5129
  br label %while.cond, !dbg !5119, !llvm.loop !5130

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %str, align 8, !dbg !5132
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !5133
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64, !dbg !5134
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64, !dbg !5134
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5134
  ret i64 %sub.ptr.sub, !dbg !5135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5136 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5145
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5147
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5148
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5149
  br i1 %call, label %if.end, label %if.then, !dbg !5150

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5151

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5152
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5153
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5154
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5155
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5156
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5157
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5158
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5159
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5160
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5161
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5162
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5163
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5165

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5167

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5165

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5169
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5169
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5169
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5169
  br label %do.end7, !dbg !5169

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5165

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5172 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  ret i1 true, !dbg !5181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pnp_card_device_id* @match_card(%struct.pnp_card_driver* %drv, %struct.pnp_card* %card) #0 !dbg !5182 {
entry:
  %retval = alloca %struct.pnp_card_device_id*, align 8
  %drv.addr = alloca %struct.pnp_card_driver*, align 8
  %card.addr = alloca %struct.pnp_card*, align 8
  %drv_id = alloca %struct.pnp_card_device_id*, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp27 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card_driver* %drv, %struct.pnp_card_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card_driver** %drv.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  store %struct.pnp_card* %card, %struct.pnp_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_card** %card.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.declare(metadata %struct.pnp_card_device_id** %drv_id, metadata !5189, metadata !DIExpression()), !dbg !5190
  %0 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %drv.addr, align 8, !dbg !5191
  %id_table = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %0, i32 0, i32 2, !dbg !5192
  %1 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %id_table, align 8, !dbg !5192
  store %struct.pnp_card_device_id* %1, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5190
  br label %while.cond, !dbg !5193

while.cond:                                       ; preds = %if.end33, %entry
  %2 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5194
  %id = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %2, i32 0, i32 0, !dbg !5195
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %id, i64 0, i64 0, !dbg !5196
  %3 = load i8, i8* %arraydecay, align 8, !dbg !5196
  %tobool = icmp ne i8 %3, 0, !dbg !5193
  br i1 %tobool, label %while.body, label %while.end, !dbg !5193

while.body:                                       ; preds = %while.cond
  %4 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !5197
  %id1 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %4, i32 0, i32 6, !dbg !5200
  %5 = load %struct.pnp_id*, %struct.pnp_id** %id1, align 8, !dbg !5200
  %6 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5201
  %id2 = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %6, i32 0, i32 0, !dbg !5202
  %arraydecay3 = getelementptr inbounds [8 x i8], [8 x i8]* %id2, i64 0, i64 0, !dbg !5201
  %call = call i32 @compare_pnp_id(%struct.pnp_id* %5, i8* %arraydecay3) #8, !dbg !5203
  %tobool4 = icmp ne i32 %call, 0, !dbg !5203
  br i1 %tobool4, label %if.then, label %if.end33, !dbg !5204

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5205, metadata !DIExpression()), !dbg !5207
  store i32 0, i32* %i, align 4, !dbg !5207
  br label %for.cond, !dbg !5208

for.cond:                                         ; preds = %if.end31, %if.then
  call void @llvm.dbg.declare(metadata i32* %found, metadata !5209, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !5214, metadata !DIExpression()), !dbg !5215
  %7 = load i32, i32* %i, align 4, !dbg !5216
  %cmp = icmp eq i32 %7, 8, !dbg !5218
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !5219

lor.lhs.false:                                    ; preds = %for.cond
  %8 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5220
  %devs = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %8, i32 0, i32 2, !dbg !5221
  %9 = load i32, i32* %i, align 4, !dbg !5222
  %idxprom = sext i32 %9 to i64, !dbg !5220
  %arrayidx = getelementptr [8 x %struct.anon.65], [8 x %struct.anon.65]* %devs, i64 0, i64 %idxprom, !dbg !5220
  %id5 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx, i32 0, i32 0, !dbg !5223
  %arraydecay6 = getelementptr inbounds [8 x i8], [8 x i8]* %id5, i64 0, i64 0, !dbg !5224
  %10 = load i8, i8* %arraydecay6, align 8, !dbg !5224
  %tobool7 = icmp ne i8 %10, 0, !dbg !5224
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !5225

if.then8:                                         ; preds = %lor.lhs.false, %for.cond
  %11 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5226
  store %struct.pnp_card_device_id* %11, %struct.pnp_card_device_id** %retval, align 8, !dbg !5227
  br label %return, !dbg !5227

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %found, align 4, !dbg !5228
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5229, metadata !DIExpression()), !dbg !5232
  %12 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !5232
  %devices = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %12, i32 0, i32 4, !dbg !5232
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !5232
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5232
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !5232
  store i8* %14, i8** %__mptr, align 8, !dbg !5232
  br label %do.body, !dbg !5232

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5233

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %__mptr, align 8, !dbg !5232
  %add.ptr = getelementptr i8, i8* %15, i64 -744, !dbg !5232
  %16 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !5232
  store %struct.pnp_dev* %16, %struct.pnp_dev** %tmp, align 8, !dbg !5233
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !5232
  store %struct.pnp_dev* %17, %struct.pnp_dev** %dev, align 8, !dbg !5235
  br label %for.cond9, !dbg !5235

for.cond9:                                        ; preds = %do.end26, %do.end
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5236
  %card_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 6, !dbg !5236
  %19 = load %struct.pnp_card*, %struct.pnp_card** %card.addr, align 8, !dbg !5236
  %devices10 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %19, i32 0, i32 4, !dbg !5236
  %cmp11 = icmp eq %struct.list_head* %card_list, %devices10, !dbg !5236
  %lnot = xor i1 %cmp11, true, !dbg !5236
  br i1 %lnot, label %for.body, label %for.end, !dbg !5235

for.body:                                         ; preds = %for.cond9
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5238
  %id12 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %20, i32 0, i32 12, !dbg !5241
  %21 = load %struct.pnp_id*, %struct.pnp_id** %id12, align 8, !dbg !5241
  %22 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5242
  %devs13 = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %22, i32 0, i32 2, !dbg !5243
  %23 = load i32, i32* %i, align 4, !dbg !5244
  %idxprom14 = sext i32 %23 to i64, !dbg !5242
  %arrayidx15 = getelementptr [8 x %struct.anon.65], [8 x %struct.anon.65]* %devs13, i64 0, i64 %idxprom14, !dbg !5242
  %id16 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx15, i32 0, i32 0, !dbg !5245
  %arraydecay17 = getelementptr inbounds [8 x i8], [8 x i8]* %id16, i64 0, i64 0, !dbg !5242
  %call18 = call i32 @compare_pnp_id(%struct.pnp_id* %21, i8* %arraydecay17) #8, !dbg !5246
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5246
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5247

if.then20:                                        ; preds = %for.body
  store i32 1, i32* %found, align 4, !dbg !5248
  br label %for.end, !dbg !5250

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !5251

for.inc:                                          ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !5252, metadata !DIExpression()), !dbg !5254
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5254
  %card_list23 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 6, !dbg !5254
  %next24 = getelementptr inbounds %struct.list_head, %struct.list_head* %card_list23, i32 0, i32 0, !dbg !5254
  %25 = load %struct.list_head*, %struct.list_head** %next24, align 8, !dbg !5254
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !5254
  store i8* %26, i8** %__mptr22, align 8, !dbg !5254
  br label %do.body25, !dbg !5254

do.body25:                                        ; preds = %for.inc
  br label %do.end26, !dbg !5255

do.end26:                                         ; preds = %do.body25
  %27 = load i8*, i8** %__mptr22, align 8, !dbg !5254
  %add.ptr28 = getelementptr i8, i8* %27, i64 -744, !dbg !5254
  %28 = bitcast i8* %add.ptr28 to %struct.pnp_dev*, !dbg !5254
  store %struct.pnp_dev* %28, %struct.pnp_dev** %tmp27, align 8, !dbg !5255
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp27, align 8, !dbg !5254
  store %struct.pnp_dev* %29, %struct.pnp_dev** %dev, align 8, !dbg !5236
  br label %for.cond9, !dbg !5236, !llvm.loop !5257

for.end:                                          ; preds = %if.then20, %for.cond9
  %30 = load i32, i32* %found, align 4, !dbg !5259
  %tobool29 = icmp ne i32 %30, 0, !dbg !5259
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5261

if.then30:                                        ; preds = %for.end
  br label %for.end32, !dbg !5262

if.end31:                                         ; preds = %for.end
  %31 = load i32, i32* %i, align 4, !dbg !5263
  %inc = add i32 %31, 1, !dbg !5263
  store i32 %inc, i32* %i, align 4, !dbg !5263
  br label %for.cond, !dbg !5264, !llvm.loop !5265

for.end32:                                        ; preds = %if.then30
  br label %if.end33, !dbg !5268

if.end33:                                         ; preds = %for.end32, %while.body
  %32 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5269
  %incdec.ptr = getelementptr %struct.pnp_card_device_id, %struct.pnp_card_device_id* %32, i32 1, !dbg !5269
  store %struct.pnp_card_device_id* %incdec.ptr, %struct.pnp_card_device_id** %drv_id, align 8, !dbg !5269
  br label %while.cond, !dbg !5193, !llvm.loop !5270

while.end:                                        ; preds = %while.cond
  store %struct.pnp_card_device_id* null, %struct.pnp_card_device_id** %retval, align 8, !dbg !5272
  br label %return, !dbg !5272

return:                                           ; preds = %while.end, %if.then8
  %33 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %retval, align 8, !dbg !5273
  ret %struct.pnp_card_device_id* %33, !dbg !5273
}

; Function Attrs: noredzone
declare dso_local i8* @pnp_alloc(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5274 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5277
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5279
  br i1 %call, label %if.end, label %if.then, !dbg !5280

if.then:                                          ; preds = %entry
  br label %return, !dbg !5281

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5282
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5283
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5283
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5284
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5285
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5285
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5286
  br label %return, !dbg !5287

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5288 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  ret i1 true, !dbg !5293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5294 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5299
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5300
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5301
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5302
  br label %do.body, !dbg !5303

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5304

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5306

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5304

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5308
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5308
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5308
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5308
  br label %do.end5, !dbg !5308

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5304

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5310
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3890, !3891, !3892, !3893}
!llvm.ident = !{!3894}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_cards", scope: !2, file: !3, line: 16, type: !125, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !3871, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/card.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 305, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !{!106, !108, !109, !3822, !3764, !164, !333, !3869}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 148, baseType: !7)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !111, line: 243, size: 7488, elements: !112)
!111 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3763, !3790, !3816, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !110, file: !111, line: 244, baseType: !114, size: 5568)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !115)
!115 = !{!116, !3284, !3286, !3289, !3290, !3341, !3432, !3433, !3434, !3435, !3436, !3445, !3550, !3563, !3566, !3567, !3571, !3573, !3574, !3575, !3579, !3585, !3586, !3589, !3593, !3683, !3684, !3685, !3686, !3687, !3719, !3720, !3721, !3724, !3727, !3728, !3729, !3730}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !114, file: !73, line: 462, baseType: !117, size: 512)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !118, line: 64, size: 512, elements: !119)
!118 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!119 = !{!120, !124, !130, !132, !193, !3135, !3274, !3279, !3280, !3281, !3282, !3283}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 65, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !117, file: !118, line: 66, baseType: !125, size: 128, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 178, size: 128, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !107, line: 179, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !107, line: 179, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !118, line: 67, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !117, file: !118, line: 68, baseType: !133, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !118, line: 192, size: 704, elements: !135)
!135 = !{!136, !137, !153, !154}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !134, file: !118, line: 193, baseType: !125, size: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !134, file: !118, line: 194, baseType: !138, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !139, line: 83, baseType: !140)
!139 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !139, line: 71, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !139, line: 72, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !139, line: 72, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !143, file: !139, line: 73, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !139, line: 20, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !146, file: !139, line: 21, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !150, line: 25, baseType: !151)
!150 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 25, elements: !152)
!152 = !{}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !134, file: !118, line: 195, baseType: !117, size: 512, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !134, file: !118, line: 196, baseType: !155, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !118, line: 156, size: 192, elements: !158)
!158 = !{!159, !165, !170}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !157, file: !118, line: 157, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !133, !131}
!164 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !118, line: 158, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!121, !133, !131}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !157, file: !118, line: 159, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!164, !133, !131, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !118, line: 148, size: 20736, elements: !177)
!177 = !{!178, !183, !187, !188, !192}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !176, file: !118, line: 149, baseType: !179, size: 192)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 192, elements: !181)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!181 = !{!182}
!182 = !DISubrange(count: 3)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !176, file: !118, line: 150, baseType: !184, size: 4096, offset: 192)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 4096, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !176, file: !118, line: 151, baseType: !164, size: 32, offset: 4288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !176, file: !118, line: 152, baseType: !189, size: 16384, offset: 4320)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16384, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2048)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !176, file: !118, line: 153, baseType: !164, size: 32, offset: 20704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !117, file: !118, line: 69, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !118, line: 138, size: 448, elements: !196)
!196 = !{!197, !201, !231, !233, !3097, !3125, !3129}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !195, file: !118, line: 139, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !131}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !195, file: !118, line: 140, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !205, line: 230, size: 128, elements: !206)
!205 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !223}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !204, file: !205, line: 231, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !131, !216, !180}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 60, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !213, line: 73, baseType: !214)
!213 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !213, line: 15, baseType: !215)
!215 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !205, line: 30, size: 128, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !205, line: 31, baseType: !121, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !217, file: !205, line: 32, baseType: !221, size: 16, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 19, baseType: !222)
!222 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !204, file: !205, line: 232, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!211, !131, !216, !121, !227}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 55, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !213, line: 72, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !213, line: 16, baseType: !230)
!230 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !195, file: !118, line: 141, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !195, file: !118, line: 142, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !205, line: 84, size: 320, elements: !238)
!238 = !{!239, !240, !244, !3094, !3095}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !237, file: !205, line: 85, baseType: !121, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !237, file: !205, line: 86, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!221, !131, !216, !164}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !237, file: !205, line: 88, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!221, !131, !248, !164}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !205, line: 168, size: 448, elements: !250)
!250 = !{!251, !252, !253, !254, !3089, !3090}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !249, file: !205, line: 169, baseType: !217, size: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !249, file: !205, line: 170, baseType: !227, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !249, file: !205, line: 171, baseType: !108, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !249, file: !205, line: 172, baseType: !255, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!211, !258, !131, !248, !180, !437, !227}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !260)
!260 = !{!261, !279, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3072, !3073, !3082, !3083, !3084, !3085, !3086, !3087, !3088}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !259, file: !44, line: 920, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !44, line: 917, size: 128, elements: !263)
!263 = !{!264, !270}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !262, file: !44, line: 918, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !266, line: 58, size: 64, elements: !267)
!266 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !266, line: 59, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !262, file: !44, line: 919, baseType: !271, size: 128, align: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 216, size: 128, align: 64, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !107, line: 217, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !271, file: !107, line: 218, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !274}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !259, file: !44, line: 921, baseType: !280, size: 128, offset: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !281, line: 8, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !280, file: !281, line: 9, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !286, line: 18, flags: DIFlagFwdDecl)
!286 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !280, file: !281, line: 10, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !286, line: 89, size: 1536, elements: !290)
!290 = !{!291, !292, !302, !310, !311, !334, !3022, !3024, !3036, !3037, !3038, !3039, !3040, !3046, !3047, !3048}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !289, file: !286, line: 91, baseType: !7, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !289, file: !286, line: 92, baseType: !293, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !294, line: 277, baseType: !295)
!294 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !294, line: 277, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !295, file: !294, line: 277, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !294, line: 70, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !294, line: 65, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !299, file: !294, line: 66, baseType: !7, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !289, file: !286, line: 93, baseType: !303, size: 128, offset: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !304, line: 38, size: 128, elements: !305)
!304 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !304, line: 39, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !303, file: !304, line: 39, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !289, file: !286, line: 94, baseType: !288, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !289, file: !286, line: 95, baseType: !312, size: 128, offset: 256)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !286, line: 47, size: 128, elements: !313)
!313 = !{!314, !330}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !286, line: 48, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !286, line: 48, size: 64, elements: !316)
!316 = !{!317, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !286, line: 49, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !286, line: 49, size: 64, elements: !319)
!319 = !{!320, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !318, file: !286, line: 50, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !322, line: 21, baseType: !323)
!322 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !324, line: 27, baseType: !7)
!324 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !318, file: !286, line: 50, baseType: !321, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !315, file: !286, line: 52, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !322, line: 23, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !324, line: 31, baseType: !329)
!329 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !286, line: 54, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !289, file: !286, line: 96, baseType: !335, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !337)
!337 = !{!338, !339, !340, !348, !355, !356, !504, !2733, !2734, !2735, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2998, !3006, !3007, !3008, !3018, !3019, !3020, !3021}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !336, file: !44, line: 611, baseType: !221, size: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !336, file: !44, line: 612, baseType: !222, size: 16, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !336, file: !44, line: 613, baseType: !341, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !342, line: 23, baseType: !343)
!342 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 21, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !342, line: 22, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 32, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !213, line: 49, baseType: !7)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !336, file: !44, line: 614, baseType: !349, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !342, line: 28, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 26, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !350, file: !342, line: 27, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 33, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !213, line: 50, baseType: !7)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !336, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !336, file: !44, line: 622, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !360)
!360 = !{!361, !365, !378, !382, !388, !392, !398, !402, !406, !410, !414, !415, !421, !425, !451, !480, !484, !490, !495, !499, !500}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !359, file: !44, line: 1865, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!288, !335, !288, !7}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !359, file: !44, line: 1866, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!121, !288, !335, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !371, line: 10, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !370, file: !371, line: 11, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !108}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !370, file: !371, line: 12, baseType: !108, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !359, file: !44, line: 1867, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!164, !335, !164}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !359, file: !44, line: 1868, baseType: !383, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!386, !335, !164}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !359, file: !44, line: 1870, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!164, !288, !180, !164}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !359, file: !44, line: 1872, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!164, !335, !288, !221, !396}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 30, baseType: !397)
!397 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !359, file: !44, line: 1873, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!164, !288, !335, !288}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !359, file: !44, line: 1874, baseType: !403, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!164, !335, !288}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !359, file: !44, line: 1875, baseType: !407, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!164, !335, !288, !121}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !359, file: !44, line: 1876, baseType: !411, size: 64, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!164, !335, !288, !221}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !359, file: !44, line: 1877, baseType: !403, size: 64, offset: 640)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !359, file: !44, line: 1878, baseType: !416, size: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!164, !335, !288, !221, !419}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 16, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 13, baseType: !321)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !359, file: !44, line: 1879, baseType: !422, size: 64, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!164, !335, !288, !335, !288, !7}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !359, file: !44, line: 1881, baseType: !426, size: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!164, !288, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !440, !448, !449, !450}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !430, file: !44, line: 220, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !430, file: !44, line: 221, baseType: !221, size: 16, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !430, file: !44, line: 222, baseType: !341, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !430, file: !44, line: 223, baseType: !349, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !430, file: !44, line: 224, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 46, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !213, line: 88, baseType: !439)
!439 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !430, file: !44, line: 225, baseType: !441, size: 128, offset: 192)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !442, line: 13, size: 128, elements: !443)
!442 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!443 = !{!444, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !441, file: !442, line: 14, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !442, line: 8, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !324, line: 30, baseType: !439)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !441, file: !442, line: 15, baseType: !215, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !430, file: !44, line: 226, baseType: !441, size: 128, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !430, file: !44, line: 227, baseType: !441, size: 128, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !430, file: !44, line: 234, baseType: !258, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !359, file: !44, line: 1882, baseType: !452, size: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!164, !455, !457, !321, !7}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !459, line: 22, size: 1152, elements: !460)
!459 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!460 = !{!461, !462, !463, !464, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !458, file: !459, line: 23, baseType: !321, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !458, file: !459, line: 24, baseType: !221, size: 16, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !458, file: !459, line: 25, baseType: !7, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !458, file: !459, line: 26, baseType: !465, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 104, baseType: !321)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !458, file: !459, line: 27, baseType: !327, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !458, file: !459, line: 28, baseType: !327, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !458, file: !459, line: 37, baseType: !327, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !458, file: !459, line: 38, baseType: !419, size: 32, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !458, file: !459, line: 39, baseType: !419, size: 32, offset: 352)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !458, file: !459, line: 40, baseType: !341, size: 32, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !458, file: !459, line: 41, baseType: !349, size: 32, offset: 416)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !458, file: !459, line: 42, baseType: !437, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !458, file: !459, line: 43, baseType: !441, size: 128, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !458, file: !459, line: 44, baseType: !441, size: 128, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !458, file: !459, line: 45, baseType: !441, size: 128, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !458, file: !459, line: 46, baseType: !441, size: 128, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !458, file: !459, line: 47, baseType: !327, size: 64, offset: 1024)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !458, file: !459, line: 48, baseType: !327, size: 64, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !359, file: !44, line: 1883, baseType: !481, size: 64, offset: 960)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!211, !288, !180, !227}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !359, file: !44, line: 1884, baseType: !485, size: 64, offset: 1024)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!164, !335, !488, !327, !327}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !359, file: !44, line: 1886, baseType: !491, size: 64, offset: 1088)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!164, !335, !494, !164}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !359, file: !44, line: 1887, baseType: !496, size: 64, offset: 1152)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!164, !335, !288, !258, !7, !221}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !359, file: !44, line: 1890, baseType: !411, size: 64, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !359, file: !44, line: 1891, baseType: !501, size: 64, offset: 1280)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!164, !335, !386, !164}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !336, file: !44, line: 623, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !563, !2340, !2422, !2505, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2521, !2525, !2526, !2529, !2530, !2533, !2534, !2535, !2576, !2603, !2604, !2605, !2606, !2607, !2608, !2611, !2613, !2620, !2621, !2623, !2624, !2625, !2684, !2685, !2700, !2701, !2702, !2703, !2704, !2707, !2708, !2709, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !506, file: !44, line: 1417, baseType: !125, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !506, file: !44, line: 1418, baseType: !419, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !506, file: !44, line: 1419, baseType: !333, size: 8, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !506, file: !44, line: 1420, baseType: !230, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !506, file: !44, line: 1421, baseType: !437, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !506, file: !44, line: 1422, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !516)
!516 = !{!517, !518, !519, !526, !530, !534, !538, !542, !543, !553, !556, !557, !558, !560, !561, !562}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !44, line: 2229, baseType: !121, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !515, file: !44, line: 2230, baseType: !164, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !515, file: !44, line: 2238, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!164, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !525, line: 28, flags: DIFlagFwdDecl)
!525 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !515, file: !44, line: 2239, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !515, file: !44, line: 2240, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!288, !514, !164, !121, !108}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !515, file: !44, line: 2242, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !505}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !515, file: !44, line: 2243, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !541, line: 76, flags: DIFlagFwdDecl)
!541 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !44, line: 2244, baseType: !514, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !515, file: !44, line: 2245, baseType: !544, size: 64, offset: 512)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !107, line: 182, size: 64, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !544, file: !107, line: 183, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 186, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !107, line: 187, baseType: !547, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !548, file: !107, line: 187, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !515, file: !44, line: 2247, baseType: !554, offset: 576)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !555, line: 187, elements: !152)
!555 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !515, file: !44, line: 2248, baseType: !554, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !515, file: !44, line: 2249, baseType: !554, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !515, file: !44, line: 2250, baseType: !559, offset: 576)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, elements: !181)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !515, file: !44, line: 2252, baseType: !554, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !515, file: !44, line: 2253, baseType: !554, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !515, file: !44, line: 2254, baseType: !554, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !506, file: !44, line: 1423, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !567)
!567 = !{!568, !572, !576, !577, !581, !587, !591, !592, !593, !597, !601, !602, !603, !604, !610, !615, !616, !623, !624, !625, !626, !2324, !2339}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !566, file: !44, line: 1936, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!335, !505}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !566, file: !44, line: 1937, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !335}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !566, file: !44, line: 1938, baseType: !573, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !566, file: !44, line: 1940, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !335, !164}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !566, file: !44, line: 1941, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!164, !335, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !566, file: !44, line: 1942, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!164, !335}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !566, file: !44, line: 1943, baseType: !573, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !566, file: !44, line: 1944, baseType: !535, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !566, file: !44, line: 1945, baseType: !594, size: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!164, !505, !164}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !566, file: !44, line: 1946, baseType: !598, size: 64, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!164, !505}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !566, file: !44, line: 1947, baseType: !598, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !566, file: !44, line: 1948, baseType: !598, size: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !566, file: !44, line: 1949, baseType: !598, size: 64, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !566, file: !44, line: 1950, baseType: !605, size: 64, offset: 832)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!164, !288, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !566, file: !44, line: 1951, baseType: !611, size: 64, offset: 896)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!164, !505, !614, !180}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !566, file: !44, line: 1952, baseType: !535, size: 64, offset: 960)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !566, file: !44, line: 1954, baseType: !617, size: 64, offset: 1024)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!164, !620, !288}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !622, line: 539, flags: DIFlagFwdDecl)
!622 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!623 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !566, file: !44, line: 1955, baseType: !617, size: 64, offset: 1088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !566, file: !44, line: 1956, baseType: !617, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !566, file: !44, line: 1957, baseType: !617, size: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !566, file: !44, line: 1963, baseType: !627, size: 64, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!164, !505, !630, !106}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !632, line: 68, size: 512, align: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !635, !2316, !2323}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !632, line: 69, baseType: !230, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 77, baseType: !636, size: 320, offset: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 77, size: 320, elements: !637)
!637 = !{!638, !825, !830, !858, !866, !872, !2247, !2315}
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 78, baseType: !639, size: 320)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 78, size: 320, elements: !640)
!640 = !{!641, !642, !823, !824}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !639, file: !632, line: 84, baseType: !125, size: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !639, file: !632, line: 86, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !645)
!645 = !{!646, !647, !654, !655, !660, !675, !691, !692, !693, !694, !816, !817, !820, !821, !822}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !644, file: !44, line: 452, baseType: !335, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !644, file: !44, line: 453, baseType: !648, size: 128, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !649, line: 292, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !652, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !648, file: !649, line: 293, baseType: !138)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !648, file: !649, line: 295, baseType: !106, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !648, file: !649, line: 296, baseType: !108, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !644, file: !44, line: 454, baseType: !106, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !644, file: !44, line: 455, baseType: !656, size: 32, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 168, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 166, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !657, file: !107, line: 167, baseType: !164, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !644, file: !44, line: 460, baseType: !661, size: 128, offset: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !662, line: 125, size: 128, elements: !663)
!662 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!663 = !{!664, !674}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !661, file: !662, line: 126, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !662, line: 31, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !665, file: !662, line: 32, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !662, line: 24, size: 192, align: 64, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !669, file: !662, line: 25, baseType: !230, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !669, file: !662, line: 26, baseType: !668, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !669, file: !662, line: 27, baseType: !668, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !661, file: !662, line: 127, baseType: !668, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !644, file: !44, line: 461, baseType: !676, size: 256, offset: 384)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !677, line: 35, size: 256, elements: !678)
!677 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !687, !688, !690}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !676, file: !677, line: 36, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !681, line: 13, baseType: !682)
!681 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 175, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 173, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !683, file: !107, line: 174, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !322, line: 22, baseType: !446)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !676, file: !677, line: 42, baseType: !680, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !676, file: !677, line: 46, baseType: !689, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !139, line: 29, baseType: !146)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !676, file: !677, line: 47, baseType: !125, size: 128, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !644, file: !44, line: 462, baseType: !230, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !644, file: !44, line: 463, baseType: !230, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !644, file: !44, line: 464, baseType: !230, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !644, file: !44, line: 465, baseType: !695, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !698)
!698 = !{!699, !703, !707, !711, !715, !719, !725, !731, !735, !740, !744, !748, !752, !780, !784, !790, !791, !792, !796, !801, !805, !812}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !697, file: !44, line: 368, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!164, !630, !585}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !697, file: !44, line: 369, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!164, !258, !630}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !697, file: !44, line: 372, baseType: !708, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!164, !643, !585}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !697, file: !44, line: 375, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!164, !630}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !697, file: !44, line: 381, baseType: !716, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!164, !258, !643, !128, !7}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !697, file: !44, line: 383, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !697, file: !44, line: 385, baseType: !726, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!164, !258, !643, !437, !7, !7, !729, !730}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !697, file: !44, line: 388, baseType: !732, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!164, !258, !643, !437, !7, !7, !630, !108}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !697, file: !44, line: 393, baseType: !736, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!739, !643, !739}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !107, line: 125, baseType: !327)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !697, file: !44, line: 394, baseType: !741, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !630, !7, !7}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !697, file: !44, line: 395, baseType: !745, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!164, !630, !106}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !697, file: !44, line: 396, baseType: !749, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !630}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !697, file: !44, line: 397, baseType: !753, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!211, !756, !778}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !758)
!758 = !{!759, !760, !761, !765, !766, !767, !770, !771}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !757, file: !44, line: 321, baseType: !258, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !757, file: !44, line: 326, baseType: !437, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !757, file: !44, line: 327, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !756, !215, !215}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !757, file: !44, line: 328, baseType: !108, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !757, file: !44, line: 329, baseType: !164, size: 32, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !757, file: !44, line: 330, baseType: !768, size: 16, offset: 288)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !322, line: 19, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !324, line: 24, baseType: !222)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !757, file: !44, line: 331, baseType: !768, size: 16, offset: 304)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !44, line: 332, baseType: !772, size: 64, offset: 320)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !757, file: !44, line: 332, size: 64, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !772, file: !44, line: 333, baseType: !7, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !772, file: !44, line: 334, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !697, file: !44, line: 402, baseType: !781, size: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!164, !643, !630, !630, !5}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !697, file: !44, line: 404, baseType: !785, size: 64, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!396, !630, !788}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !789, line: 305, baseType: !7)
!789 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !697, file: !44, line: 405, baseType: !749, size: 64, offset: 960)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !697, file: !44, line: 406, baseType: !712, size: 64, offset: 1024)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !697, file: !44, line: 407, baseType: !793, size: 64, offset: 1088)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!164, !630, !230, !230}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !697, file: !44, line: 409, baseType: !797, size: 64, offset: 1152)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !630, !800, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !697, file: !44, line: 410, baseType: !802, size: 64, offset: 1216)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!164, !643, !630}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !697, file: !44, line: 413, baseType: !806, size: 64, offset: 1280)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!164, !809, !258, !811}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !697, file: !44, line: 415, baseType: !813, size: 64, offset: 1344)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !258}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !44, line: 466, baseType: !230, size: 64, offset: 896)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !644, file: !44, line: 467, baseType: !818, size: 32, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !819, line: 8, baseType: !321)
!819 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!820 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !644, file: !44, line: 468, baseType: !138, offset: 992)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !644, file: !44, line: 469, baseType: !125, size: 128, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !644, file: !44, line: 470, baseType: !108, size: 64, offset: 1152)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !639, file: !632, line: 87, baseType: !230, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !639, file: !632, line: 94, baseType: !230, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 96, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 96, size: 64, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !826, file: !632, line: 101, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !107, line: 143, baseType: !327)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 103, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 103, size: 320, elements: !832)
!832 = !{!833, !843, !846, !847}
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !632, line: 104, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !632, line: 104, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !834, file: !632, line: 105, baseType: !125, size: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !632, line: 106, baseType: !838, size: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !834, file: !632, line: 106, size: 128, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !632, line: 107, baseType: !630, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !838, file: !632, line: 109, baseType: !164, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !838, file: !632, line: 110, baseType: !164, size: 32, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !831, file: !632, line: 117, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !632, line: 117, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !831, file: !632, line: 119, baseType: !108, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !632, line: 120, baseType: !848, size: 64, offset: 256)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !632, line: 120, size: 64, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !848, file: !632, line: 121, baseType: !108, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !848, file: !632, line: 122, baseType: !230, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !632, line: 123, baseType: !853, size: 32)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !632, line: 123, size: 32, elements: !854)
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !853, file: !632, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !853, file: !632, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !853, file: !632, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 130, baseType: !859, size: 192)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 130, size: 192, elements: !860)
!860 = !{!861, !862, !863, !864, !865}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !859, file: !632, line: 131, baseType: !230, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !859, file: !632, line: 134, baseType: !333, size: 8, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !859, file: !632, line: 135, baseType: !333, size: 8, offset: 72)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !859, file: !632, line: 136, baseType: !656, size: 32, offset: 96)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !859, file: !632, line: 137, baseType: !7, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 139, baseType: !867, size: 256)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 139, size: 256, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !867, file: !632, line: 140, baseType: !230, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !867, file: !632, line: 141, baseType: !656, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !867, file: !632, line: 143, baseType: !125, size: 128, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 145, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 145, size: 256, elements: !874)
!874 = !{!875, !876, !878, !879, !2246}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !873, file: !632, line: 146, baseType: !230, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !873, file: !632, line: 147, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !622, line: 509, baseType: !630)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !873, file: !632, line: 148, baseType: !230, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !632, line: 149, baseType: !880, size: 64, offset: 192)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !632, line: 149, size: 64, elements: !881)
!881 = !{!882, !2245}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !880, file: !632, line: 150, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !632, line: 388, size: 7296, elements: !885)
!885 = !{!886, !2241}
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !632, line: 389, baseType: !887, size: 7296)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !632, line: 389, size: 7296, elements: !888)
!888 = !{!889, !1007, !1008, !1009, !1013, !1014, !1015, !1016, !1017, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1058, !1066, !1069, !1115, !1116, !2225, !2226, !2229, !2230, !2231, !2234, !2235, !2236, !2239, !2240}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !887, file: !632, line: 390, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !632, line: 305, size: 1472, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898, !899, !900, !907, !908, !913, !914, !917, !1001, !1002, !1003, !1004, !1005}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !891, file: !632, line: 308, baseType: !230, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !891, file: !632, line: 309, baseType: !230, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !891, file: !632, line: 313, baseType: !890, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !891, file: !632, line: 313, baseType: !890, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !891, file: !632, line: 315, baseType: !669, size: 192, align: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !891, file: !632, line: 323, baseType: !230, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !891, file: !632, line: 327, baseType: !883, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !891, file: !632, line: 333, baseType: !901, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !622, line: 284, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !622, line: 284, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !902, file: !622, line: 284, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !906, line: 19, baseType: !230)
!906 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !891, file: !632, line: 334, baseType: !230, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !891, file: !632, line: 343, baseType: !909, size: 256, offset: 704)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !632, line: 340, size: 256, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !909, file: !632, line: 341, baseType: !669, size: 192, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !909, file: !632, line: 342, baseType: !230, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !891, file: !632, line: 351, baseType: !125, size: 128, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !891, file: !632, line: 353, baseType: !915, size: 64, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !632, line: 353, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !891, file: !632, line: 356, baseType: !918, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !921)
!921 = !{!922, !926, !927, !931, !935, !975, !979, !983, !987, !988, !989, !993, !997}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !920, file: !14, line: 558, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !890}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !920, file: !14, line: 559, baseType: !923, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !920, file: !14, line: 560, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!164, !890, !230}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !920, file: !14, line: 561, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!164, !890}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !920, file: !14, line: 562, baseType: !936, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !632, line: 682, baseType: !7)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !955, !962, !968, !969, !970, !972, !974}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !941, file: !14, line: 509, baseType: !890, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !941, file: !14, line: 511, baseType: !106, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !941, file: !14, line: 512, baseType: !230, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !941, file: !14, line: 513, baseType: !230, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !941, file: !14, line: 514, baseType: !949, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !622, line: 385, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 385, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !951, file: !622, line: 385, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !906, line: 15, baseType: !230)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !941, file: !14, line: 516, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !622, line: 359, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 359, size: 64, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !958, file: !622, line: 359, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !906, line: 16, baseType: !230)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !941, file: !14, line: 519, baseType: !963, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !906, line: 21, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !906, line: 21, size: 64, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !964, file: !906, line: 21, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !906, line: 14, baseType: !230)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !941, file: !14, line: 521, baseType: !630, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !941, file: !14, line: 522, baseType: !630, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !941, file: !14, line: 528, baseType: !971, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !941, file: !14, line: 532, baseType: !973, size: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !941, file: !14, line: 536, baseType: !877, size: 64, offset: 704)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !920, file: !14, line: 563, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!939, !940, !13}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !920, file: !14, line: 565, baseType: !980, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !940, !230, !230}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !920, file: !14, line: 567, baseType: !984, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!230, !890}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !920, file: !14, line: 571, baseType: !936, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !920, file: !14, line: 574, baseType: !936, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !920, file: !14, line: 579, baseType: !990, size: 64, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!164, !890, !230, !108, !164, !164}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !14, line: 585, baseType: !994, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!121, !890}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !920, file: !14, line: 615, baseType: !998, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!630, !890, !230}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !891, file: !632, line: 359, baseType: !230, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !891, file: !632, line: 361, baseType: !258, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !891, file: !632, line: 362, baseType: !108, size: 64, offset: 1344)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !891, file: !632, line: 365, baseType: !680, size: 64, offset: 1408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !891, file: !632, line: 373, baseType: !1006, offset: 1472)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !632, line: 296, elements: !152)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !887, file: !632, line: 391, baseType: !665, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !887, file: !632, line: 392, baseType: !327, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !887, file: !632, line: 394, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!230, !258, !230, !230, !230, !230}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !887, file: !632, line: 398, baseType: !230, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !887, file: !632, line: 399, baseType: !230, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !887, file: !632, line: 405, baseType: !230, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !887, file: !632, line: 406, baseType: !230, size: 64, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !887, file: !632, line: 407, baseType: !1018, size: 64, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !622, line: 286, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 286, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1020, file: !622, line: 286, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !906, line: 18, baseType: !230)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !887, file: !632, line: 416, baseType: !656, size: 32, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !887, file: !632, line: 428, baseType: !656, size: 32, offset: 608)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !887, file: !632, line: 437, baseType: !656, size: 32, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !887, file: !632, line: 447, baseType: !656, size: 32, offset: 672)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !887, file: !632, line: 450, baseType: !680, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !887, file: !632, line: 452, baseType: !164, size: 32, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !887, file: !632, line: 454, baseType: !138, offset: 800)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !887, file: !632, line: 457, baseType: !676, size: 256, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !887, file: !632, line: 459, baseType: !125, size: 128, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !887, file: !632, line: 466, baseType: !230, size: 64, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !887, file: !632, line: 467, baseType: !230, size: 64, offset: 1280)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !887, file: !632, line: 469, baseType: !230, size: 64, offset: 1344)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !887, file: !632, line: 470, baseType: !230, size: 64, offset: 1408)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !887, file: !632, line: 471, baseType: !682, size: 64, offset: 1472)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !887, file: !632, line: 472, baseType: !230, size: 64, offset: 1536)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !887, file: !632, line: 473, baseType: !230, size: 64, offset: 1600)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !887, file: !632, line: 474, baseType: !230, size: 64, offset: 1664)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !887, file: !632, line: 475, baseType: !230, size: 64, offset: 1728)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !887, file: !632, line: 477, baseType: !138, offset: 1792)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !887, file: !632, line: 478, baseType: !230, size: 64, offset: 1792)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !887, file: !632, line: 478, baseType: !230, size: 64, offset: 1856)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !887, file: !632, line: 478, baseType: !230, size: 64, offset: 1920)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !887, file: !632, line: 478, baseType: !230, size: 64, offset: 1984)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !887, file: !632, line: 479, baseType: !230, size: 64, offset: 2048)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !887, file: !632, line: 479, baseType: !230, size: 64, offset: 2112)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !887, file: !632, line: 479, baseType: !230, size: 64, offset: 2176)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !887, file: !632, line: 480, baseType: !230, size: 64, offset: 2240)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !887, file: !632, line: 480, baseType: !230, size: 64, offset: 2304)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !887, file: !632, line: 480, baseType: !230, size: 64, offset: 2368)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !887, file: !632, line: 480, baseType: !230, size: 64, offset: 2432)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !887, file: !632, line: 482, baseType: !1055, size: 2816, offset: 2496)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 2816, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 44)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !887, file: !632, line: 488, baseType: !1059, size: 256, offset: 5312)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1060, line: 60, size: 256, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1059, file: !1060, line: 61, baseType: !1063, size: 256)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !1064)
!1064 = !{!1065}
!1065 = !DISubrange(count: 4)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !887, file: !632, line: 490, baseType: !1067, size: 64, offset: 5568)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !632, line: 490, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !887, file: !632, line: 493, baseType: !1070, size: 896, offset: 5632)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1071, line: 53, baseType: !1072)
!1071 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1071, line: 13, size: 896, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1080, !1081, !1088, !1089, !1109, !1110, !1111}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1072, file: !1071, line: 18, baseType: !327, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1072, file: !1071, line: 28, baseType: !682, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1072, file: !1071, line: 31, baseType: !676, size: 256, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1072, file: !1071, line: 32, baseType: !1078, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1071, line: 32, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1072, file: !1071, line: 37, baseType: !222, size: 16, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !1071, line: 40, baseType: !1082, size: 192, offset: 512)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1083, line: 53, size: 192, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1082, file: !1083, line: 54, baseType: !680, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1082, file: !1083, line: 55, baseType: !138, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1082, file: !1083, line: 59, baseType: !125, size: 128, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1072, file: !1071, line: 41, baseType: !108, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1072, file: !1071, line: 42, baseType: !1090, size: 64, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1093, line: 13, size: 896, elements: !1094)
!1093 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1092, file: !1093, line: 14, baseType: !108, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1092, file: !1093, line: 15, baseType: !230, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1092, file: !1093, line: 17, baseType: !230, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1092, file: !1093, line: 17, baseType: !230, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1092, file: !1093, line: 19, baseType: !215, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1092, file: !1093, line: 21, baseType: !215, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1092, file: !1093, line: 22, baseType: !215, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1092, file: !1093, line: 23, baseType: !215, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1092, file: !1093, line: 24, baseType: !215, size: 64, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1092, file: !1093, line: 25, baseType: !215, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1092, file: !1093, line: 26, baseType: !215, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1092, file: !1093, line: 27, baseType: !215, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1092, file: !1093, line: 28, baseType: !215, size: 64, offset: 768)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1092, file: !1093, line: 29, baseType: !215, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1072, file: !1071, line: 44, baseType: !656, size: 32, offset: 832)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1072, file: !1071, line: 50, baseType: !768, size: 16, offset: 864)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1072, file: !1071, line: 51, baseType: !1112, size: 16, offset: 880)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !322, line: 18, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !324, line: 23, baseType: !1114)
!1114 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !632, line: 495, baseType: !230, size: 64, offset: 6528)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !887, file: !632, line: 497, baseType: !1117, size: 64, offset: 6592)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !632, line: 381, size: 384, elements: !1119)
!1119 = !{!1120, !1121, !2224}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1118, file: !632, line: 382, baseType: !656, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1118, file: !632, line: 383, baseType: !1122, size: 128, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !632, line: 376, size: 128, elements: !1123)
!1123 = !{!1124, !2222}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1122, file: !632, line: 377, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1127, line: 640, size: 48640, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129, !1135, !1137, !1138, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1173, !1184, !1269, !1270, !1271, !1282, !1283, !1285, !1286, !1287, !1288, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1367, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1405, !1407, !1408, !1409, !1421, !1422, !1423, !1424, !1425, !1426, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1450, !1455, !1639, !1640, !1641, !1642, !1646, !1649, !1652, !1655, !1658, !1662, !1764, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1810, !1811, !1812, !1813, !1814, !1819, !1820, !1821, !1824, !1825, !1828, !1831, !1834, !1837, !1880, !1883, !1884, !1963, !1964, !1967, !1968, !1971, !1972, !1973, !1977, !1978, !1979, !1992, !1993, !1994, !2004, !2009, !2012, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1126, file: !1127, line: 646, baseType: !1130, size: 128)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1131, line: 56, size: 128, elements: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !1131, line: 57, baseType: !230, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1130, file: !1131, line: 58, baseType: !321, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1126, file: !1127, line: 649, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !215)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1126, file: !1127, line: 657, baseType: !108, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1126, file: !1127, line: 658, baseType: !1139, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1140, line: 113, baseType: !1141)
!1140 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1140, line: 111, size: 32, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1141, file: !1140, line: 112, baseType: !656, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1126, file: !1127, line: 660, baseType: !7, size: 32, offset: 288)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1126, file: !1127, line: 661, baseType: !7, size: 32, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1126, file: !1127, line: 684, baseType: !164, size: 32, offset: 352)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1126, file: !1127, line: 686, baseType: !164, size: 32, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1126, file: !1127, line: 687, baseType: !164, size: 32, offset: 416)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1126, file: !1127, line: 688, baseType: !164, size: 32, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1126, file: !1127, line: 689, baseType: !7, size: 32, offset: 480)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1126, file: !1127, line: 691, baseType: !1152, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1127, line: 691, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1126, file: !1127, line: 692, baseType: !1156, size: 832, offset: 576)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1127, line: 451, size: 832, elements: !1157)
!1157 = !{!1158, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1156, file: !1127, line: 453, baseType: !1159, size: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1127, line: 325, size: 128, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1159, file: !1127, line: 326, baseType: !230, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1159, file: !1127, line: 327, baseType: !321, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1156, file: !1127, line: 454, baseType: !669, size: 192, align: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1156, file: !1127, line: 455, baseType: !125, size: 128, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1156, file: !1127, line: 456, baseType: !7, size: 32, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1156, file: !1127, line: 458, baseType: !327, size: 64, offset: 512)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1156, file: !1127, line: 459, baseType: !327, size: 64, offset: 576)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1156, file: !1127, line: 460, baseType: !327, size: 64, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1156, file: !1127, line: 461, baseType: !327, size: 64, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1156, file: !1127, line: 463, baseType: !327, size: 64, offset: 768)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1156, file: !1127, line: 465, baseType: !1172, offset: 832)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1127, line: 415, elements: !152)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1126, file: !1127, line: 693, baseType: !1174, size: 384, offset: 1408)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1127, line: 489, size: 384, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1174, file: !1127, line: 490, baseType: !125, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1174, file: !1127, line: 491, baseType: !230, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1174, file: !1127, line: 492, baseType: !230, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1174, file: !1127, line: 493, baseType: !7, size: 32, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1174, file: !1127, line: 494, baseType: !222, size: 16, offset: 288)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1174, file: !1127, line: 495, baseType: !222, size: 16, offset: 304)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1174, file: !1127, line: 497, baseType: !1183, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1126, file: !1127, line: 697, baseType: !1185, size: 1792, offset: 1792)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1127, line: 507, size: 1792, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1266, !1267}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1185, file: !1127, line: 508, baseType: !669, size: 192, align: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1185, file: !1127, line: 515, baseType: !327, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1185, file: !1127, line: 516, baseType: !327, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1185, file: !1127, line: 517, baseType: !327, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1185, file: !1127, line: 518, baseType: !327, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1185, file: !1127, line: 519, baseType: !327, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1185, file: !1127, line: 526, baseType: !686, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1185, file: !1127, line: 527, baseType: !327, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !1127, line: 528, baseType: !7, size: 32, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1185, file: !1127, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1185, file: !1127, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1185, file: !1127, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1185, file: !1127, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1185, file: !1127, line: 563, baseType: !1201, size: 512, offset: 704)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1202)
!1202 = !{!1203, !1211, !1212, !1217, !1260, !1263, !1264, !1265}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1201, file: !20, line: 119, baseType: !1204, size: 256)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1205, line: 9, size: 256, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1204, file: !1205, line: 10, baseType: !669, size: 192, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1204, file: !1205, line: 11, baseType: !1209, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1210, line: 29, baseType: !686)
!1210 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1201, file: !20, line: 120, baseType: !1209, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1201, file: !20, line: 121, baseType: !1213, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!19, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1201, file: !20, line: 122, baseType: !1218, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1220)
!1220 = !{!1221, !1241, !1242, !1245, !1250, !1251, !1255, !1259}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1219, file: !20, line: 160, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1223, file: !20, line: 215, baseType: !689)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1223, file: !20, line: 216, baseType: !7, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1223, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1223, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1223, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1223, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1223, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1223, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1223, file: !20, line: 233, baseType: !1209, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1223, file: !20, line: 234, baseType: !1216, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1223, file: !20, line: 235, baseType: !1209, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1223, file: !20, line: 236, baseType: !1216, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1223, file: !20, line: 237, baseType: !1238, size: 4096, offset: 512)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 4096, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 8)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1219, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1219, file: !20, line: 162, baseType: !1243, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 27, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !213, line: 96, baseType: !164)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1219, file: !20, line: 163, baseType: !1246, size: 32, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !294, line: 276, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !294, line: 276, size: 32, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1247, file: !294, line: 276, baseType: !298, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1219, file: !20, line: 164, baseType: !1216, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1219, file: !20, line: 165, baseType: !1252, size: 128, offset: 256)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1205, line: 14, size: 128, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1252, file: !1205, line: 15, baseType: !661, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1219, file: !20, line: 166, baseType: !1256, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1209}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1219, file: !20, line: 167, baseType: !1209, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1201, file: !20, line: 123, baseType: !1261, size: 8, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !322, line: 17, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !324, line: 21, baseType: !333)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1201, file: !20, line: 124, baseType: !1261, size: 8, offset: 456)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1201, file: !20, line: 125, baseType: !1261, size: 8, offset: 464)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1201, file: !20, line: 126, baseType: !1261, size: 8, offset: 472)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1185, file: !1127, line: 572, baseType: !1201, size: 512, offset: 1216)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1185, file: !1127, line: 580, baseType: !1268, size: 64, offset: 1728)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1126, file: !1127, line: 721, baseType: !7, size: 32, offset: 3584)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1126, file: !1127, line: 722, baseType: !164, size: 32, offset: 3616)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1126, file: !1127, line: 723, baseType: !1272, size: 64, offset: 3648)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1275, line: 17, baseType: !1276)
!1275 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1275, line: 17, size: 64, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1276, file: !1275, line: 17, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 1)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1126, file: !1127, line: 724, baseType: !1274, size: 64, offset: 3712)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1126, file: !1127, line: 749, baseType: !1284, offset: 3776)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1127, line: 290, elements: !152)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1126, file: !1127, line: 751, baseType: !125, size: 128, offset: 3776)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1126, file: !1127, line: 757, baseType: !883, size: 64, offset: 3904)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1126, file: !1127, line: 758, baseType: !883, size: 64, offset: 3968)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1126, file: !1127, line: 761, baseType: !1289, size: 320, offset: 4032)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1060, line: 34, size: 320, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1289, file: !1060, line: 35, baseType: !327, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1289, file: !1060, line: 36, baseType: !1293, size: 256, offset: 64)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 256, elements: !1064)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1126, file: !1127, line: 766, baseType: !164, size: 32, offset: 4352)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1126, file: !1127, line: 767, baseType: !164, size: 32, offset: 4384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1126, file: !1127, line: 768, baseType: !164, size: 32, offset: 4416)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1126, file: !1127, line: 770, baseType: !164, size: 32, offset: 4448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1126, file: !1127, line: 772, baseType: !230, size: 64, offset: 4480)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1126, file: !1127, line: 775, baseType: !7, size: 32, offset: 4544)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1126, file: !1127, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1126, file: !1127, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1126, file: !1127, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1126, file: !1127, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1126, file: !1127, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1126, file: !1127, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1126, file: !1127, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1126, file: !1127, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1126, file: !1127, line: 831, baseType: !230, size: 64, offset: 4672)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1126, file: !1127, line: 833, baseType: !1310, size: 384, offset: 4736)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1311)
!1311 = !{!1312, !1317}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1310, file: !25, line: 26, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!215, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !25, line: 27, baseType: !1318, size: 320, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !25, line: 27, size: 320, elements: !1319)
!1319 = !{!1320, !1330, !1357}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1318, file: !25, line: 36, baseType: !1321, size: 320)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !25, line: 29, size: 320, elements: !1322)
!1322 = !{!1323, !1325, !1326, !1327, !1328, !1329}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1321, file: !25, line: 30, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1321, file: !25, line: 31, baseType: !321, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1321, file: !25, line: 32, baseType: !321, size: 32, offset: 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1321, file: !25, line: 33, baseType: !321, size: 32, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1321, file: !25, line: 34, baseType: !327, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1321, file: !25, line: 35, baseType: !1324, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1318, file: !25, line: 46, baseType: !1331, size: 192)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !25, line: 38, size: 192, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1356}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1331, file: !25, line: 39, baseType: !1243, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !25, line: 41, baseType: !1336, size: 64, offset: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !25, line: 41, size: 64, elements: !1337)
!1337 = !{!1338, !1346}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1336, file: !25, line: 42, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1341, line: 7, size: 128, elements: !1342)
!1341 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !{!1343, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1340, file: !1341, line: 8, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !213, line: 93, baseType: !439)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1340, file: !1341, line: 9, baseType: !439, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1336, file: !25, line: 43, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1349, line: 7, size: 64, elements: !1350)
!1349 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !{!1351, !1355}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1348, file: !1349, line: 8, baseType: !1352, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1349, line: 5, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !322, line: 20, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !324, line: 26, baseType: !164)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1348, file: !1349, line: 9, baseType: !1353, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1331, file: !25, line: 45, baseType: !327, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1318, file: !25, line: 54, baseType: !1358, size: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !25, line: 48, size: 256, elements: !1359)
!1359 = !{!1360, !1363, !1364, !1365, !1366}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1358, file: !25, line: 49, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1358, file: !25, line: 50, baseType: !164, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1358, file: !25, line: 51, baseType: !164, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1358, file: !25, line: 52, baseType: !230, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1358, file: !25, line: 53, baseType: !230, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1126, file: !1127, line: 835, baseType: !1368, size: 32, offset: 5120)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !107, line: 22, baseType: !1369)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !213, line: 28, baseType: !164)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1126, file: !1127, line: 836, baseType: !1368, size: 32, offset: 5152)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1126, file: !1127, line: 840, baseType: !230, size: 64, offset: 5184)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1126, file: !1127, line: 849, baseType: !1125, size: 64, offset: 5248)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1126, file: !1127, line: 852, baseType: !1125, size: 64, offset: 5312)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1126, file: !1127, line: 857, baseType: !125, size: 128, offset: 5376)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1126, file: !1127, line: 858, baseType: !125, size: 128, offset: 5504)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1126, file: !1127, line: 859, baseType: !1125, size: 64, offset: 5632)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1126, file: !1127, line: 867, baseType: !125, size: 128, offset: 5696)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1126, file: !1127, line: 868, baseType: !125, size: 128, offset: 5824)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1126, file: !1127, line: 871, baseType: !1380, size: 64, offset: 5952)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1388, !1389, !1396, !1397}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1381, file: !53, line: 61, baseType: !1139, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1381, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !53, line: 63, baseType: !138, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1381, file: !53, line: 65, baseType: !1387, size: 256, offset: 64)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 256, elements: !1064)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1381, file: !53, line: 66, baseType: !544, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1381, file: !53, line: 68, baseType: !1390, size: 128, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1391, line: 40, baseType: !1392)
!1391 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1391, line: 36, size: 128, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !1391, line: 37, baseType: !138)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1392, file: !1391, line: 38, baseType: !125, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1381, file: !53, line: 69, baseType: !271, size: 128, align: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1381, file: !53, line: 70, baseType: !1398, size: 128, offset: 640)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, size: 128, elements: !1280)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1399, file: !53, line: 55, baseType: !164, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1399, file: !53, line: 56, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1126, file: !1127, line: 872, baseType: !1406, size: 512, offset: 6016)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 512, elements: !1064)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1126, file: !1127, line: 873, baseType: !125, size: 128, offset: 6528)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1126, file: !1127, line: 874, baseType: !125, size: 128, offset: 6656)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1126, file: !1127, line: 876, baseType: !1410, size: 64, offset: 6784)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1412, line: 26, size: 192, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1411, file: !1412, line: 27, baseType: !7, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1411, file: !1412, line: 28, baseType: !1416, size: 128, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1417, line: 43, size: 128, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1416, file: !1417, line: 44, baseType: !689)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1416, file: !1417, line: 45, baseType: !125, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1126, file: !1127, line: 879, baseType: !614, size: 64, offset: 6848)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1126, file: !1127, line: 882, baseType: !614, size: 64, offset: 6912)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1126, file: !1127, line: 884, baseType: !327, size: 64, offset: 6976)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1126, file: !1127, line: 885, baseType: !327, size: 64, offset: 7040)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1126, file: !1127, line: 890, baseType: !327, size: 64, offset: 7104)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1126, file: !1127, line: 891, baseType: !1427, size: 128, offset: 7168)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1127, line: 242, size: 128, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1427, file: !1127, line: 244, baseType: !327, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1427, file: !1127, line: 245, baseType: !327, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1427, file: !1127, line: 246, baseType: !689, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1126, file: !1127, line: 900, baseType: !230, size: 64, offset: 7296)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1126, file: !1127, line: 901, baseType: !230, size: 64, offset: 7360)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1126, file: !1127, line: 904, baseType: !327, size: 64, offset: 7424)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1126, file: !1127, line: 907, baseType: !327, size: 64, offset: 7488)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1126, file: !1127, line: 910, baseType: !230, size: 64, offset: 7552)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1126, file: !1127, line: 911, baseType: !230, size: 64, offset: 7616)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1126, file: !1127, line: 914, baseType: !1439, size: 640, offset: 7680)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1440, line: 123, size: 640, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !{!1442, !1448, !1449}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1439, file: !1440, line: 124, baseType: !1443, size: 576)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 576, elements: !181)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1440, line: 108, size: 192, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1444, file: !1440, line: 109, baseType: !327, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1444, file: !1440, line: 110, baseType: !1252, size: 128, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1439, file: !1440, line: 125, baseType: !7, size: 32, offset: 576)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1439, file: !1440, line: 126, baseType: !7, size: 32, offset: 608)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1126, file: !1127, line: 917, baseType: !1451, size: 192, offset: 8320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1440, line: 134, size: 192, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1451, file: !1440, line: 135, baseType: !271, size: 128, align: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1451, file: !1440, line: 136, baseType: !7, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1126, file: !1127, line: 923, baseType: !1456, size: 64, offset: 8512)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1459, line: 111, size: 1280, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1480, !1481, !1482, !1483, !1484, !1485, !1592, !1593, !1594, !1595, !1621, !1624, !1634}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1458, file: !1459, line: 112, baseType: !656, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1458, file: !1459, line: 120, baseType: !341, size: 32, offset: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1458, file: !1459, line: 121, baseType: !349, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1458, file: !1459, line: 122, baseType: !341, size: 32, offset: 96)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1458, file: !1459, line: 123, baseType: !349, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1458, file: !1459, line: 124, baseType: !341, size: 32, offset: 160)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1458, file: !1459, line: 125, baseType: !349, size: 32, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1458, file: !1459, line: 126, baseType: !341, size: 32, offset: 224)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1458, file: !1459, line: 127, baseType: !349, size: 32, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1458, file: !1459, line: 128, baseType: !7, size: 32, offset: 288)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1458, file: !1459, line: 129, baseType: !1472, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1473, line: 26, baseType: !1474)
!1473 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1473, line: 24, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1474, file: !1473, line: 25, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 2)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1458, file: !1459, line: 130, baseType: !1472, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1458, file: !1459, line: 131, baseType: !1472, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1458, file: !1459, line: 132, baseType: !1472, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1458, file: !1459, line: 133, baseType: !1472, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1458, file: !1459, line: 135, baseType: !333, size: 8, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1458, file: !1459, line: 137, baseType: !1486, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1488, line: 189, size: 1664, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1491, !1494, !1499, !1500, !1503, !1504, !1509, !1510, !1511, !1512, !1514, !1515, !1516, !1517, !1518, !1556, !1577}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1487, file: !1488, line: 190, baseType: !1139, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1487, file: !1488, line: 191, baseType: !1492, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1488, line: 28, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !107, line: 98, baseType: !1353)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 192, baseType: !1495, size: 192, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 192, size: 192, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1495, file: !1488, line: 193, baseType: !125, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1495, file: !1488, line: 194, baseType: !669, size: 192, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1487, file: !1488, line: 199, baseType: !676, size: 256, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1487, file: !1488, line: 200, baseType: !1501, size: 64, offset: 512)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1488, line: 200, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1487, file: !1488, line: 201, baseType: !108, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 202, baseType: !1505, size: 64, offset: 640)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 202, size: 64, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1505, file: !1488, line: 203, baseType: !445, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1505, file: !1488, line: 204, baseType: !445, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1487, file: !1488, line: 206, baseType: !445, size: 64, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1487, file: !1488, line: 207, baseType: !341, size: 32, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1487, file: !1488, line: 208, baseType: !349, size: 32, offset: 800)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1487, file: !1488, line: 209, baseType: !1513, size: 32, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1488, line: 31, baseType: !465)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1487, file: !1488, line: 210, baseType: !222, size: 16, offset: 864)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1487, file: !1488, line: 211, baseType: !222, size: 16, offset: 880)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1487, file: !1488, line: 215, baseType: !1114, size: 16, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1488, line: 222, baseType: !230, size: 64, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 239, baseType: !1519, size: 320, offset: 1024)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 239, size: 320, elements: !1520)
!1520 = !{!1521, !1548}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1519, file: !1488, line: 240, baseType: !1522, size: 320)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1488, line: 108, size: 320, elements: !1523)
!1523 = !{!1524, !1525, !1537, !1540, !1547}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1522, file: !1488, line: 110, baseType: !230, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !1488, line: 111, baseType: !1526, size: 64, offset: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !1488, line: 111, size: 64, elements: !1527)
!1527 = !{!1528, !1536}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1488, line: 112, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !1488, line: 112, size: 64, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1529, file: !1488, line: 114, baseType: !768, size: 16)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1529, file: !1488, line: 115, baseType: !1533, size: 48, offset: 16)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 48, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 6)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1526, file: !1488, line: 121, baseType: !230, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !1488, line: 123, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1488, line: 96, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1522, file: !1488, line: 124, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1488, line: 102, size: 192, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1542, file: !1488, line: 103, baseType: !271, size: 128, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1542, file: !1488, line: 104, baseType: !1139, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1542, file: !1488, line: 105, baseType: !396, size: 8, offset: 160)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1522, file: !1488, line: 125, baseType: !121, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1488, line: 241, baseType: !1549, size: 320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1488, line: 241, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1549, file: !1488, line: 242, baseType: !230, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1549, file: !1488, line: 243, baseType: !230, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1549, file: !1488, line: 244, baseType: !1538, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1549, file: !1488, line: 245, baseType: !1541, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1549, file: !1488, line: 246, baseType: !180, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 254, baseType: !1557, size: 256, offset: 1344)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 254, size: 256, elements: !1558)
!1558 = !{!1559, !1565}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1557, file: !1488, line: 255, baseType: !1560, size: 256)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1488, line: 128, size: 256, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1560, file: !1488, line: 129, baseType: !108, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1560, file: !1488, line: 130, baseType: !1564, size: 256)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !1064)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !1488, line: 256, baseType: !1566, size: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !1488, line: 256, size: 256, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1566, file: !1488, line: 258, baseType: !125, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1566, file: !1488, line: 259, baseType: !1570, size: 128, offset: 128)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1571, line: 22, size: 128, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1576}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1570, file: !1571, line: 23, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1571, line: 23, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1570, file: !1571, line: 24, baseType: !230, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1487, file: !1488, line: 274, baseType: !1578, size: 64, offset: 1600)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1488, line: 170, size: 192, elements: !1580)
!1580 = !{!1581, !1590, !1591}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1579, file: !1488, line: 171, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1488, line: 165, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!164, !1486, !1586, !1588, !1486}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1579, file: !1488, line: 172, baseType: !1486, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1579, file: !1488, line: 173, baseType: !1538, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1458, file: !1459, line: 138, baseType: !1486, size: 64, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1458, file: !1459, line: 139, baseType: !1486, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1458, file: !1459, line: 140, baseType: !1486, size: 64, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1458, file: !1459, line: 145, baseType: !1596, size: 64, offset: 960)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1598, line: 13, size: 896, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1597, file: !1598, line: 14, baseType: !1139, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1597, file: !1598, line: 15, baseType: !656, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1597, file: !1598, line: 16, baseType: !656, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1597, file: !1598, line: 21, baseType: !680, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1597, file: !1598, line: 27, baseType: !230, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1597, file: !1598, line: 28, baseType: !230, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1597, file: !1598, line: 29, baseType: !680, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1597, file: !1598, line: 32, baseType: !548, size: 128, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1597, file: !1598, line: 33, baseType: !341, size: 32, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1597, file: !1598, line: 37, baseType: !680, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1597, file: !1598, line: 44, baseType: !1611, size: 256, offset: 640)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1612, line: 15, size: 256, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1611, file: !1612, line: 16, baseType: !689)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1611, file: !1612, line: 18, baseType: !164, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1611, file: !1612, line: 19, baseType: !164, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1611, file: !1612, line: 20, baseType: !164, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1611, file: !1612, line: 21, baseType: !164, size: 32, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1611, file: !1612, line: 22, baseType: !230, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1611, file: !1612, line: 23, baseType: !230, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1458, file: !1459, line: 146, baseType: !1622, size: 64, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !342, line: 18, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1458, file: !1459, line: 147, baseType: !1625, size: 64, offset: 1088)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1459, line: 25, size: 64, elements: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1626, file: !1459, line: 26, baseType: !656, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1626, file: !1459, line: 27, baseType: !164, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1626, file: !1459, line: 28, baseType: !1631, offset: 64)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 0)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1459, line: 149, baseType: !1635, size: 128, offset: 1152)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1458, file: !1459, line: 149, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1635, file: !1459, line: 150, baseType: !164, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1635, file: !1459, line: 151, baseType: !271, size: 128, align: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1126, file: !1127, line: 926, baseType: !1456, size: 64, offset: 8576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1126, file: !1127, line: 929, baseType: !1456, size: 64, offset: 8640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1126, file: !1127, line: 933, baseType: !1486, size: 64, offset: 8704)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1126, file: !1127, line: 943, baseType: !1643, size: 128, offset: 8768)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 16)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1126, file: !1127, line: 945, baseType: !1647, size: 64, offset: 8896)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1127, line: 49, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1126, file: !1127, line: 956, baseType: !1650, size: 64, offset: 8960)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1127, line: 45, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1126, file: !1127, line: 959, baseType: !1653, size: 64, offset: 9024)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1127, line: 959, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1126, file: !1127, line: 962, baseType: !1656, size: 64, offset: 9088)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1127, line: 66, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1126, file: !1127, line: 966, baseType: !1659, size: 64, offset: 9152)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1661, line: 35, flags: DIFlagFwdDecl)
!1661 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1126, file: !1127, line: 969, baseType: !1663, size: 64, offset: 9216)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1665, line: 82, size: 7296, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1702, !1711, !1712, !1714, !1715, !1716, !1720, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1750, !1751, !1758, !1759, !1760, !1761, !1762, !1763}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1664, file: !1665, line: 83, baseType: !1139, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1664, file: !1665, line: 84, baseType: !656, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1664, file: !1665, line: 85, baseType: !164, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1664, file: !1665, line: 86, baseType: !125, size: 128, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1664, file: !1665, line: 88, baseType: !1390, size: 128, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1664, file: !1665, line: 91, baseType: !1125, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1664, file: !1665, line: 94, baseType: !1674, size: 192, offset: 448)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1675, line: 30, size: 192, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1674, file: !1675, line: 31, baseType: !125, size: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1674, file: !1675, line: 32, baseType: !1679, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1680, line: 25, baseType: !1681)
!1680 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 23, size: 64, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1681, file: !1680, line: 24, baseType: !1279, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1664, file: !1665, line: 97, baseType: !544, size: 64, offset: 640)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1664, file: !1665, line: 100, baseType: !164, size: 32, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1664, file: !1665, line: 106, baseType: !164, size: 32, offset: 736)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1664, file: !1665, line: 107, baseType: !1125, size: 64, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1664, file: !1665, line: 110, baseType: !164, size: 32, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1664, file: !1665, line: 111, baseType: !7, size: 32, offset: 864)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1664, file: !1665, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1664, file: !1665, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1664, file: !1665, line: 128, baseType: !164, size: 32, offset: 928)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1664, file: !1665, line: 129, baseType: !125, size: 128, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1664, file: !1665, line: 132, baseType: !1201, size: 512, offset: 1088)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1664, file: !1665, line: 133, baseType: !1209, size: 64, offset: 1600)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1664, file: !1665, line: 140, baseType: !1697, size: 256, offset: 1664)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1698, size: 256, elements: !1478)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1665, line: 38, size: 128, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1698, file: !1665, line: 39, baseType: !327, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1698, file: !1665, line: 40, baseType: !327, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1664, file: !1665, line: 146, baseType: !1703, size: 192, offset: 1920)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1665, line: 66, size: 192, elements: !1704)
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1703, file: !1665, line: 67, baseType: !1706, size: 192)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1665, line: 47, size: 192, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1706, file: !1665, line: 48, baseType: !682, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1706, file: !1665, line: 49, baseType: !682, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1706, file: !1665, line: 50, baseType: !682, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1664, file: !1665, line: 150, baseType: !1439, size: 640, offset: 2112)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1664, file: !1665, line: 153, baseType: !1713, size: 256, offset: 2752)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 256, elements: !1064)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1664, file: !1665, line: 159, baseType: !1380, size: 64, offset: 3008)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1664, file: !1665, line: 162, baseType: !164, size: 32, offset: 3072)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1664, file: !1665, line: 164, baseType: !1717, size: 64, offset: 3136)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1719, line: 24, flags: DIFlagFwdDecl)
!1719 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1664, file: !1665, line: 175, baseType: !1721, size: 32, offset: 3200)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !294, line: 805, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 798, size: 32, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1722, file: !294, line: 803, baseType: !293, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1722, file: !294, line: 804, baseType: !138, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1664, file: !1665, line: 176, baseType: !327, size: 64, offset: 3264)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1664, file: !1665, line: 176, baseType: !327, size: 64, offset: 3328)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1664, file: !1665, line: 176, baseType: !327, size: 64, offset: 3392)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1664, file: !1665, line: 176, baseType: !327, size: 64, offset: 3456)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1664, file: !1665, line: 177, baseType: !327, size: 64, offset: 3520)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1664, file: !1665, line: 178, baseType: !327, size: 64, offset: 3584)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1664, file: !1665, line: 179, baseType: !1427, size: 128, offset: 3648)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1664, file: !1665, line: 180, baseType: !230, size: 64, offset: 3776)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1664, file: !1665, line: 180, baseType: !230, size: 64, offset: 3840)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1664, file: !1665, line: 180, baseType: !230, size: 64, offset: 3904)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1664, file: !1665, line: 180, baseType: !230, size: 64, offset: 3968)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1664, file: !1665, line: 181, baseType: !230, size: 64, offset: 4032)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1664, file: !1665, line: 181, baseType: !230, size: 64, offset: 4096)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1664, file: !1665, line: 181, baseType: !230, size: 64, offset: 4160)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1664, file: !1665, line: 181, baseType: !230, size: 64, offset: 4224)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1664, file: !1665, line: 182, baseType: !230, size: 64, offset: 4288)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1664, file: !1665, line: 182, baseType: !230, size: 64, offset: 4352)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1664, file: !1665, line: 182, baseType: !230, size: 64, offset: 4416)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1664, file: !1665, line: 182, baseType: !230, size: 64, offset: 4480)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1664, file: !1665, line: 183, baseType: !230, size: 64, offset: 4544)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1664, file: !1665, line: 183, baseType: !230, size: 64, offset: 4608)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1664, file: !1665, line: 184, baseType: !1748, offset: 4672)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1749, line: 12, elements: !152)
!1749 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1664, file: !1665, line: 192, baseType: !329, size: 64, offset: 4672)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1664, file: !1665, line: 203, baseType: !1752, size: 2048, offset: 4736)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1753, size: 2048, elements: !1644)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1754, line: 43, size: 128, elements: !1755)
!1754 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1753, file: !1754, line: 44, baseType: !229, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1753, file: !1754, line: 45, baseType: !229, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1664, file: !1665, line: 220, baseType: !396, size: 8, offset: 6784)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1664, file: !1665, line: 221, baseType: !1114, size: 16, offset: 6800)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1664, file: !1665, line: 222, baseType: !1114, size: 16, offset: 6816)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1664, file: !1665, line: 224, baseType: !883, size: 64, offset: 6848)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1664, file: !1665, line: 227, baseType: !1082, size: 192, offset: 6912)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1664, file: !1665, line: 233, baseType: !1082, size: 192, offset: 7104)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1126, file: !1127, line: 970, baseType: !1765, size: 64, offset: 9280)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1665, line: 20, size: 16576, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1766, file: !1665, line: 21, baseType: !138)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1766, file: !1665, line: 22, baseType: !1139, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1766, file: !1665, line: 23, baseType: !1390, size: 128, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1766, file: !1665, line: 24, baseType: !1772, size: 16384, offset: 192)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1773, size: 16384, elements: !185)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1675, line: 49, size: 256, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1773, file: !1675, line: 50, baseType: !1776, size: 256)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1675, line: 35, size: 256, elements: !1777)
!1777 = !{!1778, !1785, !1786, !1792}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1776, file: !1675, line: 37, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1780, line: 19, baseType: !1781)
!1780 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1780, line: 18, baseType: !1783)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !164}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1776, file: !1675, line: 38, baseType: !230, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1776, file: !1675, line: 44, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1780, line: 22, baseType: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1780, line: 21, baseType: !1790)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1776, file: !1675, line: 46, baseType: !1679, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1126, file: !1127, line: 971, baseType: !1679, size: 64, offset: 9344)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1126, file: !1127, line: 972, baseType: !1679, size: 64, offset: 9408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1126, file: !1127, line: 974, baseType: !1679, size: 64, offset: 9472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1126, file: !1127, line: 975, baseType: !1674, size: 192, offset: 9536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1126, file: !1127, line: 976, baseType: !230, size: 64, offset: 9728)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1126, file: !1127, line: 977, baseType: !227, size: 64, offset: 9792)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1126, file: !1127, line: 978, baseType: !7, size: 32, offset: 9856)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1126, file: !1127, line: 980, baseType: !274, size: 64, offset: 9920)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1126, file: !1127, line: 989, baseType: !1802, size: 128, offset: 9984)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1803, line: 35, size: 128, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1802, file: !1803, line: 36, baseType: !164, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1802, file: !1803, line: 37, baseType: !656, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1802, file: !1803, line: 38, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1803, line: 23, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1126, file: !1127, line: 992, baseType: !327, size: 64, offset: 10112)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1126, file: !1127, line: 993, baseType: !327, size: 64, offset: 10176)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1126, file: !1127, line: 996, baseType: !138, offset: 10240)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1126, file: !1127, line: 999, baseType: !689, offset: 10240)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1126, file: !1127, line: 1001, baseType: !1815, size: 64, offset: 10240)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1127, line: 636, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1815, file: !1127, line: 637, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1126, file: !1127, line: 1005, baseType: !661, size: 128, offset: 10304)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1126, file: !1127, line: 1007, baseType: !1125, size: 64, offset: 10432)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1126, file: !1127, line: 1009, baseType: !1822, size: 64, offset: 10496)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1127, line: 1009, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1126, file: !1127, line: 1043, baseType: !108, size: 64, offset: 10560)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1126, file: !1127, line: 1046, baseType: !1826, size: 64, offset: 10624)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1127, line: 41, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1126, file: !1127, line: 1050, baseType: !1829, size: 64, offset: 10688)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1127, line: 42, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1126, file: !1127, line: 1054, baseType: !1832, size: 64, offset: 10752)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1127, line: 55, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1126, file: !1127, line: 1056, baseType: !1835, size: 64, offset: 10816)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1127, line: 40, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1126, file: !1127, line: 1058, baseType: !1838, size: 64, offset: 10880)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1840, line: 99, size: 704, elements: !1841)
!1840 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1867, !1868}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1839, file: !1840, line: 100, baseType: !680, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1839, file: !1840, line: 101, baseType: !656, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1839, file: !1840, line: 102, baseType: !656, size: 32, offset: 96)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !1840, line: 105, baseType: !138, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1839, file: !1840, line: 107, baseType: !222, size: 16, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1839, file: !1840, line: 109, baseType: !648, size: 128, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1839, file: !1840, line: 110, baseType: !1849, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1840, line: 73, size: 448, elements: !1851)
!1851 = !{!1852, !1855, !1856, !1861, !1866}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1850, file: !1840, line: 74, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1840, line: 74, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1850, file: !1840, line: 75, baseType: !1838, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1840, line: 83, baseType: !1857, size: 128, offset: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1840, line: 83, size: 128, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1857, file: !1840, line: 84, baseType: !125, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1857, file: !1840, line: 85, baseType: !844, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1840, line: 87, baseType: !1862, size: 128, offset: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1840, line: 87, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1862, file: !1840, line: 88, baseType: !548, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1862, file: !1840, line: 89, baseType: !271, size: 128, align: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1840, line: 92, baseType: !7, size: 32, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1839, file: !1840, line: 111, baseType: !544, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1839, file: !1840, line: 113, baseType: !1869, size: 256, offset: 448)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1870, line: 102, size: 256, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1869, file: !1870, line: 103, baseType: !680, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1869, file: !1870, line: 104, baseType: !125, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1869, file: !1870, line: 105, baseType: !1875, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1870, line: 21, baseType: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1126, file: !1127, line: 1061, baseType: !1881, size: 64, offset: 10944)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1127, line: 43, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1126, file: !1127, line: 1064, baseType: !230, size: 64, offset: 11008)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1126, file: !1127, line: 1065, baseType: !1885, size: 64, offset: 11072)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1675, line: 14, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1675, line: 12, size: 384, elements: !1888)
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1675, line: 13, baseType: !1890, size: 384)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1675, line: 13, size: 384, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1890, file: !1675, line: 13, baseType: !164, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1890, file: !1675, line: 13, baseType: !164, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1890, file: !1675, line: 13, baseType: !164, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1890, file: !1675, line: 13, baseType: !1896, size: 256, offset: 128)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1897, line: 32, size: 256, elements: !1898)
!1897 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1904, !1917, !1923, !1932, !1952, !1957}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1896, file: !1897, line: 37, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 34, size: 64, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1900, file: !1897, line: 35, baseType: !1369, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1900, file: !1897, line: 36, baseType: !347, size: 32, offset: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1896, file: !1897, line: 45, baseType: !1905, size: 192)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 40, size: 192, elements: !1906)
!1906 = !{!1907, !1909, !1910, !1916}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1905, file: !1897, line: 41, baseType: !1908, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !213, line: 95, baseType: !164)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1905, file: !1897, line: 42, baseType: !164, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1905, file: !1897, line: 43, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1897, line: 11, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1897, line: 8, size: 64, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1912, file: !1897, line: 9, baseType: !164, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1912, file: !1897, line: 10, baseType: !108, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1905, file: !1897, line: 44, baseType: !164, size: 32, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1896, file: !1897, line: 52, baseType: !1918, size: 128)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 48, size: 128, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1918, file: !1897, line: 49, baseType: !1369, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1918, file: !1897, line: 50, baseType: !347, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1918, file: !1897, line: 51, baseType: !1911, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1896, file: !1897, line: 61, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 55, size: 256, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1931}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1924, file: !1897, line: 56, baseType: !1369, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1924, file: !1897, line: 57, baseType: !347, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1924, file: !1897, line: 58, baseType: !164, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1924, file: !1897, line: 59, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !213, line: 94, baseType: !214)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1924, file: !1897, line: 60, baseType: !1930, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1896, file: !1897, line: 95, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 64, size: 256, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1933, file: !1897, line: 65, baseType: !108, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !1897, line: 77, baseType: !1937, size: 192, offset: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1897, line: 77, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1947}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1937, file: !1897, line: 82, baseType: !1114, size: 16)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1937, file: !1897, line: 88, baseType: !1941, size: 192)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1897, line: 84, size: 192, elements: !1942)
!1942 = !{!1943, !1945, !1946}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1941, file: !1897, line: 85, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !1239)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1941, file: !1897, line: 86, baseType: !108, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1941, file: !1897, line: 87, baseType: !108, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1937, file: !1897, line: 93, baseType: !1948, size: 96)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1897, line: 90, size: 96, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1948, file: !1897, line: 91, baseType: !1944, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1948, file: !1897, line: 92, baseType: !323, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1896, file: !1897, line: 101, baseType: !1953, size: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 98, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1953, file: !1897, line: 99, baseType: !215, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1953, file: !1897, line: 100, baseType: !164, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1896, file: !1897, line: 108, baseType: !1958, size: 128)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 104, size: 128, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1958, file: !1897, line: 105, baseType: !108, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1958, file: !1897, line: 106, baseType: !164, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1958, file: !1897, line: 107, baseType: !7, size: 32, offset: 96)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1126, file: !1127, line: 1067, baseType: !1748, offset: 11136)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1126, file: !1127, line: 1099, baseType: !1965, size: 64, offset: 11136)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1127, line: 56, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1126, file: !1127, line: 1103, baseType: !125, size: 128, offset: 11200)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1126, file: !1127, line: 1104, baseType: !1969, size: 64, offset: 11328)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1127, line: 46, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1126, file: !1127, line: 1105, baseType: !1082, size: 192, offset: 11392)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1126, file: !1127, line: 1106, baseType: !7, size: 32, offset: 11584)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1126, file: !1127, line: 1109, baseType: !1974, size: 128, offset: 11648)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 128, elements: !1478)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1127, line: 51, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1126, file: !1127, line: 1110, baseType: !1082, size: 192, offset: 11776)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1126, file: !1127, line: 1111, baseType: !125, size: 128, offset: 11968)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1126, file: !1127, line: 1173, baseType: !1980, size: 64, offset: 12096)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1982, line: 62, size: 256, align: 256, elements: !1983)
!1982 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !1985, !1986, !1991}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1981, file: !1982, line: 75, baseType: !323, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1981, file: !1982, line: 90, baseType: !323, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1981, file: !1982, line: 124, baseType: !1987, size: 64, offset: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !1982, line: 109, size: 64, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1987, file: !1982, line: 110, baseType: !328, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1987, file: !1982, line: 112, baseType: !328, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1982, line: 144, baseType: !323, size: 32, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1126, file: !1127, line: 1174, baseType: !321, size: 32, offset: 12160)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1126, file: !1127, line: 1179, baseType: !230, size: 64, offset: 12224)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1126, file: !1127, line: 1182, baseType: !1995, size: 128, offset: 12288)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1060, line: 76, size: 128, elements: !1996)
!1996 = !{!1997, !2002, !2003}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1995, file: !1060, line: 85, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1999, line: 7, size: 64, elements: !2000)
!1999 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1998, file: !1999, line: 12, baseType: !1276, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1995, file: !1060, line: 88, baseType: !396, size: 8, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1995, file: !1060, line: 95, baseType: !396, size: 8, offset: 72)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1127, line: 1184, baseType: !2005, size: 128, offset: 12416)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1127, line: 1184, size: 128, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2005, file: !1127, line: 1185, baseType: !1139, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2005, file: !1127, line: 1186, baseType: !271, size: 128, align: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1126, file: !1127, line: 1190, baseType: !2010, size: 64, offset: 12544)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1127, line: 53, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1126, file: !1127, line: 1192, baseType: !2013, size: 128, offset: 12608)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1060, line: 64, size: 128, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2013, file: !1060, line: 65, baseType: !630, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2013, file: !1060, line: 67, baseType: !323, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2013, file: !1060, line: 68, baseType: !323, size: 32, offset: 96)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1126, file: !1127, line: 1206, baseType: !164, size: 32, offset: 12736)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1126, file: !1127, line: 1207, baseType: !164, size: 32, offset: 12768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1126, file: !1127, line: 1209, baseType: !230, size: 64, offset: 12800)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1126, file: !1127, line: 1219, baseType: !327, size: 64, offset: 12864)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1126, file: !1127, line: 1220, baseType: !327, size: 64, offset: 12928)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1126, file: !1127, line: 1317, baseType: !164, size: 32, offset: 12992)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1126, file: !1127, line: 1319, baseType: !1125, size: 64, offset: 13056)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1126, file: !1127, line: 1322, baseType: !2026, size: 64, offset: 13120)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2028, line: 56, size: 512, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2038}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2027, file: !2028, line: 57, baseType: !2026, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2027, file: !2028, line: 58, baseType: !108, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2027, file: !2028, line: 59, baseType: !230, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2027, file: !2028, line: 60, baseType: !230, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2027, file: !2028, line: 61, baseType: !729, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2027, file: !2028, line: 62, baseType: !7, size: 32, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2027, file: !2028, line: 63, baseType: !2037, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !107, line: 153, baseType: !327)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2027, file: !2028, line: 64, baseType: !2039, size: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1126, file: !1127, line: 1326, baseType: !1139, size: 32, offset: 13184)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1126, file: !1127, line: 1342, baseType: !108, size: 64, offset: 13248)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1126, file: !1127, line: 1343, baseType: !328, size: 64, offset: 13312)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1126, file: !1127, line: 1344, baseType: !327, size: 64, offset: 13376)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1126, file: !1127, line: 1345, baseType: !328, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1126, file: !1127, line: 1346, baseType: !328, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1126, file: !1127, line: 1347, baseType: !328, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1126, file: !1127, line: 1348, baseType: !271, size: 128, align: 64, offset: 13504)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1126, file: !1127, line: 1358, baseType: !2050, size: 34816, offset: 13824)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2051, line: 485, size: 34816, elements: !2052)
!2051 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2082, !2083, !2084, !2085, !2086, !2087, !2090, !2091, !2092}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2050, file: !2051, line: 487, baseType: !2054, size: 192)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2055, size: 192, elements: !181)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2056, line: 16, size: 64, elements: !2057)
!2056 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2057 = !{!2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2055, file: !2056, line: 17, baseType: !768, size: 16)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2055, file: !2056, line: 18, baseType: !768, size: 16, offset: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2055, file: !2056, line: 19, baseType: !768, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2055, file: !2056, line: 19, baseType: !768, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2055, file: !2056, line: 19, baseType: !768, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2055, file: !2056, line: 19, baseType: !768, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2055, file: !2056, line: 19, baseType: !768, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2055, file: !2056, line: 20, baseType: !768, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2055, file: !2056, line: 20, baseType: !768, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2055, file: !2056, line: 20, baseType: !768, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2055, file: !2056, line: 20, baseType: !768, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2055, file: !2056, line: 20, baseType: !768, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2055, file: !2056, line: 20, baseType: !768, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2050, file: !2051, line: 491, baseType: !230, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2050, file: !2051, line: 495, baseType: !222, size: 16, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2050, file: !2051, line: 496, baseType: !222, size: 16, offset: 272)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2050, file: !2051, line: 497, baseType: !222, size: 16, offset: 288)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2050, file: !2051, line: 498, baseType: !222, size: 16, offset: 304)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2050, file: !2051, line: 502, baseType: !230, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2050, file: !2051, line: 503, baseType: !230, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2050, file: !2051, line: 514, baseType: !2079, size: 256, offset: 448)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2080, size: 256, elements: !1064)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2051, line: 483, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2050, file: !2051, line: 516, baseType: !230, size: 64, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2050, file: !2051, line: 518, baseType: !230, size: 64, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2050, file: !2051, line: 520, baseType: !230, size: 64, offset: 832)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2050, file: !2051, line: 521, baseType: !230, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2050, file: !2051, line: 522, baseType: !230, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2050, file: !2051, line: 528, baseType: !2088, size: 64, offset: 1024)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2051, line: 10, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2050, file: !2051, line: 535, baseType: !230, size: 64, offset: 1088)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2050, file: !2051, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2050, file: !2051, line: 540, baseType: !2093, size: 33280, offset: 1536)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2094, line: 317, size: 33280, elements: !2095)
!2094 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096, !2097, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2093, file: !2094, line: 330, baseType: !7, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2093, file: !2094, line: 337, baseType: !230, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2093, file: !2094, line: 348, baseType: !2099, size: 32768, offset: 512)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2094, line: 304, size: 32768, elements: !2100)
!2100 = !{!2101, !2116, !2155, !2205, !2218}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2099, file: !2094, line: 305, baseType: !2102, size: 896)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2094, line: 12, size: 896, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2115}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2102, file: !2094, line: 13, baseType: !321, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2102, file: !2094, line: 14, baseType: !321, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2102, file: !2094, line: 15, baseType: !321, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2102, file: !2094, line: 16, baseType: !321, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2102, file: !2094, line: 17, baseType: !321, size: 32, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2102, file: !2094, line: 18, baseType: !321, size: 32, offset: 160)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2102, file: !2094, line: 19, baseType: !321, size: 32, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2102, file: !2094, line: 22, baseType: !2112, size: 640, offset: 224)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 640, elements: !2113)
!2113 = !{!2114}
!2114 = !DISubrange(count: 20)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2102, file: !2094, line: 25, baseType: !321, size: 32, offset: 864)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2099, file: !2094, line: 306, baseType: !2117, size: 4096, align: 128)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2094, line: 34, size: 4096, align: 128, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2138, !2139, !2140, !2144, !2146, !2150}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2117, file: !2094, line: 35, baseType: !768, size: 16)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2117, file: !2094, line: 36, baseType: !768, size: 16, offset: 16)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2117, file: !2094, line: 37, baseType: !768, size: 16, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2117, file: !2094, line: 38, baseType: !768, size: 16, offset: 48)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !2094, line: 39, baseType: !2124, size: 128, offset: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2094, line: 39, size: 128, elements: !2125)
!2125 = !{!2126, !2131}
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2094, line: 40, baseType: !2127, size: 128)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2124, file: !2094, line: 40, size: 128, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2127, file: !2094, line: 41, baseType: !327, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2127, file: !2094, line: 42, baseType: !327, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2094, line: 44, baseType: !2132, size: 128)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2124, file: !2094, line: 44, size: 128, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2132, file: !2094, line: 45, baseType: !321, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2132, file: !2094, line: 46, baseType: !321, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2132, file: !2094, line: 47, baseType: !321, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2132, file: !2094, line: 48, baseType: !321, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2117, file: !2094, line: 51, baseType: !321, size: 32, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2117, file: !2094, line: 52, baseType: !321, size: 32, offset: 224)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2117, file: !2094, line: 55, baseType: !2141, size: 1024, offset: 256)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1024, elements: !2142)
!2142 = !{!2143}
!2143 = !DISubrange(count: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2117, file: !2094, line: 58, baseType: !2145, size: 2048, offset: 1280)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 2048, elements: !185)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2117, file: !2094, line: 60, baseType: !2147, size: 384, offset: 3328)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 384, elements: !2148)
!2148 = !{!2149}
!2149 = !DISubrange(count: 12)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !2094, line: 62, baseType: !2151, size: 384, offset: 3712)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2094, line: 62, size: 384, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2151, file: !2094, line: 63, baseType: !2147, size: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2151, file: !2094, line: 64, baseType: !2147, size: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2099, file: !2094, line: 307, baseType: !2156, size: 1088)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2094, line: 79, size: 1088, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2204}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2156, file: !2094, line: 80, baseType: !321, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2156, file: !2094, line: 81, baseType: !321, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2156, file: !2094, line: 82, baseType: !321, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2156, file: !2094, line: 83, baseType: !321, size: 32, offset: 96)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2156, file: !2094, line: 84, baseType: !321, size: 32, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2156, file: !2094, line: 85, baseType: !321, size: 32, offset: 160)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2156, file: !2094, line: 86, baseType: !321, size: 32, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2156, file: !2094, line: 88, baseType: !2112, size: 640, offset: 224)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2156, file: !2094, line: 89, baseType: !1261, size: 8, offset: 864)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2156, file: !2094, line: 90, baseType: !1261, size: 8, offset: 872)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2156, file: !2094, line: 91, baseType: !1261, size: 8, offset: 880)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2156, file: !2094, line: 92, baseType: !1261, size: 8, offset: 888)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2156, file: !2094, line: 93, baseType: !1261, size: 8, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2156, file: !2094, line: 94, baseType: !1261, size: 8, offset: 904)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2156, file: !2094, line: 95, baseType: !2173, size: 64, offset: 960)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2175, line: 11, size: 128, elements: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2174, file: !2175, line: 12, baseType: !215, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2174, file: !2175, line: 13, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2181, line: 56, size: 1344, elements: !2182)
!2181 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2180, file: !2181, line: 61, baseType: !230, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2180, file: !2181, line: 62, baseType: !230, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2180, file: !2181, line: 63, baseType: !230, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2180, file: !2181, line: 64, baseType: !230, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2180, file: !2181, line: 65, baseType: !230, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2180, file: !2181, line: 66, baseType: !230, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2180, file: !2181, line: 68, baseType: !230, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2180, file: !2181, line: 69, baseType: !230, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2180, file: !2181, line: 70, baseType: !230, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2180, file: !2181, line: 71, baseType: !230, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2180, file: !2181, line: 72, baseType: !230, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2180, file: !2181, line: 73, baseType: !230, size: 64, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2180, file: !2181, line: 74, baseType: !230, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2180, file: !2181, line: 75, baseType: !230, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2180, file: !2181, line: 76, baseType: !230, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2180, file: !2181, line: 81, baseType: !230, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2180, file: !2181, line: 83, baseType: !230, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2180, file: !2181, line: 84, baseType: !230, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2180, file: !2181, line: 85, baseType: !230, size: 64, offset: 1152)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2180, file: !2181, line: 86, baseType: !230, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2180, file: !2181, line: 87, baseType: !230, size: 64, offset: 1280)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2156, file: !2094, line: 96, baseType: !321, size: 32, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2099, file: !2094, line: 308, baseType: !2206, size: 4608, align: 512)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2094, line: 289, size: 4608, align: 512, elements: !2207)
!2207 = !{!2208, !2209, !2216}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2206, file: !2094, line: 290, baseType: !2117, size: 4096, align: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2206, file: !2094, line: 291, baseType: !2210, size: 512, offset: 4096)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2094, line: 268, size: 512, elements: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2210, file: !2094, line: 269, baseType: !327, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2210, file: !2094, line: 270, baseType: !327, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2210, file: !2094, line: 271, baseType: !2215, size: 384, offset: 128)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 384, elements: !1534)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2206, file: !2094, line: 292, baseType: !2217, offset: 4608)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, elements: !1632)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2099, file: !2094, line: 309, baseType: !2219, size: 32768)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, size: 32768, elements: !2220)
!2220 = !{!2221}
!2221 = !DISubrange(count: 4096)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1122, file: !632, line: 378, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1118, file: !632, line: 384, baseType: !1411, size: 192, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !887, file: !632, line: 500, baseType: !138, offset: 6656)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !887, file: !632, line: 501, baseType: !2227, size: 64, offset: 6656)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !632, line: 387, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !887, file: !632, line: 516, baseType: !1622, size: 64, offset: 6720)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !887, file: !632, line: 519, baseType: !258, size: 64, offset: 6784)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !887, file: !632, line: 521, baseType: !2232, size: 64, offset: 6848)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !632, line: 521, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !887, file: !632, line: 545, baseType: !656, size: 32, offset: 6912)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !887, file: !632, line: 548, baseType: !396, size: 8, offset: 6944)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !887, file: !632, line: 550, baseType: !2237, offset: 6952)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2238, line: 142, elements: !152)
!2238 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !887, file: !632, line: 554, baseType: !1869, size: 256, offset: 6976)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !887, file: !632, line: 557, baseType: !321, size: 32, offset: 7232)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !884, file: !632, line: 565, baseType: !2242, offset: 7296)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: -1)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !880, file: !632, line: 151, baseType: !656, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !873, file: !632, line: 156, baseType: !138, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 159, baseType: !2248, size: 128)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 159, size: 128, elements: !2249)
!2249 = !{!2250, !2314}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2248, file: !632, line: 161, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2253)
!2253 = !{!2254, !2264, !2285, !2286, !2287, !2288, !2289, !2301, !2302, !2303}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2252, file: !31, line: 111, baseType: !2255, size: 384)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2256)
!2256 = !{!2257, !2259, !2260, !2261, !2262, !2263}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2255, file: !31, line: 20, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2255, file: !31, line: 21, baseType: !2258, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2255, file: !31, line: 22, baseType: !2258, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2255, file: !31, line: 23, baseType: !230, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2255, file: !31, line: 24, baseType: !230, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2255, file: !31, line: 25, baseType: !230, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2252, file: !31, line: 112, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2267, line: 105, size: 128, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2266, file: !2267, line: 110, baseType: !230, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2266, file: !2267, line: 118, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2267, line: 95, size: 448, elements: !2273)
!2273 = !{!2274, !2275, !2280, !2281, !2282, !2283, !2284}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2272, file: !2267, line: 96, baseType: !680, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2272, file: !2267, line: 97, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2267, line: 60, baseType: !2278)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2265}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2272, file: !2267, line: 98, baseType: !2276, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2272, file: !2267, line: 99, baseType: !396, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2272, file: !2267, line: 100, baseType: !396, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2272, file: !2267, line: 101, baseType: !271, size: 128, align: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2272, file: !2267, line: 102, baseType: !2265, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2252, file: !31, line: 113, baseType: !2266, size: 128, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2252, file: !31, line: 114, baseType: !1411, size: 192, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2252, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2252, file: !31, line: 117, baseType: !2290, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2293)
!2293 = !{!2294, !2295, !2299, !2300}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2292, file: !31, line: 73, baseType: !749, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2292, file: !31, line: 78, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2251}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2292, file: !31, line: 83, baseType: !2296, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2292, file: !31, line: 89, baseType: !936, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2252, file: !31, line: 118, baseType: !108, size: 64, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2252, file: !31, line: 119, baseType: !164, size: 32, offset: 960)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !31, line: 120, baseType: !2304, size: 128, offset: 1024)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2252, file: !31, line: 120, size: 128, elements: !2305)
!2305 = !{!2306, !2312}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2304, file: !31, line: 121, baseType: !2307, size: 128)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2308, line: 6, size: 128, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2307, file: !2308, line: 7, baseType: !327, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2307, file: !2308, line: 8, baseType: !327, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2304, file: !31, line: 122, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2307, elements: !1632)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2248, file: !632, line: 162, baseType: !108, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !636, file: !632, line: 176, baseType: !271, size: 128, align: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 179, baseType: !2317, size: 32, offset: 384)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 179, size: 32, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2317, file: !632, line: 184, baseType: !656, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2317, file: !632, line: 192, baseType: !7, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2317, file: !632, line: 194, baseType: !7, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2317, file: !632, line: 195, baseType: !164, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !631, file: !632, line: 199, baseType: !656, size: 32, offset: 416)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !566, file: !44, line: 1964, baseType: !2325, size: 64, offset: 1344)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!215, !505, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2330, line: 12, size: 256, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2331 = !{!2332, !2333, !2334, !2335, !2336}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2329, file: !2330, line: 13, baseType: !106, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2329, file: !2330, line: 16, baseType: !164, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2329, file: !2330, line: 23, baseType: !230, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2329, file: !2330, line: 30, baseType: !230, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2329, file: !2330, line: 33, baseType: !2337, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !632, line: 27, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !566, file: !44, line: 1966, baseType: !2325, size: 64, offset: 1408)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !506, file: !44, line: 1424, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2344)
!2344 = !{!2345, !2391, !2395, !2399, !2400, !2401, !2402, !2403, !2408, !2413, !2417}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2343, file: !38, line: 323, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!164, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2376, !2377, !2378}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2350, file: !38, line: 295, baseType: !548, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2350, file: !38, line: 296, baseType: !125, size: 128, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2350, file: !38, line: 297, baseType: !125, size: 128, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2350, file: !38, line: 298, baseType: !125, size: 128, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2350, file: !38, line: 299, baseType: !1082, size: 192, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2350, file: !38, line: 300, baseType: !138, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2350, file: !38, line: 301, baseType: !656, size: 32, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2350, file: !38, line: 302, baseType: !505, size: 64, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2350, file: !38, line: 303, baseType: !2361, size: 64, offset: 832)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2362)
!2362 = !{!2363, !2375}
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2361, file: !38, line: 69, baseType: !2364, size: 32)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2361, file: !38, line: 69, size: 32, elements: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2364, file: !38, line: 70, baseType: !341, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2364, file: !38, line: 71, baseType: !349, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2364, file: !38, line: 72, baseType: !2369, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2370, line: 24, baseType: !2371)
!2370 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2370, line: 22, size: 32, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2371, file: !2370, line: 23, baseType: !2374, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2370, line: 20, baseType: !347)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2361, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2350, file: !38, line: 304, baseType: !437, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2350, file: !38, line: 305, baseType: !230, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2350, file: !38, line: 306, baseType: !2379, size: 576, offset: 1024)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2380)
!2380 = !{!2381, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2379, file: !38, line: 206, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !439)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2379, file: !38, line: 207, baseType: !2382, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2379, file: !38, line: 208, baseType: !2382, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2379, file: !38, line: 209, baseType: !2382, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2379, file: !38, line: 210, baseType: !2382, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2379, file: !38, line: 211, baseType: !2382, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2379, file: !38, line: 212, baseType: !2382, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2379, file: !38, line: 213, baseType: !445, size: 64, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2379, file: !38, line: 214, baseType: !445, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2343, file: !38, line: 324, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!2349, !505, !164}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2343, file: !38, line: 325, baseType: !2396, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !2349}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2343, file: !38, line: 326, baseType: !2346, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2343, file: !38, line: 327, baseType: !2346, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2343, file: !38, line: 328, baseType: !2346, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2343, file: !38, line: 329, baseType: !594, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2343, file: !38, line: 332, baseType: !2404, size: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!2407, !335}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2343, file: !38, line: 333, baseType: !2409, size: 64, offset: 512)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!164, !335, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2343, file: !38, line: 335, baseType: !2414, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!164, !335, !2407}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2343, file: !38, line: 337, baseType: !2418, size: 64, offset: 640)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!164, !505, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !506, file: !44, line: 1425, baseType: !2423, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2426)
!2426 = !{!2427, !2431, !2432, !2436, !2437, !2438, !2453, !2476, !2480, !2481, !2504}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2425, file: !38, line: 429, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!164, !505, !164, !164, !455}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2425, file: !38, line: 430, baseType: !594, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2425, file: !38, line: 431, baseType: !2433, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!164, !505, !7}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2425, file: !38, line: 432, baseType: !2433, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2425, file: !38, line: 433, baseType: !594, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2425, file: !38, line: 434, baseType: !2439, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!164, !505, !164, !2442}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2443, file: !38, line: 416, baseType: !164, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2443, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2443, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2443, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2443, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2443, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2443, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2443, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2425, file: !38, line: 435, baseType: !2454, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!164, !505, !2361, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2458, file: !38, line: 344, baseType: !164, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2458, file: !38, line: 345, baseType: !327, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2458, file: !38, line: 346, baseType: !327, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2458, file: !38, line: 347, baseType: !327, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2458, file: !38, line: 348, baseType: !327, size: 64, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2458, file: !38, line: 349, baseType: !327, size: 64, offset: 320)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2458, file: !38, line: 350, baseType: !327, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2458, file: !38, line: 351, baseType: !686, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2458, file: !38, line: 353, baseType: !686, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2458, file: !38, line: 354, baseType: !164, size: 32, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2458, file: !38, line: 355, baseType: !164, size: 32, offset: 608)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2458, file: !38, line: 356, baseType: !327, size: 64, offset: 640)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2458, file: !38, line: 357, baseType: !327, size: 64, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2458, file: !38, line: 358, baseType: !327, size: 64, offset: 768)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2458, file: !38, line: 359, baseType: !686, size: 64, offset: 832)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2458, file: !38, line: 360, baseType: !164, size: 32, offset: 896)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2425, file: !38, line: 436, baseType: !2477, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!164, !505, !2421, !2457}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2425, file: !38, line: 438, baseType: !2454, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2425, file: !38, line: 439, baseType: !2482, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!164, !505, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2487)
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2486, file: !38, line: 410, baseType: !7, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2486, file: !38, line: 411, baseType: !2490, size: 1344, offset: 64)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2491, size: 1344, elements: !181)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2503}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2491, file: !38, line: 396, baseType: !7, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2491, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2491, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2491, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2491, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2491, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2491, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2491, file: !38, line: 404, baseType: !329, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2491, file: !38, line: 405, baseType: !2502, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !107, line: 126, baseType: !327)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2491, file: !38, line: 406, baseType: !2502, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2425, file: !38, line: 440, baseType: !2433, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !506, file: !44, line: 1426, baseType: !2506, size: 64, offset: 576)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2508)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !506, file: !44, line: 1427, baseType: !230, size: 64, offset: 640)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !506, file: !44, line: 1428, baseType: !230, size: 64, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !506, file: !44, line: 1429, baseType: !230, size: 64, offset: 768)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !506, file: !44, line: 1430, baseType: !288, size: 64, offset: 832)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !506, file: !44, line: 1431, baseType: !676, size: 256, offset: 896)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !506, file: !44, line: 1432, baseType: !164, size: 32, offset: 1152)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !506, file: !44, line: 1433, baseType: !656, size: 32, offset: 1184)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !506, file: !44, line: 1437, baseType: !2517, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !506, file: !44, line: 1449, baseType: !2522, size: 64, offset: 1280)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !304, line: 34, size: 64, elements: !2523)
!2523 = !{!2524}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2522, file: !304, line: 35, baseType: !307, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !506, file: !44, line: 1450, baseType: !125, size: 128, offset: 1344)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !506, file: !44, line: 1451, baseType: !2527, size: 64, offset: 1472)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !506, file: !44, line: 1452, baseType: !1835, size: 64, offset: 1536)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !506, file: !44, line: 1453, baseType: !2531, size: 64, offset: 1600)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !506, file: !44, line: 1454, baseType: !548, size: 128, offset: 1664)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !506, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !506, file: !44, line: 1456, baseType: !2536, size: 2432, offset: 1856)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2542, !2574}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2536, file: !38, line: 519, baseType: !7, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2536, file: !38, line: 520, baseType: !676, size: 256, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2536, file: !38, line: 521, baseType: !2541, size: 192, offset: 320)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !181)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2536, file: !38, line: 522, baseType: !2543, size: 1728, offset: 512)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 1728, elements: !181)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2545)
!2545 = !{!2546, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2544, file: !38, line: 223, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2549)
!2549 = !{!2550, !2551, !2564, !2565}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2548, file: !38, line: 444, baseType: !164, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2548, file: !38, line: 445, baseType: !2552, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2554, file: !38, line: 311, baseType: !594, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2554, file: !38, line: 312, baseType: !594, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2554, file: !38, line: 313, baseType: !594, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2554, file: !38, line: 314, baseType: !594, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2554, file: !38, line: 315, baseType: !2346, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2554, file: !38, line: 316, baseType: !2346, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2554, file: !38, line: 317, baseType: !2346, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2554, file: !38, line: 318, baseType: !2418, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2548, file: !38, line: 446, baseType: !539, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2548, file: !38, line: 447, baseType: !2547, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2544, file: !38, line: 224, baseType: !164, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2544, file: !38, line: 226, baseType: !125, size: 128, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2544, file: !38, line: 227, baseType: !230, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2544, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2544, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2544, file: !38, line: 230, baseType: !2382, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2544, file: !38, line: 231, baseType: !2382, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2544, file: !38, line: 232, baseType: !108, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2536, file: !38, line: 523, baseType: !2575, size: 192, offset: 2240)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 192, elements: !181)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !506, file: !44, line: 1458, baseType: !2577, size: 2112, offset: 4288)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2578)
!2578 = !{!2579, !2580, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2577, file: !44, line: 1411, baseType: !164, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2577, file: !44, line: 1412, baseType: !1390, size: 128, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2577, file: !44, line: 1413, baseType: !2582, size: 1920, offset: 192)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2583, size: 1920, elements: !181)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2584, line: 12, size: 640, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2585 = !{!2586, !2594, !2596, !2601, !2602}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2583, file: !2584, line: 13, baseType: !2587, size: 320)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2588, line: 17, size: 320, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2587, file: !2588, line: 18, baseType: !164, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2587, file: !2588, line: 19, baseType: !164, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2587, file: !2588, line: 20, baseType: !1390, size: 128, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2587, file: !2588, line: 22, baseType: !271, size: 128, align: 64, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2583, file: !2584, line: 14, baseType: !2595, size: 64, offset: 320)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2583, file: !2584, line: 15, baseType: !2597, size: 64, offset: 384)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2598, line: 16, size: 64, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2599 = !{!2600}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2597, file: !2598, line: 17, baseType: !1125, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2583, file: !2584, line: 16, baseType: !1390, size: 128, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2583, file: !2584, line: 17, baseType: !656, size: 32, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !506, file: !44, line: 1465, baseType: !108, size: 64, offset: 6400)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !506, file: !44, line: 1468, baseType: !321, size: 32, offset: 6464)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !506, file: !44, line: 1470, baseType: !445, size: 64, offset: 6528)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !506, file: !44, line: 1471, baseType: !445, size: 64, offset: 6592)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !506, file: !44, line: 1473, baseType: !323, size: 32, offset: 6656)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !506, file: !44, line: 1474, baseType: !2609, size: 64, offset: 6720)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !506, file: !44, line: 1477, baseType: !2612, size: 256, offset: 6784)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !2142)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !506, file: !44, line: 1478, baseType: !2614, size: 128, offset: 7040)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2615, line: 18, baseType: !2616)
!2615 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2615, line: 16, size: 128, elements: !2617)
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2616, file: !2615, line: 17, baseType: !2619, size: 128)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 128, elements: !1644)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !506, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !506, file: !44, line: 1481, baseType: !2622, size: 32, offset: 7200)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !107, line: 150, baseType: !7)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !506, file: !44, line: 1487, baseType: !1082, size: 192, offset: 7232)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !506, file: !44, line: 1493, baseType: !121, size: 64, offset: 7424)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !506, file: !44, line: 1495, baseType: !2626, size: 64, offset: 7488)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !286, line: 135, size: 1024, align: 512, elements: !2629)
!2629 = !{!2630, !2634, !2635, !2642, !2648, !2652, !2656, !2660, !2661, !2665, !2669, !2674, !2678}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2628, file: !286, line: 136, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!164, !288, !7}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2628, file: !286, line: 137, baseType: !2631, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2628, file: !286, line: 138, baseType: !2636, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!164, !2639, !2641}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2628, file: !286, line: 139, baseType: !2643, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!164, !2639, !7, !121, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2628, file: !286, line: 141, baseType: !2649, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!164, !2639}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2628, file: !286, line: 142, baseType: !2653, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!164, !288}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2628, file: !286, line: 143, baseType: !2657, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !288}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2628, file: !286, line: 144, baseType: !2657, size: 64, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2628, file: !286, line: 145, baseType: !2662, size: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !288, !335}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2628, file: !286, line: 146, baseType: !2666, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!180, !288, !180, !164}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2628, file: !286, line: 147, baseType: !2670, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!284, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2628, file: !286, line: 148, baseType: !2675, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!164, !455, !396}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2628, file: !286, line: 149, baseType: !2679, size: 64, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!288, !288, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !506, file: !44, line: 1500, baseType: !164, size: 32, offset: 7552)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !506, file: !44, line: 1502, baseType: !2686, size: 448, offset: 7616)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2330, line: 60, size: 448, elements: !2687)
!2687 = !{!2688, !2693, !2694, !2695, !2696, !2697, !2698}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2686, file: !2330, line: 61, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!230, !2692, !2328}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2686, file: !2330, line: 63, baseType: !2689, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2686, file: !2330, line: 66, baseType: !215, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2686, file: !2330, line: 67, baseType: !164, size: 32, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2686, file: !2330, line: 68, baseType: !7, size: 32, offset: 224)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2686, file: !2330, line: 71, baseType: !125, size: 128, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2686, file: !2330, line: 77, baseType: !2699, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !506, file: !44, line: 1505, baseType: !680, size: 64, offset: 8064)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !506, file: !44, line: 1508, baseType: !680, size: 64, offset: 8128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !506, file: !44, line: 1511, baseType: !164, size: 32, offset: 8192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !506, file: !44, line: 1514, baseType: !818, size: 32, offset: 8224)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !506, file: !44, line: 1517, baseType: !2705, size: 64, offset: 8256)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1870, line: 18, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !506, file: !44, line: 1518, baseType: !544, size: 64, offset: 8320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !506, file: !44, line: 1525, baseType: !1622, size: 64, offset: 8384)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !506, file: !44, line: 1532, baseType: !2710, size: 64, offset: 8448)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2711, line: 52, size: 64, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2710, file: !2711, line: 53, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2711, line: 40, size: 256, elements: !2716)
!2716 = !{!2717, !2718, !2723}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2715, file: !2711, line: 42, baseType: !138)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2715, file: !2711, line: 44, baseType: !2719, size: 192)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2711, line: 28, size: 192, elements: !2720)
!2720 = !{!2721, !2722}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2719, file: !2711, line: 29, baseType: !125, size: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2719, file: !2711, line: 31, baseType: !215, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2715, file: !2711, line: 49, baseType: !215, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !506, file: !44, line: 1533, baseType: !2710, size: 64, offset: 8512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !506, file: !44, line: 1534, baseType: !271, size: 128, align: 64, offset: 8576)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !506, file: !44, line: 1535, baseType: !1869, size: 256, offset: 8704)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !506, file: !44, line: 1537, baseType: !1082, size: 192, offset: 8960)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !506, file: !44, line: 1542, baseType: !164, size: 32, offset: 9152)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !506, file: !44, line: 1545, baseType: !138, offset: 9184)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !506, file: !44, line: 1546, baseType: !125, size: 128, offset: 9216)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !506, file: !44, line: 1548, baseType: !138, offset: 9344)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !506, file: !44, line: 1549, baseType: !125, size: 128, offset: 9344)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !336, file: !44, line: 624, baseType: !643, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !336, file: !44, line: 631, baseType: !230, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !44, line: 639, baseType: !2736, size: 32, offset: 384)
!2736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !44, line: 639, size: 32, elements: !2737)
!2737 = !{!2738, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2736, file: !44, line: 640, baseType: !2739, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2736, file: !44, line: 641, baseType: !7, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !336, file: !44, line: 643, baseType: !419, size: 32, offset: 416)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !336, file: !44, line: 644, baseType: !437, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !336, file: !44, line: 645, baseType: !441, size: 128, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !336, file: !44, line: 646, baseType: !441, size: 128, offset: 640)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !336, file: !44, line: 647, baseType: !441, size: 128, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !336, file: !44, line: 648, baseType: !138, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !336, file: !44, line: 649, baseType: !222, size: 16, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !336, file: !44, line: 650, baseType: !1261, size: 8, offset: 912)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !336, file: !44, line: 651, baseType: !1261, size: 8, offset: 920)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !336, file: !44, line: 652, baseType: !2502, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !336, file: !44, line: 659, baseType: !230, size: 64, offset: 1024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !336, file: !44, line: 660, baseType: !676, size: 256, offset: 1088)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !336, file: !44, line: 662, baseType: !230, size: 64, offset: 1344)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !336, file: !44, line: 663, baseType: !230, size: 64, offset: 1408)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !336, file: !44, line: 665, baseType: !548, size: 128, offset: 1472)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !336, file: !44, line: 666, baseType: !125, size: 128, offset: 1600)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !336, file: !44, line: 675, baseType: !125, size: 128, offset: 1728)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !336, file: !44, line: 676, baseType: !125, size: 128, offset: 1856)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !336, file: !44, line: 677, baseType: !125, size: 128, offset: 1984)
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !44, line: 678, baseType: !2761, size: 128, offset: 2112)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !44, line: 678, size: 128, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2761, file: !44, line: 679, baseType: !544, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2761, file: !44, line: 680, baseType: !271, size: 128, align: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !336, file: !44, line: 682, baseType: !682, size: 64, offset: 2240)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !336, file: !44, line: 683, baseType: !682, size: 64, offset: 2304)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !336, file: !44, line: 684, baseType: !656, size: 32, offset: 2368)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !336, file: !44, line: 685, baseType: !656, size: 32, offset: 2400)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !336, file: !44, line: 686, baseType: !656, size: 32, offset: 2432)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !336, file: !44, line: 688, baseType: !656, size: 32, offset: 2464)
!2771 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !44, line: 690, baseType: !2772, size: 64, offset: 2496)
!2772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !44, line: 690, size: 64, elements: !2773)
!2773 = !{!2774, !2997}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2772, file: !44, line: 691, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2777)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2778)
!2778 = !{!2779, !2780, !2784, !2789, !2793, !2794, !2795, !2799, !2812, !2813, !2821, !2825, !2826, !2830, !2831, !2835, !2840, !2841, !2845, !2849, !2957, !2961, !2962, !2966, !2967, !2971, !2975, !2980, !2984, !2988, !2992, !2996}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2777, file: !44, line: 1823, baseType: !539, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2777, file: !44, line: 1824, baseType: !2781, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!437, !258, !437, !164}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2777, file: !44, line: 1825, baseType: !2785, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!211, !258, !180, !227, !2788}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2777, file: !44, line: 1826, baseType: !2790, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!211, !258, !121, !227, !2788}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2777, file: !44, line: 1827, baseType: !753, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2777, file: !44, line: 1828, baseType: !753, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2777, file: !44, line: 1829, baseType: !2796, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!164, !756, !396}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2777, file: !44, line: 1830, baseType: !2800, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!164, !258, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2805)
!2805 = !{!2806, !2811}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2804, file: !44, line: 1777, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!164, !2803, !121, !164, !437, !327, !7}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2804, file: !44, line: 1778, baseType: !437, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2777, file: !44, line: 1831, baseType: !2800, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2777, file: !44, line: 1832, baseType: !2814, size: 64, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!2817, !258, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2818, line: 52, baseType: !7)
!2818 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !525, line: 27, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2777, file: !44, line: 1833, baseType: !2822, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!215, !258, !7, !230}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2777, file: !44, line: 1834, baseType: !2822, size: 64, offset: 704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2777, file: !44, line: 1835, baseType: !2827, size: 64, offset: 768)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!164, !258, !890}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2777, file: !44, line: 1836, baseType: !230, size: 64, offset: 832)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2777, file: !44, line: 1837, baseType: !2832, size: 64, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!164, !335, !258}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2777, file: !44, line: 1838, baseType: !2836, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!164, !258, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !108)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2777, file: !44, line: 1839, baseType: !2832, size: 64, offset: 1024)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2777, file: !44, line: 1840, baseType: !2842, size: 64, offset: 1088)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!164, !258, !437, !437, !164}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2777, file: !44, line: 1841, baseType: !2846, size: 64, offset: 1152)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!164, !164, !258, !164}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2777, file: !44, line: 1842, baseType: !2850, size: 64, offset: 1216)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!164, !258, !164, !2853}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2887, !2888, !2889, !2902, !2933}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2854, file: !44, line: 1063, baseType: !2853, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2854, file: !44, line: 1064, baseType: !125, size: 128, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2854, file: !44, line: 1065, baseType: !548, size: 128, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2854, file: !44, line: 1066, baseType: !125, size: 128, offset: 320)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2854, file: !44, line: 1069, baseType: !125, size: 128, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2854, file: !44, line: 1072, baseType: !2839, size: 64, offset: 576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2854, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2854, file: !44, line: 1074, baseType: !333, size: 8, offset: 672)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2854, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2854, file: !44, line: 1076, baseType: !164, size: 32, offset: 736)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2854, file: !44, line: 1077, baseType: !1390, size: 128, offset: 768)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2854, file: !44, line: 1078, baseType: !258, size: 64, offset: 896)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2854, file: !44, line: 1079, baseType: !437, size: 64, offset: 960)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2854, file: !44, line: 1080, baseType: !437, size: 64, offset: 1024)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2854, file: !44, line: 1082, baseType: !2871, size: 64, offset: 1088)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2873)
!2873 = !{!2874, !2882, !2883, !2884, !2885, !2886}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2872, file: !44, line: 1315, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2876, line: 20, baseType: !2877)
!2876 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2876, line: 11, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2877, file: !2876, line: 12, baseType: !2880)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !150, line: 33, baseType: !2881)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 31, elements: !152)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2872, file: !44, line: 1316, baseType: !164, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2872, file: !44, line: 1317, baseType: !164, size: 32, offset: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2872, file: !44, line: 1318, baseType: !2871, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2872, file: !44, line: 1319, baseType: !258, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2872, file: !44, line: 1320, baseType: !271, size: 128, align: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2854, file: !44, line: 1084, baseType: !230, size: 64, offset: 1152)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2854, file: !44, line: 1085, baseType: !230, size: 64, offset: 1216)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2854, file: !44, line: 1087, baseType: !2890, size: 64, offset: 1280)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2893)
!2893 = !{!2894, !2898}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2892, file: !44, line: 1012, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !2853, !2853}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2892, file: !44, line: 1013, baseType: !2899, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !2853}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2854, file: !44, line: 1088, baseType: !2903, size: 64, offset: 1344)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2905)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2906)
!2906 = !{!2907, !2911, !2915, !2916, !2920, !2924, !2928, !2932}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2905, file: !44, line: 1017, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!2839, !2839}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2905, file: !44, line: 1018, baseType: !2912, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2839}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2905, file: !44, line: 1019, baseType: !2899, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2905, file: !44, line: 1020, baseType: !2917, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!164, !2853, !164}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2905, file: !44, line: 1021, baseType: !2921, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!396, !2853}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2905, file: !44, line: 1022, baseType: !2925, size: 64, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!164, !2853, !164, !128}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2905, file: !44, line: 1023, baseType: !2929, size: 64, offset: 384)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2853, !730}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2905, file: !44, line: 1024, baseType: !2921, size: 64, offset: 448)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2854, file: !44, line: 1097, baseType: !2934, size: 256, offset: 1408)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !44, line: 1089, size: 256, elements: !2935)
!2935 = !{!2936, !2945, !2951}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2934, file: !44, line: 1090, baseType: !2937, size: 256)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2938, line: 10, size: 256, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !{!2940, !2941, !2944}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2937, file: !2938, line: 11, baseType: !321, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2937, file: !2938, line: 12, baseType: !2942, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2938, line: 5, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2937, file: !2938, line: 13, baseType: !125, size: 128, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2934, file: !44, line: 1091, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2938, line: 17, size: 64, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2946, file: !2938, line: 18, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2938, line: 16, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2934, file: !44, line: 1096, baseType: !2952, size: 192)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2934, file: !44, line: 1092, size: 192, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2952, file: !44, line: 1093, baseType: !125, size: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2952, file: !44, line: 1094, baseType: !164, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2952, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2777, file: !44, line: 1843, baseType: !2958, size: 64, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!211, !258, !630, !164, !227, !2788, !164}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2777, file: !44, line: 1844, baseType: !1010, size: 64, offset: 1344)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2777, file: !44, line: 1845, baseType: !2963, size: 64, offset: 1408)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!164, !164}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2777, file: !44, line: 1846, baseType: !2850, size: 64, offset: 1472)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2777, file: !44, line: 1847, baseType: !2968, size: 64, offset: 1536)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!211, !2010, !258, !2788, !227, !7}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2777, file: !44, line: 1848, baseType: !2972, size: 64, offset: 1600)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!211, !258, !2788, !2010, !227, !7}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2777, file: !44, line: 1849, baseType: !2976, size: 64, offset: 1664)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!164, !258, !215, !2979, !730}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2777, file: !44, line: 1850, baseType: !2981, size: 64, offset: 1728)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!215, !258, !164, !437, !437}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2777, file: !44, line: 1852, baseType: !2985, size: 64, offset: 1792)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !620, !258}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2777, file: !44, line: 1856, baseType: !2989, size: 64, offset: 1856)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!211, !258, !437, !258, !437, !227, !7}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2777, file: !44, line: 1858, baseType: !2993, size: 64, offset: 1920)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!437, !258, !437, !258, !437, !437, !7}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2777, file: !44, line: 1861, baseType: !2842, size: 64, offset: 1984)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2772, file: !44, line: 692, baseType: !573, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !336, file: !44, line: 694, baseType: !2999, size: 64, offset: 2560)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3000, file: !44, line: 1101, baseType: !138)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3000, file: !44, line: 1102, baseType: !125, size: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3000, file: !44, line: 1103, baseType: !125, size: 128, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3000, file: !44, line: 1104, baseType: !125, size: 128, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !336, file: !44, line: 695, baseType: !644, size: 1216, align: 64, offset: 2624)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !336, file: !44, line: 696, baseType: !125, size: 128, offset: 3840)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !44, line: 697, baseType: !3009, size: 64, offset: 3968)
!3009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !44, line: 697, size: 64, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3016, !3017}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3009, file: !44, line: 698, baseType: !2010, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3009, file: !44, line: 699, baseType: !2527, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3009, file: !44, line: 700, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3009, file: !44, line: 701, baseType: !180, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3009, file: !44, line: 702, baseType: !7, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !336, file: !44, line: 705, baseType: !323, size: 32, offset: 4032)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !336, file: !44, line: 708, baseType: !323, size: 32, offset: 4064)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !336, file: !44, line: 709, baseType: !2609, size: 64, offset: 4096)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !336, file: !44, line: 720, baseType: !108, size: 64, offset: 4160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !289, file: !286, line: 98, baseType: !3023, size: 256, offset: 448)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !2142)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !289, file: !286, line: 101, baseType: !3025, size: 32, offset: 704)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3026, line: 25, size: 32, elements: !3027)
!3026 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !3025, file: !3026, line: 26, baseType: !3029, size: 32)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3025, file: !3026, line: 26, size: 32, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !3029, file: !3026, line: 30, baseType: !3032, size: 32)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3029, file: !3026, line: 30, size: 32, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3032, file: !3026, line: 31, baseType: !138)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3032, file: !3026, line: 32, baseType: !164, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !289, file: !286, line: 102, baseType: !2626, size: 64, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !289, file: !286, line: 103, baseType: !505, size: 64, offset: 832)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !289, file: !286, line: 104, baseType: !230, size: 64, offset: 896)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !289, file: !286, line: 105, baseType: !108, size: 64, offset: 960)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !286, line: 107, baseType: !3041, size: 128, offset: 1024)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !286, line: 107, size: 128, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3041, file: !286, line: 108, baseType: !125, size: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3041, file: !286, line: 109, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !289, file: !286, line: 111, baseType: !125, size: 128, offset: 1152)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !289, file: !286, line: 112, baseType: !125, size: 128, offset: 1280)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !289, file: !286, line: 120, baseType: !3049, size: 128, offset: 1408)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !286, line: 116, size: 128, elements: !3050)
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3049, file: !286, line: 117, baseType: !548, size: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3049, file: !286, line: 118, baseType: !303, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3049, file: !286, line: 119, baseType: !271, size: 128, align: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !259, file: !44, line: 922, baseType: !335, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !259, file: !44, line: 923, baseType: !2775, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !259, file: !44, line: 929, baseType: !138, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !259, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !259, file: !44, line: 931, baseType: !680, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !259, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !259, file: !44, line: 933, baseType: !2622, size: 32, offset: 544)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !259, file: !44, line: 934, baseType: !1082, size: 192, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !259, file: !44, line: 935, baseType: !437, size: 64, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !259, file: !44, line: 936, baseType: !3064, size: 192, offset: 832)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3064, file: !44, line: 886, baseType: !2875)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3064, file: !44, line: 887, baseType: !1380, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3064, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3064, file: !44, line: 889, baseType: !341, size: 32, offset: 96)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3064, file: !44, line: 889, baseType: !341, size: 32, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3064, file: !44, line: 890, baseType: !164, size: 32, offset: 160)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !259, file: !44, line: 937, baseType: !1456, size: 64, offset: 1024)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !259, file: !44, line: 938, baseType: !3074, size: 256, offset: 1088)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3074, file: !44, line: 897, baseType: !230, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3074, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3074, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3074, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3074, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3074, file: !44, line: 904, baseType: !437, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !259, file: !44, line: 940, baseType: !327, size: 64, offset: 1344)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !259, file: !44, line: 945, baseType: !108, size: 64, offset: 1408)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !259, file: !44, line: 949, baseType: !125, size: 128, offset: 1472)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !259, file: !44, line: 950, baseType: !125, size: 128, offset: 1600)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !259, file: !44, line: 952, baseType: !643, size: 64, offset: 1728)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !259, file: !44, line: 953, baseType: !818, size: 32, offset: 1792)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !259, file: !44, line: 954, baseType: !818, size: 32, offset: 1824)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !249, file: !205, line: 174, baseType: !255, size: 64, offset: 320)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !249, file: !205, line: 176, baseType: !3091, size: 64, offset: 384)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!164, !258, !131, !248, !890}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !237, file: !205, line: 90, baseType: !232, size: 64, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !237, file: !205, line: 91, baseType: !3096, size: 64, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !195, file: !118, line: 143, baseType: !3098, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3101, !131}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3104)
!3104 = !{!3105, !3106, !3110, !3114, !3120, !3124}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3103, file: !61, line: 40, baseType: !60, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3103, file: !61, line: 41, baseType: !3107, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!396}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3103, file: !61, line: 42, baseType: !3111, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!108}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3103, file: !61, line: 43, baseType: !3115, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!2039, !3118}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3103, file: !61, line: 44, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!2039}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3103, file: !61, line: 45, baseType: !374, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !195, file: !118, line: 144, baseType: !3126, size: 64, offset: 320)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!2039, !131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !195, file: !118, line: 145, baseType: !3130, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !131, !3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !117, file: !118, line: 70, baseType: !3136, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !525, line: 123, size: 1024, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3267, !3268, !3269, !3270, !3271}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3137, file: !525, line: 124, baseType: !656, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3137, file: !525, line: 125, baseType: !656, size: 32, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3137, file: !525, line: 135, baseType: !3136, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3137, file: !525, line: 136, baseType: !121, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3137, file: !525, line: 138, baseType: !669, size: 192, align: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3137, file: !525, line: 140, baseType: !2039, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3137, file: !525, line: 141, baseType: !7, size: 32, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !525, line: 142, baseType: !3147, size: 256, offset: 512)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !525, line: 142, size: 256, elements: !3148)
!3148 = !{!3149, !3195, !3199}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3147, file: !525, line: 143, baseType: !3150, size: 192)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !525, line: 91, size: 192, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3150, file: !525, line: 92, baseType: !230, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3150, file: !525, line: 94, baseType: !665, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3150, file: !525, line: 100, baseType: !3155, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !525, line: 180, size: 704, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3167, !3168, !3169, !3193, !3194}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3156, file: !525, line: 182, baseType: !3136, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3156, file: !525, line: 183, baseType: !7, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3156, file: !525, line: 186, baseType: !3161, size: 192, offset: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3162, line: 19, size: 192, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3163 = !{!3164, !3165, !3166}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3161, file: !3162, line: 20, baseType: !648, size: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3161, file: !3162, line: 21, baseType: !7, size: 32, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3161, file: !3162, line: 22, baseType: !7, size: 32, offset: 160)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3156, file: !525, line: 187, baseType: !321, size: 32, offset: 320)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3156, file: !525, line: 188, baseType: !321, size: 32, offset: 352)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3156, file: !525, line: 189, baseType: !3170, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !525, line: 168, size: 320, elements: !3172)
!3172 = !{!3173, !3177, !3181, !3185, !3189}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3171, file: !525, line: 169, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!164, !620, !3155}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3171, file: !525, line: 171, baseType: !3178, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!164, !3136, !121, !221}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3171, file: !525, line: 173, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!164, !3136}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3171, file: !525, line: 174, baseType: !3186, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!164, !3136, !3136, !121}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3171, file: !525, line: 176, baseType: !3190, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!164, !620, !3136, !3155}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3156, file: !525, line: 192, baseType: !125, size: 128, offset: 448)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3156, file: !525, line: 194, baseType: !1390, size: 128, offset: 576)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3147, file: !525, line: 144, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !525, line: 103, size: 64, elements: !3197)
!3197 = !{!3198}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3196, file: !525, line: 104, baseType: !3136, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3147, file: !525, line: 145, baseType: !3200, size: 256)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !525, line: 107, size: 256, elements: !3201)
!3201 = !{!3202, !3262, !3265, !3266}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3200, file: !525, line: 108, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3205)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !525, line: 217, size: 768, elements: !3206)
!3206 = !{!3207, !3227, !3231, !3235, !3239, !3243, !3247, !3251, !3252, !3253, !3254, !3258}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3205, file: !525, line: 222, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!164, !3211}
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !525, line: 197, size: 1088, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3212, file: !525, line: 199, baseType: !3136, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3212, file: !525, line: 200, baseType: !258, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3212, file: !525, line: 201, baseType: !620, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3212, file: !525, line: 202, baseType: !108, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3212, file: !525, line: 205, baseType: !1082, size: 192, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3212, file: !525, line: 206, baseType: !1082, size: 192, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3212, file: !525, line: 207, baseType: !164, size: 32, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3212, file: !525, line: 208, baseType: !125, size: 128, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3212, file: !525, line: 209, baseType: !180, size: 64, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3212, file: !525, line: 211, baseType: !227, size: 64, offset: 896)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3212, file: !525, line: 212, baseType: !396, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3212, file: !525, line: 213, baseType: !396, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3212, file: !525, line: 214, baseType: !918, size: 64, offset: 1024)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3205, file: !525, line: 223, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !3211}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3205, file: !525, line: 236, baseType: !3232, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!164, !620, !108}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3205, file: !525, line: 238, baseType: !3236, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!108, !620, !2788}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3205, file: !525, line: 239, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!108, !620, !108, !2788}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3205, file: !525, line: 240, baseType: !3244, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !620, !108}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3205, file: !525, line: 242, baseType: !3248, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!211, !3211, !180, !227, !437}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3205, file: !525, line: 252, baseType: !227, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3205, file: !525, line: 259, baseType: !396, size: 8, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3205, file: !525, line: 260, baseType: !3248, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3205, file: !525, line: 263, baseType: !3255, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!2817, !3211, !2819}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3205, file: !525, line: 266, baseType: !3259, size: 64, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!164, !3211, !890}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3200, file: !525, line: 109, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !525, line: 31, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3200, file: !525, line: 110, baseType: !437, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3200, file: !525, line: 111, baseType: !3136, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3137, file: !525, line: 148, baseType: !108, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3137, file: !525, line: 154, baseType: !327, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3137, file: !525, line: 156, baseType: !222, size: 16, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3137, file: !525, line: 157, baseType: !221, size: 16, offset: 912)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3137, file: !525, line: 158, baseType: !3272, size: 64, offset: 960)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !525, line: 32, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !117, file: !118, line: 71, baseType: !3275, size: 32, offset: 448)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3276, line: 19, size: 32, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3277 = !{!3278}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3275, file: !3276, line: 20, baseType: !1139, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !117, file: !118, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !117, file: !118, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !117, file: !118, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !117, file: !118, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !117, file: !118, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !73, line: 463, baseType: !3285, size: 64, offset: 512)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !114, file: !73, line: 465, baseType: !3287, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !114, file: !73, line: 467, baseType: !121, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !73, line: 468, baseType: !3291, size: 64, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3301, !3306, !3310}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3293, file: !73, line: 88, baseType: !121, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3293, file: !73, line: 89, baseType: !234, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3293, file: !73, line: 90, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!164, !3285, !175}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3293, file: !73, line: 91, baseType: !3302, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!180, !3285, !3305, !3133, !3134}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3293, file: !73, line: 93, baseType: !3307, size: 64, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3285}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3293, file: !73, line: 95, baseType: !3311, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3313)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3314)
!3314 = !{!3315, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3313, file: !80, line: 279, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!164, !3285}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3313, file: !80, line: 280, baseType: !3307, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3313, file: !80, line: 281, baseType: !3316, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3313, file: !80, line: 282, baseType: !3316, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3313, file: !80, line: 283, baseType: !3316, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3313, file: !80, line: 284, baseType: !3316, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3313, file: !80, line: 285, baseType: !3316, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3313, file: !80, line: 286, baseType: !3316, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3313, file: !80, line: 287, baseType: !3316, size: 64, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3313, file: !80, line: 288, baseType: !3316, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3313, file: !80, line: 289, baseType: !3316, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3313, file: !80, line: 290, baseType: !3316, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3313, file: !80, line: 291, baseType: !3316, size: 64, offset: 768)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3313, file: !80, line: 292, baseType: !3316, size: 64, offset: 832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3313, file: !80, line: 293, baseType: !3316, size: 64, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3313, file: !80, line: 294, baseType: !3316, size: 64, offset: 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3313, file: !80, line: 295, baseType: !3316, size: 64, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3313, file: !80, line: 296, baseType: !3316, size: 64, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3313, file: !80, line: 297, baseType: !3316, size: 64, offset: 1152)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3313, file: !80, line: 298, baseType: !3316, size: 64, offset: 1216)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3313, file: !80, line: 299, baseType: !3316, size: 64, offset: 1280)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3313, file: !80, line: 300, baseType: !3316, size: 64, offset: 1344)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3313, file: !80, line: 301, baseType: !3316, size: 64, offset: 1408)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !114, file: !73, line: 470, baseType: !3342, size: 64, offset: 768)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3344, line: 82, size: 1408, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3427, !3430, !3431}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3343, file: !3344, line: 83, baseType: !121, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3343, file: !3344, line: 84, baseType: !121, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3343, file: !3344, line: 85, baseType: !3285, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3343, file: !3344, line: 86, baseType: !234, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3343, file: !3344, line: 87, baseType: !234, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3343, file: !3344, line: 88, baseType: !234, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3343, file: !3344, line: 90, baseType: !3353, size: 64, offset: 384)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!164, !3285, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3378, !3391, !3392, !3393, !3394, !3395, !3403, !3404, !3405, !3406, !3407, !3408}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3357, file: !67, line: 96, baseType: !121, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3357, file: !67, line: 97, baseType: !3342, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3357, file: !67, line: 99, baseType: !539, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3357, file: !67, line: 100, baseType: !121, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3357, file: !67, line: 102, baseType: !396, size: 8, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3357, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3357, file: !67, line: 105, baseType: !3366, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3368)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3369, line: 262, size: 1600, elements: !3370)
!3369 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3370 = !{!3371, !3372, !3373, !3377}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3368, file: !3369, line: 263, baseType: !2612, size: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3368, file: !3369, line: 264, baseType: !2612, size: 256, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3368, file: !3369, line: 265, baseType: !3374, size: 1024, offset: 512)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !3375)
!3375 = !{!3376}
!3376 = !DISubrange(count: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3368, file: !3369, line: 266, baseType: !2039, size: 64, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3357, file: !67, line: 106, baseType: !3379, size: 64, offset: 384)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3369, line: 210, size: 256, elements: !3382)
!3382 = !{!3383, !3387, !3389, !3390}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3381, file: !3369, line: 211, baseType: !3384, size: 72)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 72, elements: !3385)
!3385 = !{!3386}
!3386 = !DISubrange(count: 9)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3381, file: !3369, line: 212, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3369, line: 14, baseType: !230)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3381, file: !3369, line: 213, baseType: !323, size: 32, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3381, file: !3369, line: 214, baseType: !323, size: 32, offset: 224)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3357, file: !67, line: 108, baseType: !3316, size: 64, offset: 448)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3357, file: !67, line: 109, baseType: !3307, size: 64, offset: 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3357, file: !67, line: 110, baseType: !3316, size: 64, offset: 576)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3357, file: !67, line: 111, baseType: !3307, size: 64, offset: 640)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3357, file: !67, line: 112, baseType: !3396, size: 64, offset: 704)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!164, !3285, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3400)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3401)
!3401 = !{!3402}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3400, file: !80, line: 51, baseType: !164, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3357, file: !67, line: 113, baseType: !3316, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3357, file: !67, line: 114, baseType: !234, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3357, file: !67, line: 115, baseType: !234, size: 64, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3357, file: !67, line: 117, baseType: !3311, size: 64, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3357, file: !67, line: 118, baseType: !3307, size: 64, offset: 1024)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3357, file: !67, line: 120, baseType: !3409, size: 64, offset: 1088)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3343, file: !3344, line: 91, baseType: !3298, size: 64, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3343, file: !3344, line: 92, baseType: !3316, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3343, file: !3344, line: 93, baseType: !3307, size: 64, offset: 576)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3343, file: !3344, line: 94, baseType: !3316, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3343, file: !3344, line: 95, baseType: !3307, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3343, file: !3344, line: 97, baseType: !3316, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3343, file: !3344, line: 98, baseType: !3316, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3343, file: !3344, line: 100, baseType: !3396, size: 64, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3343, file: !3344, line: 101, baseType: !3316, size: 64, offset: 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3343, file: !3344, line: 103, baseType: !3316, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3343, file: !3344, line: 105, baseType: !3316, size: 64, offset: 1088)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3343, file: !3344, line: 107, baseType: !3311, size: 64, offset: 1152)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3343, file: !3344, line: 109, baseType: !3424, size: 64, offset: 1216)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3344, line: 109, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3343, file: !3344, line: 111, baseType: !3428, size: 64, offset: 1280)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3344, line: 111, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3343, file: !3344, line: 112, baseType: !554, offset: 1344)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3343, file: !3344, line: 114, baseType: !396, size: 8, offset: 1344)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !114, file: !73, line: 471, baseType: !3356, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !114, file: !73, line: 473, baseType: !108, size: 64, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !114, file: !73, line: 475, baseType: !108, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !114, file: !73, line: 480, baseType: !1082, size: 192, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !114, file: !73, line: 484, baseType: !3437, size: 576, offset: 1216)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3437, file: !73, line: 362, baseType: !125, size: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3437, file: !73, line: 363, baseType: !125, size: 128, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3437, file: !73, line: 364, baseType: !125, size: 128, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3437, file: !73, line: 365, baseType: !125, size: 128, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3437, file: !73, line: 366, baseType: !396, size: 8, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3437, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !114, file: !73, line: 485, baseType: !3446, size: 2304, offset: 1792)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3543, !3547}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3446, file: !80, line: 566, baseType: !3399, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3446, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3446, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3446, file: !80, line: 569, baseType: !396, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3446, file: !80, line: 570, baseType: !396, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3446, file: !80, line: 571, baseType: !396, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3446, file: !80, line: 572, baseType: !396, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3446, file: !80, line: 573, baseType: !396, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3446, file: !80, line: 574, baseType: !396, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3446, file: !80, line: 575, baseType: !396, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3446, file: !80, line: 576, baseType: !396, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3446, file: !80, line: 577, baseType: !321, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3446, file: !80, line: 578, baseType: !138, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3446, file: !80, line: 580, baseType: !125, size: 128, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3446, file: !80, line: 581, baseType: !1411, size: 192, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3446, file: !80, line: 582, baseType: !3464, size: 64, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3466, line: 43, size: 1472, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3475, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3465, file: !3466, line: 44, baseType: !121, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3465, file: !3466, line: 45, baseType: !164, size: 32, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3465, file: !3466, line: 46, baseType: !125, size: 128, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3465, file: !3466, line: 47, baseType: !138, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3465, file: !3466, line: 48, baseType: !3473, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3465, file: !3466, line: 49, baseType: !3476, size: 320, offset: 320)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3477, line: 11, size: 320, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3478 = !{!3479, !3480, !3481, !3486}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3476, file: !3477, line: 16, baseType: !548, size: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3476, file: !3477, line: 17, baseType: !230, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3476, file: !3477, line: 18, baseType: !3482, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3476, file: !3477, line: 19, baseType: !321, size: 32, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3465, file: !3466, line: 50, baseType: !230, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3465, file: !3466, line: 51, baseType: !1209, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3465, file: !3466, line: 52, baseType: !1209, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3465, file: !3466, line: 53, baseType: !1209, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3465, file: !3466, line: 54, baseType: !1209, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3465, file: !3466, line: 55, baseType: !1209, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3465, file: !3466, line: 56, baseType: !230, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3465, file: !3466, line: 57, baseType: !230, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3465, file: !3466, line: 58, baseType: !230, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3465, file: !3466, line: 59, baseType: !230, size: 64, offset: 1216)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3465, file: !3466, line: 60, baseType: !230, size: 64, offset: 1280)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3465, file: !3466, line: 61, baseType: !3285, size: 64, offset: 1344)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3465, file: !3466, line: 62, baseType: !396, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3465, file: !3466, line: 63, baseType: !396, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3446, file: !80, line: 583, baseType: !396, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3446, file: !80, line: 584, baseType: !396, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3446, file: !80, line: 585, baseType: !396, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3446, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3446, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3446, file: !80, line: 592, baseType: !1201, size: 512, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3446, file: !80, line: 593, baseType: !327, size: 64, offset: 1088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3446, file: !80, line: 594, baseType: !1869, size: 256, offset: 1152)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3446, file: !80, line: 595, baseType: !1390, size: 128, offset: 1408)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3446, file: !80, line: 596, baseType: !3473, size: 64, offset: 1536)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3446, file: !80, line: 597, baseType: !656, size: 32, offset: 1600)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3446, file: !80, line: 598, baseType: !656, size: 32, offset: 1632)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3446, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3446, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3446, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3446, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3446, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3446, file: !80, line: 604, baseType: !396, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3446, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3446, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3446, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3446, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3446, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3446, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3446, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3446, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3446, file: !80, line: 613, baseType: !164, size: 32, offset: 1792)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3446, file: !80, line: 614, baseType: !164, size: 32, offset: 1824)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3446, file: !80, line: 615, baseType: !327, size: 64, offset: 1856)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3446, file: !80, line: 616, baseType: !327, size: 64, offset: 1920)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3446, file: !80, line: 617, baseType: !327, size: 64, offset: 1984)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3446, file: !80, line: 618, baseType: !327, size: 64, offset: 2048)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3446, file: !80, line: 620, baseType: !3534, size: 64, offset: 2112)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3535, file: !80, line: 537, baseType: !138)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3535, file: !80, line: 538, baseType: !7, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3535, file: !80, line: 540, baseType: !125, size: 128, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3535, file: !80, line: 543, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3446, file: !80, line: 621, baseType: !3544, size: 64, offset: 2176)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3285, !1353}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3446, file: !80, line: 622, baseType: !3548, size: 64, offset: 2240)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !114, file: !73, line: 486, baseType: !3551, size: 64, offset: 4096)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3560, !3561, !3562}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3552, file: !80, line: 643, baseType: !3313, size: 1472)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3552, file: !80, line: 644, baseType: !3316, size: 64, offset: 1472)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3552, file: !80, line: 645, baseType: !3557, size: 64, offset: 1536)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !3285, !396}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3552, file: !80, line: 646, baseType: !3316, size: 64, offset: 1600)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3552, file: !80, line: 647, baseType: !3307, size: 64, offset: 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3552, file: !80, line: 648, baseType: !3307, size: 64, offset: 1728)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !114, file: !73, line: 493, baseType: !3564, size: 64, offset: 4160)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !114, file: !73, line: 499, baseType: !125, size: 128, offset: 4224)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !114, file: !73, line: 502, baseType: !3568, size: 64, offset: 4352)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3570)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !114, file: !73, line: 504, baseType: !3572, size: 64, offset: 4416)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !114, file: !73, line: 505, baseType: !327, size: 64, offset: 4480)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !114, file: !73, line: 510, baseType: !327, size: 64, offset: 4544)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !114, file: !73, line: 511, baseType: !3576, size: 64, offset: 4608)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3578)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !114, file: !73, line: 513, baseType: !3580, size: 64, offset: 4672)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3581, file: !73, line: 293, baseType: !7, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3581, file: !73, line: 294, baseType: !230, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !114, file: !73, line: 515, baseType: !125, size: 128, offset: 4736)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !114, file: !73, line: 526, baseType: !3587, offset: 4864)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3588, line: 5, elements: !152)
!3588 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !114, file: !73, line: 528, baseType: !3590, size: 64, offset: 4864)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3592, line: 14, flags: DIFlagFwdDecl)
!3592 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !114, file: !73, line: 529, baseType: !3594, size: 64, offset: 4928)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3596, line: 17, size: 192, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !{!3598, !3599, !3682}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3595, file: !3596, line: 18, baseType: !3594, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3595, file: !3596, line: 19, baseType: !3600, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3602)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3596, line: 110, size: 1152, elements: !3603)
!3603 = !{!3604, !3608, !3612, !3618, !3624, !3628, !3632, !3637, !3641, !3642, !3646, !3650, !3654, !3665, !3666, !3667, !3668, !3678}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3602, file: !3596, line: 111, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3594, !3594}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3602, file: !3596, line: 112, baseType: !3609, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3594}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3602, file: !3596, line: 113, baseType: !3613, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!396, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3602, file: !3596, line: 114, baseType: !3619, size: 64, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!2039, !3616, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3602, file: !3596, line: 116, baseType: !3625, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!396, !3616, !121}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3602, file: !3596, line: 118, baseType: !3629, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!164, !3616, !121, !7, !108, !227}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3602, file: !3596, line: 123, baseType: !3633, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!164, !3616, !121, !3636, !227}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3602, file: !3596, line: 126, baseType: !3638, size: 64, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!121, !3616}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3602, file: !3596, line: 127, baseType: !3638, size: 64, offset: 512)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3602, file: !3596, line: 128, baseType: !3643, size: 64, offset: 576)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3594, !3616}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3602, file: !3596, line: 130, baseType: !3647, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!3594, !3616, !3594}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3602, file: !3596, line: 133, baseType: !3651, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!3594, !3616, !121}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3602, file: !3596, line: 135, baseType: !3655, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!164, !3616, !121, !121, !7, !7, !3658}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3596, line: 43, size: 640, elements: !3660)
!3660 = !{!3661, !3662, !3663}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3659, file: !3596, line: 44, baseType: !3594, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3659, file: !3596, line: 45, baseType: !7, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3659, file: !3596, line: 46, baseType: !3664, size: 512, offset: 128)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 512, elements: !1239)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3602, file: !3596, line: 140, baseType: !3647, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3602, file: !3596, line: 143, baseType: !3643, size: 64, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3602, file: !3596, line: 145, baseType: !3605, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3602, file: !3596, line: 146, baseType: !3669, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!164, !3616, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3596, line: 29, size: 128, elements: !3674)
!3674 = !{!3675, !3676, !3677}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3673, file: !3596, line: 30, baseType: !7, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3673, file: !3596, line: 31, baseType: !7, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3673, file: !3596, line: 32, baseType: !3616, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3602, file: !3596, line: 148, baseType: !3679, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!164, !3616, !3285}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3595, file: !3596, line: 20, baseType: !3285, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !114, file: !73, line: 534, baseType: !419, size: 32, offset: 4992)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !73, line: 535, baseType: !321, size: 32, offset: 5024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !114, file: !73, line: 537, baseType: !138, offset: 5056)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !114, file: !73, line: 538, baseType: !125, size: 128, offset: 5056)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !114, file: !73, line: 540, baseType: !3688, size: 64, offset: 5184)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3690, line: 54, size: 960, elements: !3691)
!3690 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3702, !3706, !3707, !3708, !3709, !3713, !3717, !3718}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3689, file: !3690, line: 55, baseType: !121, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3689, file: !3690, line: 56, baseType: !539, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3689, file: !3690, line: 58, baseType: !234, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3689, file: !3690, line: 59, baseType: !234, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3689, file: !3690, line: 60, baseType: !131, size: 64, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3689, file: !3690, line: 62, baseType: !3298, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3689, file: !3690, line: 63, baseType: !3699, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!180, !3285, !3305}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3689, file: !3690, line: 65, baseType: !3703, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3688}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3689, file: !3690, line: 66, baseType: !3307, size: 64, offset: 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3689, file: !3690, line: 68, baseType: !3316, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3689, file: !3690, line: 70, baseType: !3101, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3689, file: !3690, line: 71, baseType: !3710, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!2039, !3285}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3689, file: !3690, line: 73, baseType: !3714, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3285, !3133, !3134}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3689, file: !3690, line: 75, baseType: !3311, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3689, file: !3690, line: 77, baseType: !3428, size: 64, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !114, file: !73, line: 541, baseType: !234, size: 64, offset: 5248)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !114, file: !73, line: 543, baseType: !3307, size: 64, offset: 5312)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !114, file: !73, line: 544, baseType: !3722, size: 64, offset: 5376)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !114, file: !73, line: 545, baseType: !3725, size: 64, offset: 5440)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !114, file: !73, line: 547, baseType: !396, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !114, file: !73, line: 548, baseType: !396, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !114, file: !73, line: 549, baseType: !396, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !114, file: !73, line: 550, baseType: !396, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !110, file: !111, line: 245, baseType: !327, size: 64, offset: 5568)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !110, file: !111, line: 246, baseType: !7, size: 32, offset: 5632)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !110, file: !111, line: 247, baseType: !164, size: 32, offset: 5664)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !110, file: !111, line: 249, baseType: !125, size: 128, offset: 5696)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !110, file: !111, line: 250, baseType: !125, size: 128, offset: 5824)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !110, file: !111, line: 251, baseType: !125, size: 128, offset: 5952)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !110, file: !111, line: 252, baseType: !125, size: 128, offset: 6080)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !110, file: !111, line: 254, baseType: !3739, size: 64, offset: 6208)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !111, line: 411, size: 6464, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3748, !3749, !3750, !3754, !3758, !3759, !3760, !3761, !3762}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3740, file: !111, line: 412, baseType: !125, size: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3740, file: !111, line: 413, baseType: !180, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3740, file: !111, line: 416, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!164, !109}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3740, file: !111, line: 417, baseType: !3745, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3740, file: !111, line: 418, baseType: !3745, size: 64, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3740, file: !111, line: 421, baseType: !3751, size: 64, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!396, !109}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3740, file: !111, line: 422, baseType: !3755, size: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!164, !109, !3399}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3740, file: !111, line: 423, baseType: !3745, size: 64, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3740, file: !111, line: 426, baseType: !333, size: 8, offset: 576)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3740, file: !111, line: 427, baseType: !114, size: 5568, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !3740, file: !111, line: 428, baseType: !125, size: 128, offset: 6208)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3740, file: !111, line: 429, baseType: !125, size: 128, offset: 6336)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !110, file: !111, line: 255, baseType: !3764, size: 64, offset: 6272)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !111, line: 202, size: 6720, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3779, !3783, !3784, !3785, !3786, !3787}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3765, file: !111, line: 203, baseType: !114, size: 5568)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3765, file: !111, line: 204, baseType: !333, size: 8, offset: 5568)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3765, file: !111, line: 205, baseType: !125, size: 128, offset: 5632)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3765, file: !111, line: 206, baseType: !125, size: 128, offset: 5760)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3765, file: !111, line: 207, baseType: !125, size: 128, offset: 5888)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3765, file: !111, line: 209, baseType: !3739, size: 64, offset: 6016)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3765, file: !111, line: 210, baseType: !3774, size: 64, offset: 6080)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !111, line: 369, size: 128, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3775, file: !111, line: 370, baseType: !1944, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3775, file: !111, line: 371, baseType: !3774, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3765, file: !111, line: 212, baseType: !3780, size: 400, offset: 6144)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 400, elements: !3781)
!3781 = !{!3782}
!3782 = !DISubrange(count: 50)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !3765, file: !111, line: 213, baseType: !333, size: 8, offset: 6544)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !3765, file: !111, line: 214, baseType: !333, size: 8, offset: 6552)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3765, file: !111, line: 215, baseType: !7, size: 32, offset: 6560)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3765, file: !111, line: 216, baseType: !333, size: 8, offset: 6592)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3765, file: !111, line: 217, baseType: !3788, size: 64, offset: 6656)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !111, line: 217, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !110, file: !111, line: 256, baseType: !3791, size: 64, offset: 6336)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !111, line: 374, size: 1664, elements: !3793)
!3793 = !{!3794, !3795, !3803, !3804, !3808, !3812, !3813, !3814, !3815}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3792, file: !111, line: 375, baseType: !121, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3792, file: !111, line: 376, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3798)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !3369, line: 220, size: 128, elements: !3799)
!3799 = !{!3800, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3798, file: !3369, line: 221, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 64, elements: !1239)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3798, file: !3369, line: 222, baseType: !3388, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3792, file: !111, line: 377, baseType: !7, size: 32, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3792, file: !111, line: 378, baseType: !3805, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!164, !109, !3796}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3792, file: !111, line: 379, baseType: !3809, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !109}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3792, file: !111, line: 380, baseType: !3809, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3792, file: !111, line: 381, baseType: !3755, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3792, file: !111, line: 382, baseType: !3745, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3792, file: !111, line: 383, baseType: !3357, size: 1152, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !110, file: !111, line: 257, baseType: !3817, size: 64, offset: 6400)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !111, line: 226, size: 256, elements: !3819)
!3819 = !{!3820, !3821, !3857, !3858}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !3818, file: !111, line: 227, baseType: !3764, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3818, file: !111, line: 228, baseType: !3822, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !111, line: 388, size: 2240, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3839, !3840, !3844, !3848, !3852, !3856}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3823, file: !111, line: 389, baseType: !125, size: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3823, file: !111, line: 390, baseType: !180, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3823, file: !111, line: 391, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !3369, line: 225, size: 640, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3830, file: !3369, line: 226, baseType: !3801, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3830, file: !3369, line: 227, baseType: !3388, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !3830, file: !3369, line: 230, baseType: !3835, size: 512, offset: 128)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3836, size: 512, elements: !1239)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3830, file: !3369, line: 228, size: 64, elements: !3837)
!3837 = !{!3838}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3836, file: !3369, line: 229, baseType: !3801, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3823, file: !111, line: 392, baseType: !7, size: 32, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3823, file: !111, line: 393, baseType: !3841, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!164, !3817, !3828}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3823, file: !111, line: 395, baseType: !3845, size: 64, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !3817}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3823, file: !111, line: 396, baseType: !3849, size: 64, offset: 448)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!164, !3817, !3399}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3823, file: !111, line: 397, baseType: !3853, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!164, !3817}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3823, file: !111, line: 398, baseType: !3792, size: 1664, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3818, file: !111, line: 229, baseType: !108, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !3818, file: !111, line: 230, baseType: !3399, size: 32, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !110, file: !111, line: 259, baseType: !3774, size: 64, offset: 6464)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !110, file: !111, line: 261, baseType: !164, size: 32, offset: 6528)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !110, file: !111, line: 262, baseType: !164, size: 32, offset: 6560)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !110, file: !111, line: 263, baseType: !7, size: 32, offset: 6592)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !110, file: !111, line: 264, baseType: !125, size: 128, offset: 6656)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !110, file: !111, line: 265, baseType: !125, size: 128, offset: 6784)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 267, baseType: !3780, size: 400, offset: 6912)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !111, line: 268, baseType: !164, size: 32, offset: 7328)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !110, file: !111, line: 269, baseType: !3788, size: 64, offset: 7360)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !110, file: !111, line: 270, baseType: !108, size: 64, offset: 7424)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!3871 = !{!0, !3872, !3886, !3888}
!3872 = !DIGlobalVariableExpression(var: !3873, expr: !DIExpression())
!3873 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 194, type: !3874, isLocal: true, isDefinition: true)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !3875)
!3875 = !{!3876, !3877, !3882}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3874, file: !73, line: 100, baseType: !217, size: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3874, file: !73, line: 101, baseType: !3878, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!211, !3285, !3881, !180}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3874, file: !73, line: 103, baseType: !3883, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!211, !3285, !3881, !121, !227}
!3886 = !DIGlobalVariableExpression(var: !3887, expr: !DIExpression())
!3887 = distinct !DIGlobalVariable(name: "dev_attr_card_id", scope: !2, file: !3, line: 210, type: !3874, isLocal: true, isDefinition: true)
!3888 = !DIGlobalVariableExpression(var: !3889, expr: !DIExpression())
!3889 = distinct !DIGlobalVariable(name: "pnp_card_drivers", scope: !2, file: !3, line: 17, type: !125, isLocal: true, isDefinition: true)
!3890 = !{i32 7, !"Dwarf Version", i32 4}
!3891 = !{i32 2, !"Debug Info Version", i32 3}
!3892 = !{i32 1, !"wchar_size", i32 2}
!3893 = !{i32 1, !"Code Model", i32 2}
!3894 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3895 = distinct !DISubprogram(name: "pnp_alloc_card", scope: !3, file: !3, line: 157, type: !3896, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!3764, !3739, !164, !180}
!3898 = !DILocalVariable(name: "protocol", arg: 1, scope: !3895, file: !3, line: 157, type: !3739)
!3899 = !DILocation(line: 157, column: 54, scope: !3895)
!3900 = !DILocalVariable(name: "id", arg: 2, scope: !3895, file: !3, line: 157, type: !164)
!3901 = !DILocation(line: 157, column: 68, scope: !3895)
!3902 = !DILocalVariable(name: "pnpid", arg: 3, scope: !3895, file: !3, line: 157, type: !180)
!3903 = !DILocation(line: 157, column: 78, scope: !3895)
!3904 = !DILocalVariable(name: "card", scope: !3895, file: !3, line: 159, type: !3764)
!3905 = !DILocation(line: 159, column: 19, scope: !3895)
!3906 = !DILocalVariable(name: "dev_id", scope: !3895, file: !3, line: 160, type: !3774)
!3907 = !DILocation(line: 160, column: 17, scope: !3895)
!3908 = !DILocation(line: 162, column: 9, scope: !3895)
!3909 = !DILocation(line: 162, column: 7, scope: !3895)
!3910 = !DILocation(line: 163, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 163, column: 6)
!3912 = !DILocation(line: 163, column: 6, scope: !3895)
!3913 = !DILocation(line: 164, column: 3, scope: !3911)
!3914 = !DILocation(line: 166, column: 19, scope: !3895)
!3915 = !DILocation(line: 166, column: 2, scope: !3895)
!3916 = !DILocation(line: 166, column: 8, scope: !3895)
!3917 = !DILocation(line: 166, column: 17, scope: !3895)
!3918 = !DILocation(line: 167, column: 17, scope: !3895)
!3919 = !DILocation(line: 167, column: 2, scope: !3895)
!3920 = !DILocation(line: 167, column: 8, scope: !3895)
!3921 = !DILocation(line: 167, column: 15, scope: !3895)
!3922 = !DILocation(line: 169, column: 22, scope: !3895)
!3923 = !DILocation(line: 169, column: 28, scope: !3895)
!3924 = !DILocation(line: 169, column: 38, scope: !3895)
!3925 = !DILocation(line: 169, column: 2, scope: !3895)
!3926 = !DILocation(line: 169, column: 8, scope: !3895)
!3927 = !DILocation(line: 169, column: 12, scope: !3895)
!3928 = !DILocation(line: 169, column: 19, scope: !3895)
!3929 = !DILocation(line: 170, column: 16, scope: !3895)
!3930 = !DILocation(line: 170, column: 22, scope: !3895)
!3931 = !DILocation(line: 170, column: 40, scope: !3895)
!3932 = !DILocation(line: 170, column: 46, scope: !3895)
!3933 = !DILocation(line: 170, column: 56, scope: !3895)
!3934 = !DILocation(line: 170, column: 64, scope: !3895)
!3935 = !DILocation(line: 170, column: 70, scope: !3895)
!3936 = !DILocation(line: 170, column: 2, scope: !3895)
!3937 = !DILocation(line: 172, column: 2, scope: !3895)
!3938 = !DILocation(line: 172, column: 8, scope: !3895)
!3939 = !DILocation(line: 172, column: 12, scope: !3895)
!3940 = !DILocation(line: 172, column: 30, scope: !3895)
!3941 = !DILocation(line: 173, column: 24, scope: !3895)
!3942 = !DILocation(line: 173, column: 30, scope: !3895)
!3943 = !DILocation(line: 173, column: 34, scope: !3895)
!3944 = !DILocation(line: 173, column: 2, scope: !3895)
!3945 = !DILocation(line: 173, column: 8, scope: !3895)
!3946 = !DILocation(line: 173, column: 12, scope: !3895)
!3947 = !DILocation(line: 173, column: 21, scope: !3895)
!3948 = !DILocation(line: 175, column: 27, scope: !3895)
!3949 = !DILocation(line: 175, column: 33, scope: !3895)
!3950 = !DILocation(line: 175, column: 11, scope: !3895)
!3951 = !DILocation(line: 175, column: 9, scope: !3895)
!3952 = !DILocation(line: 176, column: 7, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 176, column: 6)
!3954 = !DILocation(line: 176, column: 6, scope: !3895)
!3955 = !DILocation(line: 177, column: 9, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 176, column: 15)
!3957 = !DILocation(line: 177, column: 3, scope: !3956)
!3958 = !DILocation(line: 178, column: 3, scope: !3956)
!3959 = !DILocation(line: 181, column: 9, scope: !3895)
!3960 = !DILocation(line: 181, column: 2, scope: !3895)
!3961 = !DILocation(line: 182, column: 1, scope: !3895)
!3962 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 662, type: !3963, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!108, !227, !106}
!3965 = !DILocalVariable(name: "s", arg: 1, scope: !3966, file: !94, line: 445, type: !844)
!3966 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !3967, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!108, !844, !106, !227}
!3969 = !DILocation(line: 445, column: 72, scope: !3966, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 552, column: 10, scope: !3971, inlinedAt: !3974)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !94, line: 540, column: 34)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !94, line: 540, column: 6)
!3973 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !3963, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3974 = distinct !DILocation(line: 664, column: 9, scope: !3962)
!3975 = !DILocalVariable(name: "flags", arg: 2, scope: !3966, file: !94, line: 446, type: !106)
!3976 = !DILocation(line: 446, column: 9, scope: !3966, inlinedAt: !3970)
!3977 = !DILocalVariable(name: "size", arg: 3, scope: !3966, file: !94, line: 446, type: !227)
!3978 = !DILocation(line: 446, column: 23, scope: !3966, inlinedAt: !3970)
!3979 = !DILocalVariable(name: "ret", scope: !3966, file: !94, line: 448, type: !108)
!3980 = !DILocation(line: 448, column: 8, scope: !3966, inlinedAt: !3970)
!3981 = !DILocalVariable(name: "flags", arg: 1, scope: !3982, file: !94, line: 318, type: !106)
!3982 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !3983, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!93, !106}
!3985 = !DILocation(line: 318, column: 67, scope: !3982, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 553, column: 20, scope: !3971, inlinedAt: !3974)
!3987 = !DILocalVariable(name: "size", arg: 1, scope: !3988, file: !94, line: 346, type: !227)
!3988 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !3989, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!7, !227}
!3991 = !DILocation(line: 346, column: 58, scope: !3988, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 547, column: 11, scope: !3971, inlinedAt: !3974)
!3993 = !DILocalVariable(name: "size", arg: 1, scope: !3994, file: !94, line: 472, type: !227)
!3994 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !3995, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!108, !227, !106, !7}
!3997 = !DILocation(line: 472, column: 28, scope: !3994, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 481, column: 9, scope: !3999, inlinedAt: !4000)
!3999 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !3963, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4000 = distinct !DILocation(line: 545, column: 11, scope: !4001, inlinedAt: !3974)
!4001 = distinct !DILexicalBlock(scope: !3971, file: !94, line: 544, column: 7)
!4002 = !DILocalVariable(name: "flags", arg: 2, scope: !3994, file: !94, line: 472, type: !106)
!4003 = !DILocation(line: 472, column: 40, scope: !3994, inlinedAt: !3998)
!4004 = !DILocalVariable(name: "order", arg: 3, scope: !3994, file: !94, line: 472, type: !7)
!4005 = !DILocation(line: 472, column: 60, scope: !3994, inlinedAt: !3998)
!4006 = !DILocalVariable(name: "size", arg: 1, scope: !3999, file: !94, line: 478, type: !227)
!4007 = !DILocation(line: 478, column: 51, scope: !3999, inlinedAt: !4000)
!4008 = !DILocalVariable(name: "flags", arg: 2, scope: !3999, file: !94, line: 478, type: !106)
!4009 = !DILocation(line: 478, column: 63, scope: !3999, inlinedAt: !4000)
!4010 = !DILocalVariable(name: "order", scope: !3999, file: !94, line: 480, type: !7)
!4011 = !DILocation(line: 480, column: 15, scope: !3999, inlinedAt: !4000)
!4012 = !DILocalVariable(name: "size", arg: 1, scope: !3973, file: !94, line: 538, type: !227)
!4013 = !DILocation(line: 538, column: 45, scope: !3973, inlinedAt: !3974)
!4014 = !DILocalVariable(name: "flags", arg: 2, scope: !3973, file: !94, line: 538, type: !106)
!4015 = !DILocation(line: 538, column: 57, scope: !3973, inlinedAt: !3974)
!4016 = !DILocalVariable(name: "index", scope: !3971, file: !94, line: 542, type: !7)
!4017 = !DILocation(line: 542, column: 16, scope: !3971, inlinedAt: !3974)
!4018 = !DILocalVariable(name: "size", arg: 1, scope: !3962, file: !94, line: 662, type: !227)
!4019 = !DILocation(line: 662, column: 36, scope: !3962)
!4020 = !DILocalVariable(name: "flags", arg: 2, scope: !3962, file: !94, line: 662, type: !106)
!4021 = !DILocation(line: 662, column: 48, scope: !3962)
!4022 = !DILocation(line: 664, column: 17, scope: !3962)
!4023 = !DILocation(line: 664, column: 23, scope: !3962)
!4024 = !DILocation(line: 664, column: 29, scope: !3962)
!4025 = !DILocation(line: 540, column: 27, scope: !3972, inlinedAt: !3974)
!4026 = !DILocation(line: 540, column: 6, scope: !3972, inlinedAt: !3974)
!4027 = !DILocation(line: 540, column: 6, scope: !3973, inlinedAt: !3974)
!4028 = !DILocation(line: 544, column: 7, scope: !4001, inlinedAt: !3974)
!4029 = !DILocation(line: 544, column: 12, scope: !4001, inlinedAt: !3974)
!4030 = !DILocation(line: 544, column: 7, scope: !3971, inlinedAt: !3974)
!4031 = !DILocation(line: 545, column: 25, scope: !4001, inlinedAt: !3974)
!4032 = !DILocation(line: 545, column: 31, scope: !4001, inlinedAt: !3974)
!4033 = !DILocation(line: 480, column: 33, scope: !3999, inlinedAt: !4000)
!4034 = !DILocation(line: 480, column: 23, scope: !3999, inlinedAt: !4000)
!4035 = !DILocation(line: 481, column: 29, scope: !3999, inlinedAt: !4000)
!4036 = !DILocation(line: 481, column: 35, scope: !3999, inlinedAt: !4000)
!4037 = !DILocation(line: 481, column: 42, scope: !3999, inlinedAt: !4000)
!4038 = !DILocation(line: 474, column: 23, scope: !3994, inlinedAt: !3998)
!4039 = !DILocation(line: 474, column: 29, scope: !3994, inlinedAt: !3998)
!4040 = !DILocation(line: 474, column: 36, scope: !3994, inlinedAt: !3998)
!4041 = !DILocation(line: 474, column: 9, scope: !3994, inlinedAt: !3998)
!4042 = !DILocation(line: 545, column: 4, scope: !4001, inlinedAt: !3974)
!4043 = !DILocation(line: 547, column: 25, scope: !3971, inlinedAt: !3974)
!4044 = !DILocation(line: 348, column: 7, scope: !4045, inlinedAt: !3992)
!4045 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 348, column: 6)
!4046 = !DILocation(line: 348, column: 6, scope: !3988, inlinedAt: !3992)
!4047 = !DILocation(line: 349, column: 3, scope: !4045, inlinedAt: !3992)
!4048 = !DILocation(line: 351, column: 6, scope: !4049, inlinedAt: !3992)
!4049 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 351, column: 6)
!4050 = !DILocation(line: 351, column: 11, scope: !4049, inlinedAt: !3992)
!4051 = !DILocation(line: 351, column: 6, scope: !3988, inlinedAt: !3992)
!4052 = !DILocation(line: 352, column: 3, scope: !4049, inlinedAt: !3992)
!4053 = !DILocation(line: 354, column: 32, scope: !4054, inlinedAt: !3992)
!4054 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 354, column: 6)
!4055 = !DILocation(line: 354, column: 37, scope: !4054, inlinedAt: !3992)
!4056 = !DILocation(line: 354, column: 42, scope: !4054, inlinedAt: !3992)
!4057 = !DILocation(line: 354, column: 45, scope: !4054, inlinedAt: !3992)
!4058 = !DILocation(line: 354, column: 50, scope: !4054, inlinedAt: !3992)
!4059 = !DILocation(line: 354, column: 6, scope: !3988, inlinedAt: !3992)
!4060 = !DILocation(line: 355, column: 3, scope: !4054, inlinedAt: !3992)
!4061 = !DILocation(line: 356, column: 32, scope: !4062, inlinedAt: !3992)
!4062 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 356, column: 6)
!4063 = !DILocation(line: 356, column: 37, scope: !4062, inlinedAt: !3992)
!4064 = !DILocation(line: 356, column: 43, scope: !4062, inlinedAt: !3992)
!4065 = !DILocation(line: 356, column: 46, scope: !4062, inlinedAt: !3992)
!4066 = !DILocation(line: 356, column: 51, scope: !4062, inlinedAt: !3992)
!4067 = !DILocation(line: 356, column: 6, scope: !3988, inlinedAt: !3992)
!4068 = !DILocation(line: 357, column: 3, scope: !4062, inlinedAt: !3992)
!4069 = !DILocation(line: 358, column: 6, scope: !4070, inlinedAt: !3992)
!4070 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 358, column: 6)
!4071 = !DILocation(line: 358, column: 11, scope: !4070, inlinedAt: !3992)
!4072 = !DILocation(line: 358, column: 6, scope: !3988, inlinedAt: !3992)
!4073 = !DILocation(line: 358, column: 26, scope: !4070, inlinedAt: !3992)
!4074 = !DILocation(line: 359, column: 6, scope: !4075, inlinedAt: !3992)
!4075 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 359, column: 6)
!4076 = !DILocation(line: 359, column: 11, scope: !4075, inlinedAt: !3992)
!4077 = !DILocation(line: 359, column: 6, scope: !3988, inlinedAt: !3992)
!4078 = !DILocation(line: 359, column: 26, scope: !4075, inlinedAt: !3992)
!4079 = !DILocation(line: 360, column: 6, scope: !4080, inlinedAt: !3992)
!4080 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 360, column: 6)
!4081 = !DILocation(line: 360, column: 11, scope: !4080, inlinedAt: !3992)
!4082 = !DILocation(line: 360, column: 6, scope: !3988, inlinedAt: !3992)
!4083 = !DILocation(line: 360, column: 26, scope: !4080, inlinedAt: !3992)
!4084 = !DILocation(line: 361, column: 6, scope: !4085, inlinedAt: !3992)
!4085 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 361, column: 6)
!4086 = !DILocation(line: 361, column: 11, scope: !4085, inlinedAt: !3992)
!4087 = !DILocation(line: 361, column: 6, scope: !3988, inlinedAt: !3992)
!4088 = !DILocation(line: 361, column: 26, scope: !4085, inlinedAt: !3992)
!4089 = !DILocation(line: 362, column: 6, scope: !4090, inlinedAt: !3992)
!4090 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 362, column: 6)
!4091 = !DILocation(line: 362, column: 11, scope: !4090, inlinedAt: !3992)
!4092 = !DILocation(line: 362, column: 6, scope: !3988, inlinedAt: !3992)
!4093 = !DILocation(line: 362, column: 26, scope: !4090, inlinedAt: !3992)
!4094 = !DILocation(line: 363, column: 6, scope: !4095, inlinedAt: !3992)
!4095 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 363, column: 6)
!4096 = !DILocation(line: 363, column: 11, scope: !4095, inlinedAt: !3992)
!4097 = !DILocation(line: 363, column: 6, scope: !3988, inlinedAt: !3992)
!4098 = !DILocation(line: 363, column: 26, scope: !4095, inlinedAt: !3992)
!4099 = !DILocation(line: 364, column: 6, scope: !4100, inlinedAt: !3992)
!4100 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 364, column: 6)
!4101 = !DILocation(line: 364, column: 11, scope: !4100, inlinedAt: !3992)
!4102 = !DILocation(line: 364, column: 6, scope: !3988, inlinedAt: !3992)
!4103 = !DILocation(line: 364, column: 26, scope: !4100, inlinedAt: !3992)
!4104 = !DILocation(line: 365, column: 6, scope: !4105, inlinedAt: !3992)
!4105 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 365, column: 6)
!4106 = !DILocation(line: 365, column: 11, scope: !4105, inlinedAt: !3992)
!4107 = !DILocation(line: 365, column: 6, scope: !3988, inlinedAt: !3992)
!4108 = !DILocation(line: 365, column: 26, scope: !4105, inlinedAt: !3992)
!4109 = !DILocation(line: 366, column: 6, scope: !4110, inlinedAt: !3992)
!4110 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 366, column: 6)
!4111 = !DILocation(line: 366, column: 11, scope: !4110, inlinedAt: !3992)
!4112 = !DILocation(line: 366, column: 6, scope: !3988, inlinedAt: !3992)
!4113 = !DILocation(line: 366, column: 26, scope: !4110, inlinedAt: !3992)
!4114 = !DILocation(line: 367, column: 6, scope: !4115, inlinedAt: !3992)
!4115 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 367, column: 6)
!4116 = !DILocation(line: 367, column: 11, scope: !4115, inlinedAt: !3992)
!4117 = !DILocation(line: 367, column: 6, scope: !3988, inlinedAt: !3992)
!4118 = !DILocation(line: 367, column: 26, scope: !4115, inlinedAt: !3992)
!4119 = !DILocation(line: 368, column: 6, scope: !4120, inlinedAt: !3992)
!4120 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 368, column: 6)
!4121 = !DILocation(line: 368, column: 11, scope: !4120, inlinedAt: !3992)
!4122 = !DILocation(line: 368, column: 6, scope: !3988, inlinedAt: !3992)
!4123 = !DILocation(line: 368, column: 26, scope: !4120, inlinedAt: !3992)
!4124 = !DILocation(line: 369, column: 6, scope: !4125, inlinedAt: !3992)
!4125 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 369, column: 6)
!4126 = !DILocation(line: 369, column: 11, scope: !4125, inlinedAt: !3992)
!4127 = !DILocation(line: 369, column: 6, scope: !3988, inlinedAt: !3992)
!4128 = !DILocation(line: 369, column: 26, scope: !4125, inlinedAt: !3992)
!4129 = !DILocation(line: 370, column: 6, scope: !4130, inlinedAt: !3992)
!4130 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 370, column: 6)
!4131 = !DILocation(line: 370, column: 11, scope: !4130, inlinedAt: !3992)
!4132 = !DILocation(line: 370, column: 6, scope: !3988, inlinedAt: !3992)
!4133 = !DILocation(line: 370, column: 26, scope: !4130, inlinedAt: !3992)
!4134 = !DILocation(line: 371, column: 6, scope: !4135, inlinedAt: !3992)
!4135 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 371, column: 6)
!4136 = !DILocation(line: 371, column: 11, scope: !4135, inlinedAt: !3992)
!4137 = !DILocation(line: 371, column: 6, scope: !3988, inlinedAt: !3992)
!4138 = !DILocation(line: 371, column: 26, scope: !4135, inlinedAt: !3992)
!4139 = !DILocation(line: 372, column: 6, scope: !4140, inlinedAt: !3992)
!4140 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 372, column: 6)
!4141 = !DILocation(line: 372, column: 11, scope: !4140, inlinedAt: !3992)
!4142 = !DILocation(line: 372, column: 6, scope: !3988, inlinedAt: !3992)
!4143 = !DILocation(line: 372, column: 26, scope: !4140, inlinedAt: !3992)
!4144 = !DILocation(line: 373, column: 6, scope: !4145, inlinedAt: !3992)
!4145 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 373, column: 6)
!4146 = !DILocation(line: 373, column: 11, scope: !4145, inlinedAt: !3992)
!4147 = !DILocation(line: 373, column: 6, scope: !3988, inlinedAt: !3992)
!4148 = !DILocation(line: 373, column: 26, scope: !4145, inlinedAt: !3992)
!4149 = !DILocation(line: 374, column: 6, scope: !4150, inlinedAt: !3992)
!4150 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 374, column: 6)
!4151 = !DILocation(line: 374, column: 11, scope: !4150, inlinedAt: !3992)
!4152 = !DILocation(line: 374, column: 6, scope: !3988, inlinedAt: !3992)
!4153 = !DILocation(line: 374, column: 26, scope: !4150, inlinedAt: !3992)
!4154 = !DILocation(line: 375, column: 6, scope: !4155, inlinedAt: !3992)
!4155 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 375, column: 6)
!4156 = !DILocation(line: 375, column: 11, scope: !4155, inlinedAt: !3992)
!4157 = !DILocation(line: 375, column: 6, scope: !3988, inlinedAt: !3992)
!4158 = !DILocation(line: 375, column: 27, scope: !4155, inlinedAt: !3992)
!4159 = !DILocation(line: 376, column: 6, scope: !4160, inlinedAt: !3992)
!4160 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 376, column: 6)
!4161 = !DILocation(line: 376, column: 11, scope: !4160, inlinedAt: !3992)
!4162 = !DILocation(line: 376, column: 6, scope: !3988, inlinedAt: !3992)
!4163 = !DILocation(line: 376, column: 32, scope: !4160, inlinedAt: !3992)
!4164 = !DILocation(line: 377, column: 6, scope: !4165, inlinedAt: !3992)
!4165 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 377, column: 6)
!4166 = !DILocation(line: 377, column: 11, scope: !4165, inlinedAt: !3992)
!4167 = !DILocation(line: 377, column: 6, scope: !3988, inlinedAt: !3992)
!4168 = !DILocation(line: 377, column: 32, scope: !4165, inlinedAt: !3992)
!4169 = !DILocation(line: 378, column: 6, scope: !4170, inlinedAt: !3992)
!4170 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 378, column: 6)
!4171 = !DILocation(line: 378, column: 11, scope: !4170, inlinedAt: !3992)
!4172 = !DILocation(line: 378, column: 6, scope: !3988, inlinedAt: !3992)
!4173 = !DILocation(line: 378, column: 32, scope: !4170, inlinedAt: !3992)
!4174 = !DILocation(line: 379, column: 6, scope: !4175, inlinedAt: !3992)
!4175 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 379, column: 6)
!4176 = !DILocation(line: 379, column: 11, scope: !4175, inlinedAt: !3992)
!4177 = !DILocation(line: 379, column: 6, scope: !3988, inlinedAt: !3992)
!4178 = !DILocation(line: 379, column: 33, scope: !4175, inlinedAt: !3992)
!4179 = !DILocation(line: 380, column: 6, scope: !4180, inlinedAt: !3992)
!4180 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 380, column: 6)
!4181 = !DILocation(line: 380, column: 11, scope: !4180, inlinedAt: !3992)
!4182 = !DILocation(line: 380, column: 6, scope: !3988, inlinedAt: !3992)
!4183 = !DILocation(line: 380, column: 33, scope: !4180, inlinedAt: !3992)
!4184 = !DILocation(line: 381, column: 6, scope: !4185, inlinedAt: !3992)
!4185 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 381, column: 6)
!4186 = !DILocation(line: 381, column: 11, scope: !4185, inlinedAt: !3992)
!4187 = !DILocation(line: 381, column: 6, scope: !3988, inlinedAt: !3992)
!4188 = !DILocation(line: 381, column: 33, scope: !4185, inlinedAt: !3992)
!4189 = !DILocation(line: 382, column: 2, scope: !4190, inlinedAt: !3992)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !94, line: 382, column: 2)
!4191 = distinct !DILexicalBlock(scope: !3988, file: !94, line: 382, column: 2)
!4192 = !{i32 -2144234686, i32 -2144234657, i32 -2144234611, i32 -2144234553, i32 -2144234499, i32 -2144234445, i32 -2144234390, i32 -2144234359}
!4193 = !DILocation(line: 382, column: 2, scope: !4194, inlinedAt: !3992)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !94, line: 382, column: 2)
!4195 = distinct !DILexicalBlock(scope: !4191, file: !94, line: 382, column: 2)
!4196 = !{i32 -2144233916, i32 -2144233909, i32 -2144233855, i32 -2144233824, i32 -2144233794}
!4197 = !DILocation(line: 382, column: 2, scope: !4195, inlinedAt: !3992)
!4198 = !DILocation(line: 386, column: 1, scope: !3988, inlinedAt: !3992)
!4199 = !DILocation(line: 547, column: 9, scope: !3971, inlinedAt: !3974)
!4200 = !DILocation(line: 549, column: 8, scope: !4201, inlinedAt: !3974)
!4201 = distinct !DILexicalBlock(scope: !3971, file: !94, line: 549, column: 7)
!4202 = !DILocation(line: 549, column: 7, scope: !3971, inlinedAt: !3974)
!4203 = !DILocation(line: 550, column: 4, scope: !4201, inlinedAt: !3974)
!4204 = !DILocation(line: 553, column: 33, scope: !3971, inlinedAt: !3974)
!4205 = !DILocation(line: 325, column: 6, scope: !4206, inlinedAt: !3986)
!4206 = distinct !DILexicalBlock(scope: !3982, file: !94, line: 325, column: 6)
!4207 = !DILocation(line: 325, column: 6, scope: !3982, inlinedAt: !3986)
!4208 = !DILocation(line: 326, column: 3, scope: !4206, inlinedAt: !3986)
!4209 = !DILocation(line: 332, column: 9, scope: !3982, inlinedAt: !3986)
!4210 = !DILocation(line: 332, column: 15, scope: !3982, inlinedAt: !3986)
!4211 = !DILocation(line: 332, column: 2, scope: !3982, inlinedAt: !3986)
!4212 = !DILocation(line: 336, column: 1, scope: !3982, inlinedAt: !3986)
!4213 = !DILocation(line: 553, column: 5, scope: !3971, inlinedAt: !3974)
!4214 = !DILocation(line: 553, column: 41, scope: !3971, inlinedAt: !3974)
!4215 = !DILocation(line: 554, column: 5, scope: !3971, inlinedAt: !3974)
!4216 = !DILocation(line: 554, column: 12, scope: !3971, inlinedAt: !3974)
!4217 = !DILocation(line: 448, column: 31, scope: !3966, inlinedAt: !3970)
!4218 = !DILocation(line: 448, column: 34, scope: !3966, inlinedAt: !3970)
!4219 = !DILocation(line: 448, column: 14, scope: !3966, inlinedAt: !3970)
!4220 = !DILocation(line: 450, column: 22, scope: !3966, inlinedAt: !3970)
!4221 = !DILocation(line: 450, column: 25, scope: !3966, inlinedAt: !3970)
!4222 = !DILocation(line: 450, column: 30, scope: !3966, inlinedAt: !3970)
!4223 = !DILocation(line: 450, column: 36, scope: !3966, inlinedAt: !3970)
!4224 = !DILocation(line: 450, column: 8, scope: !3966, inlinedAt: !3970)
!4225 = !DILocation(line: 450, column: 6, scope: !3966, inlinedAt: !3970)
!4226 = !DILocation(line: 451, column: 9, scope: !3966, inlinedAt: !3970)
!4227 = !DILocation(line: 552, column: 3, scope: !3971, inlinedAt: !3974)
!4228 = !DILocation(line: 557, column: 19, scope: !3973, inlinedAt: !3974)
!4229 = !DILocation(line: 557, column: 25, scope: !3973, inlinedAt: !3974)
!4230 = !DILocation(line: 557, column: 9, scope: !3973, inlinedAt: !3974)
!4231 = !DILocation(line: 557, column: 2, scope: !3973, inlinedAt: !3974)
!4232 = !DILocation(line: 558, column: 1, scope: !3973, inlinedAt: !3974)
!4233 = !DILocation(line: 664, column: 2, scope: !3962)
!4234 = distinct !DISubprogram(name: "pnp_add_card_id", scope: !3, file: !3, line: 107, type: !4235, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!3774, !3764, !180}
!4237 = !DILocalVariable(name: "card", arg: 1, scope: !4234, file: !3, line: 107, type: !3764)
!4238 = !DILocation(line: 107, column: 56, scope: !4234)
!4239 = !DILocalVariable(name: "id", arg: 2, scope: !4234, file: !3, line: 107, type: !180)
!4240 = !DILocation(line: 107, column: 68, scope: !4234)
!4241 = !DILocalVariable(name: "dev_id", scope: !4234, file: !3, line: 109, type: !3774)
!4242 = !DILocation(line: 109, column: 17, scope: !4234)
!4243 = !DILocalVariable(name: "ptr", scope: !4234, file: !3, line: 109, type: !3774)
!4244 = !DILocation(line: 109, column: 26, scope: !4234)
!4245 = !DILocation(line: 111, column: 11, scope: !4234)
!4246 = !DILocation(line: 111, column: 9, scope: !4234)
!4247 = !DILocation(line: 112, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 112, column: 6)
!4249 = !DILocation(line: 112, column: 6, scope: !4234)
!4250 = !DILocation(line: 113, column: 3, scope: !4248)
!4251 = !DILocation(line: 115, column: 18, scope: !4234)
!4252 = !DILocation(line: 115, column: 2, scope: !4234)
!4253 = !DILocation(line: 115, column: 10, scope: !4234)
!4254 = !DILocation(line: 115, column: 16, scope: !4234)
!4255 = !DILocation(line: 116, column: 18, scope: !4234)
!4256 = !DILocation(line: 116, column: 2, scope: !4234)
!4257 = !DILocation(line: 116, column: 10, scope: !4234)
!4258 = !DILocation(line: 116, column: 16, scope: !4234)
!4259 = !DILocation(line: 117, column: 18, scope: !4234)
!4260 = !DILocation(line: 117, column: 2, scope: !4234)
!4261 = !DILocation(line: 117, column: 10, scope: !4234)
!4262 = !DILocation(line: 117, column: 16, scope: !4234)
!4263 = !DILocation(line: 118, column: 18, scope: !4234)
!4264 = !DILocation(line: 118, column: 2, scope: !4234)
!4265 = !DILocation(line: 118, column: 10, scope: !4234)
!4266 = !DILocation(line: 118, column: 16, scope: !4234)
!4267 = !DILocation(line: 119, column: 18, scope: !4234)
!4268 = !DILocation(line: 119, column: 2, scope: !4234)
!4269 = !DILocation(line: 119, column: 10, scope: !4234)
!4270 = !DILocation(line: 119, column: 16, scope: !4234)
!4271 = !DILocation(line: 120, column: 18, scope: !4234)
!4272 = !DILocation(line: 120, column: 2, scope: !4234)
!4273 = !DILocation(line: 120, column: 10, scope: !4234)
!4274 = !DILocation(line: 120, column: 16, scope: !4234)
!4275 = !DILocation(line: 121, column: 18, scope: !4234)
!4276 = !DILocation(line: 121, column: 2, scope: !4234)
!4277 = !DILocation(line: 121, column: 10, scope: !4234)
!4278 = !DILocation(line: 121, column: 16, scope: !4234)
!4279 = !DILocation(line: 122, column: 2, scope: !4234)
!4280 = !DILocation(line: 122, column: 10, scope: !4234)
!4281 = !DILocation(line: 122, column: 16, scope: !4234)
!4282 = !DILocation(line: 124, column: 2, scope: !4234)
!4283 = !DILocation(line: 124, column: 10, scope: !4234)
!4284 = !DILocation(line: 124, column: 15, scope: !4234)
!4285 = !DILocation(line: 125, column: 8, scope: !4234)
!4286 = !DILocation(line: 125, column: 14, scope: !4234)
!4287 = !DILocation(line: 125, column: 6, scope: !4234)
!4288 = !DILocation(line: 126, column: 2, scope: !4234)
!4289 = !DILocation(line: 126, column: 9, scope: !4234)
!4290 = !DILocation(line: 126, column: 13, scope: !4234)
!4291 = !DILocation(line: 126, column: 16, scope: !4234)
!4292 = !DILocation(line: 126, column: 21, scope: !4234)
!4293 = !DILocation(line: 0, scope: !4234)
!4294 = !DILocation(line: 127, column: 9, scope: !4234)
!4295 = !DILocation(line: 127, column: 14, scope: !4234)
!4296 = !DILocation(line: 127, column: 7, scope: !4234)
!4297 = distinct !{!4297, !4288, !4295}
!4298 = !DILocation(line: 128, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 128, column: 6)
!4300 = !DILocation(line: 128, column: 6, scope: !4234)
!4301 = !DILocation(line: 129, column: 15, scope: !4299)
!4302 = !DILocation(line: 129, column: 3, scope: !4299)
!4303 = !DILocation(line: 129, column: 8, scope: !4299)
!4304 = !DILocation(line: 129, column: 13, scope: !4299)
!4305 = !DILocation(line: 131, column: 14, scope: !4299)
!4306 = !DILocation(line: 131, column: 3, scope: !4299)
!4307 = !DILocation(line: 131, column: 9, scope: !4299)
!4308 = !DILocation(line: 131, column: 12, scope: !4299)
!4309 = !DILocation(line: 133, column: 9, scope: !4234)
!4310 = !DILocation(line: 133, column: 2, scope: !4234)
!4311 = !DILocation(line: 134, column: 1, scope: !4234)
!4312 = distinct !DISubprogram(name: "pnp_add_card", scope: !3, file: !3, line: 234, type: !4313, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!164, !3764}
!4315 = !DILocalVariable(name: "card", arg: 1, scope: !4312, file: !3, line: 234, type: !3764)
!4316 = !DILocation(line: 234, column: 35, scope: !4312)
!4317 = !DILocalVariable(name: "error", scope: !4312, file: !3, line: 236, type: !164)
!4318 = !DILocation(line: 236, column: 6, scope: !4312)
!4319 = !DILocalVariable(name: "pos", scope: !4312, file: !3, line: 237, type: !128)
!4320 = !DILocation(line: 237, column: 20, scope: !4312)
!4321 = !DILocalVariable(name: "temp", scope: !4312, file: !3, line: 237, type: !128)
!4322 = !DILocation(line: 237, column: 26, scope: !4312)
!4323 = !DILocation(line: 239, column: 2, scope: !4312)
!4324 = !DILocation(line: 239, column: 8, scope: !4312)
!4325 = !DILocation(line: 239, column: 12, scope: !4312)
!4326 = !DILocation(line: 239, column: 16, scope: !4312)
!4327 = !DILocation(line: 240, column: 2, scope: !4312)
!4328 = !DILocation(line: 240, column: 8, scope: !4312)
!4329 = !DILocation(line: 240, column: 12, scope: !4312)
!4330 = !DILocation(line: 240, column: 20, scope: !4312)
!4331 = !DILocation(line: 241, column: 27, scope: !4312)
!4332 = !DILocation(line: 241, column: 33, scope: !4312)
!4333 = !DILocation(line: 241, column: 10, scope: !4312)
!4334 = !DILocation(line: 241, column: 8, scope: !4312)
!4335 = !DILocation(line: 242, column: 6, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 242, column: 6)
!4337 = !DILocation(line: 242, column: 6, scope: !4312)
!4338 = !DILocation(line: 243, column: 3, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 242, column: 13)
!4340 = !DILocation(line: 244, column: 15, scope: !4339)
!4341 = !DILocation(line: 244, column: 21, scope: !4339)
!4342 = !DILocation(line: 244, column: 3, scope: !4339)
!4343 = !DILocation(line: 245, column: 10, scope: !4339)
!4344 = !DILocation(line: 245, column: 3, scope: !4339)
!4345 = !DILocation(line: 248, column: 28, scope: !4312)
!4346 = !DILocation(line: 248, column: 2, scope: !4312)
!4347 = !DILocation(line: 249, column: 2, scope: !4312)
!4348 = !DILocation(line: 250, column: 17, scope: !4312)
!4349 = !DILocation(line: 250, column: 23, scope: !4312)
!4350 = !DILocation(line: 250, column: 2, scope: !4312)
!4351 = !DILocation(line: 251, column: 17, scope: !4312)
!4352 = !DILocation(line: 251, column: 23, scope: !4312)
!4353 = !DILocation(line: 251, column: 39, scope: !4312)
!4354 = !DILocation(line: 251, column: 45, scope: !4312)
!4355 = !DILocation(line: 251, column: 55, scope: !4312)
!4356 = !DILocation(line: 251, column: 2, scope: !4312)
!4357 = !DILocation(line: 252, column: 2, scope: !4312)
!4358 = !DILocation(line: 257, column: 2, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 257, column: 2)
!4360 = !DILocation(line: 257, column: 2, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 257, column: 2)
!4362 = !DILocalVariable(name: "dev", scope: !4363, file: !3, line: 258, type: !109)
!4363 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 257, column: 37)
!4364 = !DILocation(line: 258, column: 19, scope: !4363)
!4365 = !DILocalVariable(name: "__mptr", scope: !4366, file: !3, line: 258, type: !108)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 258, column: 25)
!4367 = !DILocation(line: 258, column: 25, scope: !4366)
!4368 = !DILocation(line: 258, column: 25, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 258, column: 25)
!4370 = !DILocation(line: 259, column: 20, scope: !4363)
!4371 = !DILocation(line: 259, column: 3, scope: !4363)
!4372 = !DILocation(line: 260, column: 2, scope: !4363)
!4373 = distinct !{!4373, !4358, !4374}
!4374 = !DILocation(line: 260, column: 2, scope: !4359)
!4375 = !DILocation(line: 263, column: 2, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 263, column: 2)
!4377 = !DILocation(line: 263, column: 2, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 263, column: 2)
!4379 = !DILocalVariable(name: "drv", scope: !4380, file: !3, line: 264, type: !3822)
!4380 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 263, column: 51)
!4381 = !DILocation(line: 264, column: 27, scope: !4380)
!4382 = !DILocalVariable(name: "__mptr", scope: !4383, file: !3, line: 265, type: !108)
!4383 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 265, column: 7)
!4384 = !DILocation(line: 265, column: 7, scope: !4383)
!4385 = !DILocation(line: 265, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 265, column: 7)
!4387 = !DILocation(line: 267, column: 14, scope: !4380)
!4388 = !DILocation(line: 267, column: 20, scope: !4380)
!4389 = !DILocation(line: 267, column: 3, scope: !4380)
!4390 = !DILocation(line: 268, column: 2, scope: !4380)
!4391 = distinct !{!4391, !4375, !4392}
!4392 = !DILocation(line: 268, column: 2, scope: !4376)
!4393 = !DILocation(line: 269, column: 2, scope: !4312)
!4394 = !DILocation(line: 270, column: 1, scope: !4312)
!4395 = distinct !DISubprogram(name: "pnp_release_card", scope: !3, file: !3, line: 149, type: !3308, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4396 = !DILocalVariable(name: "dmdev", arg: 1, scope: !4395, file: !3, line: 149, type: !3285)
!4397 = !DILocation(line: 149, column: 45, scope: !4395)
!4398 = !DILocalVariable(name: "card", scope: !4395, file: !3, line: 151, type: !3764)
!4399 = !DILocation(line: 151, column: 19, scope: !4395)
!4400 = !DILocalVariable(name: "__mptr", scope: !4401, file: !3, line: 151, type: !108)
!4401 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 151, column: 26)
!4402 = !DILocation(line: 151, column: 26, scope: !4401)
!4403 = !DILocation(line: 151, column: 26, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 151, column: 26)
!4405 = !DILocation(line: 153, column: 20, scope: !4395)
!4406 = !DILocation(line: 153, column: 2, scope: !4395)
!4407 = !DILocation(line: 154, column: 8, scope: !4395)
!4408 = !DILocation(line: 154, column: 2, scope: !4395)
!4409 = !DILocation(line: 155, column: 1, scope: !4395)
!4410 = distinct !DISubprogram(name: "pnp_interface_attach_card", scope: !3, file: !3, line: 212, type: !4313, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4411 = !DILocalVariable(name: "card", arg: 1, scope: !4410, file: !3, line: 212, type: !3764)
!4412 = !DILocation(line: 212, column: 55, scope: !4410)
!4413 = !DILocalVariable(name: "rc", scope: !4410, file: !3, line: 214, type: !164)
!4414 = !DILocation(line: 214, column: 6, scope: !4410)
!4415 = !DILocation(line: 214, column: 31, scope: !4410)
!4416 = !DILocation(line: 214, column: 37, scope: !4410)
!4417 = !DILocation(line: 214, column: 11, scope: !4410)
!4418 = !DILocation(line: 216, column: 6, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 216, column: 6)
!4420 = !DILocation(line: 216, column: 6, scope: !4410)
!4421 = !DILocation(line: 217, column: 10, scope: !4419)
!4422 = !DILocation(line: 217, column: 3, scope: !4419)
!4423 = !DILocation(line: 219, column: 27, scope: !4410)
!4424 = !DILocation(line: 219, column: 33, scope: !4410)
!4425 = !DILocation(line: 219, column: 7, scope: !4410)
!4426 = !DILocation(line: 219, column: 5, scope: !4410)
!4427 = !DILocation(line: 220, column: 6, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 220, column: 6)
!4429 = !DILocation(line: 220, column: 6, scope: !4410)
!4430 = !DILocation(line: 221, column: 3, scope: !4428)
!4431 = !DILocation(line: 223, column: 2, scope: !4410)
!4432 = !DILabel(scope: !4410, name: "err_name", file: !3, line: 225)
!4433 = !DILocation(line: 225, column: 1, scope: !4410)
!4434 = !DILocation(line: 226, column: 22, scope: !4410)
!4435 = !DILocation(line: 226, column: 28, scope: !4410)
!4436 = !DILocation(line: 226, column: 2, scope: !4410)
!4437 = !DILocation(line: 227, column: 9, scope: !4410)
!4438 = !DILocation(line: 227, column: 2, scope: !4410)
!4439 = !DILocation(line: 228, column: 1, scope: !4410)
!4440 = distinct !DISubprogram(name: "list_add_tail", scope: !4441, file: !4441, line: 98, type: !4442, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4441 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !128, !128}
!4444 = !DILocalVariable(name: "new", arg: 1, scope: !4440, file: !4441, line: 98, type: !128)
!4445 = !DILocation(line: 98, column: 52, scope: !4440)
!4446 = !DILocalVariable(name: "head", arg: 2, scope: !4440, file: !4441, line: 98, type: !128)
!4447 = !DILocation(line: 98, column: 75, scope: !4440)
!4448 = !DILocation(line: 100, column: 13, scope: !4440)
!4449 = !DILocation(line: 100, column: 18, scope: !4440)
!4450 = !DILocation(line: 100, column: 24, scope: !4440)
!4451 = !DILocation(line: 100, column: 30, scope: !4440)
!4452 = !DILocation(line: 100, column: 2, scope: !4440)
!4453 = !DILocation(line: 101, column: 1, scope: !4440)
!4454 = distinct !DISubprogram(name: "card_probe", scope: !3, file: !3, line: 71, type: !4455, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!164, !3764, !3822}
!4457 = !DILocalVariable(name: "card", arg: 1, scope: !4454, file: !3, line: 71, type: !3764)
!4458 = !DILocation(line: 71, column: 40, scope: !4454)
!4459 = !DILocalVariable(name: "drv", arg: 2, scope: !4454, file: !3, line: 71, type: !3822)
!4460 = !DILocation(line: 71, column: 70, scope: !4454)
!4461 = !DILocalVariable(name: "id", scope: !4454, file: !3, line: 73, type: !3828)
!4462 = !DILocation(line: 73, column: 35, scope: !4454)
!4463 = !DILocalVariable(name: "clink", scope: !4454, file: !3, line: 74, type: !3817)
!4464 = !DILocation(line: 74, column: 24, scope: !4454)
!4465 = !DILocalVariable(name: "dev", scope: !4454, file: !3, line: 75, type: !109)
!4466 = !DILocation(line: 75, column: 18, scope: !4454)
!4467 = !DILocation(line: 77, column: 7, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 77, column: 6)
!4469 = !DILocation(line: 77, column: 12, scope: !4468)
!4470 = !DILocation(line: 77, column: 6, scope: !4454)
!4471 = !DILocation(line: 78, column: 3, scope: !4468)
!4472 = !DILocation(line: 79, column: 18, scope: !4454)
!4473 = !DILocation(line: 79, column: 23, scope: !4454)
!4474 = !DILocation(line: 79, column: 7, scope: !4454)
!4475 = !DILocation(line: 79, column: 5, scope: !4454)
!4476 = !DILocation(line: 80, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 80, column: 6)
!4478 = !DILocation(line: 80, column: 6, scope: !4454)
!4479 = !DILocation(line: 81, column: 3, scope: !4477)
!4480 = !DILocation(line: 83, column: 10, scope: !4454)
!4481 = !DILocation(line: 83, column: 8, scope: !4454)
!4482 = !DILocation(line: 84, column: 7, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 84, column: 6)
!4484 = !DILocation(line: 84, column: 6, scope: !4454)
!4485 = !DILocation(line: 85, column: 3, scope: !4483)
!4486 = !DILocation(line: 86, column: 16, scope: !4454)
!4487 = !DILocation(line: 86, column: 2, scope: !4454)
!4488 = !DILocation(line: 86, column: 9, scope: !4454)
!4489 = !DILocation(line: 86, column: 14, scope: !4454)
!4490 = !DILocation(line: 87, column: 18, scope: !4454)
!4491 = !DILocation(line: 87, column: 2, scope: !4454)
!4492 = !DILocation(line: 87, column: 9, scope: !4454)
!4493 = !DILocation(line: 87, column: 16, scope: !4454)
!4494 = !DILocation(line: 88, column: 2, scope: !4454)
!4495 = !DILocation(line: 88, column: 9, scope: !4454)
!4496 = !DILocation(line: 88, column: 20, scope: !4454)
!4497 = !DILocation(line: 90, column: 6, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 90, column: 6)
!4499 = !DILocation(line: 90, column: 11, scope: !4498)
!4500 = !DILocation(line: 90, column: 17, scope: !4498)
!4501 = !DILocation(line: 90, column: 24, scope: !4498)
!4502 = !DILocation(line: 90, column: 28, scope: !4498)
!4503 = !DILocation(line: 90, column: 6, scope: !4454)
!4504 = !DILocation(line: 91, column: 3, scope: !4498)
!4505 = !DILocalVariable(name: "__mptr", scope: !4506, file: !3, line: 94, type: !108)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 94, column: 2)
!4507 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 94, column: 2)
!4508 = !DILocation(line: 94, column: 2, scope: !4506)
!4509 = !DILocation(line: 94, column: 2, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 94, column: 2)
!4511 = !DILocation(line: 94, column: 2, scope: !4507)
!4512 = !DILocation(line: 94, column: 2, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 94, column: 2)
!4514 = !DILocation(line: 95, column: 7, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 95, column: 7)
!4516 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 94, column: 31)
!4517 = !DILocation(line: 95, column: 12, scope: !4515)
!4518 = !DILocation(line: 95, column: 25, scope: !4515)
!4519 = !DILocation(line: 95, column: 22, scope: !4515)
!4520 = !DILocation(line: 95, column: 7, scope: !4516)
!4521 = !DILocation(line: 96, column: 28, scope: !4515)
!4522 = !DILocation(line: 96, column: 4, scope: !4515)
!4523 = !DILocation(line: 97, column: 2, scope: !4516)
!4524 = !DILocalVariable(name: "__mptr", scope: !4525, file: !3, line: 94, type: !108)
!4525 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 94, column: 2)
!4526 = !DILocation(line: 94, column: 2, scope: !4525)
!4527 = !DILocation(line: 94, column: 2, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 94, column: 2)
!4529 = distinct !{!4529, !4511, !4530}
!4530 = !DILocation(line: 97, column: 2, scope: !4507)
!4531 = !DILocation(line: 98, column: 8, scope: !4454)
!4532 = !DILocation(line: 98, column: 2, scope: !4454)
!4533 = !DILocation(line: 99, column: 2, scope: !4454)
!4534 = !DILocation(line: 100, column: 1, scope: !4454)
!4535 = distinct !DISubprogram(name: "pnp_remove_card", scope: !3, file: !3, line: 276, type: !4536, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !3764}
!4538 = !DILocalVariable(name: "card", arg: 1, scope: !4535, file: !3, line: 276, type: !3764)
!4539 = !DILocation(line: 276, column: 39, scope: !4535)
!4540 = !DILocalVariable(name: "pos", scope: !4535, file: !3, line: 278, type: !128)
!4541 = !DILocation(line: 278, column: 20, scope: !4535)
!4542 = !DILocalVariable(name: "temp", scope: !4535, file: !3, line: 278, type: !128)
!4543 = !DILocation(line: 278, column: 26, scope: !4535)
!4544 = !DILocation(line: 280, column: 21, scope: !4535)
!4545 = !DILocation(line: 280, column: 27, scope: !4535)
!4546 = !DILocation(line: 280, column: 2, scope: !4535)
!4547 = !DILocation(line: 281, column: 2, scope: !4535)
!4548 = !DILocation(line: 282, column: 12, scope: !4535)
!4549 = !DILocation(line: 282, column: 18, scope: !4535)
!4550 = !DILocation(line: 282, column: 2, scope: !4535)
!4551 = !DILocation(line: 283, column: 12, scope: !4535)
!4552 = !DILocation(line: 283, column: 18, scope: !4535)
!4553 = !DILocation(line: 283, column: 2, scope: !4535)
!4554 = !DILocation(line: 284, column: 2, scope: !4535)
!4555 = !DILocation(line: 285, column: 2, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 285, column: 2)
!4557 = !DILocation(line: 285, column: 2, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 285, column: 2)
!4559 = !DILocalVariable(name: "dev", scope: !4560, file: !3, line: 286, type: !109)
!4560 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 285, column: 48)
!4561 = !DILocation(line: 286, column: 19, scope: !4560)
!4562 = !DILocalVariable(name: "__mptr", scope: !4563, file: !3, line: 286, type: !108)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 286, column: 25)
!4564 = !DILocation(line: 286, column: 25, scope: !4563)
!4565 = !DILocation(line: 286, column: 25, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 286, column: 25)
!4567 = !DILocation(line: 287, column: 26, scope: !4560)
!4568 = !DILocation(line: 287, column: 3, scope: !4560)
!4569 = !DILocation(line: 288, column: 2, scope: !4560)
!4570 = distinct !{!4570, !4555, !4571}
!4571 = !DILocation(line: 288, column: 2, scope: !4556)
!4572 = !DILocation(line: 289, column: 1, scope: !4535)
!4573 = distinct !DISubprogram(name: "list_del", scope: !4441, file: !4441, line: 144, type: !4574, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{null, !128}
!4576 = !DILocalVariable(name: "entry", arg: 1, scope: !4573, file: !4441, line: 144, type: !128)
!4577 = !DILocation(line: 144, column: 47, scope: !4573)
!4578 = !DILocation(line: 146, column: 19, scope: !4573)
!4579 = !DILocation(line: 146, column: 2, scope: !4573)
!4580 = !DILocation(line: 147, column: 2, scope: !4573)
!4581 = !DILocation(line: 147, column: 9, scope: !4573)
!4582 = !DILocation(line: 147, column: 14, scope: !4573)
!4583 = !DILocation(line: 148, column: 2, scope: !4573)
!4584 = !DILocation(line: 148, column: 9, scope: !4573)
!4585 = !DILocation(line: 148, column: 14, scope: !4573)
!4586 = !DILocation(line: 149, column: 1, scope: !4573)
!4587 = distinct !DISubprogram(name: "pnp_remove_card_device", scope: !3, file: !3, line: 313, type: !3810, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4588 = !DILocalVariable(name: "dev", arg: 1, scope: !4587, file: !3, line: 313, type: !109)
!4589 = !DILocation(line: 313, column: 45, scope: !4587)
!4590 = !DILocation(line: 315, column: 2, scope: !4587)
!4591 = !DILocation(line: 316, column: 2, scope: !4587)
!4592 = !DILocation(line: 316, column: 7, scope: !4587)
!4593 = !DILocation(line: 316, column: 12, scope: !4587)
!4594 = !DILocation(line: 317, column: 12, scope: !4587)
!4595 = !DILocation(line: 317, column: 17, scope: !4587)
!4596 = !DILocation(line: 317, column: 2, scope: !4587)
!4597 = !DILocation(line: 318, column: 2, scope: !4587)
!4598 = !DILocation(line: 319, column: 22, scope: !4587)
!4599 = !DILocation(line: 319, column: 2, scope: !4587)
!4600 = !DILocation(line: 320, column: 1, scope: !4587)
!4601 = distinct !DISubprogram(name: "pnp_add_card_device", scope: !3, file: !3, line: 296, type: !4602, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!164, !3764, !109}
!4604 = !DILocalVariable(name: "card", arg: 1, scope: !4601, file: !3, line: 296, type: !3764)
!4605 = !DILocation(line: 296, column: 42, scope: !4601)
!4606 = !DILocalVariable(name: "dev", arg: 2, scope: !4601, file: !3, line: 296, type: !109)
!4607 = !DILocation(line: 296, column: 64, scope: !4601)
!4608 = !DILocation(line: 298, column: 21, scope: !4601)
!4609 = !DILocation(line: 298, column: 27, scope: !4601)
!4610 = !DILocation(line: 298, column: 2, scope: !4601)
!4611 = !DILocation(line: 298, column: 7, scope: !4601)
!4612 = !DILocation(line: 298, column: 11, scope: !4601)
!4613 = !DILocation(line: 298, column: 18, scope: !4601)
!4614 = !DILocation(line: 299, column: 2, scope: !4601)
!4615 = !DILocation(line: 299, column: 7, scope: !4601)
!4616 = !DILocation(line: 299, column: 17, scope: !4601)
!4617 = !DILocation(line: 300, column: 16, scope: !4601)
!4618 = !DILocation(line: 300, column: 21, scope: !4601)
!4619 = !DILocation(line: 301, column: 8, scope: !4601)
!4620 = !DILocation(line: 301, column: 13, scope: !4601)
!4621 = !DILocation(line: 301, column: 23, scope: !4601)
!4622 = !DILocation(line: 301, column: 31, scope: !4601)
!4623 = !DILocation(line: 301, column: 37, scope: !4601)
!4624 = !DILocation(line: 301, column: 45, scope: !4601)
!4625 = !DILocation(line: 301, column: 50, scope: !4601)
!4626 = !DILocation(line: 300, column: 2, scope: !4601)
!4627 = !DILocation(line: 302, column: 2, scope: !4601)
!4628 = !DILocation(line: 303, column: 14, scope: !4601)
!4629 = !DILocation(line: 303, column: 2, scope: !4601)
!4630 = !DILocation(line: 303, column: 7, scope: !4601)
!4631 = !DILocation(line: 303, column: 12, scope: !4601)
!4632 = !DILocation(line: 304, column: 17, scope: !4601)
!4633 = !DILocation(line: 304, column: 22, scope: !4601)
!4634 = !DILocation(line: 304, column: 34, scope: !4601)
!4635 = !DILocation(line: 304, column: 40, scope: !4601)
!4636 = !DILocation(line: 304, column: 2, scope: !4601)
!4637 = !DILocation(line: 305, column: 2, scope: !4601)
!4638 = !DILocation(line: 306, column: 2, scope: !4601)
!4639 = distinct !DISubprogram(name: "pnp_request_card_device", scope: !3, file: !3, line: 328, type: !4640, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!109, !3817, !121, !109}
!4642 = !DILocalVariable(name: "clink", arg: 1, scope: !4639, file: !3, line: 328, type: !3817)
!4643 = !DILocation(line: 328, column: 63, scope: !4639)
!4644 = !DILocalVariable(name: "id", arg: 2, scope: !4639, file: !3, line: 329, type: !121)
!4645 = !DILocation(line: 329, column: 18, scope: !4639)
!4646 = !DILocalVariable(name: "from", arg: 3, scope: !4639, file: !3, line: 329, type: !109)
!4647 = !DILocation(line: 329, column: 38, scope: !4639)
!4648 = !DILocalVariable(name: "pos", scope: !4639, file: !3, line: 331, type: !128)
!4649 = !DILocation(line: 331, column: 20, scope: !4639)
!4650 = !DILocalVariable(name: "dev", scope: !4639, file: !3, line: 332, type: !109)
!4651 = !DILocation(line: 332, column: 18, scope: !4639)
!4652 = !DILocalVariable(name: "drv", scope: !4639, file: !3, line: 333, type: !3822)
!4653 = !DILocation(line: 333, column: 26, scope: !4639)
!4654 = !DILocalVariable(name: "card", scope: !4639, file: !3, line: 334, type: !3764)
!4655 = !DILocation(line: 334, column: 19, scope: !4639)
!4656 = !DILocation(line: 336, column: 7, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 336, column: 6)
!4658 = !DILocation(line: 336, column: 13, scope: !4657)
!4659 = !DILocation(line: 336, column: 17, scope: !4657)
!4660 = !DILocation(line: 336, column: 6, scope: !4639)
!4661 = !DILocation(line: 337, column: 3, scope: !4657)
!4662 = !DILocation(line: 339, column: 9, scope: !4639)
!4663 = !DILocation(line: 339, column: 16, scope: !4639)
!4664 = !DILocation(line: 339, column: 7, scope: !4639)
!4665 = !DILocation(line: 340, column: 8, scope: !4639)
!4666 = !DILocation(line: 340, column: 15, scope: !4639)
!4667 = !DILocation(line: 340, column: 6, scope: !4639)
!4668 = !DILocation(line: 341, column: 7, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 341, column: 6)
!4670 = !DILocation(line: 341, column: 6, scope: !4639)
!4671 = !DILocation(line: 342, column: 9, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 341, column: 13)
!4673 = !DILocation(line: 342, column: 15, scope: !4672)
!4674 = !DILocation(line: 342, column: 23, scope: !4672)
!4675 = !DILocation(line: 342, column: 7, scope: !4672)
!4676 = !DILocation(line: 343, column: 2, scope: !4672)
!4677 = !DILocation(line: 344, column: 7, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 344, column: 7)
!4679 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 343, column: 9)
!4680 = !DILocation(line: 344, column: 13, scope: !4678)
!4681 = !DILocation(line: 344, column: 21, scope: !4678)
!4682 = !DILocation(line: 344, column: 18, scope: !4678)
!4683 = !DILocation(line: 344, column: 7, scope: !4679)
!4684 = !DILocation(line: 345, column: 4, scope: !4678)
!4685 = !DILocation(line: 346, column: 9, scope: !4679)
!4686 = !DILocation(line: 346, column: 15, scope: !4679)
!4687 = !DILocation(line: 346, column: 25, scope: !4679)
!4688 = !DILocation(line: 346, column: 7, scope: !4679)
!4689 = !DILocation(line: 348, column: 2, scope: !4639)
!4690 = !DILocation(line: 348, column: 9, scope: !4639)
!4691 = !DILocation(line: 348, column: 17, scope: !4639)
!4692 = !DILocation(line: 348, column: 23, scope: !4639)
!4693 = !DILocation(line: 348, column: 13, scope: !4639)
!4694 = !DILocalVariable(name: "__mptr", scope: !4695, file: !3, line: 349, type: !108)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 349, column: 9)
!4696 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 348, column: 32)
!4697 = !DILocation(line: 349, column: 9, scope: !4695)
!4698 = !DILocation(line: 349, column: 9, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 349, column: 9)
!4700 = !DILocation(line: 349, column: 7, scope: !4696)
!4701 = !DILocation(line: 350, column: 9, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 350, column: 7)
!4703 = !DILocation(line: 350, column: 14, scope: !4702)
!4704 = !DILocation(line: 350, column: 25, scope: !4702)
!4705 = !DILocation(line: 350, column: 43, scope: !4702)
!4706 = !DILocation(line: 350, column: 48, scope: !4702)
!4707 = !DILocation(line: 350, column: 52, scope: !4702)
!4708 = !DILocation(line: 350, column: 28, scope: !4702)
!4709 = !DILocation(line: 350, column: 7, scope: !4696)
!4710 = !DILocation(line: 351, column: 4, scope: !4702)
!4711 = !DILocation(line: 352, column: 9, scope: !4696)
!4712 = !DILocation(line: 352, column: 14, scope: !4696)
!4713 = !DILocation(line: 352, column: 7, scope: !4696)
!4714 = distinct !{!4714, !4689, !4715}
!4715 = !DILocation(line: 353, column: 2, scope: !4639)
!4716 = !DILocation(line: 355, column: 2, scope: !4639)
!4717 = !DILabel(scope: !4639, name: "found", file: !3, line: 357)
!4718 = !DILocation(line: 357, column: 1, scope: !4639)
!4719 = !DILocation(line: 358, column: 19, scope: !4639)
!4720 = !DILocation(line: 358, column: 2, scope: !4639)
!4721 = !DILocation(line: 358, column: 7, scope: !4639)
!4722 = !DILocation(line: 358, column: 17, scope: !4639)
!4723 = !DILocation(line: 359, column: 21, scope: !4639)
!4724 = !DILocation(line: 359, column: 26, scope: !4639)
!4725 = !DILocation(line: 359, column: 31, scope: !4639)
!4726 = !DILocation(line: 359, column: 2, scope: !4639)
!4727 = !DILocation(line: 359, column: 7, scope: !4639)
!4728 = !DILocation(line: 359, column: 11, scope: !4639)
!4729 = !DILocation(line: 359, column: 18, scope: !4639)
!4730 = !DILocation(line: 360, column: 19, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 360, column: 6)
!4732 = !DILocation(line: 360, column: 26, scope: !4731)
!4733 = !DILocation(line: 360, column: 31, scope: !4731)
!4734 = !DILocation(line: 360, column: 6, scope: !4731)
!4735 = !DILocation(line: 360, column: 6, scope: !4639)
!4736 = !DILocation(line: 361, column: 3, scope: !4731)
!4737 = !DILocation(line: 362, column: 26, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 362, column: 6)
!4739 = !DILocation(line: 362, column: 31, scope: !4738)
!4740 = !DILocation(line: 362, column: 6, scope: !4738)
!4741 = !DILocation(line: 362, column: 6, scope: !4639)
!4742 = !DILocation(line: 363, column: 3, scope: !4738)
!4743 = !DILocation(line: 365, column: 9, scope: !4639)
!4744 = !DILocation(line: 365, column: 2, scope: !4639)
!4745 = !DILabel(scope: !4639, name: "err_out", file: !3, line: 367)
!4746 = !DILocation(line: 367, column: 1, scope: !4639)
!4747 = !DILocation(line: 368, column: 2, scope: !4639)
!4748 = !DILocation(line: 368, column: 7, scope: !4639)
!4749 = !DILocation(line: 368, column: 11, scope: !4639)
!4750 = !DILocation(line: 368, column: 18, scope: !4639)
!4751 = !DILocation(line: 369, column: 2, scope: !4639)
!4752 = !DILocation(line: 369, column: 7, scope: !4639)
!4753 = !DILocation(line: 369, column: 17, scope: !4639)
!4754 = !DILocation(line: 370, column: 2, scope: !4639)
!4755 = !DILocation(line: 371, column: 1, scope: !4639)
!4756 = distinct !DISubprogram(name: "pnp_release_card_device", scope: !3, file: !3, line: 377, type: !3810, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4757 = !DILocalVariable(name: "dev", arg: 1, scope: !4756, file: !3, line: 377, type: !109)
!4758 = !DILocation(line: 377, column: 46, scope: !4756)
!4759 = !DILocalVariable(name: "drv", scope: !4756, file: !3, line: 379, type: !3822)
!4760 = !DILocation(line: 379, column: 26, scope: !4756)
!4761 = !DILocation(line: 379, column: 32, scope: !4756)
!4762 = !DILocation(line: 379, column: 37, scope: !4756)
!4763 = !DILocation(line: 379, column: 48, scope: !4756)
!4764 = !DILocation(line: 381, column: 2, scope: !4756)
!4765 = !DILocation(line: 381, column: 7, scope: !4756)
!4766 = !DILocation(line: 381, column: 12, scope: !4756)
!4767 = !DILocation(line: 381, column: 19, scope: !4756)
!4768 = !DILocation(line: 382, column: 25, scope: !4756)
!4769 = !DILocation(line: 382, column: 30, scope: !4756)
!4770 = !DILocation(line: 382, column: 2, scope: !4756)
!4771 = !DILocation(line: 383, column: 2, scope: !4756)
!4772 = !DILocation(line: 383, column: 7, scope: !4756)
!4773 = !DILocation(line: 383, column: 12, scope: !4756)
!4774 = !DILocation(line: 383, column: 19, scope: !4756)
!4775 = !DILocation(line: 384, column: 1, scope: !4756)
!4776 = distinct !DISubprogram(name: "card_remove", scope: !3, file: !3, line: 53, type: !3810, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4777 = !DILocalVariable(name: "dev", arg: 1, scope: !4776, file: !3, line: 53, type: !109)
!4778 = !DILocation(line: 53, column: 41, scope: !4776)
!4779 = !DILocation(line: 55, column: 2, scope: !4776)
!4780 = !DILocation(line: 55, column: 7, scope: !4776)
!4781 = !DILocation(line: 55, column: 17, scope: !4776)
!4782 = !DILocation(line: 56, column: 1, scope: !4776)
!4783 = distinct !DISubprogram(name: "card_remove_first", scope: !3, file: !3, line: 58, type: !3810, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4784 = !DILocalVariable(name: "dev", arg: 1, scope: !4783, file: !3, line: 58, type: !109)
!4785 = !DILocation(line: 58, column: 47, scope: !4783)
!4786 = !DILocalVariable(name: "drv", scope: !4783, file: !3, line: 60, type: !3822)
!4787 = !DILocation(line: 60, column: 26, scope: !4783)
!4788 = !DILocalVariable(name: "__mptr", scope: !4789, file: !3, line: 60, type: !108)
!4789 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 60, column: 32)
!4790 = !DILocation(line: 60, column: 32, scope: !4789)
!4791 = !DILocation(line: 60, column: 32, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 60, column: 32)
!4793 = !DILocation(line: 62, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 62, column: 6)
!4795 = !DILocation(line: 62, column: 12, scope: !4794)
!4796 = !DILocation(line: 62, column: 17, scope: !4794)
!4797 = !DILocation(line: 62, column: 21, scope: !4794)
!4798 = !DILocation(line: 62, column: 6, scope: !4783)
!4799 = !DILocation(line: 63, column: 3, scope: !4794)
!4800 = !DILocation(line: 64, column: 6, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 64, column: 6)
!4802 = !DILocation(line: 64, column: 11, scope: !4801)
!4803 = !DILocation(line: 64, column: 6, scope: !4783)
!4804 = !DILocation(line: 65, column: 3, scope: !4801)
!4805 = !DILocation(line: 65, column: 8, scope: !4801)
!4806 = !DILocation(line: 65, column: 15, scope: !4801)
!4807 = !DILocation(line: 65, column: 20, scope: !4801)
!4808 = !DILocation(line: 66, column: 2, scope: !4783)
!4809 = !DILocation(line: 66, column: 7, scope: !4783)
!4810 = !DILocation(line: 66, column: 12, scope: !4783)
!4811 = !DILocation(line: 66, column: 19, scope: !4783)
!4812 = !DILocation(line: 67, column: 8, scope: !4783)
!4813 = !DILocation(line: 67, column: 13, scope: !4783)
!4814 = !DILocation(line: 67, column: 2, scope: !4783)
!4815 = !DILocation(line: 68, column: 14, scope: !4783)
!4816 = !DILocation(line: 68, column: 2, scope: !4783)
!4817 = !DILocation(line: 69, column: 1, scope: !4783)
!4818 = distinct !DISubprogram(name: "pnp_register_card_driver", scope: !3, file: !3, line: 414, type: !4819, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!164, !3822}
!4821 = !DILocalVariable(name: "drv", arg: 1, scope: !4818, file: !3, line: 414, type: !3822)
!4822 = !DILocation(line: 414, column: 54, scope: !4818)
!4823 = !DILocalVariable(name: "error", scope: !4818, file: !3, line: 416, type: !164)
!4824 = !DILocation(line: 416, column: 6, scope: !4818)
!4825 = !DILocalVariable(name: "pos", scope: !4818, file: !3, line: 417, type: !128)
!4826 = !DILocation(line: 417, column: 20, scope: !4818)
!4827 = !DILocalVariable(name: "temp", scope: !4818, file: !3, line: 417, type: !128)
!4828 = !DILocation(line: 417, column: 26, scope: !4818)
!4829 = !DILocation(line: 419, column: 19, scope: !4818)
!4830 = !DILocation(line: 419, column: 24, scope: !4818)
!4831 = !DILocation(line: 419, column: 2, scope: !4818)
!4832 = !DILocation(line: 419, column: 7, scope: !4818)
!4833 = !DILocation(line: 419, column: 12, scope: !4818)
!4834 = !DILocation(line: 419, column: 17, scope: !4818)
!4835 = !DILocation(line: 420, column: 2, scope: !4818)
!4836 = !DILocation(line: 420, column: 7, scope: !4818)
!4837 = !DILocation(line: 420, column: 12, scope: !4818)
!4838 = !DILocation(line: 420, column: 21, scope: !4818)
!4839 = !DILocation(line: 421, column: 20, scope: !4818)
!4840 = !DILocation(line: 421, column: 25, scope: !4818)
!4841 = !DILocation(line: 421, column: 2, scope: !4818)
!4842 = !DILocation(line: 421, column: 7, scope: !4818)
!4843 = !DILocation(line: 421, column: 12, scope: !4818)
!4844 = !DILocation(line: 421, column: 18, scope: !4818)
!4845 = !DILocation(line: 422, column: 2, scope: !4818)
!4846 = !DILocation(line: 422, column: 7, scope: !4818)
!4847 = !DILocation(line: 422, column: 12, scope: !4818)
!4848 = !DILocation(line: 422, column: 18, scope: !4818)
!4849 = !DILocation(line: 423, column: 2, scope: !4818)
!4850 = !DILocation(line: 423, column: 7, scope: !4818)
!4851 = !DILocation(line: 423, column: 12, scope: !4818)
!4852 = !DILocation(line: 423, column: 19, scope: !4818)
!4853 = !DILocation(line: 424, column: 22, scope: !4818)
!4854 = !DILocation(line: 424, column: 27, scope: !4818)
!4855 = !DILocation(line: 424, column: 2, scope: !4818)
!4856 = !DILocation(line: 424, column: 7, scope: !4818)
!4857 = !DILocation(line: 424, column: 12, scope: !4818)
!4858 = !DILocation(line: 424, column: 20, scope: !4818)
!4859 = !DILocation(line: 425, column: 21, scope: !4818)
!4860 = !DILocation(line: 425, column: 26, scope: !4818)
!4861 = !DILocation(line: 425, column: 2, scope: !4818)
!4862 = !DILocation(line: 425, column: 7, scope: !4818)
!4863 = !DILocation(line: 425, column: 12, scope: !4818)
!4864 = !DILocation(line: 425, column: 19, scope: !4818)
!4865 = !DILocation(line: 427, column: 31, scope: !4818)
!4866 = !DILocation(line: 427, column: 36, scope: !4818)
!4867 = !DILocation(line: 427, column: 10, scope: !4818)
!4868 = !DILocation(line: 427, column: 8, scope: !4818)
!4869 = !DILocation(line: 428, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 428, column: 6)
!4871 = !DILocation(line: 428, column: 12, scope: !4870)
!4872 = !DILocation(line: 428, column: 6, scope: !4818)
!4873 = !DILocation(line: 429, column: 10, scope: !4870)
!4874 = !DILocation(line: 429, column: 3, scope: !4870)
!4875 = !DILocation(line: 431, column: 2, scope: !4818)
!4876 = !DILocation(line: 432, column: 17, scope: !4818)
!4877 = !DILocation(line: 432, column: 22, scope: !4818)
!4878 = !DILocation(line: 432, column: 2, scope: !4818)
!4879 = !DILocation(line: 433, column: 2, scope: !4818)
!4880 = !DILocation(line: 435, column: 2, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 435, column: 2)
!4882 = !DILocation(line: 435, column: 2, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 435, column: 2)
!4884 = !DILocalVariable(name: "card", scope: !4885, file: !3, line: 436, type: !3764)
!4885 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 435, column: 44)
!4886 = !DILocation(line: 436, column: 20, scope: !4885)
!4887 = !DILocalVariable(name: "__mptr", scope: !4888, file: !3, line: 437, type: !108)
!4888 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 437, column: 7)
!4889 = !DILocation(line: 437, column: 7, scope: !4888)
!4890 = !DILocation(line: 437, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 437, column: 7)
!4892 = !DILocation(line: 438, column: 14, scope: !4885)
!4893 = !DILocation(line: 438, column: 20, scope: !4885)
!4894 = !DILocation(line: 438, column: 3, scope: !4885)
!4895 = !DILocation(line: 439, column: 2, scope: !4885)
!4896 = distinct !{!4896, !4880, !4897}
!4897 = !DILocation(line: 439, column: 2, scope: !4881)
!4898 = !DILocation(line: 440, column: 2, scope: !4818)
!4899 = !DILocation(line: 441, column: 1, scope: !4818)
!4900 = distinct !DISubprogram(name: "card_suspend", scope: !3, file: !3, line: 389, type: !3756, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4901 = !DILocalVariable(name: "dev", arg: 1, scope: !4900, file: !3, line: 389, type: !109)
!4902 = !DILocation(line: 389, column: 41, scope: !4900)
!4903 = !DILocalVariable(name: "state", arg: 2, scope: !4900, file: !3, line: 389, type: !3399)
!4904 = !DILocation(line: 389, column: 59, scope: !4900)
!4905 = !DILocalVariable(name: "link", scope: !4900, file: !3, line: 391, type: !3817)
!4906 = !DILocation(line: 391, column: 24, scope: !4900)
!4907 = !DILocation(line: 391, column: 31, scope: !4900)
!4908 = !DILocation(line: 391, column: 36, scope: !4900)
!4909 = !DILocation(line: 393, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 393, column: 6)
!4911 = !DILocation(line: 393, column: 12, scope: !4910)
!4912 = !DILocation(line: 393, column: 21, scope: !4910)
!4913 = !DILocation(line: 393, column: 36, scope: !4910)
!4914 = !DILocation(line: 393, column: 27, scope: !4910)
!4915 = !DILocation(line: 393, column: 6, scope: !4900)
!4916 = !DILocation(line: 394, column: 3, scope: !4910)
!4917 = !DILocation(line: 395, column: 2, scope: !4900)
!4918 = !DILocation(line: 395, column: 8, scope: !4900)
!4919 = !DILocation(line: 395, column: 19, scope: !4900)
!4920 = !DILocation(line: 396, column: 9, scope: !4900)
!4921 = !DILocation(line: 396, column: 15, scope: !4900)
!4922 = !DILocation(line: 396, column: 23, scope: !4900)
!4923 = !DILocation(line: 396, column: 31, scope: !4900)
!4924 = !DILocation(line: 396, column: 2, scope: !4900)
!4925 = !DILocation(line: 397, column: 1, scope: !4900)
!4926 = distinct !DISubprogram(name: "card_resume", scope: !3, file: !3, line: 399, type: !3746, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4927 = !DILocalVariable(name: "dev", arg: 1, scope: !4926, file: !3, line: 399, type: !109)
!4928 = !DILocation(line: 399, column: 40, scope: !4926)
!4929 = !DILocalVariable(name: "link", scope: !4926, file: !3, line: 401, type: !3817)
!4930 = !DILocation(line: 401, column: 24, scope: !4926)
!4931 = !DILocation(line: 401, column: 31, scope: !4926)
!4932 = !DILocation(line: 401, column: 36, scope: !4926)
!4933 = !DILocation(line: 403, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 403, column: 6)
!4935 = !DILocation(line: 403, column: 12, scope: !4934)
!4936 = !DILocation(line: 403, column: 21, scope: !4934)
!4937 = !DILocation(line: 403, column: 27, scope: !4934)
!4938 = !DILocation(line: 403, column: 6, scope: !4926)
!4939 = !DILocation(line: 404, column: 3, scope: !4934)
!4940 = !DILocation(line: 405, column: 2, scope: !4926)
!4941 = !DILocation(line: 405, column: 8, scope: !4926)
!4942 = !DILocation(line: 405, column: 19, scope: !4926)
!4943 = !DILocation(line: 406, column: 2, scope: !4926)
!4944 = !DILocation(line: 406, column: 8, scope: !4926)
!4945 = !DILocation(line: 406, column: 16, scope: !4926)
!4946 = !DILocation(line: 406, column: 23, scope: !4926)
!4947 = !DILocation(line: 407, column: 2, scope: !4926)
!4948 = !DILocation(line: 408, column: 1, scope: !4926)
!4949 = distinct !DISubprogram(name: "pnp_unregister_card_driver", scope: !3, file: !3, line: 447, type: !4950, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !3822}
!4952 = !DILocalVariable(name: "drv", arg: 1, scope: !4949, file: !3, line: 447, type: !3822)
!4953 = !DILocation(line: 447, column: 57, scope: !4949)
!4954 = !DILocation(line: 449, column: 2, scope: !4949)
!4955 = !DILocation(line: 450, column: 12, scope: !4949)
!4956 = !DILocation(line: 450, column: 17, scope: !4949)
!4957 = !DILocation(line: 450, column: 2, scope: !4949)
!4958 = !DILocation(line: 451, column: 2, scope: !4949)
!4959 = !DILocation(line: 452, column: 25, scope: !4949)
!4960 = !DILocation(line: 452, column: 30, scope: !4949)
!4961 = !DILocation(line: 452, column: 2, scope: !4949)
!4962 = !DILocation(line: 453, column: 1, scope: !4949)
!4963 = distinct !DISubprogram(name: "get_order", scope: !4964, file: !4964, line: 29, type: !4965, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4964 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!164, !230}
!4967 = !DILocalVariable(name: "x", arg: 1, scope: !4968, file: !4969, line: 366, type: !328)
!4968 = distinct !DISubprogram(name: "fls64", scope: !4969, file: !4969, line: 366, type: !4970, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!4969 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!164, !328}
!4972 = !DILocation(line: 366, column: 40, scope: !4968, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 46, column: 9, scope: !4963)
!4974 = !DILocalVariable(name: "bitpos", scope: !4968, file: !4969, line: 368, type: !164)
!4975 = !DILocation(line: 368, column: 6, scope: !4968, inlinedAt: !4973)
!4976 = !DILocalVariable(name: "size", arg: 1, scope: !4963, file: !4964, line: 29, type: !230)
!4977 = !DILocation(line: 29, column: 63, scope: !4963)
!4978 = !DILocation(line: 31, column: 27, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4963, file: !4964, line: 31, column: 6)
!4980 = !DILocation(line: 31, column: 6, scope: !4979)
!4981 = !DILocation(line: 31, column: 6, scope: !4963)
!4982 = !DILocation(line: 32, column: 8, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !4964, line: 32, column: 7)
!4984 = distinct !DILexicalBlock(scope: !4979, file: !4964, line: 31, column: 34)
!4985 = !DILocation(line: 32, column: 7, scope: !4984)
!4986 = !DILocation(line: 33, column: 4, scope: !4983)
!4987 = !DILocation(line: 35, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4984, file: !4964, line: 35, column: 7)
!4989 = !DILocation(line: 35, column: 12, scope: !4988)
!4990 = !DILocation(line: 35, column: 7, scope: !4984)
!4991 = !DILocation(line: 36, column: 4, scope: !4988)
!4992 = !DILocation(line: 38, column: 10, scope: !4984)
!4993 = !DILocation(line: 38, column: 28, scope: !4984)
!4994 = !DILocation(line: 38, column: 41, scope: !4984)
!4995 = !DILocation(line: 38, column: 3, scope: !4984)
!4996 = !DILocation(line: 41, column: 6, scope: !4963)
!4997 = !DILocation(line: 42, column: 7, scope: !4963)
!4998 = !DILocation(line: 46, column: 15, scope: !4963)
!4999 = !DILocation(line: 374, column: 2, scope: !4968, inlinedAt: !4973)
!5000 = !DILocation(line: 376, column: 14, scope: !4968, inlinedAt: !4973)
!5001 = !{i32 306884}
!5002 = !DILocation(line: 377, column: 9, scope: !4968, inlinedAt: !4973)
!5003 = !DILocation(line: 377, column: 16, scope: !4968, inlinedAt: !4973)
!5004 = !DILocation(line: 46, column: 2, scope: !4963)
!5005 = !DILocation(line: 48, column: 1, scope: !4963)
!5006 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5007, file: !5007, line: 30, type: !5008, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5007 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!164, !327}
!5010 = !DILocation(line: 366, column: 40, scope: !4968, inlinedAt: !5011)
!5011 = distinct !DILocation(line: 32, column: 9, scope: !5006)
!5012 = !DILocation(line: 368, column: 6, scope: !4968, inlinedAt: !5011)
!5013 = !DILocalVariable(name: "n", arg: 1, scope: !5006, file: !5007, line: 30, type: !327)
!5014 = !DILocation(line: 30, column: 21, scope: !5006)
!5015 = !DILocation(line: 32, column: 15, scope: !5006)
!5016 = !DILocation(line: 374, column: 2, scope: !4968, inlinedAt: !5011)
!5017 = !DILocation(line: 376, column: 14, scope: !4968, inlinedAt: !5011)
!5018 = !DILocation(line: 377, column: 9, scope: !4968, inlinedAt: !5011)
!5019 = !DILocation(line: 377, column: 16, scope: !4968, inlinedAt: !5011)
!5020 = !DILocation(line: 32, column: 18, scope: !5006)
!5021 = !DILocation(line: 32, column: 2, scope: !5006)
!5022 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5023, file: !5023, line: 137, type: !5024, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5023 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!108, !844, !2039, !227, !106}
!5026 = !DILocalVariable(name: "s", arg: 1, scope: !5022, file: !5023, line: 137, type: !844)
!5027 = !DILocation(line: 137, column: 54, scope: !5022)
!5028 = !DILocalVariable(name: "object", arg: 2, scope: !5022, file: !5023, line: 137, type: !2039)
!5029 = !DILocation(line: 137, column: 69, scope: !5022)
!5030 = !DILocalVariable(name: "size", arg: 3, scope: !5022, file: !5023, line: 138, type: !227)
!5031 = !DILocation(line: 138, column: 12, scope: !5022)
!5032 = !DILocalVariable(name: "flags", arg: 4, scope: !5022, file: !5023, line: 138, type: !106)
!5033 = !DILocation(line: 138, column: 24, scope: !5022)
!5034 = !DILocation(line: 140, column: 17, scope: !5022)
!5035 = !DILocation(line: 140, column: 2, scope: !5022)
!5036 = distinct !DISubprogram(name: "__tolower", scope: !5037, file: !5037, line: 42, type: !5038, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5037 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!333, !333}
!5040 = !DILocalVariable(name: "c", arg: 1, scope: !5036, file: !5037, line: 42, type: !333)
!5041 = !DILocation(line: 42, column: 53, scope: !5036)
!5042 = !DILocation(line: 44, column: 6, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5036, file: !5037, line: 44, column: 6)
!5044 = !DILocation(line: 44, column: 6, scope: !5036)
!5045 = !DILocation(line: 45, column: 5, scope: !5043)
!5046 = !DILocation(line: 45, column: 3, scope: !5043)
!5047 = !DILocation(line: 46, column: 9, scope: !5036)
!5048 = !DILocation(line: 46, column: 2, scope: !5036)
!5049 = distinct !DISubprogram(name: "pnp_free_card_ids", scope: !3, file: !3, line: 136, type: !4536, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5050 = !DILocalVariable(name: "card", arg: 1, scope: !5049, file: !3, line: 136, type: !3764)
!5051 = !DILocation(line: 136, column: 48, scope: !5049)
!5052 = !DILocalVariable(name: "id", scope: !5049, file: !3, line: 138, type: !3774)
!5053 = !DILocation(line: 138, column: 17, scope: !5049)
!5054 = !DILocalVariable(name: "next", scope: !5049, file: !3, line: 139, type: !3774)
!5055 = !DILocation(line: 139, column: 17, scope: !5049)
!5056 = !DILocation(line: 141, column: 7, scope: !5049)
!5057 = !DILocation(line: 141, column: 13, scope: !5049)
!5058 = !DILocation(line: 141, column: 5, scope: !5049)
!5059 = !DILocation(line: 142, column: 2, scope: !5049)
!5060 = !DILocation(line: 142, column: 9, scope: !5049)
!5061 = !DILocation(line: 143, column: 10, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 142, column: 13)
!5063 = !DILocation(line: 143, column: 14, scope: !5062)
!5064 = !DILocation(line: 143, column: 8, scope: !5062)
!5065 = !DILocation(line: 144, column: 9, scope: !5062)
!5066 = !DILocation(line: 144, column: 3, scope: !5062)
!5067 = !DILocation(line: 145, column: 8, scope: !5062)
!5068 = !DILocation(line: 145, column: 6, scope: !5062)
!5069 = distinct !{!5069, !5059, !5070}
!5070 = !DILocation(line: 146, column: 2, scope: !5049)
!5071 = !DILocation(line: 147, column: 1, scope: !5049)
!5072 = distinct !DISubprogram(name: "pnp_show_card_name", scope: !3, file: !3, line: 184, type: !3879, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5073 = !DILocalVariable(name: "dmdev", arg: 1, scope: !5072, file: !3, line: 184, type: !3285)
!5074 = !DILocation(line: 184, column: 50, scope: !5072)
!5075 = !DILocalVariable(name: "attr", arg: 2, scope: !5072, file: !3, line: 185, type: !3881)
!5076 = !DILocation(line: 185, column: 32, scope: !5072)
!5077 = !DILocalVariable(name: "buf", arg: 3, scope: !5072, file: !3, line: 185, type: !180)
!5078 = !DILocation(line: 185, column: 44, scope: !5072)
!5079 = !DILocalVariable(name: "str", scope: !5072, file: !3, line: 187, type: !180)
!5080 = !DILocation(line: 187, column: 8, scope: !5072)
!5081 = !DILocation(line: 187, column: 14, scope: !5072)
!5082 = !DILocalVariable(name: "card", scope: !5072, file: !3, line: 188, type: !3764)
!5083 = !DILocation(line: 188, column: 19, scope: !5072)
!5084 = !DILocalVariable(name: "__mptr", scope: !5085, file: !3, line: 188, type: !108)
!5085 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 188, column: 26)
!5086 = !DILocation(line: 188, column: 26, scope: !5085)
!5087 = !DILocation(line: 188, column: 26, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 188, column: 26)
!5089 = !DILocation(line: 190, column: 17, scope: !5072)
!5090 = !DILocation(line: 190, column: 30, scope: !5072)
!5091 = !DILocation(line: 190, column: 36, scope: !5072)
!5092 = !DILocation(line: 190, column: 9, scope: !5072)
!5093 = !DILocation(line: 190, column: 6, scope: !5072)
!5094 = !DILocation(line: 191, column: 10, scope: !5072)
!5095 = !DILocation(line: 191, column: 16, scope: !5072)
!5096 = !DILocation(line: 191, column: 14, scope: !5072)
!5097 = !DILocation(line: 191, column: 2, scope: !5072)
!5098 = distinct !DISubprogram(name: "pnp_show_card_ids", scope: !3, file: !3, line: 196, type: !3879, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5099 = !DILocalVariable(name: "dmdev", arg: 1, scope: !5098, file: !3, line: 196, type: !3285)
!5100 = !DILocation(line: 196, column: 49, scope: !5098)
!5101 = !DILocalVariable(name: "attr", arg: 2, scope: !5098, file: !3, line: 197, type: !3881)
!5102 = !DILocation(line: 197, column: 31, scope: !5098)
!5103 = !DILocalVariable(name: "buf", arg: 3, scope: !5098, file: !3, line: 197, type: !180)
!5104 = !DILocation(line: 197, column: 43, scope: !5098)
!5105 = !DILocalVariable(name: "str", scope: !5098, file: !3, line: 199, type: !180)
!5106 = !DILocation(line: 199, column: 8, scope: !5098)
!5107 = !DILocation(line: 199, column: 14, scope: !5098)
!5108 = !DILocalVariable(name: "card", scope: !5098, file: !3, line: 200, type: !3764)
!5109 = !DILocation(line: 200, column: 19, scope: !5098)
!5110 = !DILocalVariable(name: "__mptr", scope: !5111, file: !3, line: 200, type: !108)
!5111 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 200, column: 26)
!5112 = !DILocation(line: 200, column: 26, scope: !5111)
!5113 = !DILocation(line: 200, column: 26, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 200, column: 26)
!5115 = !DILocalVariable(name: "pos", scope: !5098, file: !3, line: 201, type: !3774)
!5116 = !DILocation(line: 201, column: 17, scope: !5098)
!5117 = !DILocation(line: 201, column: 23, scope: !5098)
!5118 = !DILocation(line: 201, column: 29, scope: !5098)
!5119 = !DILocation(line: 203, column: 2, scope: !5098)
!5120 = !DILocation(line: 203, column: 9, scope: !5098)
!5121 = !DILocation(line: 204, column: 18, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 203, column: 14)
!5123 = !DILocation(line: 204, column: 31, scope: !5122)
!5124 = !DILocation(line: 204, column: 36, scope: !5122)
!5125 = !DILocation(line: 204, column: 10, scope: !5122)
!5126 = !DILocation(line: 204, column: 7, scope: !5122)
!5127 = !DILocation(line: 205, column: 9, scope: !5122)
!5128 = !DILocation(line: 205, column: 14, scope: !5122)
!5129 = !DILocation(line: 205, column: 7, scope: !5122)
!5130 = distinct !{!5130, !5119, !5131}
!5131 = !DILocation(line: 206, column: 2, scope: !5098)
!5132 = !DILocation(line: 207, column: 10, scope: !5098)
!5133 = !DILocation(line: 207, column: 16, scope: !5098)
!5134 = !DILocation(line: 207, column: 14, scope: !5098)
!5135 = !DILocation(line: 207, column: 2, scope: !5098)
!5136 = distinct !DISubprogram(name: "__list_add", scope: !4441, file: !4441, line: 63, type: !5137, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{null, !128, !128, !128}
!5139 = !DILocalVariable(name: "new", arg: 1, scope: !5136, file: !4441, line: 63, type: !128)
!5140 = !DILocation(line: 63, column: 49, scope: !5136)
!5141 = !DILocalVariable(name: "prev", arg: 2, scope: !5136, file: !4441, line: 64, type: !128)
!5142 = !DILocation(line: 64, column: 28, scope: !5136)
!5143 = !DILocalVariable(name: "next", arg: 3, scope: !5136, file: !4441, line: 65, type: !128)
!5144 = !DILocation(line: 65, column: 28, scope: !5136)
!5145 = !DILocation(line: 67, column: 24, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5136, file: !4441, line: 67, column: 6)
!5147 = !DILocation(line: 67, column: 29, scope: !5146)
!5148 = !DILocation(line: 67, column: 35, scope: !5146)
!5149 = !DILocation(line: 67, column: 7, scope: !5146)
!5150 = !DILocation(line: 67, column: 6, scope: !5136)
!5151 = !DILocation(line: 68, column: 3, scope: !5146)
!5152 = !DILocation(line: 70, column: 15, scope: !5136)
!5153 = !DILocation(line: 70, column: 2, scope: !5136)
!5154 = !DILocation(line: 70, column: 8, scope: !5136)
!5155 = !DILocation(line: 70, column: 13, scope: !5136)
!5156 = !DILocation(line: 71, column: 14, scope: !5136)
!5157 = !DILocation(line: 71, column: 2, scope: !5136)
!5158 = !DILocation(line: 71, column: 7, scope: !5136)
!5159 = !DILocation(line: 71, column: 12, scope: !5136)
!5160 = !DILocation(line: 72, column: 14, scope: !5136)
!5161 = !DILocation(line: 72, column: 2, scope: !5136)
!5162 = !DILocation(line: 72, column: 7, scope: !5136)
!5163 = !DILocation(line: 72, column: 12, scope: !5136)
!5164 = !DILocation(line: 73, column: 2, scope: !5136)
!5165 = !DILocation(line: 73, column: 2, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5136, file: !4441, line: 73, column: 2)
!5167 = !DILocation(line: 73, column: 2, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5166, file: !4441, line: 73, column: 2)
!5169 = !DILocation(line: 73, column: 2, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5166, file: !4441, line: 73, column: 2)
!5171 = !DILocation(line: 74, column: 1, scope: !5136)
!5172 = distinct !DISubprogram(name: "__list_add_valid", scope: !4441, file: !4441, line: 45, type: !5173, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!396, !128, !128, !128}
!5175 = !DILocalVariable(name: "new", arg: 1, scope: !5172, file: !4441, line: 45, type: !128)
!5176 = !DILocation(line: 45, column: 55, scope: !5172)
!5177 = !DILocalVariable(name: "prev", arg: 2, scope: !5172, file: !4441, line: 46, type: !128)
!5178 = !DILocation(line: 46, column: 23, scope: !5172)
!5179 = !DILocalVariable(name: "next", arg: 3, scope: !5172, file: !4441, line: 47, type: !128)
!5180 = !DILocation(line: 47, column: 23, scope: !5172)
!5181 = !DILocation(line: 49, column: 2, scope: !5172)
!5182 = distinct !DISubprogram(name: "match_card", scope: !3, file: !3, line: 19, type: !5183, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!3828, !3822, !3764}
!5185 = !DILocalVariable(name: "drv", arg: 1, scope: !5182, file: !3, line: 19, type: !3822)
!5186 = !DILocation(line: 19, column: 76, scope: !5182)
!5187 = !DILocalVariable(name: "card", arg: 2, scope: !5182, file: !3, line: 20, type: !3764)
!5188 = !DILocation(line: 20, column: 27, scope: !5182)
!5189 = !DILocalVariable(name: "drv_id", scope: !5182, file: !3, line: 22, type: !3828)
!5190 = !DILocation(line: 22, column: 35, scope: !5182)
!5191 = !DILocation(line: 22, column: 44, scope: !5182)
!5192 = !DILocation(line: 22, column: 49, scope: !5182)
!5193 = !DILocation(line: 24, column: 2, scope: !5182)
!5194 = !DILocation(line: 24, column: 10, scope: !5182)
!5195 = !DILocation(line: 24, column: 18, scope: !5182)
!5196 = !DILocation(line: 24, column: 9, scope: !5182)
!5197 = !DILocation(line: 25, column: 22, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 25, column: 7)
!5199 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 24, column: 22)
!5200 = !DILocation(line: 25, column: 28, scope: !5198)
!5201 = !DILocation(line: 25, column: 32, scope: !5198)
!5202 = !DILocation(line: 25, column: 40, scope: !5198)
!5203 = !DILocation(line: 25, column: 7, scope: !5198)
!5204 = !DILocation(line: 25, column: 7, scope: !5199)
!5205 = !DILocalVariable(name: "i", scope: !5206, file: !3, line: 26, type: !164)
!5206 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 25, column: 45)
!5207 = !DILocation(line: 26, column: 8, scope: !5206)
!5208 = !DILocation(line: 28, column: 4, scope: !5206)
!5209 = !DILocalVariable(name: "found", scope: !5210, file: !3, line: 29, type: !164)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 28, column: 13)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 28, column: 4)
!5212 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 28, column: 4)
!5213 = !DILocation(line: 29, column: 9, scope: !5210)
!5214 = !DILocalVariable(name: "dev", scope: !5210, file: !3, line: 30, type: !109)
!5215 = !DILocation(line: 30, column: 21, scope: !5210)
!5216 = !DILocation(line: 32, column: 9, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 32, column: 9)
!5218 = !DILocation(line: 32, column: 11, scope: !5217)
!5219 = !DILocation(line: 32, column: 30, scope: !5217)
!5220 = !DILocation(line: 33, column: 11, scope: !5217)
!5221 = !DILocation(line: 33, column: 19, scope: !5217)
!5222 = !DILocation(line: 33, column: 24, scope: !5217)
!5223 = !DILocation(line: 33, column: 27, scope: !5217)
!5224 = !DILocation(line: 33, column: 10, scope: !5217)
!5225 = !DILocation(line: 32, column: 9, scope: !5210)
!5226 = !DILocation(line: 34, column: 13, scope: !5217)
!5227 = !DILocation(line: 34, column: 6, scope: !5217)
!5228 = !DILocation(line: 35, column: 11, scope: !5210)
!5229 = !DILocalVariable(name: "__mptr", scope: !5230, file: !3, line: 36, type: !108)
!5230 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 36, column: 5)
!5231 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 36, column: 5)
!5232 = !DILocation(line: 36, column: 5, scope: !5230)
!5233 = !DILocation(line: 36, column: 5, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 36, column: 5)
!5235 = !DILocation(line: 36, column: 5, scope: !5231)
!5236 = !DILocation(line: 36, column: 5, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 36, column: 5)
!5238 = !DILocation(line: 37, column: 25, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 37, column: 10)
!5240 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 36, column: 34)
!5241 = !DILocation(line: 37, column: 30, scope: !5239)
!5242 = !DILocation(line: 38, column: 10, scope: !5239)
!5243 = !DILocation(line: 38, column: 18, scope: !5239)
!5244 = !DILocation(line: 38, column: 23, scope: !5239)
!5245 = !DILocation(line: 38, column: 26, scope: !5239)
!5246 = !DILocation(line: 37, column: 10, scope: !5239)
!5247 = !DILocation(line: 37, column: 10, scope: !5240)
!5248 = !DILocation(line: 39, column: 13, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 38, column: 31)
!5250 = !DILocation(line: 40, column: 7, scope: !5249)
!5251 = !DILocation(line: 42, column: 5, scope: !5240)
!5252 = !DILocalVariable(name: "__mptr", scope: !5253, file: !3, line: 36, type: !108)
!5253 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 36, column: 5)
!5254 = !DILocation(line: 36, column: 5, scope: !5253)
!5255 = !DILocation(line: 36, column: 5, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 36, column: 5)
!5257 = distinct !{!5257, !5235, !5258}
!5258 = !DILocation(line: 42, column: 5, scope: !5231)
!5259 = !DILocation(line: 43, column: 10, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 43, column: 9)
!5261 = !DILocation(line: 43, column: 9, scope: !5210)
!5262 = !DILocation(line: 44, column: 6, scope: !5260)
!5263 = !DILocation(line: 45, column: 6, scope: !5210)
!5264 = !DILocation(line: 28, column: 4, scope: !5211)
!5265 = distinct !{!5265, !5266, !5267}
!5266 = !DILocation(line: 28, column: 4, scope: !5212)
!5267 = !DILocation(line: 46, column: 4, scope: !5212)
!5268 = !DILocation(line: 47, column: 3, scope: !5206)
!5269 = !DILocation(line: 48, column: 9, scope: !5199)
!5270 = distinct !{!5270, !5193, !5271}
!5271 = !DILocation(line: 49, column: 2, scope: !5182)
!5272 = !DILocation(line: 50, column: 2, scope: !5182)
!5273 = !DILocation(line: 51, column: 1, scope: !5182)
!5274 = distinct !DISubprogram(name: "__list_del_entry", scope: !4441, file: !4441, line: 130, type: !4574, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5275 = !DILocalVariable(name: "entry", arg: 1, scope: !5274, file: !4441, line: 130, type: !128)
!5276 = !DILocation(line: 130, column: 55, scope: !5274)
!5277 = !DILocation(line: 132, column: 30, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5274, file: !4441, line: 132, column: 6)
!5279 = !DILocation(line: 132, column: 7, scope: !5278)
!5280 = !DILocation(line: 132, column: 6, scope: !5274)
!5281 = !DILocation(line: 133, column: 3, scope: !5278)
!5282 = !DILocation(line: 135, column: 13, scope: !5274)
!5283 = !DILocation(line: 135, column: 20, scope: !5274)
!5284 = !DILocation(line: 135, column: 26, scope: !5274)
!5285 = !DILocation(line: 135, column: 33, scope: !5274)
!5286 = !DILocation(line: 135, column: 2, scope: !5274)
!5287 = !DILocation(line: 136, column: 1, scope: !5274)
!5288 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4441, file: !4441, line: 51, type: !5289, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!396, !128}
!5291 = !DILocalVariable(name: "entry", arg: 1, scope: !5288, file: !4441, line: 51, type: !128)
!5292 = !DILocation(line: 51, column: 61, scope: !5288)
!5293 = !DILocation(line: 53, column: 2, scope: !5288)
!5294 = distinct !DISubprogram(name: "__list_del", scope: !4441, file: !4441, line: 110, type: !4442, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !152)
!5295 = !DILocalVariable(name: "prev", arg: 1, scope: !5294, file: !4441, line: 110, type: !128)
!5296 = !DILocation(line: 110, column: 50, scope: !5294)
!5297 = !DILocalVariable(name: "next", arg: 2, scope: !5294, file: !4441, line: 110, type: !128)
!5298 = !DILocation(line: 110, column: 75, scope: !5294)
!5299 = !DILocation(line: 112, column: 15, scope: !5294)
!5300 = !DILocation(line: 112, column: 2, scope: !5294)
!5301 = !DILocation(line: 112, column: 8, scope: !5294)
!5302 = !DILocation(line: 112, column: 13, scope: !5294)
!5303 = !DILocation(line: 113, column: 2, scope: !5294)
!5304 = !DILocation(line: 113, column: 2, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5294, file: !4441, line: 113, column: 2)
!5306 = !DILocation(line: 113, column: 2, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5305, file: !4441, line: 113, column: 2)
!5308 = !DILocation(line: 113, column: 2, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5305, file: !4441, line: 113, column: 2)
!5310 = !DILocation(line: 114, column: 1, scope: !5294)
