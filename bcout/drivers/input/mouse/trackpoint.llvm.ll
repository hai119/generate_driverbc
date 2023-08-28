; ModuleID = '../bcout/drivers/input/mouse/trackpoint.llvm.bc'
source_filename = "drivers/input/mouse/trackpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.vm_struct = type opaque
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vm_operations_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kmem_cache = type opaque
%struct.trackpoint_attr_data = type { i64, i8, i8, i8, i8 }
%struct.psmouse_attribute = type { %struct.device_attribute, i8*, i64 (%struct.psmouse*, i8*, i8*)*, i64 (%struct.psmouse*, i8*, i8*, i64)*, i8 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.psmouse = type { i8*, %struct.input_dev*, %struct.ps2dev, %struct.delayed_work, i8*, i8*, %struct.psmouse_protocol*, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, i32 (%struct.psmouse*)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, void (%struct.psmouse*)*, void (%struct.psmouse*)*, i32 (%struct.psmouse*)*, void (%struct.psmouse*)*, void (%struct.psmouse*)* }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.ps2dev = type { %struct.serio*, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8 }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, void (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, void (%struct.serio*)*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, void (%struct.serio*)*, %struct.device_driver }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.psmouse_protocol = type { i32, i8, i8, i8, i8, i8*, i8*, {}*, i32 (%struct.psmouse*)* }
%struct.trackpoint_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@trackpoint_variants = internal constant [7 x i8*] [i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)], align 16, !dbg !0
@.str = private unnamed_addr constant [11 x i8] c"TrackPoint\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"trackpoint: failed to get extended button data, assuming 3 buttons\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"trackpoint: got 0 in extended button data, assuming 3 buttons\0A\00", align 1
@trackpoint_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @trackpoint_is_attr_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([15 x %struct.attribute*], [15 x %struct.attribute*]* @trackpoint_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4043
@.str.3 = private unnamed_addr constant [58 x i8] c"trackpoint: failed to create sysfs attributes, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"trackpoint: %s TrackPoint firmware: 0x%02x, buttons: %d/%d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@trackpoint_attr_sensitivity = internal global %struct.trackpoint_attr_data { i64 2, i8 74, i8 0, i8 0, i8 -128 }, align 8, !dbg !3589
@trackpoint_attr_speed = internal global %struct.trackpoint_attr_data { i64 3, i8 96, i8 0, i8 0, i8 97 }, align 8, !dbg !3598
@trackpoint_attr_reach = internal global %struct.trackpoint_attr_data { i64 5, i8 87, i8 0, i8 0, i8 10 }, align 8, !dbg !3600
@trackpoint_attr_draghys = internal global %struct.trackpoint_attr_data { i64 6, i8 88, i8 0, i8 0, i8 -1 }, align 8, !dbg !3602
@trackpoint_attr_mindrag = internal global %struct.trackpoint_attr_data { i64 7, i8 89, i8 0, i8 0, i8 20 }, align 8, !dbg !3604
@trackpoint_attr_thresh = internal global %struct.trackpoint_attr_data { i64 8, i8 92, i8 0, i8 0, i8 8 }, align 8, !dbg !3606
@trackpoint_attr_upthresh = internal global %struct.trackpoint_attr_data { i64 9, i8 90, i8 0, i8 0, i8 -1 }, align 8, !dbg !3608
@trackpoint_attr_ztime = internal global %struct.trackpoint_attr_data { i64 10, i8 94, i8 0, i8 0, i8 38 }, align 8, !dbg !3610
@trackpoint_attr_jenks = internal global %struct.trackpoint_attr_data { i64 11, i8 93, i8 0, i8 0, i8 -121 }, align 8, !dbg !3612
@trackpoint_attr_drift_time = internal global %struct.trackpoint_attr_data { i64 12, i8 95, i8 0, i8 0, i8 5 }, align 8, !dbg !3614
@trackpoint_attr_inertia = internal global %struct.trackpoint_attr_data { i64 4, i8 77, i8 0, i8 0, i8 6 }, align 8, !dbg !3616
@trackpoint_attr_press_to_select = internal global %struct.trackpoint_attr_data { i64 13, i8 44, i8 1, i8 0, i8 0 }, align 8, !dbg !3618
@trackpoint_attr_skipback = internal global %struct.trackpoint_attr_data { i64 14, i8 45, i8 8, i8 0, i8 0 }, align 8, !dbg !3620
@trackpoint_attr_ext_dev = internal global %struct.trackpoint_attr_data { i64 15, i8 35, i8 2, i8 1, i8 0 }, align 8, !dbg !3622
@.str.6 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ALPS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Elan\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NXP\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"JYT_Synaptics\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Synaptics\00", align 1
@__const.trackpoint_power_on_reset.param = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@psmouse_attr_sensitivity = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_sensitivity to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !3624
@psmouse_attr_inertia = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_inertia to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4017
@psmouse_attr_speed = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_speed to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4019
@psmouse_attr_reach = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_reach to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4021
@psmouse_attr_draghys = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_draghys to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4023
@psmouse_attr_mindrag = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_mindrag to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4025
@psmouse_attr_thresh = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_thresh to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4027
@psmouse_attr_upthresh = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_upthresh to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4029
@psmouse_attr_ztime = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_ztime to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4031
@psmouse_attr_jenks = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_jenks to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4033
@psmouse_attr_drift_time = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_drift_time to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4035
@psmouse_attr_press_to_select = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_press_to_select to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_bit_attr, i8 1 }, align 8, !dbg !4037
@psmouse_attr_skipback = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_skipback to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_bit_attr, i8 1 }, align 8, !dbg !4039
@psmouse_attr_ext_dev = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @psmouse_attr_show_helper, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @psmouse_attr_set_helper }, i8* bitcast (%struct.trackpoint_attr_data* @trackpoint_attr_ext_dev to i8*), i64 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr, i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_bit_attr, i8 1 }, align 8, !dbg !4041
@.str.12 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"inertia\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"reach\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"draghys\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"mindrag\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"upthresh\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ztime\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"jenks\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"drift_time\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"press_to_select\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"skipback\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"ext_dev\00", align 1
@trackpoint_attrs = internal global [15 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_sensitivity, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_speed, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_inertia, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_reach, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_draghys, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_mindrag, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_thresh, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_upthresh, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_ztime, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_jenks, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_drift_time, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_press_to_select, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_skipback, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_ext_dev, i32 0, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4045

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @trackpoint_detect(%struct.psmouse* %psmouse, i1 zeroext %set_properties) #0 !dbg !4059 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %set_properties.addr = alloca i8, align 1
  %ps2dev = alloca %struct.ps2dev*, align 8
  %tp = alloca %struct.trackpoint_data*, align 8
  %variant_id = alloca i8, align 1
  %firmware_id = alloca i8, align 1
  %button_info = alloca i8, align 1
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, i8* %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %set_properties.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4064, metadata !DIExpression()), !dbg !4066
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4067
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4068
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4066
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !4069, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.declare(metadata i8* %variant_id, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.declare(metadata i8* %firmware_id, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.declare(metadata i8* %button_info, metadata !4095, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4097, metadata !DIExpression()), !dbg !4098
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4099
  %call = call i32 @trackpoint_start_protocol(%struct.psmouse* %1, i8* %variant_id, i8* %firmware_id) #8, !dbg !4100
  store i32 %call, i32* %error, align 4, !dbg !4101
  %2 = load i32, i32* %error, align 4, !dbg !4102
  %tobool = icmp ne i32 %2, 0, !dbg !4102
  br i1 %tobool, label %if.then, label %if.end, !dbg !4104

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %error, align 4, !dbg !4105
  store i32 %3, i32* %retval, align 4, !dbg !4106
  br label %return, !dbg !4106

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %set_properties.addr, align 1, !dbg !4107
  %tobool2 = trunc i8 %4 to i1, !dbg !4107
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4109

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4110
  br label %return, !dbg !4110

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @kzalloc(i64 16, i32 3264) #8, !dbg !4111
  %5 = bitcast i8* %call5 to %struct.trackpoint_data*, !dbg !4111
  store %struct.trackpoint_data* %5, %struct.trackpoint_data** %tp, align 8, !dbg !4112
  %6 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4113
  %tobool6 = icmp ne %struct.trackpoint_data* %6, null, !dbg !4113
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4115

if.then7:                                         ; preds = %if.end4
  store i32 -12, i32* %retval, align 4, !dbg !4116
  br label %return, !dbg !4116

if.end8:                                          ; preds = %if.end4
  %7 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4117
  call void @trackpoint_defaults(%struct.trackpoint_data* %7) #8, !dbg !4118
  %8 = load i8, i8* %variant_id, align 1, !dbg !4119
  %9 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4120
  %variant_id9 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %9, i32 0, i32 0, !dbg !4121
  store i8 %8, i8* %variant_id9, align 1, !dbg !4122
  %10 = load i8, i8* %firmware_id, align 1, !dbg !4123
  %11 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4124
  %firmware_id10 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %11, i32 0, i32 1, !dbg !4125
  store i8 %10, i8* %firmware_id10, align 1, !dbg !4126
  %12 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4127
  %13 = bitcast %struct.trackpoint_data* %12 to i8*, !dbg !4127
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4128
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 0, !dbg !4129
  store i8* %13, i8** %private, align 8, !dbg !4130
  %15 = load i8, i8* %variant_id, align 1, !dbg !4131
  %idxprom = zext i8 %15 to i64, !dbg !4132
  %arrayidx = getelementptr [7 x i8*], [7 x i8*]* @trackpoint_variants, i64 0, i64 %idxprom, !dbg !4132
  %16 = load i8*, i8** %arrayidx, align 8, !dbg !4132
  %17 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4133
  %vendor = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 4, !dbg !4134
  store i8* %16, i8** %vendor, align 8, !dbg !4135
  %18 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4136
  %name = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 5, !dbg !4137
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4138
  %19 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4139
  %reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 30, !dbg !4140
  store i32 (%struct.psmouse*)* @trackpoint_reconnect, i32 (%struct.psmouse*)** %reconnect, align 8, !dbg !4141
  %20 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4142
  %disconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 32, !dbg !4143
  store void (%struct.psmouse*)* @trackpoint_disconnect, void (%struct.psmouse*)** %disconnect, align 8, !dbg !4144
  %21 = load i8, i8* %variant_id, align 1, !dbg !4145
  %conv = zext i8 %21 to i32, !dbg !4145
  %cmp = icmp ne i32 %conv, 1, !dbg !4147
  br i1 %cmp, label %if.then12, label %if.else, !dbg !4148

if.then12:                                        ; preds = %if.end8
  store i8 51, i8* %button_info, align 1, !dbg !4149
  br label %if.end25, !dbg !4151

if.else:                                          ; preds = %if.end8
  %22 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4152
  %call13 = call i32 @trackpoint_read(%struct.ps2dev* %22, i8 zeroext 75, i8* %button_info) #8, !dbg !4154
  store i32 %call13, i32* %error, align 4, !dbg !4155
  %23 = load i32, i32* %error, align 4, !dbg !4156
  %tobool14 = icmp ne i32 %23, 0, !dbg !4156
  br i1 %tobool14, label %if.then15, label %if.else17, !dbg !4158

if.then15:                                        ; preds = %if.else
  %24 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4159
  %ps2dev16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 2, !dbg !4159
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev16, i32 0, i32 0, !dbg !4159
  %25 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4159
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %25, i32 0, i32 18, !dbg !4159
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4159
  store i8 51, i8* %button_info, align 1, !dbg !4161
  br label %if.end24, !dbg !4162

if.else17:                                        ; preds = %if.else
  %26 = load i8, i8* %button_info, align 1, !dbg !4163
  %tobool18 = icmp ne i8 %26, 0, !dbg !4163
  br i1 %tobool18, label %if.end23, label %if.then19, !dbg !4165

if.then19:                                        ; preds = %if.else17
  %27 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4166
  %ps2dev20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 2, !dbg !4166
  %serio21 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev20, i32 0, i32 0, !dbg !4166
  %28 = load %struct.serio*, %struct.serio** %serio21, align 8, !dbg !4166
  %dev22 = getelementptr inbounds %struct.serio, %struct.serio* %28, i32 0, i32 18, !dbg !4166
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev22, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4166
  store i8 51, i8* %button_info, align 1, !dbg !4168
  br label %if.end23, !dbg !4169

if.end23:                                         ; preds = %if.then19, %if.else17
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then12
  %29 = load i8, i8* %button_info, align 1, !dbg !4170
  %conv26 = zext i8 %29 to i32, !dbg !4170
  %and = and i32 %conv26, 15, !dbg !4172
  %cmp27 = icmp sge i32 %and, 3, !dbg !4173
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !4174

if.then29:                                        ; preds = %if.end25
  %30 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4175
  %dev30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %30, i32 0, i32 1, !dbg !4176
  %31 = load %struct.input_dev*, %struct.input_dev** %dev30, align 8, !dbg !4176
  call void @input_set_capability(%struct.input_dev* %31, i32 1, i32 274) #8, !dbg !4177
  br label %if.end31, !dbg !4177

if.end31:                                         ; preds = %if.then29, %if.end25
  %32 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4178
  %dev32 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %32, i32 0, i32 1, !dbg !4179
  %33 = load %struct.input_dev*, %struct.input_dev** %dev32, align 8, !dbg !4179
  %propbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 4, !dbg !4180
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %propbit, i64 0, i64 0, !dbg !4178
  call void @__set_bit(i64 0, i64* %arraydecay) #8, !dbg !4181
  %34 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4182
  %dev33 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %34, i32 0, i32 1, !dbg !4183
  %35 = load %struct.input_dev*, %struct.input_dev** %dev33, align 8, !dbg !4183
  %propbit34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 4, !dbg !4184
  %arraydecay35 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit34, i64 0, i64 0, !dbg !4182
  call void @__set_bit(i64 5, i64* %arraydecay35) #8, !dbg !4185
  %36 = load i8, i8* %variant_id, align 1, !dbg !4186
  %conv36 = zext i8 %36 to i32, !dbg !4186
  %cmp37 = icmp ne i32 %conv36, 1, !dbg !4188
  br i1 %cmp37, label %if.then42, label %lor.lhs.false, !dbg !4189

lor.lhs.false:                                    ; preds = %if.end31
  %37 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4190
  %call39 = call i32 @trackpoint_power_on_reset(%struct.ps2dev* %37) #8, !dbg !4191
  %cmp40 = icmp ne i32 %call39, 0, !dbg !4192
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !4193

if.then42:                                        ; preds = %lor.lhs.false, %if.end31
  %38 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4194
  %call43 = call i32 @trackpoint_sync(%struct.psmouse* %38, i1 zeroext false) #8, !dbg !4196
  br label %if.end44, !dbg !4197

if.end44:                                         ; preds = %if.then42, %lor.lhs.false
  %39 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4198
  %serio45 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %39, i32 0, i32 0, !dbg !4199
  %40 = load %struct.serio*, %struct.serio** %serio45, align 8, !dbg !4199
  %dev46 = getelementptr inbounds %struct.serio, %struct.serio* %40, i32 0, i32 18, !dbg !4200
  %call47 = call i32 @device_add_group(%struct.device* %dev46, %struct.attribute_group* @trackpoint_attr_group) #8, !dbg !4201
  store i32 %call47, i32* %error, align 4, !dbg !4202
  %41 = load i32, i32* %error, align 4, !dbg !4203
  %tobool48 = icmp ne i32 %41, 0, !dbg !4203
  br i1 %tobool48, label %if.then49, label %if.end55, !dbg !4205

if.then49:                                        ; preds = %if.end44
  %42 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4206
  %ps2dev50 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 2, !dbg !4206
  %serio51 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev50, i32 0, i32 0, !dbg !4206
  %43 = load %struct.serio*, %struct.serio** %serio51, align 8, !dbg !4206
  %dev52 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 18, !dbg !4206
  %44 = load i32, i32* %error, align 4, !dbg !4206
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev52, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %44) #9, !dbg !4206
  %45 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4208
  %private53 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %45, i32 0, i32 0, !dbg !4209
  %46 = load i8*, i8** %private53, align 8, !dbg !4209
  call void @kfree(i8* %46) #8, !dbg !4210
  %47 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4211
  %private54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %47, i32 0, i32 0, !dbg !4212
  store i8* null, i8** %private54, align 8, !dbg !4213
  store i32 -1, i32* %retval, align 4, !dbg !4214
  br label %return, !dbg !4214

if.end55:                                         ; preds = %if.end44
  %48 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4215
  %ps2dev56 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 2, !dbg !4215
  %serio57 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev56, i32 0, i32 0, !dbg !4215
  %49 = load %struct.serio*, %struct.serio** %serio57, align 8, !dbg !4215
  %dev58 = getelementptr inbounds %struct.serio, %struct.serio* %49, i32 0, i32 18, !dbg !4215
  %50 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4215
  %vendor59 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 4, !dbg !4215
  %51 = load i8*, i8** %vendor59, align 8, !dbg !4215
  %52 = load i8, i8* %firmware_id, align 1, !dbg !4215
  %conv60 = zext i8 %52 to i32, !dbg !4215
  %53 = load i8, i8* %button_info, align 1, !dbg !4215
  %conv61 = zext i8 %53 to i32, !dbg !4215
  %and62 = and i32 %conv61, 240, !dbg !4215
  %shr = ashr i32 %and62, 4, !dbg !4215
  %54 = load i8, i8* %button_info, align 1, !dbg !4215
  %conv63 = zext i8 %54 to i32, !dbg !4215
  %and64 = and i32 %conv63, 15, !dbg !4215
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev58, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %51, i32 %conv60, i32 %shr, i32 %and64) #9, !dbg !4215
  store i32 0, i32* %retval, align 4, !dbg !4216
  br label %return, !dbg !4216

return:                                           ; preds = %if.end55, %if.then49, %if.then7, %if.then3, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !4217
  ret i32 %55, !dbg !4217
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_start_protocol(%struct.psmouse* %psmouse, i8* %variant_id, i8* %firmware_id) #0 !dbg !4218 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %variant_id.addr = alloca i8*, align 8
  %firmware_id.addr = alloca i8*, align 8
  %param = alloca [2 x i8], align 1
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  store i8* %variant_id, i8** %variant_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %variant_id.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  store i8* %firmware_id, i8** %firmware_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %firmware_id.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.declare(metadata [2 x i8]* %param, metadata !4227, metadata !DIExpression()), !dbg !4229
  %0 = bitcast [2 x i8]* %param to i8*, !dbg !4229
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 2, i1 false), !dbg !4229
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4230, metadata !DIExpression()), !dbg !4231
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4232
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %1, i32 0, i32 2, !dbg !4233
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %param, i64 0, i64 0, !dbg !4234
  %call = call i32 @ps2_command(%struct.ps2dev* %ps2dev, i8* %arraydecay, i32 737) #8, !dbg !4235
  store i32 %call, i32* %error, align 4, !dbg !4236
  %2 = load i32, i32* %error, align 4, !dbg !4237
  %tobool = icmp ne i32 %2, 0, !dbg !4237
  br i1 %tobool, label %if.then, label %if.end, !dbg !4239

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %error, align 4, !dbg !4240
  store i32 %3, i32* %retval, align 4, !dbg !4241
  br label %return, !dbg !4241

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %param, i64 0, i64 0, !dbg !4242
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4242
  %conv = zext i8 %4 to i32, !dbg !4242
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
  ], !dbg !4243

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %5 = load i8*, i8** %variant_id.addr, align 8, !dbg !4244
  %tobool1 = icmp ne i8* %5, null, !dbg !4244
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4247

if.then2:                                         ; preds = %sw.bb
  %arrayidx3 = getelementptr [2 x i8], [2 x i8]* %param, i64 0, i64 0, !dbg !4248
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !4248
  %7 = load i8*, i8** %variant_id.addr, align 8, !dbg !4249
  store i8 %6, i8* %7, align 1, !dbg !4250
  br label %if.end4, !dbg !4251

if.end4:                                          ; preds = %if.then2, %sw.bb
  %8 = load i8*, i8** %firmware_id.addr, align 8, !dbg !4252
  %tobool5 = icmp ne i8* %8, null, !dbg !4252
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !4254

if.then6:                                         ; preds = %if.end4
  %arrayidx7 = getelementptr [2 x i8], [2 x i8]* %param, i64 0, i64 1, !dbg !4255
  %9 = load i8, i8* %arrayidx7, align 1, !dbg !4255
  %10 = load i8*, i8** %firmware_id.addr, align 8, !dbg !4256
  store i8 %9, i8* %10, align 1, !dbg !4257
  br label %if.end8, !dbg !4258

if.end8:                                          ; preds = %if.then6, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !4259
  br label %return, !dbg !4259

sw.epilog:                                        ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4260
  br label %return, !dbg !4260

return:                                           ; preds = %sw.epilog, %if.end8, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4261
  ret i32 %11, !dbg !4261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4262 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4265, metadata !DIExpression()), !dbg !4269
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4275, metadata !DIExpression()), !dbg !4276
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4277, metadata !DIExpression()), !dbg !4278
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4279, metadata !DIExpression()), !dbg !4280
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4281, metadata !DIExpression()), !dbg !4285
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4287, metadata !DIExpression()), !dbg !4291
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4293, metadata !DIExpression()), !dbg !4297
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4302, metadata !DIExpression()), !dbg !4303
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4304, metadata !DIExpression()), !dbg !4305
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4306, metadata !DIExpression()), !dbg !4307
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4308, metadata !DIExpression()), !dbg !4309
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4310, metadata !DIExpression()), !dbg !4311
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4312, metadata !DIExpression()), !dbg !4313
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4314, metadata !DIExpression()), !dbg !4315
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4316, metadata !DIExpression()), !dbg !4317
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4320, metadata !DIExpression()), !dbg !4321
  %0 = load i64, i64* %size.addr, align 8, !dbg !4322
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4323
  %or = or i32 %1, 256, !dbg !4324
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4325
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4326
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4327

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4328
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4329
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4330

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4331
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4332
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4333
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4334
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4311
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4335
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4336
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4337
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4338
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4339
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4340
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4341
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4341
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4341
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4341
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4341
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4342
  br label %kmalloc.exit, !dbg !4342

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4343
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4344
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4344
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4346

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4347
  br label %kmalloc_index.exit.i, !dbg !4347

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4348
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4350
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4351

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4352
  br label %kmalloc_index.exit.i, !dbg !4352

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4353
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4355
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4356

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4357
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4358
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4359

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4360
  br label %kmalloc_index.exit.i, !dbg !4360

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4361
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4363
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4364

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4365
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4366
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4367

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4368
  br label %kmalloc_index.exit.i, !dbg !4368

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4369
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4371
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4372

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4373
  br label %kmalloc_index.exit.i, !dbg !4373

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4374
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4376
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4377

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4378
  br label %kmalloc_index.exit.i, !dbg !4378

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4379
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4381
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4382

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4383
  br label %kmalloc_index.exit.i, !dbg !4383

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4384
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4386
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4387

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4388
  br label %kmalloc_index.exit.i, !dbg !4388

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4389
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4391
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4392

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4393
  br label %kmalloc_index.exit.i, !dbg !4393

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4394
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4396
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4397

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4398
  br label %kmalloc_index.exit.i, !dbg !4398

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4399
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4401
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4402

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4403
  br label %kmalloc_index.exit.i, !dbg !4403

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4404
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4406
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4407

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4408
  br label %kmalloc_index.exit.i, !dbg !4408

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4409
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4411
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4412

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4413
  br label %kmalloc_index.exit.i, !dbg !4413

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4414
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4416
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4417

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4418
  br label %kmalloc_index.exit.i, !dbg !4418

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4419
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4421
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4422

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4423
  br label %kmalloc_index.exit.i, !dbg !4423

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4424
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4426
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4427

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4428
  br label %kmalloc_index.exit.i, !dbg !4428

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4429
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4431
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4432

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4433
  br label %kmalloc_index.exit.i, !dbg !4433

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4434
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4436
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4437

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4438
  br label %kmalloc_index.exit.i, !dbg !4438

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4439
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4441
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4442

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4443
  br label %kmalloc_index.exit.i, !dbg !4443

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4444
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4446
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4447

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4448
  br label %kmalloc_index.exit.i, !dbg !4448

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4449
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4451
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4452

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4453
  br label %kmalloc_index.exit.i, !dbg !4453

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4454
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4456
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4457

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4458
  br label %kmalloc_index.exit.i, !dbg !4458

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4459
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4461
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4462

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4463
  br label %kmalloc_index.exit.i, !dbg !4463

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4464
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4466
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4467

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4468
  br label %kmalloc_index.exit.i, !dbg !4468

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4469
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4471
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4472

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4473
  br label %kmalloc_index.exit.i, !dbg !4473

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4474
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4476
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4477

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4478
  br label %kmalloc_index.exit.i, !dbg !4478

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4479
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4481
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4482

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4483
  br label %kmalloc_index.exit.i, !dbg !4483

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4484
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4486
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4487

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4488
  br label %kmalloc_index.exit.i, !dbg !4488

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4489, !srcloc !4492
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4493, !srcloc !4496
  unreachable, !dbg !4497

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4498
  store i32 %45, i32* %index.i, align 4, !dbg !4499
  %46 = load i32, i32* %index.i, align 4, !dbg !4500
  %tobool.i = icmp ne i32 %46, 0, !dbg !4500
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4502

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4503
  br label %kmalloc.exit, !dbg !4503

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4504
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4505
  %and.i.i = and i32 %48, 17, !dbg !4505
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4505
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4505
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4505
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4505
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4507

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4508
  br label %kmalloc_type.exit.i, !dbg !4508

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4509
  %and2.i.i = and i32 %49, 1, !dbg !4510
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4509
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4509
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4509
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4511
  br label %kmalloc_type.exit.i, !dbg !4511

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4512
  %idxprom.i = zext i32 %51 to i64, !dbg !4513
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4513
  %52 = load i32, i32* %index.i, align 4, !dbg !4514
  %idxprom6.i = zext i32 %52 to i64, !dbg !4513
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4513
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4513
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4515
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4516
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4517
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4518
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4519
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4519
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4519
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4519
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4519
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4280
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4520
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4521
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4522
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4523
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4524
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4525
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4526
  store i8* %62, i8** %retval.i, align 8, !dbg !4527
  br label %kmalloc.exit, !dbg !4527

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4528
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4529
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4530
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4530
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4530
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4530
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4530
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4531
  br label %kmalloc.exit, !dbg !4531

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4532
  ret i8* %65, !dbg !4533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trackpoint_defaults(%struct.trackpoint_data* %tp) #0 !dbg !4534 {
entry:
  %tp.addr = alloca %struct.trackpoint_data*, align 8
  store %struct.trackpoint_data* %tp, %struct.trackpoint_data** %tp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  br label %do.body, !dbg !4539

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_sensitivity, i32 0, i32 4), align 1, !dbg !4540
  %1 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4540
  %sensitivity = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %1, i32 0, i32 2, !dbg !4540
  store i8 %0, i8* %sensitivity, align 1, !dbg !4540
  br label %do.end, !dbg !4540

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4542

do.body1:                                         ; preds = %do.end
  %2 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_speed, i32 0, i32 4), align 1, !dbg !4543
  %3 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4543
  %speed = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %3, i32 0, i32 3, !dbg !4543
  store i8 %2, i8* %speed, align 1, !dbg !4543
  br label %do.end2, !dbg !4543

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !4545

do.body3:                                         ; preds = %do.end2
  %4 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_reach, i32 0, i32 4), align 1, !dbg !4546
  %5 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4546
  %reach = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %5, i32 0, i32 5, !dbg !4546
  store i8 %4, i8* %reach, align 1, !dbg !4546
  br label %do.end4, !dbg !4546

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !4548

do.body5:                                         ; preds = %do.end4
  %6 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_draghys, i32 0, i32 4), align 1, !dbg !4549
  %7 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4549
  %draghys = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %7, i32 0, i32 6, !dbg !4549
  store i8 %6, i8* %draghys, align 1, !dbg !4549
  br label %do.end6, !dbg !4549

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4551

do.body7:                                         ; preds = %do.end6
  %8 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_mindrag, i32 0, i32 4), align 1, !dbg !4552
  %9 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4552
  %mindrag = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %9, i32 0, i32 7, !dbg !4552
  store i8 %8, i8* %mindrag, align 1, !dbg !4552
  br label %do.end8, !dbg !4552

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4554

do.body9:                                         ; preds = %do.end8
  %10 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_thresh, i32 0, i32 4), align 1, !dbg !4555
  %11 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4555
  %thresh = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %11, i32 0, i32 8, !dbg !4555
  store i8 %10, i8* %thresh, align 1, !dbg !4555
  br label %do.end10, !dbg !4555

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !4557

do.body11:                                        ; preds = %do.end10
  %12 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_upthresh, i32 0, i32 4), align 1, !dbg !4558
  %13 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4558
  %upthresh = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %13, i32 0, i32 9, !dbg !4558
  store i8 %12, i8* %upthresh, align 1, !dbg !4558
  br label %do.end12, !dbg !4558

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !4560

do.body13:                                        ; preds = %do.end12
  %14 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_ztime, i32 0, i32 4), align 1, !dbg !4561
  %15 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4561
  %ztime = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %15, i32 0, i32 10, !dbg !4561
  store i8 %14, i8* %ztime, align 1, !dbg !4561
  br label %do.end14, !dbg !4561

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !4563

do.body15:                                        ; preds = %do.end14
  %16 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_jenks, i32 0, i32 4), align 1, !dbg !4564
  %17 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4564
  %jenks = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %17, i32 0, i32 11, !dbg !4564
  store i8 %16, i8* %jenks, align 1, !dbg !4564
  br label %do.end16, !dbg !4564

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !4566

do.body17:                                        ; preds = %do.end16
  %18 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_drift_time, i32 0, i32 4), align 1, !dbg !4567
  %19 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4567
  %drift_time = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %19, i32 0, i32 12, !dbg !4567
  store i8 %18, i8* %drift_time, align 1, !dbg !4567
  br label %do.end18, !dbg !4567

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !4569

do.body19:                                        ; preds = %do.end18
  %20 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_inertia, i32 0, i32 4), align 1, !dbg !4570
  %21 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4570
  %inertia = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %21, i32 0, i32 4, !dbg !4570
  store i8 %20, i8* %inertia, align 1, !dbg !4570
  br label %do.end20, !dbg !4570

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !4572

do.body21:                                        ; preds = %do.end20
  %22 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_press_to_select, i32 0, i32 4), align 1, !dbg !4573
  %tobool = icmp ne i8 %22, 0, !dbg !4573
  %23 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4573
  %press_to_select = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %23, i32 0, i32 13, !dbg !4573
  %frombool = zext i1 %tobool to i8, !dbg !4573
  store i8 %frombool, i8* %press_to_select, align 1, !dbg !4573
  br label %do.end22, !dbg !4573

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !4575

do.body23:                                        ; preds = %do.end22
  %24 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_skipback, i32 0, i32 4), align 1, !dbg !4576
  %tobool24 = icmp ne i8 %24, 0, !dbg !4576
  %25 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4576
  %skipback = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %25, i32 0, i32 14, !dbg !4576
  %frombool25 = zext i1 %tobool24 to i8, !dbg !4576
  store i8 %frombool25, i8* %skipback, align 1, !dbg !4576
  br label %do.end26, !dbg !4576

do.end26:                                         ; preds = %do.body23
  br label %do.body27, !dbg !4578

do.body27:                                        ; preds = %do.end26
  %26 = load i8, i8* getelementptr inbounds (%struct.trackpoint_attr_data, %struct.trackpoint_attr_data* @trackpoint_attr_ext_dev, i32 0, i32 4), align 1, !dbg !4579
  %tobool28 = icmp ne i8 %26, 0, !dbg !4579
  %27 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp.addr, align 8, !dbg !4579
  %ext_dev = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %27, i32 0, i32 15, !dbg !4579
  %frombool29 = zext i1 %tobool28 to i8, !dbg !4579
  store i8 %frombool29, i8* %ext_dev, align 1, !dbg !4579
  br label %do.end30, !dbg !4579

do.end30:                                         ; preds = %do.body27
  ret void, !dbg !4581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_reconnect(%struct.psmouse* %psmouse) #0 !dbg !4582 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %tp = alloca %struct.trackpoint_data*, align 8
  %error = alloca i32, align 4
  %was_reset = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !4585, metadata !DIExpression()), !dbg !4586
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4587
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4588
  %1 = load i8*, i8** %private, align 8, !dbg !4588
  %2 = bitcast i8* %1 to %struct.trackpoint_data*, !dbg !4587
  store %struct.trackpoint_data* %2, %struct.trackpoint_data** %tp, align 8, !dbg !4586
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4589, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.declare(metadata i8* %was_reset, metadata !4591, metadata !DIExpression()), !dbg !4592
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4593
  %call = call i32 @trackpoint_start_protocol(%struct.psmouse* %3, i8* null, i8* null) #8, !dbg !4594
  store i32 %call, i32* %error, align 4, !dbg !4595
  %4 = load i32, i32* %error, align 4, !dbg !4596
  %tobool = icmp ne i32 %4, 0, !dbg !4596
  br i1 %tobool, label %if.then, label %if.end, !dbg !4598

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %error, align 4, !dbg !4599
  store i32 %5, i32* %retval, align 4, !dbg !4600
  br label %return, !dbg !4600

if.end:                                           ; preds = %entry
  %6 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4601
  %variant_id = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %6, i32 0, i32 0, !dbg !4602
  %7 = load i8, i8* %variant_id, align 1, !dbg !4602
  %conv = zext i8 %7 to i32, !dbg !4601
  %cmp = icmp eq i32 %conv, 1, !dbg !4603
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4604

land.rhs:                                         ; preds = %if.end
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4605
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2, !dbg !4606
  %call2 = call i32 @trackpoint_power_on_reset(%struct.ps2dev* %ps2dev) #8, !dbg !4607
  %cmp3 = icmp eq i32 %call2, 0, !dbg !4608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %9 = phi i1 [ false, %if.end ], [ %cmp3, %land.rhs ], !dbg !4609
  %frombool = zext i1 %9 to i8, !dbg !4610
  store i8 %frombool, i8* %was_reset, align 1, !dbg !4610
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4611
  %11 = load i8, i8* %was_reset, align 1, !dbg !4612
  %tobool5 = trunc i8 %11 to i1, !dbg !4612
  %call6 = call i32 @trackpoint_sync(%struct.psmouse* %10, i1 zeroext %tobool5) #8, !dbg !4613
  store i32 %call6, i32* %error, align 4, !dbg !4614
  %12 = load i32, i32* %error, align 4, !dbg !4615
  %tobool7 = icmp ne i32 %12, 0, !dbg !4615
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4617

if.then8:                                         ; preds = %land.end
  %13 = load i32, i32* %error, align 4, !dbg !4618
  store i32 %13, i32* %retval, align 4, !dbg !4619
  br label %return, !dbg !4619

if.end9:                                          ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !4620
  br label %return, !dbg !4620

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !4621
  ret i32 %14, !dbg !4621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trackpoint_disconnect(%struct.psmouse* %psmouse) #0 !dbg !4622 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4625
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4626
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4627
  %1 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4627
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 18, !dbg !4628
  call void @device_remove_group(%struct.device* %dev, %struct.attribute_group* @trackpoint_attr_group) #8, !dbg !4629
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4630
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 0, !dbg !4631
  %3 = load i8*, i8** %private, align 8, !dbg !4631
  call void @kfree(i8* %3) #8, !dbg !4632
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4633
  %private1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0, !dbg !4634
  store i8* null, i8** %private1, align 8, !dbg !4635
  ret void, !dbg !4636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_read(%struct.ps2dev* %ps2dev, i8 zeroext %loc, i8* %results) #0 !dbg !4637 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %loc.addr = alloca i8, align 1
  %results.addr = alloca i8*, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  store i8 %loc, i8* %loc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %loc.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  store i8* %results, i8** %results.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %results.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  %0 = load i8, i8* %loc.addr, align 1, !dbg !4646
  %1 = load i8*, i8** %results.addr, align 8, !dbg !4647
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !4647
  store i8 %0, i8* %arrayidx, align 1, !dbg !4648
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4649
  %3 = load i8*, i8** %results.addr, align 8, !dbg !4650
  %call = call i32 @ps2_command(%struct.ps2dev* %2, i8* %3, i32 4578) #8, !dbg !4651
  ret i32 %call, !dbg !4652
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !4653 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4659, metadata !DIExpression()), !dbg !4662
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4664, metadata !DIExpression()), !dbg !4665
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4666, metadata !DIExpression()), !dbg !4674
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4676, metadata !DIExpression()), !dbg !4677
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4682
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4683
  %div = sdiv i64 %1, 64, !dbg !4683
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4684
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4682
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4685
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4686
  %conv.i = trunc i64 %4 to i32, !dbg !4686
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4687
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4688
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4688
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !4688
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4689
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4690
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4691
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4692
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !4693, !srcloc !4694
  ret void, !dbg !4695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_power_on_reset(%struct.ps2dev* %ps2dev) #0 !dbg !4696 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %param = alloca [2 x i8], align 1
  %err = alloca i32, align 4
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata [2 x i8]* %param, metadata !4701, metadata !DIExpression()), !dbg !4702
  %0 = bitcast [2 x i8]* %param to i8*, !dbg !4702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.trackpoint_power_on_reset.param, i32 0, i32 0), i64 2, i1 false), !dbg !4702
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4703, metadata !DIExpression()), !dbg !4704
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4705
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %param, i64 0, i64 0, !dbg !4706
  %call = call i32 @ps2_command(%struct.ps2dev* %1, i8* %arraydecay, i32 4834) #8, !dbg !4707
  store i32 %call, i32* %err, align 4, !dbg !4708
  %2 = load i32, i32* %err, align 4, !dbg !4709
  %tobool = icmp ne i32 %2, 0, !dbg !4709
  br i1 %tobool, label %if.then, label %if.end, !dbg !4711

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %err, align 4, !dbg !4712
  store i32 %3, i32* %retval, align 4, !dbg !4713
  br label %return, !dbg !4713

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %param, i64 0, i64 0, !dbg !4714
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4714
  %conv = zext i8 %4 to i32, !dbg !4714
  %cmp = icmp ne i32 %conv, 170, !dbg !4716
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !4717

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr [2 x i8], [2 x i8]* %param, i64 0, i64 1, !dbg !4718
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !4718
  %conv3 = zext i8 %5 to i32, !dbg !4718
  %cmp4 = icmp ne i32 %conv3, 0, !dbg !4719
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4720

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4721
  br label %return, !dbg !4721

if.end7:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4722
  br label %return, !dbg !4722

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4723
  ret i32 %6, !dbg !4723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_sync(%struct.psmouse* %psmouse, i1 zeroext %in_power_on_state) #0 !dbg !4724 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %in_power_on_state.addr = alloca i8, align 1
  %tp = alloca %struct.trackpoint_data*, align 8
  %_attr = alloca %struct.trackpoint_attr_data*, align 8
  %_attr28 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr57 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr86 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr115 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr144 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr173 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr202 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr231 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr260 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr289 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr318 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr352 = alloca %struct.trackpoint_attr_data*, align 8
  %_attr386 = alloca %struct.trackpoint_attr_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  %frombool = zext i1 %in_power_on_state to i8
  store i8 %frombool, i8* %in_power_on_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %in_power_on_state.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4731
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4732
  %1 = load i8*, i8** %private, align 8, !dbg !4732
  %2 = bitcast i8* %1 to %struct.trackpoint_data*, !dbg !4731
  store %struct.trackpoint_data* %2, %struct.trackpoint_data** %tp, align 8, !dbg !4730
  %3 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4733
  %tobool = trunc i8 %3 to i1, !dbg !4733
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4735

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4736
  %variant_id = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %4, i32 0, i32 0, !dbg !4737
  %5 = load i8, i8* %variant_id, align 1, !dbg !4737
  %conv = zext i8 %5 to i32, !dbg !4736
  %cmp = icmp eq i32 %conv, 1, !dbg !4738
  br i1 %cmp, label %if.then, label %if.end, !dbg !4739

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4740
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2, !dbg !4742
  %call = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev, i8 zeroext 45, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4743
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4744
  %ps2dev2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 2, !dbg !4745
  %call3 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev2, i8 zeroext 32, i8 zeroext -128, i8 zeroext 0) #8, !dbg !4746
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4747
  %ps2dev4 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2, !dbg !4748
  %call5 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev4, i8 zeroext 35, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4749
  br label %if.end, !dbg !4750

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body, !dbg !4751

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr, metadata !4752, metadata !DIExpression()), !dbg !4755
  store %struct.trackpoint_attr_data* @trackpoint_attr_sensitivity, %struct.trackpoint_attr_data** %_attr, align 8, !dbg !4755
  %9 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4756
  %tobool6 = trunc i8 %9 to i1, !dbg !4756
  br i1 %tobool6, label %lor.lhs.false, label %land.lhs.true11, !dbg !4756

lor.lhs.false:                                    ; preds = %do.body
  %10 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4756
  %sensitivity = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %10, i32 0, i32 2, !dbg !4756
  %11 = load i8, i8* %sensitivity, align 1, !dbg !4756
  %conv7 = zext i8 %11 to i32, !dbg !4756
  %12 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr, align 8, !dbg !4756
  %power_on_default = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %12, i32 0, i32 4, !dbg !4756
  %13 = load i8, i8* %power_on_default, align 1, !dbg !4756
  %conv8 = zext i8 %13 to i32, !dbg !4756
  %cmp9 = icmp ne i32 %conv7, %conv8, !dbg !4756
  br i1 %cmp9, label %land.lhs.true11, label %if.end26, !dbg !4756

land.lhs.true11:                                  ; preds = %lor.lhs.false, %do.body
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4756
  %call12 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %14, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_sensitivity, i32 0, i32 0, i32 0)) #8, !dbg !4756
  br i1 %call12, label %if.then14, label %if.end26, !dbg !4755

if.then14:                                        ; preds = %land.lhs.true11
  %15 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr, align 8, !dbg !4758
  %mask = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %15, i32 0, i32 2, !dbg !4758
  %16 = load i8, i8* %mask, align 1, !dbg !4758
  %tobool15 = icmp ne i8 %16, 0, !dbg !4758
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !4761

if.then16:                                        ; preds = %if.then14
  %17 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4758
  %ps2dev17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 2, !dbg !4758
  %18 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr, align 8, !dbg !4758
  %command = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %18, i32 0, i32 1, !dbg !4758
  %19 = load i8, i8* %command, align 8, !dbg !4758
  %20 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4758
  %sensitivity18 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %20, i32 0, i32 2, !dbg !4758
  %21 = load i8, i8* %sensitivity18, align 1, !dbg !4758
  %call19 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev17, i8 zeroext %19, i8 zeroext %21) #8, !dbg !4758
  br label %if.end25, !dbg !4758

if.else:                                          ; preds = %if.then14
  %22 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4758
  %ps2dev20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 2, !dbg !4758
  %23 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr, align 8, !dbg !4758
  %command21 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %23, i32 0, i32 1, !dbg !4758
  %24 = load i8, i8* %command21, align 8, !dbg !4758
  %25 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr, align 8, !dbg !4758
  %mask22 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %25, i32 0, i32 2, !dbg !4758
  %26 = load i8, i8* %mask22, align 1, !dbg !4758
  %27 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4758
  %sensitivity23 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %27, i32 0, i32 2, !dbg !4758
  %28 = load i8, i8* %sensitivity23, align 1, !dbg !4758
  %call24 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev20, i8 zeroext %24, i8 zeroext %26, i8 zeroext %28) #8, !dbg !4758
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  br label %if.end26, !dbg !4761

if.end26:                                         ; preds = %if.end25, %land.lhs.true11, %lor.lhs.false
  br label %do.end, !dbg !4755

do.end:                                           ; preds = %if.end26
  br label %do.body27, !dbg !4762

do.body27:                                        ; preds = %do.end
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr28, metadata !4763, metadata !DIExpression()), !dbg !4765
  store %struct.trackpoint_attr_data* @trackpoint_attr_inertia, %struct.trackpoint_attr_data** %_attr28, align 8, !dbg !4765
  %29 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4766
  %tobool29 = trunc i8 %29 to i1, !dbg !4766
  br i1 %tobool29, label %lor.lhs.false30, label %land.lhs.true36, !dbg !4766

lor.lhs.false30:                                  ; preds = %do.body27
  %30 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4766
  %inertia = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %30, i32 0, i32 4, !dbg !4766
  %31 = load i8, i8* %inertia, align 1, !dbg !4766
  %conv31 = zext i8 %31 to i32, !dbg !4766
  %32 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr28, align 8, !dbg !4766
  %power_on_default32 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %32, i32 0, i32 4, !dbg !4766
  %33 = load i8, i8* %power_on_default32, align 1, !dbg !4766
  %conv33 = zext i8 %33 to i32, !dbg !4766
  %cmp34 = icmp ne i32 %conv31, %conv33, !dbg !4766
  br i1 %cmp34, label %land.lhs.true36, label %if.end54, !dbg !4766

land.lhs.true36:                                  ; preds = %lor.lhs.false30, %do.body27
  %34 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4766
  %call37 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %34, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_inertia, i32 0, i32 0, i32 0)) #8, !dbg !4766
  br i1 %call37, label %if.then39, label %if.end54, !dbg !4765

if.then39:                                        ; preds = %land.lhs.true36
  %35 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr28, align 8, !dbg !4768
  %mask40 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %35, i32 0, i32 2, !dbg !4768
  %36 = load i8, i8* %mask40, align 1, !dbg !4768
  %tobool41 = icmp ne i8 %36, 0, !dbg !4768
  br i1 %tobool41, label %if.else47, label %if.then42, !dbg !4771

if.then42:                                        ; preds = %if.then39
  %37 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4768
  %ps2dev43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %37, i32 0, i32 2, !dbg !4768
  %38 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr28, align 8, !dbg !4768
  %command44 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %38, i32 0, i32 1, !dbg !4768
  %39 = load i8, i8* %command44, align 8, !dbg !4768
  %40 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4768
  %inertia45 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %40, i32 0, i32 4, !dbg !4768
  %41 = load i8, i8* %inertia45, align 1, !dbg !4768
  %call46 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev43, i8 zeroext %39, i8 zeroext %41) #8, !dbg !4768
  br label %if.end53, !dbg !4768

if.else47:                                        ; preds = %if.then39
  %42 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4768
  %ps2dev48 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 2, !dbg !4768
  %43 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr28, align 8, !dbg !4768
  %command49 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %43, i32 0, i32 1, !dbg !4768
  %44 = load i8, i8* %command49, align 8, !dbg !4768
  %45 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr28, align 8, !dbg !4768
  %mask50 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %45, i32 0, i32 2, !dbg !4768
  %46 = load i8, i8* %mask50, align 1, !dbg !4768
  %47 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4768
  %inertia51 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %47, i32 0, i32 4, !dbg !4768
  %48 = load i8, i8* %inertia51, align 1, !dbg !4768
  %call52 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev48, i8 zeroext %44, i8 zeroext %46, i8 zeroext %48) #8, !dbg !4768
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %if.then42
  br label %if.end54, !dbg !4771

if.end54:                                         ; preds = %if.end53, %land.lhs.true36, %lor.lhs.false30
  br label %do.end55, !dbg !4765

do.end55:                                         ; preds = %if.end54
  br label %do.body56, !dbg !4772

do.body56:                                        ; preds = %do.end55
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr57, metadata !4773, metadata !DIExpression()), !dbg !4775
  store %struct.trackpoint_attr_data* @trackpoint_attr_speed, %struct.trackpoint_attr_data** %_attr57, align 8, !dbg !4775
  %49 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4776
  %tobool58 = trunc i8 %49 to i1, !dbg !4776
  br i1 %tobool58, label %lor.lhs.false59, label %land.lhs.true65, !dbg !4776

lor.lhs.false59:                                  ; preds = %do.body56
  %50 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4776
  %speed = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %50, i32 0, i32 3, !dbg !4776
  %51 = load i8, i8* %speed, align 1, !dbg !4776
  %conv60 = zext i8 %51 to i32, !dbg !4776
  %52 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr57, align 8, !dbg !4776
  %power_on_default61 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %52, i32 0, i32 4, !dbg !4776
  %53 = load i8, i8* %power_on_default61, align 1, !dbg !4776
  %conv62 = zext i8 %53 to i32, !dbg !4776
  %cmp63 = icmp ne i32 %conv60, %conv62, !dbg !4776
  br i1 %cmp63, label %land.lhs.true65, label %if.end83, !dbg !4776

land.lhs.true65:                                  ; preds = %lor.lhs.false59, %do.body56
  %54 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4776
  %call66 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %54, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_speed, i32 0, i32 0, i32 0)) #8, !dbg !4776
  br i1 %call66, label %if.then68, label %if.end83, !dbg !4775

if.then68:                                        ; preds = %land.lhs.true65
  %55 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr57, align 8, !dbg !4778
  %mask69 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %55, i32 0, i32 2, !dbg !4778
  %56 = load i8, i8* %mask69, align 1, !dbg !4778
  %tobool70 = icmp ne i8 %56, 0, !dbg !4778
  br i1 %tobool70, label %if.else76, label %if.then71, !dbg !4781

if.then71:                                        ; preds = %if.then68
  %57 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4778
  %ps2dev72 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %57, i32 0, i32 2, !dbg !4778
  %58 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr57, align 8, !dbg !4778
  %command73 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %58, i32 0, i32 1, !dbg !4778
  %59 = load i8, i8* %command73, align 8, !dbg !4778
  %60 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4778
  %speed74 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %60, i32 0, i32 3, !dbg !4778
  %61 = load i8, i8* %speed74, align 1, !dbg !4778
  %call75 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev72, i8 zeroext %59, i8 zeroext %61) #8, !dbg !4778
  br label %if.end82, !dbg !4778

if.else76:                                        ; preds = %if.then68
  %62 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4778
  %ps2dev77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 2, !dbg !4778
  %63 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr57, align 8, !dbg !4778
  %command78 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %63, i32 0, i32 1, !dbg !4778
  %64 = load i8, i8* %command78, align 8, !dbg !4778
  %65 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr57, align 8, !dbg !4778
  %mask79 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %65, i32 0, i32 2, !dbg !4778
  %66 = load i8, i8* %mask79, align 1, !dbg !4778
  %67 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4778
  %speed80 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %67, i32 0, i32 3, !dbg !4778
  %68 = load i8, i8* %speed80, align 1, !dbg !4778
  %call81 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev77, i8 zeroext %64, i8 zeroext %66, i8 zeroext %68) #8, !dbg !4778
  br label %if.end82

if.end82:                                         ; preds = %if.else76, %if.then71
  br label %if.end83, !dbg !4781

if.end83:                                         ; preds = %if.end82, %land.lhs.true65, %lor.lhs.false59
  br label %do.end84, !dbg !4775

do.end84:                                         ; preds = %if.end83
  br label %do.body85, !dbg !4782

do.body85:                                        ; preds = %do.end84
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr86, metadata !4783, metadata !DIExpression()), !dbg !4785
  store %struct.trackpoint_attr_data* @trackpoint_attr_reach, %struct.trackpoint_attr_data** %_attr86, align 8, !dbg !4785
  %69 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4786
  %tobool87 = trunc i8 %69 to i1, !dbg !4786
  br i1 %tobool87, label %lor.lhs.false88, label %land.lhs.true94, !dbg !4786

lor.lhs.false88:                                  ; preds = %do.body85
  %70 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4786
  %reach = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %70, i32 0, i32 5, !dbg !4786
  %71 = load i8, i8* %reach, align 1, !dbg !4786
  %conv89 = zext i8 %71 to i32, !dbg !4786
  %72 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr86, align 8, !dbg !4786
  %power_on_default90 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %72, i32 0, i32 4, !dbg !4786
  %73 = load i8, i8* %power_on_default90, align 1, !dbg !4786
  %conv91 = zext i8 %73 to i32, !dbg !4786
  %cmp92 = icmp ne i32 %conv89, %conv91, !dbg !4786
  br i1 %cmp92, label %land.lhs.true94, label %if.end112, !dbg !4786

land.lhs.true94:                                  ; preds = %lor.lhs.false88, %do.body85
  %74 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4786
  %call95 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %74, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_reach, i32 0, i32 0, i32 0)) #8, !dbg !4786
  br i1 %call95, label %if.then97, label %if.end112, !dbg !4785

if.then97:                                        ; preds = %land.lhs.true94
  %75 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr86, align 8, !dbg !4788
  %mask98 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %75, i32 0, i32 2, !dbg !4788
  %76 = load i8, i8* %mask98, align 1, !dbg !4788
  %tobool99 = icmp ne i8 %76, 0, !dbg !4788
  br i1 %tobool99, label %if.else105, label %if.then100, !dbg !4791

if.then100:                                       ; preds = %if.then97
  %77 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4788
  %ps2dev101 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %77, i32 0, i32 2, !dbg !4788
  %78 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr86, align 8, !dbg !4788
  %command102 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %78, i32 0, i32 1, !dbg !4788
  %79 = load i8, i8* %command102, align 8, !dbg !4788
  %80 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4788
  %reach103 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %80, i32 0, i32 5, !dbg !4788
  %81 = load i8, i8* %reach103, align 1, !dbg !4788
  %call104 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev101, i8 zeroext %79, i8 zeroext %81) #8, !dbg !4788
  br label %if.end111, !dbg !4788

if.else105:                                       ; preds = %if.then97
  %82 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4788
  %ps2dev106 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 2, !dbg !4788
  %83 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr86, align 8, !dbg !4788
  %command107 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %83, i32 0, i32 1, !dbg !4788
  %84 = load i8, i8* %command107, align 8, !dbg !4788
  %85 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr86, align 8, !dbg !4788
  %mask108 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %85, i32 0, i32 2, !dbg !4788
  %86 = load i8, i8* %mask108, align 1, !dbg !4788
  %87 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4788
  %reach109 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %87, i32 0, i32 5, !dbg !4788
  %88 = load i8, i8* %reach109, align 1, !dbg !4788
  %call110 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev106, i8 zeroext %84, i8 zeroext %86, i8 zeroext %88) #8, !dbg !4788
  br label %if.end111

if.end111:                                        ; preds = %if.else105, %if.then100
  br label %if.end112, !dbg !4791

if.end112:                                        ; preds = %if.end111, %land.lhs.true94, %lor.lhs.false88
  br label %do.end113, !dbg !4785

do.end113:                                        ; preds = %if.end112
  br label %do.body114, !dbg !4792

do.body114:                                       ; preds = %do.end113
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr115, metadata !4793, metadata !DIExpression()), !dbg !4795
  store %struct.trackpoint_attr_data* @trackpoint_attr_draghys, %struct.trackpoint_attr_data** %_attr115, align 8, !dbg !4795
  %89 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4796
  %tobool116 = trunc i8 %89 to i1, !dbg !4796
  br i1 %tobool116, label %lor.lhs.false117, label %land.lhs.true123, !dbg !4796

lor.lhs.false117:                                 ; preds = %do.body114
  %90 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4796
  %draghys = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %90, i32 0, i32 6, !dbg !4796
  %91 = load i8, i8* %draghys, align 1, !dbg !4796
  %conv118 = zext i8 %91 to i32, !dbg !4796
  %92 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr115, align 8, !dbg !4796
  %power_on_default119 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %92, i32 0, i32 4, !dbg !4796
  %93 = load i8, i8* %power_on_default119, align 1, !dbg !4796
  %conv120 = zext i8 %93 to i32, !dbg !4796
  %cmp121 = icmp ne i32 %conv118, %conv120, !dbg !4796
  br i1 %cmp121, label %land.lhs.true123, label %if.end141, !dbg !4796

land.lhs.true123:                                 ; preds = %lor.lhs.false117, %do.body114
  %94 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4796
  %call124 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %94, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_draghys, i32 0, i32 0, i32 0)) #8, !dbg !4796
  br i1 %call124, label %if.then126, label %if.end141, !dbg !4795

if.then126:                                       ; preds = %land.lhs.true123
  %95 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr115, align 8, !dbg !4798
  %mask127 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %95, i32 0, i32 2, !dbg !4798
  %96 = load i8, i8* %mask127, align 1, !dbg !4798
  %tobool128 = icmp ne i8 %96, 0, !dbg !4798
  br i1 %tobool128, label %if.else134, label %if.then129, !dbg !4801

if.then129:                                       ; preds = %if.then126
  %97 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4798
  %ps2dev130 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %97, i32 0, i32 2, !dbg !4798
  %98 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr115, align 8, !dbg !4798
  %command131 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %98, i32 0, i32 1, !dbg !4798
  %99 = load i8, i8* %command131, align 8, !dbg !4798
  %100 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4798
  %draghys132 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %100, i32 0, i32 6, !dbg !4798
  %101 = load i8, i8* %draghys132, align 1, !dbg !4798
  %call133 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev130, i8 zeroext %99, i8 zeroext %101) #8, !dbg !4798
  br label %if.end140, !dbg !4798

if.else134:                                       ; preds = %if.then126
  %102 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4798
  %ps2dev135 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %102, i32 0, i32 2, !dbg !4798
  %103 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr115, align 8, !dbg !4798
  %command136 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %103, i32 0, i32 1, !dbg !4798
  %104 = load i8, i8* %command136, align 8, !dbg !4798
  %105 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr115, align 8, !dbg !4798
  %mask137 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %105, i32 0, i32 2, !dbg !4798
  %106 = load i8, i8* %mask137, align 1, !dbg !4798
  %107 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4798
  %draghys138 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %107, i32 0, i32 6, !dbg !4798
  %108 = load i8, i8* %draghys138, align 1, !dbg !4798
  %call139 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev135, i8 zeroext %104, i8 zeroext %106, i8 zeroext %108) #8, !dbg !4798
  br label %if.end140

if.end140:                                        ; preds = %if.else134, %if.then129
  br label %if.end141, !dbg !4801

if.end141:                                        ; preds = %if.end140, %land.lhs.true123, %lor.lhs.false117
  br label %do.end142, !dbg !4795

do.end142:                                        ; preds = %if.end141
  br label %do.body143, !dbg !4802

do.body143:                                       ; preds = %do.end142
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr144, metadata !4803, metadata !DIExpression()), !dbg !4805
  store %struct.trackpoint_attr_data* @trackpoint_attr_mindrag, %struct.trackpoint_attr_data** %_attr144, align 8, !dbg !4805
  %109 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4806
  %tobool145 = trunc i8 %109 to i1, !dbg !4806
  br i1 %tobool145, label %lor.lhs.false146, label %land.lhs.true152, !dbg !4806

lor.lhs.false146:                                 ; preds = %do.body143
  %110 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4806
  %mindrag = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %110, i32 0, i32 7, !dbg !4806
  %111 = load i8, i8* %mindrag, align 1, !dbg !4806
  %conv147 = zext i8 %111 to i32, !dbg !4806
  %112 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr144, align 8, !dbg !4806
  %power_on_default148 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %112, i32 0, i32 4, !dbg !4806
  %113 = load i8, i8* %power_on_default148, align 1, !dbg !4806
  %conv149 = zext i8 %113 to i32, !dbg !4806
  %cmp150 = icmp ne i32 %conv147, %conv149, !dbg !4806
  br i1 %cmp150, label %land.lhs.true152, label %if.end170, !dbg !4806

land.lhs.true152:                                 ; preds = %lor.lhs.false146, %do.body143
  %114 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4806
  %call153 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %114, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_mindrag, i32 0, i32 0, i32 0)) #8, !dbg !4806
  br i1 %call153, label %if.then155, label %if.end170, !dbg !4805

if.then155:                                       ; preds = %land.lhs.true152
  %115 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr144, align 8, !dbg !4808
  %mask156 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %115, i32 0, i32 2, !dbg !4808
  %116 = load i8, i8* %mask156, align 1, !dbg !4808
  %tobool157 = icmp ne i8 %116, 0, !dbg !4808
  br i1 %tobool157, label %if.else163, label %if.then158, !dbg !4811

if.then158:                                       ; preds = %if.then155
  %117 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4808
  %ps2dev159 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %117, i32 0, i32 2, !dbg !4808
  %118 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr144, align 8, !dbg !4808
  %command160 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %118, i32 0, i32 1, !dbg !4808
  %119 = load i8, i8* %command160, align 8, !dbg !4808
  %120 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4808
  %mindrag161 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %120, i32 0, i32 7, !dbg !4808
  %121 = load i8, i8* %mindrag161, align 1, !dbg !4808
  %call162 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev159, i8 zeroext %119, i8 zeroext %121) #8, !dbg !4808
  br label %if.end169, !dbg !4808

if.else163:                                       ; preds = %if.then155
  %122 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4808
  %ps2dev164 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %122, i32 0, i32 2, !dbg !4808
  %123 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr144, align 8, !dbg !4808
  %command165 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %123, i32 0, i32 1, !dbg !4808
  %124 = load i8, i8* %command165, align 8, !dbg !4808
  %125 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr144, align 8, !dbg !4808
  %mask166 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %125, i32 0, i32 2, !dbg !4808
  %126 = load i8, i8* %mask166, align 1, !dbg !4808
  %127 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4808
  %mindrag167 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %127, i32 0, i32 7, !dbg !4808
  %128 = load i8, i8* %mindrag167, align 1, !dbg !4808
  %call168 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev164, i8 zeroext %124, i8 zeroext %126, i8 zeroext %128) #8, !dbg !4808
  br label %if.end169

if.end169:                                        ; preds = %if.else163, %if.then158
  br label %if.end170, !dbg !4811

if.end170:                                        ; preds = %if.end169, %land.lhs.true152, %lor.lhs.false146
  br label %do.end171, !dbg !4805

do.end171:                                        ; preds = %if.end170
  br label %do.body172, !dbg !4812

do.body172:                                       ; preds = %do.end171
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr173, metadata !4813, metadata !DIExpression()), !dbg !4815
  store %struct.trackpoint_attr_data* @trackpoint_attr_thresh, %struct.trackpoint_attr_data** %_attr173, align 8, !dbg !4815
  %129 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4816
  %tobool174 = trunc i8 %129 to i1, !dbg !4816
  br i1 %tobool174, label %lor.lhs.false175, label %land.lhs.true181, !dbg !4816

lor.lhs.false175:                                 ; preds = %do.body172
  %130 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4816
  %thresh = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %130, i32 0, i32 8, !dbg !4816
  %131 = load i8, i8* %thresh, align 1, !dbg !4816
  %conv176 = zext i8 %131 to i32, !dbg !4816
  %132 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr173, align 8, !dbg !4816
  %power_on_default177 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %132, i32 0, i32 4, !dbg !4816
  %133 = load i8, i8* %power_on_default177, align 1, !dbg !4816
  %conv178 = zext i8 %133 to i32, !dbg !4816
  %cmp179 = icmp ne i32 %conv176, %conv178, !dbg !4816
  br i1 %cmp179, label %land.lhs.true181, label %if.end199, !dbg !4816

land.lhs.true181:                                 ; preds = %lor.lhs.false175, %do.body172
  %134 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4816
  %call182 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %134, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_thresh, i32 0, i32 0, i32 0)) #8, !dbg !4816
  br i1 %call182, label %if.then184, label %if.end199, !dbg !4815

if.then184:                                       ; preds = %land.lhs.true181
  %135 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr173, align 8, !dbg !4818
  %mask185 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %135, i32 0, i32 2, !dbg !4818
  %136 = load i8, i8* %mask185, align 1, !dbg !4818
  %tobool186 = icmp ne i8 %136, 0, !dbg !4818
  br i1 %tobool186, label %if.else192, label %if.then187, !dbg !4821

if.then187:                                       ; preds = %if.then184
  %137 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4818
  %ps2dev188 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %137, i32 0, i32 2, !dbg !4818
  %138 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr173, align 8, !dbg !4818
  %command189 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %138, i32 0, i32 1, !dbg !4818
  %139 = load i8, i8* %command189, align 8, !dbg !4818
  %140 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4818
  %thresh190 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %140, i32 0, i32 8, !dbg !4818
  %141 = load i8, i8* %thresh190, align 1, !dbg !4818
  %call191 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev188, i8 zeroext %139, i8 zeroext %141) #8, !dbg !4818
  br label %if.end198, !dbg !4818

if.else192:                                       ; preds = %if.then184
  %142 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4818
  %ps2dev193 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %142, i32 0, i32 2, !dbg !4818
  %143 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr173, align 8, !dbg !4818
  %command194 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %143, i32 0, i32 1, !dbg !4818
  %144 = load i8, i8* %command194, align 8, !dbg !4818
  %145 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr173, align 8, !dbg !4818
  %mask195 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %145, i32 0, i32 2, !dbg !4818
  %146 = load i8, i8* %mask195, align 1, !dbg !4818
  %147 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4818
  %thresh196 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %147, i32 0, i32 8, !dbg !4818
  %148 = load i8, i8* %thresh196, align 1, !dbg !4818
  %call197 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev193, i8 zeroext %144, i8 zeroext %146, i8 zeroext %148) #8, !dbg !4818
  br label %if.end198

if.end198:                                        ; preds = %if.else192, %if.then187
  br label %if.end199, !dbg !4821

if.end199:                                        ; preds = %if.end198, %land.lhs.true181, %lor.lhs.false175
  br label %do.end200, !dbg !4815

do.end200:                                        ; preds = %if.end199
  br label %do.body201, !dbg !4822

do.body201:                                       ; preds = %do.end200
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr202, metadata !4823, metadata !DIExpression()), !dbg !4825
  store %struct.trackpoint_attr_data* @trackpoint_attr_upthresh, %struct.trackpoint_attr_data** %_attr202, align 8, !dbg !4825
  %149 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4826
  %tobool203 = trunc i8 %149 to i1, !dbg !4826
  br i1 %tobool203, label %lor.lhs.false204, label %land.lhs.true210, !dbg !4826

lor.lhs.false204:                                 ; preds = %do.body201
  %150 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4826
  %upthresh = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %150, i32 0, i32 9, !dbg !4826
  %151 = load i8, i8* %upthresh, align 1, !dbg !4826
  %conv205 = zext i8 %151 to i32, !dbg !4826
  %152 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr202, align 8, !dbg !4826
  %power_on_default206 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %152, i32 0, i32 4, !dbg !4826
  %153 = load i8, i8* %power_on_default206, align 1, !dbg !4826
  %conv207 = zext i8 %153 to i32, !dbg !4826
  %cmp208 = icmp ne i32 %conv205, %conv207, !dbg !4826
  br i1 %cmp208, label %land.lhs.true210, label %if.end228, !dbg !4826

land.lhs.true210:                                 ; preds = %lor.lhs.false204, %do.body201
  %154 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4826
  %call211 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %154, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_upthresh, i32 0, i32 0, i32 0)) #8, !dbg !4826
  br i1 %call211, label %if.then213, label %if.end228, !dbg !4825

if.then213:                                       ; preds = %land.lhs.true210
  %155 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr202, align 8, !dbg !4828
  %mask214 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %155, i32 0, i32 2, !dbg !4828
  %156 = load i8, i8* %mask214, align 1, !dbg !4828
  %tobool215 = icmp ne i8 %156, 0, !dbg !4828
  br i1 %tobool215, label %if.else221, label %if.then216, !dbg !4831

if.then216:                                       ; preds = %if.then213
  %157 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4828
  %ps2dev217 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %157, i32 0, i32 2, !dbg !4828
  %158 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr202, align 8, !dbg !4828
  %command218 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %158, i32 0, i32 1, !dbg !4828
  %159 = load i8, i8* %command218, align 8, !dbg !4828
  %160 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4828
  %upthresh219 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %160, i32 0, i32 9, !dbg !4828
  %161 = load i8, i8* %upthresh219, align 1, !dbg !4828
  %call220 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev217, i8 zeroext %159, i8 zeroext %161) #8, !dbg !4828
  br label %if.end227, !dbg !4828

if.else221:                                       ; preds = %if.then213
  %162 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4828
  %ps2dev222 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %162, i32 0, i32 2, !dbg !4828
  %163 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr202, align 8, !dbg !4828
  %command223 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %163, i32 0, i32 1, !dbg !4828
  %164 = load i8, i8* %command223, align 8, !dbg !4828
  %165 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr202, align 8, !dbg !4828
  %mask224 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %165, i32 0, i32 2, !dbg !4828
  %166 = load i8, i8* %mask224, align 1, !dbg !4828
  %167 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4828
  %upthresh225 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %167, i32 0, i32 9, !dbg !4828
  %168 = load i8, i8* %upthresh225, align 1, !dbg !4828
  %call226 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev222, i8 zeroext %164, i8 zeroext %166, i8 zeroext %168) #8, !dbg !4828
  br label %if.end227

if.end227:                                        ; preds = %if.else221, %if.then216
  br label %if.end228, !dbg !4831

if.end228:                                        ; preds = %if.end227, %land.lhs.true210, %lor.lhs.false204
  br label %do.end229, !dbg !4825

do.end229:                                        ; preds = %if.end228
  br label %do.body230, !dbg !4832

do.body230:                                       ; preds = %do.end229
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr231, metadata !4833, metadata !DIExpression()), !dbg !4835
  store %struct.trackpoint_attr_data* @trackpoint_attr_ztime, %struct.trackpoint_attr_data** %_attr231, align 8, !dbg !4835
  %169 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4836
  %tobool232 = trunc i8 %169 to i1, !dbg !4836
  br i1 %tobool232, label %lor.lhs.false233, label %land.lhs.true239, !dbg !4836

lor.lhs.false233:                                 ; preds = %do.body230
  %170 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4836
  %ztime = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %170, i32 0, i32 10, !dbg !4836
  %171 = load i8, i8* %ztime, align 1, !dbg !4836
  %conv234 = zext i8 %171 to i32, !dbg !4836
  %172 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr231, align 8, !dbg !4836
  %power_on_default235 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %172, i32 0, i32 4, !dbg !4836
  %173 = load i8, i8* %power_on_default235, align 1, !dbg !4836
  %conv236 = zext i8 %173 to i32, !dbg !4836
  %cmp237 = icmp ne i32 %conv234, %conv236, !dbg !4836
  br i1 %cmp237, label %land.lhs.true239, label %if.end257, !dbg !4836

land.lhs.true239:                                 ; preds = %lor.lhs.false233, %do.body230
  %174 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4836
  %call240 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %174, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_ztime, i32 0, i32 0, i32 0)) #8, !dbg !4836
  br i1 %call240, label %if.then242, label %if.end257, !dbg !4835

if.then242:                                       ; preds = %land.lhs.true239
  %175 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr231, align 8, !dbg !4838
  %mask243 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %175, i32 0, i32 2, !dbg !4838
  %176 = load i8, i8* %mask243, align 1, !dbg !4838
  %tobool244 = icmp ne i8 %176, 0, !dbg !4838
  br i1 %tobool244, label %if.else250, label %if.then245, !dbg !4841

if.then245:                                       ; preds = %if.then242
  %177 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4838
  %ps2dev246 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %177, i32 0, i32 2, !dbg !4838
  %178 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr231, align 8, !dbg !4838
  %command247 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %178, i32 0, i32 1, !dbg !4838
  %179 = load i8, i8* %command247, align 8, !dbg !4838
  %180 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4838
  %ztime248 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %180, i32 0, i32 10, !dbg !4838
  %181 = load i8, i8* %ztime248, align 1, !dbg !4838
  %call249 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev246, i8 zeroext %179, i8 zeroext %181) #8, !dbg !4838
  br label %if.end256, !dbg !4838

if.else250:                                       ; preds = %if.then242
  %182 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4838
  %ps2dev251 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %182, i32 0, i32 2, !dbg !4838
  %183 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr231, align 8, !dbg !4838
  %command252 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %183, i32 0, i32 1, !dbg !4838
  %184 = load i8, i8* %command252, align 8, !dbg !4838
  %185 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr231, align 8, !dbg !4838
  %mask253 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %185, i32 0, i32 2, !dbg !4838
  %186 = load i8, i8* %mask253, align 1, !dbg !4838
  %187 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4838
  %ztime254 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %187, i32 0, i32 10, !dbg !4838
  %188 = load i8, i8* %ztime254, align 1, !dbg !4838
  %call255 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev251, i8 zeroext %184, i8 zeroext %186, i8 zeroext %188) #8, !dbg !4838
  br label %if.end256

if.end256:                                        ; preds = %if.else250, %if.then245
  br label %if.end257, !dbg !4841

if.end257:                                        ; preds = %if.end256, %land.lhs.true239, %lor.lhs.false233
  br label %do.end258, !dbg !4835

do.end258:                                        ; preds = %if.end257
  br label %do.body259, !dbg !4842

do.body259:                                       ; preds = %do.end258
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr260, metadata !4843, metadata !DIExpression()), !dbg !4845
  store %struct.trackpoint_attr_data* @trackpoint_attr_jenks, %struct.trackpoint_attr_data** %_attr260, align 8, !dbg !4845
  %189 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4846
  %tobool261 = trunc i8 %189 to i1, !dbg !4846
  br i1 %tobool261, label %lor.lhs.false262, label %land.lhs.true268, !dbg !4846

lor.lhs.false262:                                 ; preds = %do.body259
  %190 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4846
  %jenks = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %190, i32 0, i32 11, !dbg !4846
  %191 = load i8, i8* %jenks, align 1, !dbg !4846
  %conv263 = zext i8 %191 to i32, !dbg !4846
  %192 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr260, align 8, !dbg !4846
  %power_on_default264 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %192, i32 0, i32 4, !dbg !4846
  %193 = load i8, i8* %power_on_default264, align 1, !dbg !4846
  %conv265 = zext i8 %193 to i32, !dbg !4846
  %cmp266 = icmp ne i32 %conv263, %conv265, !dbg !4846
  br i1 %cmp266, label %land.lhs.true268, label %if.end286, !dbg !4846

land.lhs.true268:                                 ; preds = %lor.lhs.false262, %do.body259
  %194 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4846
  %call269 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %194, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_jenks, i32 0, i32 0, i32 0)) #8, !dbg !4846
  br i1 %call269, label %if.then271, label %if.end286, !dbg !4845

if.then271:                                       ; preds = %land.lhs.true268
  %195 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr260, align 8, !dbg !4848
  %mask272 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %195, i32 0, i32 2, !dbg !4848
  %196 = load i8, i8* %mask272, align 1, !dbg !4848
  %tobool273 = icmp ne i8 %196, 0, !dbg !4848
  br i1 %tobool273, label %if.else279, label %if.then274, !dbg !4851

if.then274:                                       ; preds = %if.then271
  %197 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4848
  %ps2dev275 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %197, i32 0, i32 2, !dbg !4848
  %198 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr260, align 8, !dbg !4848
  %command276 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %198, i32 0, i32 1, !dbg !4848
  %199 = load i8, i8* %command276, align 8, !dbg !4848
  %200 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4848
  %jenks277 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %200, i32 0, i32 11, !dbg !4848
  %201 = load i8, i8* %jenks277, align 1, !dbg !4848
  %call278 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev275, i8 zeroext %199, i8 zeroext %201) #8, !dbg !4848
  br label %if.end285, !dbg !4848

if.else279:                                       ; preds = %if.then271
  %202 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4848
  %ps2dev280 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %202, i32 0, i32 2, !dbg !4848
  %203 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr260, align 8, !dbg !4848
  %command281 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %203, i32 0, i32 1, !dbg !4848
  %204 = load i8, i8* %command281, align 8, !dbg !4848
  %205 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr260, align 8, !dbg !4848
  %mask282 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %205, i32 0, i32 2, !dbg !4848
  %206 = load i8, i8* %mask282, align 1, !dbg !4848
  %207 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4848
  %jenks283 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %207, i32 0, i32 11, !dbg !4848
  %208 = load i8, i8* %jenks283, align 1, !dbg !4848
  %call284 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev280, i8 zeroext %204, i8 zeroext %206, i8 zeroext %208) #8, !dbg !4848
  br label %if.end285

if.end285:                                        ; preds = %if.else279, %if.then274
  br label %if.end286, !dbg !4851

if.end286:                                        ; preds = %if.end285, %land.lhs.true268, %lor.lhs.false262
  br label %do.end287, !dbg !4845

do.end287:                                        ; preds = %if.end286
  br label %do.body288, !dbg !4852

do.body288:                                       ; preds = %do.end287
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr289, metadata !4853, metadata !DIExpression()), !dbg !4855
  store %struct.trackpoint_attr_data* @trackpoint_attr_drift_time, %struct.trackpoint_attr_data** %_attr289, align 8, !dbg !4855
  %209 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4856
  %tobool290 = trunc i8 %209 to i1, !dbg !4856
  br i1 %tobool290, label %lor.lhs.false291, label %land.lhs.true297, !dbg !4856

lor.lhs.false291:                                 ; preds = %do.body288
  %210 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4856
  %drift_time = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %210, i32 0, i32 12, !dbg !4856
  %211 = load i8, i8* %drift_time, align 1, !dbg !4856
  %conv292 = zext i8 %211 to i32, !dbg !4856
  %212 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr289, align 8, !dbg !4856
  %power_on_default293 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %212, i32 0, i32 4, !dbg !4856
  %213 = load i8, i8* %power_on_default293, align 1, !dbg !4856
  %conv294 = zext i8 %213 to i32, !dbg !4856
  %cmp295 = icmp ne i32 %conv292, %conv294, !dbg !4856
  br i1 %cmp295, label %land.lhs.true297, label %if.end315, !dbg !4856

land.lhs.true297:                                 ; preds = %lor.lhs.false291, %do.body288
  %214 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4856
  %call298 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %214, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_drift_time, i32 0, i32 0, i32 0)) #8, !dbg !4856
  br i1 %call298, label %if.then300, label %if.end315, !dbg !4855

if.then300:                                       ; preds = %land.lhs.true297
  %215 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr289, align 8, !dbg !4858
  %mask301 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %215, i32 0, i32 2, !dbg !4858
  %216 = load i8, i8* %mask301, align 1, !dbg !4858
  %tobool302 = icmp ne i8 %216, 0, !dbg !4858
  br i1 %tobool302, label %if.else308, label %if.then303, !dbg !4861

if.then303:                                       ; preds = %if.then300
  %217 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4858
  %ps2dev304 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %217, i32 0, i32 2, !dbg !4858
  %218 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr289, align 8, !dbg !4858
  %command305 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %218, i32 0, i32 1, !dbg !4858
  %219 = load i8, i8* %command305, align 8, !dbg !4858
  %220 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4858
  %drift_time306 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %220, i32 0, i32 12, !dbg !4858
  %221 = load i8, i8* %drift_time306, align 1, !dbg !4858
  %call307 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev304, i8 zeroext %219, i8 zeroext %221) #8, !dbg !4858
  br label %if.end314, !dbg !4858

if.else308:                                       ; preds = %if.then300
  %222 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4858
  %ps2dev309 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %222, i32 0, i32 2, !dbg !4858
  %223 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr289, align 8, !dbg !4858
  %command310 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %223, i32 0, i32 1, !dbg !4858
  %224 = load i8, i8* %command310, align 8, !dbg !4858
  %225 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr289, align 8, !dbg !4858
  %mask311 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %225, i32 0, i32 2, !dbg !4858
  %226 = load i8, i8* %mask311, align 1, !dbg !4858
  %227 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4858
  %drift_time312 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %227, i32 0, i32 12, !dbg !4858
  %228 = load i8, i8* %drift_time312, align 1, !dbg !4858
  %call313 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev309, i8 zeroext %224, i8 zeroext %226, i8 zeroext %228) #8, !dbg !4858
  br label %if.end314

if.end314:                                        ; preds = %if.else308, %if.then303
  br label %if.end315, !dbg !4861

if.end315:                                        ; preds = %if.end314, %land.lhs.true297, %lor.lhs.false291
  br label %do.end316, !dbg !4855

do.end316:                                        ; preds = %if.end315
  br label %do.body317, !dbg !4862

do.body317:                                       ; preds = %do.end316
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr318, metadata !4863, metadata !DIExpression()), !dbg !4865
  store %struct.trackpoint_attr_data* @trackpoint_attr_press_to_select, %struct.trackpoint_attr_data** %_attr318, align 8, !dbg !4865
  %229 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4866
  %tobool319 = trunc i8 %229 to i1, !dbg !4866
  br i1 %tobool319, label %lor.lhs.false320, label %land.lhs.true327, !dbg !4866

lor.lhs.false320:                                 ; preds = %do.body317
  %230 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4866
  %press_to_select = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %230, i32 0, i32 13, !dbg !4866
  %231 = load i8, i8* %press_to_select, align 1, !dbg !4866
  %tobool321 = trunc i8 %231 to i1, !dbg !4866
  %conv322 = zext i1 %tobool321 to i32, !dbg !4866
  %232 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr318, align 8, !dbg !4866
  %power_on_default323 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %232, i32 0, i32 4, !dbg !4866
  %233 = load i8, i8* %power_on_default323, align 1, !dbg !4866
  %conv324 = zext i8 %233 to i32, !dbg !4866
  %cmp325 = icmp ne i32 %conv322, %conv324, !dbg !4866
  br i1 %cmp325, label %land.lhs.true327, label %if.end349, !dbg !4866

land.lhs.true327:                                 ; preds = %lor.lhs.false320, %do.body317
  %234 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4866
  %call328 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %234, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_press_to_select, i32 0, i32 0, i32 0)) #8, !dbg !4866
  br i1 %call328, label %if.then330, label %if.end349, !dbg !4865

if.then330:                                       ; preds = %land.lhs.true327
  %235 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr318, align 8, !dbg !4868
  %mask331 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %235, i32 0, i32 2, !dbg !4868
  %236 = load i8, i8* %mask331, align 1, !dbg !4868
  %tobool332 = icmp ne i8 %236, 0, !dbg !4868
  br i1 %tobool332, label %if.else340, label %if.then333, !dbg !4871

if.then333:                                       ; preds = %if.then330
  %237 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4868
  %ps2dev334 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %237, i32 0, i32 2, !dbg !4868
  %238 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr318, align 8, !dbg !4868
  %command335 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %238, i32 0, i32 1, !dbg !4868
  %239 = load i8, i8* %command335, align 8, !dbg !4868
  %240 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4868
  %press_to_select336 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %240, i32 0, i32 13, !dbg !4868
  %241 = load i8, i8* %press_to_select336, align 1, !dbg !4868
  %tobool337 = trunc i8 %241 to i1, !dbg !4868
  %conv338 = zext i1 %tobool337 to i8, !dbg !4868
  %call339 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev334, i8 zeroext %239, i8 zeroext %conv338) #8, !dbg !4868
  br label %if.end348, !dbg !4868

if.else340:                                       ; preds = %if.then330
  %242 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4868
  %ps2dev341 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %242, i32 0, i32 2, !dbg !4868
  %243 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr318, align 8, !dbg !4868
  %command342 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %243, i32 0, i32 1, !dbg !4868
  %244 = load i8, i8* %command342, align 8, !dbg !4868
  %245 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr318, align 8, !dbg !4868
  %mask343 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %245, i32 0, i32 2, !dbg !4868
  %246 = load i8, i8* %mask343, align 1, !dbg !4868
  %247 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4868
  %press_to_select344 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %247, i32 0, i32 13, !dbg !4868
  %248 = load i8, i8* %press_to_select344, align 1, !dbg !4868
  %tobool345 = trunc i8 %248 to i1, !dbg !4868
  %conv346 = zext i1 %tobool345 to i8, !dbg !4868
  %call347 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev341, i8 zeroext %244, i8 zeroext %246, i8 zeroext %conv346) #8, !dbg !4868
  br label %if.end348

if.end348:                                        ; preds = %if.else340, %if.then333
  br label %if.end349, !dbg !4871

if.end349:                                        ; preds = %if.end348, %land.lhs.true327, %lor.lhs.false320
  br label %do.end350, !dbg !4865

do.end350:                                        ; preds = %if.end349
  br label %do.body351, !dbg !4872

do.body351:                                       ; preds = %do.end350
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr352, metadata !4873, metadata !DIExpression()), !dbg !4875
  store %struct.trackpoint_attr_data* @trackpoint_attr_skipback, %struct.trackpoint_attr_data** %_attr352, align 8, !dbg !4875
  %249 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4876
  %tobool353 = trunc i8 %249 to i1, !dbg !4876
  br i1 %tobool353, label %lor.lhs.false354, label %land.lhs.true361, !dbg !4876

lor.lhs.false354:                                 ; preds = %do.body351
  %250 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4876
  %skipback = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %250, i32 0, i32 14, !dbg !4876
  %251 = load i8, i8* %skipback, align 1, !dbg !4876
  %tobool355 = trunc i8 %251 to i1, !dbg !4876
  %conv356 = zext i1 %tobool355 to i32, !dbg !4876
  %252 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr352, align 8, !dbg !4876
  %power_on_default357 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %252, i32 0, i32 4, !dbg !4876
  %253 = load i8, i8* %power_on_default357, align 1, !dbg !4876
  %conv358 = zext i8 %253 to i32, !dbg !4876
  %cmp359 = icmp ne i32 %conv356, %conv358, !dbg !4876
  br i1 %cmp359, label %land.lhs.true361, label %if.end383, !dbg !4876

land.lhs.true361:                                 ; preds = %lor.lhs.false354, %do.body351
  %254 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4876
  %call362 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %254, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_skipback, i32 0, i32 0, i32 0)) #8, !dbg !4876
  br i1 %call362, label %if.then364, label %if.end383, !dbg !4875

if.then364:                                       ; preds = %land.lhs.true361
  %255 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr352, align 8, !dbg !4878
  %mask365 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %255, i32 0, i32 2, !dbg !4878
  %256 = load i8, i8* %mask365, align 1, !dbg !4878
  %tobool366 = icmp ne i8 %256, 0, !dbg !4878
  br i1 %tobool366, label %if.else374, label %if.then367, !dbg !4881

if.then367:                                       ; preds = %if.then364
  %257 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4878
  %ps2dev368 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %257, i32 0, i32 2, !dbg !4878
  %258 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr352, align 8, !dbg !4878
  %command369 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %258, i32 0, i32 1, !dbg !4878
  %259 = load i8, i8* %command369, align 8, !dbg !4878
  %260 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4878
  %skipback370 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %260, i32 0, i32 14, !dbg !4878
  %261 = load i8, i8* %skipback370, align 1, !dbg !4878
  %tobool371 = trunc i8 %261 to i1, !dbg !4878
  %conv372 = zext i1 %tobool371 to i8, !dbg !4878
  %call373 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev368, i8 zeroext %259, i8 zeroext %conv372) #8, !dbg !4878
  br label %if.end382, !dbg !4878

if.else374:                                       ; preds = %if.then364
  %262 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4878
  %ps2dev375 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %262, i32 0, i32 2, !dbg !4878
  %263 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr352, align 8, !dbg !4878
  %command376 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %263, i32 0, i32 1, !dbg !4878
  %264 = load i8, i8* %command376, align 8, !dbg !4878
  %265 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr352, align 8, !dbg !4878
  %mask377 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %265, i32 0, i32 2, !dbg !4878
  %266 = load i8, i8* %mask377, align 1, !dbg !4878
  %267 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4878
  %skipback378 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %267, i32 0, i32 14, !dbg !4878
  %268 = load i8, i8* %skipback378, align 1, !dbg !4878
  %tobool379 = trunc i8 %268 to i1, !dbg !4878
  %conv380 = zext i1 %tobool379 to i8, !dbg !4878
  %call381 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev375, i8 zeroext %264, i8 zeroext %266, i8 zeroext %conv380) #8, !dbg !4878
  br label %if.end382

if.end382:                                        ; preds = %if.else374, %if.then367
  br label %if.end383, !dbg !4881

if.end383:                                        ; preds = %if.end382, %land.lhs.true361, %lor.lhs.false354
  br label %do.end384, !dbg !4875

do.end384:                                        ; preds = %if.end383
  br label %do.body385, !dbg !4882

do.body385:                                       ; preds = %do.end384
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %_attr386, metadata !4883, metadata !DIExpression()), !dbg !4885
  store %struct.trackpoint_attr_data* @trackpoint_attr_ext_dev, %struct.trackpoint_attr_data** %_attr386, align 8, !dbg !4885
  %269 = load i8, i8* %in_power_on_state.addr, align 1, !dbg !4886
  %tobool387 = trunc i8 %269 to i1, !dbg !4886
  br i1 %tobool387, label %lor.lhs.false388, label %land.lhs.true395, !dbg !4886

lor.lhs.false388:                                 ; preds = %do.body385
  %270 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4886
  %ext_dev = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %270, i32 0, i32 15, !dbg !4886
  %271 = load i8, i8* %ext_dev, align 1, !dbg !4886
  %tobool389 = trunc i8 %271 to i1, !dbg !4886
  %conv390 = zext i1 %tobool389 to i32, !dbg !4886
  %272 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr386, align 8, !dbg !4886
  %power_on_default391 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %272, i32 0, i32 4, !dbg !4886
  %273 = load i8, i8* %power_on_default391, align 1, !dbg !4886
  %conv392 = zext i8 %273 to i32, !dbg !4886
  %cmp393 = icmp ne i32 %conv390, %conv392, !dbg !4886
  br i1 %cmp393, label %land.lhs.true395, label %if.end417, !dbg !4886

land.lhs.true395:                                 ; preds = %lor.lhs.false388, %do.body385
  %274 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4886
  %call396 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %274, %struct.attribute* getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_ext_dev, i32 0, i32 0, i32 0)) #8, !dbg !4886
  br i1 %call396, label %if.then398, label %if.end417, !dbg !4885

if.then398:                                       ; preds = %land.lhs.true395
  %275 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr386, align 8, !dbg !4888
  %mask399 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %275, i32 0, i32 2, !dbg !4888
  %276 = load i8, i8* %mask399, align 1, !dbg !4888
  %tobool400 = icmp ne i8 %276, 0, !dbg !4888
  br i1 %tobool400, label %if.else408, label %if.then401, !dbg !4891

if.then401:                                       ; preds = %if.then398
  %277 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4888
  %ps2dev402 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %277, i32 0, i32 2, !dbg !4888
  %278 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr386, align 8, !dbg !4888
  %command403 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %278, i32 0, i32 1, !dbg !4888
  %279 = load i8, i8* %command403, align 8, !dbg !4888
  %280 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4888
  %ext_dev404 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %280, i32 0, i32 15, !dbg !4888
  %281 = load i8, i8* %ext_dev404, align 1, !dbg !4888
  %tobool405 = trunc i8 %281 to i1, !dbg !4888
  %conv406 = zext i1 %tobool405 to i8, !dbg !4888
  %call407 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev402, i8 zeroext %279, i8 zeroext %conv406) #8, !dbg !4888
  br label %if.end416, !dbg !4888

if.else408:                                       ; preds = %if.then398
  %282 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4888
  %ps2dev409 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %282, i32 0, i32 2, !dbg !4888
  %283 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr386, align 8, !dbg !4888
  %command410 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %283, i32 0, i32 1, !dbg !4888
  %284 = load i8, i8* %command410, align 8, !dbg !4888
  %285 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %_attr386, align 8, !dbg !4888
  %mask411 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %285, i32 0, i32 2, !dbg !4888
  %286 = load i8, i8* %mask411, align 1, !dbg !4888
  %287 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !4888
  %ext_dev412 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %287, i32 0, i32 15, !dbg !4888
  %288 = load i8, i8* %ext_dev412, align 1, !dbg !4888
  %tobool413 = trunc i8 %288 to i1, !dbg !4888
  %conv414 = zext i1 %tobool413 to i8, !dbg !4888
  %call415 = call i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev409, i8 zeroext %284, i8 zeroext %286, i8 zeroext %conv414) #8, !dbg !4888
  br label %if.end416

if.end416:                                        ; preds = %if.else408, %if.then401
  br label %if.end417, !dbg !4891

if.end417:                                        ; preds = %if.end416, %land.lhs.true395, %lor.lhs.false388
  br label %do.end418, !dbg !4885

do.end418:                                        ; preds = %if.end417
  ret i32 0, !dbg !4892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_add_group(%struct.device* %dev, %struct.attribute_group* %grp) #0 !dbg !4893 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %grp.addr = alloca %struct.attribute_group*, align 8
  %groups = alloca [2 x %struct.attribute_group*], align 16
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store %struct.attribute_group* %grp, %struct.attribute_group** %grp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group** %grp.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.declare(metadata [2 x %struct.attribute_group*]* %groups, metadata !4900, metadata !DIExpression()), !dbg !4902
  %arrayinit.begin = getelementptr inbounds [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %groups, i64 0, i64 0, !dbg !4903
  %0 = load %struct.attribute_group*, %struct.attribute_group** %grp.addr, align 8, !dbg !4904
  store %struct.attribute_group* %0, %struct.attribute_group** %arrayinit.begin, align 8, !dbg !4903
  %arrayinit.element = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %arrayinit.begin, i64 1, !dbg !4903
  store %struct.attribute_group* null, %struct.attribute_group** %arrayinit.element, align 8, !dbg !4903
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4905
  %arraydecay = getelementptr inbounds [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %groups, i64 0, i64 0, !dbg !4906
  %call = call i32 @device_add_groups(%struct.device* %1, %struct.attribute_group** %arraydecay) #8, !dbg !4907
  ret i32 %call, !dbg !4908
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4909 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4913, metadata !DIExpression()), !dbg !4917
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4919, metadata !DIExpression()), !dbg !4920
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  %0 = load i64, i64* %size.addr, align 8, !dbg !4923
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4925
  br i1 %1, label %if.then, label %if.end447, !dbg !4926

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4927
  %tobool = icmp ne i64 %2, 0, !dbg !4927
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4930

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4932
  %cmp = icmp ult i64 %3, 4096, !dbg !4934
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4935

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4936
  br label %return, !dbg !4936

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub = sub i64 %4, 1, !dbg !4937
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4937
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4937

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub4 = sub i64 %6, 1, !dbg !4937
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4937
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4937

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub6 = sub i64 %8, 1, !dbg !4937
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4937
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4937

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4937

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub9 = sub i64 %9, 1, !dbg !4937
  %and = and i64 %sub9, -9223372036854775808, !dbg !4937
  %tobool10 = icmp ne i64 %and, 0, !dbg !4937
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4937

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4937

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub13 = sub i64 %10, 1, !dbg !4937
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4937
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4937
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4937

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4937

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub18 = sub i64 %11, 1, !dbg !4937
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4937
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4937
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4937

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4937

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub23 = sub i64 %12, 1, !dbg !4937
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4937
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4937
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4937

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4937

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub28 = sub i64 %13, 1, !dbg !4937
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4937
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4937
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4937

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4937

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub33 = sub i64 %14, 1, !dbg !4937
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4937
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4937
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4937

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4937

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub38 = sub i64 %15, 1, !dbg !4937
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4937
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4937
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4937

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4937

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub43 = sub i64 %16, 1, !dbg !4937
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4937
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4937
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4937

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4937

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub48 = sub i64 %17, 1, !dbg !4937
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4937
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4937
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4937

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4937

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub53 = sub i64 %18, 1, !dbg !4937
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4937
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4937
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4937

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4937

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub58 = sub i64 %19, 1, !dbg !4937
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4937
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4937
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4937

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4937

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub63 = sub i64 %20, 1, !dbg !4937
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4937
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4937
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4937

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4937

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub68 = sub i64 %21, 1, !dbg !4937
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4937
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4937
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4937

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4937

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub73 = sub i64 %22, 1, !dbg !4937
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4937
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4937
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4937

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4937

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub78 = sub i64 %23, 1, !dbg !4937
  %and79 = and i64 %sub78, 562949953421312, !dbg !4937
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4937
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4937

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4937

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub83 = sub i64 %24, 1, !dbg !4937
  %and84 = and i64 %sub83, 281474976710656, !dbg !4937
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4937
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4937

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4937

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub88 = sub i64 %25, 1, !dbg !4937
  %and89 = and i64 %sub88, 140737488355328, !dbg !4937
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4937
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4937

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4937

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub93 = sub i64 %26, 1, !dbg !4937
  %and94 = and i64 %sub93, 70368744177664, !dbg !4937
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4937
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4937

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4937

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub98 = sub i64 %27, 1, !dbg !4937
  %and99 = and i64 %sub98, 35184372088832, !dbg !4937
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4937
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4937

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4937

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub103 = sub i64 %28, 1, !dbg !4937
  %and104 = and i64 %sub103, 17592186044416, !dbg !4937
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4937
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4937

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4937

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub108 = sub i64 %29, 1, !dbg !4937
  %and109 = and i64 %sub108, 8796093022208, !dbg !4937
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4937
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4937

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4937

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub113 = sub i64 %30, 1, !dbg !4937
  %and114 = and i64 %sub113, 4398046511104, !dbg !4937
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4937
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4937

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4937

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub118 = sub i64 %31, 1, !dbg !4937
  %and119 = and i64 %sub118, 2199023255552, !dbg !4937
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4937
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4937

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4937

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub123 = sub i64 %32, 1, !dbg !4937
  %and124 = and i64 %sub123, 1099511627776, !dbg !4937
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4937
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4937

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4937

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub128 = sub i64 %33, 1, !dbg !4937
  %and129 = and i64 %sub128, 549755813888, !dbg !4937
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4937
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4937

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4937

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub133 = sub i64 %34, 1, !dbg !4937
  %and134 = and i64 %sub133, 274877906944, !dbg !4937
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4937
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4937

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4937

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub138 = sub i64 %35, 1, !dbg !4937
  %and139 = and i64 %sub138, 137438953472, !dbg !4937
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4937
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4937

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4937

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub143 = sub i64 %36, 1, !dbg !4937
  %and144 = and i64 %sub143, 68719476736, !dbg !4937
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4937
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4937

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4937

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub148 = sub i64 %37, 1, !dbg !4937
  %and149 = and i64 %sub148, 34359738368, !dbg !4937
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4937
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4937

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4937

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub153 = sub i64 %38, 1, !dbg !4937
  %and154 = and i64 %sub153, 17179869184, !dbg !4937
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4937
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4937

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4937

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub158 = sub i64 %39, 1, !dbg !4937
  %and159 = and i64 %sub158, 8589934592, !dbg !4937
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4937
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4937

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4937

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub163 = sub i64 %40, 1, !dbg !4937
  %and164 = and i64 %sub163, 4294967296, !dbg !4937
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4937
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4937

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4937

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub168 = sub i64 %41, 1, !dbg !4937
  %and169 = and i64 %sub168, 2147483648, !dbg !4937
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4937
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4937

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4937

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub173 = sub i64 %42, 1, !dbg !4937
  %and174 = and i64 %sub173, 1073741824, !dbg !4937
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4937
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4937

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4937

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub178 = sub i64 %43, 1, !dbg !4937
  %and179 = and i64 %sub178, 536870912, !dbg !4937
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4937
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4937

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4937

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub183 = sub i64 %44, 1, !dbg !4937
  %and184 = and i64 %sub183, 268435456, !dbg !4937
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4937
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4937

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4937

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub188 = sub i64 %45, 1, !dbg !4937
  %and189 = and i64 %sub188, 134217728, !dbg !4937
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4937
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4937

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4937

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub193 = sub i64 %46, 1, !dbg !4937
  %and194 = and i64 %sub193, 67108864, !dbg !4937
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4937
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4937

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4937

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub198 = sub i64 %47, 1, !dbg !4937
  %and199 = and i64 %sub198, 33554432, !dbg !4937
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4937
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4937

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4937

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub203 = sub i64 %48, 1, !dbg !4937
  %and204 = and i64 %sub203, 16777216, !dbg !4937
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4937
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4937

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4937

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub208 = sub i64 %49, 1, !dbg !4937
  %and209 = and i64 %sub208, 8388608, !dbg !4937
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4937
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4937

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4937

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub213 = sub i64 %50, 1, !dbg !4937
  %and214 = and i64 %sub213, 4194304, !dbg !4937
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4937
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4937

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4937

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub218 = sub i64 %51, 1, !dbg !4937
  %and219 = and i64 %sub218, 2097152, !dbg !4937
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4937
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4937

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4937

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub223 = sub i64 %52, 1, !dbg !4937
  %and224 = and i64 %sub223, 1048576, !dbg !4937
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4937
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4937

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4937

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub228 = sub i64 %53, 1, !dbg !4937
  %and229 = and i64 %sub228, 524288, !dbg !4937
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4937
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4937

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4937

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub233 = sub i64 %54, 1, !dbg !4937
  %and234 = and i64 %sub233, 262144, !dbg !4937
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4937
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4937

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4937

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub238 = sub i64 %55, 1, !dbg !4937
  %and239 = and i64 %sub238, 131072, !dbg !4937
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4937
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4937

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4937

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub243 = sub i64 %56, 1, !dbg !4937
  %and244 = and i64 %sub243, 65536, !dbg !4937
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4937
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4937

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4937

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub248 = sub i64 %57, 1, !dbg !4937
  %and249 = and i64 %sub248, 32768, !dbg !4937
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4937
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4937

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4937

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub253 = sub i64 %58, 1, !dbg !4937
  %and254 = and i64 %sub253, 16384, !dbg !4937
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4937
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4937

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4937

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub258 = sub i64 %59, 1, !dbg !4937
  %and259 = and i64 %sub258, 8192, !dbg !4937
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4937
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4937

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4937

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub263 = sub i64 %60, 1, !dbg !4937
  %and264 = and i64 %sub263, 4096, !dbg !4937
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4937
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4937

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4937

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub268 = sub i64 %61, 1, !dbg !4937
  %and269 = and i64 %sub268, 2048, !dbg !4937
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4937
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4937

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4937

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub273 = sub i64 %62, 1, !dbg !4937
  %and274 = and i64 %sub273, 1024, !dbg !4937
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4937
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4937

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4937

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub278 = sub i64 %63, 1, !dbg !4937
  %and279 = and i64 %sub278, 512, !dbg !4937
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4937
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4937

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4937

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub283 = sub i64 %64, 1, !dbg !4937
  %and284 = and i64 %sub283, 256, !dbg !4937
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4937
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4937

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4937

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub288 = sub i64 %65, 1, !dbg !4937
  %and289 = and i64 %sub288, 128, !dbg !4937
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4937
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4937

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4937

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub293 = sub i64 %66, 1, !dbg !4937
  %and294 = and i64 %sub293, 64, !dbg !4937
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4937
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4937

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4937

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub298 = sub i64 %67, 1, !dbg !4937
  %and299 = and i64 %sub298, 32, !dbg !4937
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4937
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4937

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4937

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub303 = sub i64 %68, 1, !dbg !4937
  %and304 = and i64 %sub303, 16, !dbg !4937
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4937
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4937

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4937

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub308 = sub i64 %69, 1, !dbg !4937
  %and309 = and i64 %sub308, 8, !dbg !4937
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4937
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4937

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4937

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub313 = sub i64 %70, 1, !dbg !4937
  %and314 = and i64 %sub313, 4, !dbg !4937
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4937
  %71 = zext i1 %tobool315 to i64, !dbg !4937
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4937
  br label %cond.end, !dbg !4937

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4937
  br label %cond.end317, !dbg !4937

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4937
  br label %cond.end319, !dbg !4937

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4937
  br label %cond.end321, !dbg !4937

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4937
  br label %cond.end323, !dbg !4937

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4937
  br label %cond.end325, !dbg !4937

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4937
  br label %cond.end327, !dbg !4937

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4937
  br label %cond.end329, !dbg !4937

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4937
  br label %cond.end331, !dbg !4937

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4937
  br label %cond.end333, !dbg !4937

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4937
  br label %cond.end335, !dbg !4937

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4937
  br label %cond.end337, !dbg !4937

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4937
  br label %cond.end339, !dbg !4937

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4937
  br label %cond.end341, !dbg !4937

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4937
  br label %cond.end343, !dbg !4937

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4937
  br label %cond.end345, !dbg !4937

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4937
  br label %cond.end347, !dbg !4937

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4937
  br label %cond.end349, !dbg !4937

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4937
  br label %cond.end351, !dbg !4937

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4937
  br label %cond.end353, !dbg !4937

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4937
  br label %cond.end355, !dbg !4937

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4937
  br label %cond.end357, !dbg !4937

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4937
  br label %cond.end359, !dbg !4937

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4937
  br label %cond.end361, !dbg !4937

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4937
  br label %cond.end363, !dbg !4937

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4937
  br label %cond.end365, !dbg !4937

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4937
  br label %cond.end367, !dbg !4937

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4937
  br label %cond.end369, !dbg !4937

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4937
  br label %cond.end371, !dbg !4937

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4937
  br label %cond.end373, !dbg !4937

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4937
  br label %cond.end375, !dbg !4937

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4937
  br label %cond.end377, !dbg !4937

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4937
  br label %cond.end379, !dbg !4937

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4937
  br label %cond.end381, !dbg !4937

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4937
  br label %cond.end383, !dbg !4937

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4937
  br label %cond.end385, !dbg !4937

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4937
  br label %cond.end387, !dbg !4937

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4937
  br label %cond.end389, !dbg !4937

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4937
  br label %cond.end391, !dbg !4937

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4937
  br label %cond.end393, !dbg !4937

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4937
  br label %cond.end395, !dbg !4937

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4937
  br label %cond.end397, !dbg !4937

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4937
  br label %cond.end399, !dbg !4937

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4937
  br label %cond.end401, !dbg !4937

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4937
  br label %cond.end403, !dbg !4937

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4937
  br label %cond.end405, !dbg !4937

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4937
  br label %cond.end407, !dbg !4937

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4937
  br label %cond.end409, !dbg !4937

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4937
  br label %cond.end411, !dbg !4937

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4937
  br label %cond.end413, !dbg !4937

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4937
  br label %cond.end415, !dbg !4937

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4937
  br label %cond.end417, !dbg !4937

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4937
  br label %cond.end419, !dbg !4937

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4937
  br label %cond.end421, !dbg !4937

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4937
  br label %cond.end423, !dbg !4937

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4937
  br label %cond.end425, !dbg !4937

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4937
  br label %cond.end427, !dbg !4937

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4937
  br label %cond.end429, !dbg !4937

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4937
  br label %cond.end431, !dbg !4937

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4937
  br label %cond.end433, !dbg !4937

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4937
  br label %cond.end435, !dbg !4937

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4937
  br label %cond.end437, !dbg !4937

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4937
  br label %cond.end440, !dbg !4937

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4937

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4937
  br label %cond.end444, !dbg !4937

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4937
  %sub443 = sub i64 %72, 1, !dbg !4937
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4937
  br label %cond.end444, !dbg !4937

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4937
  %sub446 = sub i32 %cond445, 12, !dbg !4938
  %add = add i32 %sub446, 1, !dbg !4939
  store i32 %add, i32* %retval, align 4, !dbg !4940
  br label %return, !dbg !4940

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4941
  %dec = add i64 %73, -1, !dbg !4941
  store i64 %dec, i64* %size.addr, align 8, !dbg !4941
  %74 = load i64, i64* %size.addr, align 8, !dbg !4942
  %shr = lshr i64 %74, 12, !dbg !4942
  store i64 %shr, i64* %size.addr, align 8, !dbg !4942
  %75 = load i64, i64* %size.addr, align 8, !dbg !4943
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4920
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4944
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4945
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4944, !srcloc !4946
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4944
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4947
  %add.i = add i32 %79, 1, !dbg !4948
  store i32 %add.i, i32* %retval, align 4, !dbg !4949
  br label %return, !dbg !4949

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4950
  ret i32 %80, !dbg !4950
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4951 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4913, metadata !DIExpression()), !dbg !4955
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4919, metadata !DIExpression()), !dbg !4957
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  %0 = load i64, i64* %n.addr, align 8, !dbg !4960
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4957
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4961
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4962
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4961, !srcloc !4946
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4961
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4963
  %add.i = add i32 %4, 1, !dbg !4964
  %sub = sub i32 %add.i, 1, !dbg !4965
  ret i32 %sub, !dbg !4966
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4967 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4978
  ret i8* %0, !dbg !4979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_remove_group(%struct.device* %dev, %struct.attribute_group* %grp) #0 !dbg !4980 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %grp.addr = alloca %struct.attribute_group*, align 8
  %groups = alloca [2 x %struct.attribute_group*], align 16
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  store %struct.attribute_group* %grp, %struct.attribute_group** %grp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group** %grp.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata [2 x %struct.attribute_group*]* %groups, metadata !4987, metadata !DIExpression()), !dbg !4988
  %arrayinit.begin = getelementptr inbounds [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %groups, i64 0, i64 0, !dbg !4989
  %0 = load %struct.attribute_group*, %struct.attribute_group** %grp.addr, align 8, !dbg !4990
  store %struct.attribute_group* %0, %struct.attribute_group** %arrayinit.begin, align 8, !dbg !4989
  %arrayinit.element = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %arrayinit.begin, i64 1, !dbg !4989
  store %struct.attribute_group* null, %struct.attribute_group** %arrayinit.element, align 8, !dbg !4989
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4991
  %arraydecay = getelementptr inbounds [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %groups, i64 0, i64 0, !dbg !4992
  call void @device_remove_groups(%struct.device* %1, %struct.attribute_group** %arraydecay) #8, !dbg !4993
  ret void, !dbg !4994
}

; Function Attrs: noredzone
declare dso_local void @device_remove_groups(%struct.device*, %struct.attribute_group**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4995 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  ret i1 true, !dbg !5003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5004 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5012, metadata !DIExpression()), !dbg !5013
  ret void, !dbg !5014
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_update_bit(%struct.ps2dev* %ps2dev, i8 zeroext %loc, i8 zeroext %mask, i8 zeroext %value) #0 !dbg !5015 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %loc.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %data = alloca i8, align 1
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  store i8 %loc, i8* %loc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %loc.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5026, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5028, metadata !DIExpression()), !dbg !5029
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !5030
  %1 = load i8, i8* %loc.addr, align 1, !dbg !5031
  %call = call i32 @trackpoint_read(%struct.ps2dev* %0, i8 zeroext %1, i8* %data) #8, !dbg !5032
  store i32 %call, i32* %retval1, align 4, !dbg !5033
  %2 = load i32, i32* %retval1, align 4, !dbg !5034
  %tobool = icmp ne i32 %2, 0, !dbg !5034
  br i1 %tobool, label %if.then, label %if.end, !dbg !5036

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4, !dbg !5037
  store i32 %3, i32* %retval, align 4, !dbg !5038
  br label %return, !dbg !5038

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %data, align 1, !dbg !5039
  %conv = zext i8 %4 to i32, !dbg !5039
  %5 = load i8, i8* %mask.addr, align 1, !dbg !5041
  %conv2 = zext i8 %5 to i32, !dbg !5041
  %and = and i32 %conv, %conv2, !dbg !5042
  %6 = load i8, i8* %mask.addr, align 1, !dbg !5043
  %conv3 = zext i8 %6 to i32, !dbg !5043
  %cmp = icmp eq i32 %and, %conv3, !dbg !5044
  %conv4 = zext i1 %cmp to i32, !dbg !5044
  %7 = load i8, i8* %value.addr, align 1, !dbg !5045
  %tobool5 = icmp ne i8 %7, 0, !dbg !5046
  %lnot = xor i1 %tobool5, true, !dbg !5046
  %lnot6 = xor i1 %lnot, true, !dbg !5047
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5047
  %cmp7 = icmp ne i32 %conv4, %lnot.ext, !dbg !5048
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5049

if.then9:                                         ; preds = %if.end
  %8 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !5050
  %9 = load i8, i8* %loc.addr, align 1, !dbg !5051
  %10 = load i8, i8* %mask.addr, align 1, !dbg !5052
  %call10 = call i32 @trackpoint_toggle_bit(%struct.ps2dev* %8, i8 zeroext %9, i8 zeroext %10) #8, !dbg !5053
  store i32 %call10, i32* %retval1, align 4, !dbg !5054
  br label %if.end11, !dbg !5055

if.end11:                                         ; preds = %if.then9, %if.end
  %11 = load i32, i32* %retval1, align 4, !dbg !5056
  store i32 %11, i32* %retval, align 4, !dbg !5057
  br label %return, !dbg !5057

return:                                           ; preds = %if.end11, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5058
  ret i32 %12, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %psmouse, %struct.attribute* %attr) #0 !dbg !5059 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %tp = alloca %struct.trackpoint_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !5066, metadata !DIExpression()), !dbg !5067
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5068
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5069
  %1 = load i8*, i8** %private, align 8, !dbg !5069
  %2 = bitcast i8* %1 to %struct.trackpoint_data*, !dbg !5068
  store %struct.trackpoint_data* %2, %struct.trackpoint_data** %tp, align 8, !dbg !5067
  %3 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !5070
  %variant_id = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %3, i32 0, i32 0, !dbg !5071
  %4 = load i8, i8* %variant_id, align 1, !dbg !5071
  %conv = zext i8 %4 to i32, !dbg !5070
  %cmp = icmp eq i32 %conv, 1, !dbg !5072
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5073

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5074
  %cmp2 = icmp eq %struct.attribute* %5, getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_sensitivity, i32 0, i32 0, i32 0), !dbg !5075
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !5076

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5077
  %cmp4 = icmp eq %struct.attribute* %6, getelementptr inbounds (%struct.psmouse_attribute, %struct.psmouse_attribute* @psmouse_attr_press_to_select, i32 0, i32 0, i32 0), !dbg !5078
  br label %lor.end, !dbg !5076

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  ret i1 %7, !dbg !5079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_write(%struct.ps2dev* %ps2dev, i8 zeroext %loc, i8 zeroext %val) #0 !dbg !5080 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %loc.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %param = alloca [3 x i8], align 1
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store i8 %loc, i8* %loc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %loc.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !5089, metadata !DIExpression()), !dbg !5091
  %arrayinit.begin = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !5092
  store i8 -127, i8* %arrayinit.begin, align 1, !dbg !5092
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5092
  %0 = load i8, i8* %loc.addr, align 1, !dbg !5093
  store i8 %0, i8* %arrayinit.element, align 1, !dbg !5092
  %arrayinit.element1 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !5092
  %1 = load i8, i8* %val.addr, align 1, !dbg !5094
  store i8 %1, i8* %arrayinit.element1, align 1, !dbg !5092
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !5095
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !5096
  %call = call i32 @ps2_command(%struct.ps2dev* %2, i8* %arraydecay, i32 12514) #8, !dbg !5097
  ret i32 %call, !dbg !5098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @trackpoint_toggle_bit(%struct.ps2dev* %ps2dev, i8 zeroext %loc, i8 zeroext %mask) #0 !dbg !5099 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %loc.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %param = alloca [3 x i8], align 1
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  store i8 %loc, i8* %loc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %loc.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !5106, metadata !DIExpression()), !dbg !5107
  %arrayinit.begin = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !5108
  store i8 71, i8* %arrayinit.begin, align 1, !dbg !5108
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5108
  %0 = load i8, i8* %loc.addr, align 1, !dbg !5109
  store i8 %0, i8* %arrayinit.element, align 1, !dbg !5108
  %arrayinit.element1 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !5108
  %1 = load i8, i8* %mask.addr, align 1, !dbg !5110
  store i8 %1, i8* %arrayinit.element1, align 1, !dbg !5108
  %2 = load i8, i8* %loc.addr, align 1, !dbg !5111
  %conv = zext i8 %2 to i32, !dbg !5111
  %cmp = icmp slt i32 %conv, 32, !dbg !5113
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5114

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %loc.addr, align 1, !dbg !5115
  %conv3 = zext i8 %3 to i32, !dbg !5115
  %cmp4 = icmp sge i32 %conv3, 47, !dbg !5116
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5117

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !5119
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !5120
  %call = call i32 @ps2_command(%struct.ps2dev* %4, i8* %arraydecay, i32 12514) #8, !dbg !5121
  store i32 %call, i32* %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5123
  ret i32 %5, !dbg !5123
}

; Function Attrs: noredzone
declare dso_local i64 @psmouse_attr_show_helper(%struct.device*, %struct.device_attribute*, i8*) #3

; Function Attrs: noredzone
declare dso_local i64 @psmouse_attr_set_helper(%struct.device*, %struct.device_attribute*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trackpoint_show_int_attr(%struct.psmouse* %psmouse, i8* %data, i8* %buf) #0 !dbg !5124 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %data.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %tp = alloca %struct.trackpoint_data*, align 8
  %attr = alloca %struct.trackpoint_attr_data*, align 8
  %value = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !5131, metadata !DIExpression()), !dbg !5132
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5133
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5134
  %1 = load i8*, i8** %private, align 8, !dbg !5134
  %2 = bitcast i8* %1 to %struct.trackpoint_data*, !dbg !5133
  store %struct.trackpoint_data* %2, %struct.trackpoint_data** %tp, align 8, !dbg !5132
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %attr, metadata !5135, metadata !DIExpression()), !dbg !5136
  %3 = load i8*, i8** %data.addr, align 8, !dbg !5137
  %4 = bitcast i8* %3 to %struct.trackpoint_attr_data*, !dbg !5137
  store %struct.trackpoint_attr_data* %4, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5136
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5138, metadata !DIExpression()), !dbg !5139
  %5 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !5140
  %6 = bitcast %struct.trackpoint_data* %5 to i8*, !dbg !5141
  %7 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5142
  %field_offset = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %7, i32 0, i32 0, !dbg !5143
  %8 = load i64, i64* %field_offset, align 8, !dbg !5143
  %add.ptr = getelementptr i8, i8* %6, i64 %8, !dbg !5144
  %9 = load i8, i8* %add.ptr, align 1, !dbg !5145
  store i8 %9, i8* %value, align 1, !dbg !5139
  %10 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5146
  %inverted = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %10, i32 0, i32 3, !dbg !5148
  %11 = load i8, i8* %inverted, align 2, !dbg !5148
  %tobool = trunc i8 %11 to i1, !dbg !5148
  br i1 %tobool, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %entry
  %12 = load i8, i8* %value, align 1, !dbg !5150
  %tobool1 = icmp ne i8 %12, 0, !dbg !5151
  %lnot = xor i1 %tobool1, true, !dbg !5151
  %lnot.ext = zext i1 %lnot to i32, !dbg !5151
  %conv = trunc i32 %lnot.ext to i8, !dbg !5151
  store i8 %conv, i8* %value, align 1, !dbg !5152
  br label %if.end, !dbg !5153

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !5154
  %14 = load i8, i8* %value, align 1, !dbg !5155
  %conv2 = zext i8 %14 to i32, !dbg !5155
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %conv2) #8, !dbg !5156
  %conv3 = sext i32 %call to i64, !dbg !5156
  ret i64 %conv3, !dbg !5157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trackpoint_set_int_attr(%struct.psmouse* %psmouse, i8* %data, i8* %buf, i64 %count) #0 !dbg !5158 {
entry:
  %retval = alloca i64, align 8
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %data.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tp = alloca %struct.trackpoint_data*, align 8
  %attr = alloca %struct.trackpoint_attr_data*, align 8
  %field = alloca i8*, align 8
  %value = alloca i8, align 1
  %err = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5169
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5170
  %1 = load i8*, i8** %private, align 8, !dbg !5170
  %2 = bitcast i8* %1 to %struct.trackpoint_data*, !dbg !5169
  store %struct.trackpoint_data* %2, %struct.trackpoint_data** %tp, align 8, !dbg !5168
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %attr, metadata !5171, metadata !DIExpression()), !dbg !5172
  %3 = load i8*, i8** %data.addr, align 8, !dbg !5173
  %4 = bitcast i8* %3 to %struct.trackpoint_attr_data*, !dbg !5173
  store %struct.trackpoint_attr_data* %4, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5172
  call void @llvm.dbg.declare(metadata i8** %field, metadata !5174, metadata !DIExpression()), !dbg !5175
  %5 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !5176
  %6 = bitcast %struct.trackpoint_data* %5 to i8*, !dbg !5177
  %7 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5178
  %field_offset = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %7, i32 0, i32 0, !dbg !5179
  %8 = load i64, i64* %field_offset, align 8, !dbg !5179
  %add.ptr = getelementptr i8, i8* %6, i64 %8, !dbg !5180
  store i8* %add.ptr, i8** %field, align 8, !dbg !5175
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5183, metadata !DIExpression()), !dbg !5184
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5185
  %call = call i32 @kstrtou8(i8* %9, i32 10, i8* %value) #8, !dbg !5186
  store i32 %call, i32* %err, align 4, !dbg !5187
  %10 = load i32, i32* %err, align 4, !dbg !5188
  %tobool = icmp ne i32 %10, 0, !dbg !5188
  br i1 %tobool, label %if.then, label %if.end, !dbg !5190

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %err, align 4, !dbg !5191
  %conv = sext i32 %11 to i64, !dbg !5191
  store i64 %conv, i64* %retval, align 8, !dbg !5192
  br label %return, !dbg !5192

if.end:                                           ; preds = %entry
  %12 = load i8, i8* %value, align 1, !dbg !5193
  %13 = load i8*, i8** %field, align 8, !dbg !5194
  store i8 %12, i8* %13, align 1, !dbg !5195
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5196
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 2, !dbg !5197
  %15 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5198
  %command = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %15, i32 0, i32 1, !dbg !5199
  %16 = load i8, i8* %command, align 8, !dbg !5199
  %17 = load i8, i8* %value, align 1, !dbg !5200
  %call1 = call i32 @trackpoint_write(%struct.ps2dev* %ps2dev, i8 zeroext %16, i8 zeroext %17) #8, !dbg !5201
  store i32 %call1, i32* %err, align 4, !dbg !5202
  %18 = load i32, i32* %err, align 4, !dbg !5203
  %tobool2 = icmp ne i32 %18, 0, !dbg !5203
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !5203

cond.true:                                        ; preds = %if.end
  %conv3 = sext i32 %18 to i64, !dbg !5203
  br label %cond.end, !dbg !5203

cond.false:                                       ; preds = %if.end
  %19 = load i64, i64* %count.addr, align 8, !dbg !5204
  br label %cond.end, !dbg !5203

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %19, %cond.false ], !dbg !5203
  store i64 %cond, i64* %retval, align 8, !dbg !5205
  br label %return, !dbg !5205

return:                                           ; preds = %cond.end, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !5206
  ret i64 %20, !dbg !5206
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @kstrtou8(i8*, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trackpoint_set_bit_attr(%struct.psmouse* %psmouse, i8* %data, i8* %buf, i64 %count) #0 !dbg !5207 {
entry:
  %retval = alloca i64, align 8
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %data.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tp = alloca %struct.trackpoint_data*, align 8
  %attr = alloca %struct.trackpoint_attr_data*, align 8
  %field = alloca i8*, align 8
  %value = alloca i8, align 1
  %err = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata %struct.trackpoint_data** %tp, metadata !5216, metadata !DIExpression()), !dbg !5217
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5218
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5219
  %1 = load i8*, i8** %private, align 8, !dbg !5219
  %2 = bitcast i8* %1 to %struct.trackpoint_data*, !dbg !5218
  store %struct.trackpoint_data* %2, %struct.trackpoint_data** %tp, align 8, !dbg !5217
  call void @llvm.dbg.declare(metadata %struct.trackpoint_attr_data** %attr, metadata !5220, metadata !DIExpression()), !dbg !5221
  %3 = load i8*, i8** %data.addr, align 8, !dbg !5222
  %4 = bitcast i8* %3 to %struct.trackpoint_attr_data*, !dbg !5222
  store %struct.trackpoint_attr_data* %4, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5221
  call void @llvm.dbg.declare(metadata i8** %field, metadata !5223, metadata !DIExpression()), !dbg !5224
  %5 = load %struct.trackpoint_data*, %struct.trackpoint_data** %tp, align 8, !dbg !5225
  %6 = bitcast %struct.trackpoint_data* %5 to i8*, !dbg !5226
  %7 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5227
  %field_offset = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %7, i32 0, i32 0, !dbg !5228
  %8 = load i64, i64* %field_offset, align 8, !dbg !5228
  %add.ptr = getelementptr i8, i8* %6, i64 %8, !dbg !5229
  store i8* %add.ptr, i8** %field, align 8, !dbg !5224
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5230, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5232, metadata !DIExpression()), !dbg !5233
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5234
  %call = call i32 @kstrtobool(i8* %9, i8* %value) #8, !dbg !5235
  store i32 %call, i32* %err, align 4, !dbg !5236
  %10 = load i32, i32* %err, align 4, !dbg !5237
  %tobool = icmp ne i32 %10, 0, !dbg !5237
  br i1 %tobool, label %if.then, label %if.end, !dbg !5239

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %err, align 4, !dbg !5240
  %conv = sext i32 %11 to i64, !dbg !5240
  store i64 %conv, i64* %retval, align 8, !dbg !5241
  br label %return, !dbg !5241

if.end:                                           ; preds = %entry
  %12 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5242
  %inverted = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %12, i32 0, i32 3, !dbg !5244
  %13 = load i8, i8* %inverted, align 2, !dbg !5244
  %tobool1 = trunc i8 %13 to i1, !dbg !5244
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5245

if.then2:                                         ; preds = %if.end
  %14 = load i8, i8* %value, align 1, !dbg !5246
  %tobool3 = trunc i8 %14 to i1, !dbg !5246
  %lnot = xor i1 %tobool3, true, !dbg !5247
  %frombool = zext i1 %lnot to i8, !dbg !5248
  store i8 %frombool, i8* %value, align 1, !dbg !5248
  br label %if.end4, !dbg !5249

if.end4:                                          ; preds = %if.then2, %if.end
  %15 = load i8*, i8** %field, align 8, !dbg !5250
  %16 = load i8, i8* %15, align 1, !dbg !5252
  %tobool5 = trunc i8 %16 to i1, !dbg !5252
  %conv6 = zext i1 %tobool5 to i32, !dbg !5252
  %17 = load i8, i8* %value, align 1, !dbg !5253
  %tobool7 = trunc i8 %17 to i1, !dbg !5253
  %conv8 = zext i1 %tobool7 to i32, !dbg !5253
  %cmp = icmp ne i32 %conv6, %conv8, !dbg !5254
  br i1 %cmp, label %if.then10, label %if.end14, !dbg !5255

if.then10:                                        ; preds = %if.end4
  %18 = load i8, i8* %value, align 1, !dbg !5256
  %tobool11 = trunc i8 %18 to i1, !dbg !5256
  %19 = load i8*, i8** %field, align 8, !dbg !5258
  %frombool12 = zext i1 %tobool11 to i8, !dbg !5259
  store i8 %frombool12, i8* %19, align 1, !dbg !5259
  %20 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5260
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 2, !dbg !5261
  %21 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5262
  %command = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %21, i32 0, i32 1, !dbg !5263
  %22 = load i8, i8* %command, align 8, !dbg !5263
  %23 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %attr, align 8, !dbg !5264
  %mask = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %23, i32 0, i32 2, !dbg !5265
  %24 = load i8, i8* %mask, align 1, !dbg !5265
  %call13 = call i32 @trackpoint_toggle_bit(%struct.ps2dev* %ps2dev, i8 zeroext %22, i8 zeroext %24) #8, !dbg !5266
  store i32 %call13, i32* %err, align 4, !dbg !5267
  br label %if.end14, !dbg !5268

if.end14:                                         ; preds = %if.then10, %if.end4
  %25 = load i32, i32* %err, align 4, !dbg !5269
  %tobool15 = icmp ne i32 %25, 0, !dbg !5269
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !5269

cond.true:                                        ; preds = %if.end14
  %conv16 = sext i32 %25 to i64, !dbg !5269
  br label %cond.end, !dbg !5269

cond.false:                                       ; preds = %if.end14
  %26 = load i64, i64* %count.addr, align 8, !dbg !5270
  br label %cond.end, !dbg !5269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv16, %cond.true ], [ %26, %cond.false ], !dbg !5269
  store i64 %cond, i64* %retval, align 8, !dbg !5271
  br label %return, !dbg !5271

return:                                           ; preds = %cond.end, %if.then
  %27 = load i64, i64* %retval, align 8, !dbg !5272
  ret i64 %27, !dbg !5272
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtobool(i8*, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @device_add_groups(%struct.device*, %struct.attribute_group**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @trackpoint_is_attr_visible(%struct.kobject* %kobj, %struct.attribute* %attr, i32 %n) #0 !dbg !5273 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.serio*, align 8
  %psmouse = alloca %struct.psmouse*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5282, metadata !DIExpression()), !dbg !5284
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5284
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !5284
  store i8* %1, i8** %__mptr, align 8, !dbg !5284
  br label %do.body, !dbg !5284

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5285

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5284
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5284
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !5284
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !5285
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !5284
  store %struct.device* %4, %struct.device** %dev, align 8, !dbg !5281
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !5287, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5289, metadata !DIExpression()), !dbg !5291
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5291
  %6 = bitcast %struct.device* %5 to i8*, !dbg !5291
  store i8* %6, i8** %__mptr1, align 8, !dbg !5291
  br label %do.body2, !dbg !5291

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5292

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !5291
  %add.ptr5 = getelementptr i8, i8* %7, i64 -328, !dbg !5291
  %8 = bitcast i8* %add.ptr5 to %struct.serio*, !dbg !5291
  store %struct.serio* %8, %struct.serio** %tmp4, align 8, !dbg !5292
  %9 = load %struct.serio*, %struct.serio** %tmp4, align 8, !dbg !5291
  store %struct.serio* %9, %struct.serio** %serio, align 8, !dbg !5288
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse, metadata !5294, metadata !DIExpression()), !dbg !5295
  %10 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !5296
  %call = call i8* @serio_get_drvdata(%struct.serio* %10) #8, !dbg !5297
  %11 = bitcast i8* %call to %struct.psmouse*, !dbg !5297
  store %struct.psmouse* %11, %struct.psmouse** %psmouse, align 8, !dbg !5295
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse, align 8, !dbg !5298
  %13 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5299
  %call6 = call zeroext i1 @trackpoint_is_attr_available(%struct.psmouse* %12, %struct.attribute* %13) #8, !dbg !5300
  br i1 %call6, label %cond.true, label %cond.false, !dbg !5300

cond.true:                                        ; preds = %do.end3
  %14 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5301
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 1, !dbg !5302
  %15 = load i16, i16* %mode, align 8, !dbg !5302
  %conv = zext i16 %15 to i32, !dbg !5301
  br label %cond.end, !dbg !5300

cond.false:                                       ; preds = %do.end3
  br label %cond.end, !dbg !5300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !5300
  %conv7 = trunc i32 %cond to i16, !dbg !5300
  ret i16 %conv7, !dbg !5303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @serio_get_drvdata(%struct.serio* %serio) #0 !dbg !5304 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !5309
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 18, !dbg !5310
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5311
  ret i8* %call, !dbg !5312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5313 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5320
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5321
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5321
  ret i8* %1, !dbg !5322
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4054, !4055, !4056, !4057}
!llvm.ident = !{!4058}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "trackpoint_variants", scope: !2, file: !3, line: 19, type: !4050, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141, globals: !3588, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/trackpoint.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !86, !113, !120, !125, !129, !134}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !31, line: 296, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !40, line: 9, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !48, line: 26, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !54, line: 44, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !60, line: 343, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !67, line: 524, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !67, line: 502, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !81, line: 11, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !87, line: 48, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!89 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5, isUnsigned: true)
!95 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6, isUnsigned: true)
!96 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7, isUnsigned: true)
!97 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8, isUnsigned: true)
!98 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9, isUnsigned: true)
!99 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10, isUnsigned: true)
!100 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11, isUnsigned: true)
!101 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12, isUnsigned: true)
!102 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13, isUnsigned: true)
!103 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14, isUnsigned: true)
!104 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15, isUnsigned: true)
!105 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16, isUnsigned: true)
!106 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17, isUnsigned: true)
!107 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18, isUnsigned: true)
!108 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19, isUnsigned: true)
!109 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20, isUnsigned: true)
!110 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21, isUnsigned: true)
!111 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22, isUnsigned: true)
!112 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !87, line: 28, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 37, baseType: !7, size: 32, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !87, line: 43, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 10, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !135, line: 305, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!141 = !{!142, !144, !145, !148, !154, !3524}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !143, line: 148, baseType: !7)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!147 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !150, line: 17, baseType: !151)
!150 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !153)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !156)
!156 = !{!157, !3165, !3166, !3169, !3170, !3221, !3312, !3313, !3314, !3315, !3316, !3325, !3430, !3443, !3446, !3447, !3451, !3453, !3454, !3455, !3459, !3465, !3466, !3469, !3473, !3476, !3477, !3478, !3479, !3480, !3512, !3513, !3514, !3517, !3520, !3521, !3522, !3523}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !155, file: !60, line: 462, baseType: !158, size: 512)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !159, line: 64, size: 512, elements: !160)
!159 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !165, !171, !173, !234, !3016, !3155, !3160, !3161, !3162, !3163, !3164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !159, line: 65, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !158, file: !159, line: 66, baseType: !166, size: 128, offset: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !143, line: 178, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !143, line: 179, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !143, line: 179, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !159, line: 67, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !158, file: !159, line: 68, baseType: !174, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !159, line: 192, size: 704, elements: !176)
!176 = !{!177, !178, !194, !195}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !175, file: !159, line: 193, baseType: !166, size: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !175, file: !159, line: 194, baseType: !179, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !180, line: 83, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !180, line: 71, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !180, line: 72, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !180, line: 72, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !184, file: !180, line: 73, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 20, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !187, file: !180, line: 21, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !191, line: 25, baseType: !192)
!191 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 25, elements: !193)
!193 = !{}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !175, file: !159, line: 195, baseType: !158, size: 512, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !175, file: !159, line: 196, baseType: !196, size: 64, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !159, line: 156, size: 192, elements: !199)
!199 = !{!200, !206, !211}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !198, file: !159, line: 157, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !174, !172}
!205 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !159, line: 158, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!162, !174, !172}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !198, file: !159, line: 159, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!205, !174, !172, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !159, line: 148, size: 20736, elements: !218)
!218 = !{!219, !224, !228, !229, !233}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !217, file: !159, line: 149, baseType: !220, size: 192)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, elements: !222)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!222 = !{!223}
!223 = !DISubrange(count: 3)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !217, file: !159, line: 150, baseType: !225, size: 4096, offset: 192)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 4096, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !217, file: !159, line: 151, baseType: !205, size: 32, offset: 4288)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !217, file: !159, line: 152, baseType: !230, size: 16384, offset: 4320)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 16384, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !217, file: !159, line: 153, baseType: !205, size: 32, offset: 20704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !158, file: !159, line: 69, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !159, line: 138, size: 448, elements: !237)
!237 = !{!238, !242, !271, !273, !2976, !3006, !3010}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !159, line: 139, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !172}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !236, file: !159, line: 140, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !246, line: 230, size: 128, elements: !247)
!246 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!247 = !{!248, !263}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !245, file: !246, line: 231, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !172, !256, !221}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !143, line: 60, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !254, line: 73, baseType: !255)
!254 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !254, line: 15, baseType: !147)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !246, line: 30, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !246, line: 31, baseType: !162, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !257, file: !246, line: 32, baseType: !261, size: 16, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !143, line: 19, baseType: !262)
!262 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !245, file: !246, line: 232, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!252, !172, !256, !162, !267}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 55, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !254, line: 72, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !254, line: 16, baseType: !270)
!270 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !236, file: !159, line: 141, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !236, file: !159, line: 142, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !246, line: 84, size: 320, elements: !278)
!278 = !{!279, !280, !284, !2973, !2974}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !246, line: 85, baseType: !162, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !277, file: !246, line: 86, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!261, !172, !256, !205}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !277, file: !246, line: 88, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!261, !172, !288, !205}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !246, line: 168, size: 448, elements: !290)
!290 = !{!291, !292, !293, !294, !2968, !2969}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !289, file: !246, line: 169, baseType: !257, size: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !289, file: !246, line: 170, baseType: !267, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !289, file: !246, line: 171, baseType: !144, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !289, file: !246, line: 172, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!252, !298, !172, !288, !221, !474, !267}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !300)
!300 = !{!301, !319, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2951, !2952, !2961, !2962, !2963, !2964, !2965, !2966, !2967}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !299, file: !31, line: 920, baseType: !302, size: 128)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !31, line: 917, size: 128, elements: !303)
!303 = !{!304, !310}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !302, file: !31, line: 918, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !306, line: 58, size: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !306, line: 59, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !302, file: !31, line: 919, baseType: !311, size: 128, align: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !143, line: 216, size: 128, align: 64, elements: !312)
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !143, line: 217, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !311, file: !143, line: 218, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !314}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !299, file: !31, line: 921, baseType: !320, size: 128, offset: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !321, line: 8, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !320, file: !321, line: 9, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !326, line: 18, flags: DIFlagFwdDecl)
!326 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !320, file: !321, line: 10, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !326, line: 89, size: 1536, elements: !330)
!330 = !{!331, !332, !342, !350, !351, !371, !2901, !2903, !2915, !2916, !2917, !2918, !2919, !2925, !2926, !2927}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !329, file: !326, line: 91, baseType: !7, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !329, file: !326, line: 92, baseType: !333, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !334, line: 277, baseType: !335)
!334 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !334, line: 277, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !335, file: !334, line: 277, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !334, line: 70, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !334, line: 65, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !339, file: !334, line: 66, baseType: !7, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !329, file: !326, line: 93, baseType: !343, size: 128, offset: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !344, line: 38, size: 128, elements: !345)
!344 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !344, line: 39, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !343, file: !344, line: 39, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !329, file: !326, line: 94, baseType: !328, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !329, file: !326, line: 95, baseType: !352, size: 128, offset: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !326, line: 47, size: 128, elements: !353)
!353 = !{!354, !368}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !326, line: 48, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !326, line: 48, size: 64, elements: !356)
!356 = !{!357, !364}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !326, line: 49, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !326, line: 49, size: 64, elements: !359)
!359 = !{!360, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !358, file: !326, line: 50, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !150, line: 21, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !7)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !358, file: !326, line: 50, baseType: !361, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !355, file: !326, line: 52, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !150, line: 23, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !367)
!367 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !326, line: 54, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !329, file: !326, line: 96, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !374)
!374 = !{!375, !376, !377, !385, !392, !393, !541, !2612, !2613, !2614, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2877, !2885, !2886, !2887, !2897, !2898, !2899, !2900}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !373, file: !31, line: 611, baseType: !261, size: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !373, file: !31, line: 612, baseType: !262, size: 16, offset: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !373, file: !31, line: 613, baseType: !378, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !379, line: 23, baseType: !380)
!379 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 21, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !379, line: 22, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !143, line: 32, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !254, line: 49, baseType: !7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !373, file: !31, line: 614, baseType: !386, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !379, line: 28, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 26, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !379, line: 27, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !143, line: 33, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !254, line: 50, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !373, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !373, file: !31, line: 622, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !397)
!397 = !{!398, !402, !415, !419, !425, !429, !435, !439, !443, !447, !451, !452, !458, !462, !488, !517, !521, !527, !532, !536, !537}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !396, file: !31, line: 1865, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!328, !372, !328, !7}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !396, file: !31, line: 1866, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!162, !328, !372, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !408, line: 10, size: 128, elements: !409)
!408 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !407, file: !408, line: 11, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !144}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !407, file: !408, line: 12, baseType: !144, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !396, file: !31, line: 1867, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!205, !372, !205}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !396, file: !31, line: 1868, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!423, !372, !205}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !396, file: !31, line: 1870, baseType: !426, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!205, !328, !221, !205}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !396, file: !31, line: 1872, baseType: !430, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!205, !372, !328, !261, !433}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 30, baseType: !434)
!434 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !396, file: !31, line: 1873, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!205, !328, !372, !328}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !396, file: !31, line: 1874, baseType: !440, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!205, !372, !328}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !396, file: !31, line: 1875, baseType: !444, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!205, !372, !328, !162}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !396, file: !31, line: 1876, baseType: !448, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!205, !372, !328, !261}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !396, file: !31, line: 1877, baseType: !440, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !396, file: !31, line: 1878, baseType: !453, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!205, !372, !328, !261, !456}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !143, line: 16, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !143, line: 13, baseType: !361)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !396, file: !31, line: 1879, baseType: !459, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!205, !372, !328, !372, !328, !7}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !396, file: !31, line: 1881, baseType: !463, size: 64, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!205, !328, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !477, !485, !486, !487}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !467, file: !31, line: 220, baseType: !7, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !467, file: !31, line: 221, baseType: !261, size: 16, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !467, file: !31, line: 222, baseType: !378, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !467, file: !31, line: 223, baseType: !386, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !467, file: !31, line: 224, baseType: !474, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !143, line: 46, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !254, line: 88, baseType: !476)
!476 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !467, file: !31, line: 225, baseType: !478, size: 128, offset: 192)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !479, line: 13, size: 128, elements: !480)
!479 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !484}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !478, file: !479, line: 14, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !479, line: 8, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !152, line: 30, baseType: !476)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !478, file: !479, line: 15, baseType: !147, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !467, file: !31, line: 226, baseType: !478, size: 128, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !467, file: !31, line: 227, baseType: !478, size: 128, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !467, file: !31, line: 234, baseType: !298, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !396, file: !31, line: 1882, baseType: !489, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!205, !492, !494, !361, !7}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !496, line: 22, size: 1152, elements: !497)
!496 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!497 = !{!498, !499, !500, !501, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !495, file: !496, line: 23, baseType: !361, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !495, file: !496, line: 24, baseType: !261, size: 16, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !495, file: !496, line: 25, baseType: !7, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !495, file: !496, line: 26, baseType: !502, size: 32, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !143, line: 104, baseType: !361)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !495, file: !496, line: 27, baseType: !365, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !495, file: !496, line: 28, baseType: !365, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !495, file: !496, line: 37, baseType: !365, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !495, file: !496, line: 38, baseType: !456, size: 32, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !495, file: !496, line: 39, baseType: !456, size: 32, offset: 352)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !495, file: !496, line: 40, baseType: !378, size: 32, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !495, file: !496, line: 41, baseType: !386, size: 32, offset: 416)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !495, file: !496, line: 42, baseType: !474, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !495, file: !496, line: 43, baseType: !478, size: 128, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !495, file: !496, line: 44, baseType: !478, size: 128, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !495, file: !496, line: 45, baseType: !478, size: 128, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !495, file: !496, line: 46, baseType: !478, size: 128, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !495, file: !496, line: 47, baseType: !365, size: 64, offset: 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !495, file: !496, line: 48, baseType: !365, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !396, file: !31, line: 1883, baseType: !518, size: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!252, !328, !221, !267}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !396, file: !31, line: 1884, baseType: !522, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!205, !372, !525, !365, !365}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !396, file: !31, line: 1886, baseType: !528, size: 64, offset: 1088)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!205, !372, !531, !205}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !396, file: !31, line: 1887, baseType: !533, size: 64, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!205, !372, !328, !298, !7, !261}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !396, file: !31, line: 1890, baseType: !448, size: 64, offset: 1216)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !396, file: !31, line: 1891, baseType: !538, size: 64, offset: 1280)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!205, !372, !423, !205}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !373, file: !31, line: 623, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !600, !2219, !2301, !2384, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2400, !2404, !2405, !2408, !2409, !2412, !2413, !2414, !2455, !2482, !2483, !2484, !2485, !2486, !2487, !2490, !2492, !2499, !2500, !2502, !2503, !2504, !2563, !2564, !2579, !2580, !2581, !2582, !2583, !2586, !2587, !2588, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !543, file: !31, line: 1417, baseType: !166, size: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !543, file: !31, line: 1418, baseType: !456, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !543, file: !31, line: 1419, baseType: !153, size: 8, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !543, file: !31, line: 1420, baseType: !270, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !543, file: !31, line: 1421, baseType: !474, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !543, file: !31, line: 1422, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !553)
!553 = !{!554, !555, !556, !563, !567, !571, !575, !579, !580, !590, !593, !594, !595, !597, !598, !599}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !552, file: !31, line: 2229, baseType: !162, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !552, file: !31, line: 2230, baseType: !205, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !552, file: !31, line: 2238, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!205, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !562, line: 28, flags: DIFlagFwdDecl)
!562 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !552, file: !31, line: 2239, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !552, file: !31, line: 2240, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!328, !551, !205, !162, !144}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !552, file: !31, line: 2242, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !542}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !552, file: !31, line: 2243, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !578, line: 76, flags: DIFlagFwdDecl)
!578 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !31, line: 2244, baseType: !551, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !552, file: !31, line: 2245, baseType: !581, size: 64, offset: 512)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !143, line: 182, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !581, file: !143, line: 183, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !143, line: 186, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !143, line: 187, baseType: !584, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !585, file: !143, line: 187, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !552, file: !31, line: 2247, baseType: !591, offset: 576)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !592, line: 187, elements: !193)
!592 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !552, file: !31, line: 2248, baseType: !591, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !552, file: !31, line: 2249, baseType: !591, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !552, file: !31, line: 2250, baseType: !596, offset: 576)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, elements: !222)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !552, file: !31, line: 2252, baseType: !591, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !552, file: !31, line: 2253, baseType: !591, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !552, file: !31, line: 2254, baseType: !591, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !543, file: !31, line: 1423, baseType: !601, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !604)
!604 = !{!605, !609, !613, !614, !618, !624, !628, !629, !630, !634, !638, !639, !640, !641, !647, !652, !653, !660, !661, !662, !663, !2203, !2218}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !603, file: !31, line: 1936, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!372, !542}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !603, file: !31, line: 1937, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !372}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !603, file: !31, line: 1938, baseType: !610, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !603, file: !31, line: 1940, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !372, !205}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !603, file: !31, line: 1941, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!205, !372, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !603, file: !31, line: 1942, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!205, !372}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !603, file: !31, line: 1943, baseType: !610, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !603, file: !31, line: 1944, baseType: !572, size: 64, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !603, file: !31, line: 1945, baseType: !631, size: 64, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!205, !542, !205}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !603, file: !31, line: 1946, baseType: !635, size: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!205, !542}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !603, file: !31, line: 1947, baseType: !635, size: 64, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !603, file: !31, line: 1948, baseType: !635, size: 64, offset: 704)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !603, file: !31, line: 1949, baseType: !635, size: 64, offset: 768)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !603, file: !31, line: 1950, baseType: !642, size: 64, offset: 832)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!205, !328, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !603, file: !31, line: 1951, baseType: !648, size: 64, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!205, !542, !651, !221}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !603, file: !31, line: 1952, baseType: !572, size: 64, offset: 960)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !603, file: !31, line: 1954, baseType: !654, size: 64, offset: 1024)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!205, !657, !328}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !659, line: 539, flags: DIFlagFwdDecl)
!659 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!660 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !603, file: !31, line: 1955, baseType: !654, size: 64, offset: 1088)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !603, file: !31, line: 1956, baseType: !654, size: 64, offset: 1152)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !603, file: !31, line: 1957, baseType: !654, size: 64, offset: 1216)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !603, file: !31, line: 1963, baseType: !664, size: 64, offset: 1280)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!205, !542, !667, !142}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !669, line: 68, size: 512, align: 128, elements: !670)
!669 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!670 = !{!671, !672, !2195, !2202}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !669, line: 69, baseType: !270, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !669, line: 77, baseType: !673, size: 320, offset: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !669, line: 77, size: 320, elements: !674)
!674 = !{!675, !862, !867, !895, !903, !909, !2187, !2194}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 78, baseType: !676, size: 320)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 78, size: 320, elements: !677)
!677 = !{!678, !679, !860, !861}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !676, file: !669, line: 84, baseType: !166, size: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !676, file: !669, line: 86, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !682)
!682 = !{!683, !684, !691, !692, !697, !712, !728, !729, !730, !731, !853, !854, !857, !858, !859}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !681, file: !31, line: 452, baseType: !372, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !681, file: !31, line: 453, baseType: !685, size: 128, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !686, line: 292, size: 128, elements: !687)
!686 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!687 = !{!688, !689, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !685, file: !686, line: 293, baseType: !179)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !685, file: !686, line: 295, baseType: !142, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !685, file: !686, line: 296, baseType: !144, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !681, file: !31, line: 454, baseType: !142, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !681, file: !31, line: 455, baseType: !693, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !143, line: 168, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 166, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !694, file: !143, line: 167, baseType: !205, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !681, file: !31, line: 460, baseType: !698, size: 128, offset: 256)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !699, line: 125, size: 128, elements: !700)
!699 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !711}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !698, file: !699, line: 126, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !699, line: 31, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !702, file: !699, line: 32, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !699, line: 24, size: 192, align: 64, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !706, file: !699, line: 25, baseType: !270, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !706, file: !699, line: 26, baseType: !705, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !706, file: !699, line: 27, baseType: !705, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !698, file: !699, line: 127, baseType: !705, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !681, file: !31, line: 461, baseType: !713, size: 256, offset: 384)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !714, line: 35, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716, !724, !725, !727}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !713, file: !714, line: 36, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !718, line: 13, baseType: !719)
!718 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !143, line: 175, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 173, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !720, file: !143, line: 174, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !150, line: 22, baseType: !483)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !713, file: !714, line: 42, baseType: !717, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !713, file: !714, line: 46, baseType: !726, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 29, baseType: !187)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !713, file: !714, line: 47, baseType: !166, size: 128, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !681, file: !31, line: 462, baseType: !270, size: 64, offset: 640)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !681, file: !31, line: 463, baseType: !270, size: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !681, file: !31, line: 464, baseType: !270, size: 64, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !681, file: !31, line: 465, baseType: !732, size: 64, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !735)
!735 = !{!736, !740, !744, !748, !752, !756, !762, !768, !772, !777, !781, !785, !789, !817, !821, !827, !828, !829, !833, !838, !842, !849}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !734, file: !31, line: 368, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!205, !667, !622}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !734, file: !31, line: 369, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!205, !298, !667}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !734, file: !31, line: 372, baseType: !745, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!205, !680, !622}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !734, file: !31, line: 375, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!205, !667}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !734, file: !31, line: 381, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!205, !298, !680, !169, !7}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !734, file: !31, line: 383, baseType: !757, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !734, file: !31, line: 385, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!205, !298, !680, !474, !7, !7, !766, !767}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !734, file: !31, line: 388, baseType: !769, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!205, !298, !680, !474, !7, !7, !667, !144}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !734, file: !31, line: 393, baseType: !773, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !680, !776}
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !143, line: 125, baseType: !365)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !734, file: !31, line: 394, baseType: !778, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !667, !7, !7}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !734, file: !31, line: 395, baseType: !782, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!205, !667, !142}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !734, file: !31, line: 396, baseType: !786, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !667}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !734, file: !31, line: 397, baseType: !790, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!252, !793, !815}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !795)
!795 = !{!796, !797, !798, !802, !803, !804, !807, !808}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !794, file: !31, line: 321, baseType: !298, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !794, file: !31, line: 326, baseType: !474, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !794, file: !31, line: 327, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !793, !147, !147}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !794, file: !31, line: 328, baseType: !144, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !794, file: !31, line: 329, baseType: !205, size: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !794, file: !31, line: 330, baseType: !805, size: 16, offset: 288)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !150, line: 19, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !262)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !794, file: !31, line: 331, baseType: !805, size: 16, offset: 304)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !31, line: 332, baseType: !809, size: 64, offset: 320)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !31, line: 332, size: 64, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !809, file: !31, line: 333, baseType: !7, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !809, file: !31, line: 334, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !734, file: !31, line: 402, baseType: !818, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!205, !680, !667, !667, !5}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !734, file: !31, line: 404, baseType: !822, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!433, !667, !825}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !826, line: 305, baseType: !7)
!826 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!827 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !734, file: !31, line: 405, baseType: !786, size: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !734, file: !31, line: 406, baseType: !749, size: 64, offset: 1024)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !734, file: !31, line: 407, baseType: !830, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!205, !667, !270, !270}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !734, file: !31, line: 409, baseType: !834, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !667, !837, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !734, file: !31, line: 410, baseType: !839, size: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!205, !680, !667}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !734, file: !31, line: 413, baseType: !843, size: 64, offset: 1280)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!205, !846, !298, !848}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !734, file: !31, line: 415, baseType: !850, size: 64, offset: 1344)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !298}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !31, line: 466, baseType: !270, size: 64, offset: 896)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !681, file: !31, line: 467, baseType: !855, size: 32, offset: 960)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !856, line: 8, baseType: !361)
!856 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !681, file: !31, line: 468, baseType: !179, offset: 992)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !681, file: !31, line: 469, baseType: !166, size: 128, offset: 1024)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !681, file: !31, line: 470, baseType: !144, size: 64, offset: 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !676, file: !669, line: 87, baseType: !270, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !676, file: !669, line: 94, baseType: !270, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 96, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 96, size: 64, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !863, file: !669, line: 101, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !143, line: 143, baseType: !365)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 103, baseType: !868, size: 320)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 103, size: 320, elements: !869)
!869 = !{!870, !880, !883, !884}
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !669, line: 104, baseType: !871, size: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !669, line: 104, size: 128, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !871, file: !669, line: 105, baseType: !166, size: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !669, line: 106, baseType: !875, size: 128)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !669, line: 106, size: 128, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !875, file: !669, line: 107, baseType: !667, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !875, file: !669, line: 109, baseType: !205, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !875, file: !669, line: 110, baseType: !205, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !868, file: !669, line: 117, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !669, line: 117, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !868, file: !669, line: 119, baseType: !144, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !669, line: 120, baseType: !885, size: 64, offset: 256)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !669, line: 120, size: 64, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !885, file: !669, line: 121, baseType: !144, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !885, file: !669, line: 122, baseType: !270, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !669, line: 123, baseType: !890, size: 32)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !885, file: !669, line: 123, size: 32, elements: !891)
!891 = !{!892, !893, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !890, file: !669, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !890, file: !669, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !890, file: !669, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 130, baseType: !896, size: 192)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 130, size: 192, elements: !897)
!897 = !{!898, !899, !900, !901, !902}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !896, file: !669, line: 131, baseType: !270, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !896, file: !669, line: 134, baseType: !153, size: 8, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !896, file: !669, line: 135, baseType: !153, size: 8, offset: 72)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !896, file: !669, line: 136, baseType: !693, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !896, file: !669, line: 137, baseType: !7, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 139, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 139, size: 256, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !904, file: !669, line: 140, baseType: !270, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !904, file: !669, line: 141, baseType: !693, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !904, file: !669, line: 143, baseType: !166, size: 128, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 145, baseType: !910, size: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 145, size: 256, elements: !911)
!911 = !{!912, !913, !915, !916, !2186}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !910, file: !669, line: 146, baseType: !270, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !910, file: !669, line: 147, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !659, line: 509, baseType: !667)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !910, file: !669, line: 148, baseType: !270, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !669, line: 149, baseType: !917, size: 64, offset: 192)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !669, line: 149, size: 64, elements: !918)
!918 = !{!919, !2185}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !917, file: !669, line: 150, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !669, line: 388, size: 7296, elements: !922)
!922 = !{!923, !2181}
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !669, line: 389, baseType: !924, size: 7296)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !669, line: 389, size: 7296, elements: !925)
!925 = !{!926, !964, !965, !966, !970, !971, !972, !973, !974, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1015, !1023, !1026, !1072, !1073, !2165, !2166, !2169, !2170, !2171, !2174, !2175, !2176, !2179, !2180}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !924, file: !669, line: 390, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !669, line: 305, size: 1472, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !944, !945, !950, !951, !954, !958, !959, !960, !961, !962}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !928, file: !669, line: 308, baseType: !270, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !928, file: !669, line: 309, baseType: !270, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !928, file: !669, line: 313, baseType: !927, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !928, file: !669, line: 313, baseType: !927, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !928, file: !669, line: 315, baseType: !706, size: 192, align: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !928, file: !669, line: 323, baseType: !270, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !928, file: !669, line: 327, baseType: !920, size: 64, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !928, file: !669, line: 333, baseType: !938, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !659, line: 284, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !659, line: 284, size: 64, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !939, file: !659, line: 284, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !943, line: 19, baseType: !270)
!943 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !928, file: !669, line: 334, baseType: !270, size: 64, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !928, file: !669, line: 343, baseType: !946, size: 256, offset: 704)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !669, line: 340, size: 256, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !946, file: !669, line: 341, baseType: !706, size: 192, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !946, file: !669, line: 342, baseType: !270, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !928, file: !669, line: 351, baseType: !166, size: 128, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !928, file: !669, line: 353, baseType: !952, size: 64, offset: 1088)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !669, line: 353, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !928, file: !669, line: 356, baseType: !955, size: 64, offset: 1152)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !669, line: 356, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !928, file: !669, line: 359, baseType: !270, size: 64, offset: 1216)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !928, file: !669, line: 361, baseType: !298, size: 64, offset: 1280)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !928, file: !669, line: 362, baseType: !144, size: 64, offset: 1344)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !928, file: !669, line: 365, baseType: !717, size: 64, offset: 1408)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !928, file: !669, line: 373, baseType: !963, offset: 1472)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !669, line: 296, elements: !193)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !924, file: !669, line: 391, baseType: !702, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !924, file: !669, line: 392, baseType: !365, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !924, file: !669, line: 394, baseType: !967, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!270, !298, !270, !270, !270, !270}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !924, file: !669, line: 398, baseType: !270, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !924, file: !669, line: 399, baseType: !270, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !924, file: !669, line: 405, baseType: !270, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !924, file: !669, line: 406, baseType: !270, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !924, file: !669, line: 407, baseType: !975, size: 64, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !659, line: 286, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 286, size: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !977, file: !659, line: 286, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !943, line: 18, baseType: !270)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !924, file: !669, line: 416, baseType: !693, size: 32, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !924, file: !669, line: 428, baseType: !693, size: 32, offset: 608)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !924, file: !669, line: 437, baseType: !693, size: 32, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !924, file: !669, line: 447, baseType: !693, size: 32, offset: 672)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !924, file: !669, line: 450, baseType: !717, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !924, file: !669, line: 452, baseType: !205, size: 32, offset: 768)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !924, file: !669, line: 454, baseType: !179, offset: 800)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !924, file: !669, line: 457, baseType: !713, size: 256, offset: 832)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !924, file: !669, line: 459, baseType: !166, size: 128, offset: 1088)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !924, file: !669, line: 466, baseType: !270, size: 64, offset: 1216)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !924, file: !669, line: 467, baseType: !270, size: 64, offset: 1280)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !924, file: !669, line: 469, baseType: !270, size: 64, offset: 1344)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !924, file: !669, line: 470, baseType: !270, size: 64, offset: 1408)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !924, file: !669, line: 471, baseType: !719, size: 64, offset: 1472)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !924, file: !669, line: 472, baseType: !270, size: 64, offset: 1536)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !924, file: !669, line: 473, baseType: !270, size: 64, offset: 1600)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !924, file: !669, line: 474, baseType: !270, size: 64, offset: 1664)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !924, file: !669, line: 475, baseType: !270, size: 64, offset: 1728)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !924, file: !669, line: 477, baseType: !179, offset: 1792)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !924, file: !669, line: 478, baseType: !270, size: 64, offset: 1792)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !924, file: !669, line: 478, baseType: !270, size: 64, offset: 1856)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !924, file: !669, line: 478, baseType: !270, size: 64, offset: 1920)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !924, file: !669, line: 478, baseType: !270, size: 64, offset: 1984)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !924, file: !669, line: 479, baseType: !270, size: 64, offset: 2048)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !924, file: !669, line: 479, baseType: !270, size: 64, offset: 2112)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !924, file: !669, line: 479, baseType: !270, size: 64, offset: 2176)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !924, file: !669, line: 480, baseType: !270, size: 64, offset: 2240)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !924, file: !669, line: 480, baseType: !270, size: 64, offset: 2304)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !924, file: !669, line: 480, baseType: !270, size: 64, offset: 2368)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !924, file: !669, line: 480, baseType: !270, size: 64, offset: 2432)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !924, file: !669, line: 482, baseType: !1012, size: 2816, offset: 2496)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 2816, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 44)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !924, file: !669, line: 488, baseType: !1016, size: 256, offset: 5312)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1017, line: 60, size: 256, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1016, file: !1017, line: 61, baseType: !1020, size: 256)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !1021)
!1021 = !{!1022}
!1022 = !DISubrange(count: 4)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !924, file: !669, line: 490, baseType: !1024, size: 64, offset: 5568)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !669, line: 490, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !924, file: !669, line: 493, baseType: !1027, size: 896, offset: 5632)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1028, line: 53, baseType: !1029)
!1028 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1028, line: 13, size: 896, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1037, !1038, !1045, !1046, !1066, !1067, !1068}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1029, file: !1028, line: 18, baseType: !365, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1029, file: !1028, line: 28, baseType: !719, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1029, file: !1028, line: 31, baseType: !713, size: 256, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1029, file: !1028, line: 32, baseType: !1035, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1028, line: 32, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1029, file: !1028, line: 37, baseType: !262, size: 16, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1029, file: !1028, line: 40, baseType: !1039, size: 192, offset: 512)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1040, line: 53, size: 192, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1039, file: !1040, line: 54, baseType: !717, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1039, file: !1040, line: 55, baseType: !179, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1039, file: !1040, line: 59, baseType: !166, size: 128, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1029, file: !1028, line: 41, baseType: !144, size: 64, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1029, file: !1028, line: 42, baseType: !1047, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1050, line: 13, size: 896, elements: !1051)
!1050 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1049, file: !1050, line: 14, baseType: !144, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1049, file: !1050, line: 15, baseType: !270, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1049, file: !1050, line: 17, baseType: !270, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1049, file: !1050, line: 17, baseType: !270, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1049, file: !1050, line: 19, baseType: !147, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1049, file: !1050, line: 21, baseType: !147, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1049, file: !1050, line: 22, baseType: !147, size: 64, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1049, file: !1050, line: 23, baseType: !147, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1049, file: !1050, line: 24, baseType: !147, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1049, file: !1050, line: 25, baseType: !147, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1049, file: !1050, line: 26, baseType: !147, size: 64, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1049, file: !1050, line: 27, baseType: !147, size: 64, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1049, file: !1050, line: 28, baseType: !147, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1049, file: !1050, line: 29, baseType: !147, size: 64, offset: 832)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1029, file: !1028, line: 44, baseType: !693, size: 32, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1029, file: !1028, line: 50, baseType: !805, size: 16, offset: 864)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1029, file: !1028, line: 51, baseType: !1069, size: 16, offset: 880)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !150, line: 18, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !152, line: 23, baseType: !1071)
!1071 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !669, line: 495, baseType: !270, size: 64, offset: 6528)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !924, file: !669, line: 497, baseType: !1074, size: 64, offset: 6592)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !669, line: 381, size: 384, elements: !1076)
!1076 = !{!1077, !1078, !2164}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1075, file: !669, line: 382, baseType: !693, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1075, file: !669, line: 383, baseType: !1079, size: 128, offset: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !669, line: 376, size: 128, elements: !1080)
!1080 = !{!1081, !2162}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1079, file: !669, line: 377, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1084, line: 640, size: 48640, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1085 = !{!1086, !1092, !1093, !1094, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1111, !1129, !1140, !1223, !1224, !1225, !1236, !1237, !1239, !1240, !1241, !1242, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1321, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1359, !1361, !1362, !1363, !1375, !1376, !1377, !1378, !1379, !1380, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1404, !1409, !1593, !1594, !1595, !1596, !1600, !1603, !1606, !1609, !1612, !1615, !1716, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1762, !1763, !1764, !1765, !1766, !1771, !1772, !1773, !1776, !1777, !1780, !1783, !1786, !1789, !1832, !1835, !1836, !1915, !1916, !1919, !1920, !1923, !1924, !1925, !1929, !1930, !1931, !1944, !1945, !1946, !1956, !1961, !1964, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1083, file: !1084, line: 646, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1088, line: 56, size: 128, elements: !1089)
!1088 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1088, line: 57, baseType: !270, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1087, file: !1088, line: 58, baseType: !361, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1083, file: !1084, line: 649, baseType: !146, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1083, file: !1084, line: 657, baseType: !144, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1083, file: !1084, line: 658, baseType: !1095, size: 32, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1096, line: 113, baseType: !1097)
!1096 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1096, line: 111, size: 32, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1097, file: !1096, line: 112, baseType: !693, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !1084, line: 660, baseType: !7, size: 32, offset: 288)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1083, file: !1084, line: 661, baseType: !7, size: 32, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1083, file: !1084, line: 684, baseType: !205, size: 32, offset: 352)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1083, file: !1084, line: 686, baseType: !205, size: 32, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1083, file: !1084, line: 687, baseType: !205, size: 32, offset: 416)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1083, file: !1084, line: 688, baseType: !205, size: 32, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1083, file: !1084, line: 689, baseType: !7, size: 32, offset: 480)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1083, file: !1084, line: 691, baseType: !1108, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1084, line: 691, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1083, file: !1084, line: 692, baseType: !1112, size: 832, offset: 576)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1084, line: 451, size: 832, elements: !1113)
!1113 = !{!1114, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1112, file: !1084, line: 453, baseType: !1115, size: 128)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1084, line: 325, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1115, file: !1084, line: 326, baseType: !270, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1115, file: !1084, line: 327, baseType: !361, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1112, file: !1084, line: 454, baseType: !706, size: 192, align: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1112, file: !1084, line: 455, baseType: !166, size: 128, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1112, file: !1084, line: 456, baseType: !7, size: 32, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1112, file: !1084, line: 458, baseType: !365, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1112, file: !1084, line: 459, baseType: !365, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1112, file: !1084, line: 460, baseType: !365, size: 64, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1112, file: !1084, line: 461, baseType: !365, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1112, file: !1084, line: 463, baseType: !365, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1112, file: !1084, line: 465, baseType: !1128, offset: 832)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1084, line: 415, elements: !193)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1083, file: !1084, line: 693, baseType: !1130, size: 384, offset: 1408)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1084, line: 489, size: 384, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1130, file: !1084, line: 490, baseType: !166, size: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1130, file: !1084, line: 491, baseType: !270, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1130, file: !1084, line: 492, baseType: !270, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1130, file: !1084, line: 493, baseType: !7, size: 32, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1130, file: !1084, line: 494, baseType: !262, size: 16, offset: 288)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1130, file: !1084, line: 495, baseType: !262, size: 16, offset: 304)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1130, file: !1084, line: 497, baseType: !1139, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1083, file: !1084, line: 697, baseType: !1141, size: 1792, offset: 1792)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1084, line: 507, size: 1792, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1220, !1221}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1141, file: !1084, line: 508, baseType: !706, size: 192, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1141, file: !1084, line: 515, baseType: !365, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1141, file: !1084, line: 516, baseType: !365, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1141, file: !1084, line: 517, baseType: !365, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1141, file: !1084, line: 518, baseType: !365, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1141, file: !1084, line: 519, baseType: !365, size: 64, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1141, file: !1084, line: 526, baseType: !723, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1141, file: !1084, line: 527, baseType: !365, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1084, line: 528, baseType: !7, size: 32, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1141, file: !1084, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1141, file: !1084, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1141, file: !1084, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1141, file: !1084, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1141, file: !1084, line: 563, baseType: !1157, size: 512, offset: 704)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1158)
!1158 = !{!1159, !1167, !1168, !1173, !1216, !1217, !1218, !1219}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1157, file: !14, line: 119, baseType: !1160, size: 256)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1161, line: 9, size: 256, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1160, file: !1161, line: 10, baseType: !706, size: 192, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1160, file: !1161, line: 11, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1166, line: 29, baseType: !723)
!1166 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1157, file: !14, line: 120, baseType: !1165, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1157, file: !14, line: 121, baseType: !1169, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!13, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1157, file: !14, line: 122, baseType: !1174, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1176)
!1176 = !{!1177, !1197, !1198, !1201, !1206, !1207, !1211, !1215}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1175, file: !14, line: 160, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1179, file: !14, line: 215, baseType: !726)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1179, file: !14, line: 216, baseType: !7, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1179, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1179, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1179, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1179, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1179, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1179, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1179, file: !14, line: 233, baseType: !1165, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1179, file: !14, line: 234, baseType: !1172, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1179, file: !14, line: 235, baseType: !1165, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1179, file: !14, line: 236, baseType: !1172, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1179, file: !14, line: 237, baseType: !1194, size: 4096, offset: 512)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 4096, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 8)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1175, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1175, file: !14, line: 162, baseType: !1199, size: 32, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !143, line: 27, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !254, line: 96, baseType: !205)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1175, file: !14, line: 163, baseType: !1202, size: 32, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !334, line: 276, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !334, line: 276, size: 32, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1203, file: !334, line: 276, baseType: !338, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1175, file: !14, line: 164, baseType: !1172, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1175, file: !14, line: 165, baseType: !1208, size: 128, offset: 256)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1161, line: 14, size: 128, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1208, file: !1161, line: 15, baseType: !698, size: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1175, file: !14, line: 166, baseType: !1212, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1165}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1175, file: !14, line: 167, baseType: !1165, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1157, file: !14, line: 123, baseType: !149, size: 8, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1157, file: !14, line: 124, baseType: !149, size: 8, offset: 456)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1157, file: !14, line: 125, baseType: !149, size: 8, offset: 464)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1157, file: !14, line: 126, baseType: !149, size: 8, offset: 472)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1141, file: !1084, line: 572, baseType: !1157, size: 512, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1141, file: !1084, line: 580, baseType: !1222, size: 64, offset: 1728)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1083, file: !1084, line: 721, baseType: !7, size: 32, offset: 3584)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1083, file: !1084, line: 722, baseType: !205, size: 32, offset: 3616)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1083, file: !1084, line: 723, baseType: !1226, size: 64, offset: 3648)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1229, line: 17, baseType: !1230)
!1229 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1229, line: 17, size: 64, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1230, file: !1229, line: 17, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 1)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1083, file: !1084, line: 724, baseType: !1228, size: 64, offset: 3712)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1083, file: !1084, line: 749, baseType: !1238, offset: 3776)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1084, line: 290, elements: !193)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1083, file: !1084, line: 751, baseType: !166, size: 128, offset: 3776)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1083, file: !1084, line: 757, baseType: !920, size: 64, offset: 3904)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1083, file: !1084, line: 758, baseType: !920, size: 64, offset: 3968)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1083, file: !1084, line: 761, baseType: !1243, size: 320, offset: 4032)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1017, line: 34, size: 320, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1243, file: !1017, line: 35, baseType: !365, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1243, file: !1017, line: 36, baseType: !1247, size: 256, offset: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 256, elements: !1021)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1083, file: !1084, line: 766, baseType: !205, size: 32, offset: 4352)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1083, file: !1084, line: 767, baseType: !205, size: 32, offset: 4384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1083, file: !1084, line: 768, baseType: !205, size: 32, offset: 4416)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1083, file: !1084, line: 770, baseType: !205, size: 32, offset: 4448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1083, file: !1084, line: 772, baseType: !270, size: 64, offset: 4480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1083, file: !1084, line: 775, baseType: !7, size: 32, offset: 4544)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1083, file: !1084, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1083, file: !1084, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1083, file: !1084, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1083, file: !1084, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1083, file: !1084, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1083, file: !1084, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1083, file: !1084, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1083, file: !1084, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1083, file: !1084, line: 831, baseType: !270, size: 64, offset: 4672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1083, file: !1084, line: 833, baseType: !1264, size: 384, offset: 4736)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1265)
!1265 = !{!1266, !1271}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1264, file: !19, line: 26, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!147, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !19, line: 27, baseType: !1272, size: 320, offset: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !19, line: 27, size: 320, elements: !1273)
!1273 = !{!1274, !1284, !1311}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1272, file: !19, line: 36, baseType: !1275, size: 320)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !19, line: 29, size: 320, elements: !1276)
!1276 = !{!1277, !1279, !1280, !1281, !1282, !1283}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1275, file: !19, line: 30, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1275, file: !19, line: 31, baseType: !361, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !19, line: 32, baseType: !361, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1275, file: !19, line: 33, baseType: !361, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1275, file: !19, line: 34, baseType: !365, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1275, file: !19, line: 35, baseType: !1278, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1272, file: !19, line: 46, baseType: !1285, size: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !19, line: 38, size: 192, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1310}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1285, file: !19, line: 39, baseType: !1199, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1285, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !19, line: 41, baseType: !1290, size: 64, offset: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !19, line: 41, size: 64, elements: !1291)
!1291 = !{!1292, !1300}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1290, file: !19, line: 42, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1295, line: 7, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1294, file: !1295, line: 8, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !254, line: 93, baseType: !476)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1294, file: !1295, line: 9, baseType: !476, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1290, file: !19, line: 43, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1303, line: 7, size: 64, elements: !1304)
!1303 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1309}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1302, file: !1303, line: 8, baseType: !1306, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1303, line: 5, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !150, line: 20, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !152, line: 26, baseType: !205)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1302, file: !1303, line: 9, baseType: !1307, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1285, file: !19, line: 45, baseType: !365, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1272, file: !19, line: 54, baseType: !1312, size: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !19, line: 48, size: 256, elements: !1313)
!1313 = !{!1314, !1317, !1318, !1319, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1312, file: !19, line: 49, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1312, file: !19, line: 50, baseType: !205, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1312, file: !19, line: 51, baseType: !205, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1312, file: !19, line: 52, baseType: !270, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1312, file: !19, line: 53, baseType: !270, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1083, file: !1084, line: 835, baseType: !1322, size: 32, offset: 5120)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !143, line: 22, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !254, line: 28, baseType: !205)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1083, file: !1084, line: 836, baseType: !1322, size: 32, offset: 5152)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1083, file: !1084, line: 840, baseType: !270, size: 64, offset: 5184)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1083, file: !1084, line: 849, baseType: !1082, size: 64, offset: 5248)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1083, file: !1084, line: 852, baseType: !1082, size: 64, offset: 5312)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1083, file: !1084, line: 857, baseType: !166, size: 128, offset: 5376)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1083, file: !1084, line: 858, baseType: !166, size: 128, offset: 5504)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1083, file: !1084, line: 859, baseType: !1082, size: 64, offset: 5632)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1083, file: !1084, line: 867, baseType: !166, size: 128, offset: 5696)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1083, file: !1084, line: 868, baseType: !166, size: 128, offset: 5824)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1083, file: !1084, line: 871, baseType: !1334, size: 64, offset: 5952)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1342, !1343, !1350, !1351}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1335, file: !40, line: 61, baseType: !1095, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1335, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1335, file: !40, line: 63, baseType: !179, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1335, file: !40, line: 65, baseType: !1341, size: 256, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 256, elements: !1021)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1335, file: !40, line: 66, baseType: !581, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1335, file: !40, line: 68, baseType: !1344, size: 128, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1345, line: 40, baseType: !1346)
!1345 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1345, line: 36, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !1345, line: 37, baseType: !179)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1346, file: !1345, line: 38, baseType: !166, size: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1335, file: !40, line: 69, baseType: !311, size: 128, align: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1335, file: !40, line: 70, baseType: !1352, size: 128, offset: 640)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 128, elements: !1234)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1353, file: !40, line: 55, baseType: !205, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1353, file: !40, line: 56, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1083, file: !1084, line: 872, baseType: !1360, size: 512, offset: 6016)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 512, elements: !1021)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1083, file: !1084, line: 873, baseType: !166, size: 128, offset: 6528)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1083, file: !1084, line: 874, baseType: !166, size: 128, offset: 6656)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1083, file: !1084, line: 876, baseType: !1364, size: 64, offset: 6784)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1366, line: 26, size: 192, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1365, file: !1366, line: 27, baseType: !7, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1365, file: !1366, line: 28, baseType: !1370, size: 128, offset: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1371, line: 43, size: 128, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !1371, line: 44, baseType: !726)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1370, file: !1371, line: 45, baseType: !166, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1083, file: !1084, line: 879, baseType: !651, size: 64, offset: 6848)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1083, file: !1084, line: 882, baseType: !651, size: 64, offset: 6912)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1083, file: !1084, line: 884, baseType: !365, size: 64, offset: 6976)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1083, file: !1084, line: 885, baseType: !365, size: 64, offset: 7040)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1083, file: !1084, line: 890, baseType: !365, size: 64, offset: 7104)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1083, file: !1084, line: 891, baseType: !1381, size: 128, offset: 7168)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1084, line: 242, size: 128, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1381, file: !1084, line: 244, baseType: !365, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1381, file: !1084, line: 245, baseType: !365, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !1084, line: 246, baseType: !726, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1083, file: !1084, line: 900, baseType: !270, size: 64, offset: 7296)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1083, file: !1084, line: 901, baseType: !270, size: 64, offset: 7360)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1083, file: !1084, line: 904, baseType: !365, size: 64, offset: 7424)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1083, file: !1084, line: 907, baseType: !365, size: 64, offset: 7488)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1083, file: !1084, line: 910, baseType: !270, size: 64, offset: 7552)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1083, file: !1084, line: 911, baseType: !270, size: 64, offset: 7616)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1083, file: !1084, line: 914, baseType: !1393, size: 640, offset: 7680)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1394, line: 123, size: 640, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !{!1396, !1402, !1403}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1393, file: !1394, line: 124, baseType: !1397, size: 576)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 576, elements: !222)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1394, line: 108, size: 192, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1398, file: !1394, line: 109, baseType: !365, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1398, file: !1394, line: 110, baseType: !1208, size: 128, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1393, file: !1394, line: 125, baseType: !7, size: 32, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1393, file: !1394, line: 126, baseType: !7, size: 32, offset: 608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1083, file: !1084, line: 917, baseType: !1405, size: 192, offset: 8320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1394, line: 134, size: 192, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1405, file: !1394, line: 135, baseType: !311, size: 128, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1405, file: !1394, line: 136, baseType: !7, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1083, file: !1084, line: 923, baseType: !1410, size: 64, offset: 8512)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1413, line: 111, size: 1280, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1434, !1435, !1436, !1437, !1438, !1439, !1546, !1547, !1548, !1549, !1575, !1578, !1588}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1412, file: !1413, line: 112, baseType: !693, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1412, file: !1413, line: 120, baseType: !378, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1412, file: !1413, line: 121, baseType: !386, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1412, file: !1413, line: 122, baseType: !378, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1412, file: !1413, line: 123, baseType: !386, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1412, file: !1413, line: 124, baseType: !378, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1412, file: !1413, line: 125, baseType: !386, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1412, file: !1413, line: 126, baseType: !378, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1412, file: !1413, line: 127, baseType: !386, size: 32, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1412, file: !1413, line: 128, baseType: !7, size: 32, offset: 288)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1412, file: !1413, line: 129, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1427, line: 26, baseType: !1428)
!1427 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1427, line: 24, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1428, file: !1427, line: 25, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 2)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1412, file: !1413, line: 130, baseType: !1426, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1412, file: !1413, line: 131, baseType: !1426, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1412, file: !1413, line: 132, baseType: !1426, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1412, file: !1413, line: 133, baseType: !1426, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1412, file: !1413, line: 135, baseType: !153, size: 8, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1412, file: !1413, line: 137, baseType: !1440, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1442, line: 189, size: 1664, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1445, !1448, !1453, !1454, !1457, !1458, !1463, !1464, !1465, !1466, !1468, !1469, !1470, !1471, !1472, !1510, !1531}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1441, file: !1442, line: 190, baseType: !1095, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1441, file: !1442, line: 191, baseType: !1446, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1442, line: 28, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !143, line: 98, baseType: !1307)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 192, baseType: !1449, size: 192, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 192, size: 192, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1449, file: !1442, line: 193, baseType: !166, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1449, file: !1442, line: 194, baseType: !706, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1441, file: !1442, line: 199, baseType: !713, size: 256, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1441, file: !1442, line: 200, baseType: !1455, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1442, line: 200, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1441, file: !1442, line: 201, baseType: !144, size: 64, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 202, baseType: !1459, size: 64, offset: 640)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 202, size: 64, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1459, file: !1442, line: 203, baseType: !482, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1459, file: !1442, line: 204, baseType: !482, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1441, file: !1442, line: 206, baseType: !482, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1441, file: !1442, line: 207, baseType: !378, size: 32, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1441, file: !1442, line: 208, baseType: !386, size: 32, offset: 800)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1441, file: !1442, line: 209, baseType: !1467, size: 32, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1442, line: 31, baseType: !502)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1441, file: !1442, line: 210, baseType: !262, size: 16, offset: 864)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1441, file: !1442, line: 211, baseType: !262, size: 16, offset: 880)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !1442, line: 215, baseType: !1071, size: 16, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1442, line: 222, baseType: !270, size: 64, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 239, baseType: !1473, size: 320, offset: 1024)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 239, size: 320, elements: !1474)
!1474 = !{!1475, !1502}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1473, file: !1442, line: 240, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1442, line: 108, size: 320, elements: !1477)
!1477 = !{!1478, !1479, !1491, !1494, !1501}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1476, file: !1442, line: 110, baseType: !270, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1442, line: 111, baseType: !1480, size: 64, offset: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1442, line: 111, size: 64, elements: !1481)
!1481 = !{!1482, !1490}
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1442, line: 112, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !1442, line: 112, size: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1483, file: !1442, line: 114, baseType: !805, size: 16)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1483, file: !1442, line: 115, baseType: !1487, size: 48, offset: 16)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 6)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1480, file: !1442, line: 121, baseType: !270, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !1442, line: 123, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1442, line: 96, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1476, file: !1442, line: 124, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1442, line: 102, size: 192, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1496, file: !1442, line: 103, baseType: !311, size: 128, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1496, file: !1442, line: 104, baseType: !1095, size: 32, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1496, file: !1442, line: 105, baseType: !433, size: 8, offset: 160)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1476, file: !1442, line: 125, baseType: !162, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !1442, line: 241, baseType: !1503, size: 320)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1473, file: !1442, line: 241, size: 320, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1503, file: !1442, line: 242, baseType: !270, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1503, file: !1442, line: 243, baseType: !270, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1503, file: !1442, line: 244, baseType: !1492, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1503, file: !1442, line: 245, baseType: !1495, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1503, file: !1442, line: 246, baseType: !221, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 254, baseType: !1511, size: 256, offset: 1344)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 254, size: 256, elements: !1512)
!1512 = !{!1513, !1519}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1511, file: !1442, line: 255, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1442, line: 128, size: 256, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1514, file: !1442, line: 129, baseType: !144, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1514, file: !1442, line: 130, baseType: !1518, size: 256)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !1021)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1442, line: 256, baseType: !1520, size: 256)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1442, line: 256, size: 256, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1520, file: !1442, line: 258, baseType: !166, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1520, file: !1442, line: 259, baseType: !1524, size: 128, offset: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1525, line: 22, size: 128, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1524, file: !1525, line: 23, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1525, line: 23, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1524, file: !1525, line: 24, baseType: !270, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1441, file: !1442, line: 274, baseType: !1532, size: 64, offset: 1600)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1442, line: 170, size: 192, elements: !1534)
!1534 = !{!1535, !1544, !1545}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1533, file: !1442, line: 171, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1442, line: 165, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!205, !1440, !1540, !1542, !1440}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1533, file: !1442, line: 172, baseType: !1440, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1533, file: !1442, line: 173, baseType: !1492, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1412, file: !1413, line: 138, baseType: !1440, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1412, file: !1413, line: 139, baseType: !1440, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1412, file: !1413, line: 140, baseType: !1440, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1412, file: !1413, line: 145, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1552, line: 13, size: 896, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1551, file: !1552, line: 14, baseType: !1095, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1551, file: !1552, line: 15, baseType: !693, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1551, file: !1552, line: 16, baseType: !693, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1551, file: !1552, line: 21, baseType: !717, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1551, file: !1552, line: 27, baseType: !270, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1551, file: !1552, line: 28, baseType: !270, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1551, file: !1552, line: 29, baseType: !717, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1551, file: !1552, line: 32, baseType: !585, size: 128, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !1552, line: 33, baseType: !378, size: 32, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1551, file: !1552, line: 37, baseType: !717, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1551, file: !1552, line: 44, baseType: !1565, size: 256, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1566, line: 15, size: 256, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !1566, line: 16, baseType: !726)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1565, file: !1566, line: 18, baseType: !205, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1565, file: !1566, line: 19, baseType: !205, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1565, file: !1566, line: 20, baseType: !205, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1565, file: !1566, line: 21, baseType: !205, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1565, file: !1566, line: 22, baseType: !270, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1566, line: 23, baseType: !270, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1412, file: !1413, line: 146, baseType: !1576, size: 64, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !669, line: 516, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1412, file: !1413, line: 147, baseType: !1579, size: 64, offset: 1088)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1413, line: 25, size: 64, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1580, file: !1413, line: 26, baseType: !693, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1580, file: !1413, line: 27, baseType: !205, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1580, file: !1413, line: 28, baseType: !1585, offset: 64)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, elements: !1586)
!1586 = !{!1587}
!1587 = !DISubrange(count: 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 149, baseType: !1589, size: 128, offset: 1152)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1413, line: 149, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1589, file: !1413, line: 150, baseType: !205, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1589, file: !1413, line: 151, baseType: !311, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1083, file: !1084, line: 926, baseType: !1410, size: 64, offset: 8576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1083, file: !1084, line: 929, baseType: !1410, size: 64, offset: 8640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1083, file: !1084, line: 933, baseType: !1440, size: 64, offset: 8704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1083, file: !1084, line: 943, baseType: !1597, size: 128, offset: 8768)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 16)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1083, file: !1084, line: 945, baseType: !1601, size: 64, offset: 8896)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1084, line: 49, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1083, file: !1084, line: 956, baseType: !1604, size: 64, offset: 8960)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1084, line: 45, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1083, file: !1084, line: 959, baseType: !1607, size: 64, offset: 9024)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1084, line: 959, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1083, file: !1084, line: 962, baseType: !1610, size: 64, offset: 9088)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1084, line: 66, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1083, file: !1084, line: 966, baseType: !1613, size: 64, offset: 9152)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1084, line: 50, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1083, file: !1084, line: 969, baseType: !1616, size: 64, offset: 9216)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1618, line: 82, size: 7296, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1655, !1664, !1665, !1667, !1668, !1669, !1672, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1702, !1703, !1710, !1711, !1712, !1713, !1714, !1715}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1617, file: !1618, line: 83, baseType: !1095, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1617, file: !1618, line: 84, baseType: !693, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1617, file: !1618, line: 85, baseType: !205, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1617, file: !1618, line: 86, baseType: !166, size: 128, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1617, file: !1618, line: 88, baseType: !1344, size: 128, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1617, file: !1618, line: 91, baseType: !1082, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1617, file: !1618, line: 94, baseType: !1627, size: 192, offset: 448)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1628, line: 30, size: 192, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1627, file: !1628, line: 31, baseType: !166, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1627, file: !1628, line: 32, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1633, line: 25, baseType: !1634)
!1633 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 23, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1634, file: !1633, line: 24, baseType: !1233, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1617, file: !1618, line: 97, baseType: !581, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1617, file: !1618, line: 100, baseType: !205, size: 32, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1617, file: !1618, line: 106, baseType: !205, size: 32, offset: 736)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1617, file: !1618, line: 107, baseType: !1082, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1617, file: !1618, line: 110, baseType: !205, size: 32, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 111, baseType: !7, size: 32, offset: 864)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1617, file: !1618, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1617, file: !1618, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1617, file: !1618, line: 128, baseType: !205, size: 32, offset: 928)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1617, file: !1618, line: 129, baseType: !166, size: 128, offset: 960)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1617, file: !1618, line: 132, baseType: !1157, size: 512, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1617, file: !1618, line: 133, baseType: !1165, size: 64, offset: 1600)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1617, file: !1618, line: 140, baseType: !1650, size: 256, offset: 1664)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 256, elements: !1432)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1618, line: 38, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1651, file: !1618, line: 39, baseType: !365, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1651, file: !1618, line: 40, baseType: !365, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1617, file: !1618, line: 146, baseType: !1656, size: 192, offset: 1920)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1618, line: 66, size: 192, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1656, file: !1618, line: 67, baseType: !1659, size: 192)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1618, line: 47, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1659, file: !1618, line: 48, baseType: !719, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1659, file: !1618, line: 49, baseType: !719, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1659, file: !1618, line: 50, baseType: !719, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1617, file: !1618, line: 150, baseType: !1393, size: 640, offset: 2112)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1617, file: !1618, line: 153, baseType: !1666, size: 256, offset: 2752)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, size: 256, elements: !1021)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1617, file: !1618, line: 159, baseType: !1334, size: 64, offset: 3008)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1617, file: !1618, line: 162, baseType: !205, size: 32, offset: 3072)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1617, file: !1618, line: 164, baseType: !1670, size: 64, offset: 3136)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1618, line: 164, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1617, file: !1618, line: 175, baseType: !1673, size: 32, offset: 3200)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !334, line: 805, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 798, size: 32, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1674, file: !334, line: 803, baseType: !333, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1674, file: !334, line: 804, baseType: !179, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1617, file: !1618, line: 176, baseType: !365, size: 64, offset: 3264)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1617, file: !1618, line: 176, baseType: !365, size: 64, offset: 3328)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1617, file: !1618, line: 176, baseType: !365, size: 64, offset: 3392)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1617, file: !1618, line: 176, baseType: !365, size: 64, offset: 3456)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1617, file: !1618, line: 177, baseType: !365, size: 64, offset: 3520)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1617, file: !1618, line: 178, baseType: !365, size: 64, offset: 3584)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1617, file: !1618, line: 179, baseType: !1381, size: 128, offset: 3648)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1617, file: !1618, line: 180, baseType: !270, size: 64, offset: 3776)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1617, file: !1618, line: 180, baseType: !270, size: 64, offset: 3840)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1617, file: !1618, line: 180, baseType: !270, size: 64, offset: 3904)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1617, file: !1618, line: 180, baseType: !270, size: 64, offset: 3968)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1617, file: !1618, line: 181, baseType: !270, size: 64, offset: 4032)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1617, file: !1618, line: 181, baseType: !270, size: 64, offset: 4096)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1617, file: !1618, line: 181, baseType: !270, size: 64, offset: 4160)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1617, file: !1618, line: 181, baseType: !270, size: 64, offset: 4224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1617, file: !1618, line: 182, baseType: !270, size: 64, offset: 4288)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1617, file: !1618, line: 182, baseType: !270, size: 64, offset: 4352)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1617, file: !1618, line: 182, baseType: !270, size: 64, offset: 4416)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1617, file: !1618, line: 182, baseType: !270, size: 64, offset: 4480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1617, file: !1618, line: 183, baseType: !270, size: 64, offset: 4544)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1617, file: !1618, line: 183, baseType: !270, size: 64, offset: 4608)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1617, file: !1618, line: 184, baseType: !1700, offset: 4672)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1701, line: 12, elements: !193)
!1701 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1617, file: !1618, line: 192, baseType: !367, size: 64, offset: 4672)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1617, file: !1618, line: 203, baseType: !1704, size: 2048, offset: 4736)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 2048, elements: !1598)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1706, line: 43, size: 128, elements: !1707)
!1706 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1705, file: !1706, line: 44, baseType: !269, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1705, file: !1706, line: 45, baseType: !269, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1617, file: !1618, line: 220, baseType: !433, size: 8, offset: 6784)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1617, file: !1618, line: 221, baseType: !1071, size: 16, offset: 6800)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1617, file: !1618, line: 222, baseType: !1071, size: 16, offset: 6816)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1617, file: !1618, line: 224, baseType: !920, size: 64, offset: 6848)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1617, file: !1618, line: 227, baseType: !1039, size: 192, offset: 6912)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1617, file: !1618, line: 233, baseType: !1039, size: 192, offset: 7104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1083, file: !1084, line: 970, baseType: !1717, size: 64, offset: 9280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1618, line: 20, size: 16576, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1718, file: !1618, line: 21, baseType: !179)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1718, file: !1618, line: 22, baseType: !1095, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1718, file: !1618, line: 23, baseType: !1344, size: 128, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1718, file: !1618, line: 24, baseType: !1724, size: 16384, offset: 192)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, size: 16384, elements: !226)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1628, line: 49, size: 256, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1725, file: !1628, line: 50, baseType: !1728, size: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1628, line: 35, size: 256, elements: !1729)
!1729 = !{!1730, !1737, !1738, !1744}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1728, file: !1628, line: 37, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1732, line: 19, baseType: !1733)
!1732 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1732, line: 18, baseType: !1735)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !205}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1728, file: !1628, line: 38, baseType: !270, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1728, file: !1628, line: 44, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1732, line: 22, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1732, line: 21, baseType: !1742)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1728, file: !1628, line: 46, baseType: !1632, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1083, file: !1084, line: 971, baseType: !1632, size: 64, offset: 9344)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1083, file: !1084, line: 972, baseType: !1632, size: 64, offset: 9408)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1083, file: !1084, line: 974, baseType: !1632, size: 64, offset: 9472)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1083, file: !1084, line: 975, baseType: !1627, size: 192, offset: 9536)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1083, file: !1084, line: 976, baseType: !270, size: 64, offset: 9728)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1083, file: !1084, line: 977, baseType: !267, size: 64, offset: 9792)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1083, file: !1084, line: 978, baseType: !7, size: 32, offset: 9856)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1083, file: !1084, line: 980, baseType: !314, size: 64, offset: 9920)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1083, file: !1084, line: 989, baseType: !1754, size: 128, offset: 9984)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1755, line: 35, size: 128, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1754, file: !1755, line: 36, baseType: !205, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1754, file: !1755, line: 37, baseType: !693, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1754, file: !1755, line: 38, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1755, line: 23, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1083, file: !1084, line: 992, baseType: !365, size: 64, offset: 10112)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1083, file: !1084, line: 993, baseType: !365, size: 64, offset: 10176)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1083, file: !1084, line: 996, baseType: !179, offset: 10240)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1083, file: !1084, line: 999, baseType: !726, offset: 10240)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1083, file: !1084, line: 1001, baseType: !1767, size: 64, offset: 10240)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1084, line: 636, size: 64, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1767, file: !1084, line: 637, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1083, file: !1084, line: 1005, baseType: !698, size: 128, offset: 10304)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1083, file: !1084, line: 1007, baseType: !1082, size: 64, offset: 10432)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1083, file: !1084, line: 1009, baseType: !1774, size: 64, offset: 10496)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1084, line: 1009, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1083, file: !1084, line: 1043, baseType: !144, size: 64, offset: 10560)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1083, file: !1084, line: 1046, baseType: !1778, size: 64, offset: 10624)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1084, line: 41, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1083, file: !1084, line: 1050, baseType: !1781, size: 64, offset: 10688)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1084, line: 42, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1083, file: !1084, line: 1054, baseType: !1784, size: 64, offset: 10752)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1084, line: 55, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1083, file: !1084, line: 1056, baseType: !1787, size: 64, offset: 10816)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1084, line: 40, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1083, file: !1084, line: 1058, baseType: !1790, size: 64, offset: 10880)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1792, line: 99, size: 704, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1819, !1820}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1791, file: !1792, line: 100, baseType: !717, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1791, file: !1792, line: 101, baseType: !693, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1791, file: !1792, line: 102, baseType: !693, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1791, file: !1792, line: 105, baseType: !179, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1791, file: !1792, line: 107, baseType: !262, size: 16, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1791, file: !1792, line: 109, baseType: !685, size: 128, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1791, file: !1792, line: 110, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1792, line: 73, size: 448, elements: !1803)
!1803 = !{!1804, !1807, !1808, !1813, !1818}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1802, file: !1792, line: 74, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1792, line: 74, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1802, file: !1792, line: 75, baseType: !1790, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1792, line: 83, baseType: !1809, size: 128, offset: 128)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1792, line: 83, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1809, file: !1792, line: 84, baseType: !166, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1809, file: !1792, line: 85, baseType: !881, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1792, line: 87, baseType: !1814, size: 128, offset: 256)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1792, line: 87, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1814, file: !1792, line: 88, baseType: !585, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1814, file: !1792, line: 89, baseType: !311, size: 128, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !1792, line: 92, baseType: !7, size: 32, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1791, file: !1792, line: 111, baseType: !581, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1791, file: !1792, line: 113, baseType: !1821, size: 256, offset: 448)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1822, line: 102, size: 256, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1821, file: !1822, line: 103, baseType: !717, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1821, file: !1822, line: 104, baseType: !166, size: 128, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1821, file: !1822, line: 105, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1822, line: 21, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1083, file: !1084, line: 1061, baseType: !1833, size: 64, offset: 10944)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1084, line: 43, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1083, file: !1084, line: 1064, baseType: !270, size: 64, offset: 11008)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1083, file: !1084, line: 1065, baseType: !1837, size: 64, offset: 11072)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1628, line: 14, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1628, line: 12, size: 384, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !1628, line: 13, baseType: !1842, size: 384)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !1628, line: 13, size: 384, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1842, file: !1628, line: 13, baseType: !205, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1842, file: !1628, line: 13, baseType: !205, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1842, file: !1628, line: 13, baseType: !205, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1842, file: !1628, line: 13, baseType: !1848, size: 256, offset: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1849, line: 32, size: 256, elements: !1850)
!1849 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1856, !1869, !1875, !1884, !1904, !1909}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1848, file: !1849, line: 37, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 34, size: 64, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1852, file: !1849, line: 35, baseType: !1323, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1852, file: !1849, line: 36, baseType: !384, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1848, file: !1849, line: 45, baseType: !1857, size: 192)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 40, size: 192, elements: !1858)
!1858 = !{!1859, !1861, !1862, !1868}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1857, file: !1849, line: 41, baseType: !1860, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !254, line: 95, baseType: !205)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1857, file: !1849, line: 42, baseType: !205, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1857, file: !1849, line: 43, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1849, line: 11, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1849, line: 8, size: 64, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1864, file: !1849, line: 9, baseType: !205, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1864, file: !1849, line: 10, baseType: !144, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1857, file: !1849, line: 44, baseType: !205, size: 32, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1848, file: !1849, line: 52, baseType: !1870, size: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 48, size: 128, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1870, file: !1849, line: 49, baseType: !1323, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1870, file: !1849, line: 50, baseType: !384, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1870, file: !1849, line: 51, baseType: !1863, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1848, file: !1849, line: 61, baseType: !1876, size: 256)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 55, size: 256, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1883}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1876, file: !1849, line: 56, baseType: !1323, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1876, file: !1849, line: 57, baseType: !384, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1876, file: !1849, line: 58, baseType: !205, size: 32, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1876, file: !1849, line: 59, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !254, line: 94, baseType: !255)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1876, file: !1849, line: 60, baseType: !1882, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1848, file: !1849, line: 95, baseType: !1885, size: 256)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 64, size: 256, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1885, file: !1849, line: 65, baseType: !144, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1849, line: 77, baseType: !1889, size: 192, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1849, line: 77, size: 192, elements: !1890)
!1890 = !{!1891, !1892, !1899}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1889, file: !1849, line: 82, baseType: !1071, size: 16)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1889, file: !1849, line: 88, baseType: !1893, size: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !1849, line: 84, size: 192, elements: !1894)
!1894 = !{!1895, !1897, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1893, file: !1849, line: 85, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !1195)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1893, file: !1849, line: 86, baseType: !144, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1893, file: !1849, line: 87, baseType: !144, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1889, file: !1849, line: 93, baseType: !1900, size: 96)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !1849, line: 90, size: 96, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1900, file: !1849, line: 91, baseType: !1896, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1900, file: !1849, line: 92, baseType: !362, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1848, file: !1849, line: 101, baseType: !1905, size: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 98, size: 128, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1905, file: !1849, line: 99, baseType: !147, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1905, file: !1849, line: 100, baseType: !205, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1848, file: !1849, line: 108, baseType: !1910, size: 128)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 104, size: 128, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1910, file: !1849, line: 105, baseType: !144, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1910, file: !1849, line: 106, baseType: !205, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1910, file: !1849, line: 107, baseType: !7, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1083, file: !1084, line: 1067, baseType: !1700, offset: 11136)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1083, file: !1084, line: 1099, baseType: !1917, size: 64, offset: 11136)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1084, line: 56, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1083, file: !1084, line: 1103, baseType: !166, size: 128, offset: 11200)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1083, file: !1084, line: 1104, baseType: !1921, size: 64, offset: 11328)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1084, line: 46, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1083, file: !1084, line: 1105, baseType: !1039, size: 192, offset: 11392)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1083, file: !1084, line: 1106, baseType: !7, size: 32, offset: 11584)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1083, file: !1084, line: 1109, baseType: !1926, size: 128, offset: 11648)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1927, size: 128, elements: !1432)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1084, line: 51, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1083, file: !1084, line: 1110, baseType: !1039, size: 192, offset: 11776)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1083, file: !1084, line: 1111, baseType: !166, size: 128, offset: 11968)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1083, file: !1084, line: 1173, baseType: !1932, size: 64, offset: 12096)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1934, line: 62, size: 256, align: 256, elements: !1935)
!1934 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937, !1938, !1943}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1933, file: !1934, line: 75, baseType: !362, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1933, file: !1934, line: 90, baseType: !362, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1933, file: !1934, line: 124, baseType: !1939, size: 64, offset: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1934, line: 109, size: 64, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1939, file: !1934, line: 110, baseType: !366, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1939, file: !1934, line: 112, baseType: !366, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !1934, line: 144, baseType: !362, size: 32, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1083, file: !1084, line: 1174, baseType: !361, size: 32, offset: 12160)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1083, file: !1084, line: 1179, baseType: !270, size: 64, offset: 12224)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1083, file: !1084, line: 1182, baseType: !1947, size: 128, offset: 12288)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1017, line: 76, size: 128, elements: !1948)
!1948 = !{!1949, !1954, !1955}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1947, file: !1017, line: 85, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1951, line: 7, size: 64, elements: !1952)
!1951 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1950, file: !1951, line: 12, baseType: !1230, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1947, file: !1017, line: 88, baseType: !433, size: 8, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1947, file: !1017, line: 95, baseType: !433, size: 8, offset: 72)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !1084, line: 1184, baseType: !1957, size: 128, offset: 12416)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !1084, line: 1184, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1957, file: !1084, line: 1185, baseType: !1095, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1957, file: !1084, line: 1186, baseType: !311, size: 128, align: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1083, file: !1084, line: 1190, baseType: !1962, size: 64, offset: 12544)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1084, line: 53, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1083, file: !1084, line: 1192, baseType: !1965, size: 128, offset: 12608)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1017, line: 64, size: 128, elements: !1966)
!1966 = !{!1967, !1968, !1969}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1965, file: !1017, line: 65, baseType: !667, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1965, file: !1017, line: 67, baseType: !362, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1965, file: !1017, line: 68, baseType: !362, size: 32, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1083, file: !1084, line: 1206, baseType: !205, size: 32, offset: 12736)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1083, file: !1084, line: 1207, baseType: !205, size: 32, offset: 12768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1083, file: !1084, line: 1209, baseType: !270, size: 64, offset: 12800)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1083, file: !1084, line: 1219, baseType: !365, size: 64, offset: 12864)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1083, file: !1084, line: 1220, baseType: !365, size: 64, offset: 12928)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1083, file: !1084, line: 1317, baseType: !205, size: 32, offset: 12992)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1083, file: !1084, line: 1319, baseType: !1082, size: 64, offset: 13056)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1083, file: !1084, line: 1322, baseType: !1978, size: 64, offset: 13120)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1980, line: 9, flags: DIFlagFwdDecl)
!1980 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1083, file: !1084, line: 1326, baseType: !1095, size: 32, offset: 13184)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1083, file: !1084, line: 1342, baseType: !144, size: 64, offset: 13248)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1083, file: !1084, line: 1343, baseType: !366, size: 64, offset: 13312)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1083, file: !1084, line: 1344, baseType: !365, size: 64, offset: 13376)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1083, file: !1084, line: 1345, baseType: !366, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1083, file: !1084, line: 1346, baseType: !366, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1083, file: !1084, line: 1347, baseType: !366, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1083, file: !1084, line: 1348, baseType: !311, size: 128, align: 64, offset: 13504)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1083, file: !1084, line: 1358, baseType: !1990, size: 34816, offset: 13824)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1991, line: 485, size: 34816, elements: !1992)
!1991 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !{!1993, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2022, !2023, !2024, !2025, !2026, !2027, !2030, !2031, !2032}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1990, file: !1991, line: 487, baseType: !1994, size: 192)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 192, elements: !222)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1996, line: 16, size: 64, elements: !1997)
!1996 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1995, file: !1996, line: 17, baseType: !805, size: 16)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1995, file: !1996, line: 18, baseType: !805, size: 16, offset: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1995, file: !1996, line: 19, baseType: !805, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1995, file: !1996, line: 19, baseType: !805, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1995, file: !1996, line: 19, baseType: !805, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1995, file: !1996, line: 19, baseType: !805, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1995, file: !1996, line: 19, baseType: !805, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1995, file: !1996, line: 20, baseType: !805, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1995, file: !1996, line: 20, baseType: !805, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1995, file: !1996, line: 20, baseType: !805, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1995, file: !1996, line: 20, baseType: !805, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1995, file: !1996, line: 20, baseType: !805, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1995, file: !1996, line: 20, baseType: !805, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1990, file: !1991, line: 491, baseType: !270, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1990, file: !1991, line: 495, baseType: !262, size: 16, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1990, file: !1991, line: 496, baseType: !262, size: 16, offset: 272)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1990, file: !1991, line: 497, baseType: !262, size: 16, offset: 288)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1990, file: !1991, line: 498, baseType: !262, size: 16, offset: 304)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1990, file: !1991, line: 502, baseType: !270, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1990, file: !1991, line: 503, baseType: !270, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1990, file: !1991, line: 514, baseType: !2019, size: 256, offset: 448)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 256, elements: !1021)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1991, line: 483, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1990, file: !1991, line: 516, baseType: !270, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1990, file: !1991, line: 518, baseType: !270, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1990, file: !1991, line: 520, baseType: !270, size: 64, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1990, file: !1991, line: 521, baseType: !270, size: 64, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1990, file: !1991, line: 522, baseType: !270, size: 64, offset: 960)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1990, file: !1991, line: 528, baseType: !2028, size: 64, offset: 1024)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1991, line: 10, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1990, file: !1991, line: 535, baseType: !270, size: 64, offset: 1088)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1990, file: !1991, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1990, file: !1991, line: 540, baseType: !2033, size: 33280, offset: 1536)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2034, line: 317, size: 33280, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2033, file: !2034, line: 330, baseType: !7, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2033, file: !2034, line: 337, baseType: !270, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2033, file: !2034, line: 348, baseType: !2039, size: 32768, offset: 512)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2034, line: 304, size: 32768, elements: !2040)
!2040 = !{!2041, !2056, !2095, !2145, !2158}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2039, file: !2034, line: 305, baseType: !2042, size: 896)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2034, line: 12, size: 896, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2055}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2042, file: !2034, line: 13, baseType: !361, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2042, file: !2034, line: 14, baseType: !361, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2042, file: !2034, line: 15, baseType: !361, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2042, file: !2034, line: 16, baseType: !361, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2042, file: !2034, line: 17, baseType: !361, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2042, file: !2034, line: 18, baseType: !361, size: 32, offset: 160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2042, file: !2034, line: 19, baseType: !361, size: 32, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2042, file: !2034, line: 22, baseType: !2052, size: 640, offset: 224)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 640, elements: !2053)
!2053 = !{!2054}
!2054 = !DISubrange(count: 20)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2042, file: !2034, line: 25, baseType: !361, size: 32, offset: 864)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2039, file: !2034, line: 306, baseType: !2057, size: 4096, align: 128)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2034, line: 34, size: 4096, align: 128, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2078, !2079, !2080, !2084, !2086, !2090}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2057, file: !2034, line: 35, baseType: !805, size: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2057, file: !2034, line: 36, baseType: !805, size: 16, offset: 16)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2057, file: !2034, line: 37, baseType: !805, size: 16, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2057, file: !2034, line: 38, baseType: !805, size: 16, offset: 48)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2034, line: 39, baseType: !2064, size: 128, offset: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2034, line: 39, size: 128, elements: !2065)
!2065 = !{!2066, !2071}
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2034, line: 40, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2034, line: 40, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2067, file: !2034, line: 41, baseType: !365, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2067, file: !2034, line: 42, baseType: !365, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2034, line: 44, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2034, line: 44, size: 128, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2072, file: !2034, line: 45, baseType: !361, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2072, file: !2034, line: 46, baseType: !361, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2072, file: !2034, line: 47, baseType: !361, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2072, file: !2034, line: 48, baseType: !361, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2057, file: !2034, line: 51, baseType: !361, size: 32, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2057, file: !2034, line: 52, baseType: !361, size: 32, offset: 224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2057, file: !2034, line: 55, baseType: !2081, size: 1024, offset: 256)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 1024, elements: !2082)
!2082 = !{!2083}
!2083 = !DISubrange(count: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2057, file: !2034, line: 58, baseType: !2085, size: 2048, offset: 1280)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 2048, elements: !226)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2057, file: !2034, line: 60, baseType: !2087, size: 384, offset: 3328)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 384, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 12)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2034, line: 62, baseType: !2091, size: 384, offset: 3712)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2034, line: 62, size: 384, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2091, file: !2034, line: 63, baseType: !2087, size: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2091, file: !2034, line: 64, baseType: !2087, size: 384)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2039, file: !2034, line: 307, baseType: !2096, size: 1088)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2034, line: 79, size: 1088, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2144}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2096, file: !2034, line: 80, baseType: !361, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2096, file: !2034, line: 81, baseType: !361, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2096, file: !2034, line: 82, baseType: !361, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2096, file: !2034, line: 83, baseType: !361, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2096, file: !2034, line: 84, baseType: !361, size: 32, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2096, file: !2034, line: 85, baseType: !361, size: 32, offset: 160)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2096, file: !2034, line: 86, baseType: !361, size: 32, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2096, file: !2034, line: 88, baseType: !2052, size: 640, offset: 224)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2096, file: !2034, line: 89, baseType: !149, size: 8, offset: 864)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2096, file: !2034, line: 90, baseType: !149, size: 8, offset: 872)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2096, file: !2034, line: 91, baseType: !149, size: 8, offset: 880)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2096, file: !2034, line: 92, baseType: !149, size: 8, offset: 888)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2096, file: !2034, line: 93, baseType: !149, size: 8, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2096, file: !2034, line: 94, baseType: !149, size: 8, offset: 904)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2096, file: !2034, line: 95, baseType: !2113, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2115, line: 11, size: 128, elements: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2114, file: !2115, line: 12, baseType: !147, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2114, file: !2115, line: 13, baseType: !2119, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2121, line: 56, size: 1344, elements: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2120, file: !2121, line: 61, baseType: !270, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2120, file: !2121, line: 62, baseType: !270, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2120, file: !2121, line: 63, baseType: !270, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2120, file: !2121, line: 64, baseType: !270, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2120, file: !2121, line: 65, baseType: !270, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2120, file: !2121, line: 66, baseType: !270, size: 64, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2120, file: !2121, line: 68, baseType: !270, size: 64, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2120, file: !2121, line: 69, baseType: !270, size: 64, offset: 448)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2120, file: !2121, line: 70, baseType: !270, size: 64, offset: 512)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2120, file: !2121, line: 71, baseType: !270, size: 64, offset: 576)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2120, file: !2121, line: 72, baseType: !270, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2120, file: !2121, line: 73, baseType: !270, size: 64, offset: 704)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2120, file: !2121, line: 74, baseType: !270, size: 64, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2120, file: !2121, line: 75, baseType: !270, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2120, file: !2121, line: 76, baseType: !270, size: 64, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2120, file: !2121, line: 81, baseType: !270, size: 64, offset: 960)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2120, file: !2121, line: 83, baseType: !270, size: 64, offset: 1024)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2120, file: !2121, line: 84, baseType: !270, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 85, baseType: !270, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2120, file: !2121, line: 86, baseType: !270, size: 64, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2120, file: !2121, line: 87, baseType: !270, size: 64, offset: 1280)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2096, file: !2034, line: 96, baseType: !361, size: 32, offset: 1024)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2039, file: !2034, line: 308, baseType: !2146, size: 4608, align: 512)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2034, line: 289, size: 4608, align: 512, elements: !2147)
!2147 = !{!2148, !2149, !2156}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2146, file: !2034, line: 290, baseType: !2057, size: 4096, align: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2146, file: !2034, line: 291, baseType: !2150, size: 512, offset: 4096)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2034, line: 268, size: 512, elements: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2150, file: !2034, line: 269, baseType: !365, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2150, file: !2034, line: 270, baseType: !365, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2150, file: !2034, line: 271, baseType: !2155, size: 384, offset: 128)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 384, elements: !1488)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2146, file: !2034, line: 292, baseType: !2157, offset: 4608)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !1586)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2039, file: !2034, line: 309, baseType: !2159, size: 32768)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 32768, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 4096)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !669, line: 378, baseType: !2163, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1075, file: !669, line: 384, baseType: !1365, size: 192, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !924, file: !669, line: 500, baseType: !179, offset: 6656)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !924, file: !669, line: 501, baseType: !2167, size: 64, offset: 6656)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !669, line: 387, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !924, file: !669, line: 516, baseType: !1576, size: 64, offset: 6720)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !924, file: !669, line: 519, baseType: !298, size: 64, offset: 6784)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !924, file: !669, line: 521, baseType: !2172, size: 64, offset: 6848)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !669, line: 521, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !924, file: !669, line: 545, baseType: !693, size: 32, offset: 6912)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !924, file: !669, line: 548, baseType: !433, size: 8, offset: 6944)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !924, file: !669, line: 550, baseType: !2177, offset: 6952)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2178, line: 142, elements: !193)
!2178 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !924, file: !669, line: 554, baseType: !1821, size: 256, offset: 6976)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !924, file: !669, line: 557, baseType: !361, size: 32, offset: 7232)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !921, file: !669, line: 565, baseType: !2182, offset: 7296)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, elements: !2183)
!2183 = !{!2184}
!2184 = !DISubrange(count: -1)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !917, file: !669, line: 151, baseType: !693, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !910, file: !669, line: 156, baseType: !179, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 159, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 159, size: 128, elements: !2189)
!2189 = !{!2190, !2193}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2188, file: !669, line: 161, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !669, line: 161, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2188, file: !669, line: 162, baseType: !144, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !673, file: !669, line: 176, baseType: !311, size: 128, align: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !669, line: 179, baseType: !2196, size: 32, offset: 384)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !669, line: 179, size: 32, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2196, file: !669, line: 184, baseType: !693, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2196, file: !669, line: 192, baseType: !7, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2196, file: !669, line: 194, baseType: !7, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2196, file: !669, line: 195, baseType: !205, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !668, file: !669, line: 199, baseType: !693, size: 32, offset: 416)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !603, file: !31, line: 1964, baseType: !2204, size: 64, offset: 1344)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!147, !542, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2209, line: 12, size: 256, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !{!2211, !2212, !2213, !2214, !2215}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2208, file: !2209, line: 13, baseType: !142, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2208, file: !2209, line: 16, baseType: !205, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2208, file: !2209, line: 23, baseType: !270, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2208, file: !2209, line: 30, baseType: !270, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2208, file: !2209, line: 33, baseType: !2216, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !669, line: 27, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !603, file: !31, line: 1966, baseType: !2204, size: 64, offset: 1408)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !543, file: !31, line: 1424, baseType: !2220, size: 64, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2223)
!2223 = !{!2224, !2270, !2274, !2278, !2279, !2280, !2281, !2282, !2287, !2292, !2296}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2222, file: !25, line: 323, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!205, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2255, !2256, !2257}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2229, file: !25, line: 295, baseType: !585, size: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2229, file: !25, line: 296, baseType: !166, size: 128, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2229, file: !25, line: 297, baseType: !166, size: 128, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2229, file: !25, line: 298, baseType: !166, size: 128, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2229, file: !25, line: 299, baseType: !1039, size: 192, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2229, file: !25, line: 300, baseType: !179, offset: 704)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2229, file: !25, line: 301, baseType: !693, size: 32, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2229, file: !25, line: 302, baseType: !542, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2229, file: !25, line: 303, baseType: !2240, size: 64, offset: 832)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2241)
!2241 = !{!2242, !2254}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !25, line: 69, baseType: !2243, size: 32)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2240, file: !25, line: 69, size: 32, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2243, file: !25, line: 70, baseType: !378, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2243, file: !25, line: 71, baseType: !386, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2243, file: !25, line: 72, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2249, line: 24, baseType: !2250)
!2249 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2249, line: 22, size: 32, elements: !2251)
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2250, file: !2249, line: 23, baseType: !2253, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2249, line: 20, baseType: !384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2229, file: !25, line: 304, baseType: !474, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2229, file: !25, line: 305, baseType: !270, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2229, file: !25, line: 306, baseType: !2258, size: 576, offset: 1024)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2259)
!2259 = !{!2260, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2258, file: !25, line: 206, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !476)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2258, file: !25, line: 207, baseType: !2261, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2258, file: !25, line: 208, baseType: !2261, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2258, file: !25, line: 209, baseType: !2261, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2258, file: !25, line: 210, baseType: !2261, size: 64, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2258, file: !25, line: 211, baseType: !2261, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2258, file: !25, line: 212, baseType: !2261, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2258, file: !25, line: 213, baseType: !482, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2258, file: !25, line: 214, baseType: !482, size: 64, offset: 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2222, file: !25, line: 324, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2228, !542, !205}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2222, file: !25, line: 325, baseType: !2275, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !2228}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2222, file: !25, line: 326, baseType: !2225, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2222, file: !25, line: 327, baseType: !2225, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2222, file: !25, line: 328, baseType: !2225, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2222, file: !25, line: 329, baseType: !631, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2222, file: !25, line: 332, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2286, !372}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2222, file: !25, line: 333, baseType: !2288, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!205, !372, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2222, file: !25, line: 335, baseType: !2293, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!205, !372, !2286}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2222, file: !25, line: 337, baseType: !2297, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!205, !542, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !543, file: !31, line: 1425, baseType: !2302, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2305)
!2305 = !{!2306, !2310, !2311, !2315, !2316, !2317, !2332, !2355, !2359, !2360, !2383}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2304, file: !25, line: 429, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!205, !542, !205, !205, !492}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2304, file: !25, line: 430, baseType: !631, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2304, file: !25, line: 431, baseType: !2312, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!205, !542, !7}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2304, file: !25, line: 432, baseType: !2312, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2304, file: !25, line: 433, baseType: !631, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2304, file: !25, line: 434, baseType: !2318, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!205, !542, !205, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2322, file: !25, line: 416, baseType: !205, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2322, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2322, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2322, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2322, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2322, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2322, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2322, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2304, file: !25, line: 435, baseType: !2333, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!205, !542, !2240, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2337, file: !25, line: 344, baseType: !205, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2337, file: !25, line: 345, baseType: !365, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2337, file: !25, line: 346, baseType: !365, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2337, file: !25, line: 347, baseType: !365, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2337, file: !25, line: 348, baseType: !365, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2337, file: !25, line: 349, baseType: !365, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2337, file: !25, line: 350, baseType: !365, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2337, file: !25, line: 351, baseType: !723, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2337, file: !25, line: 353, baseType: !723, size: 64, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2337, file: !25, line: 354, baseType: !205, size: 32, offset: 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2337, file: !25, line: 355, baseType: !205, size: 32, offset: 608)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2337, file: !25, line: 356, baseType: !365, size: 64, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2337, file: !25, line: 357, baseType: !365, size: 64, offset: 704)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2337, file: !25, line: 358, baseType: !365, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2337, file: !25, line: 359, baseType: !723, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2337, file: !25, line: 360, baseType: !205, size: 32, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2304, file: !25, line: 436, baseType: !2356, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!205, !542, !2300, !2336}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2304, file: !25, line: 438, baseType: !2333, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2304, file: !25, line: 439, baseType: !2361, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!205, !542, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2365, file: !25, line: 410, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2365, file: !25, line: 411, baseType: !2369, size: 1344, offset: 64)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2370, size: 1344, elements: !222)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2382}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2370, file: !25, line: 396, baseType: !7, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2370, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2370, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2370, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2370, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2370, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2370, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2370, file: !25, line: 404, baseType: !367, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2370, file: !25, line: 405, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !143, line: 126, baseType: !365)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2370, file: !25, line: 406, baseType: !2381, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2304, file: !25, line: 440, baseType: !2312, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !543, file: !31, line: 1426, baseType: !2385, size: 64, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !543, file: !31, line: 1427, baseType: !270, size: 64, offset: 640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !543, file: !31, line: 1428, baseType: !270, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !543, file: !31, line: 1429, baseType: !270, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !543, file: !31, line: 1430, baseType: !328, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !543, file: !31, line: 1431, baseType: !713, size: 256, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !543, file: !31, line: 1432, baseType: !205, size: 32, offset: 1152)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !543, file: !31, line: 1433, baseType: !693, size: 32, offset: 1184)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !543, file: !31, line: 1437, baseType: !2396, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !543, file: !31, line: 1449, baseType: !2401, size: 64, offset: 1280)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !344, line: 34, size: 64, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2401, file: !344, line: 35, baseType: !347, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !543, file: !31, line: 1450, baseType: !166, size: 128, offset: 1344)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !543, file: !31, line: 1451, baseType: !2406, size: 64, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !543, file: !31, line: 1452, baseType: !1787, size: 64, offset: 1536)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !543, file: !31, line: 1453, baseType: !2410, size: 64, offset: 1600)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !543, file: !31, line: 1454, baseType: !585, size: 128, offset: 1664)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !543, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !543, file: !31, line: 1456, baseType: !2415, size: 2432, offset: 1856)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2421, !2453}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !25, line: 519, baseType: !7, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2415, file: !25, line: 520, baseType: !713, size: 256, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2415, file: !25, line: 521, baseType: !2420, size: 192, offset: 320)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !222)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2415, file: !25, line: 522, baseType: !2422, size: 1728, offset: 512)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 1728, elements: !222)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2424)
!2424 = !{!2425, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2423, file: !25, line: 223, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2428)
!2428 = !{!2429, !2430, !2443, !2444}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2427, file: !25, line: 444, baseType: !205, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2427, file: !25, line: 445, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2433, file: !25, line: 311, baseType: !631, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2433, file: !25, line: 312, baseType: !631, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2433, file: !25, line: 313, baseType: !631, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2433, file: !25, line: 314, baseType: !631, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2433, file: !25, line: 315, baseType: !2225, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2433, file: !25, line: 316, baseType: !2225, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2433, file: !25, line: 317, baseType: !2225, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2433, file: !25, line: 318, baseType: !2297, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2427, file: !25, line: 446, baseType: !576, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2427, file: !25, line: 447, baseType: !2426, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2423, file: !25, line: 224, baseType: !205, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2423, file: !25, line: 226, baseType: !166, size: 128, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2423, file: !25, line: 227, baseType: !270, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2423, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2423, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2423, file: !25, line: 230, baseType: !2261, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2423, file: !25, line: 231, baseType: !2261, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2423, file: !25, line: 232, baseType: !144, size: 64, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2415, file: !25, line: 523, baseType: !2454, size: 192, offset: 2240)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 192, elements: !222)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !543, file: !31, line: 1458, baseType: !2456, size: 2112, offset: 4288)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2457)
!2457 = !{!2458, !2459, !2460}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2456, file: !31, line: 1411, baseType: !205, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2456, file: !31, line: 1412, baseType: !1344, size: 128, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2456, file: !31, line: 1413, baseType: !2461, size: 1920, offset: 192)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2462, size: 1920, elements: !222)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2463, line: 12, size: 640, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2473, !2475, !2480, !2481}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2462, file: !2463, line: 13, baseType: !2466, size: 320)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2467, line: 17, size: 320, elements: !2468)
!2467 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2466, file: !2467, line: 18, baseType: !205, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2466, file: !2467, line: 19, baseType: !205, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2466, file: !2467, line: 20, baseType: !1344, size: 128, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2466, file: !2467, line: 22, baseType: !311, size: 128, align: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2462, file: !2463, line: 14, baseType: !2474, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2462, file: !2463, line: 15, baseType: !2476, size: 64, offset: 384)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2477, line: 16, size: 64, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2476, file: !2477, line: 17, baseType: !1082, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2462, file: !2463, line: 16, baseType: !1344, size: 128, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2462, file: !2463, line: 17, baseType: !693, size: 32, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !543, file: !31, line: 1465, baseType: !144, size: 64, offset: 6400)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !543, file: !31, line: 1468, baseType: !361, size: 32, offset: 6464)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !543, file: !31, line: 1470, baseType: !482, size: 64, offset: 6528)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !543, file: !31, line: 1471, baseType: !482, size: 64, offset: 6592)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !543, file: !31, line: 1473, baseType: !362, size: 32, offset: 6656)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !543, file: !31, line: 1474, baseType: !2488, size: 64, offset: 6720)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !543, file: !31, line: 1477, baseType: !2491, size: 256, offset: 6784)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !2082)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !543, file: !31, line: 1478, baseType: !2493, size: 128, offset: 7040)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2494, line: 18, baseType: !2495)
!2494 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2494, line: 16, size: 128, elements: !2496)
!2496 = !{!2497}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2495, file: !2494, line: 17, baseType: !2498, size: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !1598)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !543, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !543, file: !31, line: 1481, baseType: !2501, size: 32, offset: 7200)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !143, line: 150, baseType: !7)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !543, file: !31, line: 1487, baseType: !1039, size: 192, offset: 7232)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !543, file: !31, line: 1493, baseType: !162, size: 64, offset: 7424)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !543, file: !31, line: 1495, baseType: !2505, size: 64, offset: 7488)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !326, line: 135, size: 1024, align: 512, elements: !2508)
!2508 = !{!2509, !2513, !2514, !2521, !2527, !2531, !2535, !2539, !2540, !2544, !2548, !2553, !2557}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2507, file: !326, line: 136, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!205, !328, !7}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2507, file: !326, line: 137, baseType: !2510, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2507, file: !326, line: 138, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!205, !2518, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2507, file: !326, line: 139, baseType: !2522, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!205, !2518, !7, !162, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2507, file: !326, line: 141, baseType: !2528, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!205, !2518}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2507, file: !326, line: 142, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!205, !328}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2507, file: !326, line: 143, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !328}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2507, file: !326, line: 144, baseType: !2536, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2507, file: !326, line: 145, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !328, !372}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2507, file: !326, line: 146, baseType: !2545, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!221, !328, !221, !205}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2507, file: !326, line: 147, baseType: !2549, size: 64, offset: 640)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!324, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2507, file: !326, line: 148, baseType: !2554, size: 64, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!205, !492, !433}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2507, file: !326, line: 149, baseType: !2558, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!328, !328, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !543, file: !31, line: 1500, baseType: !205, size: 32, offset: 7552)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !543, file: !31, line: 1502, baseType: !2565, size: 448, offset: 7616)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2209, line: 60, size: 448, elements: !2566)
!2566 = !{!2567, !2572, !2573, !2574, !2575, !2576, !2577}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2565, file: !2209, line: 61, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!270, !2571, !2207}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2565, file: !2209, line: 63, baseType: !2568, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2565, file: !2209, line: 66, baseType: !147, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2565, file: !2209, line: 67, baseType: !205, size: 32, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2565, file: !2209, line: 68, baseType: !7, size: 32, offset: 224)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2565, file: !2209, line: 71, baseType: !166, size: 128, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2565, file: !2209, line: 77, baseType: !2578, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !543, file: !31, line: 1505, baseType: !717, size: 64, offset: 8064)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !543, file: !31, line: 1508, baseType: !717, size: 64, offset: 8128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !543, file: !31, line: 1511, baseType: !205, size: 32, offset: 8192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !543, file: !31, line: 1514, baseType: !855, size: 32, offset: 8224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !543, file: !31, line: 1517, baseType: !2584, size: 64, offset: 8256)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1822, line: 18, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !543, file: !31, line: 1518, baseType: !581, size: 64, offset: 8320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !543, file: !31, line: 1525, baseType: !1576, size: 64, offset: 8384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !543, file: !31, line: 1532, baseType: !2589, size: 64, offset: 8448)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2590, line: 52, size: 64, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2589, file: !2590, line: 53, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2590, line: 40, size: 256, elements: !2595)
!2595 = !{!2596, !2597, !2602}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2594, file: !2590, line: 42, baseType: !179)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2594, file: !2590, line: 44, baseType: !2598, size: 192)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2590, line: 28, size: 192, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2598, file: !2590, line: 29, baseType: !166, size: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2598, file: !2590, line: 31, baseType: !147, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2594, file: !2590, line: 49, baseType: !147, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !543, file: !31, line: 1533, baseType: !2589, size: 64, offset: 8512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !543, file: !31, line: 1534, baseType: !311, size: 128, align: 64, offset: 8576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !543, file: !31, line: 1535, baseType: !1821, size: 256, offset: 8704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !543, file: !31, line: 1537, baseType: !1039, size: 192, offset: 8960)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !543, file: !31, line: 1542, baseType: !205, size: 32, offset: 9152)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !543, file: !31, line: 1545, baseType: !179, offset: 9184)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !543, file: !31, line: 1546, baseType: !166, size: 128, offset: 9216)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !543, file: !31, line: 1548, baseType: !179, offset: 9344)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !543, file: !31, line: 1549, baseType: !166, size: 128, offset: 9344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !373, file: !31, line: 624, baseType: !680, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !373, file: !31, line: 631, baseType: !270, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !31, line: 639, baseType: !2615, size: 32, offset: 384)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !31, line: 639, size: 32, elements: !2616)
!2616 = !{!2617, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2615, file: !31, line: 640, baseType: !2618, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2615, file: !31, line: 641, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !373, file: !31, line: 643, baseType: !456, size: 32, offset: 416)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !373, file: !31, line: 644, baseType: !474, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !373, file: !31, line: 645, baseType: !478, size: 128, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !373, file: !31, line: 646, baseType: !478, size: 128, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !373, file: !31, line: 647, baseType: !478, size: 128, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !373, file: !31, line: 648, baseType: !179, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !373, file: !31, line: 649, baseType: !262, size: 16, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !373, file: !31, line: 650, baseType: !149, size: 8, offset: 912)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !373, file: !31, line: 651, baseType: !149, size: 8, offset: 920)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !373, file: !31, line: 652, baseType: !2381, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !373, file: !31, line: 659, baseType: !270, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !373, file: !31, line: 660, baseType: !713, size: 256, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !373, file: !31, line: 662, baseType: !270, size: 64, offset: 1344)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !373, file: !31, line: 663, baseType: !270, size: 64, offset: 1408)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !373, file: !31, line: 665, baseType: !585, size: 128, offset: 1472)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !373, file: !31, line: 666, baseType: !166, size: 128, offset: 1600)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !373, file: !31, line: 675, baseType: !166, size: 128, offset: 1728)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !373, file: !31, line: 676, baseType: !166, size: 128, offset: 1856)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !373, file: !31, line: 677, baseType: !166, size: 128, offset: 1984)
!2639 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !31, line: 678, baseType: !2640, size: 128, offset: 2112)
!2640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !31, line: 678, size: 128, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2640, file: !31, line: 679, baseType: !581, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2640, file: !31, line: 680, baseType: !311, size: 128, align: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !373, file: !31, line: 682, baseType: !719, size: 64, offset: 2240)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !373, file: !31, line: 683, baseType: !719, size: 64, offset: 2304)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !373, file: !31, line: 684, baseType: !693, size: 32, offset: 2368)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !373, file: !31, line: 685, baseType: !693, size: 32, offset: 2400)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !373, file: !31, line: 686, baseType: !693, size: 32, offset: 2432)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !373, file: !31, line: 688, baseType: !693, size: 32, offset: 2464)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !31, line: 690, baseType: !2651, size: 64, offset: 2496)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !31, line: 690, size: 64, elements: !2652)
!2652 = !{!2653, !2876}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2651, file: !31, line: 691, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2657)
!2657 = !{!2658, !2659, !2663, !2668, !2672, !2673, !2674, !2678, !2691, !2692, !2700, !2704, !2705, !2709, !2710, !2714, !2719, !2720, !2724, !2728, !2836, !2840, !2841, !2845, !2846, !2850, !2854, !2859, !2863, !2867, !2871, !2875}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2656, file: !31, line: 1823, baseType: !576, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2656, file: !31, line: 1824, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!474, !298, !474, !205}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2656, file: !31, line: 1825, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!252, !298, !221, !267, !2667}
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2656, file: !31, line: 1826, baseType: !2669, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!252, !298, !162, !267, !2667}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2656, file: !31, line: 1827, baseType: !790, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2656, file: !31, line: 1828, baseType: !790, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2656, file: !31, line: 1829, baseType: !2675, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!205, !793, !433}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2656, file: !31, line: 1830, baseType: !2679, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!205, !298, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2684)
!2684 = !{!2685, !2690}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2683, file: !31, line: 1777, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2687)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!205, !2682, !162, !205, !474, !365, !7}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2683, file: !31, line: 1778, baseType: !474, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2656, file: !31, line: 1831, baseType: !2679, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2656, file: !31, line: 1832, baseType: !2693, size: 64, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2696, !298, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2697, line: 52, baseType: !7)
!2697 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !562, line: 27, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2656, file: !31, line: 1833, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!147, !298, !7, !270}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2656, file: !31, line: 1834, baseType: !2701, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2656, file: !31, line: 1835, baseType: !2706, size: 64, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!205, !298, !927}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2656, file: !31, line: 1836, baseType: !270, size: 64, offset: 832)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2656, file: !31, line: 1837, baseType: !2711, size: 64, offset: 896)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!205, !372, !298}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2656, file: !31, line: 1838, baseType: !2715, size: 64, offset: 960)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!205, !298, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !144)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2656, file: !31, line: 1839, baseType: !2711, size: 64, offset: 1024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2656, file: !31, line: 1840, baseType: !2721, size: 64, offset: 1088)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!205, !298, !474, !474, !205}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2656, file: !31, line: 1841, baseType: !2725, size: 64, offset: 1152)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!205, !205, !298, !205}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2656, file: !31, line: 1842, baseType: !2729, size: 64, offset: 1216)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!205, !298, !205, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2766, !2767, !2768, !2781, !2812}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2733, file: !31, line: 1063, baseType: !2732, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2733, file: !31, line: 1064, baseType: !166, size: 128, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2733, file: !31, line: 1065, baseType: !585, size: 128, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2733, file: !31, line: 1066, baseType: !166, size: 128, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2733, file: !31, line: 1069, baseType: !166, size: 128, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2733, file: !31, line: 1072, baseType: !2718, size: 64, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2733, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2733, file: !31, line: 1074, baseType: !153, size: 8, offset: 672)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2733, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2733, file: !31, line: 1076, baseType: !205, size: 32, offset: 736)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2733, file: !31, line: 1077, baseType: !1344, size: 128, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2733, file: !31, line: 1078, baseType: !298, size: 64, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2733, file: !31, line: 1079, baseType: !474, size: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2733, file: !31, line: 1080, baseType: !474, size: 64, offset: 1024)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2733, file: !31, line: 1082, baseType: !2750, size: 64, offset: 1088)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2752)
!2752 = !{!2753, !2761, !2762, !2763, !2764, !2765}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2751, file: !31, line: 1315, baseType: !2754)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2755, line: 20, baseType: !2756)
!2755 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2755, line: 11, elements: !2757)
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2756, file: !2755, line: 12, baseType: !2759)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !191, line: 33, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 31, elements: !193)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2751, file: !31, line: 1316, baseType: !205, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2751, file: !31, line: 1317, baseType: !205, size: 32, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2751, file: !31, line: 1318, baseType: !2750, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2751, file: !31, line: 1319, baseType: !298, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2751, file: !31, line: 1320, baseType: !311, size: 128, align: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2733, file: !31, line: 1084, baseType: !270, size: 64, offset: 1152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2733, file: !31, line: 1085, baseType: !270, size: 64, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2733, file: !31, line: 1087, baseType: !2769, size: 64, offset: 1280)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2772)
!2772 = !{!2773, !2777}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2771, file: !31, line: 1012, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2732, !2732}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2771, file: !31, line: 1013, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2732}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2733, file: !31, line: 1088, baseType: !2782, size: 64, offset: 1344)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2785)
!2785 = !{!2786, !2790, !2794, !2795, !2799, !2803, !2807, !2811}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2784, file: !31, line: 1017, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2718, !2718}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2784, file: !31, line: 1018, baseType: !2791, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2718}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2784, file: !31, line: 1019, baseType: !2778, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2784, file: !31, line: 1020, baseType: !2796, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!205, !2732, !205}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2784, file: !31, line: 1021, baseType: !2800, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!433, !2732}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2784, file: !31, line: 1022, baseType: !2804, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!205, !2732, !205, !169}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2784, file: !31, line: 1023, baseType: !2808, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2732, !767}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2784, file: !31, line: 1024, baseType: !2800, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2733, file: !31, line: 1097, baseType: !2813, size: 256, offset: 1408)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !31, line: 1089, size: 256, elements: !2814)
!2814 = !{!2815, !2824, !2830}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2813, file: !31, line: 1090, baseType: !2816, size: 256)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2817, line: 10, size: 256, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2818 = !{!2819, !2820, !2823}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2816, file: !2817, line: 11, baseType: !361, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2816, file: !2817, line: 12, baseType: !2821, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2817, line: 5, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2816, file: !2817, line: 13, baseType: !166, size: 128, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2813, file: !31, line: 1091, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2817, line: 17, size: 64, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2825, file: !2817, line: 18, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2817, line: 16, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2813, file: !31, line: 1096, baseType: !2831, size: 192)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2813, file: !31, line: 1092, size: 192, elements: !2832)
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2831, file: !31, line: 1093, baseType: !166, size: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2831, file: !31, line: 1094, baseType: !205, size: 32, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2831, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2656, file: !31, line: 1843, baseType: !2837, size: 64, offset: 1280)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!252, !298, !667, !205, !267, !2667, !205}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2656, file: !31, line: 1844, baseType: !967, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2656, file: !31, line: 1845, baseType: !2842, size: 64, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!205, !205}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2656, file: !31, line: 1846, baseType: !2729, size: 64, offset: 1472)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2656, file: !31, line: 1847, baseType: !2847, size: 64, offset: 1536)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!252, !1962, !298, !2667, !267, !7}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2656, file: !31, line: 1848, baseType: !2851, size: 64, offset: 1600)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!252, !298, !2667, !1962, !267, !7}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2656, file: !31, line: 1849, baseType: !2855, size: 64, offset: 1664)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!205, !298, !147, !2858, !767}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2656, file: !31, line: 1850, baseType: !2860, size: 64, offset: 1728)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!147, !298, !205, !474, !474}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2656, file: !31, line: 1852, baseType: !2864, size: 64, offset: 1792)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !657, !298}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2656, file: !31, line: 1856, baseType: !2868, size: 64, offset: 1856)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!252, !298, !474, !298, !474, !267, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2656, file: !31, line: 1858, baseType: !2872, size: 64, offset: 1920)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!474, !298, !474, !298, !474, !474, !7}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2656, file: !31, line: 1861, baseType: !2721, size: 64, offset: 1984)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2651, file: !31, line: 692, baseType: !610, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !373, file: !31, line: 694, baseType: !2878, size: 64, offset: 2560)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2879, file: !31, line: 1101, baseType: !179)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2879, file: !31, line: 1102, baseType: !166, size: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2879, file: !31, line: 1103, baseType: !166, size: 128, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2879, file: !31, line: 1104, baseType: !166, size: 128, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !373, file: !31, line: 695, baseType: !681, size: 1216, align: 64, offset: 2624)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !373, file: !31, line: 696, baseType: !166, size: 128, offset: 3840)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !31, line: 697, baseType: !2888, size: 64, offset: 3968)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !31, line: 697, size: 64, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2895, !2896}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2888, file: !31, line: 698, baseType: !1962, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2888, file: !31, line: 699, baseType: !2406, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2888, file: !31, line: 700, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2888, file: !31, line: 701, baseType: !221, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2888, file: !31, line: 702, baseType: !7, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !373, file: !31, line: 705, baseType: !362, size: 32, offset: 4032)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !373, file: !31, line: 708, baseType: !362, size: 32, offset: 4064)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !373, file: !31, line: 709, baseType: !2488, size: 64, offset: 4096)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !373, file: !31, line: 720, baseType: !144, size: 64, offset: 4160)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !329, file: !326, line: 98, baseType: !2902, size: 256, offset: 448)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !2082)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !329, file: !326, line: 101, baseType: !2904, size: 32, offset: 704)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2905, line: 25, size: 32, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2905, line: 26, baseType: !2908, size: 32)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2905, line: 26, size: 32, elements: !2909)
!2909 = !{!2910}
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !2905, line: 30, baseType: !2911, size: 32)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !2905, line: 30, size: 32, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2911, file: !2905, line: 31, baseType: !179)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2911, file: !2905, line: 32, baseType: !205, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !329, file: !326, line: 102, baseType: !2505, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !329, file: !326, line: 103, baseType: !542, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !329, file: !326, line: 104, baseType: !270, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !329, file: !326, line: 105, baseType: !144, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !326, line: 107, baseType: !2920, size: 128, offset: 1024)
!2920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !326, line: 107, size: 128, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2920, file: !326, line: 108, baseType: !166, size: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2920, file: !326, line: 109, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !329, file: !326, line: 111, baseType: !166, size: 128, offset: 1152)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !329, file: !326, line: 112, baseType: !166, size: 128, offset: 1280)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !329, file: !326, line: 120, baseType: !2928, size: 128, offset: 1408)
!2928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !326, line: 116, size: 128, elements: !2929)
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2928, file: !326, line: 117, baseType: !585, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2928, file: !326, line: 118, baseType: !343, size: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2928, file: !326, line: 119, baseType: !311, size: 128, align: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !299, file: !31, line: 922, baseType: !372, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !299, file: !31, line: 923, baseType: !2654, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !299, file: !31, line: 929, baseType: !179, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !299, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !299, file: !31, line: 931, baseType: !717, size: 64, offset: 448)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !299, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !299, file: !31, line: 933, baseType: !2501, size: 32, offset: 544)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !299, file: !31, line: 934, baseType: !1039, size: 192, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !299, file: !31, line: 935, baseType: !474, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !299, file: !31, line: 936, baseType: !2943, size: 192, offset: 832)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2943, file: !31, line: 886, baseType: !2754)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2943, file: !31, line: 887, baseType: !1334, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2943, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2943, file: !31, line: 889, baseType: !378, size: 32, offset: 96)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2943, file: !31, line: 889, baseType: !378, size: 32, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2943, file: !31, line: 890, baseType: !205, size: 32, offset: 160)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !299, file: !31, line: 937, baseType: !1410, size: 64, offset: 1024)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !299, file: !31, line: 938, baseType: !2953, size: 256, offset: 1088)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2953, file: !31, line: 897, baseType: !270, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2953, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2953, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2953, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2953, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2953, file: !31, line: 904, baseType: !474, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !299, file: !31, line: 940, baseType: !365, size: 64, offset: 1344)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !299, file: !31, line: 945, baseType: !144, size: 64, offset: 1408)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !299, file: !31, line: 949, baseType: !166, size: 128, offset: 1472)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !299, file: !31, line: 950, baseType: !166, size: 128, offset: 1600)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !299, file: !31, line: 952, baseType: !680, size: 64, offset: 1728)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !299, file: !31, line: 953, baseType: !855, size: 32, offset: 1792)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !299, file: !31, line: 954, baseType: !855, size: 32, offset: 1824)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !289, file: !246, line: 174, baseType: !295, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !289, file: !246, line: 176, baseType: !2970, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!205, !298, !172, !288, !927}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !277, file: !246, line: 90, baseType: !272, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !277, file: !246, line: 91, baseType: !2975, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !236, file: !159, line: 143, baseType: !2977, size: 64, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!2980, !172}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2983)
!2983 = !{!2984, !2985, !2989, !2993, !3001, !3005}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2982, file: !48, line: 40, baseType: !47, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2982, file: !48, line: 41, baseType: !2986, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!433}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2982, file: !48, line: 42, baseType: !2990, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!144}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2982, file: !48, line: 43, baseType: !2994, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2997, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2982, file: !48, line: 44, baseType: !3002, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2997}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2982, file: !48, line: 45, baseType: !411, size: 64, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !236, file: !159, line: 144, baseType: !3007, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!2997, !172}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !236, file: !159, line: 145, baseType: !3011, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !172, !3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !158, file: !159, line: 70, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !562, line: 123, size: 1024, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3148, !3149, !3150, !3151, !3152}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !562, line: 124, baseType: !693, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3018, file: !562, line: 125, baseType: !693, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3018, file: !562, line: 135, baseType: !3017, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3018, file: !562, line: 136, baseType: !162, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3018, file: !562, line: 138, baseType: !706, size: 192, align: 64, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3018, file: !562, line: 140, baseType: !2997, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3018, file: !562, line: 141, baseType: !7, size: 32, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !562, line: 142, baseType: !3028, size: 256, offset: 512)
!3028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !562, line: 142, size: 256, elements: !3029)
!3029 = !{!3030, !3076, !3080}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3028, file: !562, line: 143, baseType: !3031, size: 192)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !562, line: 91, size: 192, elements: !3032)
!3032 = !{!3033, !3034, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3031, file: !562, line: 92, baseType: !270, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3031, file: !562, line: 94, baseType: !702, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3031, file: !562, line: 100, baseType: !3036, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !562, line: 180, size: 704, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3048, !3049, !3050, !3074, !3075}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3037, file: !562, line: 182, baseType: !3017, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3037, file: !562, line: 183, baseType: !7, size: 32, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3037, file: !562, line: 186, baseType: !3042, size: 192, offset: 128)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3043, line: 19, size: 192, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3042, file: !3043, line: 20, baseType: !685, size: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3042, file: !3043, line: 21, baseType: !7, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3042, file: !3043, line: 22, baseType: !7, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3037, file: !562, line: 187, baseType: !361, size: 32, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3037, file: !562, line: 188, baseType: !361, size: 32, offset: 352)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3037, file: !562, line: 189, baseType: !3051, size: 64, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !562, line: 168, size: 320, elements: !3053)
!3053 = !{!3054, !3058, !3062, !3066, !3070}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3052, file: !562, line: 169, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!205, !657, !3036}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3052, file: !562, line: 171, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!205, !3017, !162, !261}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3052, file: !562, line: 173, baseType: !3063, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!205, !3017}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3052, file: !562, line: 174, baseType: !3067, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!205, !3017, !3017, !162}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3052, file: !562, line: 176, baseType: !3071, size: 64, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!205, !657, !3017, !3036}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3037, file: !562, line: 192, baseType: !166, size: 128, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3037, file: !562, line: 194, baseType: !1344, size: 128, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3028, file: !562, line: 144, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !562, line: 103, size: 64, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3077, file: !562, line: 104, baseType: !3017, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3028, file: !562, line: 145, baseType: !3081, size: 256)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !562, line: 107, size: 256, elements: !3082)
!3082 = !{!3083, !3143, !3146, !3147}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3081, file: !562, line: 108, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !562, line: 217, size: 768, elements: !3087)
!3087 = !{!3088, !3108, !3112, !3116, !3120, !3124, !3128, !3132, !3133, !3134, !3135, !3139}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3086, file: !562, line: 222, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!205, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !562, line: 197, size: 1088, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3093, file: !562, line: 199, baseType: !3017, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3093, file: !562, line: 200, baseType: !298, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3093, file: !562, line: 201, baseType: !657, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3093, file: !562, line: 202, baseType: !144, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3093, file: !562, line: 205, baseType: !1039, size: 192, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3093, file: !562, line: 206, baseType: !1039, size: 192, offset: 448)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3093, file: !562, line: 207, baseType: !205, size: 32, offset: 640)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3093, file: !562, line: 208, baseType: !166, size: 128, offset: 704)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3093, file: !562, line: 209, baseType: !221, size: 64, offset: 832)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3093, file: !562, line: 211, baseType: !267, size: 64, offset: 896)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3093, file: !562, line: 212, baseType: !433, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3093, file: !562, line: 213, baseType: !433, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3093, file: !562, line: 214, baseType: !955, size: 64, offset: 1024)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3086, file: !562, line: 223, baseType: !3109, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3092}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3086, file: !562, line: 236, baseType: !3113, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!205, !657, !144}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3086, file: !562, line: 238, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!144, !657, !2667}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3086, file: !562, line: 239, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!144, !657, !144, !2667}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3086, file: !562, line: 240, baseType: !3125, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !657, !144}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3086, file: !562, line: 242, baseType: !3129, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!252, !3092, !221, !267, !474}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3086, file: !562, line: 252, baseType: !267, size: 64, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3086, file: !562, line: 259, baseType: !433, size: 8, offset: 512)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3086, file: !562, line: 260, baseType: !3129, size: 64, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3086, file: !562, line: 263, baseType: !3136, size: 64, offset: 640)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!2696, !3092, !2698}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3086, file: !562, line: 266, baseType: !3140, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!205, !3092, !927}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3081, file: !562, line: 109, baseType: !3144, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !562, line: 31, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3081, file: !562, line: 110, baseType: !474, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3081, file: !562, line: 111, baseType: !3017, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3018, file: !562, line: 148, baseType: !144, size: 64, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3018, file: !562, line: 154, baseType: !365, size: 64, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3018, file: !562, line: 156, baseType: !262, size: 16, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3018, file: !562, line: 157, baseType: !261, size: 16, offset: 912)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3018, file: !562, line: 158, baseType: !3153, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !562, line: 32, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !158, file: !159, line: 71, baseType: !3156, size: 32, offset: 448)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3157, line: 19, size: 32, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3156, file: !3157, line: 20, baseType: !1095, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !158, file: !159, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !158, file: !159, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !158, file: !159, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !158, file: !159, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !158, file: !159, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !155, file: !60, line: 463, baseType: !154, size: 64, offset: 512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !155, file: !60, line: 465, baseType: !3167, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !155, file: !60, line: 467, baseType: !162, size: 64, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !60, line: 468, baseType: !3171, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3181, !3186, !3190}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3173, file: !60, line: 88, baseType: !162, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3173, file: !60, line: 89, baseType: !274, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3173, file: !60, line: 90, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!205, !154, !216}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3173, file: !60, line: 91, baseType: !3182, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!221, !154, !3185, !3014, !3015}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3173, file: !60, line: 93, baseType: !3187, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !154}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3173, file: !60, line: 95, baseType: !3191, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3194)
!3194 = !{!3195, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3193, file: !67, line: 279, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!205, !154}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3193, file: !67, line: 280, baseType: !3187, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3193, file: !67, line: 281, baseType: !3196, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3193, file: !67, line: 282, baseType: !3196, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3193, file: !67, line: 283, baseType: !3196, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3193, file: !67, line: 284, baseType: !3196, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3193, file: !67, line: 285, baseType: !3196, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3193, file: !67, line: 286, baseType: !3196, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3193, file: !67, line: 287, baseType: !3196, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3193, file: !67, line: 288, baseType: !3196, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3193, file: !67, line: 289, baseType: !3196, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3193, file: !67, line: 290, baseType: !3196, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3193, file: !67, line: 291, baseType: !3196, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3193, file: !67, line: 292, baseType: !3196, size: 64, offset: 832)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3193, file: !67, line: 293, baseType: !3196, size: 64, offset: 896)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3193, file: !67, line: 294, baseType: !3196, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3193, file: !67, line: 295, baseType: !3196, size: 64, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3193, file: !67, line: 296, baseType: !3196, size: 64, offset: 1088)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3193, file: !67, line: 297, baseType: !3196, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3193, file: !67, line: 298, baseType: !3196, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3193, file: !67, line: 299, baseType: !3196, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3193, file: !67, line: 300, baseType: !3196, size: 64, offset: 1344)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3193, file: !67, line: 301, baseType: !3196, size: 64, offset: 1408)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !155, file: !60, line: 470, baseType: !3222, size: 64, offset: 768)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3224, line: 82, size: 1408, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3307, !3310, !3311}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3223, file: !3224, line: 83, baseType: !162, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3223, file: !3224, line: 84, baseType: !162, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3223, file: !3224, line: 85, baseType: !154, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3223, file: !3224, line: 86, baseType: !274, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3223, file: !3224, line: 87, baseType: !274, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3223, file: !3224, line: 88, baseType: !274, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3223, file: !3224, line: 90, baseType: !3233, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!205, !154, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3258, !3271, !3272, !3273, !3274, !3275, !3283, !3284, !3285, !3286, !3287, !3288}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3237, file: !54, line: 96, baseType: !162, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3237, file: !54, line: 97, baseType: !3222, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3237, file: !54, line: 99, baseType: !576, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3237, file: !54, line: 100, baseType: !162, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3237, file: !54, line: 102, baseType: !433, size: 8, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3237, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3237, file: !54, line: 105, baseType: !3246, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3248)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3249, line: 262, size: 1600, elements: !3250)
!3249 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3250 = !{!3251, !3252, !3253, !3257}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3248, file: !3249, line: 263, baseType: !2491, size: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3248, file: !3249, line: 264, baseType: !2491, size: 256, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3248, file: !3249, line: 265, baseType: !3254, size: 1024, offset: 512)
!3254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !3255)
!3255 = !{!3256}
!3256 = !DISubrange(count: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3248, file: !3249, line: 266, baseType: !2997, size: 64, offset: 1536)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3237, file: !54, line: 106, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3249, line: 210, size: 256, elements: !3262)
!3262 = !{!3263, !3267, !3269, !3270}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3261, file: !3249, line: 211, baseType: !3264, size: 72)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 72, elements: !3265)
!3265 = !{!3266}
!3266 = !DISubrange(count: 9)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3261, file: !3249, line: 212, baseType: !3268, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3249, line: 14, baseType: !270)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3261, file: !3249, line: 213, baseType: !362, size: 32, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3261, file: !3249, line: 214, baseType: !362, size: 32, offset: 224)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3237, file: !54, line: 108, baseType: !3196, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3237, file: !54, line: 109, baseType: !3187, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3237, file: !54, line: 110, baseType: !3196, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3237, file: !54, line: 111, baseType: !3187, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3237, file: !54, line: 112, baseType: !3276, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!205, !154, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3281)
!3281 = !{!3282}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3280, file: !67, line: 51, baseType: !205, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3237, file: !54, line: 113, baseType: !3196, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3237, file: !54, line: 114, baseType: !274, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3237, file: !54, line: 115, baseType: !274, size: 64, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3237, file: !54, line: 117, baseType: !3191, size: 64, offset: 960)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3237, file: !54, line: 118, baseType: !3187, size: 64, offset: 1024)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3237, file: !54, line: 120, baseType: !3289, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3223, file: !3224, line: 91, baseType: !3178, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3223, file: !3224, line: 92, baseType: !3196, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3223, file: !3224, line: 93, baseType: !3187, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3223, file: !3224, line: 94, baseType: !3196, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3223, file: !3224, line: 95, baseType: !3187, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3223, file: !3224, line: 97, baseType: !3196, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3223, file: !3224, line: 98, baseType: !3196, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3223, file: !3224, line: 100, baseType: !3276, size: 64, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3223, file: !3224, line: 101, baseType: !3196, size: 64, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3223, file: !3224, line: 103, baseType: !3196, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3223, file: !3224, line: 105, baseType: !3196, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3223, file: !3224, line: 107, baseType: !3191, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3223, file: !3224, line: 109, baseType: !3304, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3224, line: 109, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3223, file: !3224, line: 111, baseType: !3308, size: 64, offset: 1280)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3224, line: 111, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3223, file: !3224, line: 112, baseType: !591, offset: 1344)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3223, file: !3224, line: 114, baseType: !433, size: 8, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !155, file: !60, line: 471, baseType: !3236, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !155, file: !60, line: 473, baseType: !144, size: 64, offset: 896)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !155, file: !60, line: 475, baseType: !144, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !155, file: !60, line: 480, baseType: !1039, size: 192, offset: 1024)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !155, file: !60, line: 484, baseType: !3317, size: 576, offset: 1216)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3317, file: !60, line: 362, baseType: !166, size: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3317, file: !60, line: 363, baseType: !166, size: 128, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3317, file: !60, line: 364, baseType: !166, size: 128, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3317, file: !60, line: 365, baseType: !166, size: 128, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3317, file: !60, line: 366, baseType: !433, size: 8, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3317, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !155, file: !60, line: 485, baseType: !3326, size: 2304, offset: 1792)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3423, !3427}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3326, file: !67, line: 566, baseType: !3279, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3326, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3326, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3326, file: !67, line: 569, baseType: !433, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3326, file: !67, line: 570, baseType: !433, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3326, file: !67, line: 571, baseType: !433, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3326, file: !67, line: 572, baseType: !433, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3326, file: !67, line: 573, baseType: !433, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3326, file: !67, line: 574, baseType: !433, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3326, file: !67, line: 575, baseType: !433, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3326, file: !67, line: 576, baseType: !433, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3326, file: !67, line: 577, baseType: !361, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3326, file: !67, line: 578, baseType: !179, offset: 96)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3326, file: !67, line: 580, baseType: !166, size: 128, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3326, file: !67, line: 581, baseType: !1365, size: 192, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3326, file: !67, line: 582, baseType: !3344, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3346, line: 43, size: 1472, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3355, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3345, file: !3346, line: 44, baseType: !162, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3345, file: !3346, line: 45, baseType: !205, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3345, file: !3346, line: 46, baseType: !166, size: 128, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3345, file: !3346, line: 47, baseType: !179, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3345, file: !3346, line: 48, baseType: !3353, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3345, file: !3346, line: 49, baseType: !3356, size: 320, offset: 320)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3357, line: 11, size: 320, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3360, !3361, !3366}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3356, file: !3357, line: 16, baseType: !585, size: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3356, file: !3357, line: 17, baseType: !270, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3356, file: !3357, line: 18, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3356, file: !3357, line: 19, baseType: !361, size: 32, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3345, file: !3346, line: 50, baseType: !270, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3345, file: !3346, line: 51, baseType: !1165, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3345, file: !3346, line: 52, baseType: !1165, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3345, file: !3346, line: 53, baseType: !1165, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3345, file: !3346, line: 54, baseType: !1165, size: 64, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3345, file: !3346, line: 55, baseType: !1165, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3345, file: !3346, line: 56, baseType: !270, size: 64, offset: 1024)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3345, file: !3346, line: 57, baseType: !270, size: 64, offset: 1088)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3345, file: !3346, line: 58, baseType: !270, size: 64, offset: 1152)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3345, file: !3346, line: 59, baseType: !270, size: 64, offset: 1216)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3345, file: !3346, line: 60, baseType: !270, size: 64, offset: 1280)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3345, file: !3346, line: 61, baseType: !154, size: 64, offset: 1344)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3345, file: !3346, line: 62, baseType: !433, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3345, file: !3346, line: 63, baseType: !433, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3326, file: !67, line: 583, baseType: !433, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3326, file: !67, line: 584, baseType: !433, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3326, file: !67, line: 585, baseType: !433, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3326, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3326, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3326, file: !67, line: 592, baseType: !1157, size: 512, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3326, file: !67, line: 593, baseType: !365, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3326, file: !67, line: 594, baseType: !1821, size: 256, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3326, file: !67, line: 595, baseType: !1344, size: 128, offset: 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3326, file: !67, line: 596, baseType: !3353, size: 64, offset: 1536)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3326, file: !67, line: 597, baseType: !693, size: 32, offset: 1600)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3326, file: !67, line: 598, baseType: !693, size: 32, offset: 1632)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3326, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3326, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3326, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3326, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3326, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3326, file: !67, line: 604, baseType: !433, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3326, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3326, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3326, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3326, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3326, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3326, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3326, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3326, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3326, file: !67, line: 613, baseType: !205, size: 32, offset: 1792)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3326, file: !67, line: 614, baseType: !205, size: 32, offset: 1824)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3326, file: !67, line: 615, baseType: !365, size: 64, offset: 1856)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3326, file: !67, line: 616, baseType: !365, size: 64, offset: 1920)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3326, file: !67, line: 617, baseType: !365, size: 64, offset: 1984)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3326, file: !67, line: 618, baseType: !365, size: 64, offset: 2048)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3326, file: !67, line: 620, baseType: !3414, size: 64, offset: 2112)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3415, file: !67, line: 537, baseType: !179)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3415, file: !67, line: 538, baseType: !7, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3415, file: !67, line: 540, baseType: !166, size: 128, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3415, file: !67, line: 543, baseType: !3421, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3326, file: !67, line: 621, baseType: !3424, size: 64, offset: 2176)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !154, !1307}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3326, file: !67, line: 622, baseType: !3428, size: 64, offset: 2240)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !155, file: !60, line: 486, baseType: !3431, size: 64, offset: 4096)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3440, !3441, !3442}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3432, file: !67, line: 643, baseType: !3193, size: 1472)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3432, file: !67, line: 644, baseType: !3196, size: 64, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3432, file: !67, line: 645, baseType: !3437, size: 64, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !154, !433}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3432, file: !67, line: 646, baseType: !3196, size: 64, offset: 1600)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3432, file: !67, line: 647, baseType: !3187, size: 64, offset: 1664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3432, file: !67, line: 648, baseType: !3187, size: 64, offset: 1728)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !155, file: !60, line: 493, baseType: !3444, size: 64, offset: 4160)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !155, file: !60, line: 499, baseType: !166, size: 128, offset: 4224)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !155, file: !60, line: 502, baseType: !3448, size: 64, offset: 4352)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !155, file: !60, line: 504, baseType: !3452, size: 64, offset: 4416)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !155, file: !60, line: 505, baseType: !365, size: 64, offset: 4480)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !155, file: !60, line: 510, baseType: !365, size: 64, offset: 4544)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !155, file: !60, line: 511, baseType: !3456, size: 64, offset: 4608)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !155, file: !60, line: 513, baseType: !3460, size: 64, offset: 4672)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3461, file: !60, line: 293, baseType: !7, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3461, file: !60, line: 294, baseType: !270, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !155, file: !60, line: 515, baseType: !166, size: 128, offset: 4736)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !155, file: !60, line: 526, baseType: !3467, offset: 4864)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3468, line: 5, elements: !193)
!3468 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !155, file: !60, line: 528, baseType: !3470, size: 64, offset: 4864)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3472, line: 14, flags: DIFlagFwdDecl)
!3472 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !155, file: !60, line: 529, baseType: !3474, size: 64, offset: 4928)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3224, line: 22, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !155, file: !60, line: 534, baseType: !456, size: 32, offset: 4992)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !155, file: !60, line: 535, baseType: !361, size: 32, offset: 5024)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !155, file: !60, line: 537, baseType: !179, offset: 5056)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !155, file: !60, line: 538, baseType: !166, size: 128, offset: 5056)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !155, file: !60, line: 540, baseType: !3481, size: 64, offset: 5184)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3483, line: 54, size: 960, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3495, !3499, !3500, !3501, !3502, !3506, !3510, !3511}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !3483, line: 55, baseType: !162, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3482, file: !3483, line: 56, baseType: !576, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3482, file: !3483, line: 58, baseType: !274, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3482, file: !3483, line: 59, baseType: !274, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3482, file: !3483, line: 60, baseType: !172, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3482, file: !3483, line: 62, baseType: !3178, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3482, file: !3483, line: 63, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!221, !154, !3185}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3482, file: !3483, line: 65, baseType: !3496, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !3481}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3482, file: !3483, line: 66, baseType: !3187, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3482, file: !3483, line: 68, baseType: !3196, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3482, file: !3483, line: 70, baseType: !2980, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3482, file: !3483, line: 71, baseType: !3503, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!2997, !154}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3482, file: !3483, line: 73, baseType: !3507, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !154, !3014, !3015}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !3483, line: 75, baseType: !3191, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !3483, line: 77, baseType: !3308, size: 64, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !155, file: !60, line: 541, baseType: !274, size: 64, offset: 5248)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !155, file: !60, line: 543, baseType: !3187, size: 64, offset: 5312)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !155, file: !60, line: 544, baseType: !3515, size: 64, offset: 5376)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !155, file: !60, line: 545, baseType: !3518, size: 64, offset: 5440)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !155, file: !60, line: 547, baseType: !433, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !155, file: !60, line: 548, baseType: !433, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !155, file: !60, line: 549, baseType: !433, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !155, file: !60, line: 550, baseType: !433, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !3526, line: 20, size: 8384, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3540, !3541, !3545, !3549, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3583, !3584, !3585, !3586}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !3525, file: !3526, line: 21, baseType: !144, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3525, file: !3526, line: 23, baseType: !2491, size: 256, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3525, file: !3526, line: 24, baseType: !2491, size: 256, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !3525, file: !3526, line: 25, baseType: !3254, size: 1024, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3525, file: !3526, line: 27, baseType: !433, size: 8, offset: 1600)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3525, file: !3526, line: 29, baseType: !3534, size: 32, offset: 1608)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !3249, line: 236, size: 32, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3534, file: !3249, line: 237, baseType: !151, size: 8)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3534, file: !3249, line: 238, baseType: !151, size: 8, offset: 8)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3534, file: !3249, line: 239, baseType: !151, size: 8, offset: 16)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !3534, file: !3249, line: 240, baseType: !151, size: 8, offset: 24)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3525, file: !3526, line: 32, baseType: !179, offset: 1640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3525, file: !3526, line: 34, baseType: !3542, size: 64, offset: 1664)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!205, !3524, !153}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3525, file: !3526, line: 35, baseType: !3546, size: 64, offset: 1728)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!205, !3524}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3525, file: !3526, line: 36, baseType: !3550, size: 64, offset: 1792)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3524}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3525, file: !3526, line: 37, baseType: !3546, size: 64, offset: 1856)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3525, file: !3526, line: 38, baseType: !3550, size: 64, offset: 1920)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3525, file: !3526, line: 40, baseType: !3524, size: 64, offset: 1984)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !3525, file: !3526, line: 42, baseType: !166, size: 128, offset: 2048)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3525, file: !3526, line: 43, baseType: !166, size: 128, offset: 2176)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3525, file: !3526, line: 45, baseType: !7, size: 32, offset: 2304)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3525, file: !3526, line: 51, baseType: !3560, size: 64, offset: 2368)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !3526, line: 67, size: 1792, elements: !3562)
!3562 = !{!3563, !3564, !3567, !3568, !3569, !3574, !3578, !3579, !3580, !3581, !3582}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3561, file: !3526, line: 68, baseType: !162, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3561, file: !3526, line: 70, baseType: !3565, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3561, file: !3526, line: 71, baseType: !433, size: 8, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3561, file: !3526, line: 73, baseType: !3550, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !3561, file: !3526, line: 74, baseType: !3570, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!3573, !3524, !153, !7}
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !81, line: 17, baseType: !80)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3561, file: !3526, line: 75, baseType: !3575, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!205, !3524, !3560}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !3561, file: !3526, line: 76, baseType: !3546, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !3561, file: !3526, line: 77, baseType: !3546, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3561, file: !3526, line: 78, baseType: !3550, size: 64, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3561, file: !3526, line: 79, baseType: !3550, size: 64, offset: 576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3561, file: !3526, line: 81, baseType: !3237, size: 1152, offset: 640)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !3525, file: !3526, line: 53, baseType: !1039, size: 192, offset: 2432)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3525, file: !3526, line: 55, baseType: !155, size: 5568, offset: 2624)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3525, file: !3526, line: 57, baseType: !166, size: 128, offset: 8192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !3525, file: !3526, line: 63, baseType: !3587, size: 64, offset: 8320)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!3588 = !{!3589, !3598, !3600, !3602, !3604, !3606, !3608, !3610, !3612, !3614, !3616, !3618, !3620, !3622, !0, !3624, !4017, !4019, !4021, !4023, !4025, !4027, !4029, !4031, !4033, !4035, !4037, !4039, !4041, !4043, !4045}
!3589 = !DIGlobalVariableExpression(var: !3590, expr: !DIExpression())
!3590 = distinct !DIGlobalVariable(name: "trackpoint_attr_sensitivity", scope: !2, file: !3, line: 185, type: !3591, isLocal: true, isDefinition: true)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trackpoint_attr_data", file: !3, line: 96, size: 128, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "field_offset", scope: !3591, file: !3, line: 97, baseType: !267, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !3591, file: !3, line: 98, baseType: !149, size: 8, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3591, file: !3, line: 99, baseType: !149, size: 8, offset: 72)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "inverted", scope: !3591, file: !3, line: 100, baseType: !433, size: 8, offset: 80)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "power_on_default", scope: !3591, file: !3, line: 101, baseType: !149, size: 8, offset: 88)
!3598 = !DIGlobalVariableExpression(var: !3599, expr: !DIExpression())
!3599 = distinct !DIGlobalVariable(name: "trackpoint_attr_speed", scope: !2, file: !3, line: 186, type: !3591, isLocal: true, isDefinition: true)
!3600 = !DIGlobalVariableExpression(var: !3601, expr: !DIExpression())
!3601 = distinct !DIGlobalVariable(name: "trackpoint_attr_reach", scope: !2, file: !3, line: 188, type: !3591, isLocal: true, isDefinition: true)
!3602 = !DIGlobalVariableExpression(var: !3603, expr: !DIExpression())
!3603 = distinct !DIGlobalVariable(name: "trackpoint_attr_draghys", scope: !2, file: !3, line: 189, type: !3591, isLocal: true, isDefinition: true)
!3604 = !DIGlobalVariableExpression(var: !3605, expr: !DIExpression())
!3605 = distinct !DIGlobalVariable(name: "trackpoint_attr_mindrag", scope: !2, file: !3, line: 190, type: !3591, isLocal: true, isDefinition: true)
!3606 = !DIGlobalVariableExpression(var: !3607, expr: !DIExpression())
!3607 = distinct !DIGlobalVariable(name: "trackpoint_attr_thresh", scope: !2, file: !3, line: 191, type: !3591, isLocal: true, isDefinition: true)
!3608 = !DIGlobalVariableExpression(var: !3609, expr: !DIExpression())
!3609 = distinct !DIGlobalVariable(name: "trackpoint_attr_upthresh", scope: !2, file: !3, line: 192, type: !3591, isLocal: true, isDefinition: true)
!3610 = !DIGlobalVariableExpression(var: !3611, expr: !DIExpression())
!3611 = distinct !DIGlobalVariable(name: "trackpoint_attr_ztime", scope: !2, file: !3, line: 193, type: !3591, isLocal: true, isDefinition: true)
!3612 = !DIGlobalVariableExpression(var: !3613, expr: !DIExpression())
!3613 = distinct !DIGlobalVariable(name: "trackpoint_attr_jenks", scope: !2, file: !3, line: 194, type: !3591, isLocal: true, isDefinition: true)
!3614 = !DIGlobalVariableExpression(var: !3615, expr: !DIExpression())
!3615 = distinct !DIGlobalVariable(name: "trackpoint_attr_drift_time", scope: !2, file: !3, line: 195, type: !3591, isLocal: true, isDefinition: true)
!3616 = !DIGlobalVariableExpression(var: !3617, expr: !DIExpression())
!3617 = distinct !DIGlobalVariable(name: "trackpoint_attr_inertia", scope: !2, file: !3, line: 187, type: !3591, isLocal: true, isDefinition: true)
!3618 = !DIGlobalVariableExpression(var: !3619, expr: !DIExpression())
!3619 = distinct !DIGlobalVariable(name: "trackpoint_attr_press_to_select", scope: !2, file: !3, line: 197, type: !3591, isLocal: true, isDefinition: true)
!3620 = !DIGlobalVariableExpression(var: !3621, expr: !DIExpression())
!3621 = distinct !DIGlobalVariable(name: "trackpoint_attr_skipback", scope: !2, file: !3, line: 199, type: !3591, isLocal: true, isDefinition: true)
!3622 = !DIGlobalVariableExpression(var: !3623, expr: !DIExpression())
!3623 = distinct !DIGlobalVariable(name: "trackpoint_attr_ext_dev", scope: !2, file: !3, line: 201, type: !3591, isLocal: true, isDefinition: true)
!3624 = !DIGlobalVariableExpression(var: !3625, expr: !DIExpression())
!3625 = distinct !DIGlobalVariable(name: "psmouse_attr_sensitivity", scope: !2, file: !3, line: 185, type: !3626, isLocal: true, isDefinition: true)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_attribute", file: !87, line: 147, size: 512, elements: !3627)
!3627 = !{!3628, !3641, !3642, !4012, !4016}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dattr", scope: !3626, file: !87, line: 148, baseType: !3629, size: 256)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !60, line: 99, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3637}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3629, file: !60, line: 100, baseType: !257, size: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3629, file: !60, line: 101, baseType: !3633, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!252, !154, !3636, !221}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3629, file: !60, line: 103, baseType: !3638, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!252, !154, !3636, !162, !267}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3626, file: !87, line: 149, baseType: !144, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3626, file: !87, line: 150, baseType: !3643, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!252, !3646, !144, !221}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !87, line: 89, size: 3648, elements: !3648)
!3648 = !{!3649, !3650, !3926, !3938, !3945, !3946, !3947, !3967, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3993, !3997, !3998, !4002, !4003, !4004, !4008, !4009, !4010, !4011}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3647, file: !87, line: 90, baseType: !144, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3647, file: !87, line: 91, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3653, line: 131, size: 10432, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656, !3657, !3658, !3666, !3667, !3668, !3670, !3671, !3672, !3673, !3674, !3675, !3677, !3678, !3679, !3680, !3681, !3682, !3696, !3701, !3796, !3799, !3800, !3801, !3803, !3806, !3816, !3817, !3818, !3819, !3820, !3824, !3828, !3832, !3836, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3923, !3924}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 132, baseType: !162, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3652, file: !3653, line: 133, baseType: !162, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3652, file: !3653, line: 134, baseType: !162, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !3653, line: 135, baseType: !3659, size: 64, offset: 192)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3660, line: 59, size: 64, elements: !3661)
!3660 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3659, file: !3660, line: 60, baseType: !806, size: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3659, file: !3660, line: 61, baseType: !806, size: 16, offset: 16)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3659, file: !3660, line: 62, baseType: !806, size: 16, offset: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3659, file: !3660, line: 63, baseType: !806, size: 16, offset: 48)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3652, file: !3653, line: 137, baseType: !1233, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3652, file: !3653, line: 139, baseType: !1233, size: 64, offset: 320)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3652, file: !3653, line: 140, baseType: !3669, size: 768, offset: 384)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 768, elements: !2088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3652, file: !3653, line: 141, baseType: !1233, size: 64, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3652, file: !3653, line: 142, baseType: !1233, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3652, file: !3653, line: 143, baseType: !1233, size: 64, offset: 1280)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3652, file: !3653, line: 144, baseType: !1233, size: 64, offset: 1344)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3652, file: !3653, line: 145, baseType: !1233, size: 64, offset: 1408)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3652, file: !3653, line: 146, baseType: !3676, size: 128, offset: 1472)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 128, elements: !1432)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3652, file: !3653, line: 147, baseType: !1233, size: 64, offset: 1600)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3652, file: !3653, line: 149, baseType: !7, size: 32, offset: 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3652, file: !3653, line: 151, baseType: !7, size: 32, offset: 1696)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3652, file: !3653, line: 152, baseType: !7, size: 32, offset: 1728)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3652, file: !3653, line: 153, baseType: !144, size: 64, offset: 1792)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3652, file: !3653, line: 155, baseType: !3683, size: 64, offset: 1856)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!205, !3651, !3686, !2474}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3660, line: 114, size: 320, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3688, file: !3660, line: 116, baseType: !151, size: 8)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3688, file: !3660, line: 117, baseType: !151, size: 8, offset: 8)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3688, file: !3660, line: 118, baseType: !806, size: 16, offset: 16)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3688, file: !3660, line: 119, baseType: !362, size: 32, offset: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3688, file: !3660, line: 120, baseType: !3695, size: 256, offset: 64)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !2082)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3652, file: !3653, line: 158, baseType: !3697, size: 64, offset: 1920)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!205, !3651, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3652, file: !3653, line: 161, baseType: !3702, size: 64, offset: 1984)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3653, line: 534, size: 896, elements: !3704)
!3704 = !{!3705, !3772, !3776, !3780, !3784, !3785, !3789, !3790, !3791, !3792, !3793, !3794}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3703, file: !3653, line: 535, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!205, !3651, !3709, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3660, line: 450, size: 384, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3715, !3720, !3725}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3710, file: !3660, line: 451, baseType: !806, size: 16)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3710, file: !3660, line: 452, baseType: !1070, size: 16, offset: 16)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3710, file: !3660, line: 453, baseType: !806, size: 16, offset: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3710, file: !3660, line: 454, baseType: !3716, size: 32, offset: 48)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3660, line: 316, size: 32, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3716, file: !3660, line: 317, baseType: !806, size: 16)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3716, file: !3660, line: 318, baseType: !806, size: 16, offset: 16)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3710, file: !3660, line: 455, baseType: !3721, size: 32, offset: 80)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3660, line: 306, size: 32, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3721, file: !3660, line: 307, baseType: !806, size: 16)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3721, file: !3660, line: 308, baseType: !806, size: 16, offset: 16)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3710, file: !3660, line: 463, baseType: !3726, size: 256, offset: 128)
!3726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3710, file: !3660, line: 457, size: 256, elements: !3727)
!3727 = !{!3728, !3739, !3745, !3757, !3767}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3726, file: !3660, line: 458, baseType: !3729, size: 80)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3660, line: 345, size: 80, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3729, file: !3660, line: 346, baseType: !1070, size: 16)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3729, file: !3660, line: 347, baseType: !3733, size: 64, offset: 16)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3660, line: 333, size: 64, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3733, file: !3660, line: 334, baseType: !806, size: 16)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3733, file: !3660, line: 335, baseType: !806, size: 16, offset: 16)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3733, file: !3660, line: 336, baseType: !806, size: 16, offset: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3733, file: !3660, line: 337, baseType: !806, size: 16, offset: 48)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3726, file: !3660, line: 459, baseType: !3740, size: 96)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3660, line: 356, size: 96, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !3740, file: !3660, line: 357, baseType: !1070, size: 16)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !3740, file: !3660, line: 358, baseType: !1070, size: 16, offset: 16)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3740, file: !3660, line: 359, baseType: !3733, size: 64, offset: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3726, file: !3660, line: 460, baseType: !3746, size: 256)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3660, line: 401, size: 256, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !3746, file: !3660, line: 402, baseType: !806, size: 16)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3746, file: !3660, line: 403, baseType: !806, size: 16, offset: 16)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !3746, file: !3660, line: 404, baseType: !1070, size: 16, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3746, file: !3660, line: 405, baseType: !1070, size: 16, offset: 48)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3746, file: !3660, line: 406, baseType: !806, size: 16, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3746, file: !3660, line: 408, baseType: !3733, size: 64, offset: 80)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !3746, file: !3660, line: 410, baseType: !362, size: 32, offset: 160)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !3746, file: !3660, line: 411, baseType: !3756, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3726, file: !3660, line: 461, baseType: !3758, size: 192)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3759, size: 192, elements: !1432)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3660, line: 372, size: 96, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !3759, file: !3660, line: 373, baseType: !806, size: 16)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !3759, file: !3660, line: 374, baseType: !806, size: 16, offset: 16)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !3759, file: !3660, line: 376, baseType: !1070, size: 16, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !3759, file: !3660, line: 377, baseType: !1070, size: 16, offset: 48)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !3759, file: !3660, line: 379, baseType: !806, size: 16, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !3759, file: !3660, line: 380, baseType: !1070, size: 16, offset: 80)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3726, file: !3660, line: 462, baseType: !3768, size: 32)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3660, line: 422, size: 32, elements: !3769)
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !3768, file: !3660, line: 423, baseType: !806, size: 16)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !3768, file: !3660, line: 424, baseType: !806, size: 16, offset: 16)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3703, file: !3653, line: 537, baseType: !3773, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!205, !3651, !205}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3703, file: !3653, line: 539, baseType: !3777, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!205, !3651, !205, !205}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3703, file: !3653, line: 540, baseType: !3781, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3651, !805}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3703, file: !3653, line: 541, baseType: !3781, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3703, file: !3653, line: 543, baseType: !3786, size: 64, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3702}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3703, file: !3653, line: 545, baseType: !144, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3703, file: !3653, line: 547, baseType: !3676, size: 128, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3703, file: !3653, line: 549, baseType: !1039, size: 192, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3703, file: !3653, line: 551, baseType: !205, size: 32, offset: 768)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3703, file: !3653, line: 552, baseType: !3709, size: 64, offset: 832)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3703, file: !3653, line: 553, baseType: !3795, offset: 896)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, elements: !2183)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3652, file: !3653, line: 163, baseType: !3797, size: 64, offset: 2048)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3653, line: 24, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3652, file: !3653, line: 165, baseType: !7, size: 32, offset: 2112)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3652, file: !3653, line: 166, baseType: !3356, size: 320, offset: 2176)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3652, file: !3653, line: 168, baseType: !3802, size: 64, offset: 2496)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !1432)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3652, file: !3653, line: 170, baseType: !3804, size: 64, offset: 2560)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3653, line: 170, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3652, file: !3653, line: 172, baseType: !3807, size: 64, offset: 2624)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3660, line: 90, size: 192, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3808, file: !3660, line: 91, baseType: !1308, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3808, file: !3660, line: 92, baseType: !1308, size: 32, offset: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3808, file: !3660, line: 93, baseType: !1308, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3808, file: !3660, line: 94, baseType: !1308, size: 32, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3808, file: !3660, line: 95, baseType: !1308, size: 32, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3808, file: !3660, line: 96, baseType: !1308, size: 32, offset: 160)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3652, file: !3653, line: 174, baseType: !3669, size: 768, offset: 2688)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3652, file: !3653, line: 175, baseType: !1233, size: 64, offset: 3456)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3652, file: !3653, line: 176, baseType: !1233, size: 64, offset: 3520)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3652, file: !3653, line: 177, baseType: !1233, size: 64, offset: 3584)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3652, file: !3653, line: 179, baseType: !3821, size: 64, offset: 3648)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!205, !3651}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3652, file: !3653, line: 180, baseType: !3825, size: 64, offset: 3712)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !3651}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3652, file: !3653, line: 181, baseType: !3829, size: 64, offset: 3776)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!205, !3651, !298}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3652, file: !3653, line: 182, baseType: !3833, size: 64, offset: 3840)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!205, !3651, !7, !7, !205}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3652, file: !3653, line: 184, baseType: !3837, size: 64, offset: 3904)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3653, line: 337, size: 576, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3910, !3911}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3838, file: !3653, line: 339, baseType: !144, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3838, file: !3653, line: 341, baseType: !205, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3838, file: !3653, line: 342, baseType: !162, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3838, file: !3653, line: 344, baseType: !3651, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3838, file: !3653, line: 345, baseType: !3845, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3653, line: 302, size: 960, elements: !3847)
!3847 = !{!3848, !3849, !3853, !3864, !3868, !3872, !3899, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3846, file: !3653, line: 304, baseType: !144, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3846, file: !3653, line: 306, baseType: !3850, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3837, !7, !7, !205}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3846, file: !3653, line: 307, baseType: !3854, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3837, !3857, !7}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3653, line: 32, size: 64, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3859, file: !3653, line: 33, baseType: !806, size: 16)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3859, file: !3653, line: 34, baseType: !806, size: 16, offset: 16)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3859, file: !3653, line: 35, baseType: !1308, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3846, file: !3653, line: 309, baseType: !3865, size: 64, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!433, !3837, !7, !7, !205}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3846, file: !3653, line: 310, baseType: !3869, size: 64, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!433, !3845, !3651}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3846, file: !3653, line: 311, baseType: !3873, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!205, !3845, !3651, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3249, line: 342, size: 1600, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3887, !3889, !3890, !3891, !3892, !3893, !3894, !3896, !3897, !3898}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3878, file: !3249, line: 344, baseType: !3268, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3878, file: !3249, line: 346, baseType: !806, size: 16, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3878, file: !3249, line: 347, baseType: !806, size: 16, offset: 80)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3878, file: !3249, line: 348, baseType: !806, size: 16, offset: 96)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3878, file: !3249, line: 349, baseType: !806, size: 16, offset: 112)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3878, file: !3249, line: 351, baseType: !3886, size: 64, offset: 128)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 64, elements: !1234)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3878, file: !3249, line: 352, baseType: !3888, size: 768, offset: 192)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 768, elements: !2088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3878, file: !3249, line: 353, baseType: !3886, size: 64, offset: 960)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3878, file: !3249, line: 354, baseType: !3886, size: 64, offset: 1024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3878, file: !3249, line: 355, baseType: !3886, size: 64, offset: 1088)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3878, file: !3249, line: 356, baseType: !3886, size: 64, offset: 1152)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3878, file: !3249, line: 357, baseType: !3886, size: 64, offset: 1216)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3878, file: !3249, line: 358, baseType: !3895, size: 128, offset: 1280)
!3895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 128, elements: !1432)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3878, file: !3249, line: 359, baseType: !3886, size: 64, offset: 1408)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3878, file: !3249, line: 360, baseType: !3886, size: 64, offset: 1472)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3878, file: !3249, line: 362, baseType: !3268, size: 64, offset: 1536)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3846, file: !3653, line: 312, baseType: !3900, size: 64, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3837}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3846, file: !3653, line: 313, baseType: !3900, size: 64, offset: 448)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3846, file: !3653, line: 315, baseType: !433, size: 8, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3846, file: !3653, line: 316, baseType: !205, size: 32, offset: 544)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3846, file: !3653, line: 317, baseType: !162, size: 64, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3846, file: !3653, line: 319, baseType: !3876, size: 64, offset: 640)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3846, file: !3653, line: 321, baseType: !166, size: 128, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3846, file: !3653, line: 322, baseType: !166, size: 128, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3838, file: !3653, line: 347, baseType: !166, size: 128, offset: 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3838, file: !3653, line: 348, baseType: !166, size: 128, offset: 448)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3652, file: !3653, line: 186, baseType: !179, offset: 3968)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3652, file: !3653, line: 187, baseType: !1039, size: 192, offset: 3968)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3652, file: !3653, line: 189, baseType: !7, size: 32, offset: 4160)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3652, file: !3653, line: 190, baseType: !433, size: 8, offset: 4192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 192, baseType: !155, size: 5568, offset: 4224)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3652, file: !3653, line: 194, baseType: !166, size: 128, offset: 9792)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3652, file: !3653, line: 195, baseType: !166, size: 128, offset: 9920)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3652, file: !3653, line: 197, baseType: !7, size: 32, offset: 10048)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3652, file: !3653, line: 198, baseType: !7, size: 32, offset: 10080)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3652, file: !3653, line: 199, baseType: !3922, size: 64, offset: 10112)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3652, file: !3653, line: 201, baseType: !433, size: 8, offset: 10176)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3652, file: !3653, line: 203, baseType: !3925, size: 192, offset: 10240)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 192, elements: !222)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !3647, file: !87, line: 92, baseType: !3927, size: 576, offset: 128)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !3928, line: 33, size: 576, elements: !3929)
!3928 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3936, !3937}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !3927, file: !3928, line: 34, baseType: !3524, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !3927, file: !3928, line: 37, baseType: !1039, size: 192, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3927, file: !3928, line: 40, baseType: !1344, size: 128, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3927, file: !3928, line: 42, baseType: !270, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !3927, file: !3928, line: 43, baseType: !3935, size: 64, offset: 448)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1195)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !3927, file: !3928, line: 44, baseType: !149, size: 8, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !3927, file: !3928, line: 45, baseType: !149, size: 8, offset: 520)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !3647, file: !87, line: 93, baseType: !3939, size: 704, offset: 704)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1822, line: 115, size: 704, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3939, file: !1822, line: 116, baseType: !1821, size: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3939, file: !1822, line: 117, baseType: !3356, size: 320, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3939, file: !1822, line: 120, baseType: !2584, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3939, file: !1822, line: 121, baseType: !205, size: 32, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3647, file: !87, line: 94, baseType: !162, size: 64, offset: 1408)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3647, file: !87, line: 95, baseType: !162, size: 64, offset: 1472)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3647, file: !87, line: 96, baseType: !3948, size: 64, offset: 1536)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !87, line: 77, size: 320, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3963}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3950, file: !87, line: 78, baseType: !86, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !3950, file: !87, line: 79, baseType: !433, size: 8, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !3950, file: !87, line: 80, baseType: !433, size: 8, offset: 40)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !3950, file: !87, line: 81, baseType: !433, size: 8, offset: 48)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !3950, file: !87, line: 82, baseType: !433, size: 8, offset: 56)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3950, file: !87, line: 83, baseType: !162, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !3950, file: !87, line: 84, baseType: !162, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !3950, file: !87, line: 85, baseType: !3960, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!205, !3646, !433}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3950, file: !87, line: 86, baseType: !3964, size: 64, offset: 256)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!205, !3646}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3647, file: !87, line: 97, baseType: !3968, size: 64, offset: 1600)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !1195)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !3647, file: !87, line: 98, baseType: !153, size: 8, offset: 1664)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !3647, file: !87, line: 99, baseType: !153, size: 8, offset: 1672)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !3647, file: !87, line: 100, baseType: !153, size: 8, offset: 1680)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !3647, file: !87, line: 101, baseType: !153, size: 8, offset: 1688)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !3647, file: !87, line: 102, baseType: !153, size: 8, offset: 1696)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !3647, file: !87, line: 103, baseType: !433, size: 8, offset: 1704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !3647, file: !87, line: 104, baseType: !7, size: 32, offset: 1728)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3647, file: !87, line: 105, baseType: !270, size: 64, offset: 1792)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !3647, file: !87, line: 106, baseType: !270, size: 64, offset: 1856)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !3647, file: !87, line: 107, baseType: !270, size: 64, offset: 1920)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3647, file: !87, line: 108, baseType: !113, size: 32, offset: 1984)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !3647, file: !87, line: 109, baseType: !3981, size: 512, offset: 2016)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 512, elements: !226)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3647, file: !87, line: 110, baseType: !2491, size: 256, offset: 2528)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !3647, file: !87, line: 112, baseType: !7, size: 32, offset: 2784)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3647, file: !87, line: 113, baseType: !7, size: 32, offset: 2816)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !3647, file: !87, line: 114, baseType: !7, size: 32, offset: 2848)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !3647, file: !87, line: 115, baseType: !7, size: 32, offset: 2880)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !3647, file: !87, line: 116, baseType: !433, size: 8, offset: 2912)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !3647, file: !87, line: 118, baseType: !3989, size: 64, offset: 2944)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!3992, !3646}
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !87, line: 41, baseType: !120)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !3647, file: !87, line: 119, baseType: !3994, size: 64, offset: 3008)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3646, !7}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !3647, file: !87, line: 120, baseType: !3994, size: 64, offset: 3072)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !3647, file: !87, line: 121, baseType: !3999, size: 64, offset: 3136)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !3646, !125}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !3647, file: !87, line: 123, baseType: !3964, size: 64, offset: 3200)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !3647, file: !87, line: 124, baseType: !3964, size: 64, offset: 3264)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3647, file: !87, line: 125, baseType: !4005, size: 64, offset: 3328)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !3646}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3647, file: !87, line: 126, baseType: !4005, size: 64, offset: 3392)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3647, file: !87, line: 127, baseType: !3964, size: 64, offset: 3456)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !3647, file: !87, line: 129, baseType: !4005, size: 64, offset: 3520)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !3647, file: !87, line: 130, baseType: !4005, size: 64, offset: 3584)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3626, file: !87, line: 151, baseType: !4013, size: 64, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!252, !3646, !144, !162, !267}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "protect", scope: !3626, file: !87, line: 153, baseType: !433, size: 8, offset: 448)
!4017 = !DIGlobalVariableExpression(var: !4018, expr: !DIExpression())
!4018 = distinct !DIGlobalVariable(name: "psmouse_attr_inertia", scope: !2, file: !3, line: 187, type: !3626, isLocal: true, isDefinition: true)
!4019 = !DIGlobalVariableExpression(var: !4020, expr: !DIExpression())
!4020 = distinct !DIGlobalVariable(name: "psmouse_attr_speed", scope: !2, file: !3, line: 186, type: !3626, isLocal: true, isDefinition: true)
!4021 = !DIGlobalVariableExpression(var: !4022, expr: !DIExpression())
!4022 = distinct !DIGlobalVariable(name: "psmouse_attr_reach", scope: !2, file: !3, line: 188, type: !3626, isLocal: true, isDefinition: true)
!4023 = !DIGlobalVariableExpression(var: !4024, expr: !DIExpression())
!4024 = distinct !DIGlobalVariable(name: "psmouse_attr_draghys", scope: !2, file: !3, line: 189, type: !3626, isLocal: true, isDefinition: true)
!4025 = !DIGlobalVariableExpression(var: !4026, expr: !DIExpression())
!4026 = distinct !DIGlobalVariable(name: "psmouse_attr_mindrag", scope: !2, file: !3, line: 190, type: !3626, isLocal: true, isDefinition: true)
!4027 = !DIGlobalVariableExpression(var: !4028, expr: !DIExpression())
!4028 = distinct !DIGlobalVariable(name: "psmouse_attr_thresh", scope: !2, file: !3, line: 191, type: !3626, isLocal: true, isDefinition: true)
!4029 = !DIGlobalVariableExpression(var: !4030, expr: !DIExpression())
!4030 = distinct !DIGlobalVariable(name: "psmouse_attr_upthresh", scope: !2, file: !3, line: 192, type: !3626, isLocal: true, isDefinition: true)
!4031 = !DIGlobalVariableExpression(var: !4032, expr: !DIExpression())
!4032 = distinct !DIGlobalVariable(name: "psmouse_attr_ztime", scope: !2, file: !3, line: 193, type: !3626, isLocal: true, isDefinition: true)
!4033 = !DIGlobalVariableExpression(var: !4034, expr: !DIExpression())
!4034 = distinct !DIGlobalVariable(name: "psmouse_attr_jenks", scope: !2, file: !3, line: 194, type: !3626, isLocal: true, isDefinition: true)
!4035 = !DIGlobalVariableExpression(var: !4036, expr: !DIExpression())
!4036 = distinct !DIGlobalVariable(name: "psmouse_attr_drift_time", scope: !2, file: !3, line: 195, type: !3626, isLocal: true, isDefinition: true)
!4037 = !DIGlobalVariableExpression(var: !4038, expr: !DIExpression())
!4038 = distinct !DIGlobalVariable(name: "psmouse_attr_press_to_select", scope: !2, file: !3, line: 197, type: !3626, isLocal: true, isDefinition: true)
!4039 = !DIGlobalVariableExpression(var: !4040, expr: !DIExpression())
!4040 = distinct !DIGlobalVariable(name: "psmouse_attr_skipback", scope: !2, file: !3, line: 199, type: !3626, isLocal: true, isDefinition: true)
!4041 = !DIGlobalVariableExpression(var: !4042, expr: !DIExpression())
!4042 = distinct !DIGlobalVariable(name: "psmouse_attr_ext_dev", scope: !2, file: !3, line: 201, type: !3626, isLocal: true, isDefinition: true)
!4043 = !DIGlobalVariableExpression(var: !4044, expr: !DIExpression())
!4044 = distinct !DIGlobalVariable(name: "trackpoint_attr_group", scope: !2, file: !3, line: 242, type: !277, isLocal: true, isDefinition: true)
!4045 = !DIGlobalVariableExpression(var: !4046, expr: !DIExpression())
!4046 = distinct !DIGlobalVariable(name: "trackpoint_attrs", scope: !2, file: !3, line: 224, type: !4047, isLocal: true, isDefinition: true)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 960, elements: !4048)
!4048 = !{!4049}
!4049 = !DISubrange(count: 15)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4051, size: 448, elements: !4052)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!4052 = !{!4053}
!4053 = !DISubrange(count: 7)
!4054 = !{i32 7, !"Dwarf Version", i32 4}
!4055 = !{i32 2, !"Debug Info Version", i32 3}
!4056 = !{i32 1, !"wchar_size", i32 2}
!4057 = !{i32 1, !"Code Model", i32 2}
!4058 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4059 = distinct !DISubprogram(name: "trackpoint_detect", scope: !3, file: !3, line: 396, type: !3961, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4060 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4059, file: !3, line: 396, type: !3646)
!4061 = !DILocation(line: 396, column: 39, scope: !4059)
!4062 = !DILocalVariable(name: "set_properties", arg: 2, scope: !4059, file: !3, line: 396, type: !433)
!4063 = !DILocation(line: 396, column: 53, scope: !4059)
!4064 = !DILocalVariable(name: "ps2dev", scope: !4059, file: !3, line: 398, type: !4065)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!4066 = !DILocation(line: 398, column: 17, scope: !4059)
!4067 = !DILocation(line: 398, column: 27, scope: !4059)
!4068 = !DILocation(line: 398, column: 36, scope: !4059)
!4069 = !DILocalVariable(name: "tp", scope: !4059, file: !3, line: 399, type: !4070)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trackpoint_data", file: !4072, line: 144, size: 128, elements: !4073)
!4072 = !DIFile(filename: "drivers/input/mouse/trackpoint.h", directory: "/home/lizy2001/genbc/linux")
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "variant_id", scope: !4071, file: !4072, line: 145, baseType: !149, size: 8)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4071, file: !4072, line: 146, baseType: !149, size: 8, offset: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sensitivity", scope: !4071, file: !4072, line: 148, baseType: !149, size: 8, offset: 16)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4071, file: !4072, line: 148, baseType: !149, size: 8, offset: 24)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "inertia", scope: !4071, file: !4072, line: 148, baseType: !149, size: 8, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "reach", scope: !4071, file: !4072, line: 148, baseType: !149, size: 8, offset: 40)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "draghys", scope: !4071, file: !4072, line: 149, baseType: !149, size: 8, offset: 48)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mindrag", scope: !4071, file: !4072, line: 149, baseType: !149, size: 8, offset: 56)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "thresh", scope: !4071, file: !4072, line: 150, baseType: !149, size: 8, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "upthresh", scope: !4071, file: !4072, line: 150, baseType: !149, size: 8, offset: 72)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ztime", scope: !4071, file: !4072, line: 151, baseType: !149, size: 8, offset: 80)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "jenks", scope: !4071, file: !4072, line: 151, baseType: !149, size: 8, offset: 88)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "drift_time", scope: !4071, file: !4072, line: 152, baseType: !149, size: 8, offset: 96)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "press_to_select", scope: !4071, file: !4072, line: 155, baseType: !433, size: 8, offset: 104)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "skipback", scope: !4071, file: !4072, line: 156, baseType: !433, size: 8, offset: 112)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ext_dev", scope: !4071, file: !4072, line: 157, baseType: !433, size: 8, offset: 120)
!4090 = !DILocation(line: 399, column: 26, scope: !4059)
!4091 = !DILocalVariable(name: "variant_id", scope: !4059, file: !3, line: 400, type: !149)
!4092 = !DILocation(line: 400, column: 5, scope: !4059)
!4093 = !DILocalVariable(name: "firmware_id", scope: !4059, file: !3, line: 401, type: !149)
!4094 = !DILocation(line: 401, column: 5, scope: !4059)
!4095 = !DILocalVariable(name: "button_info", scope: !4059, file: !3, line: 402, type: !149)
!4096 = !DILocation(line: 402, column: 5, scope: !4059)
!4097 = !DILocalVariable(name: "error", scope: !4059, file: !3, line: 403, type: !205)
!4098 = !DILocation(line: 403, column: 6, scope: !4059)
!4099 = !DILocation(line: 405, column: 36, scope: !4059)
!4100 = !DILocation(line: 405, column: 10, scope: !4059)
!4101 = !DILocation(line: 405, column: 8, scope: !4059)
!4102 = !DILocation(line: 406, column: 6, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 406, column: 6)
!4104 = !DILocation(line: 406, column: 6, scope: !4059)
!4105 = !DILocation(line: 407, column: 10, scope: !4103)
!4106 = !DILocation(line: 407, column: 3, scope: !4103)
!4107 = !DILocation(line: 409, column: 7, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 409, column: 6)
!4109 = !DILocation(line: 409, column: 6, scope: !4059)
!4110 = !DILocation(line: 410, column: 3, scope: !4108)
!4111 = !DILocation(line: 412, column: 7, scope: !4059)
!4112 = !DILocation(line: 412, column: 5, scope: !4059)
!4113 = !DILocation(line: 413, column: 7, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 413, column: 6)
!4115 = !DILocation(line: 413, column: 6, scope: !4059)
!4116 = !DILocation(line: 414, column: 3, scope: !4114)
!4117 = !DILocation(line: 416, column: 22, scope: !4059)
!4118 = !DILocation(line: 416, column: 2, scope: !4059)
!4119 = !DILocation(line: 417, column: 19, scope: !4059)
!4120 = !DILocation(line: 417, column: 2, scope: !4059)
!4121 = !DILocation(line: 417, column: 6, scope: !4059)
!4122 = !DILocation(line: 417, column: 17, scope: !4059)
!4123 = !DILocation(line: 418, column: 20, scope: !4059)
!4124 = !DILocation(line: 418, column: 2, scope: !4059)
!4125 = !DILocation(line: 418, column: 6, scope: !4059)
!4126 = !DILocation(line: 418, column: 18, scope: !4059)
!4127 = !DILocation(line: 420, column: 21, scope: !4059)
!4128 = !DILocation(line: 420, column: 2, scope: !4059)
!4129 = !DILocation(line: 420, column: 11, scope: !4059)
!4130 = !DILocation(line: 420, column: 19, scope: !4059)
!4131 = !DILocation(line: 422, column: 40, scope: !4059)
!4132 = !DILocation(line: 422, column: 20, scope: !4059)
!4133 = !DILocation(line: 422, column: 2, scope: !4059)
!4134 = !DILocation(line: 422, column: 11, scope: !4059)
!4135 = !DILocation(line: 422, column: 18, scope: !4059)
!4136 = !DILocation(line: 423, column: 2, scope: !4059)
!4137 = !DILocation(line: 423, column: 11, scope: !4059)
!4138 = !DILocation(line: 423, column: 16, scope: !4059)
!4139 = !DILocation(line: 425, column: 2, scope: !4059)
!4140 = !DILocation(line: 425, column: 11, scope: !4059)
!4141 = !DILocation(line: 425, column: 21, scope: !4059)
!4142 = !DILocation(line: 426, column: 2, scope: !4059)
!4143 = !DILocation(line: 426, column: 11, scope: !4059)
!4144 = !DILocation(line: 426, column: 22, scope: !4059)
!4145 = !DILocation(line: 428, column: 6, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 428, column: 6)
!4147 = !DILocation(line: 428, column: 17, scope: !4146)
!4148 = !DILocation(line: 428, column: 6, scope: !4059)
!4149 = !DILocation(line: 430, column: 15, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 428, column: 36)
!4151 = !DILocation(line: 431, column: 2, scope: !4150)
!4152 = !DILocation(line: 432, column: 27, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 431, column: 9)
!4154 = !DILocation(line: 432, column: 11, scope: !4153)
!4155 = !DILocation(line: 432, column: 9, scope: !4153)
!4156 = !DILocation(line: 433, column: 7, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 433, column: 7)
!4158 = !DILocation(line: 433, column: 7, scope: !4153)
!4159 = !DILocation(line: 434, column: 4, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 433, column: 14)
!4161 = !DILocation(line: 436, column: 16, scope: !4160)
!4162 = !DILocation(line: 437, column: 3, scope: !4160)
!4163 = !DILocation(line: 437, column: 15, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 437, column: 14)
!4165 = !DILocation(line: 437, column: 14, scope: !4157)
!4166 = !DILocation(line: 438, column: 4, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 437, column: 28)
!4168 = !DILocation(line: 440, column: 16, scope: !4167)
!4169 = !DILocation(line: 441, column: 3, scope: !4167)
!4170 = !DILocation(line: 444, column: 7, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 444, column: 6)
!4172 = !DILocation(line: 444, column: 19, scope: !4171)
!4173 = !DILocation(line: 444, column: 27, scope: !4171)
!4174 = !DILocation(line: 444, column: 6, scope: !4059)
!4175 = !DILocation(line: 445, column: 24, scope: !4171)
!4176 = !DILocation(line: 445, column: 33, scope: !4171)
!4177 = !DILocation(line: 445, column: 3, scope: !4171)
!4178 = !DILocation(line: 447, column: 32, scope: !4059)
!4179 = !DILocation(line: 447, column: 41, scope: !4059)
!4180 = !DILocation(line: 447, column: 46, scope: !4059)
!4181 = !DILocation(line: 447, column: 2, scope: !4059)
!4182 = !DILocation(line: 448, column: 39, scope: !4059)
!4183 = !DILocation(line: 448, column: 48, scope: !4059)
!4184 = !DILocation(line: 448, column: 53, scope: !4059)
!4185 = !DILocation(line: 448, column: 2, scope: !4059)
!4186 = !DILocation(line: 450, column: 6, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 450, column: 6)
!4188 = !DILocation(line: 450, column: 17, scope: !4187)
!4189 = !DILocation(line: 450, column: 35, scope: !4187)
!4190 = !DILocation(line: 451, column: 32, scope: !4187)
!4191 = !DILocation(line: 451, column: 6, scope: !4187)
!4192 = !DILocation(line: 451, column: 40, scope: !4187)
!4193 = !DILocation(line: 450, column: 6, scope: !4059)
!4194 = !DILocation(line: 455, column: 19, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 451, column: 46)
!4196 = !DILocation(line: 455, column: 3, scope: !4195)
!4197 = !DILocation(line: 456, column: 2, scope: !4195)
!4198 = !DILocation(line: 458, column: 28, scope: !4059)
!4199 = !DILocation(line: 458, column: 36, scope: !4059)
!4200 = !DILocation(line: 458, column: 43, scope: !4059)
!4201 = !DILocation(line: 458, column: 10, scope: !4059)
!4202 = !DILocation(line: 458, column: 8, scope: !4059)
!4203 = !DILocation(line: 459, column: 6, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 459, column: 6)
!4205 = !DILocation(line: 459, column: 6, scope: !4059)
!4206 = !DILocation(line: 460, column: 3, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 459, column: 13)
!4208 = !DILocation(line: 463, column: 9, scope: !4207)
!4209 = !DILocation(line: 463, column: 18, scope: !4207)
!4210 = !DILocation(line: 463, column: 3, scope: !4207)
!4211 = !DILocation(line: 464, column: 3, scope: !4207)
!4212 = !DILocation(line: 464, column: 12, scope: !4207)
!4213 = !DILocation(line: 464, column: 20, scope: !4207)
!4214 = !DILocation(line: 465, column: 3, scope: !4207)
!4215 = !DILocation(line: 468, column: 2, scope: !4059)
!4216 = !DILocation(line: 473, column: 2, scope: !4059)
!4217 = !DILocation(line: 474, column: 1, scope: !4059)
!4218 = distinct !DISubprogram(name: "trackpoint_start_protocol", scope: !3, file: !3, line: 269, type: !4219, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!205, !3646, !148, !148}
!4221 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4218, file: !3, line: 269, type: !3646)
!4222 = !DILocation(line: 269, column: 54, scope: !4218)
!4223 = !DILocalVariable(name: "variant_id", arg: 2, scope: !4218, file: !3, line: 270, type: !148)
!4224 = !DILocation(line: 270, column: 14, scope: !4218)
!4225 = !DILocalVariable(name: "firmware_id", arg: 3, scope: !4218, file: !3, line: 270, type: !148)
!4226 = !DILocation(line: 270, column: 30, scope: !4218)
!4227 = !DILocalVariable(name: "param", scope: !4218, file: !3, line: 272, type: !4228)
!4228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16, elements: !1432)
!4229 = !DILocation(line: 272, column: 5, scope: !4218)
!4230 = !DILocalVariable(name: "error", scope: !4218, file: !3, line: 273, type: !205)
!4231 = !DILocation(line: 273, column: 6, scope: !4218)
!4232 = !DILocation(line: 275, column: 23, scope: !4218)
!4233 = !DILocation(line: 275, column: 32, scope: !4218)
!4234 = !DILocation(line: 276, column: 8, scope: !4218)
!4235 = !DILocation(line: 275, column: 10, scope: !4218)
!4236 = !DILocation(line: 275, column: 8, scope: !4218)
!4237 = !DILocation(line: 277, column: 6, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 277, column: 6)
!4239 = !DILocation(line: 277, column: 6, scope: !4218)
!4240 = !DILocation(line: 278, column: 10, scope: !4238)
!4241 = !DILocation(line: 278, column: 3, scope: !4238)
!4242 = !DILocation(line: 280, column: 10, scope: !4218)
!4243 = !DILocation(line: 280, column: 2, scope: !4218)
!4244 = !DILocation(line: 287, column: 7, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 287, column: 7)
!4246 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 280, column: 20)
!4247 = !DILocation(line: 287, column: 7, scope: !4246)
!4248 = !DILocation(line: 288, column: 18, scope: !4245)
!4249 = !DILocation(line: 288, column: 5, scope: !4245)
!4250 = !DILocation(line: 288, column: 16, scope: !4245)
!4251 = !DILocation(line: 288, column: 4, scope: !4245)
!4252 = !DILocation(line: 289, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 289, column: 7)
!4254 = !DILocation(line: 289, column: 7, scope: !4246)
!4255 = !DILocation(line: 290, column: 19, scope: !4253)
!4256 = !DILocation(line: 290, column: 5, scope: !4253)
!4257 = !DILocation(line: 290, column: 17, scope: !4253)
!4258 = !DILocation(line: 290, column: 4, scope: !4253)
!4259 = !DILocation(line: 291, column: 3, scope: !4246)
!4260 = !DILocation(line: 294, column: 2, scope: !4218)
!4261 = !DILocation(line: 295, column: 1, scope: !4218)
!4262 = distinct !DISubprogram(name: "kzalloc", scope: !135, file: !135, line: 662, type: !4263, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!144, !267, !142}
!4265 = !DILocalVariable(name: "s", arg: 1, scope: !4266, file: !135, line: 445, type: !881)
!4266 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !135, file: !135, line: 445, type: !4267, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!144, !881, !142, !267}
!4269 = !DILocation(line: 445, column: 72, scope: !4266, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 552, column: 10, scope: !4271, inlinedAt: !4274)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !135, line: 540, column: 34)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !135, line: 540, column: 6)
!4273 = distinct !DISubprogram(name: "kmalloc", scope: !135, file: !135, line: 538, type: !4263, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4274 = distinct !DILocation(line: 664, column: 9, scope: !4262)
!4275 = !DILocalVariable(name: "flags", arg: 2, scope: !4266, file: !135, line: 446, type: !142)
!4276 = !DILocation(line: 446, column: 9, scope: !4266, inlinedAt: !4270)
!4277 = !DILocalVariable(name: "size", arg: 3, scope: !4266, file: !135, line: 446, type: !267)
!4278 = !DILocation(line: 446, column: 23, scope: !4266, inlinedAt: !4270)
!4279 = !DILocalVariable(name: "ret", scope: !4266, file: !135, line: 448, type: !144)
!4280 = !DILocation(line: 448, column: 8, scope: !4266, inlinedAt: !4270)
!4281 = !DILocalVariable(name: "flags", arg: 1, scope: !4282, file: !135, line: 318, type: !142)
!4282 = distinct !DISubprogram(name: "kmalloc_type", scope: !135, file: !135, line: 318, type: !4283, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!134, !142}
!4285 = !DILocation(line: 318, column: 67, scope: !4282, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 553, column: 20, scope: !4271, inlinedAt: !4274)
!4287 = !DILocalVariable(name: "size", arg: 1, scope: !4288, file: !135, line: 346, type: !267)
!4288 = distinct !DISubprogram(name: "kmalloc_index", scope: !135, file: !135, line: 346, type: !4289, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!7, !267}
!4291 = !DILocation(line: 346, column: 58, scope: !4288, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 547, column: 11, scope: !4271, inlinedAt: !4274)
!4293 = !DILocalVariable(name: "size", arg: 1, scope: !4294, file: !135, line: 472, type: !267)
!4294 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !135, file: !135, line: 472, type: !4295, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!144, !267, !142, !7}
!4297 = !DILocation(line: 472, column: 28, scope: !4294, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 481, column: 9, scope: !4299, inlinedAt: !4300)
!4299 = distinct !DISubprogram(name: "kmalloc_large", scope: !135, file: !135, line: 478, type: !4263, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4300 = distinct !DILocation(line: 545, column: 11, scope: !4301, inlinedAt: !4274)
!4301 = distinct !DILexicalBlock(scope: !4271, file: !135, line: 544, column: 7)
!4302 = !DILocalVariable(name: "flags", arg: 2, scope: !4294, file: !135, line: 472, type: !142)
!4303 = !DILocation(line: 472, column: 40, scope: !4294, inlinedAt: !4298)
!4304 = !DILocalVariable(name: "order", arg: 3, scope: !4294, file: !135, line: 472, type: !7)
!4305 = !DILocation(line: 472, column: 60, scope: !4294, inlinedAt: !4298)
!4306 = !DILocalVariable(name: "size", arg: 1, scope: !4299, file: !135, line: 478, type: !267)
!4307 = !DILocation(line: 478, column: 51, scope: !4299, inlinedAt: !4300)
!4308 = !DILocalVariable(name: "flags", arg: 2, scope: !4299, file: !135, line: 478, type: !142)
!4309 = !DILocation(line: 478, column: 63, scope: !4299, inlinedAt: !4300)
!4310 = !DILocalVariable(name: "order", scope: !4299, file: !135, line: 480, type: !7)
!4311 = !DILocation(line: 480, column: 15, scope: !4299, inlinedAt: !4300)
!4312 = !DILocalVariable(name: "size", arg: 1, scope: !4273, file: !135, line: 538, type: !267)
!4313 = !DILocation(line: 538, column: 45, scope: !4273, inlinedAt: !4274)
!4314 = !DILocalVariable(name: "flags", arg: 2, scope: !4273, file: !135, line: 538, type: !142)
!4315 = !DILocation(line: 538, column: 57, scope: !4273, inlinedAt: !4274)
!4316 = !DILocalVariable(name: "index", scope: !4271, file: !135, line: 542, type: !7)
!4317 = !DILocation(line: 542, column: 16, scope: !4271, inlinedAt: !4274)
!4318 = !DILocalVariable(name: "size", arg: 1, scope: !4262, file: !135, line: 662, type: !267)
!4319 = !DILocation(line: 662, column: 36, scope: !4262)
!4320 = !DILocalVariable(name: "flags", arg: 2, scope: !4262, file: !135, line: 662, type: !142)
!4321 = !DILocation(line: 662, column: 48, scope: !4262)
!4322 = !DILocation(line: 664, column: 17, scope: !4262)
!4323 = !DILocation(line: 664, column: 23, scope: !4262)
!4324 = !DILocation(line: 664, column: 29, scope: !4262)
!4325 = !DILocation(line: 540, column: 27, scope: !4272, inlinedAt: !4274)
!4326 = !DILocation(line: 540, column: 6, scope: !4272, inlinedAt: !4274)
!4327 = !DILocation(line: 540, column: 6, scope: !4273, inlinedAt: !4274)
!4328 = !DILocation(line: 544, column: 7, scope: !4301, inlinedAt: !4274)
!4329 = !DILocation(line: 544, column: 12, scope: !4301, inlinedAt: !4274)
!4330 = !DILocation(line: 544, column: 7, scope: !4271, inlinedAt: !4274)
!4331 = !DILocation(line: 545, column: 25, scope: !4301, inlinedAt: !4274)
!4332 = !DILocation(line: 545, column: 31, scope: !4301, inlinedAt: !4274)
!4333 = !DILocation(line: 480, column: 33, scope: !4299, inlinedAt: !4300)
!4334 = !DILocation(line: 480, column: 23, scope: !4299, inlinedAt: !4300)
!4335 = !DILocation(line: 481, column: 29, scope: !4299, inlinedAt: !4300)
!4336 = !DILocation(line: 481, column: 35, scope: !4299, inlinedAt: !4300)
!4337 = !DILocation(line: 481, column: 42, scope: !4299, inlinedAt: !4300)
!4338 = !DILocation(line: 474, column: 23, scope: !4294, inlinedAt: !4298)
!4339 = !DILocation(line: 474, column: 29, scope: !4294, inlinedAt: !4298)
!4340 = !DILocation(line: 474, column: 36, scope: !4294, inlinedAt: !4298)
!4341 = !DILocation(line: 474, column: 9, scope: !4294, inlinedAt: !4298)
!4342 = !DILocation(line: 545, column: 4, scope: !4301, inlinedAt: !4274)
!4343 = !DILocation(line: 547, column: 25, scope: !4271, inlinedAt: !4274)
!4344 = !DILocation(line: 348, column: 7, scope: !4345, inlinedAt: !4292)
!4345 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 348, column: 6)
!4346 = !DILocation(line: 348, column: 6, scope: !4288, inlinedAt: !4292)
!4347 = !DILocation(line: 349, column: 3, scope: !4345, inlinedAt: !4292)
!4348 = !DILocation(line: 351, column: 6, scope: !4349, inlinedAt: !4292)
!4349 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 351, column: 6)
!4350 = !DILocation(line: 351, column: 11, scope: !4349, inlinedAt: !4292)
!4351 = !DILocation(line: 351, column: 6, scope: !4288, inlinedAt: !4292)
!4352 = !DILocation(line: 352, column: 3, scope: !4349, inlinedAt: !4292)
!4353 = !DILocation(line: 354, column: 32, scope: !4354, inlinedAt: !4292)
!4354 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 354, column: 6)
!4355 = !DILocation(line: 354, column: 37, scope: !4354, inlinedAt: !4292)
!4356 = !DILocation(line: 354, column: 42, scope: !4354, inlinedAt: !4292)
!4357 = !DILocation(line: 354, column: 45, scope: !4354, inlinedAt: !4292)
!4358 = !DILocation(line: 354, column: 50, scope: !4354, inlinedAt: !4292)
!4359 = !DILocation(line: 354, column: 6, scope: !4288, inlinedAt: !4292)
!4360 = !DILocation(line: 355, column: 3, scope: !4354, inlinedAt: !4292)
!4361 = !DILocation(line: 356, column: 32, scope: !4362, inlinedAt: !4292)
!4362 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 356, column: 6)
!4363 = !DILocation(line: 356, column: 37, scope: !4362, inlinedAt: !4292)
!4364 = !DILocation(line: 356, column: 43, scope: !4362, inlinedAt: !4292)
!4365 = !DILocation(line: 356, column: 46, scope: !4362, inlinedAt: !4292)
!4366 = !DILocation(line: 356, column: 51, scope: !4362, inlinedAt: !4292)
!4367 = !DILocation(line: 356, column: 6, scope: !4288, inlinedAt: !4292)
!4368 = !DILocation(line: 357, column: 3, scope: !4362, inlinedAt: !4292)
!4369 = !DILocation(line: 358, column: 6, scope: !4370, inlinedAt: !4292)
!4370 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 358, column: 6)
!4371 = !DILocation(line: 358, column: 11, scope: !4370, inlinedAt: !4292)
!4372 = !DILocation(line: 358, column: 6, scope: !4288, inlinedAt: !4292)
!4373 = !DILocation(line: 358, column: 26, scope: !4370, inlinedAt: !4292)
!4374 = !DILocation(line: 359, column: 6, scope: !4375, inlinedAt: !4292)
!4375 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 359, column: 6)
!4376 = !DILocation(line: 359, column: 11, scope: !4375, inlinedAt: !4292)
!4377 = !DILocation(line: 359, column: 6, scope: !4288, inlinedAt: !4292)
!4378 = !DILocation(line: 359, column: 26, scope: !4375, inlinedAt: !4292)
!4379 = !DILocation(line: 360, column: 6, scope: !4380, inlinedAt: !4292)
!4380 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 360, column: 6)
!4381 = !DILocation(line: 360, column: 11, scope: !4380, inlinedAt: !4292)
!4382 = !DILocation(line: 360, column: 6, scope: !4288, inlinedAt: !4292)
!4383 = !DILocation(line: 360, column: 26, scope: !4380, inlinedAt: !4292)
!4384 = !DILocation(line: 361, column: 6, scope: !4385, inlinedAt: !4292)
!4385 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 361, column: 6)
!4386 = !DILocation(line: 361, column: 11, scope: !4385, inlinedAt: !4292)
!4387 = !DILocation(line: 361, column: 6, scope: !4288, inlinedAt: !4292)
!4388 = !DILocation(line: 361, column: 26, scope: !4385, inlinedAt: !4292)
!4389 = !DILocation(line: 362, column: 6, scope: !4390, inlinedAt: !4292)
!4390 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 362, column: 6)
!4391 = !DILocation(line: 362, column: 11, scope: !4390, inlinedAt: !4292)
!4392 = !DILocation(line: 362, column: 6, scope: !4288, inlinedAt: !4292)
!4393 = !DILocation(line: 362, column: 26, scope: !4390, inlinedAt: !4292)
!4394 = !DILocation(line: 363, column: 6, scope: !4395, inlinedAt: !4292)
!4395 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 363, column: 6)
!4396 = !DILocation(line: 363, column: 11, scope: !4395, inlinedAt: !4292)
!4397 = !DILocation(line: 363, column: 6, scope: !4288, inlinedAt: !4292)
!4398 = !DILocation(line: 363, column: 26, scope: !4395, inlinedAt: !4292)
!4399 = !DILocation(line: 364, column: 6, scope: !4400, inlinedAt: !4292)
!4400 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 364, column: 6)
!4401 = !DILocation(line: 364, column: 11, scope: !4400, inlinedAt: !4292)
!4402 = !DILocation(line: 364, column: 6, scope: !4288, inlinedAt: !4292)
!4403 = !DILocation(line: 364, column: 26, scope: !4400, inlinedAt: !4292)
!4404 = !DILocation(line: 365, column: 6, scope: !4405, inlinedAt: !4292)
!4405 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 365, column: 6)
!4406 = !DILocation(line: 365, column: 11, scope: !4405, inlinedAt: !4292)
!4407 = !DILocation(line: 365, column: 6, scope: !4288, inlinedAt: !4292)
!4408 = !DILocation(line: 365, column: 26, scope: !4405, inlinedAt: !4292)
!4409 = !DILocation(line: 366, column: 6, scope: !4410, inlinedAt: !4292)
!4410 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 366, column: 6)
!4411 = !DILocation(line: 366, column: 11, scope: !4410, inlinedAt: !4292)
!4412 = !DILocation(line: 366, column: 6, scope: !4288, inlinedAt: !4292)
!4413 = !DILocation(line: 366, column: 26, scope: !4410, inlinedAt: !4292)
!4414 = !DILocation(line: 367, column: 6, scope: !4415, inlinedAt: !4292)
!4415 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 367, column: 6)
!4416 = !DILocation(line: 367, column: 11, scope: !4415, inlinedAt: !4292)
!4417 = !DILocation(line: 367, column: 6, scope: !4288, inlinedAt: !4292)
!4418 = !DILocation(line: 367, column: 26, scope: !4415, inlinedAt: !4292)
!4419 = !DILocation(line: 368, column: 6, scope: !4420, inlinedAt: !4292)
!4420 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 368, column: 6)
!4421 = !DILocation(line: 368, column: 11, scope: !4420, inlinedAt: !4292)
!4422 = !DILocation(line: 368, column: 6, scope: !4288, inlinedAt: !4292)
!4423 = !DILocation(line: 368, column: 26, scope: !4420, inlinedAt: !4292)
!4424 = !DILocation(line: 369, column: 6, scope: !4425, inlinedAt: !4292)
!4425 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 369, column: 6)
!4426 = !DILocation(line: 369, column: 11, scope: !4425, inlinedAt: !4292)
!4427 = !DILocation(line: 369, column: 6, scope: !4288, inlinedAt: !4292)
!4428 = !DILocation(line: 369, column: 26, scope: !4425, inlinedAt: !4292)
!4429 = !DILocation(line: 370, column: 6, scope: !4430, inlinedAt: !4292)
!4430 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 370, column: 6)
!4431 = !DILocation(line: 370, column: 11, scope: !4430, inlinedAt: !4292)
!4432 = !DILocation(line: 370, column: 6, scope: !4288, inlinedAt: !4292)
!4433 = !DILocation(line: 370, column: 26, scope: !4430, inlinedAt: !4292)
!4434 = !DILocation(line: 371, column: 6, scope: !4435, inlinedAt: !4292)
!4435 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 371, column: 6)
!4436 = !DILocation(line: 371, column: 11, scope: !4435, inlinedAt: !4292)
!4437 = !DILocation(line: 371, column: 6, scope: !4288, inlinedAt: !4292)
!4438 = !DILocation(line: 371, column: 26, scope: !4435, inlinedAt: !4292)
!4439 = !DILocation(line: 372, column: 6, scope: !4440, inlinedAt: !4292)
!4440 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 372, column: 6)
!4441 = !DILocation(line: 372, column: 11, scope: !4440, inlinedAt: !4292)
!4442 = !DILocation(line: 372, column: 6, scope: !4288, inlinedAt: !4292)
!4443 = !DILocation(line: 372, column: 26, scope: !4440, inlinedAt: !4292)
!4444 = !DILocation(line: 373, column: 6, scope: !4445, inlinedAt: !4292)
!4445 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 373, column: 6)
!4446 = !DILocation(line: 373, column: 11, scope: !4445, inlinedAt: !4292)
!4447 = !DILocation(line: 373, column: 6, scope: !4288, inlinedAt: !4292)
!4448 = !DILocation(line: 373, column: 26, scope: !4445, inlinedAt: !4292)
!4449 = !DILocation(line: 374, column: 6, scope: !4450, inlinedAt: !4292)
!4450 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 374, column: 6)
!4451 = !DILocation(line: 374, column: 11, scope: !4450, inlinedAt: !4292)
!4452 = !DILocation(line: 374, column: 6, scope: !4288, inlinedAt: !4292)
!4453 = !DILocation(line: 374, column: 26, scope: !4450, inlinedAt: !4292)
!4454 = !DILocation(line: 375, column: 6, scope: !4455, inlinedAt: !4292)
!4455 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 375, column: 6)
!4456 = !DILocation(line: 375, column: 11, scope: !4455, inlinedAt: !4292)
!4457 = !DILocation(line: 375, column: 6, scope: !4288, inlinedAt: !4292)
!4458 = !DILocation(line: 375, column: 27, scope: !4455, inlinedAt: !4292)
!4459 = !DILocation(line: 376, column: 6, scope: !4460, inlinedAt: !4292)
!4460 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 376, column: 6)
!4461 = !DILocation(line: 376, column: 11, scope: !4460, inlinedAt: !4292)
!4462 = !DILocation(line: 376, column: 6, scope: !4288, inlinedAt: !4292)
!4463 = !DILocation(line: 376, column: 32, scope: !4460, inlinedAt: !4292)
!4464 = !DILocation(line: 377, column: 6, scope: !4465, inlinedAt: !4292)
!4465 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 377, column: 6)
!4466 = !DILocation(line: 377, column: 11, scope: !4465, inlinedAt: !4292)
!4467 = !DILocation(line: 377, column: 6, scope: !4288, inlinedAt: !4292)
!4468 = !DILocation(line: 377, column: 32, scope: !4465, inlinedAt: !4292)
!4469 = !DILocation(line: 378, column: 6, scope: !4470, inlinedAt: !4292)
!4470 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 378, column: 6)
!4471 = !DILocation(line: 378, column: 11, scope: !4470, inlinedAt: !4292)
!4472 = !DILocation(line: 378, column: 6, scope: !4288, inlinedAt: !4292)
!4473 = !DILocation(line: 378, column: 32, scope: !4470, inlinedAt: !4292)
!4474 = !DILocation(line: 379, column: 6, scope: !4475, inlinedAt: !4292)
!4475 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 379, column: 6)
!4476 = !DILocation(line: 379, column: 11, scope: !4475, inlinedAt: !4292)
!4477 = !DILocation(line: 379, column: 6, scope: !4288, inlinedAt: !4292)
!4478 = !DILocation(line: 379, column: 33, scope: !4475, inlinedAt: !4292)
!4479 = !DILocation(line: 380, column: 6, scope: !4480, inlinedAt: !4292)
!4480 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 380, column: 6)
!4481 = !DILocation(line: 380, column: 11, scope: !4480, inlinedAt: !4292)
!4482 = !DILocation(line: 380, column: 6, scope: !4288, inlinedAt: !4292)
!4483 = !DILocation(line: 380, column: 33, scope: !4480, inlinedAt: !4292)
!4484 = !DILocation(line: 381, column: 6, scope: !4485, inlinedAt: !4292)
!4485 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 381, column: 6)
!4486 = !DILocation(line: 381, column: 11, scope: !4485, inlinedAt: !4292)
!4487 = !DILocation(line: 381, column: 6, scope: !4288, inlinedAt: !4292)
!4488 = !DILocation(line: 381, column: 33, scope: !4485, inlinedAt: !4292)
!4489 = !DILocation(line: 382, column: 2, scope: !4490, inlinedAt: !4292)
!4490 = distinct !DILexicalBlock(scope: !4491, file: !135, line: 382, column: 2)
!4491 = distinct !DILexicalBlock(scope: !4288, file: !135, line: 382, column: 2)
!4492 = !{i32 -2144641999, i32 -2144641970, i32 -2144641924, i32 -2144641866, i32 -2144641812, i32 -2144641758, i32 -2144641703, i32 -2144641672}
!4493 = !DILocation(line: 382, column: 2, scope: !4494, inlinedAt: !4292)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !135, line: 382, column: 2)
!4495 = distinct !DILexicalBlock(scope: !4491, file: !135, line: 382, column: 2)
!4496 = !{i32 -2144641229, i32 -2144641222, i32 -2144641168, i32 -2144641137, i32 -2144641107}
!4497 = !DILocation(line: 382, column: 2, scope: !4495, inlinedAt: !4292)
!4498 = !DILocation(line: 386, column: 1, scope: !4288, inlinedAt: !4292)
!4499 = !DILocation(line: 547, column: 9, scope: !4271, inlinedAt: !4274)
!4500 = !DILocation(line: 549, column: 8, scope: !4501, inlinedAt: !4274)
!4501 = distinct !DILexicalBlock(scope: !4271, file: !135, line: 549, column: 7)
!4502 = !DILocation(line: 549, column: 7, scope: !4271, inlinedAt: !4274)
!4503 = !DILocation(line: 550, column: 4, scope: !4501, inlinedAt: !4274)
!4504 = !DILocation(line: 553, column: 33, scope: !4271, inlinedAt: !4274)
!4505 = !DILocation(line: 325, column: 6, scope: !4506, inlinedAt: !4286)
!4506 = distinct !DILexicalBlock(scope: !4282, file: !135, line: 325, column: 6)
!4507 = !DILocation(line: 325, column: 6, scope: !4282, inlinedAt: !4286)
!4508 = !DILocation(line: 326, column: 3, scope: !4506, inlinedAt: !4286)
!4509 = !DILocation(line: 332, column: 9, scope: !4282, inlinedAt: !4286)
!4510 = !DILocation(line: 332, column: 15, scope: !4282, inlinedAt: !4286)
!4511 = !DILocation(line: 332, column: 2, scope: !4282, inlinedAt: !4286)
!4512 = !DILocation(line: 336, column: 1, scope: !4282, inlinedAt: !4286)
!4513 = !DILocation(line: 553, column: 5, scope: !4271, inlinedAt: !4274)
!4514 = !DILocation(line: 553, column: 41, scope: !4271, inlinedAt: !4274)
!4515 = !DILocation(line: 554, column: 5, scope: !4271, inlinedAt: !4274)
!4516 = !DILocation(line: 554, column: 12, scope: !4271, inlinedAt: !4274)
!4517 = !DILocation(line: 448, column: 31, scope: !4266, inlinedAt: !4270)
!4518 = !DILocation(line: 448, column: 34, scope: !4266, inlinedAt: !4270)
!4519 = !DILocation(line: 448, column: 14, scope: !4266, inlinedAt: !4270)
!4520 = !DILocation(line: 450, column: 22, scope: !4266, inlinedAt: !4270)
!4521 = !DILocation(line: 450, column: 25, scope: !4266, inlinedAt: !4270)
!4522 = !DILocation(line: 450, column: 30, scope: !4266, inlinedAt: !4270)
!4523 = !DILocation(line: 450, column: 36, scope: !4266, inlinedAt: !4270)
!4524 = !DILocation(line: 450, column: 8, scope: !4266, inlinedAt: !4270)
!4525 = !DILocation(line: 450, column: 6, scope: !4266, inlinedAt: !4270)
!4526 = !DILocation(line: 451, column: 9, scope: !4266, inlinedAt: !4270)
!4527 = !DILocation(line: 552, column: 3, scope: !4271, inlinedAt: !4274)
!4528 = !DILocation(line: 557, column: 19, scope: !4273, inlinedAt: !4274)
!4529 = !DILocation(line: 557, column: 25, scope: !4273, inlinedAt: !4274)
!4530 = !DILocation(line: 557, column: 9, scope: !4273, inlinedAt: !4274)
!4531 = !DILocation(line: 557, column: 2, scope: !4273, inlinedAt: !4274)
!4532 = !DILocation(line: 558, column: 1, scope: !4273, inlinedAt: !4274)
!4533 = !DILocation(line: 664, column: 2, scope: !4262)
!4534 = distinct !DISubprogram(name: "trackpoint_defaults", scope: !3, file: !3, line: 347, type: !4535, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !4070}
!4537 = !DILocalVariable(name: "tp", arg: 1, scope: !4534, file: !3, line: 347, type: !4070)
!4538 = !DILocation(line: 347, column: 57, scope: !4534)
!4539 = !DILocation(line: 349, column: 2, scope: !4534)
!4540 = !DILocation(line: 349, column: 2, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 349, column: 2)
!4542 = !DILocation(line: 350, column: 2, scope: !4534)
!4543 = !DILocation(line: 350, column: 2, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 350, column: 2)
!4545 = !DILocation(line: 351, column: 2, scope: !4534)
!4546 = !DILocation(line: 351, column: 2, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 351, column: 2)
!4548 = !DILocation(line: 352, column: 2, scope: !4534)
!4549 = !DILocation(line: 352, column: 2, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 352, column: 2)
!4551 = !DILocation(line: 353, column: 2, scope: !4534)
!4552 = !DILocation(line: 353, column: 2, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 353, column: 2)
!4554 = !DILocation(line: 354, column: 2, scope: !4534)
!4555 = !DILocation(line: 354, column: 2, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 354, column: 2)
!4557 = !DILocation(line: 355, column: 2, scope: !4534)
!4558 = !DILocation(line: 355, column: 2, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 355, column: 2)
!4560 = !DILocation(line: 356, column: 2, scope: !4534)
!4561 = !DILocation(line: 356, column: 2, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 356, column: 2)
!4563 = !DILocation(line: 357, column: 2, scope: !4534)
!4564 = !DILocation(line: 357, column: 2, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 357, column: 2)
!4566 = !DILocation(line: 358, column: 2, scope: !4534)
!4567 = !DILocation(line: 358, column: 2, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 358, column: 2)
!4569 = !DILocation(line: 359, column: 2, scope: !4534)
!4570 = !DILocation(line: 359, column: 2, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 359, column: 2)
!4572 = !DILocation(line: 362, column: 2, scope: !4534)
!4573 = !DILocation(line: 362, column: 2, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 362, column: 2)
!4575 = !DILocation(line: 363, column: 2, scope: !4534)
!4576 = !DILocation(line: 363, column: 2, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 363, column: 2)
!4578 = !DILocation(line: 364, column: 2, scope: !4534)
!4579 = !DILocation(line: 364, column: 2, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 364, column: 2)
!4581 = !DILocation(line: 365, column: 1, scope: !4534)
!4582 = distinct !DISubprogram(name: "trackpoint_reconnect", scope: !3, file: !3, line: 376, type: !3965, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4583 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4582, file: !3, line: 376, type: !3646)
!4584 = !DILocation(line: 376, column: 49, scope: !4582)
!4585 = !DILocalVariable(name: "tp", scope: !4582, file: !3, line: 378, type: !4070)
!4586 = !DILocation(line: 378, column: 26, scope: !4582)
!4587 = !DILocation(line: 378, column: 31, scope: !4582)
!4588 = !DILocation(line: 378, column: 40, scope: !4582)
!4589 = !DILocalVariable(name: "error", scope: !4582, file: !3, line: 379, type: !205)
!4590 = !DILocation(line: 379, column: 6, scope: !4582)
!4591 = !DILocalVariable(name: "was_reset", scope: !4582, file: !3, line: 380, type: !433)
!4592 = !DILocation(line: 380, column: 7, scope: !4582)
!4593 = !DILocation(line: 382, column: 36, scope: !4582)
!4594 = !DILocation(line: 382, column: 10, scope: !4582)
!4595 = !DILocation(line: 382, column: 8, scope: !4582)
!4596 = !DILocation(line: 383, column: 6, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 383, column: 6)
!4598 = !DILocation(line: 383, column: 6, scope: !4582)
!4599 = !DILocation(line: 384, column: 10, scope: !4597)
!4600 = !DILocation(line: 384, column: 3, scope: !4597)
!4601 = !DILocation(line: 386, column: 14, scope: !4582)
!4602 = !DILocation(line: 386, column: 18, scope: !4582)
!4603 = !DILocation(line: 386, column: 29, scope: !4582)
!4604 = !DILocation(line: 386, column: 47, scope: !4582)
!4605 = !DILocation(line: 387, column: 34, scope: !4582)
!4606 = !DILocation(line: 387, column: 43, scope: !4582)
!4607 = !DILocation(line: 387, column: 7, scope: !4582)
!4608 = !DILocation(line: 387, column: 51, scope: !4582)
!4609 = !DILocation(line: 0, scope: !4582)
!4610 = !DILocation(line: 386, column: 12, scope: !4582)
!4611 = !DILocation(line: 389, column: 26, scope: !4582)
!4612 = !DILocation(line: 389, column: 35, scope: !4582)
!4613 = !DILocation(line: 389, column: 10, scope: !4582)
!4614 = !DILocation(line: 389, column: 8, scope: !4582)
!4615 = !DILocation(line: 390, column: 6, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 390, column: 6)
!4617 = !DILocation(line: 390, column: 6, scope: !4582)
!4618 = !DILocation(line: 391, column: 10, scope: !4616)
!4619 = !DILocation(line: 391, column: 3, scope: !4616)
!4620 = !DILocation(line: 393, column: 2, scope: !4582)
!4621 = !DILocation(line: 394, column: 1, scope: !4582)
!4622 = distinct !DISubprogram(name: "trackpoint_disconnect", scope: !3, file: !3, line: 367, type: !4006, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4623 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4622, file: !3, line: 367, type: !3646)
!4624 = !DILocation(line: 367, column: 51, scope: !4622)
!4625 = !DILocation(line: 369, column: 23, scope: !4622)
!4626 = !DILocation(line: 369, column: 32, scope: !4622)
!4627 = !DILocation(line: 369, column: 39, scope: !4622)
!4628 = !DILocation(line: 369, column: 46, scope: !4622)
!4629 = !DILocation(line: 369, column: 2, scope: !4622)
!4630 = !DILocation(line: 372, column: 8, scope: !4622)
!4631 = !DILocation(line: 372, column: 17, scope: !4622)
!4632 = !DILocation(line: 372, column: 2, scope: !4622)
!4633 = !DILocation(line: 373, column: 2, scope: !4622)
!4634 = !DILocation(line: 373, column: 11, scope: !4622)
!4635 = !DILocation(line: 373, column: 19, scope: !4622)
!4636 = !DILocation(line: 374, column: 1, scope: !4622)
!4637 = distinct !DISubprogram(name: "trackpoint_read", scope: !3, file: !3, line: 52, type: !4638, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!205, !4065, !149, !148}
!4640 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4637, file: !3, line: 52, type: !4065)
!4641 = !DILocation(line: 52, column: 43, scope: !4637)
!4642 = !DILocalVariable(name: "loc", arg: 2, scope: !4637, file: !3, line: 52, type: !149)
!4643 = !DILocation(line: 52, column: 54, scope: !4637)
!4644 = !DILocalVariable(name: "results", arg: 3, scope: !4637, file: !3, line: 52, type: !148)
!4645 = !DILocation(line: 52, column: 63, scope: !4637)
!4646 = !DILocation(line: 54, column: 15, scope: !4637)
!4647 = !DILocation(line: 54, column: 2, scope: !4637)
!4648 = !DILocation(line: 54, column: 13, scope: !4637)
!4649 = !DILocation(line: 56, column: 21, scope: !4637)
!4650 = !DILocation(line: 56, column: 29, scope: !4637)
!4651 = !DILocation(line: 56, column: 9, scope: !4637)
!4652 = !DILocation(line: 56, column: 2, scope: !4637)
!4653 = distinct !DISubprogram(name: "__set_bit", scope: !4654, file: !4654, line: 25, type: !4655, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4654 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !147, !4657}
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !270)
!4659 = !DILocalVariable(name: "nr", arg: 1, scope: !4660, file: !4661, line: 66, type: !147)
!4660 = distinct !DISubprogram(name: "arch___set_bit", scope: !4661, file: !4661, line: 66, type: !4655, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4661 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4662 = !DILocation(line: 66, column: 21, scope: !4660, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 28, column: 2, scope: !4653)
!4664 = !DILocalVariable(name: "addr", arg: 2, scope: !4660, file: !4661, line: 66, type: !4657)
!4665 = !DILocation(line: 66, column: 49, scope: !4660, inlinedAt: !4663)
!4666 = !DILocalVariable(name: "v", arg: 1, scope: !4667, file: !4668, line: 39, type: !4671)
!4667 = distinct !DISubprogram(name: "instrument_write", scope: !4668, file: !4668, line: 39, type: !4669, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4668 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4669 = !DISubroutineType(types: !4670)
!4670 = !{null, !4671, !267}
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4673)
!4673 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4674 = !DILocation(line: 39, column: 67, scope: !4667, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 27, column: 2, scope: !4653)
!4676 = !DILocalVariable(name: "size", arg: 2, scope: !4667, file: !4668, line: 39, type: !267)
!4677 = !DILocation(line: 39, column: 77, scope: !4667, inlinedAt: !4675)
!4678 = !DILocalVariable(name: "nr", arg: 1, scope: !4653, file: !4654, line: 25, type: !147)
!4679 = !DILocation(line: 25, column: 35, scope: !4653)
!4680 = !DILocalVariable(name: "addr", arg: 2, scope: !4653, file: !4654, line: 25, type: !4657)
!4681 = !DILocation(line: 25, column: 63, scope: !4653)
!4682 = !DILocation(line: 27, column: 19, scope: !4653)
!4683 = !DILocation(line: 27, column: 26, scope: !4653)
!4684 = !DILocation(line: 27, column: 24, scope: !4653)
!4685 = !DILocation(line: 41, column: 20, scope: !4667, inlinedAt: !4675)
!4686 = !DILocation(line: 41, column: 23, scope: !4667, inlinedAt: !4675)
!4687 = !DILocation(line: 41, column: 2, scope: !4667, inlinedAt: !4675)
!4688 = !DILocation(line: 42, column: 2, scope: !4667, inlinedAt: !4675)
!4689 = !DILocation(line: 28, column: 17, scope: !4653)
!4690 = !DILocation(line: 28, column: 21, scope: !4653)
!4691 = !DILocation(line: 68, column: 44, scope: !4660, inlinedAt: !4663)
!4692 = !DILocation(line: 68, column: 56, scope: !4660, inlinedAt: !4663)
!4693 = !DILocation(line: 68, column: 2, scope: !4660, inlinedAt: !4663)
!4694 = !{i32 -2147138272}
!4695 = !DILocation(line: 29, column: 1, scope: !4653)
!4696 = distinct !DISubprogram(name: "trackpoint_power_on_reset", scope: !3, file: !3, line: 33, type: !4697, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!205, !4065}
!4699 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4696, file: !3, line: 33, type: !4065)
!4700 = !DILocation(line: 33, column: 53, scope: !4696)
!4701 = !DILocalVariable(name: "param", scope: !4696, file: !3, line: 35, type: !4228)
!4702 = !DILocation(line: 35, column: 5, scope: !4696)
!4703 = !DILocalVariable(name: "err", scope: !4696, file: !3, line: 36, type: !205)
!4704 = !DILocation(line: 36, column: 6, scope: !4696)
!4705 = !DILocation(line: 38, column: 20, scope: !4696)
!4706 = !DILocation(line: 38, column: 28, scope: !4696)
!4707 = !DILocation(line: 38, column: 8, scope: !4696)
!4708 = !DILocation(line: 38, column: 6, scope: !4696)
!4709 = !DILocation(line: 39, column: 6, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 39, column: 6)
!4711 = !DILocation(line: 39, column: 6, scope: !4696)
!4712 = !DILocation(line: 40, column: 10, scope: !4710)
!4713 = !DILocation(line: 40, column: 3, scope: !4710)
!4714 = !DILocation(line: 43, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 43, column: 6)
!4716 = !DILocation(line: 43, column: 15, scope: !4715)
!4717 = !DILocation(line: 43, column: 23, scope: !4715)
!4718 = !DILocation(line: 43, column: 26, scope: !4715)
!4719 = !DILocation(line: 43, column: 35, scope: !4715)
!4720 = !DILocation(line: 43, column: 6, scope: !4696)
!4721 = !DILocation(line: 44, column: 3, scope: !4715)
!4722 = !DILocation(line: 46, column: 2, scope: !4696)
!4723 = !DILocation(line: 47, column: 1, scope: !4696)
!4724 = distinct !DISubprogram(name: "trackpoint_sync", scope: !3, file: !3, line: 303, type: !3961, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4725 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4724, file: !3, line: 303, type: !3646)
!4726 = !DILocation(line: 303, column: 44, scope: !4724)
!4727 = !DILocalVariable(name: "in_power_on_state", arg: 2, scope: !4724, file: !3, line: 303, type: !433)
!4728 = !DILocation(line: 303, column: 58, scope: !4724)
!4729 = !DILocalVariable(name: "tp", scope: !4724, file: !3, line: 305, type: !4070)
!4730 = !DILocation(line: 305, column: 26, scope: !4724)
!4731 = !DILocation(line: 305, column: 31, scope: !4724)
!4732 = !DILocation(line: 305, column: 40, scope: !4724)
!4733 = !DILocation(line: 307, column: 7, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 307, column: 6)
!4735 = !DILocation(line: 307, column: 25, scope: !4734)
!4736 = !DILocation(line: 307, column: 28, scope: !4734)
!4737 = !DILocation(line: 307, column: 32, scope: !4734)
!4738 = !DILocation(line: 307, column: 43, scope: !4734)
!4739 = !DILocation(line: 307, column: 6, scope: !4724)
!4740 = !DILocation(line: 312, column: 26, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 307, column: 62)
!4742 = !DILocation(line: 312, column: 35, scope: !4741)
!4743 = !DILocation(line: 312, column: 3, scope: !4741)
!4744 = !DILocation(line: 315, column: 26, scope: !4741)
!4745 = !DILocation(line: 315, column: 35, scope: !4741)
!4746 = !DILocation(line: 315, column: 3, scope: !4741)
!4747 = !DILocation(line: 318, column: 26, scope: !4741)
!4748 = !DILocation(line: 318, column: 35, scope: !4741)
!4749 = !DILocation(line: 318, column: 3, scope: !4741)
!4750 = !DILocation(line: 320, column: 2, scope: !4741)
!4751 = !DILocation(line: 327, column: 2, scope: !4724)
!4752 = !DILocalVariable(name: "_attr", scope: !4753, file: !3, line: 327, type: !4754)
!4753 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 327, column: 2)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!4755 = !DILocation(line: 327, column: 2, scope: !4753)
!4756 = !DILocation(line: 327, column: 2, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 327, column: 2)
!4758 = !DILocation(line: 327, column: 2, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 327, column: 2)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 327, column: 2)
!4761 = !DILocation(line: 327, column: 2, scope: !4760)
!4762 = !DILocation(line: 328, column: 2, scope: !4724)
!4763 = !DILocalVariable(name: "_attr", scope: !4764, file: !3, line: 328, type: !4754)
!4764 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 328, column: 2)
!4765 = !DILocation(line: 328, column: 2, scope: !4764)
!4766 = !DILocation(line: 328, column: 2, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 328, column: 2)
!4768 = !DILocation(line: 328, column: 2, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 328, column: 2)
!4770 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 328, column: 2)
!4771 = !DILocation(line: 328, column: 2, scope: !4770)
!4772 = !DILocation(line: 329, column: 2, scope: !4724)
!4773 = !DILocalVariable(name: "_attr", scope: !4774, file: !3, line: 329, type: !4754)
!4774 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 329, column: 2)
!4775 = !DILocation(line: 329, column: 2, scope: !4774)
!4776 = !DILocation(line: 329, column: 2, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 329, column: 2)
!4778 = !DILocation(line: 329, column: 2, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 329, column: 2)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 329, column: 2)
!4781 = !DILocation(line: 329, column: 2, scope: !4780)
!4782 = !DILocation(line: 330, column: 2, scope: !4724)
!4783 = !DILocalVariable(name: "_attr", scope: !4784, file: !3, line: 330, type: !4754)
!4784 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 330, column: 2)
!4785 = !DILocation(line: 330, column: 2, scope: !4784)
!4786 = !DILocation(line: 330, column: 2, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 330, column: 2)
!4788 = !DILocation(line: 330, column: 2, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 330, column: 2)
!4790 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 330, column: 2)
!4791 = !DILocation(line: 330, column: 2, scope: !4790)
!4792 = !DILocation(line: 331, column: 2, scope: !4724)
!4793 = !DILocalVariable(name: "_attr", scope: !4794, file: !3, line: 331, type: !4754)
!4794 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 331, column: 2)
!4795 = !DILocation(line: 331, column: 2, scope: !4794)
!4796 = !DILocation(line: 331, column: 2, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 331, column: 2)
!4798 = !DILocation(line: 331, column: 2, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 331, column: 2)
!4800 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 331, column: 2)
!4801 = !DILocation(line: 331, column: 2, scope: !4800)
!4802 = !DILocation(line: 332, column: 2, scope: !4724)
!4803 = !DILocalVariable(name: "_attr", scope: !4804, file: !3, line: 332, type: !4754)
!4804 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 332, column: 2)
!4805 = !DILocation(line: 332, column: 2, scope: !4804)
!4806 = !DILocation(line: 332, column: 2, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 332, column: 2)
!4808 = !DILocation(line: 332, column: 2, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 332, column: 2)
!4810 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 332, column: 2)
!4811 = !DILocation(line: 332, column: 2, scope: !4810)
!4812 = !DILocation(line: 333, column: 2, scope: !4724)
!4813 = !DILocalVariable(name: "_attr", scope: !4814, file: !3, line: 333, type: !4754)
!4814 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 333, column: 2)
!4815 = !DILocation(line: 333, column: 2, scope: !4814)
!4816 = !DILocation(line: 333, column: 2, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 333, column: 2)
!4818 = !DILocation(line: 333, column: 2, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 333, column: 2)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 333, column: 2)
!4821 = !DILocation(line: 333, column: 2, scope: !4820)
!4822 = !DILocation(line: 334, column: 2, scope: !4724)
!4823 = !DILocalVariable(name: "_attr", scope: !4824, file: !3, line: 334, type: !4754)
!4824 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 334, column: 2)
!4825 = !DILocation(line: 334, column: 2, scope: !4824)
!4826 = !DILocation(line: 334, column: 2, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 334, column: 2)
!4828 = !DILocation(line: 334, column: 2, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 334, column: 2)
!4830 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 334, column: 2)
!4831 = !DILocation(line: 334, column: 2, scope: !4830)
!4832 = !DILocation(line: 335, column: 2, scope: !4724)
!4833 = !DILocalVariable(name: "_attr", scope: !4834, file: !3, line: 335, type: !4754)
!4834 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 335, column: 2)
!4835 = !DILocation(line: 335, column: 2, scope: !4834)
!4836 = !DILocation(line: 335, column: 2, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 335, column: 2)
!4838 = !DILocation(line: 335, column: 2, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 335, column: 2)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 335, column: 2)
!4841 = !DILocation(line: 335, column: 2, scope: !4840)
!4842 = !DILocation(line: 336, column: 2, scope: !4724)
!4843 = !DILocalVariable(name: "_attr", scope: !4844, file: !3, line: 336, type: !4754)
!4844 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 336, column: 2)
!4845 = !DILocation(line: 336, column: 2, scope: !4844)
!4846 = !DILocation(line: 336, column: 2, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 336, column: 2)
!4848 = !DILocation(line: 336, column: 2, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 336, column: 2)
!4850 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 336, column: 2)
!4851 = !DILocation(line: 336, column: 2, scope: !4850)
!4852 = !DILocation(line: 337, column: 2, scope: !4724)
!4853 = !DILocalVariable(name: "_attr", scope: !4854, file: !3, line: 337, type: !4754)
!4854 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 337, column: 2)
!4855 = !DILocation(line: 337, column: 2, scope: !4854)
!4856 = !DILocation(line: 337, column: 2, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 337, column: 2)
!4858 = !DILocation(line: 337, column: 2, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 337, column: 2)
!4860 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 337, column: 2)
!4861 = !DILocation(line: 337, column: 2, scope: !4860)
!4862 = !DILocation(line: 340, column: 2, scope: !4724)
!4863 = !DILocalVariable(name: "_attr", scope: !4864, file: !3, line: 340, type: !4754)
!4864 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 340, column: 2)
!4865 = !DILocation(line: 340, column: 2, scope: !4864)
!4866 = !DILocation(line: 340, column: 2, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 340, column: 2)
!4868 = !DILocation(line: 340, column: 2, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 340, column: 2)
!4870 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 340, column: 2)
!4871 = !DILocation(line: 340, column: 2, scope: !4870)
!4872 = !DILocation(line: 341, column: 2, scope: !4724)
!4873 = !DILocalVariable(name: "_attr", scope: !4874, file: !3, line: 341, type: !4754)
!4874 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 341, column: 2)
!4875 = !DILocation(line: 341, column: 2, scope: !4874)
!4876 = !DILocation(line: 341, column: 2, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 341, column: 2)
!4878 = !DILocation(line: 341, column: 2, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 341, column: 2)
!4880 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 341, column: 2)
!4881 = !DILocation(line: 341, column: 2, scope: !4880)
!4882 = !DILocation(line: 342, column: 2, scope: !4724)
!4883 = !DILocalVariable(name: "_attr", scope: !4884, file: !3, line: 342, type: !4754)
!4884 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 342, column: 2)
!4885 = !DILocation(line: 342, column: 2, scope: !4884)
!4886 = !DILocation(line: 342, column: 2, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 342, column: 2)
!4888 = !DILocation(line: 342, column: 2, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 342, column: 2)
!4890 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 342, column: 2)
!4891 = !DILocation(line: 342, column: 2, scope: !4890)
!4892 = !DILocation(line: 344, column: 2, scope: !4724)
!4893 = distinct !DISubprogram(name: "device_add_group", scope: !60, file: !60, line: 863, type: !4894, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!205, !154, !275}
!4896 = !DILocalVariable(name: "dev", arg: 1, scope: !4893, file: !60, line: 863, type: !154)
!4897 = !DILocation(line: 863, column: 64, scope: !4893)
!4898 = !DILocalVariable(name: "grp", arg: 2, scope: !4893, file: !60, line: 864, type: !275)
!4899 = !DILocation(line: 864, column: 36, scope: !4893)
!4900 = !DILocalVariable(name: "groups", scope: !4893, file: !60, line: 866, type: !4901)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 128, elements: !1432)
!4902 = !DILocation(line: 866, column: 32, scope: !4893)
!4903 = !DILocation(line: 866, column: 43, scope: !4893)
!4904 = !DILocation(line: 866, column: 45, scope: !4893)
!4905 = !DILocation(line: 868, column: 27, scope: !4893)
!4906 = !DILocation(line: 868, column: 32, scope: !4893)
!4907 = !DILocation(line: 868, column: 9, scope: !4893)
!4908 = !DILocation(line: 868, column: 2, scope: !4893)
!4909 = distinct !DISubprogram(name: "get_order", scope: !4910, file: !4910, line: 29, type: !4911, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4910 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!205, !270}
!4913 = !DILocalVariable(name: "x", arg: 1, scope: !4914, file: !4661, line: 366, type: !366)
!4914 = distinct !DISubprogram(name: "fls64", scope: !4661, file: !4661, line: 366, type: !4915, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!205, !366}
!4917 = !DILocation(line: 366, column: 40, scope: !4914, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 46, column: 9, scope: !4909)
!4919 = !DILocalVariable(name: "bitpos", scope: !4914, file: !4661, line: 368, type: !205)
!4920 = !DILocation(line: 368, column: 6, scope: !4914, inlinedAt: !4918)
!4921 = !DILocalVariable(name: "size", arg: 1, scope: !4909, file: !4910, line: 29, type: !270)
!4922 = !DILocation(line: 29, column: 63, scope: !4909)
!4923 = !DILocation(line: 31, column: 27, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4909, file: !4910, line: 31, column: 6)
!4925 = !DILocation(line: 31, column: 6, scope: !4924)
!4926 = !DILocation(line: 31, column: 6, scope: !4909)
!4927 = !DILocation(line: 32, column: 8, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !4910, line: 32, column: 7)
!4929 = distinct !DILexicalBlock(scope: !4924, file: !4910, line: 31, column: 34)
!4930 = !DILocation(line: 32, column: 7, scope: !4929)
!4931 = !DILocation(line: 33, column: 4, scope: !4928)
!4932 = !DILocation(line: 35, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !4910, line: 35, column: 7)
!4934 = !DILocation(line: 35, column: 12, scope: !4933)
!4935 = !DILocation(line: 35, column: 7, scope: !4929)
!4936 = !DILocation(line: 36, column: 4, scope: !4933)
!4937 = !DILocation(line: 38, column: 10, scope: !4929)
!4938 = !DILocation(line: 38, column: 28, scope: !4929)
!4939 = !DILocation(line: 38, column: 41, scope: !4929)
!4940 = !DILocation(line: 38, column: 3, scope: !4929)
!4941 = !DILocation(line: 41, column: 6, scope: !4909)
!4942 = !DILocation(line: 42, column: 7, scope: !4909)
!4943 = !DILocation(line: 46, column: 15, scope: !4909)
!4944 = !DILocation(line: 374, column: 2, scope: !4914, inlinedAt: !4918)
!4945 = !DILocation(line: 376, column: 14, scope: !4914, inlinedAt: !4918)
!4946 = !{i32 313313}
!4947 = !DILocation(line: 377, column: 9, scope: !4914, inlinedAt: !4918)
!4948 = !DILocation(line: 377, column: 16, scope: !4914, inlinedAt: !4918)
!4949 = !DILocation(line: 46, column: 2, scope: !4909)
!4950 = !DILocation(line: 48, column: 1, scope: !4909)
!4951 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4952, file: !4952, line: 30, type: !4953, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4952 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!205, !365}
!4955 = !DILocation(line: 366, column: 40, scope: !4914, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 32, column: 9, scope: !4951)
!4957 = !DILocation(line: 368, column: 6, scope: !4914, inlinedAt: !4956)
!4958 = !DILocalVariable(name: "n", arg: 1, scope: !4951, file: !4952, line: 30, type: !365)
!4959 = !DILocation(line: 30, column: 21, scope: !4951)
!4960 = !DILocation(line: 32, column: 15, scope: !4951)
!4961 = !DILocation(line: 374, column: 2, scope: !4914, inlinedAt: !4956)
!4962 = !DILocation(line: 376, column: 14, scope: !4914, inlinedAt: !4956)
!4963 = !DILocation(line: 377, column: 9, scope: !4914, inlinedAt: !4956)
!4964 = !DILocation(line: 377, column: 16, scope: !4914, inlinedAt: !4956)
!4965 = !DILocation(line: 32, column: 18, scope: !4951)
!4966 = !DILocation(line: 32, column: 2, scope: !4951)
!4967 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1980, file: !1980, line: 137, type: !4968, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!144, !881, !2997, !267, !142}
!4970 = !DILocalVariable(name: "s", arg: 1, scope: !4967, file: !1980, line: 137, type: !881)
!4971 = !DILocation(line: 137, column: 54, scope: !4967)
!4972 = !DILocalVariable(name: "object", arg: 2, scope: !4967, file: !1980, line: 137, type: !2997)
!4973 = !DILocation(line: 137, column: 69, scope: !4967)
!4974 = !DILocalVariable(name: "size", arg: 3, scope: !4967, file: !1980, line: 138, type: !267)
!4975 = !DILocation(line: 138, column: 12, scope: !4967)
!4976 = !DILocalVariable(name: "flags", arg: 4, scope: !4967, file: !1980, line: 138, type: !142)
!4977 = !DILocation(line: 138, column: 24, scope: !4967)
!4978 = !DILocation(line: 140, column: 17, scope: !4967)
!4979 = !DILocation(line: 140, column: 2, scope: !4967)
!4980 = distinct !DISubprogram(name: "device_remove_group", scope: !60, file: !60, line: 871, type: !4981, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !154, !275}
!4983 = !DILocalVariable(name: "dev", arg: 1, scope: !4980, file: !60, line: 871, type: !154)
!4984 = !DILocation(line: 871, column: 55, scope: !4980)
!4985 = !DILocalVariable(name: "grp", arg: 2, scope: !4980, file: !60, line: 872, type: !275)
!4986 = !DILocation(line: 872, column: 42, scope: !4980)
!4987 = !DILocalVariable(name: "groups", scope: !4980, file: !60, line: 874, type: !4901)
!4988 = !DILocation(line: 874, column: 32, scope: !4980)
!4989 = !DILocation(line: 874, column: 43, scope: !4980)
!4990 = !DILocation(line: 874, column: 45, scope: !4980)
!4991 = !DILocation(line: 876, column: 30, scope: !4980)
!4992 = !DILocation(line: 876, column: 35, scope: !4980)
!4993 = !DILocation(line: 876, column: 9, scope: !4980)
!4994 = !DILocation(line: 876, column: 2, scope: !4980)
!4995 = distinct !DISubprogram(name: "kasan_check_write", scope: !4996, file: !4996, line: 38, type: !4997, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!4996 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!433, !4671, !7}
!4999 = !DILocalVariable(name: "p", arg: 1, scope: !4995, file: !4996, line: 38, type: !4671)
!5000 = !DILocation(line: 38, column: 59, scope: !4995)
!5001 = !DILocalVariable(name: "size", arg: 2, scope: !4995, file: !4996, line: 38, type: !7)
!5002 = !DILocation(line: 38, column: 75, scope: !4995)
!5003 = !DILocation(line: 40, column: 2, scope: !4995)
!5004 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5005, file: !5005, line: 178, type: !5006, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5005 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5006 = !DISubroutineType(types: !5007)
!5007 = !{null, !4671, !267, !205}
!5008 = !DILocalVariable(name: "ptr", arg: 1, scope: !5004, file: !5005, line: 178, type: !4671)
!5009 = !DILocation(line: 178, column: 60, scope: !5004)
!5010 = !DILocalVariable(name: "size", arg: 2, scope: !5004, file: !5005, line: 178, type: !267)
!5011 = !DILocation(line: 178, column: 72, scope: !5004)
!5012 = !DILocalVariable(name: "type", arg: 3, scope: !5004, file: !5005, line: 179, type: !205)
!5013 = !DILocation(line: 179, column: 15, scope: !5004)
!5014 = !DILocation(line: 179, column: 23, scope: !5004)
!5015 = distinct !DISubprogram(name: "trackpoint_update_bit", scope: !3, file: !3, line: 77, type: !5016, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!205, !4065, !149, !149, !149}
!5018 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5015, file: !3, line: 77, type: !4065)
!5019 = !DILocation(line: 77, column: 49, scope: !5015)
!5020 = !DILocalVariable(name: "loc", arg: 2, scope: !5015, file: !3, line: 78, type: !149)
!5021 = !DILocation(line: 78, column: 9, scope: !5015)
!5022 = !DILocalVariable(name: "mask", arg: 3, scope: !5015, file: !3, line: 78, type: !149)
!5023 = !DILocation(line: 78, column: 17, scope: !5015)
!5024 = !DILocalVariable(name: "value", arg: 4, scope: !5015, file: !3, line: 78, type: !149)
!5025 = !DILocation(line: 78, column: 26, scope: !5015)
!5026 = !DILocalVariable(name: "retval", scope: !5015, file: !3, line: 80, type: !205)
!5027 = !DILocation(line: 80, column: 6, scope: !5015)
!5028 = !DILocalVariable(name: "data", scope: !5015, file: !3, line: 81, type: !149)
!5029 = !DILocation(line: 81, column: 5, scope: !5015)
!5030 = !DILocation(line: 83, column: 27, scope: !5015)
!5031 = !DILocation(line: 83, column: 35, scope: !5015)
!5032 = !DILocation(line: 83, column: 11, scope: !5015)
!5033 = !DILocation(line: 83, column: 9, scope: !5015)
!5034 = !DILocation(line: 84, column: 6, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 84, column: 6)
!5036 = !DILocation(line: 84, column: 6, scope: !5015)
!5037 = !DILocation(line: 85, column: 10, scope: !5035)
!5038 = !DILocation(line: 85, column: 3, scope: !5035)
!5039 = !DILocation(line: 87, column: 8, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 87, column: 6)
!5041 = !DILocation(line: 87, column: 15, scope: !5040)
!5042 = !DILocation(line: 87, column: 13, scope: !5040)
!5043 = !DILocation(line: 87, column: 24, scope: !5040)
!5044 = !DILocation(line: 87, column: 21, scope: !5040)
!5045 = !DILocation(line: 87, column: 35, scope: !5040)
!5046 = !DILocation(line: 87, column: 34, scope: !5040)
!5047 = !DILocation(line: 87, column: 33, scope: !5040)
!5048 = !DILocation(line: 87, column: 30, scope: !5040)
!5049 = !DILocation(line: 87, column: 6, scope: !5015)
!5050 = !DILocation(line: 88, column: 34, scope: !5040)
!5051 = !DILocation(line: 88, column: 42, scope: !5040)
!5052 = !DILocation(line: 88, column: 47, scope: !5040)
!5053 = !DILocation(line: 88, column: 12, scope: !5040)
!5054 = !DILocation(line: 88, column: 10, scope: !5040)
!5055 = !DILocation(line: 88, column: 3, scope: !5040)
!5056 = !DILocation(line: 90, column: 9, scope: !5015)
!5057 = !DILocation(line: 90, column: 2, scope: !5015)
!5058 = !DILocation(line: 91, column: 1, scope: !5015)
!5059 = distinct !DISubprogram(name: "trackpoint_is_attr_available", scope: !3, file: !3, line: 204, type: !5060, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!433, !3646, !256}
!5062 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5059, file: !3, line: 204, type: !3646)
!5063 = !DILocation(line: 204, column: 58, scope: !5059)
!5064 = !DILocalVariable(name: "attr", arg: 2, scope: !5059, file: !3, line: 205, type: !256)
!5065 = !DILocation(line: 205, column: 25, scope: !5059)
!5066 = !DILocalVariable(name: "tp", scope: !5059, file: !3, line: 207, type: !4070)
!5067 = !DILocation(line: 207, column: 26, scope: !5059)
!5068 = !DILocation(line: 207, column: 31, scope: !5059)
!5069 = !DILocation(line: 207, column: 40, scope: !5059)
!5070 = !DILocation(line: 209, column: 9, scope: !5059)
!5071 = !DILocation(line: 209, column: 13, scope: !5059)
!5072 = !DILocation(line: 209, column: 24, scope: !5059)
!5073 = !DILocation(line: 209, column: 42, scope: !5059)
!5074 = !DILocation(line: 210, column: 3, scope: !5059)
!5075 = !DILocation(line: 210, column: 8, scope: !5059)
!5076 = !DILocation(line: 210, column: 48, scope: !5059)
!5077 = !DILocation(line: 211, column: 3, scope: !5059)
!5078 = !DILocation(line: 211, column: 8, scope: !5059)
!5079 = !DILocation(line: 209, column: 2, scope: !5059)
!5080 = distinct !DISubprogram(name: "trackpoint_write", scope: !3, file: !3, line: 59, type: !5081, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!205, !4065, !149, !149}
!5083 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5080, file: !3, line: 59, type: !4065)
!5084 = !DILocation(line: 59, column: 44, scope: !5080)
!5085 = !DILocalVariable(name: "loc", arg: 2, scope: !5080, file: !3, line: 59, type: !149)
!5086 = !DILocation(line: 59, column: 55, scope: !5080)
!5087 = !DILocalVariable(name: "val", arg: 3, scope: !5080, file: !3, line: 59, type: !149)
!5088 = !DILocation(line: 59, column: 63, scope: !5080)
!5089 = !DILocalVariable(name: "param", scope: !5080, file: !3, line: 61, type: !5090)
!5090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 24, elements: !222)
!5091 = !DILocation(line: 61, column: 5, scope: !5080)
!5092 = !DILocation(line: 61, column: 16, scope: !5080)
!5093 = !DILocation(line: 61, column: 32, scope: !5080)
!5094 = !DILocation(line: 61, column: 37, scope: !5080)
!5095 = !DILocation(line: 63, column: 21, scope: !5080)
!5096 = !DILocation(line: 63, column: 29, scope: !5080)
!5097 = !DILocation(line: 63, column: 9, scope: !5080)
!5098 = !DILocation(line: 63, column: 2, scope: !5080)
!5099 = distinct !DISubprogram(name: "trackpoint_toggle_bit", scope: !3, file: !3, line: 66, type: !5081, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5100 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5099, file: !3, line: 66, type: !4065)
!5101 = !DILocation(line: 66, column: 49, scope: !5099)
!5102 = !DILocalVariable(name: "loc", arg: 2, scope: !5099, file: !3, line: 66, type: !149)
!5103 = !DILocation(line: 66, column: 60, scope: !5099)
!5104 = !DILocalVariable(name: "mask", arg: 3, scope: !5099, file: !3, line: 66, type: !149)
!5105 = !DILocation(line: 66, column: 68, scope: !5099)
!5106 = !DILocalVariable(name: "param", scope: !5099, file: !3, line: 68, type: !5090)
!5107 = !DILocation(line: 68, column: 5, scope: !5099)
!5108 = !DILocation(line: 68, column: 16, scope: !5099)
!5109 = !DILocation(line: 68, column: 29, scope: !5099)
!5110 = !DILocation(line: 68, column: 34, scope: !5099)
!5111 = !DILocation(line: 71, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 71, column: 6)
!5113 = !DILocation(line: 71, column: 10, scope: !5112)
!5114 = !DILocation(line: 71, column: 17, scope: !5112)
!5115 = !DILocation(line: 71, column: 20, scope: !5112)
!5116 = !DILocation(line: 71, column: 24, scope: !5112)
!5117 = !DILocation(line: 71, column: 6, scope: !5099)
!5118 = !DILocation(line: 72, column: 3, scope: !5112)
!5119 = !DILocation(line: 74, column: 21, scope: !5099)
!5120 = !DILocation(line: 74, column: 29, scope: !5099)
!5121 = !DILocation(line: 74, column: 9, scope: !5099)
!5122 = !DILocation(line: 74, column: 2, scope: !5099)
!5123 = !DILocation(line: 75, column: 1, scope: !5099)
!5124 = distinct !DISubprogram(name: "trackpoint_show_int_attr", scope: !3, file: !3, line: 104, type: !3644, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5125 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5124, file: !3, line: 104, type: !3646)
!5126 = !DILocation(line: 104, column: 57, scope: !5124)
!5127 = !DILocalVariable(name: "data", arg: 2, scope: !5124, file: !3, line: 105, type: !144)
!5128 = !DILocation(line: 105, column: 12, scope: !5124)
!5129 = !DILocalVariable(name: "buf", arg: 3, scope: !5124, file: !3, line: 105, type: !221)
!5130 = !DILocation(line: 105, column: 24, scope: !5124)
!5131 = !DILocalVariable(name: "tp", scope: !5124, file: !3, line: 107, type: !4070)
!5132 = !DILocation(line: 107, column: 26, scope: !5124)
!5133 = !DILocation(line: 107, column: 31, scope: !5124)
!5134 = !DILocation(line: 107, column: 40, scope: !5124)
!5135 = !DILocalVariable(name: "attr", scope: !5124, file: !3, line: 108, type: !4754)
!5136 = !DILocation(line: 108, column: 31, scope: !5124)
!5137 = !DILocation(line: 108, column: 38, scope: !5124)
!5138 = !DILocalVariable(name: "value", scope: !5124, file: !3, line: 109, type: !149)
!5139 = !DILocation(line: 109, column: 5, scope: !5124)
!5140 = !DILocation(line: 109, column: 29, scope: !5124)
!5141 = !DILocation(line: 109, column: 21, scope: !5124)
!5142 = !DILocation(line: 109, column: 34, scope: !5124)
!5143 = !DILocation(line: 109, column: 40, scope: !5124)
!5144 = !DILocation(line: 109, column: 32, scope: !5124)
!5145 = !DILocation(line: 109, column: 13, scope: !5124)
!5146 = !DILocation(line: 111, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 111, column: 6)
!5148 = !DILocation(line: 111, column: 12, scope: !5147)
!5149 = !DILocation(line: 111, column: 6, scope: !5124)
!5150 = !DILocation(line: 112, column: 12, scope: !5147)
!5151 = !DILocation(line: 112, column: 11, scope: !5147)
!5152 = !DILocation(line: 112, column: 9, scope: !5147)
!5153 = !DILocation(line: 112, column: 3, scope: !5147)
!5154 = !DILocation(line: 114, column: 17, scope: !5124)
!5155 = !DILocation(line: 114, column: 30, scope: !5124)
!5156 = !DILocation(line: 114, column: 9, scope: !5124)
!5157 = !DILocation(line: 114, column: 2, scope: !5124)
!5158 = distinct !DISubprogram(name: "trackpoint_set_int_attr", scope: !3, file: !3, line: 117, type: !4014, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5159 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5158, file: !3, line: 117, type: !3646)
!5160 = !DILocation(line: 117, column: 56, scope: !5158)
!5161 = !DILocalVariable(name: "data", arg: 2, scope: !5158, file: !3, line: 117, type: !144)
!5162 = !DILocation(line: 117, column: 71, scope: !5158)
!5163 = !DILocalVariable(name: "buf", arg: 3, scope: !5158, file: !3, line: 118, type: !162)
!5164 = !DILocation(line: 118, column: 18, scope: !5158)
!5165 = !DILocalVariable(name: "count", arg: 4, scope: !5158, file: !3, line: 118, type: !267)
!5166 = !DILocation(line: 118, column: 30, scope: !5158)
!5167 = !DILocalVariable(name: "tp", scope: !5158, file: !3, line: 120, type: !4070)
!5168 = !DILocation(line: 120, column: 26, scope: !5158)
!5169 = !DILocation(line: 120, column: 31, scope: !5158)
!5170 = !DILocation(line: 120, column: 40, scope: !5158)
!5171 = !DILocalVariable(name: "attr", scope: !5158, file: !3, line: 121, type: !4754)
!5172 = !DILocation(line: 121, column: 31, scope: !5158)
!5173 = !DILocation(line: 121, column: 38, scope: !5158)
!5174 = !DILocalVariable(name: "field", scope: !5158, file: !3, line: 122, type: !148)
!5175 = !DILocation(line: 122, column: 6, scope: !5158)
!5176 = !DILocation(line: 122, column: 22, scope: !5158)
!5177 = !DILocation(line: 122, column: 14, scope: !5158)
!5178 = !DILocation(line: 122, column: 27, scope: !5158)
!5179 = !DILocation(line: 122, column: 33, scope: !5158)
!5180 = !DILocation(line: 122, column: 25, scope: !5158)
!5181 = !DILocalVariable(name: "value", scope: !5158, file: !3, line: 123, type: !149)
!5182 = !DILocation(line: 123, column: 5, scope: !5158)
!5183 = !DILocalVariable(name: "err", scope: !5158, file: !3, line: 124, type: !205)
!5184 = !DILocation(line: 124, column: 6, scope: !5158)
!5185 = !DILocation(line: 126, column: 17, scope: !5158)
!5186 = !DILocation(line: 126, column: 8, scope: !5158)
!5187 = !DILocation(line: 126, column: 6, scope: !5158)
!5188 = !DILocation(line: 127, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 127, column: 6)
!5190 = !DILocation(line: 127, column: 6, scope: !5158)
!5191 = !DILocation(line: 128, column: 10, scope: !5189)
!5192 = !DILocation(line: 128, column: 3, scope: !5189)
!5193 = !DILocation(line: 130, column: 11, scope: !5158)
!5194 = !DILocation(line: 130, column: 3, scope: !5158)
!5195 = !DILocation(line: 130, column: 9, scope: !5158)
!5196 = !DILocation(line: 131, column: 26, scope: !5158)
!5197 = !DILocation(line: 131, column: 35, scope: !5158)
!5198 = !DILocation(line: 131, column: 43, scope: !5158)
!5199 = !DILocation(line: 131, column: 49, scope: !5158)
!5200 = !DILocation(line: 131, column: 58, scope: !5158)
!5201 = !DILocation(line: 131, column: 8, scope: !5158)
!5202 = !DILocation(line: 131, column: 6, scope: !5158)
!5203 = !DILocation(line: 133, column: 9, scope: !5158)
!5204 = !DILocation(line: 133, column: 16, scope: !5158)
!5205 = !DILocation(line: 133, column: 2, scope: !5158)
!5206 = !DILocation(line: 134, column: 1, scope: !5158)
!5207 = distinct !DISubprogram(name: "trackpoint_set_bit_attr", scope: !3, file: !3, line: 146, type: !4014, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5208 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5207, file: !3, line: 146, type: !3646)
!5209 = !DILocation(line: 146, column: 56, scope: !5207)
!5210 = !DILocalVariable(name: "data", arg: 2, scope: !5207, file: !3, line: 146, type: !144)
!5211 = !DILocation(line: 146, column: 71, scope: !5207)
!5212 = !DILocalVariable(name: "buf", arg: 3, scope: !5207, file: !3, line: 147, type: !162)
!5213 = !DILocation(line: 147, column: 18, scope: !5207)
!5214 = !DILocalVariable(name: "count", arg: 4, scope: !5207, file: !3, line: 147, type: !267)
!5215 = !DILocation(line: 147, column: 30, scope: !5207)
!5216 = !DILocalVariable(name: "tp", scope: !5207, file: !3, line: 149, type: !4070)
!5217 = !DILocation(line: 149, column: 26, scope: !5207)
!5218 = !DILocation(line: 149, column: 31, scope: !5207)
!5219 = !DILocation(line: 149, column: 40, scope: !5207)
!5220 = !DILocalVariable(name: "attr", scope: !5207, file: !3, line: 150, type: !4754)
!5221 = !DILocation(line: 150, column: 31, scope: !5207)
!5222 = !DILocation(line: 150, column: 38, scope: !5207)
!5223 = !DILocalVariable(name: "field", scope: !5207, file: !3, line: 151, type: !837)
!5224 = !DILocation(line: 151, column: 8, scope: !5207)
!5225 = !DILocation(line: 151, column: 24, scope: !5207)
!5226 = !DILocation(line: 151, column: 16, scope: !5207)
!5227 = !DILocation(line: 151, column: 29, scope: !5207)
!5228 = !DILocation(line: 151, column: 35, scope: !5207)
!5229 = !DILocation(line: 151, column: 27, scope: !5207)
!5230 = !DILocalVariable(name: "value", scope: !5207, file: !3, line: 152, type: !433)
!5231 = !DILocation(line: 152, column: 7, scope: !5207)
!5232 = !DILocalVariable(name: "err", scope: !5207, file: !3, line: 153, type: !205)
!5233 = !DILocation(line: 153, column: 6, scope: !5207)
!5234 = !DILocation(line: 155, column: 19, scope: !5207)
!5235 = !DILocation(line: 155, column: 8, scope: !5207)
!5236 = !DILocation(line: 155, column: 6, scope: !5207)
!5237 = !DILocation(line: 156, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 156, column: 6)
!5239 = !DILocation(line: 156, column: 6, scope: !5207)
!5240 = !DILocation(line: 157, column: 10, scope: !5238)
!5241 = !DILocation(line: 157, column: 3, scope: !5238)
!5242 = !DILocation(line: 159, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 159, column: 6)
!5244 = !DILocation(line: 159, column: 12, scope: !5243)
!5245 = !DILocation(line: 159, column: 6, scope: !5207)
!5246 = !DILocation(line: 160, column: 12, scope: !5243)
!5247 = !DILocation(line: 160, column: 11, scope: !5243)
!5248 = !DILocation(line: 160, column: 9, scope: !5243)
!5249 = !DILocation(line: 160, column: 3, scope: !5243)
!5250 = !DILocation(line: 162, column: 7, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 162, column: 6)
!5252 = !DILocation(line: 162, column: 6, scope: !5251)
!5253 = !DILocation(line: 162, column: 16, scope: !5251)
!5254 = !DILocation(line: 162, column: 13, scope: !5251)
!5255 = !DILocation(line: 162, column: 6, scope: !5207)
!5256 = !DILocation(line: 163, column: 12, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 162, column: 23)
!5258 = !DILocation(line: 163, column: 4, scope: !5257)
!5259 = !DILocation(line: 163, column: 10, scope: !5257)
!5260 = !DILocation(line: 164, column: 32, scope: !5257)
!5261 = !DILocation(line: 164, column: 41, scope: !5257)
!5262 = !DILocation(line: 165, column: 10, scope: !5257)
!5263 = !DILocation(line: 165, column: 16, scope: !5257)
!5264 = !DILocation(line: 165, column: 25, scope: !5257)
!5265 = !DILocation(line: 165, column: 31, scope: !5257)
!5266 = !DILocation(line: 164, column: 9, scope: !5257)
!5267 = !DILocation(line: 164, column: 7, scope: !5257)
!5268 = !DILocation(line: 166, column: 2, scope: !5257)
!5269 = !DILocation(line: 168, column: 9, scope: !5207)
!5270 = !DILocation(line: 168, column: 16, scope: !5207)
!5271 = !DILocation(line: 168, column: 2, scope: !5207)
!5272 = !DILocation(line: 169, column: 1, scope: !5207)
!5273 = distinct !DISubprogram(name: "trackpoint_is_attr_visible", scope: !3, file: !3, line: 214, type: !282, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5274 = !DILocalVariable(name: "kobj", arg: 1, scope: !5273, file: !3, line: 214, type: !172)
!5275 = !DILocation(line: 214, column: 59, scope: !5273)
!5276 = !DILocalVariable(name: "attr", arg: 2, scope: !5273, file: !3, line: 215, type: !256)
!5277 = !DILocation(line: 215, column: 26, scope: !5273)
!5278 = !DILocalVariable(name: "n", arg: 3, scope: !5273, file: !3, line: 215, type: !205)
!5279 = !DILocation(line: 215, column: 36, scope: !5273)
!5280 = !DILocalVariable(name: "dev", scope: !5273, file: !3, line: 217, type: !154)
!5281 = !DILocation(line: 217, column: 17, scope: !5273)
!5282 = !DILocalVariable(name: "__mptr", scope: !5283, file: !3, line: 217, type: !144)
!5283 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 217, column: 23)
!5284 = !DILocation(line: 217, column: 23, scope: !5283)
!5285 = !DILocation(line: 217, column: 23, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 217, column: 23)
!5287 = !DILocalVariable(name: "serio", scope: !5273, file: !3, line: 218, type: !3524)
!5288 = !DILocation(line: 218, column: 16, scope: !5273)
!5289 = !DILocalVariable(name: "__mptr", scope: !5290, file: !3, line: 218, type: !144)
!5290 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 218, column: 24)
!5291 = !DILocation(line: 218, column: 24, scope: !5290)
!5292 = !DILocation(line: 218, column: 24, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 218, column: 24)
!5294 = !DILocalVariable(name: "psmouse", scope: !5273, file: !3, line: 219, type: !3646)
!5295 = !DILocation(line: 219, column: 18, scope: !5273)
!5296 = !DILocation(line: 219, column: 46, scope: !5273)
!5297 = !DILocation(line: 219, column: 28, scope: !5273)
!5298 = !DILocation(line: 221, column: 38, scope: !5273)
!5299 = !DILocation(line: 221, column: 47, scope: !5273)
!5300 = !DILocation(line: 221, column: 9, scope: !5273)
!5301 = !DILocation(line: 221, column: 55, scope: !5273)
!5302 = !DILocation(line: 221, column: 61, scope: !5273)
!5303 = !DILocation(line: 221, column: 2, scope: !5273)
!5304 = distinct !DISubprogram(name: "serio_get_drvdata", scope: !3526, file: !3526, line: 140, type: !5305, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!144, !3524}
!5307 = !DILocalVariable(name: "serio", arg: 1, scope: !5304, file: !3526, line: 140, type: !3524)
!5308 = !DILocation(line: 140, column: 53, scope: !5304)
!5309 = !DILocation(line: 142, column: 26, scope: !5304)
!5310 = !DILocation(line: 142, column: 33, scope: !5304)
!5311 = !DILocation(line: 142, column: 9, scope: !5304)
!5312 = !DILocation(line: 142, column: 2, scope: !5304)
!5313 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !5314, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!144, !5316}
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!5318 = !DILocalVariable(name: "dev", arg: 1, scope: !5313, file: !60, line: 655, type: !5316)
!5319 = !DILocation(line: 655, column: 58, scope: !5313)
!5320 = !DILocation(line: 657, column: 9, scope: !5313)
!5321 = !DILocation(line: 657, column: 14, scope: !5313)
!5322 = !DILocation(line: 657, column: 2, scope: !5313)
